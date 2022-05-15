; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0c8", ROMX[$4000], BANK[$c8]

    ret z                                         ; $4000: $c8

    ld d, b                                       ; $4001: $50
    ld [$076f], sp                                ; $4002: $08 $6f $07
    nop                                           ; $4005: $00
    ld bc, $2200                                  ; $4006: $01 $00 $22
    nop                                           ; $4009: $00
    ld b, h                                       ; $400a: $44
    nop                                           ; $400b: $00
    add hl, bc                                    ; $400c: $09
    nop                                           ; $400d: $00
    nop                                           ; $400e: $00
    add d                                         ; $400f: $82
    nop                                           ; $4010: $00
    xor c                                         ; $4011: $a9
    nop                                           ; $4012: $00
    jp nc, $e600                                  ; $4013: $d2 $00 $e6

    ld bc, $2e00                                  ; $4016: $01 $00 $2e
    jr jr_0c8_4088                                ; $4019: $18 $6d

    jr jr_0c8_4058                                ; $401b: $18 $3b

    inc e                                         ; $401d: $1c
    ld e, l                                       ; $401e: $5d
    ld h, $00                                     ; $401f: $26 $00
    xor [hl]                                      ; $4021: $ae
    ld b, e                                       ; $4022: $43
    ld c, c                                       ; $4023: $49
    add e                                         ; $4024: $83
    rlca                                          ; $4025: $07
    add c                                         ; $4026: $81
    and d                                         ; $4027: $a2
    ld bc, $5e01                                  ; $4028: $01 $01 $5e
    nop                                           ; $402b: $00
    scf                                           ; $402c: $37
    nop                                           ; $402d: $00
    ld l, l                                       ; $402e: $6d
    nop                                           ; $402f: $00
    rst $38                                       ; $4030: $ff
    ld [bc], a                                    ; $4031: $02
    nop                                           ; $4032: $00
    nop                                           ; $4033: $00
    rst $18                                       ; $4034: $df
    jr nz, jr_0c8_4066                            ; $4035: $20 $2f

    ret nc                                        ; $4037: $d0

    rst $08                                       ; $4038: $cf
    or b                                          ; $4039: $b0
    add sp, $00                                   ; $403a: $e8 $00
    nop                                           ; $403c: $00
    ldh a, [rP1]                                  ; $403d: $f0 $00
    reti                                          ; $403f: $d9


    nop                                           ; $4040: $00
    ld [hl], h                                    ; $4041: $74
    nop                                           ; $4042: $00
    ld a, [$4000]                                 ; $4043: $fa $00 $40
    rst $30                                       ; $4046: $f7

Call_0c8_4047:
    ld d, $00                                     ; $4047: $16 $00
    db $fc                                        ; $4049: $fc
    ld bc, $184e                                  ; $404a: $01 $4e $18
    dec c                                         ; $404d: $0d
    jr jr_0c8_4050                                ; $404e: $18 $00

jr_0c8_4050:
    ld e, d                                       ; $4050: $5a
    inc e                                         ; $4051: $1c
    dec d                                         ; $4052: $15
    ld l, $ae                                     ; $4053: $2e $ae
    ld b, e                                       ; $4055: $43
    ld c, e                                       ; $4056: $4b
    add c                                         ; $4057: $81

jr_0c8_4058:
    nop                                           ; $4058: $00
    ld hl, $8881                                  ; $4059: $21 $81 $88
    ld bc, $0020                                  ; $405c: $01 $20 $00
    inc b                                         ; $405f: $04
    nop                                           ; $4060: $00
    nop                                           ; $4061: $00
    ld e, d                                       ; $4062: $5a
    nop                                           ; $4063: $00
    dec l                                         ; $4064: $2d
    nop                                           ; $4065: $00

jr_0c8_4066:
    cp $00                                        ; $4066: $fe $00
    rst $18                                       ; $4068: $df
    nop                                           ; $4069: $00
    nop                                           ; $406a: $00
    ld a, l                                       ; $406b: $7d
    add b                                         ; $406c: $80
    cp $81                                        ; $406d: $fe $81
    dec c                                         ; $406f: $0d
    jr jr_0c8_40a0                                ; $4070: $18 $2e

    jr jr_0c8_40b4                                ; $4072: $18 $40

    ld e, b                                       ; $4074: $58
    jr nz, jr_0c8_4097                            ; $4075: $20 $20

    add hl, bc                                    ; $4077: $09
    add c                                         ; $4078: $81
    and b                                         ; $4079: $a0
    ld bc, $002a                                  ; $407a: $01 $2a $00
    ld b, b                                       ; $407d: $40
    ld a, l                                       ; $407e: $7d
    ld d, d                                       ; $407f: $52
    nop                                           ; $4080: $00
    ld e, a                                       ; $4081: $5f
    nop                                           ; $4082: $00
    cp l                                          ; $4083: $bd
    nop                                           ; $4084: $00
    ld [hl], a                                    ; $4085: $77
    nop                                           ; $4086: $00
    add hl, bc                                    ; $4087: $09

jr_0c8_4088:
    ld e, a                                       ; $4088: $5f
    add b                                         ; $4089: $80
    rst $38                                       ; $408a: $ff
    add b                                         ; $408b: $80
    add b                                         ; $408c: $80
    ld e, b                                       ; $408d: $58
    rst $20                                       ; $408e: $e7
    nop                                           ; $408f: $00
    jr nz, jr_0c8_40da                            ; $4090: $20 $48

    ld h, d                                       ; $4092: $62
    rst $18                                       ; $4093: $df
    ld a, b                                       ; $4094: $78
    nop                                           ; $4095: $00
    add b                                         ; $4096: $80

jr_0c8_4097:
    ld c, b                                       ; $4097: $48
    xor a                                         ; $4098: $af
    ld d, b                                       ; $4099: $50
    ld c, a                                       ; $409a: $4f
    add b                                         ; $409b: $80
    ld h, b                                       ; $409c: $60
    db $fd                                        ; $409d: $fd
    nop                                           ; $409e: $00
    nop                                           ; $409f: $00

jr_0c8_40a0:
    ld b, c                                       ; $40a0: $41
    nop                                           ; $40a1: $00
    ld d, $00                                     ; $40a2: $16 $00
    ld c, e                                       ; $40a4: $4b
    nop                                           ; $40a5: $00
    dec e                                         ; $40a6: $1d
    jr z, jr_0c8_40a9                             ; $40a7: $28 $00

jr_0c8_40a9:
    xor e                                         ; $40a9: $ab
    ld d, b                                       ; $40aa: $50
    nop                                           ; $40ab: $00
    xor $a8                                       ; $40ac: $ee $a8
    nop                                           ; $40ae: $00
    ld e, b                                       ; $40af: $58
    nop                                           ; $40b0: $00
    and h                                         ; $40b1: $a4
    ld a, [bc]                                    ; $40b2: $0a
    nop                                           ; $40b3: $00

jr_0c8_40b4:
    jp c, $ad00                                   ; $40b4: $da $00 $ad

    add b                                         ; $40b7: $80
    db $10                                        ; $40b8: $10
    db $fd                                        ; $40b9: $fd
    cp b                                          ; $40ba: $b8
    nop                                           ; $40bb: $00
    db $10                                        ; $40bc: $10
    inc l                                         ; $40bd: $2c
    nop                                           ; $40be: $00

Jump_0c8_40bf:
    jr nz, jr_0c8_4121                            ; $40bf: $20 $60

    ld d, b                                       ; $40c1: $50
    ld a, [bc]                                    ; $40c2: $0a
    inc l                                         ; $40c3: $2c
    nop                                           ; $40c4: $00
    ld h, b                                       ; $40c5: $60
    ld c, b                                       ; $40c6: $48
    ld a, h                                       ; $40c7: $7c
    ld bc, $fe40                                  ; $40c8: $01 $40 $fe
    ld [bc], a                                    ; $40cb: $02
    nop                                           ; $40cc: $00
    rst $30                                       ; $40cd: $f7
    add hl, bc                                    ; $40ce: $09
    rst $18                                       ; $40cf: $df
    ld hl, $4ab5                                  ; $40d0: $21 $b5 $4a
    nop                                           ; $40d3: $00
    ld l, d                                       ; $40d4: $6a
    sub l                                         ; $40d5: $95
    sub c                                         ; $40d6: $91
    ld l, [hl]                                    ; $40d7: $6e
    dec d                                         ; $40d8: $15
    nop                                           ; $40d9: $00

jr_0c8_40da:
    and d                                         ; $40da: $a2
    inc b                                         ; $40db: $04
    ld bc, $0015                                  ; $40dc: $01 $15 $00
    cp b                                          ; $40df: $b8
    rlca                                          ; $40e0: $07
    ld c, d                                       ; $40e1: $4a
    rst $38                                       ; $40e2: $ff
    rst $38                                       ; $40e3: $ff
    push af                                       ; $40e4: $f5
    nop                                           ; $40e5: $00
    nop                                           ; $40e6: $00
    ld b, h                                       ; $40e7: $44

Call_0c8_40e8:
    cp e                                          ; $40e8: $bb
    add [hl]                                      ; $40e9: $86
    ld sp, hl                                     ; $40ea: $f9
    and a                                         ; $40eb: $a7
    ret c                                         ; $40ec: $d8

    adc e                                         ; $40ed: $8b
    db $f4                                        ; $40ee: $f4
    nop                                           ; $40ef: $00
    add l                                         ; $40f0: $85
    ld a, [$f58a]                                 ; $40f1: $fa $8a $f5
    ld bc, $02fe                                  ; $40f4: $01 $fe $02
    db $fd                                        ; $40f7: $fd
    jr nz, jr_0c8_410a                            ; $40f8: $20 $10

    rst $28                                       ; $40fa: $ef
    ld l, $08                                     ; $40fb: $2e $08
    ld l, [hl]                                    ; $40fd: $6e

Jump_0c8_40fe:
    sub c                                         ; $40fe: $91

Call_0c8_40ff:
    rst $38                                       ; $40ff: $ff
    ld bc, $00bf                                  ; $4100: $01 $bf $00
    ld b, c                                       ; $4103: $41
    ld e, e                                       ; $4104: $5b
    and h                                         ; $4105: $a4
    ld l, $d1                                     ; $4106: $2e $d1
    sub l                                         ; $4108: $95
    ld l, d                                       ; $4109: $6a

jr_0c8_410a:
    daa                                           ; $410a: $27
    nop                                           ; $410b: $00
    nop                                           ; $410c: $00
    adc c                                         ; $410d: $89
    jr nz, jr_0c8_4137                            ; $410e: $20 $27

    nop                                           ; $4110: $00
    jp z, $5425                                   ; $4111: $ca $25 $54

    add d                                         ; $4114: $82
    jr nc, jr_0c8_4127                            ; $4115: $30 $10

    dec d                                         ; $4117: $15
    ld [$c19e], a                                 ; $4118: $ea $9e $c1
    cp [hl]                                       ; $411b: $be
    ld [bc], a                                    ; $411c: $02
    nop                                           ; $411d: $00
    cp a                                          ; $411e: $bf
    nop                                           ; $411f: $00
    pop bc                                        ; $4120: $c1

jr_0c8_4121:
    sbc l                                         ; $4121: $9d
    db $e3                                        ; $4122: $e3
    dec sp                                        ; $4123: $3b
    call nz, $d02f                                ; $4124: $c4 $2f $d0

jr_0c8_4127:
    ld d, l                                       ; $4127: $55
    nop                                           ; $4128: $00
    xor d                                         ; $4129: $aa
    ld c, e                                       ; $412a: $4b
    nop                                           ; $412b: $00
    and c                                         ; $412c: $a1
    ld [$004b], sp                                ; $412d: $08 $4b $00
    and [hl]                                      ; $4130: $a6
    ld c, b                                       ; $4131: $48
    ld c, c                                       ; $4132: $49
    jr nz, @+$1a                                  ; $4133: $20 $18

    sub c                                         ; $4135: $91
    ld l, [hl]                                    ; $4136: $6e

jr_0c8_4137:
    inc e                                         ; $4137: $1c
    nop                                           ; $4138: $00
    ret nz                                        ; $4139: $c0

    xor a                                         ; $413a: $af
    ret nc                                        ; $413b: $d0

    nop                                           ; $413c: $00
    cp l                                          ; $413d: $bd
    jp nz, $d5aa                                  ; $413e: $c2 $aa $d5

    inc d                                         ; $4141: $14
    db $eb                                        ; $4142: $eb
    add hl, bc                                    ; $4143: $09
    or $00                                        ; $4144: $f6 $00
    ld b, h                                       ; $4146: $44
    cp e                                          ; $4147: $bb
    add b                                         ; $4148: $80
    rst $38                                       ; $4149: $ff
    ld c, [hl]                                    ; $414a: $4e
    add b                                         ; $414b: $80
    ld hl, sp-$79                                 ; $414c: $f8 $87
    nop                                           ; $414e: $00
    ld d, l                                       ; $414f: $55
    and e                                         ; $4150: $a3
    call z, Call_000_17b1                         ; $4151: $cc $b1 $17
    cp b                                          ; $4154: $b8
    adc d                                         ; $4155: $8a
    cp h                                          ; $4156: $bc
    nop                                           ; $4157: $00
    ld d, l                                       ; $4158: $55
    xor [hl]                                      ; $4159: $ae
    ld bc, $c6ff                                  ; $415a: $01 $ff $c6
    ld bc, $fd03                                  ; $415d: $01 $03 $fd
    nop                                           ; $4160: $00
    ld hl, sp-$03                                 ; $4161: $f8 $fd
    ld bc, $5afd                                  ; $4163: $01 $fd $5a
    add l                                         ; $4166: $85
    and c                                         ; $4167: $a1
    ld c, l                                       ; $4168: $4d
    ld de, $255a                                  ; $4169: $11 $5a $25
    ld a, l                                       ; $416c: $7d
    ld a, h                                       ; $416d: $7c
    ld de, $08f7                                  ; $416e: $11 $f7 $08
    sbc $a0                                       ; $4171: $de $a0
    jr nz, jr_0c8_4175                            ; $4173: $20 $00

jr_0c8_4175:
    cp $01                                        ; $4175: $fe $01
    rst $38                                       ; $4177: $ff
    nop                                           ; $4178: $00
    rst $28                                       ; $4179: $ef
    db $10                                        ; $417a: $10
    cp l                                          ; $417b: $bd
    ld b, d                                       ; $417c: $42
    ld [bc], a                                    ; $417d: $02
    ld [$d415], a                                 ; $417e: $ea $15 $d4
    dec hl                                        ; $4181: $2b
    adc c                                         ; $4182: $89
    halt                                          ; $4183: $76
    and b                                         ; $4184: $a0
    nop                                           ; $4185: $00
    ld a, c                                       ; $4186: $79
    nop                                           ; $4187: $00
    and a                                         ; $4188: $a7
    ld e, b                                       ; $4189: $58
    ld c, e                                       ; $418a: $4b
    or h                                          ; $418b: $b4
    dec b                                         ; $418c: $05
    ld a, [$f50a]                                 ; $418d: $fa $0a $f5
    jr nc, @-$7d                                  ; $4190: $30 $81

    ld a, [hl]                                    ; $4192: $7e
    and b                                         ; $4193: $a0
    ld [$09aa], sp                                ; $4194: $08 $aa $09
    ld l, a                                       ; $4197: $6f
    sub b                                         ; $4198: $90
    cp $01                                        ; $4199: $fe $01
    ld [hl+], a                                   ; $419b: $22
    cp a                                          ; $419c: $bf
    ld b, b                                       ; $419d: $40
    and b                                         ; $419e: $a0
    jr @+$01                                      ; $419f: $18 $ff

    nop                                           ; $41a1: $00
    cp a                                          ; $41a2: $bf
    cp [hl]                                       ; $41a3: $be
    ld de, $01b7                                  ; $41a4: $11 $b7 $01
    ld c, b                                       ; $41a7: $48
    ld e, e                                       ; $41a8: $5b
    and h                                         ; $41a9: $a4
    xor [hl]                                      ; $41aa: $ae
    ld d, c                                       ; $41ab: $51
    dec d                                         ; $41ac: $15
    ld [$0954], a                                 ; $41ad: $ea $54 $09
    add b                                         ; $41b0: $80
    adc $09                                       ; $41b1: $ce $09
    db $dd                                        ; $41b3: $dd
    ld [hl+], a                                   ; $41b4: $22
    ei                                            ; $41b5: $fb
    inc b                                         ; $41b6: $04
    xor a                                         ; $41b7: $af
    ld d, b                                       ; $41b8: $50
    ld d, l                                       ; $41b9: $55
    nop                                           ; $41ba: $00
    xor d                                         ; $41bb: $aa
    inc h                                         ; $41bc: $24
    db $db                                        ; $41bd: $db
    nop                                           ; $41be: $00
    rst $38                                       ; $41bf: $ff
    ld [$a0f7], sp                                ; $41c0: $08 $f7 $a0
    ld [bc], a                                    ; $41c3: $02
    rst $38                                       ; $41c4: $ff
    add d                                         ; $41c5: $82
    rst $38                                       ; $41c6: $ff
    push de                                       ; $41c7: $d5
    rst $38                                       ; $41c8: $ff
    rst $28                                       ; $41c9: $ef
    db $f4                                        ; $41ca: $f4
    db $10                                        ; $41cb: $10
    ld b, b                                       ; $41cc: $40
    nop                                           ; $41cd: $00
    cp a                                          ; $41ce: $bf
    db $10                                        ; $41cf: $10
    rst $38                                       ; $41d0: $ff
    ld b, l                                       ; $41d1: $45
    rst $38                                       ; $41d2: $ff
    ld a, [bc]                                    ; $41d3: $0a
    rst $38                                       ; $41d4: $ff
    ld d, a                                       ; $41d5: $57
    jr nz, @+$01                                  ; $41d6: $20 $ff

    xor e                                         ; $41d8: $ab
    inc b                                         ; $41d9: $04
    add hl, de                                    ; $41da: $19
    rst $38                                       ; $41db: $ff
    or d                                          ; $41dc: $b2
    rst $38                                       ; $41dd: $ff
    ld l, b                                       ; $41de: $68
    rst $38                                       ; $41df: $ff
    jr @-$09                                      ; $41e0: $18 $f5

    rst $38                                       ; $41e2: $ff

Call_0c8_41e3:
    cp [hl]                                       ; $41e3: $be
    ld [de], a                                    ; $41e4: $12
    ld bc, $0914                                  ; $41e5: $01 $14 $09
    inc b                                         ; $41e8: $04
    ei                                            ; $41e9: $fb
    db $10                                        ; $41ea: $10
    ld a, [bc]                                    ; $41eb: $0a
    rst $38                                       ; $41ec: $ff
    ld b, b                                       ; $41ed: $40
    rst $38                                       ; $41ee: $ff
    dec d                                         ; $41ef: $15
    ld e, $00                                     ; $41f0: $1e $00
    ld e, a                                       ; $41f2: $5f
    inc h                                         ; $41f3: $24
    ld bc, $02a2                                  ; $41f4: $01 $a2 $02
    ld e, l                                       ; $41f7: $5d
    nop                                           ; $41f8: $00
    rst $38                                       ; $41f9: $ff
    jr nz, @+$01                                  ; $41fa: $20 $ff

    adc d                                         ; $41fc: $8a
    stop                                          ; $41fd: $10 $00
    xor [hl]                                      ; $41ff: $ae
    jr nz, @+$01                                  ; $4200: $20 $ff

    rst $18                                       ; $4202: $df
    inc [hl]                                      ; $4203: $34
    ld bc, $f50a                                  ; $4204: $01 $0a $f5
    ld b, b                                       ; $4207: $40
    cp a                                          ; $4208: $bf
    add l                                         ; $4209: $85
    adc b                                         ; $420a: $88
    ld [hl+], a                                   ; $420b: $22
    nop                                           ; $420c: $00
    ld b, c                                       ; $420d: $41
    rst $38                                       ; $420e: $ff
    xor d                                         ; $420f: $aa
    inc [hl]                                      ; $4210: $34
    nop                                           ; $4211: $00
    rst $38                                       ; $4212: $ff
    rst $38                                       ; $4213: $ff
    jp c, $a700                                   ; $4214: $da $00 $a7

    dec c                                         ; $4217: $0d
    or e                                          ; $4218: $b3
    sub $a9                                       ; $4219: $d6 $a9
    dec e                                         ; $421b: $1d
    and b                                         ; $421c: $a0
    jp z, $a400                                   ; $421d: $ca $00 $a4

    ld e, l                                       ; $4220: $5d
    and d                                         ; $4221: $a2
    ret nz                                        ; $4222: $c0

    cp a                                          ; $4223: $bf
    ld h, e                                       ; $4224: $63
    add b                                         ; $4225: $80
    xor c                                         ; $4226: $a9
    nop                                           ; $4227: $00
    dec d                                         ; $4228: $15
    ld [hl], d                                    ; $4229: $72
    adc l                                         ; $422a: $8d
    or e                                          ; $422b: $b3
    push bc                                       ; $422c: $c5
    ld e, d                                       ; $422d: $5a
    pop hl                                        ; $422e: $e1
    xor a                                         ; $422f: $af
    nop                                           ; $4230: $00
    ld [hl], c                                    ; $4231: $71
    call nc, Call_000_0339                        ; $4232: $d4 $39 $03
    db $fd                                        ; $4235: $fd
    ld h, [hl]                                    ; $4236: $66
    ld bc, $00d0                                  ; $4237: $01 $d0 $00
    cpl                                           ; $423a: $2f
    xor b                                         ; $423b: $a8
    ld [hl], b                                    ; $423c: $70
    ld c, d                                       ; $423d: $4a
    rst $20                                       ; $423e: $e7

Jump_0c8_423f:
    rst $30                                       ; $423f: $f7
    ld e, a                                       ; $4240: $5f
    ld e, a                                       ; $4241: $5f
    nop                                           ; $4242: $00
    rst $28                                       ; $4243: $ef
    rst $38                                       ; $4244: $ff
    ld e, a                                       ; $4245: $5f
    rst $18                                       ; $4246: $df
    rst $28                                       ; $4247: $ef
    xor [hl]                                      ; $4248: $ae
    rst $30                                       ; $4249: $f7
    dec c                                         ; $424a: $0d
    nop                                           ; $424b: $00
    ld a, [c]                                     ; $424c: $f2
    ld [hl], $0d                                  ; $424d: $36 $0d
    or d                                          ; $424f: $b2
    rst $20                                       ; $4250: $e7
    or $fb                                        ; $4251: $f6 $fb
    ld a, [$f701]                                 ; $4253: $fa $01 $f7
    cp $fb                                        ; $4256: $fe $fb
    ei                                            ; $4258: $fb
    rst $30                                       ; $4259: $f7
    ld [hl], l                                    ; $425a: $75
    rst $28                                       ; $425b: $ef
    jr nz, @+$1a                                  ; $425c: $20 $18

    ld [bc], a                                    ; $425e: $02
    ld [hl], a                                    ; $425f: $77
    rst $18                                       ; $4260: $df
    ld e, a                                       ; $4261: $5f
    rst $28                                       ; $4262: $ef
    ld a, a                                       ; $4263: $7f
    rst $18                                       ; $4264: $df
    jr nz, jr_0c8_428f                            ; $4265: $20 $28

    or e                                          ; $4267: $b3
    ld b, d                                       ; $4268: $42
    and $20                                       ; $4269: $e6 $20
    ld l, b                                       ; $426b: $68

jr_0c8_426c:
    rst $30                                       ; $426c: $f7
    ld e, a                                       ; $426d: $5f
    rst $18                                       ; $426e: $df
    ld l, a                                       ; $426f: $6f
    jr nz, jr_0c8_428a                            ; $4270: $20 $18

    push hl                                       ; $4272: $e5
    nop                                           ; $4273: $00
    jp nz, $c47b                                  ; $4274: $c2 $7b $c4

    xor $61                                       ; $4277: $ee $61
    dec hl                                        ; $4279: $2b
    ldh a, [$d9]                                  ; $427a: $f0 $d9
    nop                                           ; $427c: $00
    ld a, [c]                                     ; $427d: $f2
    inc c                                         ; $427e: $0c
    ld hl, sp-$75                                 ; $427f: $f8 $8b
    ld a, h                                       ; $4281: $7c
    ld b, a                                       ; $4282: $47
    cp h                                          ; $4283: $bc
    ld a, [$c400]                                 ; $4284: $fa $00 $c4
    db $f4                                        ; $4287: $f4
    ld b, c                                       ; $4288: $41
    push hl                                       ; $4289: $e5

jr_0c8_428a:
    jr z, jr_0c8_42f4                             ; $428a: $28 $68

    ld [hl-], a                                   ; $428c: $32
    dec a                                         ; $428d: $3d
    nop                                           ; $428e: $00

jr_0c8_428f:
    rla                                           ; $428f: $17
    dec l                                         ; $4290: $2d
    sbc d                                         ; $4291: $9a
    ld e, l                                       ; $4292: $5d
    ld [$847c], sp                                ; $4293: $08 $7c $84
    or a                                          ; $4296: $b7
    nop                                           ; $4297: $00
    ret z                                         ; $4298: $c8

    and $59                                       ; $4299: $e6 $59
    ld sp, hl                                     ; $429b: $f9
    ld h, $1f                                     ; $429c: $26 $1f
    ldh a, [$5d]                                  ; $429e: $f0 $5d
    nop                                           ; $42a0: $00
    jp nc, Jump_000_081f                          ; $42a1: $d2 $1f $08

    jr z, jr_0c8_42b3                             ; $42a4: $28 $0d

    dec b                                         ; $42a6: $05
    sub [hl]                                      ; $42a7: $96
    ld a, [$ed00]                                 ; $42a8: $fa $00 $ed
    call nz, $bf7b                                ; $42ab: $c4 $7b $bf
    ld a, a                                       ; $42ae: $7f
    ld a, [hl]                                    ; $42af: $7e
    cp a                                          ; $42b0: $bf
    ld d, d                                       ; $42b1: $52
    nop                                           ; $42b2: $00

jr_0c8_42b3:
    cp l                                          ; $42b3: $bd
    adc d                                         ; $42b4: $8a

jr_0c8_42b5:
    ld e, a                                       ; $42b5: $5f
    sbc $2f                                       ; $42b6: $de $2f
    push af                                       ; $42b8: $f5
    rrca                                          ; $42b9: $0f
    and e                                         ; $42ba: $a3
    nop                                           ; $42bb: $00
    ret c                                         ; $42bc: $d8

    ld a, l                                       ; $42bd: $7d
    ret nz                                        ; $42be: $c0

    di                                            ; $42bf: $f3
    db $e4                                        ; $42c0: $e4
    dec l                                         ; $42c1: $2d
    ldh a, [$de]                                  ; $42c2: $f0 $de
    nop                                           ; $42c4: $00
    or c                                          ; $42c5: $b1
    ld c, l                                       ; $42c6: $4d
    ld a, [$fc2b]                                 ; $42c7: $fa $2b $fc
    ld b, $fc                                     ; $42ca: $06 $fc
    add h                                         ; $42cc: $84
    nop                                           ; $42cd: $00
    ret nc                                        ; $42ce: $d0

    adc $40                                       ; $42cf: $ce $40
    xor b                                         ; $42d1: $a8
    ld h, b                                       ; $42d2: $60
    or h                                          ; $42d3: $b4
    jr nz, jr_0c8_426c                            ; $42d4: $20 $96

    nop                                           ; $42d6: $00
    ld d, b                                       ; $42d7: $50
    jp hl                                         ; $42d8: $e9


    jr jr_0c8_42f9                                ; $42d9: $18 $1e

    xor b                                         ; $42db: $a8
    call z, $a514                                 ; $42dc: $cc $14 $a5
    nop                                           ; $42df: $00
    jp nc, Jump_0c8_4872                          ; $42e0: $d2 $72 $48

    cp h                                          ; $42e3: $bc
    ld [hl+], a                                   ; $42e4: $22
    dec hl                                        ; $42e5: $2b
    jr nc, @-$61                                  ; $42e6: $30 $9d

    nop                                           ; $42e8: $00
    db $10                                        ; $42e9: $10
    rrca                                          ; $42ea: $0f
    jr jr_0c8_42b5                                ; $42eb: $18 $c8

    dec c                                         ; $42ed: $0d
    inc d                                         ; $42ee: $14
    rlca                                          ; $42ef: $07
    call nz, $ff00                                ; $42f0: $c4 $00 $ff
    ld d, e                                       ; $42f3: $53

jr_0c8_42f4:
    cp $a4                                        ; $42f4: $fe $a4
    ld a, a                                       ; $42f6: $7f
    ld [hl], e                                    ; $42f7: $73
    ccf                                           ; $42f8: $3f

jr_0c8_42f9:
    pop af                                        ; $42f9: $f1
    nop                                           ; $42fa: $00
    rra                                           ; $42fb: $1f
    dec bc                                        ; $42fc: $0b
    ld e, [hl]                                    ; $42fd: $5e
    db $ed                                        ; $42fe: $ed
    rra                                           ; $42ff: $1f
    sub $7f                                       ; $4300: $d6 $7f
    xor d                                         ; $4302: $aa
    nop                                           ; $4303: $00
    rst $38                                       ; $4304: $ff
    sub h                                         ; $4305: $94
    db $eb                                        ; $4306: $eb
    rst $08                                       ; $4307: $cf
    or a                                          ; $4308: $b7
    add e                                         ; $4309: $83
    rst $38                                       ; $430a: $ff
    push af                                       ; $430b: $f5
    nop                                           ; $430c: $00
    xor e                                         ; $430d: $ab
    cp d                                          ; $430e: $ba
    push af                                       ; $430f: $f5
    xor h                                         ; $4310: $ac
    ei                                            ; $4311: $fb
    db $e4                                        ; $4312: $e4
    cp a                                          ; $4313: $bf
    xor e                                         ; $4314: $ab
    nop                                           ; $4315: $00
    rst $38                                       ; $4316: $ff
    sbc c                                         ; $4317: $99
    ld h, a                                       ; $4318: $67
    rst $38                                       ; $4319: $ff
    db $fd                                        ; $431a: $fd
    dec h                                         ; $431b: $25
    rst $18                                       ; $431c: $df
    sub l                                         ; $431d: $95
    nop                                           ; $431e: $00
    rst $28                                       ; $431f: $ef
    call Call_0c8_67f7                            ; $4320: $cd $f7 $67

jr_0c8_4323:
    db $fd                                        ; $4323: $fd
    or l                                          ; $4324: $b5
    ld a, a                                       ; $4325: $7f
    sub b                                         ; $4326: $90
    nop                                           ; $4327: $00
    ld hl, sp-$3a                                 ; $4328: $f8 $c6
    rst $38                                       ; $432a: $ff
    cp [hl]                                       ; $432b: $be
    jp hl                                         ; $432c: $e9


    sbc h                                         ; $432d: $9c
    jp hl                                         ; $432e: $e9


    adc $00                                       ; $432f: $ce $00
    rst $38                                       ; $4331: $ff
    sbc b                                         ; $4332: $98
    rst $28                                       ; $4333: $ef
    sbc $e9                                       ; $4334: $de $e9
    cp h                                          ; $4336: $bc
    jp hl                                         ; $4337: $e9


    add hl, bc                                    ; $4338: $09
    nop                                           ; $4339: $00
    rra                                           ; $433a: $1f
    ld h, e                                       ; $433b: $63
    rst $38                                       ; $433c: $ff
    ld a, l                                       ; $433d: $7d
    rla                                           ; $433e: $17
    add hl, sp                                    ; $433f: $39
    rla                                           ; $4340: $17
    ld [hl], e                                    ; $4341: $73
    nop                                           ; $4342: $00
    ld a, a                                       ; $4343: $7f
    add hl, de                                    ; $4344: $19
    rst $30                                       ; $4345: $f7
    ld e, e                                       ; $4346: $5b
    scf                                           ; $4347: $37
    dec d                                         ; $4348: $15
    ccf                                           ; $4349: $3f
    ld d, e                                       ; $434a: $53
    nop                                           ; $434b: $00
    cp $32                                        ; $434c: $fe $32
    rst $28                                       ; $434e: $ef
    ld b, c                                       ; $434f: $41
    cp a                                          ; $4350: $bf
    sub l                                         ; $4351: $95
    rst $38                                       ; $4352: $ff
    call nz, $fb00                                ; $4353: $c4 $00 $fb
    sbc $77                                       ; $4356: $de $77
    ld h, d                                       ; $4358: $62
    db $fd                                        ; $4359: $fd
    db $fd                                        ; $435a: $fd
    ccf                                           ; $435b: $3f
    ldh [rP1], a                                  ; $435c: $e0 $00
    ld b, $a6                                     ; $435e: $06 $a6
    ld [de], a                                    ; $4360: $12
    rst $00                                       ; $4361: $c7
    add hl, hl                                    ; $4362: $29
    ld c, d                                       ; $4363: $4a
    add a                                         ; $4364: $87
    cp $00                                        ; $4365: $fe $00
    cp b                                          ; $4367: $b8
    ld d, d                                       ; $4368: $52
    pop bc                                        ; $4369: $c1
    ld b, c                                       ; $436a: $41
    ldh [$b0], a                                  ; $436b: $e0 $b0
    ld h, d                                       ; $436d: $62
    and d                                         ; $436e: $a2
    nop                                           ; $436f: $00
    ld b, $02                                     ; $4370: $06 $02
    inc bc                                        ; $4372: $03
    add hl, de                                    ; $4373: $19
    ld bc, $812c                                  ; $4374: $01 $2c $81
    call nz, $8000                                ; $4377: $c4 $00 $80
    ld b, h                                       ; $437a: $44

jr_0c8_437b:
    ld b, c                                       ; $437b: $41
    nop                                           ; $437c: $00
    ld h, b                                       ; $437d: $60
    inc [hl]                                      ; $437e: $34
    jr nz, jr_0c8_4323                            ; $437f: $20 $a2

    nop                                           ; $4381: $00
    ld e, a                                       ; $4382: $5f
    ld e, a                                       ; $4383: $5f
    and e                                         ; $4384: $a3
    and a                                         ; $4385: $a7
    ld e, c                                       ; $4386: $59
    cp $81                                        ; $4387: $fe $81
    or a                                          ; $4389: $b7
    nop                                           ; $438a: $00
    ret z                                         ; $438b: $c8

    ld a, e                                       ; $438c: $7b
    ld b, h                                       ; $438d: $44
    and [hl]                                      ; $438e: $a6
    ld l, c                                       ; $438f: $69
    xor l                                         ; $4390: $ad
    ld [hl-], a                                   ; $4391: $32
    ld [hl], e                                    ; $4392: $73
    nop                                           ; $4393: $00
    xor [hl]                                      ; $4394: $ae
    ld c, d                                       ; $4395: $4a
    rst $30                                       ; $4396: $f7
    sub l                                         ; $4397: $95
    rst $38                                       ; $4398: $ff
    push hl                                       ; $4399: $e5
    cp a                                          ; $439a: $bf
    pop bc                                        ; $439b: $c1
    nop                                           ; $439c: $00
    cp $da                                        ; $439d: $fe $da
    ld l, a                                       ; $439f: $6f
    xor b                                         ; $43a0: $a8
    ld [hl], a                                    ; $43a1: $77
    inc [hl]                                      ; $43a2: $34
    rst $38                                       ; $43a3: $ff
    ld l, b                                       ; $43a4: $68
    nop                                           ; $43a5: $00
    ld b, $fb                                     ; $43a6: $06 $fb
    ld b, $cf                                     ; $43a8: $06 $cf
    dec a                                         ; $43aa: $3d
    adc b                                         ; $43ab: $88
    di                                            ; $43ac: $f3
    rst $28                                       ; $43ad: $ef
    nop                                           ; $43ae: $00
    sub b                                         ; $43af: $90
    ld [hl], l                                    ; $43b0: $75
    jp nz, $e865                                  ; $43b1: $c2 $65 $e8

    xor a                                         ; $43b4: $af
    ld [hl], b                                    ; $43b5: $70
    ld c, a                                       ; $43b6: $4f
    nop                                           ; $43b7: $00
    inc bc                                        ; $43b8: $03
    ld e, d                                       ; $43b9: $5a
    inc bc                                        ; $43ba: $03
    dec d                                         ; $43bb: $15
    ld bc, $812a                                  ; $43bc: $01 $2a $81
    sub h                                         ; $43bf: $94
    nop                                           ; $43c0: $00
    add b                                         ; $43c1: $80
    jp nz, $8844                                  ; $43c2: $c2 $44 $88

    ld h, b                                       ; $43c5: $60
    ld h, c                                       ; $43c6: $61
    jr nz, jr_0c8_437b                            ; $43c7: $20 $b2

    nop                                           ; $43c9: $00
    rst $08                                       ; $43ca: $cf
    cp a                                          ; $43cb: $bf
    ld b, e                                       ; $43cc: $43
    rst $30                                       ; $43cd: $f7
    add hl, bc                                    ; $43ce: $09
    call c, $a6a3                                 ; $43cf: $dc $a3 $a6
    nop                                           ; $43d2: $00
    reti                                          ; $43d3: $d9


    ld h, l                                       ; $43d4: $65
    ld c, d                                       ; $43d5: $4a
    ld d, h                                       ; $43d6: $54
    ld l, d                                       ; $43d7: $6a
    ld a, $21                                     ; $43d8: $3e $21
    ld [c], a                                     ; $43da: $e2
    nop                                           ; $43db: $00
    cp a                                          ; $43dc: $bf
    jp hl                                         ; $43dd: $e9


    or a                                          ; $43de: $b7
    and h                                         ; $43df: $a4
    ei                                            ; $43e0: $fb
    ld [$bfb5], a                                 ; $43e1: $ea $b5 $bf
    nop                                           ; $43e4: $00
    rst $38                                       ; $43e5: $ff
    cp a                                          ; $43e6: $bf
    rst $38                                       ; $43e7: $ff
    xor e                                         ; $43e8: $ab
    call nc, $ffff                                ; $43e9: $d4 $ff $ff
    ld e, a                                       ; $43ec: $5f
    nop                                           ; $43ed: $00
    cp l                                          ; $43ee: $bd
    cpl                                           ; $43ef: $2f
    db $dd                                        ; $43f0: $dd
    add l                                         ; $43f1: $85
    rst $38                                       ; $43f2: $ff
    ld d, c                                       ; $43f3: $51
    rst $28                                       ; $43f4: $ef
    push hl                                       ; $43f5: $e5
    nop                                           ; $43f6: $00
    ei                                            ; $43f7: $fb
    di                                            ; $43f8: $f3
    db $fd                                        ; $43f9: $fd
    ld sp, $ffcf                                  ; $43fa: $31 $cf $ff
    rst $38                                       ; $43fd: $ff
    adc h                                         ; $43fe: $8c
    nop                                           ; $43ff: $00
    rst $38                                       ; $4400: $ff
    sbc $e9                                       ; $4401: $de $e9
    db $fc                                        ; $4403: $fc
    jp hl                                         ; $4404: $e9


    ld e, [hl]                                    ; $4405: $5e
    jp hl                                         ; $4406: $e9


    ld l, b                                       ; $4407: $68
    nop                                           ; $4408: $00
    db $fd                                        ; $4409: $fd
    rst $10                                       ; $440a: $d7
    ld a, a                                       ; $440b: $7f
    cp [hl]                                       ; $440c: $be
    ld a, l                                       ; $440d: $7d
    xor $1f                                       ; $440e: $ee $1f
    ld [hl], c                                    ; $4410: $71
    nop                                           ; $4411: $00
    rst $38                                       ; $4412: $ff
    dec sp                                        ; $4413: $3b
    rla                                           ; $4414: $17
    ccf                                           ; $4415: $3f
    rla                                           ; $4416: $17
    ld a, d                                       ; $4417: $7a
    rla                                           ; $4418: $17
    ld d, $00                                     ; $4419: $16 $00
    ccf                                           ; $441b: $3f
    db $eb                                        ; $441c: $eb
    cp $3d                                        ; $441d: $fe $3d
    ld a, $b7                                     ; $441f: $3e $b7
    ld hl, sp-$2f                                 ; $4421: $f8 $d1
    nop                                           ; $4423: $00
    ccf                                           ; $4424: $3f
    ld [$0d1f], a                                 ; $4425: $ea $1f $0d
    rst $38                                       ; $4428: $ff
    call c, $a827                                 ; $4429: $dc $27 $a8
    nop                                           ; $442c: $00
    ld d, [hl]                                    ; $442d: $56
    ld c, [hl]                                    ; $442e: $4e
    and e                                         ; $442f: $a3
    push hl                                       ; $4430: $e5
    dec de                                        ; $4431: $1b
    ld d, l                                       ; $4432: $55
    xor c                                         ; $4433: $a9
    sub d                                         ; $4434: $92
    nop                                           ; $4435: $00
    ld [hl], b                                    ; $4436: $70
    ld [hl], d                                    ; $4437: $72
    ld hl, sp-$67                                 ; $4438: $f8 $99
    add sp, -$5c                                  ; $443a: $e8 $a4
    adc h                                         ; $443c: $8c
    xor h                                         ; $443d: $ac
    nop                                           ; $443e: $00
    ld b, $5a                                     ; $443f: $06 $5a
    ld [hl+], a                                   ; $4441: $22
    adc l                                         ; $4442: $8d
    ld d, e                                       ; $4443: $53
    ld l, e                                       ; $4444: $6b
    add c                                         ; $4445: $81
    inc sp                                        ; $4446: $33
    nop                                           ; $4447: $00
    sub b                                         ; $4448: $90
    ld bc, $8918                                  ; $4449: $01 $18 $89
    ld [$0c24], sp                                ; $444c: $08 $24 $0c
    ld b, $00                                     ; $444f: $06 $00
    inc h                                         ; $4451: $24
    ld b, d                                       ; $4452: $42
    ld a, [bc]                                    ; $4453: $0a
    inc hl                                        ; $4454: $23
    ld bc, $1581                                  ; $4455: $01 $81 $15
    inc a                                         ; $4458: $3c
    nop                                           ; $4459: $00
    inc de                                        ; $445a: $13
    db $d3                                        ; $445b: $d3
    rra                                           ; $445c: $1f
    xor [hl]                                      ; $445d: $ae
    rrca                                          ; $445e: $0f
    dec c                                         ; $445f: $0d
    rlca                                          ; $4460: $07
    or d                                          ; $4461: $b2
    nop                                           ; $4462: $00
    rlca                                          ; $4463: $07
    ld d, d                                       ; $4464: $52
    inc bc                                        ; $4465: $03
    rlca                                          ; $4466: $07
    ld bc, $01ad                                  ; $4467: $01 $ad $01
    jp nc, $ff00                                  ; $446a: $d2 $00 $ff

    adc l                                         ; $446d: $8d
    ld a, [$ffaf]                                 ; $446e: $fa $af $ff
    and h                                         ; $4471: $a4
    rst $38                                       ; $4472: $ff
    ld d, l                                       ; $4473: $55
    nop                                           ; $4474: $00
    cp $d3                                        ; $4475: $fe $d3
    cp $6f                                        ; $4477: $fe $6f

Jump_0c8_4479:
    rst $38                                       ; $4479: $ff
    sbc e                                         ; $447a: $9b
    rst $38                                       ; $447b: $ff
    rra                                           ; $447c: $1f
    nop                                           ; $447d: $00
    ldh a, [$f7]                                  ; $447e: $f0 $f7
    ld hl, sp-$52                                 ; $4480: $f8 $ae
    add sp, $3f                                   ; $4482: $e8 $3f
    add h                                         ; $4484: $84
    dec l                                         ; $4485: $2d
    nop                                           ; $4486: $00
    ld d, [hl]                                    ; $4487: $56
    cp a                                          ; $4488: $bf
    ld b, d                                       ; $4489: $42
    dec a                                         ; $448a: $3d
    ld b, e                                       ; $448b: $43
    ld a, e                                       ; $448c: $7b
    add l                                         ; $448d: $85
    ld [hl], h                                    ; $448e: $74
    nop                                           ; $448f: $00
    ld de, $57ba                                  ; $4490: $11 $ba $57
    ret c                                         ; $4493: $d8

    ld [$8c64], sp                                ; $4494: $08 $64 $8c
    and h                                         ; $4497: $a4
    nop                                           ; $4498: $00
    ld d, [hl]                                    ; $4499: $56
    jp nc, $f702                                  ; $449a: $d2 $02 $f7

    add hl, bc                                    ; $449d: $09
    ld e, c                                       ; $449e: $59
    add e                                         ; $449f: $83
    ld e, l                                       ; $44a0: $5d
    nop                                           ; $44a1: $00
    jp nc, $1816                                  ; $44a2: $d2 $16 $18

    inc c                                         ; $44a5: $0c
    dec bc                                        ; $44a6: $0b
    dec d                                         ; $44a7: $15
    inc b                                         ; $44a8: $04
    inc b                                         ; $44a9: $04
    ld bc, $4307                                  ; $44aa: $01 $07 $43
    ld [bc], a                                    ; $44ad: $02
    dec bc                                        ; $44ae: $0b
    ld bc, $8101                                  ; $44af: $01 $01 $81
    or h                                          ; $44b2: $b4
    nop                                           ; $44b3: $00
    nop                                           ; $44b4: $00
    ld b, b                                       ; $44b5: $40
    ld c, e                                       ; $44b6: $4b
    ld [hl], h                                    ; $44b7: $74
    dec a                                         ; $44b8: $3d
    ld [hl+], a                                   ; $44b9: $22
    cpl                                           ; $44ba: $2f
    ldh a, [$36]                                  ; $44bb: $f0 $36
    nop                                           ; $44bd: $00
    reti                                          ; $44be: $d9


    dec a                                         ; $44bf: $3d
    ld c, d                                       ; $44c0: $4a
    rst $08                                       ; $44c1: $cf
    inc c                                         ; $44c2: $0c
    rst $20                                       ; $44c3: $e7
    add b                                         ; $44c4: $80
    ld h, c                                       ; $44c5: $61
    nop                                           ; $44c6: $00
    call nc, $69d2                                ; $44c7: $d4 $d2 $69
    ld [hl], b                                    ; $44ca: $70
    xor d                                         ; $44cb: $aa
    ld l, [hl]                                    ; $44cc: $6e
    or c                                          ; $44cd: $b1
    or l                                          ; $44ce: $b5
    nop                                           ; $44cf: $00
    ld e, a                                       ; $44d0: $5f
    ld e, b                                       ; $44d1: $58
    xor a                                         ; $44d2: $af
    ld [hl], h                                    ; $44d3: $74
    adc l                                         ; $44d4: $8d
    sub b                                         ; $44d5: $90
    add b                                         ; $44d6: $80
    ld d, h                                       ; $44d7: $54
    nop                                           ; $44d8: $00
    ret nz                                        ; $44d9: $c0

    ld h, b                                       ; $44da: $60
    ld b, d                                       ; $44db: $42
    ld l, h                                       ; $44dc: $6c
    jr nz, jr_0c8_4544                            ; $44dd: $20 $65

    ldh a, [rNR23]                                ; $44df: $f0 $18
    nop                                           ; $44e1: $00
    jp nc, $08b9                                  ; $44e2: $d2 $b9 $08

    ld e, c                                       ; $44e5: $59
    xor h                                         ; $44e6: $ac
    sub b                                         ; $44e7: $90
    add b                                         ; $44e8: $80
    ret                                           ; $44e9: $c9


    nop                                           ; $44ea: $00
    ld b, b                                       ; $44eb: $40
    pop hl                                        ; $44ec: $e1
    ld b, b                                       ; $44ed: $40
    dec l                                         ; $44ee: $2d
    dec hl                                        ; $44ef: $2b
    dec b                                         ; $44f0: $05
    ld a, $96                                     ; $44f1: $3e $96
    nop                                           ; $44f3: $00
    jr @-$5f                                      ; $44f4: $18 $9f

    ld [$0da6], sp                                ; $44f6: $08 $a6 $0d
    add $ff                                       ; $44f9: $c6 $ff
    ld [$7f00], a                                 ; $44fb: $ea $00 $7f

Jump_0c8_44fe:
    rst $30                                       ; $44fe: $f7
    ld a, a                                       ; $44ff: $7f
    ld h, l                                       ; $4500: $65
    cp a                                          ; $4501: $bf
    ld [hl], l                                    ; $4502: $75

Call_0c8_4503:
    cp a                                          ; $4503: $bf
    sbc c                                         ; $4504: $99
    nop                                           ; $4505: $00
    rra                                           ; $4506: $1f
    sbc h                                         ; $4507: $9c
    rrca                                          ; $4508: $0f
    ld e, [hl]                                    ; $4509: $5e
    cpl                                           ; $450a: $2f
    db $f4                                        ; $450b: $f4
    adc d                                         ; $450c: $8a
    ld a, a                                       ; $450d: $7f
    nop                                           ; $450e: $00
    ret nz                                        ; $450f: $c0

    ld d, a                                       ; $4510: $57
    add sp, $3b                                   ; $4511: $e8 $3b
    db $e4                                        ; $4513: $e4
    db $dd                                        ; $4514: $dd
    ld a, [c]                                     ; $4515: $f2
    ld d, [hl]                                    ; $4516: $56
    nop                                           ; $4517: $00
    ld sp, hl                                     ; $4518: $f9
    xor a                                         ; $4519: $af
    ld hl, sp-$2c                                 ; $451a: $f8 $d4
    db $fd                                        ; $451c: $fd
    db $eb                                        ; $451d: $eb
    sub b                                         ; $451e: $90
    ld [hl], l                                    ; $451f: $75
    nop                                           ; $4520: $00
    ret z                                         ; $4521: $c8

    ret c                                         ; $4522: $d8

    ld h, d                                       ; $4523: $62
    rst $38                                       ; $4524: $ff
    jr nz, jr_0c8_4584                            ; $4525: $20 $5d

    or b                                          ; $4527: $b0
    or l                                          ; $4528: $b5
    nop                                           ; $4529: $00
    ld e, b                                       ; $452a: $58
    sbc $29                                       ; $452b: $de $29
    ld d, a                                       ; $452d: $57
    xor h                                         ; $452e: $ac
    add b                                         ; $452f: $80
    add b                                         ; $4530: $80
    ld d, c                                       ; $4531: $51
    nop                                           ; $4532: $00
    ret nz                                        ; $4533: $c0

    ldh [rLCDC], a                                ; $4534: $e0 $40
    ld [hl+], a                                   ; $4536: $22
    and b                                         ; $4537: $a0
    and c                                         ; $4538: $a1
    jr nc, @+$3c                                  ; $4539: $30 $3a

    nop                                           ; $453b: $00
    sub a                                         ; $453c: $97
    db $fd                                        ; $453d: $fd
    ld a, [bc]                                    ; $453e: $0a
    ld [hl], $7c                                  ; $453f: $36 $7c
    db $dd                                        ; $4541: $dd
    ld h, $4f                                     ; $4542: $26 $4f

jr_0c8_4544:
    nop                                           ; $4544: $00
    ld [bc], a                                    ; $4545: $02
    rlca                                          ; $4546: $07
    ld c, e                                       ; $4547: $4b
    ld a, e                                       ; $4548: $7b
    add c                                         ; $4549: $81
    ret nz                                        ; $454a: $c0

    sub e                                         ; $454b: $93
    ld a, [hl-]                                   ; $454c: $3a
    nop                                           ; $454d: $00
    ret nz                                        ; $454e: $c0

    ld hl, sp+$42                                 ; $454f: $f8 $42
    and l                                         ; $4551: $a5
    jr z, @-$12                                   ; $4552: $28 $ec

    rla                                           ; $4554: $17
    ld d, $00                                     ; $4555: $16 $00
    cp $fb                                        ; $4557: $fe $fb
    rst $38                                       ; $4559: $ff
    ld e, l                                       ; $455a: $5d
    rst $38                                       ; $455b: $ff
    and b                                         ; $455c: $a0
    rst $38                                       ; $455d: $ff
    ld d, l                                       ; $455e: $55
    nop                                           ; $455f: $00
    rst $38                                       ; $4560: $ff
    jp hl                                         ; $4561: $e9


    ld a, a                                       ; $4562: $7f
    ld a, l                                       ; $4563: $7d
    cp a                                          ; $4564: $bf
    adc [hl]                                      ; $4565: $8e
    inc b                                         ; $4566: $04
    ld h, [hl]                                    ; $4567: $66
    nop                                           ; $4568: $00
    sub d                                         ; $4569: $92
    inc l                                         ; $456a: $2c
    ld b, e                                       ; $456b: $43
    ld [hl], a                                    ; $456c: $77
    add c                                         ; $456d: $81
    db $e4                                        ; $456e: $e4
    sub c                                         ; $456f: $91
    rlc b                                         ; $4570: $cb $00
    ret nz                                        ; $4572: $c0

    ld a, l                                       ; $4573: $7d
    jp nz, $e779                                  ; $4574: $c2 $79 $e7

    sub l                                         ; $4577: $95
    ld b, $5b                                     ; $4578: $06 $5b
    nop                                           ; $457a: $00
    ld [bc], a                                    ; $457b: $02
    nop                                           ; $457c: $00
    inc de                                        ; $457d: $13
    xor c                                         ; $457e: $a9
    ld bc, $80b2                                  ; $457f: $01 $b2 $80
    sub h                                         ; $4582: $94
    nop                                           ; $4583: $00

jr_0c8_4584:
    ret nz                                        ; $4584: $c0

    call z, Call_0c8_6040                         ; $4585: $cc $40 $60
    ldh [$af], a                                  ; $4588: $e0 $af
    rla                                           ; $458a: $17
    cp $00                                        ; $458b: $fe $00
    inc bc                                        ; $458d: $03
    push af                                       ; $458e: $f5
    dec bc                                        ; $458f: $0b
    db $db                                        ; $4590: $db
    ld bc, $91ec                                  ; $4591: $01 $ec $91
    dec [hl]                                      ; $4594: $35
    nop                                           ; $4595: $00
    ret nz                                        ; $4596: $c0

    ld a, [hl]                                    ; $4597: $7e
    ld b, b                                       ; $4598: $40
    ld a, [hl-]                                   ; $4599: $3a
    jr nz, @+$47                                  ; $459a: $20 $45

    or $9f                                        ; $459c: $f6 $9f
    nop                                           ; $459e: $00
    ld b, d                                       ; $459f: $42
    or h                                          ; $45a0: $b4
    ld b, e                                       ; $45a1: $43
    ld a, a                                       ; $45a2: $7f
    add c                                         ; $45a3: $81
    call $f590                                    ; $45a4: $cd $90 $f5
    nop                                           ; $45a7: $00
    jp nz, Jump_0c8_51ea                          ; $45a8: $c2 $ea $51

    xor a                                         ; $45ab: $af
    ld h, b                                       ; $45ac: $60
    rst $20                                       ; $45ad: $e7
    dec d                                         ; $45ae: $15
    rst $18                                       ; $45af: $df
    nop                                           ; $45b0: $00
    ld [hl+], a                                   ; $45b1: $22
    adc d                                         ; $45b2: $8a
    ld [hl], a                                    ; $45b3: $77
    ld e, a                                       ; $45b4: $5f
    and c                                         ; $45b5: $a1
    ld [$bd95], a                                 ; $45b6: $ea $95 $bd
    nop                                           ; $45b9: $00
    jp nz, Jump_0c8_4e61                          ; $45ba: $c2 $61 $4e

    ld a, [hl-]                                   ; $45bd: $3a
    ld h, l                                       ; $45be: $65
    db $f4                                        ; $45bf: $f4
    rst $00                                       ; $45c0: $c7
    ld e, e                                       ; $45c1: $5b
    ld [bc], a                                    ; $45c2: $02
    ld [bc], a                                    ; $45c3: $02
    and c                                         ; $45c4: $a1
    dec bc                                        ; $45c5: $0b
    ld hl, $9a05                                  ; $45c6: $21 $05 $9a
    ld b, b                                       ; $45c9: $40
    nop                                           ; $45ca: $00
    add $00                                       ; $45cb: $c6 $00
    ld b, b                                       ; $45cd: $40
    dec h                                         ; $45ce: $25
    ld h, b                                       ; $45cf: $60
    ld c, $31                                     ; $45d0: $0e $31
    inc de                                        ; $45d2: $13
    ld e, h                                       ; $45d3: $5c
    sbc h                                         ; $45d4: $9c
    nop                                           ; $45d5: $00
    ld [$0c8b], sp                                ; $45d6: $08 $8b $0c
    ld d, a                                       ; $45d9: $57
    inc b                                         ; $45da: $04
    dec hl                                        ; $45db: $2b
    ld e, $66                                     ; $45dc: $1e $66
    nop                                           ; $45de: $00
    ei                                            ; $45df: $fb
    ld bc, $57eb                                  ; $45e0: $01 $eb $57
    dec sp                                        ; $45e3: $3b
    ld a, h                                       ; $45e4: $7c
    rra                                           ; $45e5: $1f
    ld a, [hl+]                                   ; $45e6: $2a
    nop                                           ; $45e7: $00
    rst $18                                       ; $45e8: $df
    db $dd                                        ; $45e9: $dd
    rrca                                          ; $45ea: $0f
    ld h, h                                       ; $45eb: $64
    rra                                           ; $45ec: $1f
    sub d                                         ; $45ed: $92
    ld c, a                                       ; $45ee: $4f
    ld c, a                                       ; $45ef: $4f
    nop                                           ; $45f0: $00
    inc de                                        ; $45f1: $13
    jp $be15                                      ; $45f2: $c3 $15 $be


    rst $38                                       ; $45f5: $ff
    reti                                          ; $45f6: $d9


    cp $4d                                        ; $45f7: $fe $4d
    nop                                           ; $45f9: $00
    rst $38                                       ; $45fa: $ff
    rst $38                                       ; $45fb: $ff
    db $fd                                        ; $45fc: $fd
    dec l                                         ; $45fd: $2d
    rst $38                                       ; $45fe: $ff
    or a                                          ; $45ff: $b7
    cp $bb                                        ; $4600: $fe $bb
    nop                                           ; $4602: $00
    rst $38                                       ; $4603: $ff
    ld l, a                                       ; $4604: $6f
    db $fd                                        ; $4605: $fd
    or c                                          ; $4606: $b1
    ldh [$90], a                                  ; $4607: $e0 $90
    rst $30                                       ; $4609: $f7
    ld [$ff00], sp                                ; $460a: $08 $00 $ff
    ld [$24fd], sp                                ; $460d: $08 $fd $24
    cp $5b                                        ; $4610: $fe $5b
    and $ba                                       ; $4612: $e6 $ba
    nop                                           ; $4614: $00
    ld l, a                                       ; $4615: $6f
    push bc                                       ; $4616: $c5
    ei                                            ; $4617: $fb
    xor d                                         ; $4618: $aa
    ld [hl], l                                    ; $4619: $75
    db $fd                                        ; $461a: $fd
    ret nc                                        ; $461b: $d0

    ld c, $00                                     ; $461c: $0e $00
    ld e, c                                       ; $461e: $59
    db $dd                                        ; $461f: $dd
    inc c                                         ; $4620: $0c
    ld a, h                                       ; $4621: $7c
    add a                                         ; $4622: $87
    add e                                         ; $4623: $83
    ld d, [hl]                                    ; $4624: $56
    db $eb                                        ; $4625: $eb
    nop                                           ; $4626: $00
    ld [bc], a                                    ; $4627: $02
    di                                            ; $4628: $f3
    dec c                                         ; $4629: $0d
    ld a, [hl+]                                   ; $462a: $2a
    ld sp, $12bc                                  ; $462b: $31 $bc $12
    xor l                                         ; $462e: $ad
    nop                                           ; $462f: $00
    ld e, b                                       ; $4630: $58
    ld c, d                                       ; $4631: $4a
    dec a                                         ; $4632: $3d
    ld d, a                                       ; $4633: $57
    db $f4                                        ; $4634: $f4

jr_0c8_4635:
    add $82                                       ; $4635: $c6 $82
    ld b, d                                       ; $4637: $42
    nop                                           ; $4638: $00
    inc de                                        ; $4639: $13
    add hl, sp                                    ; $463a: $39
    ld bc, $324d                                  ; $463b: $01 $4d $32
    cp l                                          ; $463e: $bd
    rla                                           ; $463f: $17
    ld c, d                                       ; $4640: $4a
    nop                                           ; $4641: $00
    ccf                                           ; $4642: $3f
    cp a                                          ; $4643: $bf
    ld c, l                                       ; $4644: $4d
    ld a, $47                                     ; $4645: $3e $47
    ld [c], a                                     ; $4647: $e2
    rrca                                          ; $4648: $0f
    xor a                                         ; $4649: $af
    nop                                           ; $464a: $00
    ld b, e                                       ; $464b: $43
    db $eb                                        ; $464c: $eb
    dec d                                         ; $464d: $15
    inc hl                                        ; $464e: $23
    ldh a, [$50]                                  ; $464f: $f0 $50
    ldh a, [$2a]                                  ; $4651: $f0 $2a
    nop                                           ; $4653: $00
    ld hl, sp+$4c                                 ; $4654: $f8 $4c
    ld hl, sp+$04                                 ; $4656: $f8 $04
    db $fc                                        ; $4658: $fc
    or $5e                                        ; $4659: $f6 $5e
    ld c, e                                       ; $465b: $4b
    ld [bc], a                                    ; $465c: $02
    or $81                                        ; $465d: $f6 $81
    rst $38                                       ; $465f: $ff
    add sp, -$7f                                  ; $4660: $e8 $81
    or l                                          ; $4662: $b5

jr_0c8_4663:
    add d                                         ; $4663: $82
    inc bc                                        ; $4664: $03
    sbc $00                                       ; $4665: $de $00
    ld h, c                                       ; $4667: $61
    ld l, e                                       ; $4668: $6b
    or b                                          ; $4669: $b0
    db $dd                                        ; $466a: $dd
    ld a, [c]                                     ; $466b: $f2
    sbc a                                         ; $466c: $9f
    ld hl, sp-$76                                 ; $466d: $f8 $8a
    nop                                           ; $466f: $00
    ld a, h                                       ; $4670: $7c
    sub $81                                       ; $4671: $d6 $81
    xor d                                         ; $4673: $aa
    call nc, $40f5                                ; $4674: $d4 $f5 $40
    push af                                       ; $4677: $f5
    nop                                           ; $4678: $00

jr_0c8_4679:
    ld l, b                                       ; $4679: $68
    ld [hl+], a                                   ; $467a: $22
    jr nc, jr_0c8_4679                            ; $467b: $30 $fc

    inc de                                        ; $467d: $13
    or d                                          ; $467e: $b2
    rra                                           ; $467f: $1f
    ret c                                         ; $4680: $d8

    nop                                           ; $4681: $00
    ld [$f9a7], sp                                ; $4682: $08 $a7 $f9
    push af                                       ; $4685: $f5
    adc d                                         ; $4686: $8a
    push hl                                       ; $4687: $e5
    ld e, d                                       ; $4688: $5a
    and d                                         ; $4689: $a2
    nop                                           ; $468a: $00
    ld [hl], l                                    ; $468b: $75
    jr c, jr_0c8_4635                             ; $468c: $38 $a7

    ld e, a                                       ; $468e: $5f
    ret nc                                        ; $468f: $d0

    ld c, l                                       ; $4690: $4d
    ld a, [de]                                    ; $4691: $1a
    adc d                                         ; $4692: $8a
    nop                                           ; $4693: $00
    dec c                                         ; $4694: $0d
    or h                                          ; $4695: $b4
    db $db                                        ; $4696: $db
    ld [$f6fd], a                                 ; $4697: $ea $fd $f6
    ld l, e                                       ; $469a: $6b
    and e                                         ; $469b: $a3
    nop                                           ; $469c: $00
    ld a, a                                       ; $469d: $7f
    cp a                                          ; $469e: $bf
    ld a, a                                       ; $469f: $7f
    ld e, d                                       ; $46a0: $5a
    cp l                                          ; $46a1: $bd
    cp d                                          ; $46a2: $ba
    ld e, a                                       ; $46a3: $5f
    db $fc                                        ; $46a4: $fc
    nop                                           ; $46a5: $00
    rrca                                          ; $46a6: $0f
    xor d                                         ; $46a7: $aa
    add l                                         ; $46a8: $85
    and c                                         ; $46a9: $a1
    jp c, $c1fc                                   ; $46aa: $da $fc $c1

    rst $38                                       ; $46ad: $ff
    nop                                           ; $46ae: $00
    ldh [$29], a                                  ; $46af: $e0 $29
    db $f4                                        ; $46b1: $f4
    jp c, $75b1                                   ; $46b2: $da $b1 $75

    jp c, Jump_000_00aa                           ; $46b5: $da $aa $00

    ld a, l                                       ; $46b8: $7d
    and e                                         ; $46b9: $a3
    add b                                         ; $46ba: $80
    jp nz, $ce90                                  ; $46bb: $c2 $90 $ce

    ld b, b                                       ; $46be: $40
    adc d                                         ; $46bf: $8a
    nop                                           ; $46c0: $00
    ld h, b                                       ; $46c1: $60
    ld [hl], l                                    ; $46c2: $75
    and b                                         ; $46c3: $a0
    or [hl]                                       ; $46c4: $b6
    ld d, b                                       ; $46c5: $50
    pop af                                        ; $46c6: $f1
    jr @-$44                                      ; $46c7: $18 $ba

    nop                                           ; $46c9: $00
    ld [$a1c6], sp                                ; $46ca: $08 $c6 $a1
    and l                                         ; $46cd: $a5
    jp nc, Jump_0c8_40fe                          ; $46ce: $d2 $fe $40

    ld [hl-], a                                   ; $46d1: $32
    nop                                           ; $46d2: $00
    ld l, b                                       ; $46d3: $68
    add hl, hl                                    ; $46d4: $29
    ld [hl-], a                                   ; $46d5: $32
    dec a                                         ; $46d6: $3d
    db $10                                        ; $46d7: $10
    add a                                         ; $46d8: $87
    jr jr_0c8_4663                                ; $46d9: $18 $88

    nop                                           ; $46db: $00
    dec c                                         ; $46dc: $0d
    or b                                          ; $46dd: $b0
    rst $28                                       ; $46de: $ef
    add $fd                                       ; $46df: $c6 $fd
    ret nc                                        ; $46e1: $d0

    ld a, a                                       ; $46e2: $7f
    and d                                         ; $46e3: $a2
    nop                                           ; $46e4: $00
    ld a, a                                       ; $46e5: $7f
    ld [hl], h                                    ; $46e6: $74
    ccf                                           ; $46e7: $3f
    rst $10                                       ; $46e8: $d7
    dec sp                                        ; $46e9: $3b
    db $db                                        ; $46ea: $db
    ld e, $9c                                     ; $46eb: $1e $9c
    nop                                           ; $46ed: $00
    ld c, a                                       ; $46ee: $4f
    ld [hl], a                                    ; $46ef: $77
    cp h                                          ; $46f0: $bc
    ld d, [hl]                                    ; $46f1: $56
    cp $72                                        ; $46f2: $fe $72
    rst $28                                       ; $46f4: $ef
    ld c, a                                       ; $46f5: $4f
    nop                                           ; $46f6: $00
    cp e                                          ; $46f7: $bb
    or a                                          ; $46f8: $b7
    db $dd                                        ; $46f9: $dd
    adc h                                         ; $46fa: $8c
    ei                                            ; $46fb: $fb
    ld b, l                                       ; $46fc: $45
    rst $38                                       ; $46fd: $ff
    db $e4                                        ; $46fe: $e4
    nop                                           ; $46ff: $00
    ld a, a                                       ; $4700: $7f
    ld h, h                                       ; $4701: $64
    inc c                                         ; $4702: $0c
    ld b, $a4                                     ; $4703: $06 $a4
    and [hl]                                      ; $4705: $a6
    ld [de], a                                    ; $4706: $12
    rst $10                                       ; $4707: $d7
    nop                                           ; $4708: $00
    add hl, hl                                    ; $4709: $29
    ld c, c                                       ; $470a: $49
    add a                                         ; $470b: $87
    add sp, -$42                                  ; $470c: $e8 $be
    ld l, d                                       ; $470e: $6a
    ret nc                                        ; $470f: $d0

    ld h, d                                       ; $4710: $62
    nop                                           ; $4711: $00
    pop bc                                        ; $4712: $c1
    add [hl]                                      ; $4713: $86
    dec d                                         ; $4714: $15
    and d                                         ; $4715: $a2
    ld b, $03                                     ; $4716: $06 $03
    ld [bc], a                                    ; $4718: $02
    rrca                                          ; $4719: $0f
    nop                                           ; $471a: $00
    ld bc, $a104                                  ; $471b: $01 $04 $a1
    add [hl]                                      ; $471e: $86
    add b                                         ; $471f: $80
    add l                                         ; $4720: $85
    ld b, b                                       ; $4721: $40
    ld h, c                                       ; $4722: $61
    nop                                           ; $4723: $00
    ld b, b                                       ; $4724: $40
    rst $30                                       ; $4725: $f7
    rrca                                          ; $4726: $0f
    or [hl]                                       ; $4727: $b6
    ld c, a                                       ; $4728: $4f
    dec de                                        ; $4729: $1b
    rst $20                                       ; $472a: $e7
    db $ed                                        ; $472b: $ed
    nop                                           ; $472c: $00
    inc de                                        ; $472d: $13
    rst $30                                       ; $472e: $f7
    adc c                                         ; $472f: $89
    cp l                                          ; $4730: $bd
    jp nz, Jump_0c8_54eb                          ; $4731: $c2 $eb $54

    ld e, [hl]                                    ; $4734: $5e
    nop                                           ; $4735: $00
    ld h, c                                       ; $4736: $61
    ld h, [hl]                                    ; $4737: $66
    cp h                                          ; $4738: $bc
    scf                                           ; $4739: $37
    xor $da                                       ; $473a: $ee $da
    ld h, a                                       ; $473c: $67
    ld d, e                                       ; $473d: $53
    add b                                         ; $473e: $80
    ld b, d                                       ; $473f: $42
    inc bc                                        ; $4740: $03
    add sp, -$01                                  ; $4741: $e8 $ff
    ld c, d                                       ; $4743: $4a
    rst $38                                       ; $4744: $ff
    pop hl                                        ; $4745: $e1
    ld a, a                                       ; $4746: $7f
    db $f4                                        ; $4747: $f4
    nop                                           ; $4748: $00
    inc c                                         ; $4749: $0c
    ld e, [hl]                                    ; $474a: $5e
    inc b                                         ; $474b: $04
    jp nz, $ed26                                  ; $474c: $c2 $26 $ed

    rra                                           ; $474f: $1f
    xor a                                         ; $4750: $af
    nop                                           ; $4751: $00
    pop af                                        ; $4752: $f1
    xor b                                         ; $4753: $a8
    jp nc, $c473                                  ; $4754: $d2 $73 $c4

    ld e, a                                       ; $4757: $5f
    ldh [rNR52], a                                ; $4758: $e0 $26
    nop                                           ; $475a: $00
    dec b                                         ; $475b: $05
    sub e                                         ; $475c: $93
    rlca                                          ; $475d: $07
    ld e, e                                       ; $475e: $5b
    ld [bc], a                                    ; $475f: $02
    inc de                                        ; $4760: $13
    ld bc, $0088                                  ; $4761: $01 $88 $00
    ld hl, $9082                                  ; $4764: $21 $82 $90
    ld b, b                                       ; $4767: $40
    call nz, Call_0c8_40e8                        ; $4768: $c4 $e8 $40
    dec a                                         ; $476b: $3d
    nop                                           ; $476c: $00
    ld [hl], a                                    ; $476d: $77
    or $cf                                        ; $476e: $f6 $cf
    xor a                                         ; $4770: $af
    ld d, e                                       ; $4771: $53
    ld sp, hl                                     ; $4772: $f9
    rlca                                          ; $4773: $07
    rst $18                                       ; $4774: $df
    nop                                           ; $4775: $00
    and c                                         ; $4776: $a1
    push hl                                       ; $4777: $e5
    sbc d                                         ; $4778: $9a
    db $fd                                        ; $4779: $fd
    ld b, d                                       ; $477a: $42
    ld [hl], l                                    ; $477b: $75
    ld l, d                                       ; $477c: $6a
    ld a, b                                       ; $477d: $78
    nop                                           ; $477e: $00
    cp a                                          ; $477f: $bf
    db $d3                                        ; $4780: $d3
    dec a                                         ; $4781: $3d
    ld a, d                                       ; $4782: $7a
    sbc a                                         ; $4783: $9f
    sbc a                                         ; $4784: $9f
    ld l, a                                       ; $4785: $6f
    ld b, l                                       ; $4786: $45
    nop                                           ; $4787: $00
    cp a                                          ; $4788: $bf
    rst $00                                       ; $4789: $c7
    inc [hl]                                      ; $478a: $34
    rla                                           ; $478b: $17
    ld [$53ae], a                                 ; $478c: $ea $ae $53
    ld [hl], $00                                  ; $478f: $36 $00
    ldh [$a2], a                                  ; $4791: $e0 $a2
    ld [hl], b                                    ; $4793: $70
    ld e, b                                       ; $4794: $58
    ldh a, [$f9]                                  ; $4795: $f0 $f9
    add sp, $61                                   ; $4797: $e8 $61
    nop                                           ; $4799: $00
    adc h                                         ; $479a: $8c
    xor [hl]                                      ; $479b: $ae
    inc b                                         ; $479c: $04
    ld c, $22                                     ; $479d: $0e $22
    adc b                                         ; $479f: $88
    ld d, e                                       ; $47a0: $53
    inc h                                         ; $47a1: $24
    nop                                           ; $47a2: $00
    jr nz, @+$18                                  ; $47a3: $20 $16

    or b                                          ; $47a5: $b0
    jr jr_0c8_47b9                                ; $47a6: $18 $11

    jr @+$0a                                      ; $47a8: $18 $08

    dec h                                         ; $47aa: $25
    nop                                           ; $47ab: $00
    inc c                                         ; $47ac: $0c
    ld h, $04                                     ; $47ad: $26 $04
    ld [bc], a                                    ; $47af: $02
    ld a, [bc]                                    ; $47b0: $0a
    jr z, jr_0c8_47b6                             ; $47b1: $28 $03

    dec [hl]                                      ; $47b3: $35
    nop                                           ; $47b4: $00
    xor d                                         ; $47b5: $aa

jr_0c8_47b6:
    scf                                           ; $47b6: $37
    db $10                                        ; $47b7: $10
    ld d, a                                       ; $47b8: $57

jr_0c8_47b9:
    rra                                           ; $47b9: $1f
    ld c, $8f                                     ; $47ba: $0e $8f
    rrca                                          ; $47bc: $0f

jr_0c8_47bd:
    nop                                           ; $47bd: $00
    rlca                                          ; $47be: $07
    ld h, $07                                     ; $47bf: $26 $07
    ld b, e                                       ; $47c1: $43
    inc de                                        ; $47c2: $13
    ld h, l                                       ; $47c3: $65
    inc bc                                        ; $47c4: $03
    push hl                                       ; $47c5: $e5
    nop                                           ; $47c6: $00
    ld a, $d3                                     ; $47c7: $3e $d3
    rst $38                                       ; $47c9: $ff
    rra                                           ; $47ca: $1f
    ld a, [$ffac]                                 ; $47cb: $fa $ac $ff
    dec h                                         ; $47ce: $25
    ld [$45ff], sp                                ; $47cf: $08 $ff $45
    cp $53                                        ; $47d2: $fe $53
    ld [bc], a                                    ; $47d4: $02
    inc bc                                        ; $47d5: $03
    jr c, jr_0c8_47bd                             ; $47d6: $38 $e5

    sbc a                                         ; $47d8: $9f
    nop                                           ; $47d9: $00
    ld [hl], b                                    ; $47da: $70
    or h                                          ; $47db: $b4
    ld sp, hl                                     ; $47dc: $f9
    db $dd                                        ; $47dd: $dd
    add sp, $1a                                   ; $47de: $e8 $1a
    xor h                                         ; $47e0: $ac
    ld l, h                                       ; $47e1: $6c
    nop                                           ; $47e2: $00
    rla                                           ; $47e3: $17
    cp a                                          ; $47e4: $bf
    ld b, d                                       ; $47e5: $42
    add l                                         ; $47e6: $85
    ld l, e                                       ; $47e7: $6b
    ld h, c                                       ; $47e8: $61
    jr nz, @+$46                                  ; $47e9: $20 $44

    nop                                           ; $47eb: $00
    ld sp, $57ba                                  ; $47ec: $31 $ba $57
    db $dd                                        ; $47ef: $dd
    ld [$8c78], sp                                ; $47f0: $08 $78 $8c
    ld [hl], $00                                  ; $47f3: $36 $00
    ld b, h                                       ; $47f5: $44
    and $12                                       ; $47f6: $e6 $12
    sub $0b                                       ; $47f8: $d6 $0b
    ccf                                           ; $47fa: $3f
    jr nz, @+$3f                                  ; $47fb: $20 $3d

    nop                                           ; $47fd: $00
    jp nc, $1897                                  ; $47fe: $d2 $97 $18

    ld c, l                                       ; $4801: $4d
    ld a, [bc]                                    ; $4802: $0a
    ccf                                           ; $4803: $3f
    inc b                                         ; $4804: $04
    add h                                         ; $4805: $84
    nop                                           ; $4806: $00
    rlca                                          ; $4807: $07
    inc hl                                        ; $4808: $23
    ld [bc], a                                    ; $4809: $02
    ld hl, $5703                                  ; $480a: $21 $03 $57
    xor c                                         ; $480d: $a9
    db $eb                                        ; $480e: $eb
    nop                                           ; $480f: $00
    sub h                                         ; $4810: $94
    inc a                                         ; $4811: $3c
    jp nz, Jump_0c8_4479                          ; $4812: $c2 $79 $44

    inc a                                         ; $4815: $3c
    ld [hl+], a                                   ; $4816: $22
    xor d                                         ; $4817: $aa
    nop                                           ; $4818: $00
    ld [hl], l                                    ; $4819: $75
    sub a                                         ; $481a: $97
    ld hl, sp+$4d                                 ; $481b: $f8 $4d
    ld a, [hl-]                                   ; $481d: $3a
    ld a, e                                       ; $481e: $7b
    add c                                         ; $481f: $81
    jp hl                                         ; $4820: $e9


    nop                                           ; $4821: $00
    add d                                         ; $4822: $82
    ld h, c                                       ; $4823: $61
    call nc, $d069                                ; $4824: $d4 $69 $d0
    cp a                                          ; $4827: $bf
    ld h, b                                       ; $4828: $60
    ld l, e                                       ; $4829: $6b
    nop                                           ; $482a: $00
    or b                                          ; $482b: $b0
    rst $38                                       ; $482c: $ff
    rla                                           ; $482d: $17
    ld [$91ff], sp                                ; $482e: $08 $ff $91
    dec b                                         ; $4831: $05
    add b                                         ; $4832: $80

jr_0c8_4833:
    nop                                           ; $4833: $00
    sub b                                         ; $4834: $90
    inc d                                         ; $4835: $14
    ret nz                                        ; $4836: $c0

jr_0c8_4837:
    ld [c], a                                     ; $4837: $e2
    ld b, b                                       ; $4838: $40
    jr nz, @+$6a                                  ; $4839: $20 $68

    ld hl, $f020                                  ; $483b: $21 $20 $f0
    inc [hl]                                      ; $483e: $34
    ld [bc], a                                    ; $483f: $02
    inc bc                                        ; $4840: $03
    dec c                                         ; $4841: $0d
    ld bc, $9082                                  ; $4842: $01 $82 $90
    adc b                                         ; $4845: $88
    nop                                           ; $4846: $00
    ret nz                                        ; $4847: $c0

    ld d, c                                       ; $4848: $51
    ld b, b                                       ; $4849: $40
    jr nz, jr_0c8_4877                            ; $484a: $20 $2b

    dec c                                         ; $484c: $0d
    ld a, $df                                     ; $484d: $3e $df
    db $10                                        ; $484f: $10
    db $10                                        ; $4850: $10
    ld e, $08                                     ; $4851: $1e $08
    ld a, d                                       ; $4853: $7a
    inc b                                         ; $4854: $04
    rst $38                                       ; $4855: $ff
    ld l, d                                       ; $4856: $6a
    rst $38                                       ; $4857: $ff
    ld d, [hl]                                    ; $4858: $56
    nop                                           ; $4859: $00
    ld a, a                                       ; $485a: $7f
    or l                                          ; $485b: $b5
    rst $38                                       ; $485c: $ff
    dec [hl]                                      ; $485d: $35
    cp a                                          ; $485e: $bf
    db $fd                                        ; $485f: $fd
    rra                                           ; $4860: $1f
    jp z, $1f00                                   ; $4861: $ca $00 $1f

    ld l, e                                       ; $4864: $6b
    sub l                                         ; $4865: $95
    ei                                            ; $4866: $fb
    add h                                         ; $4867: $84
    pop af                                        ; $4868: $f1
    jp z, $0056                                   ; $4869: $ca $56 $00

    jp hl                                         ; $486c: $e9


    ccf                                           ; $486d: $3f
    ldh [$ae], a                                  ; $486e: $e0 $ae

jr_0c8_4870:
    pop af                                        ; $4870: $f1
    ld e, [hl]                                    ; $4871: $5e

Jump_0c8_4872:
    pop af                                        ; $4872: $f1
    xor [hl]                                      ; $4873: $ae
    nop                                           ; $4874: $00
    ld sp, hl                                     ; $4875: $f9
    ld a, a                                       ; $4876: $7f

Jump_0c8_4877:
jr_0c8_4877:
    add c                                         ; $4877: $81
    res 2, b                                      ; $4878: $cb $90
    ld [hl], a                                    ; $487a: $77
    ret z                                         ; $487b: $c8

    ld hl, sp+$04                                 ; $487c: $f8 $04
    ld b, d                                       ; $487e: $42
    rst $38                                       ; $487f: $ff
    jr nz, @+$6c                                  ; $4880: $20 $6a

    or l                                          ; $4882: $b5
    rrca                                          ; $4883: $0f
    rlca                                          ; $4884: $07
    jr @-$69                                      ; $4885: $18 $95

    nop                                           ; $4887: $00
    ld bc, $8080                                  ; $4888: $01 $80 $80
    sub b                                         ; $488b: $90
    ret nz                                        ; $488c: $c0

    ret nz                                        ; $488d: $c0

    ld b, b                                       ; $488e: $40
    db $e4                                        ; $488f: $e4
    nop                                           ; $4890: $00
    jr nz, jr_0c8_4833                            ; $4891: $20 $a0

    jr nc, jr_0c8_48ce                            ; $4893: $30 $39

    sub a                                         ; $4895: $97
    jr nz, jr_0c8_4837                            ; $4896: $20 $9f

    jr nz, @+$0b                                  ; $4898: $20 $09

    adc h                                         ; $489a: $8c
    ld b, $0a                                     ; $489b: $06 $0a
    call Call_0c8_4503                            ; $489d: $cd $03 $45
    add e                                         ; $48a0: $83
    inc b                                         ; $48a1: $04
    jr z, jr_0c8_4870                             ; $48a2: $28 $cc

    inc c                                         ; $48a4: $0c
    nop                                           ; $48a5: $00
    ld d, e                                       ; $48a6: $53
    nop                                           ; $48a7: $00
    xor [hl]                                      ; $48a8: $ae
    xor h                                         ; $48a9: $ac
    ld d, a                                       ; $48aa: $57
    ld d, e                                       ; $48ab: $53
    xor [hl]                                      ; $48ac: $ae
    db $fc                                        ; $48ad: $fc
    rlca                                          ; $48ae: $07
    ei                                            ; $48af: $fb
    nop                                           ; $48b0: $00
    ld b, $fc                                     ; $48b1: $06 $fc
    inc bc                                        ; $48b3: $03
    cp $01                                        ; $48b4: $fe $01
    rst $38                                       ; $48b6: $ff
    nop                                           ; $48b7: $00
    sbc c                                         ; $48b8: $99
    db $10                                        ; $48b9: $10
    ld b, $8b                                     ; $48ba: $06 $8b
    ld b, $04                                     ; $48bc: $06 $04
    ld [$06d9], sp                                ; $48be: $08 $d9 $06
    cp e                                          ; $48c1: $bb
    inc b                                         ; $48c2: $04
    inc c                                         ; $48c3: $0c
    ld d, a                                       ; $48c4: $57
    xor b                                         ; $48c5: $a8
    rst $38                                       ; $48c6: $ff
    nop                                           ; $48c7: $00
    jr jr_0c8_48f2                                ; $48c8: $18 $28

    ld [bc], a                                    ; $48ca: $02
    ld [$00fd], sp                                ; $48cb: $08 $fd $00

jr_0c8_48ce:
    ld sp, $00d0                                  ; $48ce: $31 $d0 $00
    jr jr_0c8_48fb                                ; $48d1: $18 $28

    inc c                                         ; $48d3: $0c
    ld [$000b], sp                                ; $48d4: $08 $0b $00
    cp [hl]                                       ; $48d7: $be
    ld a, [de]                                    ; $48d8: $1a
    jr nz, jr_0c8_48db                            ; $48d9: $20 $00

jr_0c8_48db:
    db $f4                                        ; $48db: $f4
    nop                                           ; $48dc: $00
    ld [bc], a                                    ; $48dd: $02
    nop                                           ; $48de: $00
    cp a                                          ; $48df: $bf
    nop                                           ; $48e0: $00
    db $f4                                        ; $48e1: $f4
    dec bc                                        ; $48e2: $0b
    ld [hl+], a                                   ; $48e3: $22
    add d                                         ; $48e4: $82
    ld a, a                                       ; $48e5: $7f
    ld a, [hl+]                                   ; $48e6: $2a
    ld [$00e8], sp                                ; $48e7: $08 $e8 $00
    dec b                                         ; $48ea: $05
    jr nc, jr_0c8_48ed                            ; $48eb: $30 $00

jr_0c8_48ed:
    ret nc                                        ; $48ed: $d0

    db $10                                        ; $48ee: $10
    cpl                                           ; $48ef: $2f
    dec b                                         ; $48f0: $05
    rst $38                                       ; $48f1: $ff

jr_0c8_48f2:
    ld bc, $0000                                  ; $48f2: $01 $00 $00
    push af                                       ; $48f5: $f5
    nop                                           ; $48f6: $00
    nop                                           ; $48f7: $00
    adc d                                         ; $48f8: $8a
    ld a, $00                                     ; $48f9: $3e $00

jr_0c8_48fb:
    call nc, Call_000_022b                        ; $48fb: $d4 $2b $02
    ld c, $00                                     ; $48fe: $0e $00
    ld d, b                                       ; $4900: $50
    stop                                          ; $4901: $10 $00
    nop                                           ; $4903: $00
    jr nz, jr_0c8_4906                            ; $4904: $20 $00

jr_0c8_4906:
    xor e                                         ; $4906: $ab
    ld c, [hl]                                    ; $4907: $4e
    nop                                           ; $4908: $00
    nop                                           ; $4909: $00
    rst $38                                       ; $490a: $ff
    cp a                                          ; $490b: $bf
    rst $38                                       ; $490c: $ff
    ld [$ff34], a                                 ; $490d: $ea $34 $ff
    jr nz, jr_0c8_4922                            ; $4910: $20 $10

    db $10                                        ; $4912: $10
    ld e, [hl]                                    ; $4913: $5e
    ld [$2c00], sp                                ; $4914: $08 $00 $2c
    nop                                           ; $4917: $00
    sub b                                         ; $4918: $90
    rst $38                                       ; $4919: $ff
    jr nz, @+$12                                  ; $491a: $20 $10

    rst $38                                       ; $491c: $ff
    sub h                                         ; $491d: $94
    ld [$03ec], sp                                ; $491e: $08 $ec $03
    ld e, l                                       ; $4921: $5d

jr_0c8_4922:
    add d                                         ; $4922: $82
    dec hl                                        ; $4923: $2b
    ld e, b                                       ; $4924: $58
    call nc, $0874                                ; $4925: $d4 $74 $08
    db $fc                                        ; $4928: $fc
    ld a, b                                       ; $4929: $78
    db $10                                        ; $492a: $10
    ld [$f108], sp                                ; $492b: $08 $08 $f1
    nop                                           ; $492e: $00
    rst $00                                       ; $492f: $c7
    ld [bc], a                                    ; $4930: $02
    nop                                           ; $4931: $00
    rra                                           ; $4932: $1f
    nop                                           ; $4933: $00
    ld a, h                                       ; $4934: $7c
    inc bc                                        ; $4935: $03
    db $fd                                        ; $4936: $fd
    ld e, [hl]                                    ; $4937: $5e
    nop                                           ; $4938: $00
    ld b, a                                       ; $4939: $47
    nop                                           ; $493a: $00
    nop                                           ; $493b: $00
    ld a, $01                                     ; $493c: $3e $01
    db $f4                                        ; $493e: $f4
    dec bc                                        ; $493f: $0b
    pop hl                                        ; $4940: $e1
    rra                                           ; $4941: $1f
    rrca                                          ; $4942: $0f
    db $10                                        ; $4943: $10
    rst $38                                       ; $4944: $ff
    ld a, b                                       ; $4945: $78
    rst $38                                       ; $4946: $ff
    add h                                         ; $4947: $84
    ld [$17e8], sp                                ; $4948: $08 $e8 $17
    adc e                                         ; $494b: $8b
    ld a, a                                       ; $494c: $7f
    nop                                           ; $494d: $00
    dec a                                         ; $494e: $3d
    rst $38                                       ; $494f: $ff
    ret nc                                        ; $4950: $d0

    rst $38                                       ; $4951: $ff
    inc de                                        ; $4952: $13
    rst $38                                       ; $4953: $ff
    ld l, $ff                                     ; $4954: $2e $ff
    add b                                         ; $4956: $80
    inc c                                         ; $4957: $0c
    ld [$ffbd], sp                                ; $4958: $08 $bd $ff
    call nc, Call_000_07ff                        ; $495b: $d4 $ff $07
    rst $38                                       ; $495e: $ff
    ld l, $02                                     ; $495f: $2e $02
    db $fd                                        ; $4961: $fd
    push de                                       ; $4962: $d5
    ld [$54ab], a                                 ; $4963: $ea $ab $54
    cp a                                          ; $4966: $bf
    inc c                                         ; $4967: $0c
    nop                                           ; $4968: $00
    inc b                                         ; $4969: $04
    nop                                           ; $496a: $00
    rst $38                                       ; $496b: $ff
    dec sp                                        ; $496c: $3b
    rst $38                                       ; $496d: $ff
    push de                                       ; $496e: $d5
    ld [$55ea], a                                 ; $496f: $ea $ea $55
    ld e, a                                       ; $4972: $5f
    nop                                           ; $4973: $00
    ldh [$fe], a                                  ; $4974: $e0 $fe
    ld a, a                                       ; $4976: $7f
    and h                                         ; $4977: $a4
    rst $38                                       ; $4978: $ff
    dec b                                         ; $4979: $05
    rst $38                                       ; $497a: $ff
    rst $30                                       ; $497b: $f7
    nop                                           ; $497c: $00
    cp $aa                                        ; $497d: $fe $aa
    push de                                       ; $497f: $d5
    push de                                       ; $4980: $d5
    xor d                                         ; $4981: $aa
    cp a                                          ; $4982: $bf
    pop bc                                        ; $4983: $c1
    reti                                          ; $4984: $d9


    nop                                           ; $4985: $00
    cp $f7                                        ; $4986: $fe $f7
    ld [$ff00], sp                                ; $4988: $08 $00 $ff
    xor $ff                                       ; $498b: $ee $ff
    ld d, l                                       ; $498d: $55
    nop                                           ; $498e: $00
    db $eb                                        ; $498f: $eb
    db $eb                                        ; $4990: $eb
    ld d, l                                       ; $4991: $55
    ld e, a                                       ; $4992: $5f
    pop hl                                        ; $4993: $e1
    rst $38                                       ; $4994: $ff
    rst $38                                       ; $4995: $ff
    rst $30                                       ; $4996: $f7
    nop                                           ; $4997: $00
    ld [$08f5], sp                                ; $4998: $08 $f5 $08
    dec a                                         ; $499b: $3d
    rst $38                                       ; $499c: $ff
    db $eb                                        ; $499d: $eb
    push de                                       ; $499e: $d5
    ld d, l                                       ; $499f: $55
    nop                                           ; $49a0: $00
    xor e                                         ; $49a1: $ab
    xor e                                         ; $49a2: $ab
    ld d, l                                       ; $49a3: $55
    db $fd                                        ; $49a4: $fd
    ccf                                           ; $49a5: $3f
    or a                                          ; $49a6: $b7
    ret z                                         ; $49a7: $c8

    rst $30                                       ; $49a8: $f7
    inc h                                         ; $49a9: $24
    ld [$9740], sp                                ; $49aa: $08 $40 $97
    nop                                           ; $49ad: $00
    xor e                                         ; $49ae: $ab
    ld d, l                                       ; $49af: $55
    db $10                                        ; $49b0: $10
    ld [$fffe], sp                                ; $49b1: $08 $fe $ff
    ld [$10ef], sp                                ; $49b4: $08 $ef $10
    rst $28                                       ; $49b7: $ef
    db $10                                        ; $49b8: $10
    and a                                         ; $49b9: $a7
    ld [$aa55], sp                                ; $49ba: $08 $55 $aa

Jump_0c8_49bd:
    xor d                                         ; $49bd: $aa
    ld c, $55                                     ; $49be: $0e $55
    ld d, l                                       ; $49c0: $55
    xor d                                         ; $49c1: $aa
    ld e, l                                       ; $49c2: $5d
    ld l, $00                                     ; $49c3: $2e $00
    ld a, $00                                     ; $49c5: $3e $00
    sbc b                                         ; $49c7: $98
    db $10                                        ; $49c8: $10
    sbc a                                         ; $49c9: $9f
    add b                                         ; $49ca: $80
    sbc b                                         ; $49cb: $98
    nop                                           ; $49cc: $00
    pop af                                        ; $49cd: $f1
    rrca                                          ; $49ce: $0f
    rst $00                                       ; $49cf: $c7

jr_0c8_49d0:
    ccf                                           ; $49d0: $3f
    sbc l                                         ; $49d1: $9d
    ld a, a                                       ; $49d2: $7f
    ld sp, $ff40                                  ; $49d3: $31 $40 $ff
    ld [$1d08], sp                                ; $49d6: $08 $08 $1d
    rst $38                                       ; $49d9: $ff
    ld [hl], c                                    ; $49da: $71
    rst $38                                       ; $49db: $ff
    rst $10                                       ; $49dc: $d7
    cp $00                                        ; $49dd: $fe $00
    ld a, [de]                                    ; $49df: $1a
    db $fd                                        ; $49e0: $fd
    ld [hl], l                                    ; $49e1: $75
    xor $ef                                       ; $49e2: $ee $ef
    push de                                       ; $49e4: $d5
    ret                                           ; $49e5: $c9


    rst $38                                       ; $49e6: $ff
    nop                                           ; $49e7: $00
    dec bc                                        ; $49e8: $0b
    rst $38                                       ; $49e9: $ff
    ld [hl], l                                    ; $49ea: $75
    ei                                            ; $49eb: $fb
    xor e                                         ; $49ec: $ab
    push af                                       ; $49ed: $f5
    ld a, a                                       ; $49ee: $7f
    and c                                         ; $49ef: $a1
    nop                                           ; $49f0: $00
    ld sp, hl                                     ; $49f1: $f9
    ld l, $ff                                     ; $49f2: $2e $ff
    ld a, b                                       ; $49f4: $78
    ld a, [$d788]                                 ; $49f5: $fa $88 $d7
    ld [$af00], a                                 ; $49f8: $ea $00 $af
    ld d, d                                       ; $49fb: $52
    ld a, a                                       ; $49fc: $7f
    add e                                         ; $49fd: $83
    ei                                            ; $49fe: $fb
    inc a                                         ; $49ff: $3c
    xor a                                         ; $4a00: $af

Call_0c8_4a01:
    ret nc                                        ; $4a01: $d0

    nop                                           ; $4a02: $00
    db $e4                                        ; $4a03: $e4
    db $10                                        ; $4a04: $10
    ld b, b                                       ; $4a05: $40
    inc bc                                        ; $4a06: $03
    nop                                           ; $4a07: $00
    ccf                                           ; $4a08: $3f
    ld a, h                                       ; $4a09: $7c
    add e                                         ; $4a0a: $83
    ld [bc], a                                    ; $4a0b: $02
    push af                                       ; $4a0c: $f5
    ld a, $3d                                     ; $4a0d: $3e $3d
    jp nz, Jump_000_00f4                          ; $4a0f: $c2 $f4 $00

    inc c                                         ; $4a12: $0c
    ld [$0003], sp                                ; $4a13: $08 $03 $00
    db $fc                                        ; $4a16: $fc
    db $10                                        ; $4a17: $10
    ldh [$3b], a                                  ; $4a18: $e0 $3b
    call nz, $04f9                                ; $4a1a: $c4 $f9 $04
    ld b, b                                       ; $4a1d: $40
    nop                                           ; $4a1e: $00
    nop                                           ; $4a1f: $00
    nop                                           ; $4a20: $00
    ccf                                           ; $4a21: $3f
    nop                                           ; $4a22: $00
    rst $38                                       ; $4a23: $ff
    scf                                           ; $4a24: $37
    ret z                                         ; $4a25: $c8

    jp nc, $0800                                  ; $4a26: $d2 $00 $08

    ld [hl], c                                    ; $4a29: $71
    ld [$08e2], sp                                ; $4a2a: $08 $e2 $08
    nop                                           ; $4a2d: $00
    ld bc, $0000                                  ; $4a2e: $01 $00 $00
    rst $38                                       ; $4a31: $ff
    ld bc, $effe                                  ; $4a32: $01 $fe $ef
    db $10                                        ; $4a35: $10
    rst $18                                       ; $4a36: $df
    jr nz, jr_0c8_49d0                            ; $4a37: $20 $97

    db $10                                        ; $4a39: $10
    jr nz, @-$26                                  ; $4a3a: $20 $d8

jr_0c8_4a3c:
    jr nz, jr_0c8_4a6d                            ; $4a3c: $20 $2f

    add hl, de                                    ; $4a3e: $19
    pop hl                                        ; $4a3f: $e1
    ld e, $f7                                     ; $4a40: $1e $f7
    ld [$ef02], sp                                ; $4a42: $08 $02 $ef
    db $10                                        ; $4a45: $10
    ld h, [hl]                                    ; $4a46: $66
    db $10                                        ; $4a47: $10
    inc l                                         ; $4a48: $2c
    db $10                                        ; $4a49: $10
    ld a, [hl+]                                   ; $4a4a: $2a
    ld [$1001], sp                                ; $4a4b: $08 $01 $10
    cp $df                                        ; $4a4e: $fe $df
    jr nz, @+$04                                  ; $4a50: $20 $02

    ld [$20cf], sp                                ; $4a52: $08 $cf $20
    ret nc                                        ; $4a55: $d0

    jr nz, @-$7e                                  ; $4a56: $20 $80

    xor c                                         ; $4a58: $a9
    add hl, bc                                    ; $4a59: $09
    add l                                         ; $4a5a: $85
    ld a, a                                       ; $4a5b: $7f
    ldh [$1f], a                                  ; $4a5c: $e0 $1f
    xor a                                         ; $4a5e: $af
    db $10                                        ; $4a5f: $10
    db $eb                                        ; $4a60: $eb
    inc b                                         ; $4a61: $04
    db $10                                        ; $4a62: $10
    add l                                         ; $4a63: $85
    db $10                                        ; $4a64: $10
    ld l, c                                       ; $4a65: $69
    db $10                                        ; $4a66: $10
    cp c                                          ; $4a67: $b9
    add hl, bc                                    ; $4a68: $09
    ldh [rIE], a                                  ; $4a69: $e0 $ff
    inc l                                         ; $4a6b: $2c
    rra                                           ; $4a6c: $1f

jr_0c8_4a6d:
    ldh [rLCDC], a                                ; $4a6d: $e0 $40
    ld [$205e], sp                                ; $4a6f: $08 $5e $20
    ld [$0153], sp                                ; $4a72: $08 $53 $01
    inc l                                         ; $4a75: $2c
    rst $38                                       ; $4a76: $ff
    jr nz, jr_0c8_4a3c                            ; $4a77: $20 $c3

    inc a                                         ; $4a79: $3c
    ld d, b                                       ; $4a7a: $50
    ld [$208d], sp                                ; $4a7b: $08 $8d $20
    inc h                                         ; $4a7e: $24
    db $10                                        ; $4a7f: $10
    rst $20                                       ; $4a80: $e7
    nop                                           ; $4a81: $00
    cp $9a                                        ; $4a82: $fe $9a
    db $fd                                        ; $4a84: $fd
    ccf                                           ; $4a85: $3f
    add sp, -$11                                  ; $4a86: $e8 $ef
    reti                                          ; $4a88: $d9


    ld e, d                                       ; $4a89: $5a
    nop                                           ; $4a8a: $00
    xor a                                         ; $4a8b: $af
    or [hl]                                       ; $4a8c: $b6
    ld e, c                                       ; $4a8d: $59
    cp $20                                        ; $4a8e: $fe $20
    ld e, b                                       ; $4a90: $58
    pop hl                                        ; $4a91: $e1
    ld a, [hl]                                    ; $4a92: $7e
    nop                                           ; $4a93: $00
    rst $00                                       ; $4a94: $c7
    or $59                                        ; $4a95: $f6 $59
    sbc $60                                       ; $4a97: $de $60
    ld hl, sp-$7f                                 ; $4a99: $f8 $81
    ldh [rP1], a                                  ; $4a9b: $e0 $00
    rlca                                          ; $4a9d: $07
    add c                                         ; $4a9e: $81
    ld e, $06                                     ; $4a9f: $1e $06
    ld a, a                                       ; $4aa1: $7f
    db $10                                        ; $4aa2: $10
    rst $28                                       ; $4aa3: $ef
    ret nc                                        ; $4aa4: $d0

    nop                                           ; $4aa5: $00
    ld bc, $0f80                                  ; $4aa6: $01 $80 $0f
    nop                                           ; $4aa9: $00
    ld a, a                                       ; $4aaa: $7f
    dec c                                         ; $4aab: $0d
    ld a, [c]                                     ; $4aac: $f2
    dec a                                         ; $4aad: $3d
    nop                                           ; $4aae: $00
    add d                                         ; $4aaf: $82
    jr z, jr_0c8_4ab4                             ; $4ab0: $28 $02

    db $ed                                        ; $4ab2: $ed
    ld [bc], a                                    ; $4ab3: $02

jr_0c8_4ab4:
    dec [hl]                                      ; $4ab4: $35
    rst $38                                       ; $4ab5: $ff
    ld [bc], a                                    ; $4ab6: $02
    add b                                         ; $4ab7: $80
    and h                                         ; $4ab8: $a4
    ld bc, $c03f                                  ; $4ab9: $01 $3f $c0
    cp $01                                        ; $4abc: $fe $01
    cp $01                                        ; $4abe: $fe $01
    or [hl]                                       ; $4ac0: $b6
    nop                                           ; $4ac1: $00
    ld bc, $0285                                  ; $4ac2: $01 $85 $02
    ld e, l                                       ; $4ac5: $5d
    add d                                         ; $4ac6: $82
    sbc [hl]                                      ; $4ac7: $9e
    ldh [rIF], a                                  ; $4ac8: $e0 $0f
    ld [$60ff], sp                                ; $4aca: $08 $ff $60
    sbc a                                         ; $4acd: $9f
    db $fd                                        ; $4ace: $fd
    inc e                                         ; $4acf: $1c
    nop                                           ; $4ad0: $00
    or h                                          ; $4ad1: $b4
    ld [bc], a                                    ; $4ad2: $02
    dec bc                                        ; $4ad3: $0b
    dec c                                         ; $4ad4: $0d
    inc b                                         ; $4ad5: $04
    ld b, b                                       ; $4ad6: $40
    ccf                                           ; $4ad7: $3f
    adc l                                         ; $4ad8: $8d
    inc [hl]                                      ; $4ad9: $34
    nop                                           ; $4ada: $00
    jr nz, jr_0c8_4ae5                            ; $4adb: $20 $08

    sub l                                         ; $4add: $95
    ld l, $00                                     ; $4ade: $2e $00
    nop                                           ; $4ae0: $00
    ld e, $ff                                     ; $4ae1: $1e $ff
    ld d, b                                       ; $4ae3: $50
    xor a                                         ; $4ae4: $af

jr_0c8_4ae5:
    adc e                                         ; $4ae5: $8b
    ldh a, [rTIMA]                                ; $4ae6: $f0 $05
    rst $38                                       ; $4ae8: $ff
    nop                                           ; $4ae9: $00
    ld [hl], b                                    ; $4aea: $70
    adc a                                         ; $4aeb: $8f
    db $fd                                        ; $4aec: $fd
    ld [bc], a                                    ; $4aed: $02
    cp l                                          ; $4aee: $bd
    ld [bc], a                                    ; $4aef: $02
    ld a, [hl+]                                   ; $4af0: $2a
    ld bc, $5500                                  ; $4af1: $01 $00 $55

jr_0c8_4af4:
    add d                                         ; $4af4: $82
    dec e                                         ; $4af5: $1d
    rst $38                                       ; $4af6: $ff
    and $1f                                       ; $4af7: $e6 $1f
    ret nc                                        ; $4af9: $d0

    rst $38                                       ; $4afa: $ff
    nop                                           ; $4afb: $00
    ld a, a                                       ; $4afc: $7f
    add b                                         ; $4afd: $80
    cp $01                                        ; $4afe: $fe $01
    sbc $01                                       ; $4b00: $de $01
    or h                                          ; $4b02: $b4
    ld bc, $4101                                  ; $4b03: $01 $01 $41
    ld [bc], a                                    ; $4b06: $02
    dec d                                         ; $4b07: $15
    jp nz, $a0db                                  ; $4b08: $c2 $db $a0

    rla                                           ; $4b0b: $17
    ld b, b                                       ; $4b0c: $40
    nop                                           ; $4b0d: $00
    add b                                         ; $4b0e: $80
    ld d, b                                       ; $4b0f: $50
    ld [$02b5], sp                                ; $4b10: $08 $b5 $02
    dec c                                         ; $4b13: $0d
    ld [bc], a                                    ; $4b14: $02
    add b                                         ; $4b15: $80
    ccf                                           ; $4b16: $3f
    sub l                                         ; $4b17: $95
    add d                                         ; $4b18: $82
    ld [hl], h                                    ; $4b19: $74
    nop                                           ; $4b1a: $00
    ld a, [hl]                                    ; $4b1b: $7e
    add c                                         ; $4b1c: $81
    cp $01                                        ; $4b1d: $fe $01
    sub [hl]                                      ; $4b1f: $96
    ld [hl+], a                                   ; $4b20: $22
    nop                                           ; $4b21: $00
    rla                                           ; $4b22: $17
    ld [de], a                                    ; $4b23: $12
    ld a, a                                       ; $4b24: $7f
    ld l, b                                       ; $4b25: $68
    sub a                                         ; $4b26: $97
    ld b, b                                       ; $4b27: $40
    ld [$0ff0], sp                                ; $4b28: $08 $f0 $0f
    ld b, b                                       ; $4b2b: $40
    ld [$031a], sp                                ; $4b2c: $08 $1a $03
    ld bc, $8176                                  ; $4b2f: $01 $76 $81
    ld a, [de]                                    ; $4b32: $1a
    rst $38                                       ; $4b33: $ff
    ld h, a                                       ; $4b34: $67
    ld b, b                                       ; $4b35: $40
    nop                                           ; $4b36: $00
    jr nz, jr_0c8_4b41                            ; $4b37: $20 $08

    add b                                         ; $4b39: $80
    ld b, b                                       ; $4b3a: $40
    ld [$01c2], sp                                ; $4b3b: $08 $c2 $01
    xor [hl]                                      ; $4b3e: $ae

jr_0c8_4b3f:
    pop bc                                        ; $4b3f: $c1
    ld h, b                                       ; $4b40: $60

jr_0c8_4b41:
    add a                                         ; $4b41: $87
    pop bc                                        ; $4b42: $c1
    nop                                           ; $4b43: $00
    ld e, $07                                     ; $4b44: $1e $07
    jr c, jr_0c8_4b4d                             ; $4b46: $38 $05

    ldh [$2e], a                                  ; $4b48: $e0 $2e
    pop bc                                        ; $4b4a: $c1
    and b                                         ; $4b4b: $a0
    nop                                           ; $4b4c: $00

jr_0c8_4b4d:
    rst $38                                       ; $4b4d: $ff
    ld l, a                                       ; $4b4e: $6f
    sub b                                         ; $4b4f: $90
    xor a                                         ; $4b50: $af
    db $10                                        ; $4b51: $10
    ld e, a                                       ; $4b52: $5f
    and b                                         ; $4b53: $a0
    cp a                                          ; $4b54: $bf
    nop                                           ; $4b55: $00
    ld b, b                                       ; $4b56: $40
    or a                                          ; $4b57: $b7
    ld b, b                                       ; $4b58: $40
    and e                                         ; $4b59: $a3
    ld b, b                                       ; $4b5a: $40
    ld l, $c0                                     ; $4b5b: $2e $c0
    dec de                                        ; $4b5d: $1b
    add b                                         ; $4b5e: $80
    and $00                                       ; $4b5f: $e6 $00
    rst $18                                       ; $4b61: $df
    jr nz, jr_0c8_4ae5                            ; $4b62: $20 $81

    ld a, [hl]                                    ; $4b64: $7e
    rst $18                                       ; $4b65: $df
    jr nz, jr_0c8_4b3f                            ; $4b66: $20 $d7

    ld [bc], a                                    ; $4b68: $02
    jr nz, jr_0c8_4bbd                            ; $4b69: $20 $52

    jr nz, jr_0c8_4af4                            ; $4b6b: $20 $87

    ld a, b                                       ; $4b6d: $78
    nop                                           ; $4b6e: $00
    ldh [rSB], a                                  ; $4b6f: $e0 $01
    dec h                                         ; $4b71: $25
    nop                                           ; $4b72: $00
    ld [$7f85], sp                                ; $4b73: $08 $85 $7f
    cp a                                          ; $4b76: $bf
    ld b, b                                       ; $4b77: $40
    xor [hl]                                      ; $4b78: $ae
    ld b, b                                       ; $4b79: $40
    add l                                         ; $4b7a: $85
    nop                                           ; $4b7b: $00
    ld b, b                                       ; $4b7c: $40
    xor a                                         ; $4b7d: $af
    ld b, b                                       ; $4b7e: $40
    dec bc                                        ; $4b7f: $0b
    rst $38                                       ; $4b80: $ff
    ret nz                                        ; $4b81: $c0

    ccf                                           ; $4b82: $3f
    rst $28                                       ; $4b83: $ef
    inc d                                         ; $4b84: $14
    db $10                                        ; $4b85: $10
    and a                                         ; $4b86: $a7
    ld hl, sp+$20                                 ; $4b87: $f8 $20
    ld [$2442], sp                                ; $4b89: $08 $42 $24
    nop                                           ; $4b8c: $00
    or b                                          ; $4b8d: $b0
    rst $38                                       ; $4b8e: $ff
    ld [$e817], sp                                ; $4b8f: $08 $17 $e8
    push af                                       ; $4b92: $f5
    ld [$094a], sp                                ; $4b93: $08 $4a $09
    sla b                                         ; $4b96: $cb $20
    pop bc                                        ; $4b98: $c1
    ld [$1720], sp                                ; $4b99: $08 $20 $17
    ldh [$0d], a                                  ; $4b9c: $e0 $0d
    ld h, [hl]                                    ; $4b9e: $66
    ld de, $7e81                                  ; $4b9f: $11 $81 $7e
    rst $28                                       ; $4ba2: $ef
    add b                                         ; $4ba3: $80
    ld c, d                                       ; $4ba4: $4a
    ld bc, $10a1                                  ; $4ba5: $01 $a1 $10
    ld b, e                                       ; $4ba8: $43
    inc a                                         ; $4ba9: $3c
    ld b, h                                       ; $4baa: $44
    ei                                            ; $4bab: $fb
    db $fd                                        ; $4bac: $fd
    dec b                                         ; $4bad: $05
    ld [bc], a                                    ; $4bae: $02
    sub h                                         ; $4baf: $94
    ld [bc], a                                    ; $4bb0: $02
    add e                                         ; $4bb1: $83
    ld a, a                                       ; $4bb2: $7f
    ld d, b                                       ; $4bb3: $50
    ld [$5482], sp                                ; $4bb4: $08 $82 $54
    nop                                           ; $4bb7: $00
    nop                                           ; $4bb8: $00
    dec b                                         ; $4bb9: $05
    rst $38                                       ; $4bba: $ff
    ldh [$1f], a                                  ; $4bbb: $e0 $1f

jr_0c8_4bbd:
    rst $10                                       ; $4bbd: $d7
    ld [$fc63], sp                                ; $4bbe: $08 $63 $fc
    inc b                                         ; $4bc1: $04
    rst $28                                       ; $4bc2: $ef
    db $10                                        ; $4bc3: $10
    ld l, e                                       ; $4bc4: $6b
    db $10                                        ; $4bc5: $10
    pop bc                                        ; $4bc6: $c1
    ld l, [hl]                                    ; $4bc7: $6e
    ld bc, $ffd4                                  ; $4bc8: $01 $d4 $ff
    ld [$f40b], sp                                ; $4bcb: $08 $0b $f4
    ld a, [c]                                     ; $4bce: $f2
    inc b                                         ; $4bcf: $04
    xor b                                         ; $4bd0: $a8
    add hl, bc                                    ; $4bd1: $09
    push de                                       ; $4bd2: $d5
    jr nz, jr_0c8_4c26                            ; $4bd3: $20 $51

    ld [$9b20], sp                                ; $4bd5: $08 $20 $9b
    ld h, b                                       ; $4bd8: $60
    inc bc                                        ; $4bd9: $03
    cp b                                          ; $4bda: $b8
    nop                                           ; $4bdb: $00
    ei                                            ; $4bdc: $fb
    inc b                                         ; $4bdd: $04
    ret nz                                        ; $4bde: $c0

    ld b, b                                       ; $4bdf: $40
    ccf                                           ; $4be0: $3f
    ld d, [hl]                                    ; $4be1: $56
    ld a, [bc]                                    ; $4be2: $0a
    ld d, b                                       ; $4be3: $50
    ld [$1ea1], sp                                ; $4be4: $08 $a1 $1e
    and d                                         ; $4be7: $a2
    db $fd                                        ; $4be8: $fd
    dec b                                         ; $4be9: $05
    cp $01                                        ; $4bea: $fe $01
    jp z, $c201                                   ; $4bec: $ca $01 $c2

    ld [hl], h                                    ; $4bef: $74
    nop                                           ; $4bf0: $00
    db $ed                                        ; $4bf1: $ed
    jr nc, jr_0c8_4bf4                            ; $4bf2: $30 $00

jr_0c8_4bf4:
    nop                                           ; $4bf4: $00
    xor a                                         ; $4bf5: $af
    db $10                                        ; $4bf6: $10
    ld [bc], a                                    ; $4bf7: $02
    rst $38                                       ; $4bf8: $ff
    ld hl, sp+$07                                 ; $4bf9: $f8 $07
    db $ed                                        ; $4bfb: $ed
    ld [bc], a                                    ; $4bfc: $02
    nop                                           ; $4bfd: $00
    reti                                          ; $4bfe: $d9


    jr nz, @-$5e                                  ; $4bff: $20 $a0

    db $fc                                        ; $4c01: $fc
    dec c                                         ; $4c02: $0d
    rst $30                                       ; $4c03: $f7
    ld hl, sp+$07                                 ; $4c04: $f8 $07
    jr nz, @-$01                                  ; $4c06: $20 $fd

    ld [bc], a                                    ; $4c08: $02
    ld [bc], a                                    ; $4c09: $02
    ld [$04ab], sp                                ; $4c0a: $08 $ab $04
    ld d, c                                       ; $4c0d: $51
    jr nz, @-$21                                  ; $4c0e: $20 $dd

    nop                                           ; $4c10: $00
    inc hl                                        ; $4c11: $23
    inc a                                         ; $4c12: $3c
    rst $38                                       ; $4c13: $ff
    adc [hl]                                      ; $4c14: $8e
    ld [hl], c                                    ; $4c15: $71
    cp $01                                        ; $4c16: $fe $01
    ld a, [$0100]                                 ; $4c18: $fa $00 $01
    ld [hl], $01                                  ; $4c1b: $36 $01
    dec b                                         ; $4c1d: $05
    ld [bc], a                                    ; $4c1e: $02
    or h                                          ; $4c1f: $b4
    ld [$c4d6], sp                                ; $4c20: $08 $d6 $c4
    dec b                                         ; $4c23: $05
    inc bc                                        ; $4c24: $03
    sbc h                                         ; $4c25: $9c

jr_0c8_4c26:
    dec bc                                        ; $4c26: $0b
    xor $01                                       ; $4c27: $ee $01
    jp c, $00f2                                   ; $4c29: $da $f2 $00

    ld a, [de]                                    ; $4c2c: $1a
    jr nz, jr_0c8_4c31                            ; $4c2d: $20 $02

    sub $21                                       ; $4c2f: $d6 $21

jr_0c8_4c31:
    and b                                         ; $4c31: $a0
    rst $38                                       ; $4c32: $ff
    rrca                                          ; $4c33: $0f
    ldh a, [$92]                                  ; $4c34: $f0 $92
    dec bc                                        ; $4c36: $0b
    ld e, d                                       ; $4c37: $5a
    nop                                           ; $4c38: $00
    nop                                           ; $4c39: $00
    ld c, $01                                     ; $4c3a: $0e $01
    or h                                          ; $4c3c: $b4
    ld [$fe69], sp                                ; $4c3d: $08 $69 $fe
    inc bc                                        ; $4c40: $03
    inc b                                         ; $4c41: $04
    db $fd                                        ; $4c42: $fd
    ld a, [hl]                                    ; $4c43: $7e
    add c                                         ; $4c44: $81
    ld a, a                                       ; $4c45: $7f
    add b                                         ; $4c46: $80
    ld [bc], a                                    ; $4c47: $02
    ld [$009b], sp                                ; $4c48: $08 $9b $00
    nop                                           ; $4c4b: $00
    ld l, h                                       ; $4c4c: $6c
    db $10                                        ; $4c4d: $10
    ld l, $11                                     ; $4c4e: $2e $11
    ld c, a                                       ; $4c50: $4f
    rst $38                                       ; $4c51: $ff
    inc hl                                        ; $4c52: $23
    call c, Call_0c8_7f00                         ; $4c53: $dc $00 $7f
    add b                                         ; $4c56: $80
    ld a, [hl]                                    ; $4c57: $7e
    add b                                         ; $4c58: $80
    ld c, l                                       ; $4c59: $4d
    add b                                         ; $4c5a: $80
    ld h, b                                       ; $4c5b: $60
    add b                                         ; $4c5c: $80
    db $10                                        ; $4c5d: $10
    xor e                                         ; $4c5e: $ab
    inc b                                         ; $4c5f: $04
    ld a, d                                       ; $4c60: $7a
    cp l                                          ; $4c61: $bd
    inc bc                                        ; $4c62: $03
    cp a                                          ; $4c63: $bf
    ld b, b                                       ; $4c64: $40
    cp a                                          ; $4c65: $bf
    ld b, b                                       ; $4c66: $40
    nop                                           ; $4c67: $00
    cp e                                          ; $4c68: $bb
    ld b, b                                       ; $4c69: $40
    or [hl]                                       ; $4c6a: $b6
    ld b, b                                       ; $4c6b: $40
    ld l, b                                       ; $4c6c: $68
    add b                                         ; $4c6d: $80
    rla                                           ; $4c6e: $17
    ld [$b502], sp                                ; $4c6f: $08 $02 $b5
    ld [$ff38], sp                                ; $4c72: $08 $38 $ff
    inc bc                                        ; $4c75: $03
    db $fc                                        ; $4c76: $fc
    ld [de], a                                    ; $4c77: $12
    ld [$8a96], sp                                ; $4c78: $08 $96 $8a
    jr z, jr_0c8_4c7e                             ; $4c7b: $28 $01

    dec hl                                        ; $4c7d: $2b

jr_0c8_4c7e:
    inc b                                         ; $4c7e: $04
    inc e                                         ; $4c7f: $1c
    ld b, b                                       ; $4c80: $40
    ld [hl-], a                                   ; $4c81: $32
    sbc a                                         ; $4c82: $9f
    cp d                                          ; $4c83: $ba
    nop                                           ; $4c84: $00
    dec hl                                        ; $4c85: $2b
    ld bc, $5b04                                  ; $4c86: $01 $04 $5b
    add h                                         ; $4c89: $84
    db $e3                                        ; $4c8a: $e3
    ld a, a                                       ; $4c8b: $7f
    adc b                                         ; $4c8c: $88
    ld [hl], a                                    ; $4c8d: $77
    ld d, d                                       ; $4c8e: $52
    ld a, [bc]                                    ; $4c8f: $0a
    nop                                           ; $4c90: $00
    db $d3                                        ; $4c91: $d3
    jr nz, @+$5a                                  ; $4c92: $20 $58

    jr nz, jr_0c8_4cc4                            ; $4c94: $20 $2e

    ld bc, $7f9a                                  ; $4c96: $01 $9a $7f
    ld b, b                                       ; $4c99: $40
    add b                                         ; $4c9a: $80
    db $fc                                        ; $4c9b: $fc
    ld [de], a                                    ; $4c9c: $12
    xor [hl]                                      ; $4c9d: $ae
    db $10                                        ; $4c9e: $10
    ld l, l                                       ; $4c9f: $6d
    db $10                                        ; $4ca0: $10
    ld l, $10                                     ; $4ca1: $2e $10
    inc b                                         ; $4ca3: $04
    push bc                                       ; $4ca4: $c5
    ld [bc], a                                    ; $4ca5: $02
    cp l                                          ; $4ca6: $bd
    jp nz, Jump_000_3a16                          ; $4ca7: $c2 $16 $3a

    ld de, $10ef                                  ; $4caa: $11 $ef $10
    ld bc, $10a5                                  ; $4cad: $01 $a5 $10
    ld [$5610], sp                                ; $4cb0: $08 $10 $56
    rrca                                          ; $4cb3: $0f
    ret nc                                        ; $4cb4: $d0

    ld e, [hl]                                    ; $4cb5: $5e
    ld [bc], a                                    ; $4cb6: $02
    nop                                           ; $4cb7: $00
    ld a, a                                       ; $4cb8: $7f
    add b                                         ; $4cb9: $80
    ld e, a                                       ; $4cba: $5f
    add b                                         ; $4cbb: $80
    add $00                                       ; $4cbc: $c6 $00
    or c                                          ; $4cbe: $b1
    nop                                           ; $4cbf: $00
    nop                                           ; $4cc0: $00
    inc bc                                        ; $4cc1: $03
    rst $38                                       ; $4cc2: $ff
    xor l                                         ; $4cc3: $ad

jr_0c8_4cc4:
    ld a, [c]                                     ; $4cc4: $f2
    ld bc, $dcff                                  ; $4cc5: $01 $ff $dc
    inc hl                                        ; $4cc8: $23
    add b                                         ; $4cc9: $80
    ld c, h                                       ; $4cca: $4c
    ld [$409d], sp                                ; $4ccb: $08 $9d $40
    or h                                          ; $4cce: $b4
    ld b, b                                       ; $4ccf: $40
    adc $f0                                       ; $4cd0: $ce $f0
    push hl                                       ; $4cd2: $e5
    jr nc, jr_0c8_4cf4                            ; $4cd3: $30 $1f

    ld b, b                                       ; $4cd5: $40
    xor [hl]                                      ; $4cd6: $ae
    nop                                           ; $4cd7: $00
    add h                                         ; $4cd8: $84
    add hl, bc                                    ; $4cd9: $09
    and l                                         ; $4cda: $a5
    ld b, b                                       ; $4cdb: $40
    ld [de], a                                    ; $4cdc: $12
    ld b, b                                       ; $4cdd: $40
    ld [bc], a                                    ; $4cde: $02
    or b                                          ; $4cdf: $b0
    ld c, a                                       ; $4ce0: $4f
    ret nz                                        ; $4ce1: $c0

    rst $38                                       ; $4ce2: $ff
    inc c                                         ; $4ce3: $0c
    di                                            ; $4ce4: $f3
    xor h                                         ; $4ce5: $ac
    ld a, [de]                                    ; $4ce6: $1a
    ld e, d                                       ; $4ce7: $5a
    nop                                           ; $4ce8: $00
    jr nz, jr_0c8_4cc4                            ; $4ce9: $20 $d9

    jr nz, jr_0c8_4d1c                            ; $4ceb: $20 $2f

    rst $38                                       ; $4ced: $ff
    call Call_0c8_5c03                            ; $4cee: $cd $03 $5c
    inc d                                         ; $4cf1: $14
    rst $38                                       ; $4cf2: $ff
    add e                                         ; $4cf3: $83

jr_0c8_4cf4:
    ld a, h                                       ; $4cf4: $7c
    ld h, h                                       ; $4cf5: $64
    add hl, bc                                    ; $4cf6: $09
    add sp, -$30                                  ; $4cf7: $e8 $d0
    ld [bc], a                                    ; $4cf9: $02
    and b                                         ; $4cfa: $a0
    rst $38                                       ; $4cfb: $ff
    nop                                           ; $4cfc: $00
    jp hl                                         ; $4cfd: $e9


    cp $00                                        ; $4cfe: $fe $00
    rst $38                                       ; $4d00: $ff
    ei                                            ; $4d01: $fb
    inc b                                         ; $4d02: $04
    ei                                            ; $4d03: $fb
    inc b                                         ; $4d04: $04
    nop                                           ; $4d05: $00
    di                                            ; $4d06: $f3
    inc b                                         ; $4d07: $04
    or e                                          ; $4d08: $b3
    ld [$0836], sp                                ; $4d09: $08 $36 $08
    ld a, c                                       ; $4d0c: $79
    cp $10                                        ; $4d0d: $fe $10
    ld a, l                                       ; $4d0f: $7d
    add e                                         ; $4d10: $83
    ld e, b                                       ; $4d11: $58
    jr nz, jr_0c8_4d14                            ; $4d12: $20 $00

jr_0c8_4d14:
    rst $30                                       ; $4d14: $f7
    ld [$08f2], sp                                ; $4d15: $08 $f2 $08
    ld bc, $0874                                  ; $4d18: $01 $74 $08
    add d                                         ; $4d1b: $82

jr_0c8_4d1c:
    ld [$09f6], sp                                ; $4d1c: $08 $f6 $09
    ld a, b                                       ; $4d1f: $78
    cp h                                          ; $4d20: $bc

Jump_0c8_4d21:
    nop                                           ; $4d21: $00
    add b                                         ; $4d22: $80
    jr nz, @+$0a                                  ; $4d23: $20 $08

    ld sp, hl                                     ; $4d25: $f9
    inc b                                         ; $4d26: $04
    ld l, d                                       ; $4d27: $6a
    inc b                                         ; $4d28: $04
    ld e, e                                       ; $4d29: $5b
    inc b                                         ; $4d2a: $04

jr_0c8_4d2b:
    dec b                                         ; $4d2b: $05
    ld [$12ff], sp                                ; $4d2c: $08 $ff $12
    ldh [rNR21], a                                ; $4d2f: $e0 $16
    jr nz, jr_0c8_4d45                            ; $4d31: $20 $12

    db $fd                                        ; $4d33: $fd
    ld [bc], a                                    ; $4d34: $02
    db $dd                                        ; $4d35: $dd
    inc bc                                        ; $4d36: $03
    ld [bc], a                                    ; $4d37: $02
    dec l                                         ; $4d38: $2d
    ld [bc], a                                    ; $4d39: $02
    db $f4                                        ; $4d3a: $f4
    rst $38                                       ; $4d3b: $ff
    push af                                       ; $4d3c: $f5
    xor [hl]                                      ; $4d3d: $ae
    nop                                           ; $4d3e: $00
    ld b, b                                       ; $4d3f: $40
    ld a, [bc]                                    ; $4d40: $0a
    dec d                                         ; $4d41: $15
    cp $01                                        ; $4d42: $fe $01
    sub h                                         ; $4d44: $94

jr_0c8_4d45:
    jr nz, jr_0c8_4d49                            ; $4d45: $20 $02

    dec bc                                        ; $4d47: $0b
    inc d                                         ; $4d48: $14

jr_0c8_4d49:
    ld [bc], a                                    ; $4d49: $02
    ld c, $40                                     ; $4d4a: $0e $40
    ld [bc], a                                    ; $4d4c: $02
    add b                                         ; $4d4d: $80
    or b                                          ; $4d4e: $b0
    ld a, [bc]                                    ; $4d4f: $0a
    ld l, d                                       ; $4d50: $6a
    ld bc, $01d0                                  ; $4d51: $01 $d0 $01

jr_0c8_4d54:
    ld a, $c1                                     ; $4d54: $3e $c1
    ld a, $c2                                     ; $4d56: $3e $c2
    rlc h                                         ; $4d58: $cb $04
    pop de                                        ; $4d5a: $d1
    nop                                           ; $4d5b: $00
    nop                                           ; $4d5c: $00
    ld e, a                                       ; $4d5d: $5f
    nop                                           ; $4d5e: $00
    adc e                                         ; $4d5f: $8b
    ld c, b                                       ; $4d60: $48
    inc b                                         ; $4d61: $04
    ret nz                                        ; $4d62: $c0

    db $10                                        ; $4d63: $10
    ccf                                           ; $4d64: $3f
    di                                            ; $4d65: $f3
    inc c                                         ; $4d66: $0c
    or $0b                                        ; $4d67: $f6 $0b
    cpl                                           ; $4d69: $2f
    db $10                                        ; $4d6a: $10
    jp c, Jump_0c8_5020                           ; $4d6b: $da $20 $50

    rla                                           ; $4d6e: $17
    or b                                          ; $4d6f: $b0
    ld de, $960f                                  ; $4d70: $11 $0f $96
    ld bc, $02fd                                  ; $4d73: $01 $fd $02
    ld d, l                                       ; $4d76: $55
    ld [bc], a                                    ; $4d77: $02
    nop                                           ; $4d78: $00

jr_0c8_4d79:
    rla                                           ; $4d79: $17
    ld a, a                                       ; $4d7a: $7f
    push bc                                       ; $4d7b: $c5
    ld a, [$827d]                                 ; $4d7c: $fa $7d $82
    push hl                                       ; $4d7f: $e5
    ld [bc], a                                    ; $4d80: $02
    jr nz, jr_0c8_4d2b                            ; $4d81: $20 $a8

    rst $38                                       ; $4d83: $ff
    sbc b                                         ; $4d84: $98
    add hl, de                                    ; $4d85: $19
    dec [hl]                                      ; $4d86: $35
    ret z                                         ; $4d87: $c8

    add d                                         ; $4d88: $82
    ld a, a                                       ; $4d89: $7f
    ld hl, sp+$04                                 ; $4d8a: $f8 $04
    rlca                                          ; $4d8c: $07
    ld e, l                                       ; $4d8d: $5d
    ld [bc], a                                    ; $4d8e: $02
    nop                                           ; $4d8f: $00
    rst $38                                       ; $4d90: $ff
    db $fc                                        ; $4d91: $fc
    ld a, [bc]                                    ; $4d92: $0a
    ld [$1001], a                                 ; $4d93: $ea $01 $10
    ld a, [bc]                                    ; $4d96: $0a
    rlca                                          ; $4d97: $07
    ldh [$08], a                                  ; $4d98: $e0 $08
    inc bc                                        ; $4d9a: $03
    cp e                                          ; $4d9b: $bb
    nop                                           ; $4d9c: $00
    ld e, $e1                                     ; $4d9d: $1e $e1
    ld bc, $01fe                                  ; $4d9f: $01 $fe $01
    ld c, $01                                     ; $4da2: $0e $01
    and d                                         ; $4da4: $a2
    ld bc, $f8ed                                  ; $4da5: $01 $ed $f8

jr_0c8_4da8:
    nop                                           ; $4da8: $00
    ld bc, $20df                                  ; $4da9: $01 $df $20
    ld l, a                                       ; $4dac: $6f
    add b                                         ; $4dad: $80
    ld h, c                                       ; $4dae: $61
    sbc a                                         ; $4daf: $9f
    rst $38                                       ; $4db0: $ff
    ld a, [bc]                                    ; $4db1: $0a
    dec b                                         ; $4db2: $05
    inc b                                         ; $4db3: $04
    push de                                       ; $4db4: $d5
    nop                                           ; $4db5: $00
    and c                                         ; $4db6: $a1
    rlca                                          ; $4db7: $07
    ld [hl], h                                    ; $4db8: $74
    and [hl]                                      ; $4db9: $a6
    ld bc, $40bf                                  ; $4dba: $01 $bf $40
    ld b, b                                       ; $4dbd: $40
    ld [hl], l                                    ; $4dbe: $75
    ld b, $10                                     ; $4dbf: $06 $10
    xor e                                         ; $4dc1: $ab
    ld b, b                                       ; $4dc2: $40
    ld [hl], e                                    ; $4dc3: $73
    ld hl, sp+$58                                 ; $4dc4: $f8 $58
    and a                                         ; $4dc6: $a7
    jr jr_0c8_4da8                                ; $4dc7: $18 $df

    jr nz, jr_0c8_4e20                            ; $4dc9: $20 $55

    and b                                         ; $4dcb: $a0
    inc bc                                        ; $4dcc: $03
    adc h                                         ; $4dcd: $8c
    add hl, bc                                    ; $4dce: $09
    ld l, a                                       ; $4dcf: $6f
    add b                                         ; $4dd0: $80
    ld d, b                                       ; $4dd1: $50
    jr nz, jr_0c8_4d54                            ; $4dd2: $20 $80

    ld l, $f8                                     ; $4dd4: $2e $f8
    nop                                           ; $4dd6: $00
    db $eb                                        ; $4dd7: $eb
    db $10                                        ; $4dd8: $10
    inc bc                                        ; $4dd9: $03
    db $fc                                        ; $4dda: $fc
    rst $18                                       ; $4ddb: $df
    nop                                           ; $4ddc: $00
    jr nz, @-$1d                                  ; $4ddd: $20 $e1

    db $10                                        ; $4ddf: $10
    ld c, d                                       ; $4de0: $4a
    db $10                                        ; $4de1: $10
    xor [hl]                                      ; $4de2: $ae
    ld a, a                                       ; $4de3: $7f
    nop                                           ; $4de4: $00
    add h                                         ; $4de5: $84
    ld l, d                                       ; $4de6: $6a
    nop                                           ; $4de7: $00
    sbc d                                         ; $4de8: $9a
    inc b                                         ; $4de9: $04
    adc $31                                       ; $4dea: $ce $31
    ld [hl], b                                    ; $4dec: $70
    ld a, [bc]                                    ; $4ded: $0a
    ld e, l                                       ; $4dee: $5d
    jr nz, jr_0c8_4d79                            ; $4def: $20 $88

jr_0c8_4df1:
    sub b                                         ; $4df1: $90
    jr jr_0c8_4df1                                ; $4df2: $18 $fd

    ld [bc], a                                    ; $4df4: $02
    ld l, $46                                     ; $4df5: $2e $46
    ld [de], a                                    ; $4df7: $12
    xor e                                         ; $4df8: $ab
    inc b                                         ; $4df9: $04
    rla                                           ; $4dfa: $17
    nop                                           ; $4dfb: $00
    ld a, a                                       ; $4dfc: $7f
    ld b, l                                       ; $4dfd: $45
    ld a, [$02fd]                                 ; $4dfe: $fa $fd $02
    ld a, [c]                                     ; $4e01: $f2
    ld bc, $84a0                                  ; $4e02: $01 $a0 $84
    ld e, $11                                     ; $4e05: $1e $11
    ld d, a                                       ; $4e07: $57
    ld [$8835], sp                                ; $4e08: $08 $35 $88
    sub b                                         ; $4e0b: $90
    ld [$01de], sp                                ; $4e0c: $08 $de $01
    ld d, c                                       ; $4e0f: $51
    inc b                                         ; $4e10: $04
    or $00                                        ; $4e11: $f6 $00
    ld a, [bc]                                    ; $4e13: $0a
    call nc, $af10                                ; $4e14: $d4 $10 $af
    ld b, b                                       ; $4e17: $40
    and l                                         ; $4e18: $a5
    ld l, b                                       ; $4e19: $68
    nop                                           ; $4e1a: $00
    inc b                                         ; $4e1b: $04
    call Call_0c8_6502                            ; $4e1c: $cd $02 $65
    rra                                           ; $4e1f: $1f

jr_0c8_4e20:
    ret nz                                        ; $4e20: $c0

    ldh a, [$03]                                  ; $4e21: $f0 $03
    rst $18                                       ; $4e23: $df
    jr nz, jr_0c8_4e36                            ; $4e24: $20 $10

    cp a                                          ; $4e26: $bf
    ld b, b                                       ; $4e27: $40
    ld e, a                                       ; $4e28: $5f
    nop                                           ; $4e29: $00
    ld [bc], a                                    ; $4e2a: $02
    xor c                                         ; $4e2b: $a9
    ld [bc], a                                    ; $4e2c: $02
    sub l                                         ; $4e2d: $95
    ld [c], a                                     ; $4e2e: $e2
    ld h, b                                       ; $4e2f: $60
    rla                                           ; $4e30: $17
    xor d                                         ; $4e31: $aa
    ld [bc], a                                    ; $4e32: $02
    jr nc, @+$0e                                  ; $4e33: $30 $0c

    ld c, d                                       ; $4e35: $4a

jr_0c8_4e36:
    jr nz, jr_0c8_4e8c                            ; $4e36: $20 $54

    jr nz, jr_0c8_4e8f                            ; $4e38: $20 $55

    ld [$bb00], sp                                ; $4e3a: $08 $00 $bb
    rlca                                          ; $4e3d: $07
    nop                                           ; $4e3e: $00
    call z, $ef14                                 ; $4e3f: $cc $14 $ef
    db $10                                        ; $4e42: $10
    xor e                                         ; $4e43: $ab
    nop                                           ; $4e44: $00
    db $10                                        ; $4e45: $10
    ld l, b                                       ; $4e46: $68
    db $10                                        ; $4e47: $10
    ld d, b                                       ; $4e48: $50
    add b                                         ; $4e49: $80
    adc c                                         ; $4e4a: $89
    ldh a, [rSVBK]                                ; $4e4b: $f0 $70
    nop                                           ; $4e4d: $00
    adc a                                         ; $4e4e: $8f
    ld hl, sp+$07                                 ; $4e4f: $f8 $07
    db $eb                                        ; $4e51: $eb
    inc b                                         ; $4e52: $04
    db $fd                                        ; $4e53: $fd
    ld [bc], a                                    ; $4e54: $02
    db $e4                                        ; $4e55: $e4
    ld a, [bc]                                    ; $4e56: $0a
    ld [bc], a                                    ; $4e57: $02
    dec e                                         ; $4e58: $1d
    ld [bc], a                                    ; $4e59: $02
    ld c, d                                       ; $4e5a: $4a
    cp [hl]                                       ; $4e5b: $be
    ld [bc], a                                    ; $4e5c: $02
    xor [hl]                                      ; $4e5d: $ae
    ld [hl], b                                    ; $4e5e: $70
    inc b                                         ; $4e5f: $04
    db $fd                                        ; $4e60: $fd

Jump_0c8_4e61:
    ld [$7b02], sp                                ; $4e61: $08 $02 $7b
    inc b                                         ; $4e64: $04
    xor d                                         ; $4e65: $aa
    ld h, d                                       ; $4e66: $62
    ld bc, $205a                                  ; $4e67: $01 $5a $20
    ld e, c                                       ; $4e6a: $59
    pop bc                                        ; $4e6b: $c1
    sub d                                         ; $4e6c: $92
    ld bc, $1e00                                  ; $4e6d: $01 $00 $1e
    or $01                                        ; $4e70: $f6 $01
    ld [bc], a                                    ; $4e72: $02
    ld bc, $3645                                  ; $4e73: $01 $45 $36
    nop                                           ; $4e76: $00
    ld b, b                                       ; $4e77: $40
    or b                                          ; $4e78: $b0
    jp c, Jump_0c8_7f10                           ; $4e79: $da $10 $7f

    add b                                         ; $4e7c: $80
    ld d, l                                       ; $4e7d: $55
    nop                                           ; $4e7e: $00
    and e                                         ; $4e7f: $a3
    nop                                           ; $4e80: $00
    ld [bc], a                                    ; $4e81: $02
    add hl, hl                                    ; $4e82: $29
    inc b                                         ; $4e83: $04
    sbc h                                         ; $4e84: $9c
    ld a, a                                       ; $4e85: $7f

jr_0c8_4e86:
    inc bc                                        ; $4e86: $03
    db $fc                                        ; $4e87: $fc
    ld a, [hl]                                    ; $4e88: $7e
    ld a, [bc]                                    ; $4e89: $0a
    ld a, [hl]                                    ; $4e8a: $7e
    ld [bc], a                                    ; $4e8b: $02

jr_0c8_4e8c:
    add b                                         ; $4e8c: $80
    ccf                                           ; $4e8d: $3f
    add b                                         ; $4e8e: $80

jr_0c8_4e8f:
    ld b, b                                       ; $4e8f: $40
    add b                                         ; $4e90: $80
    ld [bc], a                                    ; $4e91: $02
    cp d                                          ; $4e92: $ba
    inc bc                                        ; $4e93: $03
    dec b                                         ; $4e94: $05
    add b                                         ; $4e95: $80
    ld e, d                                       ; $4e96: $5a
    inc bc                                        ; $4e97: $03
    ld e, a                                       ; $4e98: $5f
    jr nz, jr_0c8_4e86                            ; $4e99: $20 $eb

    db $10                                        ; $4e9b: $10
    dec h                                         ; $4e9c: $25
    db $10                                        ; $4e9d: $10
    jp hl                                         ; $4e9e: $e9


    inc bc                                        ; $4e9f: $03
    db $10                                        ; $4ea0: $10
    and [hl]                                      ; $4ea1: $a6
    ld bc, $0f52                                  ; $4ea2: $01 $52 $0f
    ldh [$b0], a                                  ; $4ea5: $e0 $b0
    ld [bc], a                                    ; $4ea7: $02
    ret nz                                        ; $4ea8: $c0

    inc c                                         ; $4ea9: $0c
    ld b, c                                       ; $4eaa: $41
    ld d, a                                       ; $4eab: $57
    ret nz                                        ; $4eac: $c0

    inc b                                         ; $4ead: $04
    db $e4                                        ; $4eae: $e4
    ld bc, $e1da                                  ; $4eaf: $01 $da $e1
    dec bc                                        ; $4eb2: $0b
    ld a, [de]                                    ; $4eb3: $1a
    inc de                                        ; $4eb4: $13
    nop                                           ; $4eb5: $00
    rst $30                                       ; $4eb6: $f7
    ld [$08a2], sp                                ; $4eb7: $08 $a2 $08
    dec b                                         ; $4eba: $05
    ld [$ff6e], sp                                ; $4ebb: $08 $6e $ff
    jr nz, @-$7e                                  ; $4ebe: $20 $80

    ld a, a                                       ; $4ec0: $7f
    ld c, d                                       ; $4ec1: $4a
    dec c                                         ; $4ec2: $0d
    or l                                          ; $4ec3: $b5
    ld [$10e9], sp                                ; $4ec4: $08 $e9 $10
    ld [hl], e                                    ; $4ec7: $73
    inc bc                                        ; $4ec8: $03
    db $fc                                        ; $4ec9: $fc
    add b                                         ; $4eca: $80
    ld a, a                                       ; $4ecb: $7f
    scf                                           ; $4ecc: $37
    ret nz                                        ; $4ecd: $c0

    dec d                                         ; $4ece: $15
    sbc b                                         ; $4ecf: $98
    inc bc                                        ; $4ed0: $03
    ld e, h                                       ; $4ed1: $5c
    dec c                                         ; $4ed2: $0d
    ld b, c                                       ; $4ed3: $41
    ld d, d                                       ; $4ed4: $52
    xor d                                         ; $4ed5: $aa
    ld [bc], a                                    ; $4ed6: $02
    call nc, $c6ff                                ; $4ed7: $d4 $ff $c6
    ccf                                           ; $4eda: $3f
    and b                                         ; $4edb: $a0
    ld [hl], d                                    ; $4edc: $72
    ld de, $be40                                  ; $4edd: $11 $40 $be
    ld [hl], h                                    ; $4ee0: $74
    ld bc, $0205                                  ; $4ee1: $01 $05 $02
    xor l                                         ; $4ee4: $ad
    ld [bc], a                                    ; $4ee5: $02
    xor l                                         ; $4ee6: $ad
    ret nc                                        ; $4ee7: $d0

    ld b, c                                       ; $4ee8: $41
    dec bc                                        ; $4ee9: $0b
    ld a, b                                       ; $4eea: $78
    inc bc                                        ; $4eeb: $03
    rst $38                                       ; $4eec: $ff
    nop                                           ; $4eed: $00
    rst $30                                       ; $4eee: $f7
    nop                                           ; $4eef: $00
    push de                                       ; $4ef0: $d5
    jr nc, jr_0c8_4ef7                            ; $4ef1: $30 $04

    ld [bc], a                                    ; $4ef3: $02
    ret nz                                        ; $4ef4: $c0

jr_0c8_4ef5:
    ccf                                           ; $4ef5: $3f
    ld h, d                                       ; $4ef6: $62

jr_0c8_4ef7:
    rra                                           ; $4ef7: $1f
    adc h                                         ; $4ef8: $8c
    di                                            ; $4ef9: $f3
    add b                                         ; $4efa: $80
    ld a, [bc]                                    ; $4efb: $0a
    ld h, l                                       ; $4efc: $65
    nop                                           ; $4efd: $00
    add b                                         ; $4efe: $80
    ld l, e                                       ; $4eff: $6b
    nop                                           ; $4f00: $00
    add l                                         ; $4f01: $85
    ccf                                           ; $4f02: $3f
    ld [hl], $c9                                  ; $4f03: $36 $c9
    pop af                                        ; $4f05: $f1
    ret nc                                        ; $4f06: $d0

    ld b, b                                       ; $4f07: $40
    ld [bc], a                                    ; $4f08: $02
    ld c, $0d                                     ; $4f09: $0e $0d
    or a                                          ; $4f0b: $b7
    ld c, $01                                     ; $4f0c: $0e $01
    jp z, $03f0                                   ; $4f0e: $ca $f0 $03

    rst $38                                       ; $4f11: $ff

jr_0c8_4f12:
    nop                                           ; $4f12: $00
    cp [hl]                                       ; $4f13: $be
    ld bc, $ff6d                                  ; $4f14: $01 $6d $ff
    rlca                                          ; $4f17: $07
    ld hl, sp-$41                                 ; $4f18: $f8 $bf
    ld b, b                                       ; $4f1a: $40
    nop                                           ; $4f1b: $00
    cp l                                          ; $4f1c: $bd
    ld b, b                                       ; $4f1d: $40
    ld c, e                                       ; $4f1e: $4b
    jr nz, jr_0c8_4ef5                            ; $4f1f: $20 $d4

    jr nz, @+$54                                  ; $4f21: $20 $52

    db $fc                                        ; $4f23: $fc

Jump_0c8_4f24:
    ld b, c                                       ; $4f24: $41
    dec [hl]                                      ; $4f25: $35
    ld h, b                                       ; $4f26: $60
    ld [hl+], a                                   ; $4f27: $22
    ei                                            ; $4f28: $fb
    inc b                                         ; $4f29: $04
    xor c                                         ; $4f2a: $a9
    inc b                                         ; $4f2b: $04
    inc d                                         ; $4f2c: $14
    inc c                                         ; $4f2d: $0c
    inc bc                                        ; $4f2e: $03
    db $10                                        ; $4f2f: $10
    ld l, e                                       ; $4f30: $6b
    add b                                         ; $4f31: $80
    ld e, h                                       ; $4f32: $5c
    db $dd                                        ; $4f33: $dd
    ld b, $fb                                     ; $4f34: $06 $fb
    inc b                                         ; $4f36: $04
    cp e                                          ; $4f37: $bb
    inc b                                         ; $4f38: $04
    ld b, b                                       ; $4f39: $40
    ld d, l                                       ; $4f3a: $55
    ld [hl], b                                    ; $4f3b: $70
    ld [bc], a                                    ; $4f3c: $02

jr_0c8_4f3d:
    nop                                           ; $4f3d: $00
    rst $38                                       ; $4f3e: $ff
    dec d                                         ; $4f3f: $15
    rst $38                                       ; $4f40: $ff
    jr nc, jr_0c8_4f12                            ; $4f41: $30 $cf

    add b                                         ; $4f43: $80
    sbc $0c                                       ; $4f44: $de $0c

Jump_0c8_4f46:
    ld d, $01                                     ; $4f46: $16 $01
    xor [hl]                                      ; $4f48: $ae
    ld bc, $ff17                                  ; $4f49: $01 $17 $ff
    ret c                                         ; $4f4c: $d8

    jr @+$29                                      ; $4f4d: $18 $27

    adc l                                         ; $4f4f: $8d
    ldh a, [$a8]                                  ; $4f50: $f0 $a8
    dec bc                                        ; $4f52: $0b
    add b                                         ; $4f53: $80
    ld [$0015], sp                                ; $4f54: $08 $15 $00
    ld l, e                                       ; $4f57: $6b
    inc bc                                        ; $4f58: $03
    add b                                         ; $4f59: $80
    dec c                                         ; $4f5a: $0d
    rst $38                                       ; $4f5b: $ff
    pop de                                        ; $4f5c: $d1
    rrca                                          ; $4f5d: $0f
    or h                                          ; $4f5e: $b4
    ld c, [hl]                                    ; $4f5f: $4e
    dec b                                         ; $4f60: $05
    add b                                         ; $4f61: $80
    ld [$2e40], sp                                ; $4f62: $08 $40 $2e
    call nz, Call_0c8_4a01                        ; $4f65: $c4 $01 $4a
    ldh a, [$fc]                                  ; $4f68: $f0 $fc
    inc bc                                        ; $4f6a: $03
    rst $38                                       ; $4f6b: $ff
    nop                                           ; $4f6c: $00
    ld bc, $00af                                  ; $4f6d: $01 $af $00
    ld a, [hl+]                                   ; $4f70: $2a
    ld bc, $03f4                                  ; $4f71: $01 $f4 $03
    call nc, $0566                                ; $4f74: $d4 $66 $05
    nop                                           ; $4f77: $00
    pop af                                        ; $4f78: $f1
    nop                                           ; $4f79: $00
    ld b, $f9                                     ; $4f7a: $06 $f9
    ld a, a                                       ; $4f7c: $7f

jr_0c8_4f7d:
    add b                                         ; $4f7d: $80
    cpl                                           ; $4f7e: $2f
    add b                                         ; $4f7f: $80
    nop                                           ; $4f80: $00
    adc d                                         ; $4f81: $8a
    nop                                           ; $4f82: $00
    dec e                                         ; $4f83: $1d
    ldh [rNR41], a                                ; $4f84: $e0 $20
    rst $18                                       ; $4f86: $df
    rst $28                                       ; $4f87: $ef
    db $10                                        ; $4f88: $10
    ld de, $2056                                  ; $4f89: $11 $56 $20
    ld a, [bc]                                    ; $4f8c: $0a
    xor $04                                       ; $4f8d: $ee $04
    ld d, [hl]                                    ; $4f8f: $56
    add b                                         ; $4f90: $80
    ld b, $20                                     ; $4f91: $06 $20
    inc bc                                        ; $4f93: $03
    adc b                                         ; $4f94: $88
    ld [hl], b                                    ; $4f95: $70
    inc c                                         ; $4f96: $0c
    rst $18                                       ; $4f97: $df
    jr nz, jr_0c8_4f3d                            ; $4f98: $20 $a3

    jr nc, jr_0c8_4fa0                            ; $4f9a: $30 $04

    db $eb                                        ; $4f9c: $eb
    db $10                                        ; $4f9d: $10
    add c                                         ; $4f9e: $81
    add d                                         ; $4f9f: $82

jr_0c8_4fa0:
    sub h                                         ; $4fa0: $94
    inc b                                         ; $4fa1: $04
    xor b                                         ; $4fa2: $a8
    rst $38                                       ; $4fa3: $ff
    dec de                                        ; $4fa4: $1b
    db $e4                                        ; $4fa5: $e4
    ld [$0430], a                                 ; $4fa6: $ea $30 $04
    rst $28                                       ; $4fa9: $ef
    inc hl                                        ; $4faa: $23
    db $10                                        ; $4fab: $10
    ld [$0188], a                                 ; $4fac: $ea $88 $01
    adc l                                         ; $4faf: $8d
    ld [hl], b                                    ; $4fb0: $70
    ld bc, $127a                                  ; $4fb1: $01 $7a $12
    db $ec                                        ; $4fb4: $ec
    inc c                                         ; $4fb5: $0c
    ld b, h                                       ; $4fb6: $44
    cp h                                          ; $4fb7: $bc
    add b                                         ; $4fb8: $80
    ld [bc], a                                    ; $4fb9: $02
    add sp, $07                                   ; $4fba: $e8 $07
    xor b                                         ; $4fbc: $a8
    ld l, b                                       ; $4fbd: $68
    dec b                                         ; $4fbe: $05
    ld [c], a                                     ; $4fbf: $e2
    nop                                           ; $4fc0: $00
    jr nz, jr_0c8_4fdf                            ; $4fc1: $20 $1c

    db $e3                                        ; $4fc3: $e3
    db $fc                                        ; $4fc4: $fc
    ld [$0228], sp                                ; $4fc5: $08 $28 $02
    dec [hl]                                      ; $4fc8: $35
    jp nz, Jump_000_0240                          ; $4fc9: $c2 $40 $02

    cp a                                          ; $4fcc: $bf
    rst $18                                       ; $4fcd: $df
    jr nz, jr_0c8_4f7d                            ; $4fce: $20 $ad

    ld b, b                                       ; $4fd0: $40
    ld a, [hl+]                                   ; $4fd1: $2a
    ld d, d                                       ; $4fd2: $52
    rlca                                          ; $4fd3: $07
    db $db                                        ; $4fd4: $db
    ld [bc], a                                    ; $4fd5: $02
    nop                                           ; $4fd6: $00
    dec d                                         ; $4fd7: $15
    nop                                           ; $4fd8: $00
    ld a, a                                       ; $4fd9: $7f
    nop                                           ; $4fda: $00
    cpl                                           ; $4fdb: $2f
    ret c                                         ; $4fdc: $d8

    inc de                                        ; $4fdd: $13
    adc a                                         ; $4fde: $8f

jr_0c8_4fdf:
    adc d                                         ; $4fdf: $8a
    ld h, h                                       ; $4fe0: $64
    ld [bc], a                                    ; $4fe1: $02
    xor a                                         ; $4fe2: $af
    ld b, b                                       ; $4fe3: $40
    ld [bc], a                                    ; $4fe4: $02
    ret nc                                        ; $4fe5: $d0

    inc b                                         ; $4fe6: $04
    ld d, b                                       ; $4fe7: $50
    ld [hl-], a                                   ; $4fe8: $32
    ld b, $d5                                     ; $4fe9: $06 $d5
    add c                                         ; $4feb: $81
    ret nz                                        ; $4fec: $c0

    inc d                                         ; $4fed: $14
    push de                                       ; $4fee: $d5
    jr nz, @-$2d                                  ; $4fef: $20 $d1

    jr nz, @+$1d                                  ; $4ff1: $20 $1b

    ldh [$80], a                                  ; $4ff3: $e0 $80
    inc a                                         ; $4ff5: $3c
    nop                                           ; $4ff6: $00
    ld a, [c]                                     ; $4ff7: $f2
    ld [$0854], sp                                ; $4ff8: $08 $54 $08
    and b                                         ; $4ffb: $a0
    rra                                           ; $4ffc: $1f
    and c                                         ; $4ffd: $a1
    cp $00                                        ; $4ffe: $fe $00
    rst $38                                       ; $5000: $ff
    nop                                           ; $5001: $00
    push bc                                       ; $5002: $c5
    nop                                           ; $5003: $00
    ld [hl], b                                    ; $5004: $70
    adc a                                         ; $5005: $8f
    ei                                            ; $5006: $fb
    inc b                                         ; $5007: $04
    ld bc, $04fa                                  ; $5008: $01 $fa $04
    ld d, b                                       ; $500b: $50
    inc b                                         ; $500c: $04
    ld [$0004], a                                 ; $500d: $ea $04 $00
    ld c, b                                       ; $5010: $48
    dec b                                         ; $5011: $05
    ld d, b                                       ; $5012: $50
    ld e, e                                       ; $5013: $5b
    xor d                                         ; $5014: $aa
    nop                                           ; $5015: $00
    rst $20                                       ; $5016: $e7
    rst $08                                       ; $5017: $cf
    nop                                           ; $5018: $00
    dec sp                                        ; $5019: $3b
    call nz, Call_000_04fb                        ; $501a: $c4 $fb $04
    ld b, b                                       ; $501d: $40
    rst $10                                       ; $501e: $d7
    ld a, [de]                                    ; $501f: $1a

Jump_0c8_5020:
    inc b                                         ; $5020: $04
    ld d, $08                                     ; $5021: $16 $08
    ret c                                         ; $5023: $d8

    jr nz, jr_0c8_507b                            ; $5024: $20 $55

    ld hl, sp-$3f                                 ; $5026: $f8 $c1
    sbc d                                         ; $5028: $9a
    inc c                                         ; $5029: $0c
    or d                                          ; $502a: $b2
    dec c                                         ; $502b: $0d
    ld l, b                                       ; $502c: $68
    ld [bc], a                                    ; $502d: $02
    add l                                         ; $502e: $85
    ld [bc], a                                    ; $502f: $02
    ld e, d                                       ; $5030: $5a
    ld [hl], b                                    ; $5031: $70
    inc b                                         ; $5032: $04
    ret nz                                        ; $5033: $c0

    ld d, b                                       ; $5034: $50
    ld a, [bc]                                    ; $5035: $0a
    ld [hl], d                                    ; $5036: $72
    add hl, bc                                    ; $5037: $09
    cp d                                          ; $5038: $ba
    nop                                           ; $5039: $00
    rrca                                          ; $503a: $0f
    nop                                           ; $503b: $00
    ld e, e                                       ; $503c: $5b
    inc b                                         ; $503d: $04
    ld l, b                                       ; $503e: $68
    inc [hl]                                      ; $503f: $34
    ld a, $04                                     ; $5040: $3e $04
    ld l, [hl]                                    ; $5042: $6e
    inc c                                         ; $5043: $0c
    ld e, a                                       ; $5044: $5f
    ld [hl], d                                    ; $5045: $72
    inc b                                         ; $5046: $04
    ld c, d                                       ; $5047: $4a
    add b                                         ; $5048: $80
    dec d                                         ; $5049: $15
    ld bc, $4d02                                  ; $504a: $01 $02 $4d
    add d                                         ; $504d: $82
    and e                                         ; $504e: $a3
    rst $38                                       ; $504f: $ff
    ld [$82f7], sp                                ; $5050: $08 $f7 $82
    ld c, $40                                     ; $5053: $0e $40
    ld d, d                                       ; $5055: $52
    and b                                         ; $5056: $a0
    ld b, $15                                     ; $5057: $06 $15
    nop                                           ; $5059: $00
    adc $3f                                       ; $505a: $ce $3f
    ret nz                                        ; $505c: $c0

    rst $38                                       ; $505d: $ff
    ld [$8877], sp                                ; $505e: $08 $77 $88
    rst $30                                       ; $5061: $f7
    ld [$1850], sp                                ; $5062: $08 $50 $18
    or b                                          ; $5065: $b0
    ld b, b                                       ; $5066: $40
    xor e                                         ; $5067: $ab
    jp nz, Jump_000_1142                          ; $5068: $c2 $42 $11

    ld d, b                                       ; $506b: $50
    jr z, @-$4a                                   ; $506c: $28 $b4

    ld b, b                                       ; $506e: $40
    xor h                                         ; $506f: $ac
    ld b, e                                       ; $5070: $43
    ld d, b                                       ; $5071: $50
    ld c, b                                       ; $5072: $48
    or [hl]                                       ; $5073: $b6
    ld hl, $6808                                  ; $5074: $21 $08 $68
    ld d, b                                       ; $5077: $50
    ld d, b                                       ; $5078: $50
    dec hl                                        ; $5079: $2b
    inc b                                         ; $507a: $04

jr_0c8_507b:
    sbc e                                         ; $507b: $9b
    inc b                                         ; $507c: $04
    ld d, b                                       ; $507d: $50
    jr z, @+$46                                   ; $507e: $28 $44

    ld d, e                                       ; $5080: $53
    ldh a, [rTMA]                                 ; $5081: $f0 $06
    dec hl                                        ; $5083: $2b
    nop                                           ; $5084: $00
    sbc l                                         ; $5085: $9d
    add b                                         ; $5086: $80
    inc h                                         ; $5087: $24
    xor a                                         ; $5088: $af
    stop                                          ; $5089: $10 $00
    ld l, d                                       ; $508b: $6a
    db $10                                        ; $508c: $10
    dec l                                         ; $508d: $2d
    db $10                                        ; $508e: $10
    ld h, c                                       ; $508f: $61
    add b                                         ; $5090: $80
    ld d, a                                       ; $5091: $57
    ldh [$80], a                                  ; $5092: $e0 $80
    ld [de], a                                    ; $5094: $12
    ld c, $fb                                     ; $5095: $0e $fb
    inc b                                         ; $5097: $04
    ld a, e                                       ; $5098: $7b
    inc b                                         ; $5099: $04
    pop de                                        ; $509a: $d1
    inc b                                         ; $509b: $04
    ld a, [bc]                                    ; $509c: $0a
    jr jr_0c8_50a3                                ; $509d: $18 $04

    ld l, d                                       ; $509f: $6a
    db $fd                                        ; $50a0: $fd
    ret c                                         ; $50a1: $d8

    dec c                                         ; $50a2: $0d

jr_0c8_50a3:
    adc h                                         ; $50a3: $8c
    rrca                                          ; $50a4: $0f
    ld d, l                                       ; $50a5: $55
    ld [$9c28], sp                                ; $50a6: $08 $28 $9c
    and d                                         ; $50a9: $a2
    inc b                                         ; $50aa: $04
    db $eb                                        ; $50ab: $eb
    nop                                           ; $50ac: $00
    ret nc                                        ; $50ad: $d0

    ld a, c                                       ; $50ae: $79
    inc l                                         ; $50af: $2c
    dec c                                         ; $50b0: $0d
    ret nc                                        ; $50b1: $d0

    add hl, hl                                    ; $50b2: $29
    add $f8                                       ; $50b3: $c6 $f8
    nop                                           ; $50b5: $00
    ld bc, $7cff                                  ; $50b6: $01 $ff $7c
    add e                                         ; $50b9: $83
    ld a, a                                       ; $50ba: $7f
    add b                                         ; $50bb: $80
    rst $18                                       ; $50bc: $df
    nop                                           ; $50bd: $00
    nop                                           ; $50be: $00
    adc d                                         ; $50bf: $8a
    nop                                           ; $50c0: $00
    dec [hl]                                      ; $50c1: $35
    ret nz                                        ; $50c2: $c0

    ld b, $ff                                     ; $50c3: $06 $ff
    db $ec                                        ; $50c5: $ec
    inc bc                                        ; $50c6: $03
    ld b, b                                       ; $50c7: $40
    ld e, d                                       ; $50c8: $5a
    ld c, [hl]                                    ; $50c9: $4e
    dec b                                         ; $50ca: $05
    ld a, a                                       ; $50cb: $7f
    add b                                         ; $50cc: $80
    ld a, e                                       ; $50cd: $7b
    add b                                         ; $50ce: $80
    sub a                                         ; $50cf: $97
    ld b, b                                       ; $50d0: $40
    nop                                           ; $50d1: $00
    xor b                                         ; $50d2: $a8
    ld b, b                                       ; $50d3: $40
    and l                                         ; $50d4: $a5
    ld hl, sp+$10                                 ; $50d5: $f8 $10
    ld [$06ea], sp                                ; $50d7: $08 $ea $06
    ld b, b                                       ; $50da: $40
    nop                                           ; $50db: $00
    ld bc, $5460                                  ; $50dc: $01 $60 $54
    ccf                                           ; $50df: $3f
    add hl, sp                                    ; $50e0: $39
    ld e, $24                                     ; $50e1: $1e $24
    rra                                           ; $50e3: $1f
    nop                                           ; $50e4: $00
    ld a, [de]                                    ; $50e5: $1a
    rrca                                          ; $50e6: $0f
    dec c                                         ; $50e7: $0d
    rlca                                          ; $50e8: $07
    ld b, $03                                     ; $50e9: $06 $03
    inc bc                                        ; $50eb: $03
    ld bc, $0100                                  ; $50ec: $01 $00 $01
    nop                                           ; $50ef: $00
    sbc c                                         ; $50f0: $99
    halt                                          ; $50f1: $76

jr_0c8_50f2:
    ld [hl-], a                                   ; $50f2: $32
    push af                                       ; $50f3: $f5
    sbc c                                         ; $50f4: $99
    halt                                          ; $50f5: $76
    nop                                           ; $50f6: $00
    ld a, [hl-]                                   ; $50f7: $3a
    push af                                       ; $50f8: $f5

jr_0c8_50f9:
    jr jr_0c8_50f2                                ; $50f9: $18 $f7

    or c                                          ; $50fb: $b1
    rst $38                                       ; $50fc: $ff
    ld e, d                                       ; $50fd: $5a
    rst $30                                       ; $50fe: $f7
    nop                                           ; $50ff: $00
    or l                                          ; $5100: $b5
    rst $38                                       ; $5101: $ff
    ld c, a                                       ; $5102: $4f
    cp h                                          ; $5103: $bc
    sbc [hl]                                      ; $5104: $9e
    ld a, b                                       ; $5105: $78
    ld l, $f8                                     ; $5106: $2e $f8
    nop                                           ; $5108: $00
    ld e, h                                       ; $5109: $5c
    ldh a, [$bc]                                  ; $510a: $f0 $bc
    ldh [$78], a                                  ; $510c: $e0 $78
    ret nz                                        ; $510e: $c0

    ldh a, [$80]                                  ; $510f: $f0 $80
    inc d                                         ; $5111: $14
    ldh [rP1], a                                  ; $5112: $e0 $00
    ld bc, $0002                                  ; $5114: $01 $02 $00
    inc bc                                        ; $5117: $03
    inc b                                         ; $5118: $04
    jr nc, @+$04                                  ; $5119: $30 $02

    ld bc, $6a00                                  ; $511b: $01 $00 $6a
    db $fd                                        ; $511e: $fd
    ld d, c                                       ; $511f: $51
    cp $60                                        ; $5120: $fe $60
    rst $38                                       ; $5122: $ff
    ld d, h                                       ; $5123: $54
    db $eb                                        ; $5124: $eb
    nop                                           ; $5125: $00
    ld a, a                                       ; $5126: $7f
    rst $38                                       ; $5127: $ff
    nop                                           ; $5128: $00
    rst $38                                       ; $5129: $ff
    ld a, a                                       ; $512a: $7f
    rst $38                                       ; $512b: $ff
    ld b, b                                       ; $512c: $40
    rst $38                                       ; $512d: $ff
    nop                                           ; $512e: $00
    cp $01                                        ; $512f: $fe $01
    ld [hl], h                                    ; $5131: $74
    adc e                                         ; $5132: $8b
    add sp, $17                                   ; $5133: $e8 $17
    ld [bc], a                                    ; $5135: $02
    db $fd                                        ; $5136: $fd
    ld h, b                                       ; $5137: $60
    rst $38                                       ; $5138: $ff
    stop                                          ; $5139: $10 $00
    inc b                                         ; $513b: $04
    ld [$ff00], sp                                ; $513c: $08 $00 $ff
    ld bc, $02ff                                  ; $513f: $01 $ff $02
    ld de, $adff                                  ; $5142: $11 $ff $ad
    ld d, a                                       ; $5145: $57
    db $10                                        ; $5146: $10
    jr jr_0c8_50f9                                ; $5147: $18 $b0

    rst $38                                       ; $5149: $ff
    and b                                         ; $514a: $a0
    inc h                                         ; $514b: $24
    nop                                           ; $514c: $00
    ld [$ff80], sp                                ; $514d: $08 $80 $ff
    ld c, d                                       ; $5150: $4a
    or l                                          ; $5151: $b5
    jr nz, jr_0c8_517c                            ; $5152: $20 $28

    dec b                                         ; $5154: $05
    ld hl, sp+$08                                 ; $5155: $f8 $08
    inc b                                         ; $5157: $04
    ldh a, [rTAC]                                 ; $5158: $f0 $07
    ld hl, sp-$56                                 ; $515a: $f8 $aa
    ld d, l                                       ; $515c: $55
    jr nc, jr_0c8_5177                            ; $515d: $30 $18

    ld bc, $00ff                                  ; $515f: $01 $ff $00
    ld a, [bc]                                    ; $5162: $0a
    rst $38                                       ; $5163: $ff
    sub [hl]                                      ; $5164: $96
    ld a, a                                       ; $5165: $7f
    ld l, $fb                                     ; $5166: $2e $fb
    ld a, [$5257]                                 ; $5168: $fa $57 $52
    cp $50                                        ; $516b: $fe $50
    nop                                           ; $516d: $00
    cp $3a                                        ; $516e: $fe $3a
    nop                                           ; $5170: $00
    add b                                         ; $5171: $80
    nop                                           ; $5172: $00
    ld [bc], a                                    ; $5173: $02
    ld [$90c0], sp                                ; $5174: $08 $c0 $90

jr_0c8_5177:
    ld b, $00                                     ; $5177: $06 $00
    ld b, b                                       ; $5179: $40
    add b                                         ; $517a: $80
    inc b                                         ; $517b: $04

jr_0c8_517c:
    ld [$9cf3], sp                                ; $517c: $08 $f3 $9c
    or c                                          ; $517f: $b1
    sbc $00                                       ; $5180: $de $00
    jp nc, Jump_0c8_49bd                          ; $5182: $d2 $bd $49

    cp $c8                                        ; $5185: $fe $c8
    ld a, a                                       ; $5187: $7f
    ld d, h                                       ; $5188: $54
    ld a, a                                       ; $5189: $7f
    nop                                           ; $518a: $00
    ld l, d                                       ; $518b: $6a
    ccf                                           ; $518c: $3f
    dec d                                         ; $518d: $15
    ccf                                           ; $518e: $3f
    db $f4                                        ; $518f: $f4
    nop                                           ; $5190: $00
    ld a, [$0000]                                 ; $5191: $fa $00 $00
    db $fd                                        ; $5194: $fd
    nop                                           ; $5195: $00
    ld a, [hl]                                    ; $5196: $7e
    add b                                         ; $5197: $80
    cp a                                          ; $5198: $bf
    ld b, b                                       ; $5199: $40
    ld d, l                                       ; $519a: $55
    xor d                                         ; $519b: $aa
    ld [$d52a], sp                                ; $519c: $08 $2a $d5
    add c                                         ; $519f: $81
    rst $38                                       ; $51a0: $ff
    ldh [$08], a                                  ; $51a1: $e0 $08
    jr nz, jr_0c8_51a5                            ; $51a3: $20 $00

jr_0c8_51a5:
    add d                                         ; $51a5: $82
    nop                                           ; $51a6: $00
    nop                                           ; $51a7: $00
    ld d, h                                       ; $51a8: $54
    nop                                           ; $51a9: $00
    ld [$f700], a                                 ; $51aa: $ea $00 $f7
    nop                                           ; $51ad: $00
    cp $80                                        ; $51ae: $fe $80
    rst $28                                       ; $51b0: $ef
    nop                                           ; $51b1: $00
    ld [bc], a                                    ; $51b2: $02
    nop                                           ; $51b3: $00
    dec d                                         ; $51b4: $15
    nop                                           ; $51b5: $00
    ld a, [hl+]                                   ; $51b6: $2a
    nop                                           ; $51b7: $00
    ld d, l                                       ; $51b8: $55
    ld a, [bc]                                    ; $51b9: $0a
    nop                                           ; $51ba: $00
    ei                                            ; $51bb: $fb
    nop                                           ; $51bc: $00
    cp a                                          ; $51bd: $bf
    adc a                                         ; $51be: $8f
    nop                                           ; $51bf: $00
    nop                                           ; $51c0: $00
    jp nz, Jump_000_2000                          ; $51c1: $c2 $00 $20

    ld [hl+], a                                   ; $51c4: $22
    nop                                           ; $51c5: $00
    adc d                                         ; $51c6: $8a
    inc d                                         ; $51c7: $14
    nop                                           ; $51c8: $00
    xor e                                         ; $51c9: $ab
    nop                                           ; $51ca: $00
    ld a, a                                       ; $51cb: $7f
    sbc a                                         ; $51cc: $9f
    nop                                           ; $51cd: $00
    db $10                                        ; $51ce: $10
    jr nz, jr_0c8_51d1                            ; $51cf: $20 $00

jr_0c8_51d1:
    jr z, jr_0c8_51ff                             ; $51d1: $28 $2c

    nop                                           ; $51d3: $00
    cp d                                          ; $51d4: $ba
    nop                                           ; $51d5: $00
    ld l, l                                       ; $51d6: $6d
    nop                                           ; $51d7: $00
    cp [hl]                                       ; $51d8: $be
    add b                                         ; $51d9: $80
    xor l                                         ; $51da: $ad
    ld [$d300], sp                                ; $51db: $08 $00 $d3
    ld a, [hl]                                    ; $51de: $7e
    ld [hl], a                                    ; $51df: $77
    inc a                                         ; $51e0: $3c
    ccf                                           ; $51e1: $3f
    jr @+$17                                      ; $51e2: $18 $15

    sbc [hl]                                      ; $51e4: $9e
    nop                                           ; $51e5: $00
    ld b, c                                       ; $51e6: $41
    ld b, b                                       ; $51e7: $40
    db $10                                        ; $51e8: $10
    rst $18                                       ; $51e9: $df

Jump_0c8_51ea:
    ld a, d                                       ; $51ea: $7a
    nop                                           ; $51eb: $00
    add d                                         ; $51ec: $82
    ld b, b                                       ; $51ed: $40
    ld d, b                                       ; $51ee: $50
    nop                                           ; $51ef: $00
    inc de                                        ; $51f0: $13
    nop                                           ; $51f1: $00
    ld a, [hl+]                                   ; $51f2: $2a
    ld bc, $0057                                  ; $51f3: $01 $57 $00
    cp d                                          ; $51f6: $ba
    ld bc, $6e00                                  ; $51f7: $01 $00 $6e
    ld bc, $01be                                  ; $51fa: $01 $be $01
    cp $01                                        ; $51fd: $fe $01

jr_0c8_51ff:
    rst $38                                       ; $51ff: $ff
    ld bc, $4040                                  ; $5200: $01 $40 $40
    db $f4                                        ; $5203: $f4
    nop                                           ; $5204: $00
    ld c, b                                       ; $5205: $48
    ldh a, [rLY]                                  ; $5206: $f0 $44
    ld hl, sp+$41                                 ; $5208: $f8 $41

jr_0c8_520a:
    ld hl, sp+$02                                 ; $520a: $f8 $02
    ld c, [hl]                                    ; $520c: $4e
    pop af                                        ; $520d: $f1
    ld b, b                                       ; $520e: $40
    rst $38                                       ; $520f: $ff
    ld h, b                                       ; $5210: $60
    rst $18                                       ; $5211: $df
    xor $08                                       ; $5212: $ee $08
    dec b                                         ; $5214: $05
    nop                                           ; $5215: $00
    rst $38                                       ; $5216: $ff
    ld c, e                                       ; $5217: $4b
    dec bc                                        ; $5218: $0b
    cp a                                          ; $5219: $bf
    ld d, [hl]                                    ; $521a: $56
    inc l                                         ; $521b: $2c
    rst $38                                       ; $521c: $ff
    ld e, b                                       ; $521d: $58
    add b                                         ; $521e: $80
    ldh a, [rP1]                                  ; $521f: $f0 $00
    ld h, b                                       ; $5221: $60
    rst $38                                       ; $5222: $ff
    ret nz                                        ; $5223: $c0

    rst $38                                       ; $5224: $ff
    add d                                         ; $5225: $82
    ld sp, hl                                     ; $5226: $f9

Call_0c8_5227:
    ld [$0011], sp                                ; $5227: $08 $11 $00
    db $f4                                        ; $522a: $f4
    ld [$00a7], sp                                ; $522b: $08 $a7 $00
    rst $38                                       ; $522e: $ff
    dec b                                         ; $522f: $05
    ld a, [$1065]                                 ; $5230: $fa $65 $10
    inc b                                         ; $5233: $04
    rst $38                                       ; $5234: $ff
    dec d                                         ; $5235: $15
    ld a, [hl+]                                   ; $5236: $2a
    add b                                         ; $5237: $80
    ld a, a                                       ; $5238: $7f
    ld a, [hl+]                                   ; $5239: $2a
    jr jr_0c8_523e                                ; $523a: $18 $02

    rst $38                                       ; $523c: $ff
    nop                                           ; $523d: $00

jr_0c8_523e:
    dec d                                         ; $523e: $15
    db $e4                                        ; $523f: $e4
    jr z, jr_0c8_520a                             ; $5240: $28 $c8

    ld d, c                                       ; $5242: $51
    or b                                          ; $5243: $b0
    ld h, b                                       ; $5244: $60
    cp a                                          ; $5245: $bf
    ld bc, $c075                                  ; $5246: $01 $75 $c0
    cp b                                          ; $5249: $b8
    ret nz                                        ; $524a: $c0

    dec d                                         ; $524b: $15
    ldh [rSC], a                                  ; $524c: $e0 $02
    ld l, $01                                     ; $524e: $2e $01
    nop                                           ; $5250: $00
    add d                                         ; $5251: $82
    ld a, a                                       ; $5252: $7f
    ld d, [hl]                                    ; $5253: $56
    xor e                                         ; $5254: $ab
    jp nz, Jump_0c8_423f                          ; $5255: $c2 $3f $42

    ccf                                           ; $5258: $3f
    inc b                                         ; $5259: $04
    add d                                         ; $525a: $82
    ld a, a                                       ; $525b: $7f
    ld d, $eb                                     ; $525c: $16 $eb
    ret nz                                        ; $525e: $c0

    ld hl, sp+$00                                 ; $525f: $f8 $00
    ld b, b                                       ; $5261: $40
    add b                                         ; $5262: $80
    nop                                           ; $5263: $00
    ld l, b                                       ; $5264: $68
    add b                                         ; $5265: $80
    ld [hl], h                                    ; $5266: $74
    add b                                         ; $5267: $80
    ld e, d                                       ; $5268: $5a
    add b                                         ; $5269: $80
    rst $38                                       ; $526a: $ff
    add b                                         ; $526b: $80
    nop                                           ; $526c: $00
    ld a, a                                       ; $526d: $7f
    add b                                         ; $526e: $80
    ld a, [bc]                                    ; $526f: $0a
    rra                                           ; $5270: $1f
    dec h                                         ; $5271: $25
    rrca                                          ; $5272: $0f
    ld d, a                                       ; $5273: $57
    inc bc                                        ; $5274: $03
    ld d, c                                       ; $5275: $51
    cp e                                          ; $5276: $bb
    or b                                          ; $5277: $b0

jr_0c8_5278:
    jr nc, jr_0c8_5278                            ; $5278: $30 $fe

    ld [hl], h                                    ; $527a: $74
    ld bc, $ffa1                                  ; $527b: $01 $a1 $ff
    ld a, [hl]                                    ; $527e: $7e
    ld l, e                                       ; $527f: $6b
    ld de, $b080                                  ; $5280: $11 $80 $b0
    ld [$20df], sp                                ; $5283: $08 $df $20
    rst $30                                       ; $5286: $f7
    ld [$a25d], sp                                ; $5287: $08 $5d $a2
    xor d                                         ; $528a: $aa
    nop                                           ; $528b: $00
    ld d, l                                       ; $528c: $55
    db $10                                        ; $528d: $10
    rst $28                                       ; $528e: $ef
    add c                                         ; $528f: $81
    rst $38                                       ; $5290: $ff
    ld d, a                                       ; $5291: $57
    rst $38                                       ; $5292: $ff
    xor a                                         ; $5293: $af
    add b                                         ; $5294: $80
    add a                                         ; $5295: $87
    ld bc, $21de                                  ; $5296: $01 $de $21
    or l                                          ; $5299: $b5
    ld c, d                                       ; $529a: $4a
    ld c, d                                       ; $529b: $4a
    or l                                          ; $529c: $b5
    add b                                         ; $529d: $80
    nop                                           ; $529e: $00
    ld a, a                                       ; $529f: $7f
    ld a, [hl+]                                   ; $52a0: $2a
    rst $38                                       ; $52a1: $ff
    ld d, l                                       ; $52a2: $55
    rst $38                                       ; $52a3: $ff
    cp a                                          ; $52a4: $bf
    rst $38                                       ; $52a5: $ff
    ld a, l                                       ; $52a6: $7d
    nop                                           ; $52a7: $00
    add d                                         ; $52a8: $82
    or $09                                        ; $52a9: $f6 $09
    xor c                                         ; $52ab: $a9
    ld d, [hl]                                    ; $52ac: $56
    ld d, d                                       ; $52ad: $52
    xor l                                         ; $52ae: $ad
    nop                                           ; $52af: $00
    ld [bc], a                                    ; $52b0: $02
    rst $38                                       ; $52b1: $ff
    ld b, h                                       ; $52b2: $44
    rst $38                                       ; $52b3: $ff
    xor d                                         ; $52b4: $aa
    rst $38                                       ; $52b5: $ff
    push de                                       ; $52b6: $d5
    and a                                         ; $52b7: $a7
    ld bc, $00fd                                  ; $52b8: $01 $fd $00
    ld [bc], a                                    ; $52bb: $02
    ld e, a                                       ; $52bc: $5f
    and b                                         ; $52bd: $a0
    xor d                                         ; $52be: $aa
    ld d, l                                       ; $52bf: $55
    dec d                                         ; $52c0: $15
    ld [$2002], a                                 ; $52c1: $ea $02 $20
    db $fd                                        ; $52c4: $fd
    xor b                                         ; $52c5: $a8
    ld [hl], d                                    ; $52c6: $72
    ld bc, $02fd                                  ; $52c7: $01 $fd $02
    cp $01                                        ; $52ca: $fe $01
    cp e                                          ; $52cc: $bb
    ld [bc], a                                    ; $52cd: $02
    ld b, h                                       ; $52ce: $44
    push af                                       ; $52cf: $f5
    ld a, [bc]                                    ; $52d0: $0a
    ld c, d                                       ; $52d1: $4a
    or l                                          ; $52d2: $b5
    nop                                           ; $52d3: $00
    jr nc, jr_0c8_52d6                            ; $52d4: $30 $00

jr_0c8_52d6:
    xor [hl]                                      ; $52d6: $ae
    add b                                         ; $52d7: $80
    ret nc                                        ; $52d8: $d0

    ld bc, $03fd                                  ; $52d9: $01 $fd $03
    ld e, [hl]                                    ; $52dc: $5e
    and c                                         ; $52dd: $a1
    xor e                                         ; $52de: $ab
    ld d, l                                       ; $52df: $55
    dec d                                         ; $52e0: $15
    ld a, [bc]                                    ; $52e1: $0a
    db $eb                                        ; $52e2: $eb
    inc bc                                        ; $52e3: $03
    db $fd                                        ; $52e4: $fd
    xor c                                         ; $52e5: $a9
    jp nc, $5501                                  ; $52e6: $d2 $01 $55

    ld [$5621], a                                 ; $52e9: $ea $21 $56
    nop                                           ; $52ec: $00
    rst $38                                       ; $52ed: $ff
    ld l, h                                       ; $52ee: $6c
    cp $59                                        ; $52ef: $fe $59
    db $fc                                        ; $52f1: $fc
    ld [hl], d                                    ; $52f2: $72
    db $fc                                        ; $52f3: $fc
    ld h, b                                       ; $52f4: $60
    ret nz                                        ; $52f5: $c0

    and $11                                       ; $52f6: $e6 $11
    xor $09                                       ; $52f8: $ee $09
    and b                                         ; $52fa: $a0
    rrca                                          ; $52fb: $0f
    ld d, b                                       ; $52fc: $50
    rlca                                          ; $52fd: $07
    add sp, $06                                   ; $52fe: $e8 $06
    ret nz                                        ; $5300: $c0

    jp z, $fa29                                   ; $5301: $ca $29 $fa

    ld bc, $c087                                  ; $5304: $01 $87 $c0
    inc bc                                        ; $5307: $03
    and b                                         ; $5308: $a0
    ld bc, $61aa                                  ; $5309: $01 $aa $61
    ld e, a                                       ; $530c: $5f
    ld a, [bc]                                    ; $530d: $0a
    ld a, [de]                                    ; $530e: $1a
    ld d, $09                                     ; $530f: $16 $09
    ld a, [bc]                                    ; $5311: $0a
    rst $38                                       ; $5312: $ff
    inc [hl]                                      ; $5313: $34
    call nc, $1a16                                ; $5314: $d4 $16 $1a
    ld h, c                                       ; $5317: $61
    rst $38                                       ; $5318: $ff
    inc b                                         ; $5319: $04
    ld [bc], a                                    ; $531a: $02
    sbc l                                         ; $531b: $9d
    ld bc, $45fc                                  ; $531c: $01 $fc $45
    jr c, @-$54                                   ; $531f: $38 $aa

    ld [$8231], a                                 ; $5321: $ea $31 $82
    ld a, [$7f00]                                 ; $5324: $fa $00 $7f
    ld b, d                                       ; $5327: $42
    ccf                                           ; $5328: $3f
    rst $30                                       ; $5329: $f7
    adc b                                         ; $532a: $88
    cp [hl]                                       ; $532b: $be
    nop                                           ; $532c: $00
    push de                                       ; $532d: $d5
    ld bc, $abd4                                  ; $532e: $01 $d4 $ab
    and b                                         ; $5331: $a0
    rst $18                                       ; $5332: $df
    adc c                                         ; $5333: $89
    rst $30                                       ; $5334: $f7
    and d                                         ; $5335: $a2
    and b                                         ; $5336: $a0
    nop                                           ; $5337: $00
    nop                                           ; $5338: $00
    ret                                           ; $5339: $c9


    add b                                         ; $533a: $80
    ld b, b                                       ; $533b: $40
    ret nz                                        ; $533c: $c0

    ret nz                                        ; $533d: $c0

    ld h, b                                       ; $533e: $60
    ldh a, [rNR41]                                ; $533f: $f0 $20
    nop                                           ; $5341: $00

jr_0c8_5342:
    add hl, sp                                    ; $5342: $39
    db $10                                        ; $5343: $10
    sbc a                                         ; $5344: $9f
    ld e, $1d                                     ; $5345: $1e $1d
    ld a, [bc]                                    ; $5347: $0a
    adc a                                         ; $5348: $8f
    inc b                                         ; $5349: $04
    nop                                           ; $534a: $00
    rst $08                                       ; $534b: $cf
    or h                                          ; $534c: $b4
    ld a, c                                       ; $534d: $79
    add $67                                       ; $534e: $c6 $67
    ld l, c                                       ; $5350: $69
    ld a, c                                       ; $5351: $79
    ld h, $00                                     ; $5352: $26 $00
    dec bc                                        ; $5354: $0b
    db $f4                                        ; $5355: $f4
    dec hl                                        ; $5356: $2b
    ret c                                         ; $5357: $d8

    ld e, c                                       ; $5358: $59
    xor a                                         ; $5359: $af
    ld l, b                                       ; $535a: $68
    sub [hl]                                      ; $535b: $96
    nop                                           ; $535c: $00
    ei                                            ; $535d: $fb
    add h                                         ; $535e: $84
    ld c, h                                       ; $535f: $4c
    db $d3                                        ; $5360: $d3
    and $78                                       ; $5361: $e6 $78
    db $e4                                        ; $5363: $e4
    jr nc, jr_0c8_5366                            ; $5364: $30 $00

jr_0c8_5366:
    ret c                                         ; $5366: $d8

    or b                                          ; $5367: $b0
    jr nc, jr_0c8_5342                            ; $5368: $30 $d8

    ld c, b                                       ; $536a: $48
    inc l                                         ; $536b: $2c
    adc [hl]                                      ; $536c: $8e
    inc b                                         ; $536d: $04
    nop                                           ; $536e: $00
    ei                                            ; $536f: $fb
    adc h                                         ; $5370: $8c
    cpl                                           ; $5371: $2f
    ret nc                                        ; $5372: $d0

    ld d, a                                       ; $5373: $57
    ld l, b                                       ; $5374: $68
    ccf                                           ; $5375: $3f
    jr nz, jr_0c8_5378                            ; $5376: $20 $00

jr_0c8_5378:
    rra                                           ; $5378: $1f
    ld sp, $1807                                  ; $5379: $31 $07 $18
    dec c                                         ; $537c: $0d
    ld a, [bc]                                    ; $537d: $0a
    rrca                                          ; $537e: $0f
    inc b                                         ; $537f: $04
    nop                                           ; $5380: $00
    xor d                                         ; $5381: $aa
    rst $10                                       ; $5382: $d7
    ld d, [hl]                                    ; $5383: $56
    db $fd                                        ; $5384: $fd
    ret z                                         ; $5385: $c8

    ld [hl], a                                    ; $5386: $77
    ld h, [hl]                                    ; $5387: $66
    cp e                                          ; $5388: $bb
    nop                                           ; $5389: $00
    db $10                                        ; $538a: $10
    rst $38                                       ; $538b: $ff
    cp d                                          ; $538c: $ba
    ld e, [hl]                                    ; $538d: $5e
    ld a, h                                       ; $538e: $7c
    xor b                                         ; $538f: $a8
    call c, $0024                                 ; $5390: $dc $24 $00
    pop bc                                        ; $5393: $c1
    add b                                         ; $5394: $80
    adc d                                         ; $5395: $8a
    ret nz                                        ; $5396: $c0

    ld b, b                                       ; $5397: $40
    ldh [$b0], a                                  ; $5398: $e0 $b0
    ld h, b                                       ; $539a: $60
    nop                                           ; $539b: $00
    ld a, b                                       ; $539c: $78

jr_0c8_539d:
    ret nc                                        ; $539d: $d0

    add hl, bc                                    ; $539e: $09
    jr @+$0e                                      ; $539f: $18 $0c

    ld [$040e], sp                                ; $53a1: $08 $0e $04
    nop                                           ; $53a4: $00
    rst $10                                       ; $53a5: $d7
    xor b                                         ; $53a6: $a8
    ld [hl], l                                    ; $53a7: $75
    jp z, Jump_0c8_601f                           ; $53a8: $ca $1f $60

    ld l, [hl]                                    ; $53ab: $6e
    ld sp, $9b00                                  ; $53ac: $31 $00 $9b
    inc [hl]                                      ; $53af: $34
    rla                                           ; $53b0: $17
    jr @+$2c                                      ; $53b1: $18 $2a

    dec c                                         ; $53b3: $0d
    rrca                                          ; $53b4: $0f
    inc b                                         ; $53b5: $04
    nop                                           ; $53b6: $00
    ld a, l                                       ; $53b7: $7d
    add d                                         ; $53b8: $82
    ld a, e                                       ; $53b9: $7b
    call nz, $69d6                                ; $53ba: $c4 $d6 $69
    ld a, [c]                                     ; $53bd: $f2
    dec l                                         ; $53be: $2d
    nop                                           ; $53bf: $00
    sub h                                         ; $53c0: $94
    ld a, b                                       ; $53c1: $78
    pop hl                                        ; $53c2: $e1
    jr jr_0c8_539d                                ; $53c3: $18 $d8

    inc l                                         ; $53c5: $2c
    sbc [hl]                                      ; $53c6: $9e
    ld a, h                                       ; $53c7: $7c
    nop                                           ; $53c8: $00
    ld h, c                                       ; $53c9: $61
    db $fc                                        ; $53ca: $fc
    ld b, b                                       ; $53cb: $40
    db $fc                                        ; $53cc: $fc
    ld h, d                                       ; $53cd: $62
    call c, $fe41                                 ; $53ce: $dc $41 $fe
    ld [$d56a], sp                                ; $53d1: $08 $6a $d5
    ld d, l                                       ; $53d4: $55
    ld [$0ae4], a                                 ; $53d5: $ea $e4 $0a
    ld d, b                                       ; $53d8: $50
    ld b, $40                                     ; $53d9: $06 $40
    nop                                           ; $53db: $00
    ld b, $09                                     ; $53dc: $06 $09
    ld b, $12                                     ; $53de: $06 $12
    dec c                                         ; $53e0: $0d
    and b                                         ; $53e1: $a0
    rra                                           ; $53e2: $1f
    ld d, l                                       ; $53e3: $55
    ld b, b                                       ; $53e4: $40
    xor d                                         ; $53e5: $aa
    db $e4                                        ; $53e6: $e4
    ld a, [bc]                                    ; $53e7: $0a
    ld d, b                                       ; $53e8: $50
    ld bc, $0128                                  ; $53e9: $01 $28 $01
    ld e, $01                                     ; $53ec: $1e $01
    inc b                                         ; $53ee: $04
    adc l                                         ; $53ef: $8d
    inc bc                                        ; $53f0: $03
    ld a, d                                       ; $53f1: $7a
    add a                                         ; $53f2: $87
    ld d, l                                       ; $53f3: $55
    ld l, l                                       ; $53f4: $6d
    add hl, bc                                    ; $53f5: $09
    rst $38                                       ; $53f6: $ff
    jr c, jr_0c8_53f9                             ; $53f7: $38 $00

jr_0c8_53f9:
    add sp, $70                                   ; $53f9: $e8 $70
    ret nc                                        ; $53fb: $d0

    or [hl]                                       ; $53fc: $b6
    ldh [$79], a                                  ; $53fd: $e0 $79
    add $c0                                       ; $53ff: $c6 $c0
    db $10                                        ; $5401: $10
    add b                                         ; $5402: $80
    ld [$04f7], sp                                ; $5403: $08 $f7 $04
    dec bc                                        ; $5406: $0b
    add d                                         ; $5407: $82
    jr c, jr_0c8_544f                             ; $5408: $38 $45

    jr c, @+$04                                   ; $540a: $38 $02

    and [hl]                                      ; $540c: $a6
    jr @-$3e                                      ; $540d: $18 $c0

    inc a                                         ; $540f: $3c
    ld [hl+], a                                   ; $5410: $22
    inc e                                         ; $5411: $1c
    jr nc, jr_0c8_542c                            ; $5412: $30 $18

    add d                                         ; $5414: $82
    add b                                         ; $5415: $80
    ret c                                         ; $5416: $d8

    ld bc, $3fc2                                  ; $5417: $01 $c2 $3f
    ld [bc], a                                    ; $541a: $02
    ld a, a                                       ; $541b: $7f
    add d                                         ; $541c: $82
    ld a, a                                       ; $541d: $7f
    ld d, d                                       ; $541e: $52
    ld b, b                                       ; $541f: $40

Jump_0c8_5420:
    xor a                                         ; $5420: $af
    db $e4                                        ; $5421: $e4
    ld a, [bc]                                    ; $5422: $0a
    inc bc                                        ; $5423: $03
    ld b, $22                                     ; $5424: $06 $22
    inc bc                                        ; $5426: $03
    adc e                                         ; $5427: $8b
    ld bc, $a400                                  ; $5428: $01 $00 $a4
    add e                                         ; $542b: $83

jr_0c8_542c:
    add d                                         ; $542c: $82
    ldh a, [rSCY]                                 ; $542d: $f0 $42
    ldh [$a0], a                                  ; $542f: $e0 $a0
    ld h, b                                       ; $5431: $60
    nop                                           ; $5432: $00
    ld [hl], d                                    ; $5433: $72
    ldh a, [$d9]                                  ; $5434: $f0 $d9
    ld h, $be                                     ; $5436: $26 $be
    ld b, e                                       ; $5438: $43
    ld e, a                                       ; $5439: $5f
    and c                                         ; $543a: $a1
    nop                                           ; $543b: $00
    jp nz, $a9bf                                  ; $543c: $c2 $bf $a9

    or $6f                                        ; $543f: $f6 $6f
    ld d, h                                       ; $5441: $54
    ld a, l                                       ; $5442: $7d
    ld [hl+], a                                   ; $5443: $22
    nop                                           ; $5444: $00
    xor l                                         ; $5445: $ad

jr_0c8_5446:
    ld [hl-], a                                   ; $5446: $32
    ld h, $06                                     ; $5447: $26 $06
    ld [bc], a                                    ; $5449: $02
    inc bc                                        ; $544a: $03
    sub e                                         ; $544b: $93
    ld bc, $8000                                  ; $544c: $01 $00 $80

jr_0c8_544f:
    add c                                         ; $544f: $81
    add b                                         ; $5450: $80
    ret nz                                        ; $5451: $c0

    jp nz, Jump_000_1060                          ; $5452: $c2 $60 $10

    pop hl                                        ; $5455: $e1
    ld de, $3fd9                                  ; $5456: $11 $d9 $3f
    inc bc                                        ; $5459: $03
    stop                                          ; $545a: $10 $00
    add e                                         ; $545c: $83
    ld bc, $1084                                  ; $545d: $01 $84 $10
    nop                                           ; $5460: $00
    nop                                           ; $5461: $00
    ld b, d                                       ; $5462: $42
    ld h, b                                       ; $5463: $60
    jr nz, jr_0c8_5446                            ; $5464: $20 $e0

    ret nc                                        ; $5466: $d0

    ld [hl], b                                    ; $5467: $70
    ld c, e                                       ; $5468: $4b
    cp [hl]                                       ; $5469: $be
    nop                                           ; $546a: $00
    ld [hl-], a                                   ; $546b: $32
    rst $38                                       ; $546c: $ff
    sbc c                                         ; $546d: $99
    rst $30                                       ; $546e: $f7
    and l                                         ; $546f: $a5
    db $db                                        ; $5470: $db
    add h                                         ; $5471: $84
    rst $38                                       ; $5472: $ff
    ld bc, $7b44                                  ; $5473: $01 $44 $7b
    ld h, b                                       ; $5476: $60
    ccf                                           ; $5477: $3f
    ret nz                                        ; $5478: $c0

    ld a, a                                       ; $5479: $7f
    ld [bc], a                                    ; $547a: $02
    jr nz, @+$12                                  ; $547b: $20 $10

    ld b, b                                       ; $547d: $40
    sub b                                         ; $547e: $90
    jr nc, jr_0c8_5481                            ; $547f: $30 $00

jr_0c8_5481:
    ld h, d                                       ; $5481: $62
    ret nz                                        ; $5482: $c0

    inc h                                         ; $5483: $24
    ldh [$30], a                                  ; $5484: $e0 $30
    ldh a, [rNR41]                                ; $5486: $f0 $20
    ld [bc], a                                    ; $5488: $02
    rlca                                          ; $5489: $07
    ld b, b                                       ; $548a: $40
    ld [$8681], sp                                ; $548b: $08 $81 $86
    xor a                                         ; $548e: $af
    ldh a, [$73]                                  ; $548f: $f0 $73
    nop                                           ; $5491: $00
    ld c, h                                       ; $5492: $4c
    ld a, d                                       ; $5493: $7a
    dec h                                         ; $5494: $25
    dec l                                         ; $5495: $2d
    ld [hl-], a                                   ; $5496: $32
    sub d                                         ; $5497: $92
    cp $82                                        ; $5498: $fe $82
    nop                                           ; $549a: $00
    ld a, a                                       ; $549b: $7f
    dec h                                         ; $549c: $25
    rst $18                                       ; $549d: $df
    sbc c                                         ; $549e: $99
    rst $20                                       ; $549f: $e7
    ret nc                                        ; $54a0: $d0

    rst $38                                       ; $54a1: $ff
    call nz, $7b00                                ; $54a2: $c4 $00 $7b
    xor b                                         ; $54a5: $a8
    ld [hl], a                                    ; $54a6: $77
    ld [bc], a                                    ; $54a7: $02
    cp l                                          ; $54a8: $bd
    ret nc                                        ; $54a9: $d0

    ld hl, sp+$4c                                 ; $54aa: $f8 $4c
    nop                                           ; $54ac: $00
    cp b                                          ; $54ad: $b8
    dec c                                         ; $54ae: $0d
    db $fc                                        ; $54af: $fc
    db $f4                                        ; $54b0: $f4
    ld a, $13                                     ; $54b1: $3e $13
    cp $33                                        ; $54b3: $fe $33

jr_0c8_54b5:
    nop                                           ; $54b5: $00
    rst $28                                       ; $54b6: $ef
    adc h                                         ; $54b7: $8c
    rst $30                                       ; $54b8: $f7
    adc e                                         ; $54b9: $8b
    db $fd                                        ; $54ba: $fd
    ld d, l                                       ; $54bb: $55
    ld a, [de]                                    ; $54bc: $1a
    ld e, $00                                     ; $54bd: $1e $00
    add hl, bc                                    ; $54bf: $09
    ld b, a                                       ; $54c0: $47
    inc c                                         ; $54c1: $0c
    dec h                                         ; $54c2: $25
    ld b, $03                                     ; $54c3: $06 $03
    ld [bc], a                                    ; $54c5: $02
    inc bc                                        ; $54c6: $03
    add b                                         ; $54c7: $80
    ld h, [hl]                                    ; $54c8: $66
    nop                                           ; $54c9: $00
    ei                                            ; $54ca: $fb
    add a                                         ; $54cb: $87
    halt                                          ; $54cc: $76
    sbc e                                         ; $54cd: $9b
    sbc d                                         ; $54ce: $9a
    ld l, a                                       ; $54cf: $6f
    or b                                          ; $54d0: $b0
    nop                                           ; $54d1: $00
    ld l, a                                       ; $54d2: $6f
    ld l, $d7                                     ; $54d3: $2e $d7
    adc [hl]                                      ; $54d5: $8e
    ld [hl], e                                    ; $54d6: $73
    rst $18                                       ; $54d7: $df
    ld hl, $004d                                  ; $54d8: $21 $4d $00
    or e                                          ; $54db: $b3
    ld l, a                                       ; $54dc: $6f
    sub h                                         ; $54dd: $94
    ld b, h                                       ; $54de: $44
    cp e                                          ; $54df: $bb
    dec l                                         ; $54e0: $2d
    jp c, Jump_000_000f                           ; $54e1: $da $0f $00

    db $fc                                        ; $54e4: $fc
    ld sp, $b3ee                                  ; $54e5: $31 $ee $b3
    xor $a1                                       ; $54e8: $ee $a1
    ld a, a                                       ; $54ea: $7f

Jump_0c8_54eb:
    dec h                                         ; $54eb: $25
    nop                                           ; $54ec: $00
    ei                                            ; $54ed: $fb
    sub d                                         ; $54ee: $92
    rst $28                                       ; $54ef: $ef
    or b                                          ; $54f0: $b0
    ld e, a                                       ; $54f1: $5f
    ld a, d                                       ; $54f2: $7a
    adc l                                         ; $54f3: $8d
    ld d, l                                       ; $54f4: $55
    nop                                           ; $54f5: $00
    xor a                                         ; $54f6: $af
    ld h, h                                       ; $54f7: $64
    sub a                                         ; $54f8: $97
    sub [hl]                                      ; $54f9: $96
    ld l, e                                       ; $54fa: $6b
    cp a                                          ; $54fb: $bf
    ld b, c                                       ; $54fc: $41
    ld e, l                                       ; $54fd: $5d
    nop                                           ; $54fe: $00
    and e                                         ; $54ff: $a3
    adc $b0                                       ; $5500: $ce $b0

Call_0c8_5502:
    add b                                         ; $5502: $80
    ld hl, sp+$3c                                 ; $5503: $f8 $3c
    ret c                                         ; $5505: $d8

    ld a, b                                       ; $5506: $78
    jr nz, jr_0c8_54b5                            ; $5507: $20 $ac

    inc b                                         ; $5509: $04
    ld hl, sp+$02                                 ; $550a: $f8 $02
    pop de                                        ; $550c: $d1
    cp a                                          ; $550d: $bf
    dec d                                         ; $550e: $15
    ei                                            ; $550f: $fb
    sub h                                         ; $5510: $94
    nop                                           ; $5511: $00
    rst $28                                       ; $5512: $ef
    dec d                                         ; $5513: $15
    ld a, [de]                                    ; $5514: $1a
    ld e, a                                       ; $5515: $5f
    ld [$0c3b], sp                                ; $5516: $08 $3b $0c
    dec c                                         ; $5519: $0d
    nop                                           ; $551a: $00
    or [hl]                                       ; $551b: $b6
    ld c, a                                       ; $551c: $4f
    or d                                          ; $551d: $b2
    db $dd                                        ; $551e: $dd
    inc hl                                        ; $551f: $23
    ld e, e                                       ; $5520: $5b
    and l                                         ; $5521: $a5
    ld [hl], $00                                  ; $5522: $36 $00
    jp z, $1fd6                                   ; $5524: $ca $d6 $1f

    ld e, b                                       ; $5527: $58
    xor a                                         ; $5528: $af
    ld l, c                                       ; $5529: $69
    sbc a                                         ; $552a: $9f
    ld [hl], l                                    ; $552b: $75
    nop                                           ; $552c: $00
    add $ee                                       ; $552d: $c6 $ee
    inc de                                        ; $552f: $13
    cp l                                          ; $5530: $bd
    ld b, a                                       ; $5531: $47
    ld a, [hl]                                    ; $5532: $7e
    sub c                                         ; $5533: $91
    di                                            ; $5534: $f3
    nop                                           ; $5535: $00
    adc h                                         ; $5536: $8c
    ld e, h                                       ; $5537: $5c
    rst $30                                       ; $5538: $f7
    xor c                                         ; $5539: $a9
    ld a, [hl]                                    ; $553a: $7e
    ld hl, sp+$3f                                 ; $553b: $f8 $3f
    jp nc, Jump_000_3f00                          ; $553d: $d2 $00 $3f

    or c                                          ; $5540: $b1
    ld c, [hl]                                    ; $5541: $4e
    ld l, d                                       ; $5542: $6a
    db $dd                                        ; $5543: $dd
    ld b, $f5                                     ; $5544: $06 $f5
    add d                                         ; $5546: $82
    nop                                           ; $5547: $00
    ld b, $d6                                     ; $5548: $06 $d6
    db $fd                                        ; $554a: $fd
    ld e, l                                       ; $554b: $5d
    or $68                                        ; $554c: $f6 $68
    rst $38                                       ; $554e: $ff
    db $f4                                        ; $554f: $f4
    nop                                           ; $5550: $00
    db $db                                        ; $5551: $db
    ld c, [hl]                                    ; $5552: $4e
    cp a                                          ; $5553: $bf
    cp b                                          ; $5554: $b8
    ld c, a                                       ; $5555: $4f
    ld a, b                                       ; $5556: $78
    add a                                         ; $5557: $87
    jr c, jr_0c8_555a                             ; $5558: $38 $00

jr_0c8_555a:
    rst $10                                       ; $555a: $d7
    db $fd                                        ; $555b: $fd
    jp nz, $e956                                  ; $555c: $c2 $56 $e9

    or b                                          ; $555f: $b0
    ld l, a                                       ; $5560: $6f
    dec de                                        ; $5561: $1b
    nop                                           ; $5562: $00
    push af                                       ; $5563: $f5
    dec c                                         ; $5564: $0d
    ld a, [$fc2b]                                 ; $5565: $fa $2b $fc
    ld h, [hl]                                    ; $5568: $66
    db $dd                                        ; $5569: $dd
    sub e                                         ; $556a: $93
    nop                                           ; $556b: $00
    cp $f1                                        ; $556c: $fe $f1
    ld e, a                                       ; $556e: $5f
    daa                                           ; $556f: $27
    db $fd                                        ; $5570: $fd
    ld a, b                                       ; $5571: $78
    or a                                          ; $5572: $b7
    or l                                          ; $5573: $b5
    nop                                           ; $5574: $00
    ld e, e                                       ; $5575: $5b
    ld [$dabf], sp                                ; $5576: $08 $bf $da
    cpl                                           ; $5579: $2f
    sbc b                                         ; $557a: $98
    rst $20                                       ; $557b: $e7
    cp c                                          ; $557c: $b9
    nop                                           ; $557d: $00
    ld b, a                                       ; $557e: $47
    or b                                          ; $557f: $b0
    ret nz                                        ; $5580: $c0

    ld [$82e0], sp                                ; $5581: $08 $e0 $82
    ld [hl], b                                    ; $5584: $70
    sbc b                                         ; $5585: $98
    nop                                           ; $5586: $00
    ld [hl], b                                    ; $5587: $70
    ld b, c                                       ; $5588: $41
    cp b                                          ; $5589: $b8
    ld [$a6fc], sp                                ; $558a: $08 $fc $a6
    db $fc                                        ; $558d: $fc
    adc d                                         ; $558e: $8a
    nop                                           ; $558f: $00
    cp $c1                                        ; $5590: $fe $c1
    ld a, [hl]                                    ; $5592: $7e
    ld l, l                                       ; $5593: $6d
    ld [hl], a                                    ; $5594: $77
    cp b                                          ; $5595: $b8
    ccf                                           ; $5596: $3f
    ld sp, $1f00                                  ; $5597: $31 $00 $1f
    ld [$111f], sp                                ; $559a: $08 $1f $11
    rrca                                          ; $559d: $0f
    and l                                         ; $559e: $a5
    ld b, $03                                     ; $559f: $06 $03
    nop                                           ; $55a1: $00
    ld b, $ff                                     ; $55a2: $06 $ff
    ret nz                                        ; $55a4: $c0

    ld d, e                                       ; $55a5: $53
    xor $2a                                       ; $55a6: $ee $2a
    push af                                       ; $55a8: $f5
    dec a                                         ; $55a9: $3d
    nop                                           ; $55aa: $00
    ld a, [c]                                     ; $55ab: $f2
    ld e, [hl]                                    ; $55ac: $5e
    ld sp, hl                                     ; $55ad: $f9
    cp c                                          ; $55ae: $b9
    ld c, h                                       ; $55af: $4c
    ld a, l                                       ; $55b0: $7d
    add [hl]                                      ; $55b1: $86
    ld e, e                                       ; $55b2: $5b
    nop                                           ; $55b3: $00
    and [hl]                                      ; $55b4: $a6
    ld [hl], l                                    ; $55b5: $75
    jp z, Jump_0c8_60df                           ; $55b6: $ca $df $60

    ld l, l                                       ; $55b9: $6d
    or d                                          ; $55ba: $b2
    ld e, a                                       ; $55bb: $5f
    nop                                           ; $55bc: $00
    or d                                          ; $55bd: $b2
    xor a                                         ; $55be: $af
    ld e, b                                       ; $55bf: $58
    ld e, d                                       ; $55c0: $5a
    xor h                                         ; $55c1: $ac
    ld a, d                                       ; $55c2: $7a
    add l                                         ; $55c3: $85
    ld a, [hl-]                                   ; $55c4: $3a
    nop                                           ; $55c5: $00
    rst $10                                       ; $55c6: $d7
    ld b, d                                       ; $55c7: $42
    inc bc                                        ; $55c8: $03
    sub a                                         ; $55c9: $97
    ld bc, $80c9                                  ; $55ca: $01 $c9 $80
    adc b                                         ; $55cd: $88
    nop                                           ; $55ce: $00
    ret nz                                        ; $55cf: $c0

    ret z                                         ; $55d0: $c8

    ld h, b                                       ; $55d1: $60
    ld h, d                                       ; $55d2: $62
    and b                                         ; $55d3: $a0
    ld de, $1130                                  ; $55d4: $11 $30 $11
    nop                                           ; $55d7: $00
    ld e, $e7                                     ; $55d8: $1e $e7
    dec de                                        ; $55da: $1b
    ld a, h                                       ; $55db: $7c
    add e                                         ; $55dc: $83
    ld [$5f95], a                                 ; $55dd: $ea $95 $5f
    nop                                           ; $55e0: $00
    db $e4                                        ; $55e1: $e4
    db $f4                                        ; $55e2: $f4
    ld c, e                                       ; $55e3: $4b
    ld a, b                                       ; $55e4: $78
    daa                                           ; $55e5: $27
    db $eb                                        ; $55e6: $eb
    inc [hl]                                      ; $55e7: $34
    ld [hl], $00                                  ; $55e8: $36 $00
    reti                                          ; $55ea: $d9


    ld h, [hl]                                    ; $55eb: $66

jr_0c8_55ec:
    db $db                                        ; $55ec: $db
    cpl                                           ; $55ed: $2f
    sub c                                         ; $55ee: $91
    ei                                            ; $55ef: $fb
    add h                                         ; $55f0: $84
    db $ed                                        ; $55f1: $ed
    nop                                           ; $55f2: $00
    jp nc, Jump_0c8_78d7                          ; $55f3: $d2 $d7 $78

    and b                                         ; $55f6: $a0
    ld [hl], b                                    ; $55f7: $70
    ret nc                                        ; $55f8: $d0

    or b                                          ; $55f9: $b0
    ld sp, $d800                                  ; $55fa: $31 $00 $d8
    xor [hl]                                      ; $55fd: $ae
    ld d, e                                       ; $55fe: $53
    db $db                                        ; $55ff: $db
    dec h                                         ; $5600: $25
    ei                                            ; $5601: $fb
    adc h                                         ; $5602: $8c
    xor a                                         ; $5603: $af
    nop                                           ; $5604: $00
    ret nc                                        ; $5605: $d0

    ld d, l                                       ; $5606: $55
    ld l, d                                       ; $5607: $6a
    ld a, d                                       ; $5608: $7a
    dec h                                         ; $5609: $25
    ld e, $31                                     ; $560a: $1e $31
    ld d, $00                                     ; $560c: $16 $00
    add hl, de                                    ; $560e: $19
    ld c, e                                       ; $560f: $4b
    or a                                          ; $5610: $b7
    dec b                                         ; $5611: $05
    ei                                            ; $5612: $fb
    xor d                                         ; $5613: $aa
    rst $10                                       ; $5614: $d7
    ld d, b                                       ; $5615: $50
    nop                                           ; $5616: $00
    rst $38                                       ; $5617: $ff
    rst $18                                       ; $5618: $df
    ld [hl], l                                    ; $5619: $75
    ld [c], a                                     ; $561a: $e2
    ccf                                           ; $561b: $3f
    inc e                                         ; $561c: $1c
    ei                                            ; $561d: $fb
    ld [hl], $30                                  ; $561e: $36 $30
    sbc $02                                       ; $5620: $de $02
    adc $01                                       ; $5622: $ce $01
    ld h, h                                       ; $5624: $64
    ld a, [de]                                    ; $5625: $1a
    or d                                          ; $5626: $b2
    ld h, b                                       ; $5627: $60
    ret c                                         ; $5628: $d8

    ldh a, [rP1]                                  ; $5629: $f0 $00
    ld d, b                                       ; $562b: $50
    jr jr_0c8_55ec                                ; $562c: $18 $be

    ld b, e                                       ; $562e: $43
    rst $38                                       ; $562f: $ff
    ld bc, $b8c7                                  ; $5630: $01 $c7 $b8
    nop                                           ; $5633: $00
    or l                                          ; $5634: $b5
    jp z, Jump_0c8_4877                           ; $5635: $ca $77 $48

    ld a, [hl]                                    ; $5638: $7e
    ld hl, $3609                                  ; $5639: $21 $09 $36
    nop                                           ; $563c: $00
    sbc a                                         ; $563d: $9f
    db $10                                        ; $563e: $10
    cp $03                                        ; $563f: $fe $03
    db $eb                                        ; $5641: $eb
    dec d                                         ; $5642: $15
    call c, Call_000_00a3                         ; $5643: $dc $a3 $00
    ld l, e                                       ; $5646: $6b
    call nc, Call_0c8_68d7                        ; $5647: $d4 $d7 $68
    di                                            ; $564a: $f3
    dec l                                         ; $564b: $2d
    ret nc                                        ; $564c: $d0

    inc a                                         ; $564d: $3c
    ld bc, $58b0                                  ; $564e: $01 $b0 $58
    sbc a                                         ; $5651: $9f
    ld a, [bc]                                    ; $5652: $0a
    dec b                                         ; $5653: $05
    inc c                                         ; $5654: $0c
    add a                                         ; $5655: $87
    call nc, Call_000_0011                        ; $5656: $d4 $11 $00
    and e                                         ; $5659: $a3
    add c                                         ; $565a: $81
    and [hl]                                      ; $565b: $a6
    ret nc                                        ; $565c: $d0

    jp nz, Jump_0c8_7ce0                          ; $565d: $c2 $e0 $7c

    adc e                                         ; $5660: $8b
    nop                                           ; $5661: $00
    ld d, c                                       ; $5662: $51
    xor [hl]                                      ; $5663: $ae
    add sp, $16                                   ; $5664: $e8 $16
    sbc a                                         ; $5666: $9f
    ld h, d                                       ; $5667: $62
    rst $30                                       ; $5668: $f7
    add hl, bc                                    ; $5669: $09
    nop                                           ; $566a: $00
    ld a, d                                       ; $566b: $7a
    and a                                         ; $566c: $a7
    pop bc                                        ; $566d: $c1
    cp [hl]                                       ; $566e: $be
    db $eb                                        ; $566f: $eb
    ld d, h                                       ; $5670: $54
    inc e                                         ; $5671: $1c
    ld l, b                                       ; $5672: $68
    inc b                                         ; $5673: $04
    add [hl]                                      ; $5674: $86
    inc c                                         ; $5675: $0c
    ld h, $06                                     ; $5676: $26 $06
    ld b, a                                       ; $5678: $47
    adc [hl]                                      ; $5679: $8e
    ld bc, $8185                                  ; $567a: $01 $85 $81
    nop                                           ; $567d: $00
    add c                                         ; $567e: $81
    ret nz                                        ; $567f: $c0

    ldh [rLCDC], a                                ; $5680: $e0 $40
    dec e                                         ; $5682: $1d
    ld a, [bc]                                    ; $5683: $0a
    rlca                                          ; $5684: $07
    inc c                                         ; $5685: $0c
    nop                                           ; $5686: $00
    dec b                                         ; $5687: $05
    ld b, $07                                     ; $5688: $06 $07
    ld [bc], a                                    ; $568a: $02
    add c                                         ; $568b: $81
    inc bc                                        ; $568c: $03
    ld h, c                                       ; $568d: $61
    add c                                         ; $568e: $81
    nop                                           ; $568f: $00
    call nz, $e080                                ; $5690: $c4 $80 $e0
    ld b, b                                       ; $5693: $40
    inc a                                         ; $5694: $3c
    ret z                                         ; $5695: $c8

    ld [hl], h                                    ; $5696: $74
    xor h                                         ; $5697: $ac
    nop                                           ; $5698: $00
    db $f4                                        ; $5699: $f4
    ld c, $1e                                     ; $569a: $0e $1e
    rst $38                                       ; $569c: $ff
    cp e                                          ; $569d: $bb
    rst $30                                       ; $569e: $f7
    ld hl, $00df                                  ; $569f: $21 $df $00
    adc b                                         ; $56a2: $88
    rst $38                                       ; $56a3: $ff
    jp nz, $1d7d                                  ; $56a4: $c2 $7d $1d

    ld [$0c06], sp                                ; $56a7: $08 $06 $0c
    ld l, b                                       ; $56aa: $68
    inc d                                         ; $56ab: $14
    cp [hl]                                       ; $56ac: $be
    ld bc, $0a24                                  ; $56ad: $01 $24 $0a
    sub c                                         ; $56b0: $91
    inc b                                         ; $56b1: $04
    ld [bc], a                                    ; $56b2: $02
    rra                                           ; $56b3: $1f
    ld [$0826], sp                                ; $56b4: $08 $26 $08
    dec c                                         ; $56b7: $0d
    ld b, $07                                     ; $56b8: $06 $07
    rlca                                          ; $56ba: $07
    call c, $9605                                 ; $56bb: $dc $05 $96
    add c                                         ; $56be: $81
    sub c                                         ; $56bf: $91
    nop                                           ; $56c0: $00
    and $e3                                       ; $56c1: $e6 $e3
    ld e, h                                       ; $56c3: $5c
    call c, $9e28                                 ; $56c4: $dc $28 $9e
    ld a, h                                       ; $56c7: $7c
    sub h                                         ; $56c8: $94
    nop                                           ; $56c9: $00
    cp $9b                                        ; $56ca: $fe $9b
    halt                                          ; $56cc: $76
    dec h                                         ; $56cd: $25
    rst $18                                       ; $56ce: $df
    add hl, bc                                    ; $56cf: $09
    rst $30                                       ; $56d0: $f7
    add d                                         ; $56d1: $82
    nop                                           ; $56d2: $00
    db $fd                                        ; $56d3: $fd
    ld c, b                                       ; $56d4: $48
    rst $38                                       ; $56d5: $ff
    ldh [$60], a                                  ; $56d6: $e0 $60
    ld [hl+], a                                   ; $56d8: $22
    ldh a, [$f8]                                  ; $56d9: $f0 $f8
    nop                                           ; $56db: $00
    ldh a, [rNR30]                                ; $56dc: $f0 $1a
    ld hl, sp+$69                                 ; $56de: $f8 $69
    cp h                                          ; $56e0: $bc
    sub h                                         ; $56e1: $94
    ld a, [hl]                                    ; $56e2: $7e
    ld h, c                                       ; $56e3: $61
    nop                                           ; $56e4: $00
    cp [hl]                                       ; $56e5: $be
    ld [bc], a                                    ; $56e6: $02
    rst $38                                       ; $56e7: $ff
    ccf                                           ; $56e8: $3f
    ld h, b                                       ; $56e9: $60
    xor l                                         ; $56ea: $ad
    ld [hl-], a                                   ; $56eb: $32
    dec a                                         ; $56ec: $3d
    ld [bc], a                                    ; $56ed: $02
    ld [de], a                                    ; $56ee: $12
    ld b, [hl]                                    ; $56ef: $46
    add hl, de                                    ; $56f0: $19
    inc bc                                        ; $56f1: $03
    inc c                                         ; $56f2: $0c
    ld c, l                                       ; $56f3: $4d
    ld h, [hl]                                    ; $56f4: $66
    nop                                           ; $56f5: $00
    jr nz, jr_0c8_56f8                            ; $56f6: $20 $00

jr_0c8_56f8:
    inc bc                                        ; $56f8: $03
    nop                                           ; $56f9: $00
    pop hl                                        ; $56fa: $e1
    dec h                                         ; $56fb: $25
    cp e                                          ; $56fc: $bb
    ld a, [c]                                     ; $56fd: $f2
    rra                                           ; $56fe: $1f
    ldh [rP1], a                                  ; $56ff: $e0 $00
    rra                                           ; $5701: $1f

jr_0c8_5702:
    add sp, $2f                                   ; $5702: $e8 $2f
    inc e                                         ; $5704: $1c
    rst $20                                       ; $5705: $e7
    adc [hl]                                      ; $5706: $8e
    ld [hl], e                                    ; $5707: $73
    call nc, Call_000_2b00                        ; $5708: $d4 $00 $2b
    ld [hl-], a                                   ; $570b: $32
    ld h, b                                       ; $570c: $60
    inc b                                         ; $570d: $04
    ldh a, [$91]                                  ; $570e: $f0 $91
    ld a, d                                       ; $5710: $7a
    ld b, e                                       ; $5711: $43
    nop                                           ; $5712: $00
    cp h                                          ; $5713: $bc
    ld a, d                                       ; $5714: $7a
    db $dd                                        ; $5715: $dd
    dec sp                                        ; $5716: $3b
    db $ec                                        ; $5717: $ec
    inc bc                                        ; $5718: $03
    cp $07                                        ; $5719: $fe $07
    nop                                           ; $571b: $00
    rst $38                                       ; $571c: $ff
    jr nz, jr_0c8_579e                            ; $571d: $20 $7f

    nop                                           ; $571f: $00
    ld a, a                                       ; $5720: $7f
    jr nc, jr_0c8_5702                            ; $5721: $30 $df

    ld l, b                                       ; $5723: $68
    nop                                           ; $5724: $00
    sbc a                                         ; $5725: $9f
    rst $18                                       ; $5726: $df
    dec l                                         ; $5727: $2d
    db $ec                                        ; $5728: $ec
    sub a                                         ; $5729: $97
    xor d                                         ; $572a: $aa
    ld d, a                                       ; $572b: $57
    db $fd                                        ; $572c: $fd
    nop                                           ; $572d: $00
    ld b, e                                       ; $572e: $43
    inc h                                         ; $572f: $24
    ldh [rSVBK], a                                ; $5730: $e0 $70
    ldh a, [$b8]                                  ; $5732: $f0 $b8
    ldh a, [$a8]                                  ; $5734: $f0 $a8
    ld [bc], a                                    ; $5736: $02
    ret c                                         ; $5737: $d8

    ld b, c                                       ; $5738: $41
    cp h                                          ; $5739: $bc
    pop de                                        ; $573a: $d1
    ld l, [hl]                                    ; $573b: $6e
    inc h                                         ; $573c: $24
    inc d                                         ; $573d: $14
    ld b, $2a                                     ; $573e: $06 $2a
    jr nz, jr_0c8_57a7                            ; $5740: $20 $65

    dec l                                         ; $5742: $2d
    ld d, b                                       ; $5743: $50
    nop                                           ; $5744: $00
    ld c, a                                       ; $5745: $4f
    jr jr_0c8_5753                                ; $5746: $18 $0b

    inc c                                         ; $5748: $0c
    cp a                                          ; $5749: $bf
    nop                                           ; $574a: $00
    inc [hl]                                      ; $574b: $34
    ccf                                           ; $574c: $3f
    jp nz, Jump_000_23df                          ; $574d: $c2 $df $23

    and [hl]                                      ; $5750: $a6
    ld a, e                                       ; $5751: $7b
    ld b, d                                       ; $5752: $42

jr_0c8_5753:
    nop                                           ; $5753: $00
    cp l                                          ; $5754: $bd
    db $f4                                        ; $5755: $f4
    rra                                           ; $5756: $1f
    ld [$de1f], a                                 ; $5757: $ea $1f $de
    dec l                                         ; $575a: $2d
    cp h                                          ; $575b: $bc
    nop                                           ; $575c: $00
    ld b, a                                       ; $575d: $47
    cp a                                          ; $575e: $bf
    ld b, d                                       ; $575f: $42
    xor b                                         ; $5760: $a8
    ld d, a                                       ; $5761: $57
    dec l                                         ; $5762: $2d
    rst $30                                       ; $5763: $f7
    xor b                                         ; $5764: $a8
    nop                                           ; $5765: $00
    rst $18                                       ; $5766: $df
    ld b, [hl]                                    ; $5767: $46
    db $fd                                        ; $5768: $fd
    pop bc                                        ; $5769: $c1
    ld a, [hl]                                    ; $576a: $7e
    ld l, [hl]                                    ; $576b: $6e
    cp l                                          ; $576c: $bd
    jp c, Jump_000_3f00                           ; $576d: $da $00 $3f

    ld h, a                                       ; $5770: $67
    sbc [hl]                                      ; $5771: $9e
    ei                                            ; $5772: $fb
    ld c, h                                       ; $5773: $4c
    add c                                         ; $5774: $81
    ld bc, $00d0                                  ; $5775: $01 $d0 $00
    add a                                         ; $5778: $87
    ret nc                                        ; $5779: $d0

    rst $38                                       ; $577a: $ff
    ld c, d                                       ; $577b: $4a
    push af                                       ; $577c: $f5
    ld h, h                                       ; $577d: $64
    rst $38                                       ; $577e: $ff
    sub h                                         ; $577f: $94
    nop                                           ; $5780: $00
    ei                                            ; $5781: $fb
    dec sp                                        ; $5782: $3b
    sbc $1a                                       ; $5783: $de $1a
    ld l, a                                       ; $5785: $6f
    ld c, a                                       ; $5786: $4f
    or c                                          ; $5787: $b1
    ld e, e                                       ; $5788: $5b
    nop                                           ; $5789: $00
    and h                                         ; $578a: $a4
    ret                                           ; $578b: $c9


    sub $56                                       ; $578c: $d6 $56
    jp hl                                         ; $578e: $e9


    ld [hl-], a                                   ; $578f: $32
    db $ed                                        ; $5790: $ed
    jp nc, Jump_0c8_7d00                          ; $5791: $d2 $00 $7d

    add l                                         ; $5794: $85
    ld a, [$b96e]                                 ; $5795: $fa $6e $b9
    push hl                                       ; $5798: $e5
    ld a, e                                       ; $5799: $7b
    sub b                                         ; $579a: $90
    nop                                           ; $579b: $00
    rst $28                                       ; $579c: $ef
    inc hl                                        ; $579d: $23

jr_0c8_579e:
    rst $18                                       ; $579e: $df
    ld d, h                                       ; $579f: $54
    rst $38                                       ; $57a0: $ff
    dec h                                         ; $57a1: $25
    rst $38                                       ; $57a2: $ff
    or l                                          ; $57a3: $b5
    nop                                           ; $57a4: $00
    ld e, e                                       ; $57a5: $5b
    ld d, d                                       ; $57a6: $52

jr_0c8_57a7:
    cp a                                          ; $57a7: $bf
    reti                                          ; $57a8: $d9


    cpl                                           ; $57a9: $2f
    dec e                                         ; $57aa: $1d
    and e                                         ; $57ab: $a3
    dec [hl]                                      ; $57ac: $35
    nop                                           ; $57ad: $00
    adc $80                                       ; $57ae: $ce $80
    ldh a, [rWY]                                  ; $57b0: $f0 $4a
    ldh [rNR10], a                                ; $57b2: $e0 $10
    ldh [$da], a                                  ; $57b4: $e0 $da
    nop                                           ; $57b6: $00
    ld [hl], b                                    ; $57b7: $70
    db $10                                        ; $57b8: $10
    ld hl, sp+$0c                                 ; $57b9: $f8 $0c
    ld hl, sp-$53                                 ; $57bb: $f8 $ad
    ei                                            ; $57bd: $fb
    sub b                                         ; $57be: $90
    nop                                           ; $57bf: $00
    rst $28                                       ; $57c0: $ef
    ld b, l                                       ; $57c1: $45
    cp $40                                        ; $57c2: $fe $40
    ld a, a                                       ; $57c4: $7f
    and a                                         ; $57c5: $a7
    dec a                                         ; $57c6: $3d
    ld [$3f00], sp                                ; $57c7: $08 $00 $3f
    dec b                                         ; $57ca: $05
    dec de                                        ; $57cb: $1b
    jr z, jr_0c8_57dd                             ; $57cc: $28 $0f

    rst $18                                       ; $57ce: $df
    ld hl, $00f7                                  ; $57cf: $21 $f7 $00
    adc d                                         ; $57d2: $8a
    ld a, e                                       ; $57d3: $7b
    call nz, $ea57                                ; $57d4: $c4 $57 $ea
    cp d                                          ; $57d7: $ba
    ld h, l                                       ; $57d8: $65
    ccf                                           ; $57d9: $3f
    nop                                           ; $57da: $00
    ldh a, [rNR21]                                ; $57db: $f0 $16

jr_0c8_57dd:
    ld sp, hl                                     ; $57dd: $f9
    ld c, e                                       ; $57de: $4b
    cp h                                          ; $57df: $bc
    ei                                            ; $57e0: $fb
    dec d                                         ; $57e1: $15
    db $eb                                        ; $57e2: $eb
    nop                                           ; $57e3: $00
    sub h                                         ; $57e4: $94
    ld [hl], l                                    ; $57e5: $75
    jp z, $68c7                                   ; $57e6: $ca $c7 $68

    ld a, a                                       ; $57e9: $7f
    and b                                         ; $57ea: $a0
    ld e, l                                       ; $57eb: $5d
    nop                                           ; $57ec: $00
    or d                                          ; $57ed: $b2
    or l                                          ; $57ee: $b5
    ld e, d                                       ; $57ef: $5a
    db $dd                                        ; $57f0: $dd
    ld a, [hl+]                                   ; $57f1: $2a
    ld d, $fd                                     ; $57f2: $16 $fd
    dec d                                         ; $57f4: $15
    ld [$0386], sp                                ; $57f5: $08 $86 $03
    ld [bc], a                                    ; $57f8: $02
    inc de                                        ; $57f9: $13
    ld e, [hl]                                    ; $57fa: $5e
    ld bc, $c080                                  ; $57fb: $01 $80 $c0
    jp hl                                         ; $57fe: $e9


    nop                                           ; $57ff: $00
    ld b, b                                       ; $5800: $40
    ld [hl-], a                                   ; $5801: $32
    ldh [$74], a                                  ; $5802: $e0 $74
    adc a                                         ; $5804: $8f
    ld l, b                                       ; $5805: $68
    sub a                                         ; $5806: $97
    cp [hl]                                       ; $5807: $be
    ld [bc], a                                    ; $5808: $02
    ld d, e                                       ; $5809: $53
    rst $30                                       ; $580a: $f7
    add hl, bc                                    ; $580b: $09
    ld l, l                                       ; $580c: $6d
    sub d                                         ; $580d: $92
    sbc a                                         ; $580e: $9f
    inc b                                         ; $580f: $04
    ld [bc], a                                    ; $5810: $02
    ld a, $00                                     ; $5811: $3e $00
    ld h, c                                       ; $5813: $61
    rrca                                          ; $5814: $0f
    db $fc                                        ; $5815: $fc
    add l                                         ; $5816: $85
    cp $4e                                        ; $5817: $fe $4e
    ei                                            ; $5819: $fb
    ld l, l                                       ; $581a: $6d
    nop                                           ; $581b: $00
    sub e                                         ; $581c: $93
    ld a, [hl]                                    ; $581d: $7e
    add l                                         ; $581e: $85
    and a                                         ; $581f: $a7
    ret nc                                        ; $5820: $d0

    push hl                                       ; $5821: $e5
    ld e, d                                       ; $5822: $5a
    and b                                         ; $5823: $a0
    inc b                                         ; $5824: $04
    ld a, b                                       ; $5825: $78
    call nc, $a8af                                ; $5826: $d4 $af $a8
    ld d, a                                       ; $5829: $57
    call nc, $2101                                ; $582a: $d4 $01 $21
    di                                            ; $582d: $f3
    nop                                           ; $582e: $00
    adc l                                         ; $582f: $8d
    or e                                          ; $5830: $b3
    call z, Call_0c8_40ff                         ; $5831: $cc $ff $40
    inc sp                                        ; $5834: $33
    ld l, h                                       ; $5835: $6c
    ld l, $08                                     ; $5836: $2e $08
    db $fc                                        ; $5838: $fc
    add e                                         ; $5839: $83
    cp $03                                        ; $583a: $fe $03
    add hl, bc                                    ; $583c: $09
    ld b, $2c                                     ; $583d: $06 $2c
    db $d3                                        ; $583f: $d3
    jp nz, $ff00                                  ; $5840: $c2 $00 $ff

    jp nc, $a27d                                  ; $5843: $d2 $7d $a2

    ld a, a                                       ; $5846: $7f
    adc d                                         ; $5847: $8a
    dec b                                         ; $5848: $05
    dec b                                         ; $5849: $05
    add b                                         ; $584a: $80
    inc a                                         ; $584b: $3c
    inc de                                        ; $584c: $13
    add b                                         ; $584d: $80
    add c                                         ; $584e: $81
    adc b                                         ; $584f: $88
    ret nz                                        ; $5850: $c0

    and d                                         ; $5851: $a2
    ret nz                                        ; $5852: $c0

    ldh [rSB], a                                  ; $5853: $e0 $01
    ld h, b                                       ; $5855: $60
    rst $30                                       ; $5856: $f7
    inc c                                         ; $5857: $0c
    db $db                                        ; $5858: $db
    ld h, $b6                                     ; $5859: $26 $b6
    ld c, e                                       ; $585b: $4b
    inc b                                         ; $585c: $04
    ld [bc], a                                    ; $585d: $02
    nop                                           ; $585e: $00
    cp c                                          ; $585f: $b9

jr_0c8_5860:
    cp h                                          ; $5860: $bc
    jp nz, Jump_0c8_40bf                          ; $5861: $c2 $bf $40

    ld a, [hl]                                    ; $5864: $7e
    ld hl, $007b                                  ; $5865: $21 $7b $00
    add h                                         ; $5868: $84
    ld c, h                                       ; $5869: $4c
    or a                                          ; $586a: $b7
    xor $13                                       ; $586b: $ee $13
    rst $38                                       ; $586d: $ff
    ld bc, $200a                                  ; $586e: $01 $0a $20
    or l                                          ; $5871: $b5
    dec sp                                        ; $5872: $3b
    ld l, b                                       ; $5873: $68
    inc b                                         ; $5874: $04
    cp h                                          ; $5875: $bc
    ld h, e                                       ; $5876: $63
    jr nz, jr_0c8_58a9                            ; $5877: $20 $30

    rra                                           ; $5879: $1f
    nop                                           ; $587a: $00
    db $10                                        ; $587b: $10
    sbc e                                         ; $587c: $9b
    ld c, $0d                                     ; $587d: $0e $0d
    inc c                                         ; $587f: $0c
    add l                                         ; $5880: $85
    ld b, $27                                     ; $5881: $06 $27
    nop                                           ; $5883: $00
    ld [bc], a                                    ; $5884: $02
    ld [bc], a                                    ; $5885: $02
    inc bc                                        ; $5886: $03
    add hl, hl                                    ; $5887: $29
    add c                                         ; $5888: $81
    dec l                                         ; $5889: $2d
    ld [hl], $55                                  ; $588a: $36 $55
    nop                                           ; $588c: $00
    jp c, $996e                                   ; $588d: $da $6e $99

    ld a, [$ae8f]                                 ; $5890: $fa $8f $ae
    ld d, h                                       ; $5893: $54
    rst $30                                       ; $5894: $f7
    nop                                           ; $5895: $00
    ld a, [hl+]                                   ; $5896: $2a
    db $fd                                        ; $5897: $fd
    inc bc                                        ; $5898: $03
    ld l, l                                       ; $5899: $6d
    or e                                          ; $589a: $b3
    db $e4                                        ; $589b: $e4
    or b                                          ; $589c: $b0
    ld d, b                                       ; $589d: $50
    ld [bc], a                                    ; $589e: $02
    sbc b                                         ; $589f: $98
    call z, $a878                                 ; $58a0: $cc $78 $a8
    inc c                                         ; $58a3: $0c
    inc c                                         ; $58a4: $0c
    db $f4                                        ; $58a5: $f4
    ld bc, $0013                                  ; $58a6: $01 $13 $00

jr_0c8_58a9:
    inc bc                                        ; $58a9: $03
    ld bc, $2e81                                  ; $58aa: $01 $81 $2e
    ld sp, $111e                                  ; $58ad: $31 $1e $11
    dec e                                         ; $58b0: $1d
    jr nc, jr_0c8_58bd                            ; $58b1: $30 $0a

    rrca                                          ; $58b3: $0f
    and d                                         ; $58b4: $a2
    inc bc                                        ; $58b5: $03
    db $10                                        ; $58b6: $10
    ld [$8121], sp                                ; $58b7: $08 $21 $81
    halt                                          ; $58ba: $76
    cp e                                          ; $58bb: $bb
    nop                                           ; $58bc: $00

jr_0c8_58bd:
    push af                                       ; $58bd: $f5
    ld e, [hl]                                    ; $58be: $5e
    sbc [hl]                                      ; $58bf: $9e
    ld l, b                                       ; $58c0: $68
    ld [hl], h                                    ; $58c1: $74
    xor h                                         ; $58c2: $ac
    cp $04                                        ; $58c3: $fe $04
    nop                                           ; $58c5: $00
    ld c, e                                       ; $58c6: $4b
    cp [hl]                                       ; $58c7: $be
    ld e, c                                       ; $58c8: $59
    rst $30                                       ; $58c9: $f7
    rra                                           ; $58ca: $1f
    di                                            ; $58cb: $f3
    ld [hl], b                                    ; $58cc: $70
    ldh a, [rSB]                                  ; $58cd: $f0 $01
    ld hl, sp+$10                                 ; $58cf: $f8 $10
    add hl, bc                                    ; $58d1: $09
    jr jr_0c8_5860                                ; $58d2: $18 $8c

    inc c                                         ; $58d4: $0c
    inc b                                         ; $58d5: $04
    inc h                                         ; $58d6: $24
    ld [bc], a                                    ; $58d7: $02
    ld b, b                                       ; $58d8: $40
    nop                                           ; $58d9: $00
    jr nc, jr_0c8_58dc                            ; $58da: $30 $00

jr_0c8_58dc:
    dec hl                                        ; $58dc: $2b
    inc [hl]                                      ; $58dd: $34
    sbc a                                         ; $58de: $9f

jr_0c8_58df:
    db $10                                        ; $58df: $10
    rra                                           ; $58e0: $1f
    ld [$0f00], sp                                ; $58e1: $08 $00 $0f
    inc c                                         ; $58e4: $0c
    ld b, $05                                     ; $58e5: $06 $05
    ld h, $03                                     ; $58e7: $26 $03
    add c                                         ; $58e9: $81
    inc bc                                        ; $58ea: $03
    nop                                           ; $58eb: $00
    db $10                                        ; $58ec: $10
    add c                                         ; $58ed: $81
    push hl                                       ; $58ee: $e5
    inc a                                         ; $58ef: $3c
    pop af                                        ; $58f0: $f1
    jr jr_0c8_58df                                ; $58f1: $18 $ec

    jr jr_0c8_58f5                                ; $58f3: $18 $00

jr_0c8_58f5:
    call z, $363c                                 ; $58f5: $cc $3c $36
    db $fc                                        ; $58f8: $fc
    dec de                                        ; $58f9: $1b
    or $8d                                        ; $58fa: $f6 $8d
    ld a, a                                       ; $58fc: $7f
    nop                                           ; $58fd: $00
    cp l                                          ; $58fe: $bd
    rst $10                                       ; $58ff: $d7
    nop                                           ; $5900: $00
    ld [$060e], sp                                ; $5901: $08 $0e $06
    jr nz, @+$01                                  ; $5904: $20 $ff

    nop                                           ; $5906: $00
    ld [bc], a                                    ; $5907: $02
    ld e, b                                       ; $5908: $58
    ld sp, hl                                     ; $5909: $f9
    ld b, $fb                                     ; $590a: $06 $fb
    inc b                                         ; $590c: $04
    rst $30                                       ; $590d: $f7
    nop                                           ; $590e: $00
    ld [$04fb], sp                                ; $590f: $08 $fb $04
    ei                                            ; $5912: $fb
    inc b                                         ; $5913: $04
    db $fd                                        ; $5914: $fd
    ld [bc], a                                    ; $5915: $02
    db $fc                                        ; $5916: $fc
    db $10                                        ; $5917: $10
    inc bc                                        ; $5918: $03
    cp $01                                        ; $5919: $fe $01
    jr nz, jr_0c8_5975                            ; $591b: $20 $58

    ld a, a                                       ; $591d: $7f
    add b                                         ; $591e: $80
    inc bc                                        ; $591f: $03
    dec b                                         ; $5920: $05
    nop                                           ; $5921: $00
    inc b                                         ; $5922: $04
    dec bc                                        ; $5923: $0b
    dec c                                         ; $5924: $0d
    dec sp                                        ; $5925: $3b
    ld a, a                                       ; $5926: $7f
    dec sp                                        ; $5927: $3b
    ld l, e                                       ; $5928: $6b
    scf                                           ; $5929: $37
    nop                                           ; $592a: $00
    ld h, [hl]                                    ; $592b: $66
    rra                                           ; $592c: $1f
    add hl, bc                                    ; $592d: $09
    ld [hl], $0f                                  ; $592e: $36 $0f
    nop                                           ; $5930: $00
    ld b, b                                       ; $5931: $40
    and b                                         ; $5932: $a0
    nop                                           ; $5933: $00
    ret nz                                        ; $5934: $c0

    ld h, b                                       ; $5935: $60
    ldh [rSVBK], a                                ; $5936: $e0 $70
    ld [hl], b                                    ; $5938: $70
    cp h                                          ; $5939: $bc
    ld a, [hl-]                                   ; $593a: $3a
    call c, $9c03                                 ; $593b: $dc $03 $9c

jr_0c8_593e:
    ld h, d                                       ; $593e: $62
    ret c                                         ; $593f: $d8

    inc h                                         ; $5940: $24
    ld [hl], b                                    ; $5941: $70
    add b                                         ; $5942: $80
    ld d, b                                       ; $5943: $50

jr_0c8_5944:
    ld [$0836], sp                                ; $5944: $08 $36 $08

jr_0c8_5947:
    jr nz, jr_0c8_5947                            ; $5947: $20 $fe

jr_0c8_5949:
    ld bc, $0802                                  ; $5949: $01 $02 $08
    rst $38                                       ; $594c: $ff
    ld bc, $203f                                  ; $594d: $01 $3f $20
    ccf                                           ; $5950: $3f
    db $10                                        ; $5951: $10
    jr nz, jr_0c8_5983                            ; $5952: $20 $2f

    jr nc, jr_0c8_5958                            ; $5954: $30 $02

    jr c, jr_0c8_5949                             ; $5956: $38 $f1

jr_0c8_5958:
    ld [$08f1], sp                                ; $5958: $08 $f1 $08
    inc b                                         ; $595b: $04
    ldh a, [$09]                                  ; $595c: $f0 $09
    ldh a, [$09]                                  ; $595e: $f0 $09
    pop af                                        ; $5960: $f1
    ld [bc], a                                    ; $5961: $02
    nop                                           ; $5962: $00
    db $f4                                        ; $5963: $f4
    inc c                                         ; $5964: $0c
    ld b, b                                       ; $5965: $40
    ld hl, sp+$7e                                 ; $5966: $f8 $7e
    db $10                                        ; $5968: $10
    db $fd                                        ; $5969: $fd
    ld [bc], a                                    ; $596a: $02
    ld [hl], a                                    ; $596b: $77
    adc b                                         ; $596c: $88
    ei                                            ; $596d: $fb
    inc b                                         ; $596e: $04
    ld [bc], a                                    ; $596f: $02
    or a                                          ; $5970: $b7
    ld c, b                                       ; $5971: $48

jr_0c8_5972:
    jp c, $f725                                   ; $5972: $da $25 $f7

jr_0c8_5975:
    ld [$1890], sp                                ; $5975: $08 $90 $18
    cp a                                          ; $5978: $bf
    nop                                           ; $5979: $00
    ld b, b                                       ; $597a: $40
    ld l, a                                       ; $597b: $6f
    sub b                                         ; $597c: $90
    dec de                                        ; $597d: $1b
    db $e4                                        ; $597e: $e4
    cp l                                          ; $597f: $bd
    ld b, d                                       ; $5980: $42
    rst $10                                       ; $5981: $d7
    nop                                           ; $5982: $00

jr_0c8_5983:
    jr z, jr_0c8_5944                             ; $5983: $28 $bf

    ret nz                                        ; $5985: $c0

    ld a, l                                       ; $5986: $7d
    jp nz, Jump_0c8_61de                          ; $5987: $c2 $de $61

    xor a                                         ; $598a: $af
    nop                                           ; $598b: $00
    ld [hl], b                                    ; $598c: $70
    halt                                          ; $598d: $76
    cp c                                          ; $598e: $b9
    db $db                                        ; $598f: $db
    inc [hl]                                      ; $5990: $34
    rst $10                                       ; $5991: $d7
    jr c, jr_0c8_593e                             ; $5992: $38 $aa

    ld [de], a                                    ; $5994: $12
    ld [hl], l                                    ; $5995: $75
    ldh a, [rIF]                                  ; $5996: $f0 $0f

jr_0c8_5998:
    jr nz, jr_0c8_59f2                            ; $5998: $20 $58

    sbc a                                         ; $599a: $9f
    ld h, b                                       ; $599b: $60
    ld b, b                                       ; $599c: $40
    ld h, b                                       ; $599d: $60
    ld bc, $fc00                                  ; $599e: $01 $00 $fc
    ld [bc], a                                    ; $59a1: $02
    rst $38                                       ; $59a2: $ff
    ld bc, $10ee                                  ; $59a3: $01 $ee $10
    halt                                          ; $59a6: $76
    adc b                                         ; $59a7: $88
    nop                                           ; $59a8: $00
    ld [$d614], a                                 ; $59a9: $ea $14 $d6
    jr z, jr_0c8_5998                             ; $59ac: $28 $ea

    inc d                                         ; $59ae: $14
    cpl                                           ; $59af: $2f
    jr nc, jr_0c8_5972                            ; $59b0: $30 $c0

    add b                                         ; $59b2: $80
    ld [$0884], sp                                ; $59b3: $08 $84 $08
    ld a, e                                       ; $59b6: $7b
    ld h, h                                       ; $59b7: $64
    dec a                                         ; $59b8: $3d
    ld [hl+], a                                   ; $59b9: $22

jr_0c8_59ba:
    ld d, a                                       ; $59ba: $57
    ld l, b                                       ; $59bb: $68
    jr nz, jr_0c8_59ba                            ; $59bc: $20 $fc

jr_0c8_59be:
    inc b                                         ; $59be: $04
    ld [bc], a                                    ; $59bf: $02
    ld [$14ec], sp                                ; $59c0: $08 $ec $14
    ld [hl], b                                    ; $59c3: $70
    adc h                                         ; $59c4: $8c
    add sp, $04                                   ; $59c5: $e8 $04
    inc d                                         ; $59c7: $14
    ret nc                                        ; $59c8: $d0

    inc l                                         ; $59c9: $2c
    add sp, $14                                   ; $59ca: $e8 $14
    ld d, b                                       ; $59cc: $50
    jr z, jr_0c8_59be                             ; $59cd: $28 $ef

    stop                                          ; $59cf: $10 $00
    dec de                                        ; $59d1: $1b
    db $e4                                        ; $59d2: $e4
    dec a                                         ; $59d3: $3d
    jp nz, $a8d7                                  ; $59d4: $c2 $d7 $a8

    xor c                                         ; $59d7: $a9
    ld d, [hl]                                    ; $59d8: $56
    nop                                           ; $59d9: $00
    ld d, h                                       ; $59da: $54
    xor e                                         ; $59db: $ab
    ld c, b                                       ; $59dc: $48
    or a                                          ; $59dd: $b7
    ld de, $48ff                                  ; $59de: $11 $ff $48
    rst $38                                       ; $59e1: $ff
    nop                                           ; $59e2: $00
    ld l, l                                       ; $59e3: $6d
    rst $38                                       ; $59e4: $ff
    or [hl]                                       ; $59e5: $b6
    rst $38                                       ; $59e6: $ff
    rst $38                                       ; $59e7: $ff
    rst $38                                       ; $59e8: $ff
    xor e                                         ; $59e9: $ab
    ld d, h                                       ; $59ea: $54
    nop                                           ; $59eb: $00
    ld b, l                                       ; $59ec: $45
    cp d                                          ; $59ed: $ba
    ld [hl+], a                                   ; $59ee: $22
    db $dd                                        ; $59ef: $dd
    nop                                           ; $59f0: $00
    rst $38                                       ; $59f1: $ff

jr_0c8_59f2:
    sub b                                         ; $59f2: $90
    rst $38                                       ; $59f3: $ff
    db $10                                        ; $59f4: $10
    ld l, b                                       ; $59f5: $68
    rst $38                                       ; $59f6: $ff
    ld a, l                                       ; $59f7: $7d
    stop                                          ; $59f8: $10 $00
    ld [hl], a                                    ; $59fa: $77
    add sp, -$3e                                  ; $59fb: $e8 $c2
    ld a, l                                       ; $59fd: $7d
    nop                                           ; $59fe: $00
    add hl, hl                                    ; $59ff: $29
    cp $64                                        ; $5a00: $fe $64
    rst $38                                       ; $5a02: $ff
    db $e4                                        ; $5a03: $e4
    rst $38                                       ; $5a04: $ff
    ld d, [hl]                                    ; $5a05: $56
    rst $38                                       ; $5a06: $ff
    ld b, b                                       ; $5a07: $40
    rst $28                                       ; $5a08: $ef
    jr nz, jr_0c8_5a0b                            ; $5a09: $20 $00

jr_0c8_5a0b:
    ld d, [hl]                                    ; $5a0b: $56
    xor b                                         ; $5a0c: $a8
    and d                                         ; $5a0d: $a2
    ld e, h                                       ; $5a0e: $5c
    ld c, b                                       ; $5a0f: $48
    cp [hl]                                       ; $5a10: $be
    nop                                           ; $5a11: $00
    inc b                                         ; $5a12: $04
    cp $a4                                        ; $5a13: $fe $a4
    cp $56                                        ; $5a15: $fe $56
    cp $ee                                        ; $5a17: $fe $ee
    cp $00                                        ; $5a19: $fe $00
    cp $fe                                        ; $5a1b: $fe $fe
    ld l, e                                       ; $5a1d: $6b
    ld [hl], h                                    ; $5a1e: $74
    ld b, l                                       ; $5a1f: $45
    ld a, d                                       ; $5a20: $7a
    ld h, d                                       ; $5a21: $62
    ld a, l                                       ; $5a22: $7d
    nop                                           ; $5a23: $00
    ld b, b                                       ; $5a24: $40
    ld a, a                                       ; $5a25: $7f
    ld h, b                                       ; $5a26: $60
    ld a, a                                       ; $5a27: $7f
    ld c, b                                       ; $5a28: $48
    ld a, a                                       ; $5a29: $7f
    ld a, l                                       ; $5a2a: $7d
    ld a, a                                       ; $5a2b: $7f
    nop                                           ; $5a2c: $00
    ld a, a                                       ; $5a2d: $7f
    ld a, a                                       ; $5a2e: $7f
    ld d, b                                       ; $5a2f: $50
    xor h                                         ; $5a30: $ac
    and d                                         ; $5a31: $a2
    ld e, [hl]                                    ; $5a32: $5e
    ld c, b                                       ; $5a33: $48
    cp h                                          ; $5a34: $bc
    db $10                                        ; $5a35: $10
    ld b, $fe                                     ; $5a36: $06 $fe
    and [hl]                                      ; $5a38: $a6
    jr nz, jr_0c8_5a5b                            ; $5a39: $20 $20

    xor e                                         ; $5a3b: $ab
    call nc, $3a45                                ; $5a3c: $d4 $45 $3a
    ld bc, $5d22                                  ; $5a3f: $01 $22 $5d
    nop                                           ; $5a42: $00
    ld a, a                                       ; $5a43: $7f
    db $10                                        ; $5a44: $10
    ld a, a                                       ; $5a45: $7f
    ld l, b                                       ; $5a46: $68
    jr nz, jr_0c8_5a59                            ; $5a47: $20 $10

    nop                                           ; $5a49: $00
    rst $28                                       ; $5a4a: $ef
    jr nc, @-$7d                                  ; $5a4b: $30 $81

    ld a, a                                       ; $5a4d: $7f
    rst $30                                       ; $5a4e: $f7
    ld a, a                                       ; $5a4f: $7f
    cp $41                                        ; $5a50: $fe $41
    nop                                           ; $5a52: $00
    ccf                                           ; $5a53: $3f
    pop bc                                        ; $5a54: $c1
    rst $38                                       ; $5a55: $ff
    pop bc                                        ; $5a56: $c1
    cp $83                                        ; $5a57: $fe $83

jr_0c8_5a59:
    rst $38                                       ; $5a59: $ff
    add e                                         ; $5a5a: $83

jr_0c8_5a5b:
    nop                                           ; $5a5b: $00
    adc a                                         ; $5a5c: $8f
    adc b                                         ; $5a5d: $88
    rra                                           ; $5a5e: $1f
    db $10                                        ; $5a5f: $10
    rrca                                          ; $5a60: $0f
    db $10                                        ; $5a61: $10
    rra                                           ; $5a62: $1f
    ldh a, [rP1]                                  ; $5a63: $f0 $00
    rst $38                                       ; $5a65: $ff
    ldh a, [rNR10]                                ; $5a66: $f0 $10
    rra                                           ; $5a68: $1f
    rra                                           ; $5a69: $1f
    rst $38                                       ; $5a6a: $ff
    db $f4                                        ; $5a6b: $f4
    db $fc                                        ; $5a6c: $fc
    ld [$7fc1], sp                                ; $5a6d: $08 $c1 $7f
    jp $027e                                      ; $5a70: $c3 $7e $02


    ld [$7fde], sp                                ; $5a73: $08 $de $7f
    ld a, e                                       ; $5a76: $7b
    nop                                           ; $5a77: $00
    bit 6, d                                      ; $5a78: $cb $72
    sub d                                         ; $5a7a: $92
    ld a, [c]                                     ; $5a7b: $f2
    sbc [hl]                                      ; $5a7c: $9e
    db $fd                                        ; $5a7d: $fd
    ld b, $f0                                     ; $5a7e: $06 $f0
    nop                                           ; $5a80: $00
    rrca                                          ; $5a81: $0f
    cp $0f                                        ; $5a82: $fe $0f
    rst $28                                       ; $5a84: $ef
    jr jr_0c8_5a8e                                ; $5a85: $18 $07

    ld hl, sp-$01                                 ; $5a87: $f8 $ff
    nop                                           ; $5a89: $00
    ld hl, sp+$4f                                 ; $5a8a: $f8 $4f
    ld c, b                                       ; $5a8c: $48
    rrca                                          ; $5a8d: $0f

jr_0c8_5a8e:
    ld e, b                                       ; $5a8e: $58
    di                                            ; $5a8f: $f3
    ld [de], a                                    ; $5a90: $12
    daa                                           ; $5a91: $27
    nop                                           ; $5a92: $00
    db $e4                                        ; $5a93: $e4
    db $e3                                        ; $5a94: $e3
    db $e4                                        ; $5a95: $e4
    push bc                                       ; $5a96: $c5
    ld a, $fd                                     ; $5a97: $3e $fd
    ld a, $e2                                     ; $5a99: $3e $e2
    nop                                           ; $5a9b: $00
    inc hl                                        ; $5a9c: $23
    db $e3                                        ; $5a9d: $e3
    ccf                                           ; $5a9e: $3f
    cp $3f                                        ; $5a9f: $fe $3f
    ld hl, sp+$0f                                 ; $5aa1: $f8 $0f
    ldh a, [rLCDC]                                ; $5aa3: $f0 $40
    rra                                           ; $5aa5: $1f
    ld [bc], a                                    ; $5aa6: $02
    ld [$1ffb], sp                                ; $5aa7: $08 $fb $1f
    rra                                           ; $5aaa: $1f
    pop af                                        ; $5aab: $f1
    xor $f2                                       ; $5aac: $ee $f2
    nop                                           ; $5aae: $00
    sbc [hl]                                      ; $5aaf: $9e
    sub e                                         ; $5ab0: $93
    ccf                                           ; $5ab1: $3f
    ldh [$7e], a                                  ; $5ab2: $e0 $7e
    pop bc                                        ; $5ab4: $c1
    ld a, a                                       ; $5ab5: $7f
    pop bc                                        ; $5ab6: $c1
    nop                                           ; $5ab7: $00
    ld a, l                                       ; $5ab8: $7d
    jp $ffc0                                      ; $5ab9: $c3 $c0 $ff


    ld a, a                                       ; $5abc: $7f
    ld a, a                                       ; $5abd: $7f
    ld c, c                                       ; $5abe: $49
    ld c, c                                       ; $5abf: $49
    nop                                           ; $5ac0: $00
    ld b, c                                       ; $5ac1: $41
    res 7, [hl]                                   ; $5ac2: $cb $be
    jp nz, $fc04                                  ; $5ac4: $c2 $04 $fc

    db $fc                                        ; $5ac7: $fc
    db $fc                                        ; $5ac8: $fc
    inc c                                         ; $5ac9: $0c
    ld hl, sp+$07                                 ; $5aca: $f8 $07
    rst $38                                       ; $5acc: $ff
    rlca                                          ; $5acd: $07
    ld a, [bc]                                    ; $5ace: $0a
    ld bc, $0006                                  ; $5acf: $01 $06 $00

jr_0c8_5ad2:
    ld a, a                                       ; $5ad2: $7f
    ld b, c                                       ; $5ad3: $41
    nop                                           ; $5ad4: $00
    cp $83                                        ; $5ad5: $fe $83
    ld a, [hl]                                    ; $5ad7: $7e
    add e                                         ; $5ad8: $83
    cp [hl]                                       ; $5ad9: $be
    jp $c3bf                                      ; $5ada: $c3 $bf $c3


    nop                                           ; $5add: $00
    ld b, e                                       ; $5ade: $43
    ld a, [hl]                                    ; $5adf: $7e
    ld a, l                                       ; $5ae0: $7d
    cp $cb                                        ; $5ae1: $fe $cb
    ld a, [$0cf7]                                 ; $5ae3: $fa $f7 $0c
    ld [bc], a                                    ; $5ae6: $02
    inc bc                                        ; $5ae7: $03
    db $fc                                        ; $5ae8: $fc
    rst $38                                       ; $5ae9: $ff
    db $fc                                        ; $5aea: $fc
    db $fd                                        ; $5aeb: $fd
    ld b, $22                                     ; $5aec: $06 $22
    jr nz, jr_0c8_5af6                            ; $5aee: $20 $06

    jr nz, jr_0c8_5ad2                            ; $5af0: $20 $e0

    ccf                                           ; $5af2: $3f
    ld d, b                                       ; $5af3: $50
    jr jr_0c8_5b14                                ; $5af4: $18 $1e

jr_0c8_5af6:
    rst $38                                       ; $5af6: $ff
    rst $30                                       ; $5af7: $f7
    db $f4                                        ; $5af8: $f4
    sub e                                         ; $5af9: $93
    nop                                           ; $5afa: $00
    sub d                                         ; $5afb: $92
    inc de                                        ; $5afc: $13
    sbc [hl]                                      ; $5afd: $9e
    ld a, [hl]                                    ; $5afe: $7e
    cp $7f                                        ; $5aff: $fe $7f
    rst $38                                       ; $5b01: $ff
    ld a, a                                       ; $5b02: $7f
    jr nz, @+$01                                  ; $5b03: $20 $ff

    add b                                         ; $5b05: $80
    ld a, [de]                                    ; $5b06: $1a
    ld bc, $0000                                  ; $5b07: $01 $00 $00
    add $d7                                       ; $5b0a: $c6 $d7
    add d                                         ; $5b0c: $82
    ld a, [bc]                                    ; $5b0d: $0a
    rst $10                                       ; $5b0e: $d7
    ld e, a                                       ; $5b0f: $5f
    ld a, a                                       ; $5b10: $7f
    cp a                                          ; $5b11: $bf
    ld h, $01                                     ; $5b12: $26 $01

jr_0c8_5b14:
    ld bc, $1010                                  ; $5b14: $01 $10 $10
    ld d, d                                       ; $5b17: $52
    nop                                           ; $5b18: $00
    or $b6                                        ; $5b19: $f6 $b6
    sub $7f                                       ; $5b1b: $d6 $7f
    add d                                         ; $5b1d: $82
    rst $38                                       ; $5b1e: $ff
    add d                                         ; $5b1f: $82
    rst $30                                       ; $5b20: $f7

jr_0c8_5b21:
    jr jr_0c8_5b21                                ; $5b21: $18 $fe

    cp $83                                        ; $5b23: $fe $83
    ld d, [hl]                                    ; $5b25: $56
    ld [$0006], sp                                ; $5b26: $08 $06 $00
    rst $38                                       ; $5b29: $ff
    db $f4                                        ; $5b2a: $f4

jr_0c8_5b2b:
    inc e                                         ; $5b2b: $1c
    nop                                           ; $5b2c: $00
    db $f4                                        ; $5b2d: $f4
    ld e, $ff                                     ; $5b2e: $1e $ff
    rra                                           ; $5b30: $1f
    rst $38                                       ; $5b31: $ff
    pop hl                                        ; $5b32: $e1
    dec a                                         ; $5b33: $3d
    db $e3                                        ; $5b34: $e3
    jr nz, @+$40                                  ; $5b35: $20 $3e

    ld [c], a                                     ; $5b37: $e2
    and e                                         ; $5b38: $a3
    nop                                           ; $5b39: $00
    rst $38                                       ; $5b3a: $ff
    ld a, [$f29e]                                 ; $5b3b: $fa $9e $f2
    sub d                                         ; $5b3e: $92
    nop                                           ; $5b3f: $00
    ld a, [c]                                     ; $5b40: $f2
    sub e                                         ; $5b41: $93
    jr nz, jr_0c8_5b2b                            ; $5b42: $20 $e7

    db $e3                                        ; $5b44: $e3
    db $e3                                        ; $5b45: $e3
    ld hl, $003e                                  ; $5b46: $21 $3e $00
    ccf                                           ; $5b49: $3f
    ld a, $fe                                     ; $5b4a: $3e $fe
    db $e3                                        ; $5b4c: $e3
    ld b, a                                       ; $5b4d: $47
    ld a, b                                       ; $5b4e: $78
    ld a, a                                       ; $5b4f: $7f
    ld a, b                                       ; $5b50: $78
    ld bc, $7f4e                                  ; $5b51: $01 $4e $7f
    sbc a                                         ; $5b54: $9f
    ldh a, [$9f]                                  ; $5b55: $f0 $9f
    ldh a, [$8f]                                  ; $5b57: $f0 $8f
    cp c                                          ; $5b59: $b9
    nop                                           ; $5b5a: $00
    nop                                           ; $5b5b: $00
    sbc a                                         ; $5b5c: $9f
    rst $38                                       ; $5b5d: $ff
    cp $23                                        ; $5b5e: $fe $23
    cp [hl]                                       ; $5b60: $be
    ld h, e                                       ; $5b61: $63
    rst $38                                       ; $5b62: $ff
    db $e3                                        ; $5b63: $e3
    db $10                                        ; $5b64: $10
    rst $28                                       ; $5b65: $ef
    ld a, h                                       ; $5b66: $7c
    rst $00                                       ; $5b67: $c7
    ld [bc], a                                    ; $5b68: $02
    db $10                                        ; $5b69: $10
    call nz, $9fff                                ; $5b6a: $c4 $ff $9f
    sub e                                         ; $5b6d: $93
    ld bc, $d29e                                  ; $5b6e: $01 $9e $d2
    cp $f2                                        ; $5b71: $fe $f2
    ld [c], a                                     ; $5b73: $e2
    ld a, $fc                                     ; $5b74: $3e $fc
    ldh [$08], a                                  ; $5b76: $e0 $08
    nop                                           ; $5b78: $00
    inc hl                                        ; $5b79: $23
    ccf                                           ; $5b7a: $3f
    cp $48                                        ; $5b7b: $fe $48
    rst $08                                       ; $5b7d: $cf
    ld c, a                                       ; $5b7e: $4f
    ld c, a                                       ; $5b7f: $4f
    ld c, c                                       ; $5b80: $49
    nop                                           ; $5b81: $00
    ld l, a                                       ; $5b82: $6f
    add hl, bc                                    ; $5b83: $09
    rst $38                                       ; $5b84: $ff
    ld a, c                                       ; $5b85: $79
    ld a, a                                       ; $5b86: $7f
    jr c, @-$2f                                   ; $5b87: $38 $cf

    pop af                                        ; $5b89: $f1
    nop                                           ; $5b8a: $00
    rst $08                                       ; $5b8b: $cf
    ret                                           ; $5b8c: $c9


    ld a, a                                       ; $5b8d: $7f
    rst $38                                       ; $5b8e: $ff
    inc b                                         ; $5b8f: $04
    rst $30                                       ; $5b90: $f7
    inc c                                         ; $5b91: $0c
    rst $18                                       ; $5b92: $df
    ld [$fdfc], sp                                ; $5b93: $08 $fc $fd
    rlca                                          ; $5b96: $07
    db $fc                                        ; $5b97: $fc
    ld [bc], a                                    ; $5b98: $02
    jr @+$01                                      ; $5b99: $18 $ff

    bit 7, d                                      ; $5b9b: $cb $7a
    ld bc, $7acb                                  ; $5b9d: $01 $cb $7a
    rst $38                                       ; $5ba0: $ff
    ld a, [hl]                                    ; $5ba1: $7e
    cp $c3                                        ; $5ba2: $fe $c3
    ld a, e                                       ; $5ba4: $7b
    dec a                                         ; $5ba5: $3d
    nop                                           ; $5ba6: $00
    nop                                           ; $5ba7: $00
    ld a, h                                       ; $5ba8: $7c
    call nz, $ff47                                ; $5ba9: $c4 $47 $ff
    ld hl, sp+$07                                 ; $5bac: $f8 $07
    ld a, a                                       ; $5bae: $7f
    add a                                         ; $5baf: $87
    ret nc                                        ; $5bb0: $d0

    pop de                                        ; $5bb1: $d1
    nop                                           ; $5bb2: $00
    jr nz, jr_0c8_5bb5                            ; $5bb3: $20 $00

jr_0c8_5bb5:
    ld hl, sp+$20                                 ; $5bb5: $f8 $20
    db $10                                        ; $5bb7: $10
    sub a                                         ; $5bb8: $97
    sbc [hl]                                      ; $5bb9: $9e
    sub e                                         ; $5bba: $93
    sub d                                         ; $5bbb: $92
    nop                                           ; $5bbc: $00
    sub e                                         ; $5bbd: $93
    or d                                          ; $5bbe: $b2
    add d                                         ; $5bbf: $82
    di                                            ; $5bc0: $f3
    db $e3                                        ; $5bc1: $e3
    db $e3                                        ; $5bc2: $e3
    jp nz, $01be                                  ; $5bc3: $c2 $be $01

    ld a, [hl]                                    ; $5bc6: $7e
    cp [hl]                                       ; $5bc7: $be
    cp a                                          ; $5bc8: $bf
    db $e3                                        ; $5bc9: $e3
    ld a, b                                       ; $5bca: $78
    ld b, a                                       ; $5bcb: $47
    ld a, h                                       ; $5bcc: $7c
    ld [bc], a                                    ; $5bcd: $02
    nop                                           ; $5bce: $00
    nop                                           ; $5bcf: $00
    ld [hl], h                                    ; $5bd0: $74
    ld a, a                                       ; $5bd1: $7f
    db $fc                                        ; $5bd2: $fc
    rst $00                                       ; $5bd3: $c7
    ei                                            ; $5bd4: $fb
    adc a                                         ; $5bd5: $8f
    ld l, [hl]                                    ; $5bd6: $6e
    sbc l                                         ; $5bd7: $9d
    nop                                           ; $5bd8: $00
    rst $30                                       ; $5bd9: $f7
    sub l                                         ; $5bda: $95
    ld a, h                                       ; $5bdb: $7c
    db $fc                                        ; $5bdc: $fc
    inc a                                         ; $5bdd: $3c
    call nz, $84f8                                ; $5bde: $c4 $f8 $84
    ld b, b                                       ; $5be1: $40
    db $fc                                        ; $5be2: $fc
    ld [bc], a                                    ; $5be3: $02

jr_0c8_5be4:
    nop                                           ; $5be4: $00
    db $f4                                        ; $5be5: $f4
    rrca                                          ; $5be6: $0f
    dec b                                         ; $5be7: $05
    rst $38                                       ; $5be8: $ff
    rst $28                                       ; $5be9: $ef
    db $fc                                        ; $5bea: $fc
    nop                                           ; $5beb: $00
    ccf                                           ; $5bec: $3f
    daa                                           ; $5bed: $27
    ccf                                           ; $5bee: $3f
    inc h                                         ; $5bef: $24
    ccf                                           ; $5bf0: $3f
    inc h                                         ; $5bf1: $24
    rra                                           ; $5bf2: $1f
    inc h                                         ; $5bf3: $24
    ld [$643f], sp                                ; $5bf4: $08 $3f $64
    rst $38                                       ; $5bf7: $ff
    adc b                                         ; $5bf8: $88
    ld [bc], a                                    ; $5bf9: $02
    ld [$e4e7], sp                                ; $5bfa: $08 $e7 $e4
    rst $00                                       ; $5bfd: $c7
    nop                                           ; $5bfe: $00
    inc h                                         ; $5bff: $24
    rst $20                                       ; $5c00: $e7
    inc h                                         ; $5c01: $24
    rst $20                                       ; $5c02: $e7

Call_0c8_5c03:
    daa                                           ; $5c03: $27
    rst $38                                       ; $5c04: $ff
    inc a                                         ; $5c05: $3c
    rst $08                                       ; $5c06: $cf
    nop                                           ; $5c07: $00
    ld c, b                                       ; $5c08: $48
    add $59                                       ; $5c09: $c6 $59
    ccf                                           ; $5c0b: $3f
    ld sp, hl                                     ; $5c0c: $f9
    rlca                                          ; $5c0d: $07
    rst $38                                       ; $5c0e: $ff
    add e                                         ; $5c0f: $83
    db $10                                        ; $5c10: $10
    db $fc                                        ; $5c11: $fc
    adc a                                         ; $5c12: $8f
    ld hl, sp+$02                                 ; $5c13: $f8 $02
    ld [$f0bf], sp                                ; $5c15: $08 $bf $f0
    ldh [$df], a                                  ; $5c18: $e0 $df
    nop                                           ; $5c1a: $00
    ld a, [hl]                                    ; $5c1b: $7e
    ld e, a                                       ; $5c1c: $5f
    jp $c3c2                                      ; $5c1d: $c3 $c2 $c3


    ld b, d                                       ; $5c20: $42
    add e                                         ; $5c21: $83
    ld b, d                                       ; $5c22: $42
    nop                                           ; $5c23: $00
    pop bc                                        ; $5c24: $c1
    ld b, d                                       ; $5c25: $42
    jp Jump_0c8_4f46                              ; $5c26: $c3 $46 $4f


    ld hl, sp+$7f                                 ; $5c29: $f8 $7f
    ld hl, sp+$00                                 ; $5c2b: $f8 $00
    rst $38                                       ; $5c2d: $ff
    ret z                                         ; $5c2e: $c8

    ld a, [$f87e]                                 ; $5c2f: $fa $7e $f8
    ld b, [hl]                                    ; $5c32: $46
    cp $42                                        ; $5c33: $fe $42
    nop                                           ; $5c35: $00
    cp $42                                        ; $5c36: $fe $42
    ei                                            ; $5c38: $fb
    ld b, a                                       ; $5c39: $47
    db $fc                                        ; $5c3a: $fc
    ld b, h                                       ; $5c3b: $44
    db $fc                                        ; $5c3c: $fc
    ld b, l                                       ; $5c3d: $45
    inc b                                         ; $5c3e: $04
    di                                            ; $5c3f: $f3
    ld c, a                                       ; $5c40: $4f
    ld [hl], b                                    ; $5c41: $70
    ld c, a                                       ; $5c42: $4f
    ld a, b                                       ; $5c43: $78
    ld [bc], a                                    ; $5c44: $02
    ld [$f87f], sp                                ; $5c45: $08 $7f $f8
    nop                                           ; $5c48: $00
    rst $08                                       ; $5c49: $cf
    ld a, e                                       ; $5c4a: $7b
    ld c, a                                       ; $5c4b: $4f
    cpl                                           ; $5c4c: $2f
    call c, $d4f7                                 ; $5c4d: $dc $f7 $d4
    ld l, h                                       ; $5c50: $6c
    sub b                                         ; $5c51: $90
    ld [hl], b                                    ; $5c52: $70
    jr c, jr_0c8_5be4                             ; $5c53: $38 $8f

    ld b, $70                                     ; $5c55: $06 $70
    nop                                           ; $5c57: $00
    push hl                                       ; $5c58: $e5
    daa                                           ; $5c59: $27
    pop hl                                        ; $5c5a: $e1
    ld h, $00                                     ; $5c5b: $26 $00
    rst $20                                       ; $5c5d: $e7
    inc h                                         ; $5c5e: $24
    ld h, a                                       ; $5c5f: $67
    db $e4                                        ; $5c60: $e4
    db $fd                                        ; $5c61: $fd
    ld a, $e3                                     ; $5c62: $3e $e3
    ld [hl+], a                                   ; $5c64: $22
    nop                                           ; $5c65: $00
    ld b, e                                       ; $5c66: $43
    cp d                                          ; $5c67: $ba
    db $fc                                        ; $5c68: $fc
    cp a                                          ; $5c69: $bf
    cp $e2                                        ; $5c6a: $fe $e2
    cp $22                                        ; $5c6c: $fe $22
    nop                                           ; $5c6e: $00
    cp $22                                        ; $5c6f: $fe $22
    db $fc                                        ; $5c71: $fc
    ld [hl+], a                                   ; $5c72: $22
    cp $23                                        ; $5c73: $fe $23
    rst $38                                       ; $5c75: $ff
    ld hl, $0280                                  ; $5c76: $21 $80 $02
    ld [$95f7], sp                                ; $5c79: $08 $f7 $95
    sub a                                         ; $5c7c: $97
    push af                                       ; $5c7d: $f5
    xor $ea                                       ; $5c7e: $ee $ea
    ld l, $00                                     ; $5c80: $2e $00
    ld [$ff36], a                                 ; $5c82: $ea $36 $ff
    dec a                                         ; $5c85: $3d
    db $e3                                        ; $5c86: $e3
    ccf                                           ; $5c87: $3f
    ld [c], a                                     ; $5c88: $e2
    ld a, a                                       ; $5c89: $7f
    nop                                           ; $5c8a: $00
    jp nz, $0506                                  ; $5c8b: $c2 $06 $05

    rlca                                          ; $5c8e: $07
    rlca                                          ; $5c8f: $07
    rrca                                          ; $5c90: $0f
    add hl, bc                                    ; $5c91: $09
    ld c, $02                                     ; $5c92: $0e $02
    add hl, de                                    ; $5c94: $19
    dec c                                         ; $5c95: $0d
    ei                                            ; $5c96: $fb
    ld sp, hl                                     ; $5c97: $f9
    rst $38                                       ; $5c98: $ff
    rst $38                                       ; $5c99: $ff
    jr jr_0c8_5c9e                                ; $5c9a: $18 $02

    ld hl, sp+$02                                 ; $5c9c: $f8 $02

jr_0c8_5c9e:
    adc a                                         ; $5c9e: $8f
    adc a                                         ; $5c9f: $8f
    rst $38                                       ; $5ca0: $ff
    ldh a, [$f8]                                  ; $5ca1: $f0 $f8
    ld [$1001], sp                                ; $5ca3: $08 $01 $10
    ld hl, sp+$00                                 ; $5ca6: $f8 $00
    ld hl, sp-$70                                 ; $5ca8: $f8 $90
    ld a, a                                       ; $5caa: $7f
    ld a, a                                       ; $5cab: $7f
    ret                                           ; $5cac: $c9


    ret                                           ; $5cad: $c9


    rst $38                                       ; $5cae: $ff
    xor $00                                       ; $5caf: $ee $00
    cp $92                                        ; $5cb1: $fe $92
    sbc [hl]                                      ; $5cb3: $9e
    sub e                                         ; $5cb4: $93
    sbc a                                         ; $5cb5: $9f
    sub e                                         ; $5cb6: $93
    cp $73                                        ; $5cb7: $fe $73
    add b                                         ; $5cb9: $80
    sub a                                         ; $5cba: $97
    ld bc, $5070                                  ; $5cbb: $01 $70 $50
    ld [hl], b                                    ; $5cbe: $70
    ld d, b                                       ; $5cbf: $50
    ldh a, [$90]                                  ; $5cc0: $f0 $90
    ldh a, [rP1]                                  ; $5cc2: $f0 $00
    sub c                                         ; $5cc4: $91
    ld [hl], b                                    ; $5cc5: $70
    rst $38                                       ; $5cc6: $ff
    rst $28                                       ; $5cc7: $ef
    rra                                           ; $5cc8: $1f
    rst $38                                       ; $5cc9: $ff
    db $10                                        ; $5cca: $10
    rst $28                                       ; $5ccb: $ef
    nop                                           ; $5ccc: $00
    jr nc, @+$51                                  ; $5ccd: $30 $4f

    ld a, b                                       ; $5ccf: $78
    ld a, b                                       ; $5cd0: $78
    ld a, a                                       ; $5cd1: $7f
    rst $38                                       ; $5cd2: $ff
    adc a                                         ; $5cd3: $8f
    ldh a, [rP1]                                  ; $5cd4: $f0 $00
    adc b                                         ; $5cd6: $88
    add sp, -$68                                  ; $5cd7: $e8 $98
    adc b                                         ; $5cd9: $88
    ld hl, sp-$01                                 ; $5cda: $f8 $ff
    rst $38                                       ; $5cdc: $ff
    ld a, h                                       ; $5cdd: $7c
    nop                                           ; $5cde: $00
    jp $7cc7                                      ; $5cdf: $c3 $c7 $7c


    ld a, h                                       ; $5ce2: $7c
    rst $38                                       ; $5ce3: $ff
    rlca                                          ; $5ce4: $07
    add a                                         ; $5ce5: $87
    add l                                         ; $5ce6: $85
    add b                                         ; $5ce7: $80
    ld bc, $8708                                  ; $5ce8: $01 $08 $87
    add e                                         ; $5ceb: $83
    add a                                         ; $5cec: $87
    add h                                         ; $5ced: $84
    rst $38                                       ; $5cee: $ff
    rst $30                                       ; $5cef: $f7
    ld d, h                                       ; $5cf0: $54
    nop                                           ; $5cf1: $00
    ld d, a                                       ; $5cf2: $57
    db $f4                                        ; $5cf3: $f4
    rst $30                                       ; $5cf4: $f7
    push af                                       ; $5cf5: $f5
    rla                                           ; $5cf6: $17
    push af                                       ; $5cf7: $f5
    dec de                                        ; $5cf8: $1b
    rst $38                                       ; $5cf9: $ff
    db $10                                        ; $5cfa: $10
    ld e, $f1                                     ; $5cfb: $1e $f1
    rra                                           ; $5cfd: $1f
    ld [bc], a                                    ; $5cfe: $02
    nop                                           ; $5cff: $00
    add l                                         ; $5d00: $85
    add [hl]                                      ; $5d01: $86
    add a                                         ; $5d02: $87
    add a                                         ; $5d03: $87
    nop                                           ; $5d04: $00
    rlca                                          ; $5d05: $07
    inc b                                         ; $5d06: $04
    rlca                                          ; $5d07: $07
    inc c                                         ; $5d08: $0c
    ld b, $fd                                     ; $5d09: $06 $fd
    db $fc                                        ; $5d0b: $fc
    rst $38                                       ; $5d0c: $ff
    ld bc, $07ff                                  ; $5d0d: $01 $ff $07
    ld a, e                                       ; $5d10: $7b
    add [hl]                                      ; $5d11: $86
    cp $a3                                        ; $5d12: $fe $a3
    and e                                         ; $5d14: $a3
    ld h, b                                       ; $5d15: $60
    ld [$d580], sp                                ; $5d16: $08 $80 $d5
    ld bc, $fe92                                  ; $5d19: $01 $92 $fe
    sbc h                                         ; $5d1c: $9c
    cp $04                                        ; $5d1d: $fe $04
    rst $38                                       ; $5d1f: $ff
    ccf                                           ; $5d20: $3f
    ld bc, $e1e1                                  ; $5d21: $01 $e1 $e1
    rst $38                                       ; $5d24: $ff
    rra                                           ; $5d25: $1f
    ccf                                           ; $5d26: $3f
    jr nz, jr_0c8_5d4a                            ; $5d27: $20 $21

    ld bc, $0008                                  ; $5d29: $01 $08 $00
    ccf                                           ; $5d2c: $3f
    ccf                                           ; $5d2d: $3f
    daa                                           ; $5d2e: $27
    ld hl, sp+$3e                                 ; $5d2f: $f8 $3e
    jp $e35f                                      ; $5d31: $c3 $5f $e3


    nop                                           ; $5d34: $00
    ld b, e                                       ; $5d35: $43
    cp $6f                                        ; $5d36: $fe $6f
    cp $85                                        ; $5d38: $fe $85
    add a                                         ; $5d3a: $87
    add l                                         ; $5d3b: $85
    add a                                         ; $5d3c: $87
    nop                                           ; $5d3d: $00
    add a                                         ; $5d3e: $87
    add h                                         ; $5d3f: $84
    rlca                                          ; $5d40: $07
    add h                                         ; $5d41: $84
    rrca                                          ; $5d42: $0f
    ld hl, sp-$09                                 ; $5d43: $f8 $f7
    ld hl, sp+$03                                 ; $5d45: $f8 $03
    adc a                                         ; $5d47: $8f
    adc b                                         ; $5d48: $88
    adc b                                         ; $5d49: $88

jr_0c8_5d4a:
    adc a                                         ; $5d4a: $8f
    rra                                           ; $5d4b: $1f
    rst $38                                       ; $5d4c: $ff
    db $e3                                        ; $5d4d: $e3
    ld [bc], a                                    ; $5d4e: $02
    xor d                                         ; $5d4f: $aa
    ld [bc], a                                    ; $5d50: $02
    db $10                                        ; $5d51: $10
    cp $3f                                        ; $5d52: $fe $3f
    ldh [rSC], a                                  ; $5d54: $e0 $02
    nop                                           ; $5d56: $00
    ccf                                           ; $5d57: $3f
    rst $38                                       ; $5d58: $ff
    ld a, a                                       ; $5d59: $7f
    ret nz                                        ; $5d5a: $c0

    ld [de], a                                    ; $5d5b: $12
    ld a, a                                       ; $5d5c: $7f
    ret nz                                        ; $5d5d: $c0

    ccf                                           ; $5d5e: $3f
    inc b                                         ; $5d5f: $04
    nop                                           ; $5d60: $00
    add c                                         ; $5d61: $81
    cp $41                                        ; $5d62: $fe $41
    ld [bc], a                                    ; $5d64: $02
    rst $38                                       ; $5d65: $ff
    db $10                                        ; $5d66: $10
    add e                                         ; $5d67: $83
    rst $38                                       ; $5d68: $ff
    add h                                         ; $5d69: $84
    and [hl]                                      ; $5d6a: $a6
    ld [bc], a                                    ; $5d6b: $02
    db $fc                                        ; $5d6c: $fc
    add h                                         ; $5d6d: $84
    ld hl, sp-$7c                                 ; $5d6e: $f8 $84
    nop                                           ; $5d70: $00
    ldh [$3f], a                                  ; $5d71: $e0 $3f
    rst $38                                       ; $5d73: $ff
    ccf                                           ; $5d74: $3f
    inc a                                         ; $5d75: $3c
    db $e4                                        ; $5d76: $e4
    ld a, h                                       ; $5d77: $7c
    db $e4                                        ; $5d78: $e4
    ld [$3f24], sp                                ; $5d79: $08 $24 $3f
    cpl                                           ; $5d7c: $2f
    ccf                                           ; $5d7d: $3f
    ld c, h                                       ; $5d7e: $4c
    inc c                                         ; $5d7f: $0c
    ld a, a                                       ; $5d80: $7f
    pop bc                                        ; $5d81: $c1
    cp a                                          ; $5d82: $bf
    nop                                           ; $5d83: $00
    pop bc                                        ; $5d84: $c1
    ld a, a                                       ; $5d85: $7f
    ld b, c                                       ; $5d86: $41
    ld b, c                                       ; $5d87: $41
    ld a, a                                       ; $5d88: $7f
    ei                                            ; $5d89: $fb
    rst $38                                       ; $5d8a: $ff
    add c                                         ; $5d8b: $81
    add e                                         ; $5d8c: $83
    add [hl]                                      ; $5d8d: $86
    ld [bc], a                                    ; $5d8e: $02
    add c                                         ; $5d8f: $81
    rst $38                                       ; $5d90: $ff
    db $fc                                        ; $5d91: $fc
    rst $38                                       ; $5d92: $ff
    inc b                                         ; $5d93: $04
    ld [bc], a                                    ; $5d94: $02
    nop                                           ; $5d95: $00
    ld [c], a                                     ; $5d96: $e2
    add hl, bc                                    ; $5d97: $09
    jr nz, @+$01                                  ; $5d98: $20 $ff

    rlca                                          ; $5d9a: $07
    dec bc                                        ; $5d9b: $0b
    ld [$f10f], sp                                ; $5d9c: $08 $0f $f1
    rla                                           ; $5d9f: $17
    ld sp, hl                                     ; $5da0: $f9
    ld de, $7180                                  ; $5da1: $11 $80 $71
    ld [bc], a                                    ; $5da4: $02
    ld hl, $a1e1                                  ; $5da5: $21 $e1 $a1
    pop hl                                        ; $5da8: $e1
    pop hl                                        ; $5da9: $e1
    ld hl, $00c1                                  ; $5daa: $21 $c1 $00
    ld hl, $fe03                                  ; $5dad: $21 $03 $fe
    db $fd                                        ; $5db0: $fd
    cp $e3                                        ; $5db1: $fe $e3
    ld [hl+], a                                   ; $5db3: $22
    ld [c], a                                     ; $5db4: $e2
    dec bc                                        ; $5db5: $0b
    inc hl                                        ; $5db6: $23
    daa                                           ; $5db7: $27
    rst $38                                       ; $5db8: $ff
    ld a, h                                       ; $5db9: $7c
    ld b, $12                                     ; $5dba: $06 $12
    ld b, $30                                     ; $5dbc: $06 $30
    db $10                                        ; $5dbe: $10
    rst $38                                       ; $5dbf: $ff
    ld a, [bc]                                    ; $5dc0: $0a
    ld h, d                                       ; $5dc1: $62
    cp a                                          ; $5dc2: $bf
    dec sp                                        ; $5dc3: $3b
    jr jr_0c8_5df5                                ; $5dc4: $18 $2f

    inc de                                        ; $5dc6: $13
    ldh a, [rIE]                                  ; $5dc7: $f0 $ff
    ei                                            ; $5dc9: $fb
    ld [hl], $03                                  ; $5dca: $36 $03
    ldh [$80], a                                  ; $5dcc: $e0 $80
    ld a, [hl-]                                   ; $5dce: $3a
    inc bc                                        ; $5dcf: $03
    rst $00                                       ; $5dd0: $c7
    call nz, $888f                                ; $5dd1: $c4 $8f $88
    add a                                         ; $5dd4: $87
    adc b                                         ; $5dd5: $88
    dec bc                                        ; $5dd6: $0b
    nop                                           ; $5dd7: $00
    db $fc                                        ; $5dd8: $fc
    ei                                            ; $5dd9: $fb
    db $fc                                        ; $5dda: $fc
    add h                                         ; $5ddb: $84
    add a                                         ; $5ddc: $87
    rrca                                          ; $5ddd: $0f
    rst $38                                       ; $5dde: $ff
    ld sp, hl                                     ; $5ddf: $f9
    ret nz                                        ; $5de0: $c0

    and h                                         ; $5de1: $a4
    nop                                           ; $5de2: $00
    and b                                         ; $5de3: $a0
    ld [$3fe0], sp                                ; $5de4: $08 $e0 $3f
    rst $30                                       ; $5de7: $f7
    ccf                                           ; $5de8: $3f
    ld a, $e2                                     ; $5de9: $3e $e2
    ld [bc], a                                    ; $5deb: $02
    call c, Call_000_3ce4                         ; $5dec: $dc $e4 $3c
    daa                                           ; $5def: $27
    ld a, a                                       ; $5df0: $7f
    ret nz                                        ; $5df1: $c0

    ld d, b                                       ; $5df2: $50
    dec sp                                        ; $5df3: $3b
    adc c                                         ; $5df4: $89

jr_0c8_5df5:
    nop                                           ; $5df5: $00
    adc c                                         ; $5df6: $89
    add c                                         ; $5df7: $81
    adc e                                         ; $5df8: $8b
    cp [hl]                                       ; $5df9: $be
    add $02                                       ; $5dfa: $c6 $02
    cp $de                                        ; $5dfc: $fe $de
    ld bc, $fcfe                                  ; $5dfe: $01 $fe $fc
    inc bc                                        ; $5e01: $03
    rst $38                                       ; $5e02: $ff
    inc bc                                        ; $5e03: $03
    cp $02                                        ; $5e04: $fe $02
    ld d, b                                       ; $5e06: $50
    dec bc                                        ; $5e07: $0b
    add b                                         ; $5e08: $80
    and d                                         ; $5e09: $a2
    nop                                           ; $5e0a: $00
    ld b, b                                       ; $5e0b: $40
    ccf                                           ; $5e0c: $3f
    ld b, b                                       ; $5e0d: $40
    ld e, a                                       ; $5e0e: $5f
    ldh [$df], a                                  ; $5e0f: $e0 $df
    ldh [rP1], a                                  ; $5e11: $e0 $00
    jr nz, jr_0c8_5e54                            ; $5e13: $20 $3f

    ld a, $ff                                     ; $5e15: $3e $ff
    push hl                                       ; $5e17: $e5
    db $fd                                        ; $5e18: $fd
    add c                                         ; $5e19: $81
    rst $38                                       ; $5e1a: $ff
    add b                                         ; $5e1b: $80
    rlca                                          ; $5e1c: $07
    dec bc                                        ; $5e1d: $0b
    add e                                         ; $5e1e: $83
    cp $de                                        ; $5e1f: $fe $de
    rst $38                                       ; $5e21: $ff
    ei                                            ; $5e22: $fb
    adc e                                         ; $5e23: $8b

jr_0c8_5e24:
    ld a, [c]                                     ; $5e24: $f2
    jr jr_0c8_5e39                                ; $5e25: $18 $12

    ld a, [c]                                     ; $5e27: $f2
    ld e, $5a                                     ; $5e28: $1e $5a
    dec de                                        ; $5e2a: $1b
    ld h, [hl]                                    ; $5e2b: $66
    dec de                                        ; $5e2c: $1b
    cpl                                           ; $5e2d: $2f
    jr z, jr_0c8_5e3f                             ; $5e2e: $28 $0f

    nop                                           ; $5e30: $00
    jr c, jr_0c8_5e24                             ; $5e31: $38 $f1

    ld sp, $f111                                  ; $5e33: $31 $11 $f1
    ldh a, [$f1]                                  ; $5e36: $f0 $f1
    pop hl                                        ; $5e38: $e1

jr_0c8_5e39:
    inc bc                                        ; $5e39: $03
    rra                                           ; $5e3a: $1f
    rst $38                                       ; $5e3b: $ff
    rra                                           ; $5e3c: $1f
    ldh a, [rNR10]                                ; $5e3d: $f0 $10

jr_0c8_5e3f:
    ldh a, [rTMA]                                 ; $5e3f: $f0 $06
    nop                                           ; $5e41: $00
    ret z                                         ; $5e42: $c8

    ld a, [de]                                    ; $5e43: $1a
    inc b                                         ; $5e44: $04
    ld a, h                                       ; $5e45: $7c
    add a                                         ; $5e46: $87
    ld a, [hl]                                    ; $5e47: $7e
    add a                                         ; $5e48: $87
    add a                                         ; $5e49: $87
    add h                                         ; $5e4a: $84
    nop                                           ; $5e4b: $00
    and a                                         ; $5e4c: $a7
    db $e4                                        ; $5e4d: $e4
    db $f4                                        ; $5e4e: $f4
    sub b                                         ; $5e4f: $90
    dec bc                                        ; $5e50: $0b
    ldh [rSC], a                                  ; $5e51: $e0 $02
    sub b                                         ; $5e53: $90

jr_0c8_5e54:
    inc sp                                        ; $5e54: $33
    sbc $1b                                       ; $5e55: $de $1b
    ldh a, [rNR32]                                ; $5e57: $f0 $1c
    inc b                                         ; $5e59: $04
    di                                            ; $5e5a: $f3
    ld a, [c]                                     ; $5e5b: $f2
    add b                                         ; $5e5c: $80
    sub b                                         ; $5e5d: $90
    dec bc                                        ; $5e5e: $0b
    ld sp, hl                                     ; $5e5f: $f9
    rrca                                          ; $5e60: $0f
    ld sp, hl                                     ; $5e61: $f9
    rrca                                          ; $5e62: $0f
    rst $38                                       ; $5e63: $ff
    rrca                                          ; $5e64: $0f
    ld a, a                                       ; $5e65: $7f
    add b                                         ; $5e66: $80
    rla                                           ; $5e67: $17
    jr nz, jr_0c8_5e7a                            ; $5e68: $20 $10

    rst $38                                       ; $5e6a: $ff
    ld a, $27                                     ; $5e6b: $3e $27
    inc a                                         ; $5e6d: $3c
    and h                                         ; $5e6e: $a4
    db $fc                                        ; $5e6f: $fc
    ld [$c4e4], sp                                ; $5e70: $08 $e4 $c4
    ld a, l                                       ; $5e73: $7d
    ld a, b                                       ; $5e74: $78
    ret nz                                        ; $5e75: $c0

    nop                                           ; $5e76: $00
    add a                                         ; $5e77: $87
    add a                                         ; $5e78: $87
    rst $38                                       ; $5e79: $ff

jr_0c8_5e7a:
    nop                                           ; $5e7a: $00
    db $fc                                        ; $5e7b: $fc
    adc b                                         ; $5e7c: $88
    adc a                                         ; $5e7d: $8f
    adc a                                         ; $5e7e: $8f
    adc a                                         ; $5e7f: $8f
    adc c                                         ; $5e80: $89
    rst $08                                       ; $5e81: $cf
    inc de                                        ; $5e82: $13
    nop                                           ; $5e83: $00
    cp $f3                                        ; $5e84: $fe $f3
    cp $71                                        ; $5e86: $fe $71
    sbc [hl]                                      ; $5e88: $9e
    db $e3                                        ; $5e89: $e3
    sbc [hl]                                      ; $5e8a: $9e
    sub e                                         ; $5e8b: $93
    ld [hl], c                                    ; $5e8c: $71
    rst $38                                       ; $5e8d: $ff
    jr nc, jr_0c8_5eab                            ; $5e8e: $30 $1b

    cp $03                                        ; $5e90: $fe $03
    jr nc, jr_0c8_5eb7                            ; $5e92: $30 $23

    push hl                                       ; $5e94: $e5
    dec a                                         ; $5e95: $3d
    push hl                                       ; $5e96: $e5
    ld h, d                                       ; $5e97: $62
    ld bc, $ff40                                  ; $5e98: $01 $40 $ff
    ld [hl+], a                                   ; $5e9b: $22
    inc b                                         ; $5e9c: $04
    ld a, [hl]                                    ; $5e9d: $7e
    jp nz, $c27e                                  ; $5e9e: $c2 $7e $c2

    ld b, e                                       ; $5ea1: $43
    rst $38                                       ; $5ea2: $ff
    jr nz, @-$04                                  ; $5ea3: $20 $fa

    ld e, $a6                                     ; $5ea5: $1e $a6
    nop                                           ; $5ea7: $00
    inc de                                        ; $5ea8: $13
    db $10                                        ; $5ea9: $10
    di                                            ; $5eaa: $f3

jr_0c8_5eab:
    db $e3                                        ; $5eab: $e3
    di                                            ; $5eac: $f3
    nop                                           ; $5ead: $00
    ld de, $1f1e                                  ; $5eae: $11 $1e $1f
    ld e, $fe                                     ; $5eb1: $1e $fe
    di                                            ; $5eb3: $f3
    daa                                           ; $5eb4: $27
    jr c, jr_0c8_5eb7                             ; $5eb5: $38 $00

jr_0c8_5eb7:
    ccf                                           ; $5eb7: $3f
    jr c, jr_0c8_5ee9                             ; $5eb8: $38 $2f

    ccf                                           ; $5eba: $3f
    ld c, a                                       ; $5ebb: $4f

Jump_0c8_5ebc:
    ld hl, sp-$31                                 ; $5ebc: $f8 $cf
    ld hl, sp+$00                                 ; $5ebe: $f8 $00
    rst $00                                       ; $5ec0: $c7
    ld a, b                                       ; $5ec1: $78
    adc a                                         ; $5ec2: $8f
    ld a, b                                       ; $5ec3: $78
    ld c, a                                       ; $5ec4: $4f
    rst $38                                       ; $5ec5: $ff
    rst $38                                       ; $5ec6: $ff
    db $10                                        ; $5ec7: $10
    ld b, $df                                     ; $5ec8: $06 $df
    jr nc, jr_0c8_5f4b                            ; $5eca: $30 $7f

    ldh a, [$fb]                                  ; $5ecc: $f0 $fb
    dec bc                                        ; $5ece: $0b
    ld a, [bc]                                    ; $5ecf: $0a
    rrca                                          ; $5ed0: $0f
    ld a, [bc]                                    ; $5ed1: $0a
    rst $38                                       ; $5ed2: $ff
    nop                                           ; $5ed3: $00
    and a                                         ; $5ed4: $a7
    db $e4                                        ; $5ed5: $e4
    and a                                         ; $5ed6: $a7
    db $f4                                        ; $5ed7: $f4
    rst $38                                       ; $5ed8: $ff
    db $fc                                        ; $5ed9: $fc
    db $fc                                        ; $5eda: $fc
    rlca                                          ; $5edb: $07
    ld bc, $0ff7                                  ; $5edc: $01 $f7 $0f
    ld hl, sp+$08                                 ; $5edf: $f8 $08
    ld hl, sp+$08                                 ; $5ee1: $f8 $08
    rrca                                          ; $5ee3: $0f
    ld [hl], b                                    ; $5ee4: $70
    inc bc                                        ; $5ee5: $03
    inc d                                         ; $5ee6: $14
    rst $38                                       ; $5ee7: $ff
    rlca                                          ; $5ee8: $07

jr_0c8_5ee9:
    cp h                                          ; $5ee9: $bc
    ld [hl], b                                    ; $5eea: $70
    add e                                         ; $5eeb: $83
    pop hl                                        ; $5eec: $e1
    ld [hl], b                                    ; $5eed: $70
    inc hl                                        ; $5eee: $23
    dec sp                                        ; $5eef: $3b
    rst $38                                       ; $5ef0: $ff
    jr nz, @+$21                                  ; $5ef1: $20 $1f

    pop hl                                        ; $5ef3: $e1
    sub d                                         ; $5ef4: $92
    inc c                                         ; $5ef5: $0c
    ld a, a                                       ; $5ef6: $7f
    pop bc                                        ; $5ef7: $c1
    ld a, [$0387]                                 ; $5ef8: $fa $87 $03
    inc b                                         ; $5efb: $04
    rst $38                                       ; $5efc: $ff
    rst $30                                       ; $5efd: $f7
    cp $0f                                        ; $5efe: $fe $0f
    ld [$0802], sp                                ; $5f00: $08 $02 $08
    rlca                                          ; $5f03: $07
    ld [$0f00], sp                                ; $5f04: $08 $00 $0f
    jr @+$41                                      ; $5f07: $18 $3f

    pop hl                                        ; $5f09: $e1
    ld a, a                                       ; $5f0a: $7f
    pop hl                                        ; $5f0b: $e1
    rst $38                                       ; $5f0c: $ff
    ld hl, $f409                                  ; $5f0d: $21 $09 $f4
    db $fc                                        ; $5f10: $fc
    ldh a, [$8c]                                  ; $5f11: $f0 $8c
    ld a, [hl]                                    ; $5f13: $7e
    dec bc                                        ; $5f14: $0b
    rst $30                                       ; $5f15: $f7
    adc a                                         ; $5f16: $8f
    ld d, b                                       ; $5f17: $50
    nop                                           ; $5f18: $00
    ld [$e70b], sp                                ; $5f19: $08 $0b $e7
    rra                                           ; $5f1c: $1f
    ldh a, [$5d]                                  ; $5f1d: $f0 $5d
    inc de                                        ; $5f1f: $13
    add sp, -$01                                  ; $5f20: $e8 $ff
    ld hl, sp+$00                                 ; $5f22: $f8 $00
    adc a                                         ; $5f24: $8f
    rst $30                                       ; $5f25: $f7
    sbc a                                         ; $5f26: $9f
    ld e, [hl]                                    ; $5f27: $5e
    cp c                                          ; $5f28: $b9
    rst $28                                       ; $5f29: $ef
    xor c                                         ; $5f2a: $a9
    halt                                          ; $5f2b: $76
    ld [bc], a                                    ; $5f2c: $02
    cp $3e                                        ; $5f2d: $fe $3e
    jp nz, $82fc                                  ; $5f2f: $c2 $fc $82

    cp $02                                        ; $5f32: $fe $02
    nop                                           ; $5f34: $00
    db $f4                                        ; $5f35: $f4
    ld b, b                                       ; $5f36: $40
    rrca                                          ; $5f37: $0f
    jr nc, jr_0c8_5f45                            ; $5f38: $30 $0b

    ccf                                           ; $5f3a: $3f
    inc hl                                        ; $5f3b: $23
    ccf                                           ; $5f3c: $3f
    ld [hl+], a                                   ; $5f3d: $22
    ccf                                           ; $5f3e: $3f
    ld [hl+], a                                   ; $5f3f: $22
    nop                                           ; $5f40: $00
    rra                                           ; $5f41: $1f
    ld [hl+], a                                   ; $5f42: $22
    ccf                                           ; $5f43: $3f
    ld h, d                                       ; $5f44: $62

jr_0c8_5f45:
    ld a, a                                       ; $5f45: $7f
    jp nz, $c2ff                                  ; $5f46: $c2 $ff $c2

    nop                                           ; $5f49: $00
    rst $38                                       ; $5f4a: $ff

jr_0c8_5f4b:
    ld b, d                                       ; $5f4b: $42
    jp hl                                         ; $5f4c: $e9


    ld sp, hl                                     ; $5f4d: $f9
    pop hl                                        ; $5f4e: $e1
    add hl, de                                    ; $5f4f: $19
    ld sp, hl                                     ; $5f50: $f9
    add hl, bc                                    ; $5f51: $09
    nop                                           ; $5f52: $00
    ld sp, hl                                     ; $5f53: $f9
    add hl, bc                                    ; $5f54: $09
    rst $28                                       ; $5f55: $ef
    rra                                           ; $5f56: $1f
    di                                            ; $5f57: $f3
    ld [de], a                                    ; $5f58: $12
    pop af                                        ; $5f59: $f1
    ld d, $10                                     ; $5f5a: $16 $10
    rst $08                                       ; $5f5c: $cf
    ld a, $e1                                     ; $5f5d: $3e $e1
    ld c, $05                                     ; $5f5f: $0e $05
    di                                            ; $5f61: $f3
    ld e, $d3                                     ; $5f62: $1e $d3
    cp $00                                        ; $5f64: $fe $00
    di                                            ; $5f66: $f3
    ld e, $ef                                     ; $5f67: $1e $ef
    ld a, $bc                                     ; $5f69: $3e $bc
    ld [hl], e                                    ; $5f6b: $73
    rst $18                                       ; $5f6c: $df
    ld d, e                                       ; $5f6d: $53
    inc b                                         ; $5f6e: $04
    ret c                                         ; $5f6f: $d8

    ld hl, sp-$08                                 ; $5f70: $f8 $f8
    ld [$aaf0], sp                                ; $5f72: $08 $f0 $aa
    nop                                           ; $5f75: $00
    ld hl, sp+$08                                 ; $5f76: $f8 $08
    ld [bc], a                                    ; $5f78: $02
    add sp, $1f                                   ; $5f79: $e8 $1f
    dec c                                         ; $5f7b: $0d
    rst $38                                       ; $5f7c: $ff
    rst $18                                       ; $5f7d: $df
    ld hl, sp+$70                                 ; $5f7e: $f8 $70
    dec de                                        ; $5f80: $1b
    rst $20                                       ; $5f81: $e7
    add b                                         ; $5f82: $80
    ld [hl], b                                    ; $5f83: $70
    inc de                                        ; $5f84: $13
    jp $fc3a                                      ; $5f85: $c3 $3a $fc


    ccf                                           ; $5f88: $3f
    add d                                         ; $5f89: $82
    add e                                         ; $5f8a: $83
    add e                                         ; $5f8b: $83
    add b                                         ; $5f8c: $80
    rst $30                                       ; $5f8d: $f7
    ld [bc], a                                    ; $5f8e: $02
    add a                                         ; $5f8f: $87
    adc h                                         ; $5f90: $8c
    add a                                         ; $5f91: $87
    db $fc                                        ; $5f92: $fc
    ld a, h                                       ; $5f93: $7c
    rst $38                                       ; $5f94: $ff
    rst $38                                       ; $5f95: $ff
    nop                                           ; $5f96: $00
    add a                                         ; $5f97: $87
    ld a, e                                       ; $5f98: $7b
    add [hl]                                      ; $5f99: $86
    cp a                                          ; $5f9a: $bf
    ld h, c                                       ; $5f9b: $61
    pop hl                                        ; $5f9c: $e1
    rst $38                                       ; $5f9d: $ff
    db $fc                                        ; $5f9e: $fc
    nop                                           ; $5f9f: $00
    ld a, [hl]                                    ; $5fa0: $7e
    add d                                         ; $5fa1: $82
    ld b, d                                       ; $5fa2: $42
    ld b, d                                       ; $5fa3: $42
    jp nz, $c242                                  ; $5fa4: $c2 $42 $c2

    cp $00                                        ; $5fa7: $fe $00
    cp $f2                                        ; $5fa9: $fe $f2
    rrca                                          ; $5fab: $0f
    rrca                                          ; $5fac: $0f
    ld hl, sp-$08                                 ; $5fad: $f8 $f8
    rst $38                                       ; $5faf: $ff
    dec e                                         ; $5fb0: $1d
    db $10                                        ; $5fb1: $10
    rra                                           ; $5fb2: $1f
    ld [de], a                                    ; $5fb3: $12
    inc de                                        ; $5fb4: $13
    ld [bc], a                                    ; $5fb5: $02
    nop                                           ; $5fb6: $00
    rra                                           ; $5fb7: $1f
    ld c, $1f                                     ; $5fb8: $0e $1f
    stop                                          ; $5fba: $10 $00
    rst $38                                       ; $5fbc: $ff
    rst $28                                       ; $5fbd: $ef
    xor c                                         ; $5fbe: $a9
    xor a                                         ; $5fbf: $af
    jp hl                                         ; $5fc0: $e9


    rst $28                                       ; $5fc1: $ef
    jp hl                                         ; $5fc2: $e9


    cpl                                           ; $5fc3: $2f
    nop                                           ; $5fc4: $00
    jp hl                                         ; $5fc5: $e9


    scf                                           ; $5fc6: $37
    rst $38                                       ; $5fc7: $ff
    ld a, $e1                                     ; $5fc8: $3e $e1
    ccf                                           ; $5fca: $3f
    pop hl                                        ; $5fcb: $e1
    ld a, [hl]                                    ; $5fcc: $7e
    inc b                                         ; $5fcd: $04
    jp $0605                                      ; $5fce: $c3 $05 $06


    rlca                                          ; $5fd1: $07
    rlca                                          ; $5fd2: $07
    jr nz, jr_0c8_5fe0                            ; $5fd3: $20 $0b

    rlca                                          ; $5fd5: $07
    db $fc                                        ; $5fd6: $fc
    add b                                         ; $5fd7: $80
    jr nz, jr_0c8_5fe5                            ; $5fd8: $20 $0b

    rst $30                                       ; $5fda: $f7
    inc c                                         ; $5fdb: $0c
    ld a, [hl]                                    ; $5fdc: $7e
    jp $ffc3                                      ; $5fdd: $c3 $c3 $ff


jr_0c8_5fe0:
    ld hl, sp+$00                                 ; $5fe0: $f8 $00
    ld a, h                                       ; $5fe2: $7c
    add h                                         ; $5fe3: $84
    ld b, h                                       ; $5fe4: $44

jr_0c8_5fe5:
    ld b, h                                       ; $5fe5: $44
    call nz, $c444                                ; $5fe6: $c4 $44 $c4
    db $fc                                        ; $5fe9: $fc
    nop                                           ; $5fea: $00
    db $fc                                        ; $5feb: $fc
    db $e4                                        ; $5fec: $e4
    rra                                           ; $5fed: $1f
    rra                                           ; $5fee: $1f
    ld a, [c]                                     ; $5fef: $f2
    ld a, [c]                                     ; $5ff0: $f2
    rst $38                                       ; $5ff1: $ff
    dec sp                                        ; $5ff2: $3b
    db $10                                        ; $5ff3: $10
    ccf                                           ; $5ff4: $3f
    inc h                                         ; $5ff5: $24
    daa                                           ; $5ff6: $27
    ld [bc], a                                    ; $5ff7: $02
    nop                                           ; $5ff8: $00
    ccf                                           ; $5ff9: $3f
    inc e                                         ; $5ffa: $1c
    ccf                                           ; $5ffb: $3f
    stop                                          ; $5ffc: $10 $00
    rst $38                                       ; $5ffe: $ff
    sbc $52                                       ; $5fff: $de $52
    ld e, [hl]                                    ; $6001: $5e
    jp nc, $d2de                                  ; $6002: $d2 $de $d2

    ld e, [hl]                                    ; $6005: $5e
    nop                                           ; $6006: $00
    jp nc, $ff6e                                  ; $6007: $d2 $6e $ff

    ld a, l                                       ; $600a: $7d
    jp $c27f                                      ; $600b: $c3 $7f $c2


    ld a, [hl]                                    ; $600e: $7e
    inc b                                         ; $600f: $04
    jp $0d0a                                      ; $6010: $c3 $0a $0d


    rrca                                          ; $6013: $0f
    rrca                                          ; $6014: $0f
    inc d                                         ; $6015: $14
    ld bc, $0e18                                  ; $6016: $01 $18 $0e
    ld b, b                                       ; $6019: $40
    ld sp, hl                                     ; $601a: $f9
    adc a                                         ; $601b: $8f
    inc bc                                        ; $601c: $03
    rrca                                          ; $601d: $0f
    rst $30                                       ; $601e: $f7

Jump_0c8_601f:
    inc c                                         ; $601f: $0c
    cp $23                                        ; $6020: $fe $23
    inc hl                                        ; $6022: $23
    and e                                         ; $6023: $a3
    ret nz                                        ; $6024: $c0

    inc bc                                        ; $6025: $03
    ld [de], a                                    ; $6026: $12
    dec sp                                        ; $6027: $3b
    ld [bc], a                                    ; $6028: $02
    ld [de], a                                    ; $6029: $12
    cp $1c                                        ; $602a: $fe $1c
    ld h, b                                       ; $602c: $60
    inc bc                                        ; $602d: $03
    ret nc                                        ; $602e: $d0

jr_0c8_602f:
    ld a, [hl+]                                   ; $602f: $2a

jr_0c8_6030:
    ld [hl], h                                    ; $6030: $74
    ld b, a                                       ; $6031: $47
    db $f4                                        ; $6032: $f4
    ld [de], a                                    ; $6033: $12
    jp nz, $fa0d                                  ; $6034: $c2 $0d $fa

    inc c                                         ; $6037: $0c
    rlca                                          ; $6038: $07
    jp z, Jump_000_0f00                           ; $6039: $ca $00 $0f

    ld hl, sp+$46                                 ; $603c: $f8 $46
    rlca                                          ; $603e: $07
    inc b                                         ; $603f: $04

Call_0c8_6040:
    nop                                           ; $6040: $00
    or b                                          ; $6041: $b0
    rst $38                                       ; $6042: $ff
    db $10                                        ; $6043: $10
    ld [bc], a                                    ; $6044: $02
    nop                                           ; $6045: $00
    ld e, h                                       ; $6046: $5c

jr_0c8_6047:
    dec bc                                        ; $6047: $0b
    cp $96                                        ; $6048: $fe $96
    ldh [$03], a                                  ; $604a: $e0 $03
    rst $38                                       ; $604c: $ff
    db $10                                        ; $604d: $10
    add b                                         ; $604e: $80
    dec hl                                        ; $604f: $2b
    ld b, d                                       ; $6050: $42
    sbc c                                         ; $6051: $99
    inc b                                         ; $6052: $04
    sbc d                                         ; $6053: $9a
    inc c                                         ; $6054: $0c
    rlca                                          ; $6055: $07
    add h                                         ; $6056: $84
    jp c, $c702                                   ; $6057: $da $02 $c7

    ld b, h                                       ; $605a: $44
    call nz, Call_0c8_4047                        ; $605b: $c4 $47 $40
    jr z, jr_0c8_6030                             ; $605e: $28 $d0

    inc b                                         ; $6060: $04
    rst $38                                       ; $6061: $ff
    inc bc                                        ; $6062: $03
    jr nz, jr_0c8_602f                            ; $6063: $20 $ca

    daa                                           ; $6065: $27
    ld [bc], a                                    ; $6066: $02
    jr z, jr_0c8_6047                             ; $6067: $28 $de

    daa                                           ; $6069: $27
    jp nz, $ca2f                                  ; $606a: $c2 $2f $ca

    nop                                           ; $606d: $00
    daa                                           ; $606e: $27
    ld a, b                                       ; $606f: $78
    add h                                         ; $6070: $84
    ld a, h                                       ; $6071: $7c
    add b                                         ; $6072: $80
    ld a, b                                       ; $6073: $78
    add h                                         ; $6074: $84
    ld a, l                                       ; $6075: $7d
    ret nz                                        ; $6076: $c0

    inc b                                         ; $6077: $04
    nop                                           ; $6078: $00
    ld a, [bc]                                    ; $6079: $0a
    ld [$8479], sp                                ; $607a: $08 $79 $84
    ld [hl+], a                                   ; $607d: $22
    ld b, h                                       ; $607e: $44
    ld [hl+], a                                   ; $607f: $22

Jump_0c8_6080:
    nop                                           ; $6080: $00
    ld [$0022], sp                                ; $6081: $08 $22 $00
    rst $38                                       ; $6084: $ff
    nop                                           ; $6085: $00
    ld [$1728], sp                                ; $6086: $08 $28 $17
    ld c, b                                       ; $6089: $48
    rla                                           ; $608a: $17
    inc b                                         ; $608b: $04
    ld [$0817], sp                                ; $608c: $08 $17 $08
    rst $10                                       ; $608f: $d7
    ld [$2808], sp                                ; $6090: $08 $08 $28
    rst $28                                       ; $6093: $ef
    stop                                          ; $6094: $10 $00
    rst $30                                       ; $6096: $f7
    ld [$1ce3], sp                                ; $6097: $08 $e3 $1c
    ret c                                         ; $609a: $d8

    daa                                           ; $609b: $27
    xor e                                         ; $609c: $ab
    ld b, h                                       ; $609d: $44
    nop                                           ; $609e: $00
    cp e                                          ; $609f: $bb
    ld b, h                                       ; $60a0: $44
    rst $00                                       ; $60a1: $c7
    jr c, @+$01                                   ; $60a2: $38 $ff

jr_0c8_60a4:
    nop                                           ; $60a4: $00

jr_0c8_60a5:
    ld [c], a                                     ; $60a5: $e2
    ld de, $ec00                                  ; $60a6: $11 $00 $ec
    db $10                                        ; $60a9: $10
    rst $18                                       ; $60aa: $df
    jr nz, @+$41                                  ; $60ab: $20 $3f

    ret nz                                        ; $60ad: $c0

    cp a                                          ; $60ae: $bf
    ld b, b                                       ; $60af: $40
    nop                                           ; $60b0: $00
    rst $08                                       ; $60b1: $cf
    jr nc, jr_0c8_60a4                            ; $60b2: $30 $f0

    rrca                                          ; $60b4: $0f
    rst $38                                       ; $60b5: $ff
    nop                                           ; $60b6: $00
    ld a, a                                       ; $60b7: $7f
    add b                                         ; $60b8: $80
    inc hl                                        ; $60b9: $23
    cp a                                          ; $60ba: $bf
    ld b, b                                       ; $60bb: $40
    ld [bc], a                                    ; $60bc: $02

jr_0c8_60bd:
    jr jr_0c8_613e                                ; $60bd: $18 $7f

    add b                                         ; $60bf: $80
    rst $38                                       ; $60c0: $ff
    ld c, b                                       ; $60c1: $48
    nop                                           ; $60c2: $00
    inc b                                         ; $60c3: $04
    ld l, b                                       ; $60c4: $68
    ld [bc], a                                    ; $60c5: $02
    rst $30                                       ; $60c6: $f7
    ld [$04fb], sp                                ; $60c7: $08 $fb $04
    db $fc                                        ; $60ca: $fc
    inc bc                                        ; $60cb: $03
    ld a, [de]                                    ; $60cc: $1a
    jr c, jr_0c8_60bd                             ; $60cd: $38 $ee

    ld bc, $d111                                  ; $60cf: $01 $11 $d1
    jr nz, jr_0c8_60fa                            ; $60d2: $20 $26

    ret nz                                        ; $60d4: $c0

    ld a, a                                       ; $60d5: $7f
    add b                                         ; $60d6: $80
    ld [bc], a                                    ; $60d7: $02
    jr jr_0c8_60da                                ; $60d8: $18 $00

jr_0c8_60da:
    sbc a                                         ; $60da: $9f
    ld h, b                                       ; $60db: $60
    rst $28                                       ; $60dc: $ef
    db $10                                        ; $60dd: $10
    rra                                           ; $60de: $1f

Jump_0c8_60df:
    ldh [$5f], a                                  ; $60df: $e0 $5f
    jr nz, jr_0c8_60ff                            ; $60e1: $20 $1c

    xor a                                         ; $60e3: $af
    db $10                                        ; $60e4: $10

jr_0c8_60e5:
    rst $28                                       ; $60e5: $ef
    ld [bc], a                                    ; $60e6: $02
    jr nz, @-$4e                                  ; $60e7: $20 $b0

    jr c, jr_0c8_60a5                             ; $60e9: $38 $ba

    ld [$678b], sp                                ; $60eb: $08 $8b $67
    ret nz                                        ; $60ee: $c0

    xor b                                         ; $60ef: $a8
    ld [$18b0], sp                                ; $60f0: $08 $b0 $18
    ld [hl], b                                    ; $60f3: $70
    adc h                                         ; $60f4: $8c
    ld l, b                                       ; $60f5: $68
    sub h                                         ; $60f6: $94
    ld a, b                                       ; $60f7: $78
    add a                                         ; $60f8: $87
    sbc c                                         ; $60f9: $99

jr_0c8_60fa:
    or b                                          ; $60fa: $b0
    ld e, b                                       ; $60fb: $58
    nop                                           ; $60fc: $00
    rst $38                                       ; $60fd: $ff
    or b                                          ; $60fe: $b0

jr_0c8_60ff:
    jr nc, jr_0c8_6103                            ; $60ff: $30 $02

    db $10                                        ; $6101: $10
    dec b                                         ; $6102: $05

jr_0c8_6103:
    ld a, [$5884]                                 ; $6103: $fa $84 $58

jr_0c8_6106:
    jr nz, jr_0c8_60e5                            ; $6106: $20 $dd

    ld [hl+], a                                   ; $6108: $22

jr_0c8_6109:
    sub h                                         ; $6109: $94
    jr c, jr_0c8_6109                             ; $610a: $38 $fd

    ld [bc], a                                    ; $610c: $02
    rst $18                                       ; $610d: $df

jr_0c8_610e:
    jr nz, jr_0c8_610e                            ; $610e: $20 $fe

    ld b, b                                       ; $6110: $40
    ld bc, $38a4                                  ; $6111: $01 $a4 $38
    cp $01                                        ; $6114: $fe $01
    db $ed                                        ; $6116: $ed
    ld [de], a                                    ; $6117: $12
    cp d                                          ; $6118: $ba
    ld b, l                                       ; $6119: $45
    add c                                         ; $611a: $81
    xor d                                         ; $611b: $aa
    ld c, b                                       ; $611c: $48
    rst $28                                       ; $611d: $ef
    db $10                                        ; $611e: $10
    db $fd                                        ; $611f: $fd
    ld [bc], a                                    ; $6120: $02
    db $e3                                        ; $6121: $e3
    inc e                                         ; $6122: $1c
    xor [hl]                                      ; $6123: $ae
    jr z, jr_0c8_6106                             ; $6124: $28 $e0

    jr nz, @+$1a                                  ; $6126: $20 $18

    db $ec                                        ; $6128: $ec
    ld [$4820], sp                                ; $6129: $08 $20 $48
    ld c, d                                       ; $612c: $4a
    and a                                         ; $612d: $a7
    jp z, $6627                                   ; $612e: $ca $27 $66

    nop                                           ; $6131: $00
    sbc a                                         ; $6132: $9f
    inc l                                         ; $6133: $2c
    rst $18                                       ; $6134: $df
    ld hl, $5eff                                  ; $6135: $21 $ff $5e
    rst $38                                       ; $6138: $ff
    add hl, sp                                    ; $6139: $39
    nop                                           ; $613a: $00
    rst $38                                       ; $613b: $ff
    or $ff                                        ; $613c: $f6 $ff

jr_0c8_613e:
    xor e                                         ; $613e: $ab
    call nc, $b1ce                                ; $613f: $d4 $ce $b1
    call $b200                                    ; $6142: $cd $00 $b2
    xor d                                         ; $6145: $aa
    push af                                       ; $6146: $f5
    dec b                                         ; $6147: $05
    ld a, [$ff20]                                 ; $6148: $fa $20 $ff
    ld d, d                                       ; $614b: $52
    nop                                           ; $614c: $00
    rst $38                                       ; $614d: $ff
    xor a                                         ; $614e: $af
    rst $38                                       ; $614f: $ff
    rst $38                                       ; $6150: $ff
    nop                                           ; $6151: $00
    db $eb                                        ; $6152: $eb
    inc d                                         ; $6153: $14
    rst $10                                       ; $6154: $d7
    nop                                           ; $6155: $00
    jr z, @-$74                                   ; $6156: $28 $8a

    ld [hl], l                                    ; $6158: $75
    inc d                                         ; $6159: $14
    db $eb                                        ; $615a: $eb
    ld b, d                                       ; $615b: $42
    rst $38                                       ; $615c: $ff
    sub h                                         ; $615d: $94
    nop                                           ; $615e: $00
    rst $38                                       ; $615f: $ff
    ld l, d                                       ; $6160: $6a
    rst $38                                       ; $6161: $ff
    ld e, l                                       ; $6162: $5d
    and d                                         ; $6163: $a2
    or [hl]                                       ; $6164: $b6
    ld c, c                                       ; $6165: $49
    ld l, c                                       ; $6166: $69
    nop                                           ; $6167: $00
    sub [hl]                                      ; $6168: $96
    or d                                          ; $6169: $b2
    ld c, l                                       ; $616a: $4d
    ld c, c                                       ; $616b: $49
    cp [hl]                                       ; $616c: $be
    ld d, b                                       ; $616d: $50
    rst $38                                       ; $616e: $ff
    and l                                         ; $616f: $a5
    jr nz, @+$01                                  ; $6170: $20 $ff

    jp c, RST_10                                  ; $6172: $da $10 $00

    ld sp, hl                                     ; $6175: $f9
    ld b, $50                                     ; $6176: $06 $50
    xor a                                         ; $6178: $af
    ld [hl+], a                                   ; $6179: $22
    nop                                           ; $617a: $00
    db $dd                                        ; $617b: $dd
    ld d, h                                       ; $617c: $54
    cp e                                          ; $617d: $bb
    add hl, hl                                    ; $617e: $29
    rst $38                                       ; $617f: $ff
    ld [hl], d                                    ; $6180: $72
    rst $38                                       ; $6181: $ff
    db $ed                                        ; $6182: $ed
    nop                                           ; $6183: $00
    rst $38                                       ; $6184: $ff
    xor e                                         ; $6185: $ab
    ld d, h                                       ; $6186: $54
    ld c, [hl]                                    ; $6187: $4e
    or c                                          ; $6188: $b1
    call $2a32                                    ; $6189: $cd $32 $2a
    db $10                                        ; $618c: $10
    push af                                       ; $618d: $f5
    add l                                         ; $618e: $85
    ld a, d                                       ; $618f: $7a
    ld b, b                                       ; $6190: $40
    jr jr_0c8_61a4                                ; $6191: $18 $11

    db $10                                        ; $6193: $10
    cp l                                          ; $6194: $bd
    inc de                                        ; $6195: $13
    nop                                           ; $6196: $00
    ld c, a                                       ; $6197: $4f
    ld e, $a8                                     ; $6198: $1e $a8
    ld e, $78                                     ; $619a: $1e $78
    cp a                                          ; $619c: $bf
    cp $ff                                        ; $619d: $fe $ff
    nop                                           ; $619f: $00
    db $d3                                        ; $61a0: $d3
    rst $28                                       ; $61a1: $ef
    xor h                                         ; $61a2: $ac
    ld d, e                                       ; $61a3: $53

jr_0c8_61a4:
    ld b, c                                       ; $61a4: $41
    cp $c0                                        ; $61a5: $fe $c0
    rst $38                                       ; $61a7: $ff
    nop                                           ; $61a8: $00
    xor a                                         ; $61a9: $af
    ld a, a                                       ; $61aa: $7f
    ret nc                                        ; $61ab: $d0

    jr c, jr_0c8_61e6                             ; $61ac: $38 $38

    ldh a, [$6c]                                  ; $61ae: $f0 $6c
    ld hl, sp+$00                                 ; $61b0: $f8 $00
    sub [hl]                                      ; $61b2: $96
    rst $28                                       ; $61b3: $ef
    inc a                                         ; $61b4: $3c
    add c                                         ; $61b5: $81
    inc h                                         ; $61b6: $24
    ldh [$f5], a                                  ; $61b7: $e0 $f5
    ldh [rP1], a                                  ; $61b9: $e0 $00
    dec a                                         ; $61bb: $3d
    sub d                                         ; $61bc: $92
    dec de                                        ; $61bd: $1b
    rra                                           ; $61be: $1f
    ccf                                           ; $61bf: $3f
    ld e, $aa                                     ; $61c0: $1e $aa
    ld [hl], l                                    ; $61c2: $75
    nop                                           ; $61c3: $00
    sbc a                                         ; $61c4: $9f
    ldh [rNR32], a                                ; $61c5: $e0 $1c
    ld b, c                                       ; $61c7: $41
    jr nz, jr_0c8_61fb                            ; $61c8: $20 $31

    ld [hl], c                                    ; $61ca: $71
    jr nz, jr_0c8_61d1                            ; $61cb: $20 $04

    ld a, l                                       ; $61cd: $7d
    ld sp, hl                                     ; $61ce: $f9
    rst $00                                       ; $61cf: $c7
    rst $38                                       ; $61d0: $ff

jr_0c8_61d1:
    jp $0026                                      ; $61d1: $c3 $26 $00


    add hl, hl                                    ; $61d4: $29
    sub a                                         ; $61d5: $97
    nop                                           ; $61d6: $00
    ld [hl], l                                    ; $61d7: $75
    nop                                           ; $61d8: $00
    xor c                                         ; $61d9: $a9
    add b                                         ; $61da: $80
    ldh a, [$80]                                  ; $61db: $f0 $80
    sub [hl]                                      ; $61dd: $96

Jump_0c8_61de:
    add sp, $00                                   ; $61de: $e8 $00
    ldh [$fd], a                                  ; $61e0: $e0 $fd
    sub d                                         ; $61e2: $92
    cp $fb                                        ; $61e3: $fe $fb
    rst $38                                       ; $61e5: $ff

jr_0c8_61e6:
    push af                                       ; $61e6: $f5
    rst $38                                       ; $61e7: $ff

jr_0c8_61e8:
    nop                                           ; $61e8: $00
    adc c                                         ; $61e9: $89
    ld h, h                                       ; $61ea: $64
    sbc l                                         ; $61eb: $9d
    jr nz, jr_0c8_61e8                            ; $61ec: $20 $fa

    dec b                                         ; $61ee: $05
    ld hl, $00de                                  ; $61ef: $21 $de $00
    ld [bc], a                                    ; $61f2: $02
    rlca                                          ; $61f3: $07
    ld bc, $0203                                  ; $61f4: $01 $03 $02
    ld bc, $0384                                  ; $61f7: $01 $84 $03

jr_0c8_61fa:
    nop                                           ; $61fa: $00

jr_0c8_61fb:
    ld e, a                                       ; $61fb: $5f
    add a                                         ; $61fc: $87
    jp z, Jump_0c8_5420                           ; $61fd: $ca $20 $54

    ld [$35ca], sp                                ; $6200: $08 $ca $35

jr_0c8_6203:
    nop                                           ; $6203: $00
    ld [hl+], a                                   ; $6204: $22
    rst $38                                       ; $6205: $ff
    or l                                          ; $6206: $b5
    jp nz, $ff90                                  ; $6207: $c2 $90 $ff

    ret nz                                        ; $620a: $c0

    rst $38                                       ; $620b: $ff

jr_0c8_620c:
    nop                                           ; $620c: $00
    xor e                                         ; $620d: $ab
    ld a, a                                       ; $620e: $7f
    xor d                                         ; $620f: $aa
    inc b                                         ; $6210: $04
    rst $18                                       ; $6211: $df
    jr nz, jr_0c8_6203                            ; $6212: $20 $ef

    ld bc, $3200                                  ; $6214: $01 $00 $32
    db $dd                                        ; $6217: $dd
    jr nc, jr_0c8_61fa                            ; $6218: $30 $e0

    dec [hl]                                      ; $621a: $35
    ldh [$ae], a                                  ; $621b: $e0 $ae
    pop af                                        ; $621d: $f1
    nop                                           ; $621e: $00
    ld a, a                                       ; $621f: $7f
    rst $38                                       ; $6220: $ff
    xor a                                         ; $6221: $af
    nop                                           ; $6222: $00
    ld d, a                                       ; $6223: $57
    add b                                         ; $6224: $80
    ld e, [hl]                                    ; $6225: $5e
    dec hl                                        ; $6226: $2b
    nop                                           ; $6227: $00
    ld [hl], h                                    ; $6228: $74
    sbc b                                         ; $6229: $98
    jr nc, jr_0c8_620c                            ; $622a: $30 $e0

    ld h, $78                                     ; $622c: $26 $78
    sub $fd                                       ; $622e: $d6 $fd
    nop                                           ; $6230: $00
    and e                                         ; $6231: $a3
    rst $38                                       ; $6232: $ff
    cp d                                          ; $6233: $ba
    ld bc, $225d                                  ; $6234: $01 $5d $22
    cp d                                          ; $6237: $ba
    push bc                                       ; $6238: $c5
    nop                                           ; $6239: $00
    ld d, b                                       ; $623a: $50
    ld l, $14                                     ; $623b: $2e $14
    inc c                                         ; $623d: $0c
    ld d, h                                       ; $623e: $54
    adc [hl]                                      ; $623f: $8e
    rst $38                                       ; $6240: $ff
    ld a, [hl]                                    ; $6241: $7e
    nop                                           ; $6242: $00
    or l                                          ; $6243: $b5
    db $eb                                        ; $6244: $eb
    rst $18                                       ; $6245: $df
    db $fc                                        ; $6246: $fc
    inc a                                         ; $6247: $3c
    rst $38                                       ; $6248: $ff
    add d                                         ; $6249: $82
    rst $38                                       ; $624a: $ff
    nop                                           ; $624b: $00
    cp $01                                        ; $624c: $fe $01
    xor d                                         ; $624e: $aa
    nop                                           ; $624f: $00
    db $f4                                        ; $6250: $f4
    ld bc, $01ef                                  ; $6251: $01 $ef $01
    nop                                           ; $6254: $00
    ld l, [hl]                                    ; $6255: $6e
    cp a                                          ; $6256: $bf
    rst $18                                       ; $6257: $df
    ccf                                           ; $6258: $3f
    sub e                                         ; $6259: $93
    ld h, e                                       ; $625a: $63
    di                                            ; $625b: $f3
    rst $28                                       ; $625c: $ef
    nop                                           ; $625d: $00
    push af                                       ; $625e: $f5
    ld a, [de]                                    ; $625f: $1a
    ld [$dc04], a                                 ; $6260: $ea $04 $dc
    ld bc, $e219                                  ; $6263: $01 $19 $e2
    nop                                           ; $6266: $00
    ld hl, sp-$03                                 ; $6267: $f8 $fd
    rst $30                                       ; $6269: $f7
    ld hl, sp-$04                                 ; $626a: $f8 $fc
    di                                            ; $626c: $f3
    xor a                                         ; $626d: $af
    ld a, a                                       ; $626e: $7f
    nop                                           ; $626f: $00
    ld [hl], e                                    ; $6270: $73
    adc h                                         ; $6271: $8c
    xor h                                         ; $6272: $ac
    ld [bc], a                                    ; $6273: $02
    ld a, a                                       ; $6274: $7f
    nop                                           ; $6275: $00
    adc $79                                       ; $6276: $ce $79
    nop                                           ; $6278: $00
    ldh [$81], a                                  ; $6279: $e0 $81
    ld d, e                                       ; $627b: $53
    pop hl                                        ; $627c: $e1
    ld h, e                                       ; $627d: $63
    jp $fe8f                                      ; $627e: $c3 $8f $fe


    nop                                           ; $6281: $00
    sub a                                         ; $6282: $97
    ld l, b                                       ; $6283: $68
    xor d                                         ; $6284: $aa
    ld bc, $08d5                                  ; $6285: $01 $d5 $08
    add h                                         ; $6288: $84
    inc hl                                        ; $6289: $23
    nop                                           ; $628a: $00
    inc l                                         ; $628b: $2c
    rst $18                                       ; $628c: $df
    add c                                         ; $628d: $81
    cp $e8                                        ; $628e: $fe $e8
    rst $38                                       ; $6290: $ff
    ld a, [$007f]                                 ; $6291: $fa $7f $00
    ld a, [$8d15]                                 ; $6294: $fa $15 $8d
    ld [hl+], a                                   ; $6297: $22
    or l                                          ; $6298: $b5
    nop                                           ; $6299: $00
    xor e                                         ; $629a: $ab
    ldh a, [rP1]                                  ; $629b: $f0 $00
    ld c, h                                       ; $629d: $4c
    ld a, $19                                     ; $629e: $3e $19
    rra                                           ; $62a0: $1f
    rra                                           ; $62a1: $1f
    rst $38                                       ; $62a2: $ff
    ld a, a                                       ; $62a3: $7f

jr_0c8_62a4:
    rst $38                                       ; $62a4: $ff
    nop                                           ; $62a5: $00
    sbc a                                         ; $62a6: $9f
    ld a, a                                       ; $62a7: $7f
    ld c, a                                       ; $62a8: $4f
    cp a                                          ; $62a9: $bf
    cpl                                           ; $62aa: $2f
    rst $38                                       ; $62ab: $ff
    ld d, c                                       ; $62ac: $51
    ldh a, [rP1]                                  ; $62ad: $f0 $00
    db $f4                                        ; $62af: $f4
    ld hl, sp+$5d                                 ; $62b0: $f8 $5d
    rst $38                                       ; $62b2: $ff
    cp $fe                                        ; $62b3: $fe $fe
    cp $ff                                        ; $62b5: $fe $ff
    nop                                           ; $62b7: $00
    rst $38                                       ; $62b8: $ff
    rst $38                                       ; $62b9: $ff
    ldh a, [$f0]                                  ; $62ba: $f0 $f0
    ld b, b                                       ; $62bc: $40
    ret nz                                        ; $62bd: $c0

    ld b, b                                       ; $62be: $40
    ldh [rNR10], a                                ; $62bf: $e0 $10
    db $e4                                        ; $62c1: $e4
    ld sp, hl                                     ; $62c2: $f9
    nop                                           ; $62c3: $00
    ld bc, $0108                                  ; $62c4: $01 $08 $01
    ld de, $ffc7                                  ; $62c7: $11 $c7 $ff
    nop                                           ; $62ca: $00
    cp $dc                                        ; $62cb: $fe $dc
    ld l, [hl]                                    ; $62cd: $6e

jr_0c8_62ce:
    ld b, h                                       ; $62ce: $44
    rst $00                                       ; $62cf: $c7
    rst $00                                       ; $62d0: $c7
    rst $28                                       ; $62d1: $ef
    ld d, [hl]                                    ; $62d2: $56
    nop                                           ; $62d3: $00
    ld sp, hl                                     ; $62d4: $f9
    ret nc                                        ; $62d5: $d0

    ld a, a                                       ; $62d6: $7f
    sbc h                                         ; $62d7: $9c
    rst $28                                       ; $62d8: $ef
    add e                                         ; $62d9: $83
    inc bc                                        ; $62da: $03
    inc bc                                        ; $62db: $03
    nop                                           ; $62dc: $00
    ld bc, $03f1                                  ; $62dd: $01 $f1 $03
    sub e                                         ; $62e0: $93
    rrca                                          ; $62e1: $0f
    sub [hl]                                      ; $62e2: $96
    rst $38                                       ; $62e3: $ff
    and e                                         ; $62e4: $a3
    nop                                           ; $62e5: $00
    ld e, a                                       ; $62e6: $5f
    rlca                                          ; $62e7: $07
    rst $38                                       ; $62e8: $ff
    cp h                                          ; $62e9: $bc
    rst $38                                       ; $62ea: $ff
    ld a, [c]                                     ; $62eb: $f2
    db $fc                                        ; $62ec: $fc
    and h                                         ; $62ed: $a4
    nop                                           ; $62ee: $00
    pop de                                        ; $62ef: $d1
    add b                                         ; $62f0: $80
    db $eb                                        ; $62f1: $eb
    ret nz                                        ; $62f2: $c0

    rst $38                                       ; $62f3: $ff
    ld [$8fff], a                                 ; $62f4: $ea $ff $8f
    nop                                           ; $62f7: $00
    rst $38                                       ; $62f8: $ff
    inc c                                         ; $62f9: $0c
    db $d3                                        ; $62fa: $d3
    jp z, Jump_0c8_4d21                           ; $62fb: $ca $21 $4d

    ld [de], a                                    ; $62fe: $12
    sub [hl]                                      ; $62ff: $96
    nop                                           ; $6300: $00
    nop                                           ; $6301: $00
    and l                                         ; $6302: $a5
    ld c, b                                       ; $6303: $48
    nop                                           ; $6304: $00
    rst $10                                       ; $6305: $d7
    xor d                                         ; $6306: $aa
    jr z, jr_0c8_6328                             ; $6307: $28 $1f

    nop                                           ; $6309: $00
    rst $38                                       ; $630a: $ff
    jr z, jr_0c8_62a4                             ; $630b: $28 $97

    reti                                          ; $630d: $d9


    ld [hl+], a                                   ; $630e: $22
    ld d, l                                       ; $630f: $55
    ld [$00aa], sp                                ; $6310: $08 $aa $00
    ld de, $2f47                                  ; $6313: $11 $47 $2f
    and b                                         ; $6316: $a0
    ld a, a                                       ; $6317: $7f
    sub $e9                                       ; $6318: $d6 $e9
    ld a, [hl-]                                   ; $631a: $3a
    nop                                           ; $631b: $00
    db $fd                                        ; $631c: $fd
    push de                                       ; $631d: $d5
    jr z, jr_0c8_62ce                             ; $631e: $28 $ae

    ld bc, $8451                                  ; $6320: $01 $51 $84
    ld [hl+], a                                   ; $6323: $22
    nop                                           ; $6324: $00
    ld c, c                                       ; $6325: $49
    ld b, l                                       ; $6326: $45
    sbc a                                         ; $6327: $9f

jr_0c8_6328:
    sbc c                                         ; $6328: $99
    ldh a, [$28]                                  ; $6329: $f0 $28
    ld h, b                                       ; $632b: $60
    ld a, b                                       ; $632c: $78
    nop                                           ; $632d: $00
    cp $5b                                        ; $632e: $fe $5b
    and h                                         ; $6330: $a4
    xor d                                         ; $6331: $aa
    ld b, c                                       ; $6332: $41

jr_0c8_6333:
    ld d, l                                       ; $6333: $55
    ld [$00ae], sp                                ; $6334: $08 $ae $00
    nop                                           ; $6337: $00
    ld d, l                                       ; $6338: $55
    and d                                         ; $6339: $a2
    ld a, [hl+]                                   ; $633a: $2a
    call nc, Call_0c8_7fc0                        ; $633b: $d4 $c0 $7f
    ccf                                           ; $633e: $3f
    nop                                           ; $633f: $00
    rst $38                                       ; $6340: $ff
    ld sp, $6a4e                                  ; $6341: $31 $4e $6a
    inc b                                         ; $6344: $04
    call nc, $a009                                ; $6345: $d4 $09 $a0
    nop                                           ; $6348: $00
    ld [bc], a                                    ; $6349: $02
    dec d                                         ; $634a: $15
    ld c, a                                       ; $634b: $4f
    dec bc                                        ; $634c: $0b
    or b                                          ; $634d: $b0
    dec e                                         ; $634e: $1d
    ld b, b                                       ; $634f: $40
    ld h, c                                       ; $6350: $61
    nop                                           ; $6351: $00
    db $10                                        ; $6352: $10
    sub [hl]                                      ; $6353: $96
    ld de, $1fb3                                  ; $6354: $11 $b3 $1f
    ld c, l                                       ; $6357: $4d
    ld e, $a9                                     ; $6358: $1e $a9
    nop                                           ; $635a: $00
    ld e, $58                                     ; $635b: $1e $58
    cp a                                          ; $635d: $bf
    inc a                                         ; $635e: $3c
    rst $38                                       ; $635f: $ff
    xor $ff                                       ; $6360: $ee $ff
    ld b, b                                       ; $6362: $40
    add b                                         ; $6363: $80
    sub b                                         ; $6364: $90
    ld bc, $ff20                                  ; $6365: $01 $20 $ff
    rra                                           ; $6368: $1f
    ld a, a                                       ; $6369: $7f
    inc d                                         ; $636a: $14
    cp b                                          ; $636b: $b8
    jr jr_0c8_636e                                ; $636c: $18 $00

jr_0c8_636e:
    ldh a, [$30]                                  ; $636e: $f0 $30
    ld hl, sp+$6a                                 ; $6370: $f8 $6a
    db $fc                                        ; $6372: $fc
    inc h                                         ; $6373: $24
    ldh [$2a], a                                  ; $6374: $e0 $2a
    nop                                           ; $6376: $00
    ldh [$ea], a                                  ; $6377: $e0 $ea

jr_0c8_6379:
    db $f4                                        ; $6379: $f4
    inc [hl]                                      ; $637a: $34
    dec de                                        ; $637b: $1b
    ld de, $3e1f                                  ; $637c: $11 $1f $3e
    nop                                           ; $637f: $00
    rra                                           ; $6380: $1f
    ld d, c                                       ; $6381: $51
    ld a, $60                                     ; $6382: $3e $60
    push af                                       ; $6384: $f5
    ld [hl], d                                    ; $6385: $72
    ld sp, $0031                                  ; $6386: $31 $31 $00
    jr nz, jr_0c8_6333                            ; $6389: $20 $a8

    ld [hl], c                                    ; $638b: $71
    add hl, sp                                    ; $638c: $39
    db $fd                                        ; $638d: $fd
    rst $00                                       ; $638e: $c7
    rst $38                                       ; $638f: $ff
    add e                                         ; $6390: $83
    nop                                           ; $6391: $00
    rst $38                                       ; $6392: $ff
    ld b, e                                       ; $6393: $43
    rst $38                                       ; $6394: $ff
    cp a                                          ; $6395: $bf
    ld a, a                                       ; $6396: $7f
    xor [hl]                                      ; $6397: $ae
    add b                                         ; $6398: $80
    db $dd                                        ; $6399: $dd
    ld [$a780], sp                                ; $639a: $08 $80 $a7
    ret nc                                        ; $639d: $d0

    add d                                         ; $639e: $82
    sub d                                         ; $639f: $92
    ld bc, $fe30                                  ; $63a0: $01 $30 $fe
    jp c, $d880                                   ; $63a3: $da $80 $d8

    nop                                           ; $63a6: $00
    db $d3                                        ; $63a7: $d3
    rst $28                                       ; $63a8: $ef
    adc b                                         ; $63a9: $88
    ld d, e                                       ; $63aa: $53
    ld [$fba5], sp                                ; $63ab: $08 $a5 $fb
    nop                                           ; $63ae: $00
    nop                                           ; $63af: $00
    xor l                                         ; $63b0: $ad
    nop                                           ; $63b1: $00
    cp e                                          ; $63b2: $bb
    ld b, h                                       ; $63b3: $44
    nop                                           ; $63b4: $00
    cp $48                                        ; $63b5: $fe $48
    nop                                           ; $63b7: $00
    rlca                                          ; $63b8: $07
    add a                                         ; $63b9: $87
    rst $28                                       ; $63ba: $ef
    inc h                                         ; $63bb: $24
    sub c                                         ; $63bc: $91
    sbc d                                         ; $63bd: $9a
    jr nz, jr_0c8_6431                            ; $63be: $20 $71

    nop                                           ; $63c0: $00
    inc b                                         ; $63c1: $04
    xor d                                         ; $63c2: $aa
    inc b                                         ; $63c3: $04
    push af                                       ; $63c4: $f5
    ld [$354a], sp                                ; $63c5: $08 $4a $35
    inc sp                                        ; $63c8: $33
    nop                                           ; $63c9: $00
    ld a, a                                       ; $63ca: $7f
    sub l                                         ; $63cb: $95
    add sp, $2e                                   ; $63cc: $e8 $2e
    ld b, c                                       ; $63ce: $41
    ld a, [$d100]                                 ; $63cf: $fa $00 $d1
    nop                                           ; $63d2: $00
    inc b                                         ; $63d3: $04
    adc d                                         ; $63d4: $8a
    inc h                                         ; $63d5: $24
    db $db                                        ; $63d6: $db
    jr nz, jr_0c8_6379                            ; $63d7: $20 $a0

    ld c, c                                       ; $63d9: $49
    ld b, l                                       ; $63da: $45
    nop                                           ; $63db: $00
    sub a                                         ; $63dc: $97
    ld c, c                                       ; $63dd: $49
    sub a                                         ; $63de: $97
    sbc h                                         ; $63df: $9c
    ld hl, $04e9                                  ; $63e0: $21 $e9 $04
    ld [hl], a                                    ; $63e3: $77
    nop                                           ; $63e4: $00
    nop                                           ; $63e5: $00
    jr z, @-$79                                   ; $63e6: $28 $85

    ld e, e                                       ; $63e8: $5b
    add h                                         ; $63e9: $84
    ld [bc], a                                    ; $63ea: $02
    dec hl                                        ; $63eb: $2b
    dec hl                                        ; $63ec: $2b
    nop                                           ; $63ed: $00
    ld e, h                                       ; $63ee: $5c
    pop af                                        ; $63ef: $f1
    rst $38                                       ; $63f0: $ff
    dec de                                        ; $63f1: $1b
    ld h, h                                       ; $63f2: $64
    dec hl                                        ; $63f3: $2b
    add b                                         ; $63f4: $80
    call z, Call_000_1100                         ; $63f5: $cc $00 $11
    cp e                                          ; $63f8: $bb
    nop                                           ; $63f9: $00
    ld c, l                                       ; $63fa: $4d
    ld [hl+], a                                   ; $63fb: $22
    sub d                                         ; $63fc: $92
    push bc                                       ; $63fd: $c5
    rst $28                                       ; $63fe: $ef
    nop                                           ; $63ff: $00

Jump_0c8_6400:
    ld [hl], d                                    ; $6400: $72
    rlca                                          ; $6401: $07
    inc bc                                        ; $6402: $03
    ld bc, $0103                                  ; $6403: $01 $03 $01
    ld bc, $0000                                  ; $6406: $01 $00 $00
    ld bc, $0102                                  ; $6409: $01 $02 $01
    add c                                         ; $640c: $81
    rlca                                          ; $640d: $07
    reti                                          ; $640e: $d9


    rlca                                          ; $640f: $07
    sub [hl]                                      ; $6410: $96
    nop                                           ; $6411: $00
    rst $18                                       ; $6412: $df
    ld [hl], l                                    ; $6413: $75
    ld [$e2c5], a                                 ; $6414: $ea $c5 $e2
    sub b                                         ; $6417: $90
    rst $10                                       ; $6418: $d7
    add b                                         ; $6419: $80
    jr nz, @+$01                                  ; $641a: $20 $ff

    add b                                         ; $641c: $80
    sbc $01                                       ; $641d: $de $01
    ld b, e                                       ; $641f: $43
    rst $38                                       ; $6420: $ff
    cp e                                          ; $6421: $bb
    ld a, a                                       ; $6422: $7f
    jr nc, jr_0c8_6425                            ; $6423: $30 $00

jr_0c8_6425:
    db $dd                                        ; $6425: $dd
    ld l, b                                       ; $6426: $68
    ldh a, [rNR41]                                ; $6427: $f0 $20
    ldh [$32], a                                  ; $6429: $e0 $32
    ldh [$74], a                                  ; $642b: $e0 $74
    ld [$fce1], sp                                ; $642d: $08 $e1 $fc
    di                                            ; $6430: $f3

jr_0c8_6431:
    cp [hl]                                       ; $6431: $be
    ld l, d                                       ; $6432: $6a
    ld bc, $9874                                  ; $6433: $01 $74 $98
    ld [hl], b                                    ; $6436: $70
    nop                                           ; $6437: $00
    or b                                          ; $6438: $b0
    ld l, a                                       ; $6439: $6f
    ld h, b                                       ; $643a: $60
    and h                                         ; $643b: $a4
    ld a, d                                       ; $643c: $7a
    ld d, d                                       ; $643d: $52
    db $fd                                        ; $643e: $fd
    adc $00                                       ; $643f: $ce $00
    db $fd                                        ; $6441: $fd
    sub l                                         ; $6442: $95
    rst $38                                       ; $6443: $ff
    cp e                                          ; $6444: $bb
    di                                            ; $6445: $f3
    jr jr_0c8_6476                                ; $6446: $18 $2e

    add h                                         ; $6448: $84
    nop                                           ; $6449: $00
    inc c                                         ; $644a: $0c
    ld e, [hl]                                    ; $644b: $5e
    inc b                                         ; $644c: $04
    rlca                                          ; $644d: $07
    adc h                                         ; $644e: $8c
    adc $3e                                       ; $644f: $ce $3e
    cp $00                                        ; $6451: $fe $00
    ld a, a                                       ; $6453: $7f
    ld h, l                                       ; $6454: $65
    ei                                            ; $6455: $fb
    add b                                         ; $6456: $80
    db $eb                                        ; $6457: $eb
    ld c, e                                       ; $6458: $4b
    db $fc                                        ; $6459: $fc

Jump_0c8_645a:
    dec sp                                        ; $645a: $3b
    nop                                           ; $645b: $00
    db $fc                                        ; $645c: $fc
    ld a, $ff                                     ; $645d: $3e $ff
    rst $08                                       ; $645f: $cf
    rst $38                                       ; $6460: $ff
    ld d, d                                       ; $6461: $52
    and d                                         ; $6462: $a2
    ld a, [$0500]                                 ; $6463: $fa $00 $05
    xor a                                         ; $6466: $af
    nop                                           ; $6467: $00
    or $00                                        ; $6468: $f6 $00
    ld a, a                                       ; $646a: $7f
    ccf                                           ; $646b: $3f
    ld e, e                                       ; $646c: $5b
    nop                                           ; $646d: $00
    inc hl                                        ; $646e: $23
    db $e3                                        ; $646f: $e3
    ld h, e                                       ; $6470: $63
    rst $10                                       ; $6471: $d7
    db $e3                                        ; $6472: $e3
    dec a                                         ; $6473: $3d
    rst $38                                       ; $6474: $ff
    push bc                                       ; $6475: $c5

jr_0c8_6476:
    nop                                           ; $6476: $00
    ld a, [hl-]                                   ; $6477: $3a
    and h                                         ; $6478: $a4
    ld [de], a                                    ; $6479: $12
    reti                                          ; $647a: $d9


    inc b                                         ; $647b: $04
    push af                                       ; $647c: $f5
    ld hl, sp-$17                                 ; $647d: $f8 $e9
    nop                                           ; $647f: $00
    ld a, [c]                                     ; $6480: $f2
    db $fc                                        ; $6481: $fc
    di                                            ; $6482: $f3
    or b                                          ; $6483: $b0
    rst $38                                       ; $6484: $ff
    ld c, a                                       ; $6485: $4f
    ccf                                           ; $6486: $3f
    ld [hl], a                                    ; $6487: $77
    nop                                           ; $6488: $00
    adc b                                         ; $6489: $88
    cp d                                          ; $648a: $ba
    nop                                           ; $648b: $00
    push af                                       ; $648c: $f5
    ld [bc], a                                    ; $648d: $02
    ld d, c                                       ; $648e: $51
    pop hl                                        ; $648f: $e1
    ld h, e                                       ; $6490: $63
    nop                                           ; $6491: $00
    pop bc                                        ; $6492: $c1
    rst $20                                       ; $6493: $e7
    jp $efd6                                      ; $6494: $c3 $d6 $ef


    ld a, $fe                                     ; $6497: $3e $fe
    adc e                                         ; $6499: $8b
    nop                                           ; $649a: $00
    ld [hl], h                                    ; $649b: $74
    xor e                                         ; $649c: $ab
    ld b, b                                       ; $649d: $40
    ld e, h                                       ; $649e: $5c
    ld bc, $fe80                                  ; $649f: $01 $80 $fe
    pop de                                        ; $64a2: $d1
    nop                                           ; $64a3: $00
    cp $ea                                        ; $64a4: $fe $ea
    rst $38                                       ; $64a6: $ff
    ld l, [hl]                                    ; $64a7: $6e
    rst $38                                       ; $64a8: $ff
    rst $18                                       ; $64a9: $df
    ld a, a                                       ; $64aa: $7f
    ld h, a                                       ; $64ab: $67
    nop                                           ; $64ac: $00
    sbc c                                         ; $64ad: $99
    db $eb                                        ; $64ae: $eb
    db $10                                        ; $64af: $10
    push af                                       ; $64b0: $f5
    ld [bc], a                                    ; $64b1: $02
    ld c, l                                       ; $64b2: $4d
    jr nz, @+$34                                  ; $64b3: $20 $32

    nop                                           ; $64b5: $00
    ld b, l                                       ; $64b6: $45
    push hl                                       ; $64b7: $e5
    dec bc                                        ; $64b8: $0b
    ld d, c                                       ; $64b9: $51
    xor a                                         ; $64ba: $af
    ld l, $ff                                     ; $64bb: $2e $ff
    dec a                                         ; $64bd: $3d
    nop                                           ; $64be: $00
    rra                                           ; $64bf: $1f
    dec de                                        ; $64c0: $1b
    rra                                           ; $64c1: $1f
    dec de                                        ; $64c2: $1b
    rst $38                                       ; $64c3: $ff
    daa                                           ; $64c4: $27
    adc b                                         ; $64c5: $88
    cp h                                          ; $64c6: $bc
    add b                                         ; $64c7: $80
    jr z, @+$04                                   ; $64c8: $28 $02

    rst $20                                       ; $64ca: $e7
    ld hl, sp+$7a                                 ; $64cb: $f8 $7a
    db $fd                                        ; $64cd: $fd
    ld e, l                                       ; $64ce: $5d
    rst $38                                       ; $64cf: $ff
    rst $38                                       ; $64d0: $ff
    nop                                           ; $64d1: $00
    cp $ff                                        ; $64d2: $fe $ff
    cp $9a                                        ; $64d4: $fe $9a
    inc h                                         ; $64d6: $24
    inc bc                                        ; $64d7: $03
    ld c, b                                       ; $64d8: $48
    add e                                         ; $64d9: $83
    ld [bc], a                                    ; $64da: $02

Jump_0c8_64db:
    ld a, h                                       ; $64db: $7c
    xor l                                         ; $64dc: $ad
    di                                            ; $64dd: $f3
    add c                                         ; $64de: $81
    ret nz                                        ; $64df: $c0

    ld bc, $11eb                                  ; $64e0: $01 $eb $11
    or [hl]                                       ; $64e3: $b6
    nop                                           ; $64e4: $00
    ld [$805d], sp                                ; $64e5: $08 $5d $80
    or c                                          ; $64e8: $b1
    ld b, $d2                                     ; $64e9: $06 $d2
    cpl                                           ; $64eb: $2f
    ret c                                         ; $64ec: $d8

    nop                                           ; $64ed: $00
    rst $18                                       ; $64ee: $df
    ld d, h                                       ; $64ef: $54
    db $fd                                        ; $64f0: $fd
    ld d, b                                       ; $64f1: $50
    ld a, e                                       ; $64f2: $7b
    sub $7b                                       ; $64f3: $d6 $7b
    xor e                                         ; $64f5: $ab
    nop                                           ; $64f6: $00
    inc b                                         ; $64f7: $04
    ld [hl], l                                    ; $64f8: $75
    add b                                         ; $64f9: $80
    ld a, [bc]                                    ; $64fa: $0a
    ldh a, [$9d]                                  ; $64fb: $f0 $9d
    ld a, d                                       ; $64fd: $7a
    adc l                                         ; $64fe: $8d

jr_0c8_64ff:
    nop                                           ; $64ff: $00
    ld a, $03                                     ; $6500: $3e $03

Call_0c8_6502:
    ld e, a                                       ; $6502: $5f
    ld [hl+], a                                   ; $6503: $22
    rst $18                                       ; $6504: $df
    rrca                                          ; $6505: $0f
    rst $38                                       ; $6506: $ff
    jr nc, jr_0c8_6516                            ; $6507: $30 $0d

    cpl                                           ; $6509: $2f
    dec bc                                        ; $650a: $0b
    jr nz, @+$01                                  ; $650b: $20 $ff

    nop                                           ; $650d: $00
    ld [bc], a                                    ; $650e: $02
    jr c, jr_0c8_64ff                             ; $650f: $38 $ee

    ld de, $aa55                                  ; $6511: $11 $55 $aa
    rst $38                                       ; $6514: $ff
    nop                                           ; $6515: $00

jr_0c8_6516:
    ld bc, $0bf4                                  ; $6516: $01 $f4 $0b
    db $eb                                        ; $6519: $eb
    rla                                           ; $651a: $17
    push af                                       ; $651b: $f5
    dec bc                                        ; $651c: $0b
    ei                                            ; $651d: $fb
    nop                                           ; $651e: $00
    dec b                                         ; $651f: $05
    db $f4                                        ; $6520: $f4
    dec bc                                        ; $6521: $0b
    ld l, l                                       ; $6522: $6d
    sub e                                         ; $6523: $93
    add b                                         ; $6524: $80
    ld a, a                                       ; $6525: $7f
    jp $fd10                                      ; $6526: $c3 $10 $fd


    add e                                         ; $6529: $83

jr_0c8_652a:
    db $fd                                        ; $652a: $fd
    inc b                                         ; $652b: $04
    ld c, b                                       ; $652c: $48
    cp a                                          ; $652d: $bf
    ret nz                                        ; $652e: $c0

    rst $18                                       ; $652f: $df
    ldh [rP1], a                                  ; $6530: $e0 $00
    cpl                                           ; $6532: $2f
    ret nc                                        ; $6533: $d0

    rst $10                                       ; $6534: $d7
    xor b                                         ; $6535: $a8
    ccf                                           ; $6536: $3f
    ret nz                                        ; $6537: $c0

    rst $18                                       ; $6538: $df
    and b                                         ; $6539: $a0
    ld [$d02f], sp                                ; $653a: $08 $2f $d0
    add b                                         ; $653d: $80
    rst $38                                       ; $653e: $ff
    ld b, b                                       ; $653f: $40
    jr c, @+$81                                   ; $6540: $38 $7f

    add b                                         ; $6542: $80
    cp $60                                        ; $6543: $fe $60
    ld bc, $0040                                  ; $6545: $01 $40 $00
    ld d, b                                       ; $6548: $50
    jr nc, jr_0c8_652a                            ; $6549: $30 $df

    jr nz, @-$3f                                  ; $654b: $20 $bf

    ld b, b                                       ; $654d: $40
    ld d, l                                       ; $654e: $55
    ld [hl-], a                                   ; $654f: $32
    xor d                                         ; $6550: $aa
    nop                                           ; $6551: $00
    ld [hl+], a                                   ; $6552: $22
    nop                                           ; $6553: $00
    ld h, e                                       ; $6554: $63
    jr z, @+$01                                   ; $6555: $28 $ff

    rst $38                                       ; $6557: $ff
    rra                                           ; $6558: $1f
    ld [$19fe], sp                                ; $6559: $08 $fe $19
    ld bc, $fd02                                  ; $655c: $01 $02 $fd

jr_0c8_655f:
    ld [bc], a                                    ; $655f: $02
    ld [$2810], sp                                ; $6560: $08 $10 $28
    ld a, a                                       ; $6563: $7f
    add b                                         ; $6564: $80
    jr nz, jr_0c8_65af                            ; $6565: $20 $48

    nop                                           ; $6567: $00
    inc c                                         ; $6568: $0c
    rst $38                                       ; $6569: $ff
    ld sp, hl                                     ; $656a: $f9
    ld c, $1c                                     ; $656b: $0e $1c
    rst $28                                       ; $656d: $ef
    jr jr_0c8_655f                                ; $656e: $18 $ef

    or h                                          ; $6570: $b4

jr_0c8_6571:
    inc b                                         ; $6571: $04
    ld [$300c], sp                                ; $6572: $08 $0c $30
    nop                                           ; $6575: $00
    add b                                         ; $6576: $80
    ld c, b                                       ; $6577: $48
    pop bc                                        ; $6578: $c1
    ld b, b                                       ; $6579: $40
    nop                                           ; $657a: $00
    cp d                                          ; $657b: $ba
    pop bc                                        ; $657c: $c1
    nop                                           ; $657d: $00
    ld a, h                                       ; $657e: $7c
    add d                                         ; $657f: $82
    call c, $9fa0                                 ; $6580: $dc $a0 $9f
    ldh a, [$c4]                                  ; $6583: $f0 $c4
    ldh [rP1], a                                  ; $6585: $e0 $00
    rrca                                          ; $6587: $0f
    sub b                                         ; $6588: $90
    cpl                                           ; $6589: $2f
    sub b                                         ; $658a: $90
    or a                                          ; $658b: $b7
    jr z, @+$21                                   ; $658c: $28 $1f

    ccf                                           ; $658e: $3f
    nop                                           ; $658f: $00
    ld a, a                                       ; $6590: $7f
    rst $38                                       ; $6591: $ff
    ld [hl], e                                    ; $6592: $73

jr_0c8_6593:
    db $fc                                        ; $6593: $fc
    halt                                          ; $6594: $76
    ld bc, $4fa0                                  ; $6595: $01 $a0 $4f
    nop                                           ; $6598: $00
    ld [hl], b                                    ; $6599: $70
    rrca                                          ; $659a: $0f
    add b                                         ; $659b: $80
    ld e, a                                       ; $659c: $5f
    jr nc, @-$3f                                  ; $659d: $30 $bf

    cp $fb                                        ; $659f: $fe $fb
    nop                                           ; $65a1: $00
    ld [hl], a                                    ; $65a2: $77
    add a                                         ; $65a3: $87
    di                                            ; $65a4: $f3
    rlca                                          ; $65a5: $07
    ld d, a                                       ; $65a6: $57
    xor b                                         ; $65a7: $a8
    ld bc, $02fe                                  ; $65a8: $01 $fe $02
    nop                                           ; $65ab: $00
    cp $02                                        ; $65ac: $fe $02
    db $fd                                        ; $65ae: $fd

jr_0c8_65af:
    add hl, bc                                    ; $65af: $09
    ei                                            ; $65b0: $fb
    ld [$d808], sp                                ; $65b1: $08 $08 $d8
    nop                                           ; $65b4: $00
    db $fc                                        ; $65b5: $fc
    add hl, bc                                    ; $65b6: $09
    ldh a, [$b6]                                  ; $65b7: $f0 $b6
    ld bc, $0bf3                                  ; $65b9: $01 $f3 $0b
    ld [hl+], a                                   ; $65bc: $22
    nop                                           ; $65bd: $00
    ld sp, hl                                     ; $65be: $f9
    sub a                                         ; $65bf: $97
    ldh [$7c], a                                  ; $65c0: $e0 $7c
    add d                                         ; $65c2: $82
    sbc $e0                                       ; $65c3: $de $e0
    dec [hl]                                      ; $65c5: $35
    nop                                           ; $65c6: $00
    ld a, h                                       ; $65c7: $7c
    inc d                                         ; $65c8: $14
    cp b                                          ; $65c9: $b8
    ld d, $c0                                     ; $65ca: $16 $c0
    ei                                            ; $65cc: $fb
    add b                                         ; $65cd: $80
    inc c                                         ; $65ce: $0c
    nop                                           ; $65cf: $00
    jr nz, jr_0c8_6571                            ; $65d0: $20 $9f

    jr nz, jr_0c8_65ee                            ; $65d2: $20 $1a

    ld b, c                                       ; $65d4: $41
    ld a, h                                       ; $65d5: $7c
    add d                                         ; $65d6: $82
    cp h                                          ; $65d7: $bc
    nop                                           ; $65d8: $00
    ret nz                                        ; $65d9: $c0

    ld b, e                                       ; $65da: $43

Jump_0c8_65db:
    ld hl, sp-$1a                                 ; $65db: $f8 $e6
    ld [hl], b                                    ; $65dd: $70
    xor a                                         ; $65de: $af
    ld b, b                                       ; $65df: $40
    rst $00                                       ; $65e0: $c7
    db $10                                        ; $65e1: $10
    jr z, jr_0c8_6593                             ; $65e2: $28 $af

    ld c, b                                       ; $65e4: $48
    ld d, b                                       ; $65e5: $50
    ld [$7ef9], sp                                ; $65e6: $08 $f9 $7e
    di                                            ; $65e9: $f3
    nop                                           ; $65ea: $00
    nop                                           ; $65eb: $00
    ld d, b                                       ; $65ec: $50
    daa                                           ; $65ed: $27

jr_0c8_65ee:
    ret z                                         ; $65ee: $c8

    rla                                           ; $65ef: $17
    ldh [$1f], a                                  ; $65f0: $e0 $1f
    call z, $002f                                 ; $65f2: $cc $2f $00
    cp $fb                                        ; $65f5: $fe $fb
    sub a                                         ; $65f7: $97
    rst $20                                       ; $65f8: $e7
    push af                                       ; $65f9: $f5
    inc bc                                        ; $65fa: $03
    and d                                         ; $65fb: $a2
    ld e, l                                       ; $65fc: $5d
    add b                                         ; $65fd: $80
    daa                                           ; $65fe: $27
    add hl, de                                    ; $65ff: $19
    ld [bc], a                                    ; $6600: $02
    cp $01                                        ; $6601: $fe $01
    cp $02                                        ; $6603: $fe $02
    cp $d6                                        ; $6605: $fe $d6
    nop                                           ; $6607: $00
    db $fc                                        ; $6608: $fc
    inc h                                         ; $6609: $24
    ld a, b                                       ; $660a: $78
    db $db                                        ; $660b: $db
    nop                                           ; $660c: $00
    ld a, h                                       ; $660d: $7c
    ld bc, $0006                                  ; $660e: $01 $06 $00
    db $fc                                        ; $6611: $fc
    ld h, c                                       ; $6612: $61
    ld hl, sp-$04                                 ; $6613: $f8 $fc
    add d                                         ; $6615: $82
    ld c, [hl]                                    ; $6616: $4e
    ldh a, [$75]                                  ; $6617: $f0 $75
    nop                                           ; $6619: $00
    inc a                                         ; $661a: $3c
    ret z                                         ; $661b: $c8

    inc e                                         ; $661c: $1c
    ld c, e                                       ; $661d: $4b
    and b                                         ; $661e: $a0

jr_0c8_661f:
    rst $08                                       ; $661f: $cf
    ldh [$5b], a                                  ; $6620: $e0 $5b
    db $10                                        ; $6622: $10
    add b                                         ; $6623: $80
    rst $20                                       ; $6624: $e7
    ld [$0850], sp                                ; $6625: $08 $50 $08
    cp d                                          ; $6628: $ba
    call nz, Call_0c8_7cc9                        ; $6629: $c4 $c9 $7c
    nop                                           ; $662c: $00
    ld [hl], e                                    ; $662d: $73
    jr c, @-$3d                                   ; $662e: $38 $c1

    ld [hl-], a                                   ; $6630: $32
    dec sp                                        ; $6631: $3b
    ld [bc], a                                    ; $6632: $02
    db $eb                                        ; $6633: $eb
    ld [de], a                                    ; $6634: $12
    nop                                           ; $6635: $00
    ld e, a                                       ; $6636: $5f
    ccf                                           ; $6637: $3f
    rst $38                                       ; $6638: $ff
    ld a, a                                       ; $6639: $7f
    cp c                                          ; $663a: $b9
    ld a, [hl]                                    ; $663b: $7e
    ld sp, hl                                     ; $663c: $f9
    nop                                           ; $663d: $00
    nop                                           ; $663e: $00
    jr z, jr_0c8_6654                             ; $663f: $28 $13

    ldh [$0b], a                                  ; $6641: $e0 $0b
    ld a, [$f303]                                 ; $6643: $fa $03 $f3
    dec bc                                        ; $6646: $0b
    inc de                                        ; $6647: $13
    cp $fb                                        ; $6648: $fe $fb

jr_0c8_664a:
    add a                                         ; $664a: $87
    ld d, b                                       ; $664b: $50
    nop                                           ; $664c: $00
    add e                                         ; $664d: $83
    ld a, h                                       ; $664e: $7c
    ld [hl], a                                    ; $664f: $77
    ld sp, $0050                                  ; $6650: $31 $50 $00
    nop                                           ; $6653: $00

jr_0c8_6654:
    db $ec                                        ; $6654: $ec
    cp $51                                        ; $6655: $fe $51
    cp h                                          ; $6657: $bc
    ld l, h                                       ; $6658: $6c
    add b                                         ; $6659: $80
    ld e, a                                       ; $665a: $5f
    add b                                         ; $665b: $80
    nop                                           ; $665c: $00
    ld d, c                                       ; $665d: $51
    xor a                                         ; $665e: $af
    jr jr_0c8_661f                                ; $665f: $18 $be

    ld a, h                                       ; $6661: $7c
    add d                                         ; $6662: $82
    ld c, h                                       ; $6663: $4c
    ld a, [c]                                     ; $6664: $f2
    nop                                           ; $6665: $00
    ld a, [de]                                    ; $6666: $1a
    ld a, $74                                     ; $6667: $3e $74
    ld c, $a5                                     ; $6669: $0e $a5
    ld d, b                                       ; $666b: $50
    and $70                                       ; $666c: $e6 $70
    nop                                           ; $666e: $00
    inc bc                                        ; $666f: $03
    inc h                                         ; $6670: $24
    ld a, c                                       ; $6671: $79
    ld [bc], a                                    ; $6672: $02
    rst $10                                       ; $6673: $d7
    nop                                           ; $6674: $00
    ld a, [hl]                                    ; $6675: $7e
    add b                                         ; $6676: $80
    nop                                           ; $6677: $00
    ld e, h                                       ; $6678: $5c
    ld [c], a                                     ; $6679: $e2
    ld h, l                                       ; $667a: $65
    inc a                                         ; $667b: $3c
    sub c                                         ; $667c: $91
    inc a                                         ; $667d: $3c

jr_0c8_667e:
    ldh [rNR24], a                                ; $667e: $e0 $19
    nop                                           ; $6680: $00
    adc l                                         ; $6681: $8d
    nop                                           ; $6682: $00
    ld a, [$7f04]                                 ; $6683: $fa $04 $7f
    ccf                                           ; $6686: $3f
    ld a, a                                       ; $6687: $7f
    ld a, a                                       ; $6688: $7f
    nop                                           ; $6689: $00
    dec a                                         ; $668a: $3d

jr_0c8_668b:
    ld a, [hl]                                    ; $668b: $7e
    db $fc                                        ; $668c: $fc
    nop                                           ; $668d: $00
    sbc h                                         ; $668e: $9c
    ld bc, $00f7                                  ; $668f: $01 $f7 $00
    nop                                           ; $6692: $00
    ld a, h                                       ; $6693: $7c
    add e                                         ; $6694: $83
    cp h                                          ; $6695: $bc
    jp nz, $fbf4                                  ; $6696: $c2 $f4 $fb

    and d                                         ; $6699: $a2
    rst $00                                       ; $669a: $c7
    ld a, [bc]                                    ; $669b: $0a
    ld sp, hl                                     ; $669c: $f9
    inc bc                                        ; $669d: $03
    push de                                       ; $669e: $d5
    ld a, [hl+]                                   ; $669f: $2a
    rst $00                                       ; $66a0: $c7
    add hl, de                                    ; $66a1: $19
    ret nz                                        ; $66a2: $c0

    ld d, b                                       ; $66a3: $50
    nop                                           ; $66a4: $00
    nop                                           ; $66a5: $00
    nop                                           ; $66a6: $00
    cp $ea                                        ; $66a7: $fe $ea
    cp $82                                        ; $66a9: $fe $82
    ld a, h                                       ; $66ab: $7c
    ld [hl], $c0                                  ; $66ac: $36 $c0
    rlca                                          ; $66ae: $07
    inc b                                         ; $66af: $04
    add sp, $17                                   ; $66b0: $e8 $17
    jp hl                                         ; $66b2: $e9


    ld b, $ef                                     ; $66b3: $06 $ef
    ld d, b                                       ; $66b5: $50
    ld [$3e0a], sp                                ; $66b6: $08 $0a $3e
    nop                                           ; $66b9: $00
    cp a                                          ; $66ba: $bf
    ld b, $52                                     ; $66bb: $06 $52
    jr z, jr_0c8_667e                             ; $66bd: $28 $bf

    jr c, jr_0c8_664a                             ; $66bf: $38 $89

    ret nc                                        ; $66c1: $d0

    nop                                           ; $66c2: $00
    ld d, $88                                     ; $66c3: $16 $88
    inc l                                         ; $66c5: $2c
    inc sp                                        ; $66c6: $33
    ld sp, $b53e                                  ; $66c7: $31 $3e $b5
    jr jr_0c8_66cc                                ; $66ca: $18 $00

jr_0c8_66cc:
    ld d, $c0                                     ; $66cc: $16 $c0
    ld h, c                                       ; $66ce: $61
    add $7d                                       ; $66cf: $c6 $7d
    add e                                         ; $66d1: $83
    and c                                         ; $66d2: $a1
    inc b                                         ; $66d3: $04
    nop                                           ; $66d4: $00
    cp $00                                        ; $66d5: $fe $00
    cp b                                          ; $66d7: $b8
    ccf                                           ; $66d8: $3f
    ccf                                           ; $66d9: $3f

jr_0c8_66da:
    rra                                           ; $66da: $1f
    ld e, a                                       ; $66db: $5f
    adc a                                         ; $66dc: $8f
    nop                                           ; $66dd: $00
    ld e, a                                       ; $66de: $5f
    jr nz, jr_0c8_66da                            ; $66df: $20 $f9

    inc bc                                        ; $66e1: $03
    rla                                           ; $66e2: $17
    rst $20                                       ; $66e3: $e7
    rrca                                          ; $66e4: $0f
    rst $00                                       ; $66e5: $c7
    nop                                           ; $66e6: $00
    db $ed                                        ; $66e7: $ed
    inc de                                        ; $66e8: $13
    inc sp                                        ; $66e9: $33
    ld hl, sp-$57                                 ; $66ea: $f8 $a9
    ldh a, [$03]                                  ; $66ec: $f0 $03
    ld sp, hl                                     ; $66ee: $f9
    nop                                           ; $66ef: $00
    ld a, h                                       ; $66f0: $7c
    ld sp, hl                                     ; $66f1: $f9
    db $f4                                        ; $66f2: $f4
    ld hl, sp-$08                                 ; $66f3: $f8 $f8
    rst $20                                       ; $66f5: $e7
    pop hl                                        ; $66f6: $e1
    sbc $04                                       ; $66f7: $de $04
    ld bc, $fdbe                                  ; $66f9: $01 $be $fd
    nop                                           ; $66fc: $00
    db $e3                                        ; $66fd: $e3
    ld [hl+], a                                   ; $66fe: $22
    ld [bc], a                                    ; $66ff: $02
    sbc $a1                                       ; $6700: $de $a1
    nop                                           ; $6702: $00
    ld a, e                                       ; $6703: $7b
    rst $38                                       ; $6704: $ff
    jp c, Jump_000_1e3c                           ; $6705: $da $3c $1e

    add c                                         ; $6708: $81
    jr c, jr_0c8_668b                             ; $6709: $38 $80

    nop                                           ; $670b: $00
    jp nc, $261f                                  ; $670c: $d2 $1f $26

    ld c, a                                       ; $670f: $4f
    ret nz                                        ; $6710: $c0

    jr nz, jr_0c8_677f                            ; $6711: $20 $6c

    add e                                         ; $6713: $83
    nop                                           ; $6714: $00
    add b                                         ; $6715: $80
    rra                                           ; $6716: $1f
    nop                                           ; $6717: $00
    ccf                                           ; $6718: $3f
    ret nc                                        ; $6719: $d0

    rra                                           ; $671a: $1f
    adc a                                         ; $671b: $8f
    ld e, a                                       ; $671c: $5f
    nop                                           ; $671d: $00
    ld bc, $04ce                                  ; $671e: $01 $ce $04
    rrca                                          ; $6721: $0f
    or d                                          ; $6722: $b2
    ld b, a                                       ; $6723: $47
    ld a, [bc]                                    ; $6724: $0a
    ldh a, [rP1]                                  ; $6725: $f0 $00
    nop                                           ; $6727: $00
    db $fc                                        ; $6728: $fc
    scf                                           ; $6729: $37
    ld hl, sp+$5a                                 ; $672a: $f8 $5a
    ldh [$7f], a                                  ; $672c: $e0 $7f
    add b                                         ; $672e: $80
    nop                                           ; $672f: $00
    add [hl]                                      ; $6730: $86
    ld l, a                                       ; $6731: $6f
    and e                                         ; $6732: $a3
    rst $00                                       ; $6733: $c7
    ld l, c                                       ; $6734: $69
    inc de                                        ; $6735: $13
    rst $08                                       ; $6736: $cf
    nop                                           ; $6737: $00
    nop                                           ; $6738: $00
    cp [hl]                                       ; $6739: $be
    ld b, c                                       ; $673a: $41

jr_0c8_673b:
    jr nz, jr_0c8_673b                            ; $673b: $20 $fe

    ld d, h                                       ; $673d: $54
    ld [$21c6], sp                                ; $673e: $08 $c6 $21
    nop                                           ; $6741: $00
    ld [bc], a                                    ; $6742: $02
    cp $de                                        ; $6743: $fe $de
    db $fc                                        ; $6745: $fc
    ldh [rIE], a                                  ; $6746: $e0 $ff
    rst $08                                       ; $6748: $cf
    rra                                           ; $6749: $1f
    nop                                           ; $674a: $00
    ld a, a                                       ; $674b: $7f
    ccf                                           ; $674c: $3f
    cp $7e                                        ; $674d: $fe $7e
    db $fc                                        ; $674f: $fc
    ld a, l                                       ; $6750: $7d
    ei                                            ; $6751: $fb
    add hl, de                                    ; $6752: $19
    nop                                           ; $6753: $00
    cp e                                          ; $6754: $bb
    nop                                           ; $6755: $00
    ld a, b                                       ; $6756: $78
    nop                                           ; $6757: $00
    rra                                           ; $6758: $1f
    ld h, b                                       ; $6759: $60
    rla                                           ; $675a: $17
    cp b                                          ; $675b: $b8
    nop                                           ; $675c: $00
    rst $08                                       ; $675d: $cf
    rra                                           ; $675e: $1f
    ld b, e                                       ; $675f: $43
    or a                                          ; $6760: $b7
    ld d, c                                       ; $6761: $51
    xor b                                         ; $6762: $a8
    inc de                                        ; $6763: $13
    add sp, $00                                   ; $6764: $e8 $00
    ld [hl], b                                    ; $6766: $70

jr_0c8_6767:
    rlca                                          ; $6767: $07
    ld e, c                                       ; $6768: $59
    inc bc                                        ; $6769: $03
    ld hl, sp+$04                                 ; $676a: $f8 $04
    ret                                           ; $676c: $c9


    inc [hl]                                      ; $676d: $34
    nop                                           ; $676e: $00
    ld h, b                                       ; $676f: $60
    di                                            ; $6770: $f3
    add d                                         ; $6771: $82
    jp $11ed                                      ; $6772: $c3 $ed $11


    jp z, Jump_000_0004                           ; $6775: $ca $04 $00

    add e                                         ; $6778: $83
    pop af                                        ; $6779: $f1
    ld c, c                                       ; $677a: $49
    pop hl                                        ; $677b: $e1
    ld d, $08                                     ; $677c: $16 $08
    add c                                         ; $677e: $81

jr_0c8_677f:
    ld a, [hl]                                    ; $677f: $7e
    add b                                         ; $6780: $80
    ld l, h                                       ; $6781: $6c
    ld bc, $04ff                                  ; $6782: $01 $ff $04
    cp $fd                                        ; $6785: $fe $fd
    ld hl, sp+$61                                 ; $6787: $f8 $61
    sbc e                                         ; $6789: $9b
    nop                                           ; $678a: $00
    sbc l                                         ; $678b: $9d
    ldh a, [rOBP0]                                ; $678c: $f0 $48
    and $c1                                       ; $678e: $e6 $c1
    ld [$8ca3], sp                                ; $6790: $08 $a3 $8c
    nop                                           ; $6793: $00
    ld hl, sp+$07                                 ; $6794: $f8 $07
    rst $00                                       ; $6796: $c7
    nop                                           ; $6797: $00
    db $fc                                        ; $6798: $fc
    ld [bc], a                                    ; $6799: $02
    add b                                         ; $679a: $80
    rst $38                                       ; $679b: $ff
    nop                                           ; $679c: $00
    db $fd                                        ; $679d: $fd
    rst $38                                       ; $679e: $ff
    inc a                                         ; $679f: $3c
    ld a, a                                       ; $67a0: $7f
    ld sp, hl                                     ; $67a1: $f9
    inc bc                                        ; $67a2: $03
    db $d3                                        ; $67a3: $d3
    daa                                           ; $67a4: $27
    nop                                           ; $67a5: $00
    ld h, a                                       ; $67a6: $67
    rst $08                                       ; $67a7: $cf
    ld c, a                                       ; $67a8: $4f
    add a                                         ; $67a9: $87
    ld a, [hl]                                    ; $67aa: $7e

jr_0c8_67ab:
    ld bc, $80ae                                  ; $67ab: $01 $ae $80
    nop                                           ; $67ae: $00
    rlca                                          ; $67af: $07
    adc b                                         ; $67b0: $88
    ld h, e                                       ; $67b1: $63
    call z, $f7e0                                 ; $67b2: $cc $e0 $f7
    db $e3                                        ; $67b5: $e3
    pop af                                        ; $67b6: $f1
    nop                                           ; $67b7: $00
    rst $00                                       ; $67b8: $c7
    add sp, -$3f                                  ; $67b9: $e8 $c1
    sbc $d0                                       ; $67bb: $de $d0
    sbc a                                         ; $67bd: $9f
    sbc $01                                       ; $67be: $de $01
    ld b, b                                       ; $67c0: $40
    rra                                           ; $67c1: $1f
    jp nc, $fd02                                  ; $67c2: $d2 $02 $fd

    ld [bc], a                                    ; $67c5: $02
    push hl                                       ; $67c6: $e5
    cp $b8                                        ; $67c7: $fe $b8
    ld a, h                                       ; $67c9: $7c
    nop                                           ; $67ca: $00
    ld c, $81                                     ; $67cb: $0e $81
    ld c, h                                       ; $67cd: $4c
    sub b                                         ; $67ce: $90
    ld b, h                                       ; $67cf: $44
    db $fc                                        ; $67d0: $fc
    or d                                          ; $67d1: $b2
    ld a, b                                       ; $67d2: $78
    nop                                           ; $67d3: $00
    nop                                           ; $67d4: $00
    add e                                         ; $67d5: $83
    jr nc, jr_0c8_6767                            ; $67d6: $30 $8f

    ld b, b                                       ; $67d8: $40
    ccf                                           ; $67d9: $3f
    jr nz, jr_0c8_681b                            ; $67da: $20 $3f

    nop                                           ; $67dc: $00

jr_0c8_67dd:
    ldh a, [$1f]                                  ; $67dd: $f0 $1f
    ld h, a                                       ; $67df: $67
    rrca                                          ; $67e0: $0f
    ld e, [hl]                                    ; $67e1: $5e
    ld h, d                                       ; $67e2: $62
    inc [hl]                                      ; $67e3: $34
    ld a, [hl]                                    ; $67e4: $7e
    nop                                           ; $67e5: $00
    xor c                                         ; $67e6: $a9
    inc e                                         ; $67e7: $1c
    jr c, jr_0c8_67ab                             ; $67e8: $38 $c1

    jr jr_0c8_67dd                                ; $67ea: $18 $f1

    inc hl                                        ; $67ec: $23
    db $f4                                        ; $67ed: $f4
    nop                                           ; $67ee: $00
    ld c, h                                       ; $67ef: $4c
    ldh [$8f], a                                  ; $67f0: $e0 $8f
    ret nc                                        ; $67f2: $d0

    add sp, $7f                                   ; $67f3: $e8 $7f
    ld e, $3f                                     ; $67f5: $1e $3f

Call_0c8_67f7:
    nop                                           ; $67f7: $00
    ld d, a                                       ; $67f8: $57
    adc a                                         ; $67f9: $8f
    ld a, $00                                     ; $67fa: $3e $00
    ld a, h                                       ; $67fc: $7c
    add d                                         ; $67fd: $82
    inc d                                         ; $67fe: $14
    db $fc                                        ; $67ff: $fc
    nop                                           ; $6800: $00
    ld [hl], h                                    ; $6801: $74
    ld [$00f7], sp                                ; $6802: $08 $f7 $00
    inc [hl]                                      ; $6805: $34
    ldh [$f2], a                                  ; $6806: $e0 $f2
    pop hl                                        ; $6808: $e1
    nop                                           ; $6809: $00
    adc h                                         ; $680a: $8c
    ld sp, hl                                     ; $680b: $f9
    ld a, h                                       ; $680c: $7c
    ld a, $de                                     ; $680d: $3e $de
    ld a, [hl]                                    ; $680f: $7e
    rst $38                                       ; $6810: $ff
    db $fc                                        ; $6811: $fc
    ld bc, $7dfc                                  ; $6812: $01 $fc $7d
    jp hl                                         ; $6815: $e9


    dec e                                         ; $6816: $1d
    di                                            ; $6817: $f3
    nop                                           ; $6818: $00
    rst $00                                       ; $6819: $c7
    ld [hl+], a                                   ; $681a: $22

jr_0c8_681b:
    inc bc                                        ; $681b: $03
    nop                                           ; $681c: $00
    rra                                           ; $681d: $1f
    ldh [$0e], a                                  ; $681e: $e0 $0e
    ccf                                           ; $6820: $3f
    ld e, e                                       ; $6821: $5b
    and a                                         ; $6822: $a7
    ld [$00f0], sp                                ; $6823: $08 $f0 $00
    nop                                           ; $6826: $00
    db $fd                                        ; $6827: $fd
    cp $01                                        ; $6828: $fe $01
    ld a, [bc]                                    ; $682a: $0a
    ldh a, [$27]                                  ; $682b: $f0 $27
    ret nz                                        ; $682d: $c0

    nop                                           ; $682e: $00
    and a                                         ; $682f: $a7
    ret z                                         ; $6830: $c8

    rst $20                                       ; $6831: $e7
    ld hl, sp-$1a                                 ; $6832: $f8 $e6
    db $ed                                        ; $6834: $ed
    jp nz, $02c7                                  ; $6835: $c2 $c7 $02

    rrca                                          ; $6838: $0f
    sub b                                         ; $6839: $90
    add hl, de                                    ; $683a: $19
    inc b                                         ; $683b: $04
    db $f4                                        ; $683c: $f4
    ld [bc], a                                    ; $683d: $02
    ld [hl], b                                    ; $683e: $70
    ld [$00f3], sp                                ; $683f: $08 $f3 $00
    add hl, bc                                    ; $6842: $09
    or b                                          ; $6843: $b0
    ld h, b                                       ; $6844: $60
    sub c                                         ; $6845: $91

jr_0c8_6846:
    adc $0c                                       ; $6846: $ce $0c
    inc sp                                        ; $6848: $33
    ld h, b                                       ; $6849: $60
    add b                                         ; $684a: $80
    ld l, b                                       ; $684b: $68
    nop                                           ; $684c: $00
    add c                                         ; $684d: $81
    ccf                                           ; $684e: $3f
    inc de                                        ; $684f: $13
    ld a, [hl]                                    ; $6850: $7e

jr_0c8_6851:
    ld a, [hl]                                    ; $6851: $7e
    sbc h                                         ; $6852: $9c
    sub e                                         ; $6853: $93
    nop                                           ; $6854: $00

jr_0c8_6855:
    jr @+$1b                                      ; $6855: $18 $19

    inc b                                         ; $6857: $04
    sbc $bf                                       ; $6858: $de $bf
    and a                                         ; $685a: $a7
    ld b, b                                       ; $685b: $40
    ld a, a                                       ; $685c: $7f
    nop                                           ; $685d: $00
    add b                                         ; $685e: $80
    ccf                                           ; $685f: $3f
    ld b, b                                       ; $6860: $40
    ccf                                           ; $6861: $3f
    ld b, b                                       ; $6862: $40
    cp l                                          ; $6863: $bd
    jp Jump_000_0076                              ; $6864: $c3 $76 $00


    xor $1d                                       ; $6867: $ee $1d
    jr c, jr_0c8_68b2                             ; $6869: $38 $47

    add b                                         ; $686b: $80
    ld h, b                                       ; $686c: $60
    ld c, $c2                                     ; $686d: $0e $c2
    ld b, $21                                     ; $686f: $06 $21
    adc a                                         ; $6871: $8f
    ld b, a                                       ; $6872: $47
    ld a, a                                       ; $6873: $7f
    sbc a                                         ; $6874: $9f
    rst $00                                       ; $6875: $c7
    ld bc, $0002                                  ; $6876: $01 $02 $00
    rst $38                                       ; $6879: $ff
    nop                                           ; $687a: $00
    ccf                                           ; $687b: $3f
    rrca                                          ; $687c: $0f
    jr nc, jr_0c8_68bf                            ; $687d: $30 $40

    sbc a                                         ; $687f: $9f
    ld [hl], b                                    ; $6880: $70
    rst $38                                       ; $6881: $ff
    cp $c0                                        ; $6882: $fe $c0
    inc e                                         ; $6884: $1c
    inc bc                                        ; $6885: $03
    inc bc                                        ; $6886: $03
    ld [$fef9], sp                                ; $6887: $08 $f9 $fe
    ld sp, hl                                     ; $688a: $f9
    nop                                           ; $688b: $00
    rla                                           ; $688c: $17
    add b                                         ; $688d: $80
    nop                                           ; $688e: $00
    rra                                           ; $688f: $1f
    jr nz, jr_0c8_6851                            ; $6890: $20 $bf

    nop                                           ; $6892: $00
    rst $18                                       ; $6893: $df
    and b                                         ; $6894: $a0
    sbc d                                         ; $6895: $9a
    or l                                          ; $6896: $b5
    nop                                           ; $6897: $00
    adc e                                         ; $6898: $8b
    rra                                           ; $6899: $1f
    ld e, [hl]                                    ; $689a: $5e
    jr nz, jr_0c8_6846                            ; $689b: $20 $a9

    ld b, e                                       ; $689d: $43
    and c                                         ; $689e: $a1
    ld de, $ec00                                  ; $689f: $11 $00 $ec
    ld de, $2ad1                                  ; $68a2: $11 $d1 $2a
    add l                                         ; $68a5: $85
    ld l, [hl]                                    ; $68a6: $6e
    jp nz, Jump_000_0080                          ; $68a7: $c2 $80 $00

    ld b, d                                       ; $68aa: $42
    inc a                                         ; $68ab: $3c
    sub [hl]                                      ; $68ac: $96
    ld l, e                                       ; $68ad: $6b
    dec b                                         ; $68ae: $05
    ld a, [$fa05]                                 ; $68af: $fa $05 $fa

jr_0c8_68b2:
    nop                                           ; $68b2: $00
    adc l                                         ; $68b3: $8d
    ld a, [$fa93]                                 ; $68b4: $fa $93 $fa
    ld [hl], d                                    ; $68b7: $72
    di                                            ; $68b8: $f3
    ld b, l                                       ; $68b9: $45
    ld h, e                                       ; $68ba: $63
    inc b                                         ; $68bb: $04
    ld a, h                                       ; $68bc: $7c
    nop                                           ; $68bd: $00
    db $fc                                        ; $68be: $fc

jr_0c8_68bf:
    ld a, a                                       ; $68bf: $7f
    jr c, jr_0c8_6855                             ; $68c0: $38 $93

    ld [bc], a                                    ; $68c2: $02
    db $fd                                        ; $68c3: $fd
    ld [bc], a                                    ; $68c4: $02
    nop                                           ; $68c5: $00
    cp $02                                        ; $68c6: $fe $02
    push af                                       ; $68c8: $f5
    dec c                                         ; $68c9: $0d
    reti                                          ; $68ca: $d9


    cp c                                          ; $68cb: $b9
    and $71                                       ; $68cc: $e6 $71
    ld bc, $0897                                  ; $68ce: $01 $97 $08
    ldh a, [$61]                                  ; $68d1: $f0 $61
    inc de                                        ; $68d3: $13
    inc c                                         ; $68d4: $0c
    ccf                                           ; $68d5: $3f
    inc d                                         ; $68d6: $14

Call_0c8_68d7:
    inc bc                                        ; $68d7: $03
    add b                                         ; $68d8: $80
    ld d, c                                       ; $68d9: $51
    jr jr_0c8_695b                                ; $68da: $18 $7f

    rst $38                                       ; $68dc: $ff
    ld a, [hl]                                    ; $68dd: $7e
    add b                                         ; $68de: $80
    ld bc, $80fc                                  ; $68df: $01 $fc $80
    ld [$f4f9], sp                                ; $68e2: $08 $f9 $f4
    ld sp, hl                                     ; $68e5: $f9
    cp $01                                        ; $68e6: $fe $01
    nop                                           ; $68e8: $00
    db $fc                                        ; $68e9: $fc
    cp $f0                                        ; $68ea: $fe $f0
    ld [$0efc], sp                                ; $68ec: $08 $fc $0e

jr_0c8_68ef:
    add b                                         ; $68ef: $80
    cp a                                          ; $68f0: $bf
    ld a, [c]                                     ; $68f1: $f2
    inc de                                        ; $68f2: $13
    ld a, [hl]                                    ; $68f3: $7e
    add c                                         ; $68f4: $81
    ld l, a                                       ; $68f5: $6f
    nop                                           ; $68f6: $00
    jp nc, Jump_000_3c56                          ; $68f7: $d2 $56 $3c

    ld a, h                                       ; $68fa: $7c
    add c                                         ; $68fb: $81
    jr nc, @+$21                                  ; $68fc: $30 $1f

    jr jr_0c8_6900                                ; $68fe: $18 $00

jr_0c8_6900:
    adc a                                         ; $6900: $8f
    inc h                                         ; $6901: $24
    adc a                                         ; $6902: $8f
    ld [hl-], a                                   ; $6903: $32
    ld c, a                                       ; $6904: $4f
    rla                                           ; $6905: $17
    dec sp                                        ; $6906: $3b
    jr @+$04                                      ; $6907: $18 $02

    ld bc, $f008                                  ; $6909: $01 $08 $f0
    ld h, a                                       ; $690c: $67
    sbc h                                         ; $690d: $9c
    ld de, $03de                                  ; $690e: $11 $de $03
    ld e, a                                       ; $6911: $5f
    nop                                           ; $6912: $00
    ldh [rBGP], a                                 ; $6913: $e0 $47
    ret z                                         ; $6915: $c8

    adc e                                         ; $6916: $8b
    call z, $8f16                                 ; $6917: $cc $16 $8f
    ret nz                                        ; $691a: $c0

    nop                                           ; $691b: $00
    ld hl, $fef9                                  ; $691c: $21 $f9 $fe
    or b                                          ; $691f: $b0
    rlca                                          ; $6920: $07
    ld hl, sp+$00                                 ; $6921: $f8 $00
    ldh [rP1], a                                  ; $6923: $e0 $00
    add hl, de                                    ; $6925: $19

jr_0c8_6926:
    rst $30                                       ; $6926: $f7
    inc de                                        ; $6927: $13
    rst $10                                       ; $6928: $d7
    scf                                           ; $6929: $37
    ld h, a                                       ; $692a: $67
    rst $20                                       ; $692b: $e7
    rlc b                                         ; $692c: $cb $00
    jp Jump_000_112f                              ; $692e: $c3 $2f $11


    sub a                                         ; $6931: $97
    ld [$6798], sp                                ; $6932: $08 $98 $67
    ld a, [$aec0]                                 ; $6935: $fa $c0 $ae
    jr nz, jr_0c8_68ef                            ; $6938: $20 $b5

    ld [$14e0], sp                                ; $693a: $08 $e0 $14
    pop bc                                        ; $693d: $c1
    ld l, b                                       ; $693e: $68
    rlca                                          ; $693f: $07
    ret z                                         ; $6940: $c8

    nop                                           ; $6941: $00
    sbc a                                         ; $6942: $9f
    ldh [$f9], a                                  ; $6943: $e0 $f9
    ld a, [$fbf9]                                 ; $6945: $fa $f9 $fb
    db $fc                                        ; $6948: $fc
    ld hl, sp+$00                                 ; $6949: $f8 $00
    ld [$f5f1], a                                 ; $694b: $ea $f1 $f5
    nop                                           ; $694e: $00
    ld hl, sp+$04                                 ; $694f: $f8 $04
    ld sp, hl                                     ; $6951: $f9
    inc b                                         ; $6952: $04
    nop                                           ; $6953: $00
    ld a, [$f905]                                 ; $6954: $fa $05 $f9
    inc b                                         ; $6957: $04
    jr c, jr_0c8_6926                             ; $6958: $38 $cc

    ld d, b                                       ; $695a: $50

jr_0c8_695b:
    ei                                            ; $695b: $fb
    nop                                           ; $695c: $00
    pop de                                        ; $695d: $d1
    ld [hl+], a                                   ; $695e: $22
    add d                                         ; $695f: $82
    db $fd                                        ; $6960: $fd
    pop bc                                        ; $6961: $c1
    ld a, [hl]                                    ; $6962: $7e
    ld h, b                                       ; $6963: $60
    ccf                                           ; $6964: $3f
    nop                                           ; $6965: $00
    ld [hl+], a                                   ; $6966: $22
    ld e, a                                       ; $6967: $5f
    ld c, $ef                                     ; $6968: $0e $ef
    ld b, d                                       ; $696a: $42
    ld b, $03                                     ; $696b: $06 $03
    ldh [rP1], a                                  ; $696d: $e0 $00
    dec c                                         ; $696f: $0d
    ei                                            ; $6970: $fb
    db $fd                                        ; $6971: $fd
    ld [bc], a                                    ; $6972: $02
    ld a, d                                       ; $6973: $7a
    ld bc, $00fb                                  ; $6974: $01 $fb $00
    nop                                           ; $6977: $00
    ld a, [c]                                     ; $6978: $f2
    inc c                                         ; $6979: $0c
    ld d, $f8                                     ; $697a: $16 $f8
    rlca                                          ; $697c: $07
    ret nz                                        ; $697d: $c0

    ld b, [hl]                                    ; $697e: $46
    dec sp                                        ; $697f: $3b
    nop                                           ; $6980: $00
    rst $28                                       ; $6981: $ef
    db $fd                                        ; $6982: $fd
    ld [hl+], a                                   ; $6983: $22
    ld a, a                                       ; $6984: $7f
    inc h                                         ; $6985: $24
    ld a, a                                       ; $6986: $7f
    ld a, c                                       ; $6987: $79
    dec sp                                        ; $6988: $3b
    nop                                           ; $6989: $00
    rlca                                          ; $698a: $07
    add e                                         ; $698b: $83
    rrca                                          ; $698c: $0f
    ld h, a                                       ; $698d: $67
    rla                                           ; $698e: $17
    cpl                                           ; $698f: $2f
    adc d                                         ; $6990: $8a
    ld h, a                                       ; $6991: $67
    jr nz, @-$5f                                  ; $6992: $20 $9f

jr_0c8_6994:
    ret nz                                        ; $6994: $c0

    cp d                                          ; $6995: $ba
    jr z, jr_0c8_6994                             ; $6996: $28 $fc

    cp $e4                                        ; $6998: $fe $e4
    ld hl, sp+$50                                 ; $699a: $f8 $50
    nop                                           ; $699c: $00
    add b                                         ; $699d: $80
    ld [$c401], sp                                ; $699e: $08 $01 $c4
    add sp, -$11                                  ; $69a1: $e8 $ef
    ret nc                                        ; $69a3: $d0

    add sp, $00                                   ; $69a4: $e8 $00
    sub a                                         ; $69a6: $97
    ret nc                                        ; $69a7: $d0

    cpl                                           ; $69a8: $2f
    ld l, h                                       ; $69a9: $6c
    scf                                           ; $69aa: $37
    inc bc                                        ; $69ab: $03
    rlca                                          ; $69ac: $07
    ld h, l                                       ; $69ad: $65
    nop                                           ; $69ae: $00
    add e                                         ; $69af: $83
    ld c, b                                       ; $69b0: $48
    jr nc, @+$21                                  ; $69b1: $30 $1f

    cp a                                          ; $69b3: $bf
    inc d                                         ; $69b4: $14
    adc a                                         ; $69b5: $8f
    cp [hl]                                       ; $69b6: $be
    ld [bc], a                                    ; $69b7: $02
    ld b, c                                       ; $69b8: $41
    pop hl                                        ; $69b9: $e1
    ld e, $00                                     ; $69ba: $1e $00
    rst $38                                       ; $69bc: $ff
    ld c, b                                       ; $69bd: $48
    ld d, b                                       ; $69be: $50
    inc b                                         ; $69bf: $04
    ld e, h                                       ; $69c0: $5c
    nop                                           ; $69c1: $00
    ld a, $cb                                     ; $69c2: $3e $cb
    ldh a, [$9a]                                  ; $69c4: $f0 $9a
    inc b                                         ; $69c6: $04
    dec h                                         ; $69c7: $25
    ret z                                         ; $69c8: $c8

    dec h                                         ; $69c9: $25
    nop                                           ; $69ca: $00
    jp z, $c762                                   ; $69cb: $ca $62 $c7

    ld sp, hl                                     ; $69ce: $f9
    add e                                         ; $69cf: $83
    ld a, [$4404]                                 ; $69d0: $fa $04 $44
    nop                                           ; $69d3: $00
    add b                                         ; $69d4: $80
    ld a, [$f104]                                 ; $69d5: $fa $04 $f1
    ld [bc], a                                    ; $69d8: $02
    db $fc                                        ; $69d9: $fc
    ld [bc], a                                    ; $69da: $02
    pop af                                        ; $69db: $f1
    nop                                           ; $69dc: $00
    inc c                                         ; $69dd: $0c
    ld a, [de]                                    ; $69de: $1a
    ld hl, sp+$21                                 ; $69df: $f8 $21
    jp nz, Jump_000_1d33                          ; $69e1: $c2 $33 $1d

    di                                            ; $69e4: $f3
    add b                                         ; $69e5: $80
    ld c, b                                       ; $69e6: $48
    ld [bc], a                                    ; $69e7: $02
    rst $08                                       ; $69e8: $cf
    ld a, l                                       ; $69e9: $7d
    inc sp                                        ; $69ea: $33
    ld a, e                                       ; $69eb: $7b
    inc bc                                        ; $69ec: $03
    add a                                         ; $69ed: $87
    rlca                                          ; $69ee: $07
    ld bc, $af67                                  ; $69ef: $01 $67 $af
    rla                                           ; $69f2: $17
    ld b, l                                       ; $69f3: $45
    or e                                          ; $69f4: $b3
    rst $08                                       ; $69f5: $cf
    ldh [$bb], a                                  ; $69f6: $e0 $bb
    jr z, @+$42                                   ; $69f8: $28 $40

    cp $0c                                        ; $69fa: $fe $0c
    ld bc, $c028                                  ; $69fc: $01 $28 $c0
    add h                                         ; $69ff: $84
    nop                                           ; $6a00: $00
    adc b                                         ; $6a01: $88
    pop de                                        ; $6a02: $d1
    ld bc, $e19e                                  ; $6a03: $01 $9e $e1
    ei                                            ; $6a06: $fb
    add h                                         ; $6a07: $84
    adc b                                         ; $6a08: $88
    ld a, a                                       ; $6a09: $7f
    ld l, [hl]                                    ; $6a0a: $6e
    ld h, b                                       ; $6a0b: $60
    nop                                           ; $6a0c: $00
    nop                                           ; $6a0d: $00
    or e                                          ; $6a0e: $b3
    ld b, c                                       ; $6a0f: $41
    inc h                                         ; $6a10: $24
    sbc b                                         ; $6a11: $98
    ccf                                           ; $6a12: $3f
    ld a, a                                       ; $6a13: $7f
    add hl, hl                                    ; $6a14: $29
    ld e, $28                                     ; $6a15: $1e $28
    cp h                                          ; $6a17: $bc
    ld b, e                                       ; $6a18: $43
    ld h, b                                       ; $6a19: $60
    ld [$6a90], sp                                ; $6a1a: $08 $90 $6a
    ld [bc], a                                    ; $6a1d: $02
    ld l, $1f                                     ; $6a1e: $2e $1f
    sub a                                         ; $6a20: $97
    nop                                           ; $6a21: $00
    ldh [$b5], a                                  ; $6a22: $e0 $b5
    ld [$8857], sp                                ; $6a24: $08 $57 $88
    inc hl                                        ; $6a27: $23
    call z, Call_000_0066                         ; $6a28: $cc $66 $00
    jp $c1df                                      ; $6a2b: $c3 $df $c1


    ld d, $a0                                     ; $6a2e: $16 $a0
    inc hl                                        ; $6a30: $23
    ld b, b                                       ; $6a31: $40
    db $e4                                        ; $6a32: $e4
    nop                                           ; $6a33: $00
    add hl, bc                                    ; $6a34: $09
    ld [c], a                                     ; $6a35: $e2
    inc b                                         ; $6a36: $04
    or $00                                        ; $6a37: $f6 $00
    ldh a, [$0d]                                  ; $6a39: $f0 $0d
    sbc c                                         ; $6a3b: $99
    nop                                           ; $6a3c: $00
    ld a, d                                       ; $6a3d: $7a
    ld bc, $0ce2                                  ; $6a3e: $01 $e2 $0c
    rra                                           ; $6a41: $1f
    ld a, e                                       ; $6a42: $7b
    ccf                                           ; $6a43: $3f
    dec b                                         ; $6a44: $05
    nop                                           ; $6a45: $00
    rst $38                                       ; $6a46: $ff
    cp a                                          ; $6a47: $bf
    ei                                            ; $6a48: $fb
    rst $30                                       ; $6a49: $f7
    ld [hl], e                                    ; $6a4a: $73
    add e                                         ; $6a4b: $83
    rlca                                          ; $6a4c: $07
    ld b, a                                       ; $6a4d: $47
    ld bc, $a327                                  ; $6a4e: $01 $27 $a3
    rla                                           ; $6a51: $17
    add hl, sp                                    ; $6a52: $39
    db $d3                                        ; $6a53: $d3
    rst $20                                       ; $6a54: $e7
    ld [hl], b                                    ; $6a55: $70
    ld h, b                                       ; $6a56: $60
    jr c, jr_0c8_6a59                             ; $6a57: $38 $00

jr_0c8_6a59:
    ld sp, hl                                     ; $6a59: $f9
    db $fc                                        ; $6a5a: $fc
    or b                                          ; $6a5b: $b0
    ret nz                                        ; $6a5c: $c0

    ret nz                                        ; $6a5d: $c0

    nop                                           ; $6a5e: $00
    sub b                                         ; $6a5f: $90
    ld [hl+], a                                   ; $6a60: $22
    nop                                           ; $6a61: $00
    cp $80                                        ; $6a62: $fe $80
    ld sp, $0ace                                  ; $6a64: $31 $ce $0a
    ld a, l                                       ; $6a67: $7d
    ld a, [hl]                                    ; $6a68: $7e
    scf                                           ; $6a69: $37
    nop                                           ; $6a6a: $00
    inc de                                        ; $6a6b: $13
    inc bc                                        ; $6a6c: $03
    ld e, b                                       ; $6a6d: $58
    ld hl, $4c33                                  ; $6a6e: $21 $33 $4c
    ld a, a                                       ; $6a71: $7f
    rst $38                                       ; $6a72: $ff
    nop                                           ; $6a73: $00
    ld b, e                                       ; $6a74: $43
    inc a                                         ; $6a75: $3c
    ld a, h                                       ; $6a76: $7c
    add e                                         ; $6a77: $83
    push hl                                       ; $6a78: $e5
    ld a, [de]                                    ; $6a79: $1a
    nop                                           ; $6a7a: $00
    rst $38                                       ; $6a7b: $ff
    ld b, b                                       ; $6a7c: $40
    and h                                         ; $6a7d: $a4
    or $01                                        ; $6a7e: $f6 $01
    rlca                                          ; $6a80: $07
    rra                                           ; $6a81: $1f
    dec bc                                        ; $6a82: $0b
    call nz, $104b                                ; $6a83: $c4 $4b $10
    nop                                           ; $6a86: $00
    ld c, e                                       ; $6a87: $4b
    sub b                                         ; $6a88: $90
    inc sp                                        ; $6a89: $33
    call z, $e346                                 ; $6a8a: $cc $46 $e3
    ld h, [hl]                                    ; $6a8d: $66
    ret                                           ; $6a8e: $c9


    nop                                           ; $6a8f: $00
    res 2, b                                      ; $6a90: $cb $90

jr_0c8_6a92:
    ld de, $d8a0                                  ; $6a92: $11 $a0 $d8
    inc bc                                        ; $6a95: $03
    ret                                           ; $6a96: $c9


    dec b                                         ; $6a97: $05
    jr nz, jr_0c8_6a92                            ; $6a98: $20 $f8

    inc b                                         ; $6a9a: $04
    ld h, b                                       ; $6a9b: $60
    ld [$e043], sp                                ; $6a9c: $08 $43 $e0
    inc d                                         ; $6a9f: $14
    rrca                                          ; $6aa0: $0f
    cp l                                          ; $6aa1: $bd
    nop                                           ; $6aa2: $00
    rra                                           ; $6aa3: $1f
    dec bc                                        ; $6aa4: $0b
    rst $38                                       ; $6aa5: $ff
    rst $18                                       ; $6aa6: $df
    rst $30                                       ; $6aa7: $f7
    ld h, a                                       ; $6aa8: $67
    rst $30                                       ; $6aa9: $f7
    jp Jump_0c8_6080                              ; $6aaa: $c3 $80 $60


    nop                                           ; $6aad: $00
    sbc a                                         ; $6aae: $9f
    inc bc                                        ; $6aaf: $03
    jr z, @-$25                                   ; $6ab0: $28 $d9

    sub e                                         ; $6ab2: $93

jr_0c8_6ab3:
    ld hl, sp-$02                                 ; $6ab3: $f8 $fe
    jr nz, jr_0c8_6ab3                            ; $6ab5: $20 $fc

    db $fc                                        ; $6ab7: $fc
    ret z                                         ; $6ab8: $c8

    ld bc, $f9ff                                  ; $6ab9: $01 $ff $f9
    db $db                                        ; $6abc: $db
    rst $20                                       ; $6abd: $e7
    add d                                         ; $6abe: $82
    nop                                           ; $6abf: $00
    rlca                                          ; $6ac0: $07
    ld h, a                                       ; $6ac1: $67
    add e                                         ; $6ac2: $83
    pop bc                                        ; $6ac3: $c1
    inc a                                         ; $6ac4: $3c
    ld e, [hl]                                    ; $6ac5: $5e
    ld hl, $4021                                  ; $6ac6: $21 $21 $40
    ld e, [hl]                                    ; $6ac9: $5e
    jp $a01d                                      ; $6aca: $c3 $1d $a0


    rst $38                                       ; $6acd: $ff
    push hl                                       ; $6ace: $e5
    rst $38                                       ; $6acf: $ff
    ld a, [hl]                                    ; $6ad0: $7e
    rst $38                                       ; $6ad1: $ff
    nop                                           ; $6ad2: $00
    db $10                                        ; $6ad3: $10
    ld [c], a                                     ; $6ad4: $e2
    add e                                         ; $6ad5: $83

jr_0c8_6ad6:
    ld [hl], h                                    ; $6ad6: $74
    dec bc                                        ; $6ad7: $0b
    db $e4                                        ; $6ad8: $e4
    rla                                           ; $6ad9: $17
    add sp, $00                                   ; $6ada: $e8 $00
    add hl, hl                                    ; $6adc: $29
    sbc $de                                       ; $6add: $de $de
    adc a                                         ; $6adf: $8f
    dec c                                         ; $6ae0: $0d
    add a                                         ; $6ae1: $87
    rlca                                          ; $6ae2: $07
    inc bc                                        ; $6ae3: $03
    nop                                           ; $6ae4: $00
    ld a, [bc]                                    ; $6ae5: $0a
    inc b                                         ; $6ae6: $04
    jp c, $f104                                   ; $6ae7: $da $04 $f1

    ld [$11e2], sp                                ; $6aea: $08 $e2 $11
    nop                                           ; $6aed: $00
    rst $20                                       ; $6aee: $e7
    db $10                                        ; $6aef: $10
    jp Jump_0c8_4f24                              ; $6af0: $c3 $24 $4f


    and $ce                                       ; $6af3: $e6 $ce
    rst $00                                       ; $6af5: $c7
    nop                                           ; $6af6: $00
    ld [hl], b                                    ; $6af7: $70
    dec b                                         ; $6af8: $05
    inc c                                         ; $6af9: $0c
    ldh a, [$0a]                                  ; $6afa: $f0 $0a
    add h                                         ; $6afc: $84
    ld [hl], c                                    ; $6afd: $71
    ld [bc], a                                    ; $6afe: $02
    ld b, b                                       ; $6aff: $40
    cp $a8                                        ; $6b00: $fe $a8
    ld bc, $8871                                  ; $6b02: $01 $71 $88
    jp nc, $9530                                  ; $6b05: $d2 $30 $95

    jp hl                                         ; $6b08: $e9


    ld [$f76b], sp                                ; $6b09: $08 $6b $f7
    rla                                           ; $6b0c: $17
    rrca                                          ; $6b0d: $0f
    and [hl]                                      ; $6b0e: $a6
    inc c                                         ; $6b0f: $0c
    rst $38                                       ; $6b10: $ff
    rst $38                                       ; $6b11: $ff
    ld a, h                                       ; $6b12: $7c
    ld [$64ff], sp                                ; $6b13: $08 $ff $64
    jr jr_0c8_6ad6                                ; $6b16: $18 $be

    ld e, $19                                     ; $6b18: $1e $19
    rst $38                                       ; $6b1a: $ff
    db $fd                                        ; $6b1b: $fd
    ld hl, sp+$00                                 ; $6b1c: $f8 $00
    or c                                          ; $6b1e: $b1
    ret nz                                        ; $6b1f: $c0

    ld l, h                                       ; $6b20: $6c
    db $10                                        ; $6b21: $10
    ld hl, sp+$07                                 ; $6b22: $f8 $07
    rrca                                          ; $6b24: $0f
    stop                                          ; $6b25: $10 $00
    sub c                                         ; $6b27: $91
    ld l, $c0                                     ; $6b28: $2e $c0
    ccf                                           ; $6b2a: $3f
    ld b, b                                       ; $6b2b: $40
    ld a, a                                       ; $6b2c: $7f
    and b                                         ; $6b2d: $a0
    rst $38                                       ; $6b2e: $ff
    nop                                           ; $6b2f: $00
    db $f4                                        ; $6b30: $f4
    rst $38                                       ; $6b31: $ff
    db $fc                                        ; $6b32: $fc
    ld a, a                                       ; $6b33: $7f
    ld l, a                                       ; $6b34: $6f
    sbc a                                         ; $6b35: $9f
    ld bc, $00f8                                  ; $6b36: $01 $f8 $00
    ld h, b                                       ; $6b39: $60
    sbc c                                         ; $6b3a: $99
    inc bc                                        ; $6b3b: $03
    ld hl, sp+$03                                 ; $6b3c: $f8 $03
    ld a, [$f30f]                                 ; $6b3e: $fa $0f $f3
    nop                                           ; $6b41: $00
    inc de                                        ; $6b42: $13
    pop af                                        ; $6b43: $f1
    and c                                         ; $6b44: $a1
    ldh a, [$d0]                                  ; $6b45: $f0 $d0
    ldh [$c5], a                                  ; $6b47: $e0 $c5
    ld [bc], a                                    ; $6b49: $02
    ld b, b                                       ; $6b4a: $40
    ei                                            ; $6b4b: $fb
    sub [hl]                                      ; $6b4c: $96
    inc bc                                        ; $6b4d: $03
    cp $00                                        ; $6b4e: $fe $00
    cp [hl]                                       ; $6b50: $be
    ld b, b                                       ; $6b51: $40
    reti                                          ; $6b52: $d9


    db $e4                                        ; $6b53: $e4
    nop                                           ; $6b54: $00
    db $ed                                        ; $6b55: $ed
    db $fc                                        ; $6b56: $fc
    cp b                                          ; $6b57: $b8
    ld a, h                                       ; $6b58: $7c
    sub [hl]                                      ; $6b59: $96
    nop                                           ; $6b5a: $00
    ld c, $31                                     ; $6b5b: $0e $31
    db $10                                        ; $6b5d: $10
    ld h, [hl]                                    ; $6b5e: $66
    ld bc, $f61c                                  ; $6b5f: $01 $1c $f6
    ld [bc], a                                    ; $6b62: $02
    rst $38                                       ; $6b63: $ff
    add b                                         ; $6b64: $80
    cp $c1                                        ; $6b65: $fe $c1
    nop                                           ; $6b67: $00
    rst $30                                       ; $6b68: $f7
    ld [$6658], a                                 ; $6b69: $ea $58 $66
    ld e, e                                       ; $6b6c: $5b
    dec a                                         ; $6b6d: $3d
    add a                                         ; $6b6e: $87
    inc bc                                        ; $6b6f: $03
    nop                                           ; $6b70: $00
    add a                                         ; $6b71: $87
    ld c, a                                       ; $6b72: $4f
    ld e, a                                       ; $6b73: $5f
    sbc a                                         ; $6b74: $9f
    ccf                                           ; $6b75: $3f
    sbc a                                         ; $6b76: $9f
    rrca                                          ; $6b77: $0f
    rra                                           ; $6b78: $1f
    db $10                                        ; $6b79: $10
    ld l, h                                       ; $6b7a: $6c
    inc bc                                        ; $6b7b: $03
    ld e, [hl]                                    ; $6b7c: $5e
    add b                                         ; $6b7d: $80
    add hl, hl                                    ; $6b7e: $29
    rst $38                                       ; $6b7f: $ff
    db $f4                                        ; $6b80: $f4
    ld hl, sp-$73                                 ; $6b81: $f8 $8d
    nop                                           ; $6b83: $00
    ld [c], a                                     ; $6b84: $e2
    sub a                                         ; $6b85: $97
    ld [$848b], sp                                ; $6b86: $08 $8b $84
    add h                                         ; $6b89: $84
    set 6, b                                      ; $6b8a: $cb $f0
    nop                                           ; $6b8c: $00
    rst $08                                       ; $6b8d: $cf
    adc b                                         ; $6b8e: $88
    rst $18                                       ; $6b8f: $df
    sbc b                                         ; $6b90: $98
    ccf                                           ; $6b91: $3f
    ld a, $1f                                     ; $6b92: $3e $1f
    sbc a                                         ; $6b94: $9f
    ld bc, $080f                                  ; $6b95: $01 $0f $08
    di                                            ; $6b98: $f3
    jp nz, Jump_000_303c                          ; $6b99: $c2 $3c $30

    adc $c4                                       ; $6b9c: $ce $c4
    inc c                                         ; $6b9e: $0c
    nop                                           ; $6b9f: $00
    ld bc, $82fe                                  ; $6ba0: $01 $fe $82
    cp $d4                                        ; $6ba3: $fe $d4
    cp $7f                                        ; $6ba5: $fe $7f
    db $fc                                        ; $6ba7: $fc
    ld [$4083], sp                                ; $6ba8: $08 $83 $40
    ld a, e                                       ; $6bab: $7b
    add b                                         ; $6bac: $80
    and h                                         ; $6bad: $a4
    ld b, $80                                     ; $6bae: $06 $80
    ld e, a                                       ; $6bb0: $5f
    ldh [rP1], a                                  ; $6bb1: $e0 $00
    dec sp                                        ; $6bb3: $3b
    ld a, h                                       ; $6bb4: $7c
    dec a                                         ; $6bb5: $3d
    rra                                           ; $6bb6: $1f
    rla                                           ; $6bb7: $17
    rrca                                          ; $6bb8: $0f
    ld c, e                                       ; $6bb9: $4b
    add b                                         ; $6bba: $80
    ld [$8c53], sp                                ; $6bbb: $08 $53 $8c
    add hl, bc                                    ; $6bbe: $09
    sub b                                         ; $6bbf: $90
    db $fc                                        ; $6bc0: $fc
    dec c                                         ; $6bc1: $0d
    cpl                                           ; $6bc2: $2f
    sub b                                         ; $6bc3: $90
    cp a                                          ; $6bc4: $bf
    nop                                           ; $6bc5: $00
    sbc b                                         ; $6bc6: $98
    adc l                                         ; $6bc7: $8d
    sbc [hl]                                      ; $6bc8: $9e
    ld a, [hl-]                                   ; $6bc9: $3a
    dec [hl]                                      ; $6bca: $35
    add $1f                                       ; $6bcb: $c6 $1f
    and c                                         ; $6bcd: $a1
    nop                                           ; $6bce: $00
    ld b, b                                       ; $6bcf: $40
    ld hl, $e713                                  ; $6bd0: $21 $13 $e7
    inc de                                        ; $6bd3: $13

jr_0c8_6bd4:
    di                                            ; $6bd4: $f3
    rlca                                          ; $6bd5: $07
    pop bc                                        ; $6bd6: $c1
    inc c                                         ; $6bd7: $0c
    inc hl                                        ; $6bd8: $23
    adc h                                         ; $6bd9: $8c
    ld h, b                                       ; $6bda: $60
    and a                                         ; $6bdb: $a7
    jp z, $c410                                   ; $6bdc: $ca $10 $c4

    jr jr_0c8_6bd4                                ; $6bdf: $18 $f3

    db $fc                                        ; $6be1: $fc
    nop                                           ; $6be2: $00
    sub b                                         ; $6be3: $90
    ld h, c                                       ; $6be4: $61
    push hl                                       ; $6be5: $e5
    jp nz, $f0c7                                  ; $6be6: $c2 $c7 $f0

    db $fc                                        ; $6be9: $fc
    di                                            ; $6bea: $f3
    nop                                           ; $6beb: $00
    ld a, [c]                                     ; $6bec: $f2
    rst $30                                       ; $6bed: $f7
    rst $08                                       ; $6bee: $cf
    rst $20                                       ; $6bef: $e7
    sub e                                         ; $6bf0: $93
    rlca                                          ; $6bf1: $07
    or d                                          ; $6bf2: $b2
    ld b, c                                       ; $6bf3: $41
    ld [bc], a                                    ; $6bf4: $02
    ldh a, [rIF]                                  ; $6bf5: $f0 $0f
    ld a, h                                       ; $6bf7: $7c
    add e                                         ; $6bf8: $83
    ld [bc], a                                    ; $6bf9: $02
    db $fd                                        ; $6bfa: $fd
    inc e                                         ; $6bfb: $1c

jr_0c8_6bfc:
    ld c, $03                                     ; $6bfc: $0e $03
    nop                                           ; $6bfe: $00
    db $fc                                        ; $6bff: $fc
    inc b                                         ; $6c00: $04
    ei                                            ; $6c01: $fb
    dec d                                         ; $6c02: $15
    ei                                            ; $6c03: $fb
    dec de                                        ; $6c04: $1b
    pop af                                        ; $6c05: $f1
    ld h, [hl]                                    ; $6c06: $66
    nop                                           ; $6c07: $00
    jr jr_0c8_6c63                                ; $6c08: $18 $59

    nop                                           ; $6c0a: $00
    xor d                                         ; $6c0b: $aa
    inc d                                         ; $6c0c: $14
    ld h, h                                       ; $6c0d: $64
    ld [bc], a                                    ; $6c0e: $02
    ld [$1600], a                                 ; $6c0f: $ea $00 $16
    sub [hl]                                      ; $6c12: $96
    db $fc                                        ; $6c13: $fc
    ldh a, [$f8]                                  ; $6c14: $f0 $f8
    ld b, l                                       ; $6c16: $45
    add d                                         ; $6c17: $82
    ld bc, $bb00                                  ; $6c18: $01 $00 $bb
    push de                                       ; $6c1b: $d5
    jr z, @+$4a                                   ; $6c1c: $28 $48

Call_0c8_6c1e:
    ld hl, sp+$74                                 ; $6c1e: $f8 $74
    ei                                            ; $6c20: $fb
    jp nc, Jump_0c8_6400                          ; $6c21: $d2 $00 $64

    ld b, e                                       ; $6c24: $43
    inc b                                         ; $6c25: $04
    and c                                         ; $6c26: $a1
    ld b, [hl]                                    ; $6c27: $46
    sub $23                                       ; $6c28: $d6 $23
    inc bc                                        ; $6c2a: $03
    nop                                           ; $6c2b: $00
    add a                                         ; $6c2c: $87
    inc hl                                        ; $6c2d: $23
    inc bc                                        ; $6c2e: $03
    adc b                                         ; $6c2f: $88
    ld [hl], e                                    ; $6c30: $73
    sub e                                         ; $6c31: $93
    inc c                                         ; $6c32: $0c
    add $40                                       ; $6c33: $c6 $40
    ld bc, $0f2a                                  ; $6c35: $01 $2a $0f
    ld d, [hl]                                    ; $6c38: $56
    xor e                                         ; $6c39: $ab
    inc h                                         ; $6c3a: $24
    db $e3                                        ; $6c3b: $e3
    db $e4                                        ; $6c3c: $e4
    ret z                                         ; $6c3d: $c8

    nop                                           ; $6c3e: $00
    ld [de], a                                    ; $6c3f: $12
    adc b                                         ; $6c40: $88
    rra                                           ; $6c41: $1f
    db $10                                        ; $6c42: $10
    xor a                                         ; $6c43: $af
    db $10                                        ; $6c44: $10
    cpl                                           ; $6c45: $2f
    or b                                          ; $6c46: $b0
    nop                                           ; $6c47: $00
    or a                                          ; $6c48: $b7
    jr z, @+$2d                                   ; $6c49: $28 $2b

    inc [hl]                                      ; $6c4b: $34
    ret nz                                        ; $6c4c: $c0

    ld bc, $22d1                                  ; $6c4d: $01 $d1 $22
    nop                                           ; $6c50: $00
    jr z, @+$15                                   ; $6c51: $28 $13

    add h                                         ; $6c53: $84
    inc de                                        ; $6c54: $13
    ldh [rNR22], a                                ; $6c55: $e0 $17
    db $f4                                        ; $6c57: $f4
    rrca                                          ; $6c58: $0f
    inc bc                                        ; $6c59: $03
    call z, $ae2f                                 ; $6c5a: $cc $2f $ae
    ld c, a                                       ; $6c5d: $4f
    swap h                                        ; $6c5e: $cb $34
    ld d, c                                       ; $6c60: $51
    ld b, a                                       ; $6c61: $47
    ld e, l                                       ; $6c62: $5d

jr_0c8_6c63:
    rlca                                          ; $6c63: $07
    nop                                           ; $6c64: $00
    call nc, $2523                                ; $6c65: $d4 $23 $25
    ret nc                                        ; $6c68: $d0

    dec bc                                        ; $6c69: $0b
    ldh a, [rNR21]                                ; $6c6a: $f0 $16
    ldh [rP1], a                                  ; $6c6c: $e0 $00
    rrca                                          ; $6c6e: $0f
    ldh [rNR50], a                                ; $6c6f: $e0 $24
    rst $18                                       ; $6c71: $df
    ld a, a                                       ; $6c72: $7f
    rst $08                                       ; $6c73: $cf
    ld e, l                                       ; $6c74: $5d
    add $00                                       ; $6c75: $c6 $00
    jr jr_0c8_6bfc                                ; $6c77: $18 $83

    adc l                                         ; $6c79: $8d
    ld [bc], a                                    ; $6c7a: $02
    and h                                         ; $6c7b: $a4
    ld c, a                                       ; $6c7c: $4f
    ld [hl], a                                    ; $6c7d: $77
    rlca                                          ; $6c7e: $07
    nop                                           ; $6c7f: $00
    ld b, [hl]                                    ; $6c80: $46
    or e                                          ; $6c81: $b3
    di                                            ; $6c82: $f3
    ldh [$a5], a                                  ; $6c83: $e0 $a5
    jp nz, Jump_000_0817                          ; $6c85: $c2 $17 $08

    nop                                           ; $6c88: $00
    jr jr_0c8_6cbb                                ; $6c89: $18 $30

    ld d, d                                       ; $6c8b: $52
    add b                                         ; $6c8c: $80
    ret nz                                        ; $6c8d: $c0

    add a                                         ; $6c8e: $87
    ld h, b                                       ; $6c8f: $60
    sbc b                                         ; $6c90: $98
    nop                                           ; $6c91: $00
    sub [hl]                                      ; $6c92: $96
    jr nz, jr_0c8_6cb4                            ; $6c93: $20 $1f

    jr nz, jr_0c8_6cb6                            ; $6c95: $20 $1f

    db $10                                        ; $6c97: $10
    ld c, l                                       ; $6c98: $4d
    sbc d                                         ; $6c99: $9a
    nop                                           ; $6c9a: $00
    inc a                                         ; $6c9b: $3c
    halt                                          ; $6c9c: $76
    ld a, $3c                                     ; $6c9d: $3e $3c
    add h                                         ; $6c9f: $84
    jr c, jr_0c8_6cd2                             ; $6ca0: $38 $30

    pop bc                                        ; $6ca2: $c1
    db $10                                        ; $6ca3: $10
    inc [hl]                                      ; $6ca4: $34
    add hl, bc                                    ; $6ca5: $09
    ld hl, sp+$44                                 ; $6ca6: $f8 $44
    inc bc                                        ; $6ca8: $03
    ld a, h                                       ; $6ca9: $7c
    adc b                                         ; $6caa: $88
    adc h                                         ; $6cab: $8c
    ld [hl], b                                    ; $6cac: $70
    inc b                                         ; $6cad: $04
    ld c, l                                       ; $6cae: $4d
    add d                                         ; $6caf: $82
    inc hl                                        ; $6cb0: $23
    add b                                         ; $6cb1: $80
    db $fd                                        ; $6cb2: $fd
    ld e, [hl]                                    ; $6cb3: $5e

jr_0c8_6cb4:
    rlca                                          ; $6cb4: $07
    ld a, a                                       ; $6cb5: $7f

jr_0c8_6cb6:
    add b                                         ; $6cb6: $80
    nop                                           ; $6cb7: $00
    ld e, a                                       ; $6cb8: $5f
    and b                                         ; $6cb9: $a0
    xor a                                         ; $6cba: $af

jr_0c8_6cbb:
    pop de                                        ; $6cbb: $d1
    inc l                                         ; $6cbc: $2c
    inc de                                        ; $6cbd: $13
    db $10                                        ; $6cbe: $10
    cpl                                           ; $6cbf: $2f
    nop                                           ; $6cc0: $00
    nop                                           ; $6cc1: $00
    cp a                                          ; $6cc2: $bf
    ret nz                                        ; $6cc3: $c0

    ccf                                           ; $6cc4: $3f
    ret nz                                        ; $6cc5: $c0

    ccf                                           ; $6cc6: $3f
    jr nz, @+$01                                  ; $6cc7: $20 $ff

    inc bc                                        ; $6cc9: $03
    ldh a, [$3f]                                  ; $6cca: $f0 $3f
    ld a, b                                       ; $6ccc: $78
    ccf                                           ; $6ccd: $3f
    db $ed                                        ; $6cce: $ed
    ld [de], a                                    ; $6ccf: $12
    ld c, d                                       ; $6cd0: $4a
    rrca                                          ; $6cd1: $0f

jr_0c8_6cd2:
    sbc [hl]                                      ; $6cd2: $9e
    ld h, $88                                     ; $6cd3: $26 $88
    inc [hl]                                      ; $6cd5: $34
    dec b                                         ; $6cd6: $05
    ret                                           ; $6cd7: $c9


    jr nc, @+$5a                                  ; $6cd8: $30 $58

    ret nc                                        ; $6cda: $d0

    nop                                           ; $6cdb: $00
    ld [de], a                                    ; $6cdc: $12
    ld hl, $003a                                  ; $6cdd: $21 $3a $00
    ld b, l                                       ; $6ce0: $45
    and a                                         ; $6ce1: $a7
    ld a, a                                       ; $6ce2: $7f
    ld a, $7f                                     ; $6ce3: $3e $7f
    ld d, h                                       ; $6ce5: $54
    jr c, jr_0c8_6d2f                             ; $6ce6: $38 $47

    nop                                           ; $6ce8: $00
    inc sp                                        ; $6ce9: $33
    sub a                                         ; $6cea: $97
    ld l, b                                       ; $6ceb: $68
    and b                                         ; $6cec: $a0
    ld a, h                                       ; $6ced: $7c
    ld a, b                                       ; $6cee: $78
    dec a                                         ; $6cef: $3d
    ld [de], a                                    ; $6cf0: $12
    nop                                           ; $6cf1: $00
    cp c                                          ; $6cf2: $b9
    add hl, de                                    ; $6cf3: $19
    add b                                         ; $6cf4: $80
    inc d                                         ; $6cf5: $14
    ld [$225d], sp                                ; $6cf6: $08 $5d $22
    adc d                                         ; $6cf9: $8a
    nop                                           ; $6cfa: $00
    rlca                                          ; $6cfb: $07
    inc hl                                        ; $6cfc: $23
    inc bc                                        ; $6cfd: $03
    ld c, d                                       ; $6cfe: $4a
    ld sp, $844b                                  ; $6cff: $31 $4b $84
    or c                                          ; $6d02: $b1
    add b                                         ; $6d03: $80
    ld hl, sp+$07                                 ; $6d04: $f8 $07
    ccf                                           ; $6d06: $3f
    ret nz                                        ; $6d07: $c0

    dec [hl]                                      ; $6d08: $35
    ld l, d                                       ; $6d09: $6a
    ld h, c                                       ; $6d0a: $61
    adc $c4                                       ; $6d0b: $ce $c4
    nop                                           ; $6d0d: $00
    ret z                                         ; $6d0e: $c8

    ld b, e                                       ; $6d0f: $43
    adc b                                         ; $6d10: $88
    adc a                                         ; $6d11: $8f
    ld [$48a7], sp                                ; $6d12: $08 $a7 $48
    rst $08                                       ; $6d15: $cf
    ld [bc], a                                    ; $6d16: $02
    inc h                                         ; $6d17: $24
    rst $00                                       ; $6d18: $c7
    inc h                                         ; $6d19: $24
    or d                                          ; $6d1a: $b2
    ld h, a                                       ; $6d1b: $67
    jp nz, Jump_000_00d0                          ; $6d1c: $c2 $d0 $00

    jr nc, jr_0c8_6d21                            ; $6d1f: $30 $00

jr_0c8_6d21:
    dec bc                                        ; $6d21: $0b
    ld [c], a                                     ; $6d22: $e2
    add hl, bc                                    ; $6d23: $09
    ld a, [$fb01]                                 ; $6d24: $fa $01 $fb
    dec b                                         ; $6d27: $05
    ld sp, hl                                     ; $6d28: $f9
    inc b                                         ; $6d29: $04
    dec b                                         ; $6d2a: $05
    db $fc                                        ; $6d2b: $fc
    dec b                                         ; $6d2c: $05
    sbc [hl]                                      ; $6d2d: $9e
    ld h, c                                       ; $6d2e: $61

jr_0c8_6d2f:
    ret nc                                        ; $6d2f: $d0

    ld c, b                                       ; $6d30: $48
    ldh [rIE], a                                  ; $6d31: $e0 $ff
    nop                                           ; $6d33: $00
    ld l, b                                       ; $6d34: $68
    ldh a, [$71]                                  ; $6d35: $f0 $71
    ldh [$a2], a                                  ; $6d37: $e0 $a2
    pop bc                                        ; $6d39: $c1
    and d                                         ; $6d3a: $a2
    ld [hl], e                                    ; $6d3b: $73
    nop                                           ; $6d3c: $00
    ld sp, hl                                     ; $6d3d: $f9
    di                                            ; $6d3e: $f3
    ld de, $e9f9                                  ; $6d3f: $11 $f9 $e9
    ldh a, [$cd]                                  ; $6d42: $f0 $cd
    ldh [rDIV], a                                 ; $6d44: $e0 $04
    ld h, $18                                     ; $6d46: $26 $18
    ld h, b                                       ; $6d48: $60
    add b                                         ; $6d49: $80
    ccf                                           ; $6d4a: $3f
    db $f4                                        ; $6d4b: $f4
    rla                                           ; $6d4c: $17
    xor [hl]                                      ; $6d4d: $ae
    pop de                                        ; $6d4e: $d1
    ld b, b                                       ; $6d4f: $40
    ret z                                         ; $6d50: $c8

    ld [hl], c                                    ; $6d51: $71
    inc b                                         ; $6d52: $04
    add hl, hl                                    ; $6d53: $29
    inc de                                        ; $6d54: $13
    ret nc                                        ; $6d55: $d0

    add hl, bc                                    ; $6d56: $09
    jp hl                                         ; $6d57: $e9


    inc b                                         ; $6d58: $04
    nop                                           ; $6d59: $00
    ld a, [$f804]                                 ; $6d5a: $fa $04 $f8
    inc b                                         ; $6d5d: $04
    add h                                         ; $6d5e: $84
    ld a, c                                       ; $6d5f: $79
    ldh a, [$e3]                                  ; $6d60: $f0 $e3
    nop                                           ; $6d62: $00
    push bc                                       ; $6d63: $c5
    add [hl]                                      ; $6d64: $86
    and [hl]                                      ; $6d65: $a6
    db $fc                                        ; $6d66: $fc
    db $fd                                        ; $6d67: $fd
    ld hl, sp+$12                                 ; $6d68: $f8 $12
    ldh [rSB], a                                  ; $6d6a: $e0 $01
    inc b                                         ; $6d6c: $04
    inc bc                                        ; $6d6d: $03
    ld b, b                                       ; $6d6e: $40
    ccf                                           ; $6d6f: $3f
    rra                                           ; $6d70: $1f
    ldh [$c0], a                                  ; $6d71: $e0 $c0
    add hl, hl                                    ; $6d73: $29
    nop                                           ; $6d74: $00
    nop                                           ; $6d75: $00
    sub l                                         ; $6d76: $95
    ld a, [hl-]                                   ; $6d77: $3a
    ld [hl-], a                                   ; $6d78: $32
    dec a                                         ; $6d79: $3d
    cp e                                          ; $6d7a: $bb
    rra                                           ; $6d7b: $1f
    adc h                                         ; $6d7c: $8c
    ld e, $00                                     ; $6d7d: $1e $00
    ld b, b                                       ; $6d7f: $40
    adc h                                         ; $6d80: $8c
    db $10                                        ; $6d81: $10
    pop hl                                        ; $6d82: $e1
    ld h, b                                       ; $6d83: $60
    or c                                          ; $6d84: $b1
    ld [hl], e                                    ; $6d85: $73
    db $e4                                        ; $6d86: $e4
    inc b                                         ; $6d87: $04
    dec b                                         ; $6d88: $05
    rst $08                                       ; $6d89: $cf
    jp $a387                                      ; $6d8a: $c3 $87 $a3


    sub d                                         ; $6d8d: $92
    nop                                           ; $6d8e: $00
    ld d, e                                       ; $6d8f: $53
    adc h                                         ; $6d90: $8c
    nop                                           ; $6d91: $00
    adc h                                         ; $6d92: $8c
    inc bc                                        ; $6d93: $03
    ld a, a                                       ; $6d94: $7f
    add b                                         ; $6d95: $80
    call c, Call_0c8_41e3                         ; $6d96: $dc $e3 $41
    rst $38                                       ; $6d99: $ff
    ld b, b                                       ; $6d9a: $40
    pop af                                        ; $6d9b: $f1
    ld [$1715], sp                                ; $6d9c: $08 $15 $17
    db $e3                                        ; $6d9f: $e3
    ld c, [hl]                                    ; $6da0: $4e
    rlca                                          ; $6da1: $07
    ld e, l                                       ; $6da2: $5d
    adc a                                         ; $6da3: $8f
    nop                                           ; $6da4: $00
    sbc a                                         ; $6da5: $9f
    ccf                                           ; $6da6: $3f
    add sp, -$40                                  ; $6da7: $e8 $c0
    add l                                         ; $6da9: $85
    jp nz, $04ca                                  ; $6daa: $c2 $ca $04

    nop                                           ; $6dad: $00
    ld b, l                                       ; $6dae: $45
    and $e6                                       ; $6daf: $e6 $e6
    di                                            ; $6db1: $f3
    inc sp                                        ; $6db2: $33
    pop af                                        ; $6db3: $f1
    pop hl                                        ; $6db4: $e1
    ldh a, [rSB]                                  ; $6db5: $f0 $01
    ret                                           ; $6db7: $c9


    db $e4                                        ; $6db8: $e4
    sbc b                                         ; $6db9: $98
    ld h, b                                       ; $6dba: $60
    ld b, c                                       ; $6dbb: $41
    add b                                         ; $6dbc: $80
    ld a, a                                       ; $6dbd: $7f
    adc l                                         ; $6dbe: $8d
    rla                                           ; $6dbf: $17
    nop                                           ; $6dc0: $00
    rst $18                                       ; $6dc1: $df
    and b                                         ; $6dc2: $a0
    jp z, $fdfd                                   ; $6dc3: $ca $fd $fd

    ld a, a                                       ; $6dc6: $7f
    and [hl]                                      ; $6dc7: $a6
    ld c, a                                       ; $6dc8: $4f
    nop                                           ; $6dc9: $00
    inc de                                        ; $6dca: $13
    daa                                           ; $6dcb: $27
    xor d                                         ; $6dcc: $aa
    ld de, $08f4                                  ; $6dcd: $11 $f4 $08

jr_0c8_6dd0:
    db $fc                                        ; $6dd0: $fc
    nop                                           ; $6dd1: $00
    nop                                           ; $6dd2: $00
    ld d, d                                       ; $6dd3: $52
    xor c                                         ; $6dd4: $a9
    ld [hl], h                                    ; $6dd5: $74
    db $e3                                        ; $6dd6: $e3
    add e                                         ; $6dd7: $83
    add $92                                       ; $6dd8: $c6 $92
    ld hl, sp+$00                                 ; $6dda: $f8 $00
    ldh [$f0], a                                  ; $6ddc: $e0 $f0
    inc b                                         ; $6dde: $04
    ret nz                                        ; $6ddf: $c0

    dec bc                                        ; $6de0: $0b
    inc b                                         ; $6de1: $04
    add b                                         ; $6de2: $80
    ld a, a                                       ; $6de3: $7f
    add b                                         ; $6de4: $80
    ld [hl], b                                    ; $6de5: $70
    jr jr_0c8_6e3d                                ; $6de6: $18 $55

    db $eb                                        ; $6de8: $eb
    ld [$3477], a                                 ; $6de9: $ea $77 $34
    ld a, [hl]                                    ; $6dec: $7e
    jr jr_0c8_6df7                                ; $6ded: $18 $08

    inc a                                         ; $6def: $3c
    ld bc, $0098                                  ; $6df0: $01 $98 $00
    ld [hl], b                                    ; $6df3: $70
    nop                                           ; $6df4: $00
    ld [hl], $e1                                  ; $6df5: $36 $e1

jr_0c8_6df7:
    sbc l                                         ; $6df7: $9d
    nop                                           ; $6df8: $00
    ccf                                           ; $6df9: $3f
    ld e, $0f                                     ; $6dfa: $1e $0f
    rst $08                                       ; $6dfc: $cf
    rlca                                          ; $6dfd: $07
    add l                                         ; $6dfe: $85
    ld h, e                                       ; $6dff: $63
    ld h, $00                                     ; $6e00: $26 $00
    sbc c                                         ; $6e02: $99
    dec d                                         ; $6e03: $15
    ld [bc], a                                    ; $6e04: $02
    ld a, a                                       ; $6e05: $7f
    add b                                         ; $6e06: $80
    ld e, [hl]                                    ; $6e07: $5e
    pop hl                                        ; $6e08: $e1
    rlca                                          ; $6e09: $07
    jr nz, @+$01                                  ; $6e0a: $20 $ff

    add $0d                                       ; $6e0c: $c6 $0d
    inc b                                         ; $6e0e: $04
    ld a, [$33fd]                                 ; $6e0f: $fa $fd $33
    rst $00                                       ; $6e12: $c7
    and [hl]                                      ; $6e13: $a6
    nop                                           ; $6e14: $00
    rrca                                          ; $6e15: $0f
    ld e, a                                       ; $6e16: $5f
    adc a                                         ; $6e17: $8f
    cp a                                          ; $6e18: $bf
    rra                                           ; $6e19: $1f
    and d                                         ; $6e1a: $a2
    ld bc, $00c1                                  ; $6e1b: $01 $c1 $00
    ld c, $95                                     ; $6e1e: $0e $95
    ld [$cc8b], sp                                ; $6e20: $08 $8b $cc
    call Call_000_21e6                            ; $6e23: $cd $e6 $21
    nop                                           ; $6e26: $00
    di                                            ; $6e27: $f3
    ldh [$f1], a                                  ; $6e28: $e0 $f1
    jp hl                                         ; $6e2a: $e9


    db $e4                                        ; $6e2b: $e4
    ld h, d                                       ; $6e2c: $62
    add c                                         ; $6e2d: $81
    ld b, $80                                     ; $6e2e: $06 $80
    xor e                                         ; $6e30: $ab
    daa                                           ; $6e31: $27
    ld e, l                                       ; $6e32: $5d
    and d                                         ; $6e33: $a2
    jp c, Jump_000_3ffd                           ; $6e34: $da $fd $3f

    rst $38                                       ; $6e37: $ff
    sbc d                                         ; $6e38: $9a
    nop                                           ; $6e39: $00

jr_0c8_6e3a:
    ccf                                           ; $6e3a: $3f
    sbc a                                         ; $6e3b: $9f
    ld c, a                                       ; $6e3c: $4f

jr_0c8_6e3d:
    ld d, b                                       ; $6e3d: $50
    daa                                           ; $6e3e: $27
    ldh [rNR10], a                                ; $6e3f: $e0 $10
    ldh a, [$08]                                  ; $6e41: $f0 $08
    ld [$f10a], sp                                ; $6e43: $08 $0a $f1
    call nc, Call_000_0070                        ; $6e46: $d4 $70 $00
    ld c, c                                       ; $6e49: $49
    db $e3                                        ; $6e4a: $e3
    sub c                                         ; $6e4b: $91
    nop                                           ; $6e4c: $00
    pop bc                                        ; $6e4d: $c1
    jr jr_0c8_6dd0                                ; $6e4e: $18 $80

    ld d, $08                                     ; $6e50: $16 $08
    nop                                           ; $6e52: $00
    rst $38                                       ; $6e53: $ff
    ld a, $40                                     ; $6e54: $3e $40
    pop bc                                        ; $6e56: $c1
    ldh [$08], a                                  ; $6e57: $e0 $08
    ld d, [hl]                                    ; $6e59: $56
    xor h                                         ; $6e5a: $ac
    xor l                                         ; $6e5b: $ad
    call c, $fce9                                 ; $6e5c: $dc $e9 $fc
    nop                                           ; $6e5f: $00
    ld sp, $a278                                  ; $6e60: $31 $78 $a2
    ld de, $c221                                  ; $6e63: $11 $21 $c2
    ld a, b                                       ; $6e66: $78
    and c                                         ; $6e67: $a1
    nop                                           ; $6e68: $00
    ld h, $f1                                     ; $6e69: $26 $f1
    db $f4                                        ; $6e6b: $f4
    ld a, a                                       ; $6e6c: $7f
    ld a, a                                       ; $6e6d: $7f
    ccf                                           ; $6e6e: $3f
    adc a                                         ; $6e6f: $8f
    rra                                           ; $6e70: $1f
    ld [bc], a                                    ; $6e71: $02
    dec bc                                        ; $6e72: $0b
    rst $00                                       ; $6e73: $c7
    add h                                         ; $6e74: $84
    dec sp                                        ; $6e75: $3b
    jr jr_0c8_6e7e                                ; $6e76: $18 $06

    ld [hl], b                                    ; $6e78: $70
    ld [$0084], sp                                ; $6e79: $08 $84 $00
    db $db                                        ; $6e7c: $db
    ld e, d                                       ; $6e7d: $5a

jr_0c8_6e7e:
    and l                                         ; $6e7e: $a5
    ld bc, $027e                                  ; $6e7f: $01 $7e $02
    db $fd                                        ; $6e82: $fd

jr_0c8_6e83:
    ld [bc], a                                    ; $6e83: $02
    jr nz, jr_0c8_6e83                            ; $6e84: $20 $fd

    add b                                         ; $6e86: $80
    ld [c], a                                     ; $6e87: $e2
    ld b, $82                                     ; $6e88: $06 $82
    rst $38                                       ; $6e8a: $ff
    ld e, a                                       ; $6e8b: $5f
    ld a, $c4                                     ; $6e8c: $3e $c4
    nop                                           ; $6e8e: $00
    jr jr_0c8_6e95                                ; $6e8f: $18 $04

    add e                                         ; $6e91: $83
    and e                                         ; $6e92: $a3
    inc e                                         ; $6e93: $1c
    ld e, b                                       ; $6e94: $58

jr_0c8_6e95:
    jr nz, jr_0c8_6e3a                            ; $6e95: $20 $a3

    nop                                           ; $6e97: $00
    ld b, b                                       ; $6e98: $40
    rst $18                                       ; $6e99: $df
    nop                                           ; $6e9a: $00
    ccf                                           ; $6e9b: $3f
    ld b, b                                       ; $6e9c: $40
    inc l                                         ; $6e9d: $2c
    rlca                                          ; $6e9e: $07
    ld d, b                                       ; $6e9f: $50
    nop                                           ; $6ea0: $00
    rlca                                          ; $6ea1: $07
    ld [hl+], a                                   ; $6ea2: $22
    rst $10                                       ; $6ea3: $d7
    db $db                                        ; $6ea4: $db
    inc hl                                        ; $6ea5: $23
    add hl, hl                                    ; $6ea6: $29
    inc de                                        ; $6ea7: $13
    pop de                                        ; $6ea8: $d1
    ld [$d109], sp                                ; $6ea9: $08 $09 $d1
    ld [$58f0], sp                                ; $6eac: $08 $f0 $58
    nop                                           ; $6eaf: $00

jr_0c8_6eb0:
    inc bc                                        ; $6eb0: $03
    rst $38                                       ; $6eb1: $ff
    sub a                                         ; $6eb2: $97
    nop                                           ; $6eb3: $00
    cp $be                                        ; $6eb4: $fe $be
    db $fc                                        ; $6eb6: $fc
    ld a, [$62f1]                                 ; $6eb7: $fa $f1 $62
    pop bc                                        ; $6eba: $c1
    nop                                           ; $6ebb: $00
    nop                                           ; $6ebc: $00
    ld bc, $3c58                                  ; $6ebd: $01 $58 $3c
    sub h                                         ; $6ec0: $94
    srl c                                         ; $6ec1: $cb $39
    add b                                         ; $6ec3: $80
    ld h, $c0                                     ; $6ec4: $26 $c0
    ld e, [hl]                                    ; $6ec6: $5e
    dec bc                                        ; $6ec7: $0b
    ld [de], a                                    ; $6ec8: $12
    ld [bc], a                                    ; $6ec9: $02
    db $fc                                        ; $6eca: $fc
    add e                                         ; $6ecb: $83
    rra                                           ; $6ecc: $1f
    or $e7                                        ; $6ecd: $f6 $e7
    ld a, [hl]                                    ; $6ecf: $7e
    nop                                           ; $6ed0: $00
    inc e                                         ; $6ed1: $1c
    cp h                                          ; $6ed2: $bc
    ret c                                         ; $6ed3: $d8

    nop                                           ; $6ed4: $00
    add b                                         ; $6ed5: $80
    ld b, a                                       ; $6ed6: $47
    add a                                         ; $6ed7: $87
    ld c, b                                       ; $6ed8: $48
    ld bc, $5080                                  ; $6ed9: $01 $80 $50
    sub [hl]                                      ; $6edc: $96
    jr nz, jr_0c8_6f4e                            ; $6edd: $20 $6f

    nop                                           ; $6edf: $00
    ld a, a                                       ; $6ee0: $7f
    db $fd                                        ; $6ee1: $fd
    dec b                                         ; $6ee2: $05
    nop                                           ; $6ee3: $00
    ld a, a                                       ; $6ee4: $7f
    ccf                                           ; $6ee5: $3f
    sbc [hl]                                      ; $6ee6: $9e
    rrca                                          ; $6ee7: $0f
    jr z, jr_0c8_6eb0                             ; $6ee8: $28 $c6

    jp nz, RST_30                                 ; $6eea: $c2 $30 $00

    ld d, $08                                     ; $6eed: $16 $08
    ret c                                         ; $6eef: $d8

    inc b                                         ; $6ef0: $04
    sub $c9                                       ; $6ef1: $d6 $c9
    db $ed                                        ; $6ef3: $ed
    sub d                                         ; $6ef4: $92
    nop                                           ; $6ef5: $00
    add b                                         ; $6ef6: $80
    ccf                                           ; $6ef7: $3f
    ld hl, $007e                                  ; $6ef8: $21 $7e $00
    ld a, a                                       ; $6efb: $7f
    ret nz                                        ; $6efc: $c0

    ld a, a                                       ; $6efd: $7f
    nop                                           ; $6efe: $00
    jr nz, jr_0c8_6f80                            ; $6eff: $20 $7f

    ld h, b                                       ; $6f01: $60
    ccf                                           ; $6f02: $3f
    sbc [hl]                                      ; $6f03: $9e
    ccf                                           ; $6f04: $3f
    ld [hl-], a                                   ; $6f05: $32
    adc h                                         ; $6f06: $8c
    nop                                           ; $6f07: $00
    add b                                         ; $6f08: $80
    ld b, c                                       ; $6f09: $41
    add hl, bc                                    ; $6f0a: $09
    add $8e                                       ; $6f0b: $c6 $8e
    ld d, b                                       ; $6f0d: $50
    ld e, b                                       ; $6f0e: $58
    and b                                         ; $6f0f: $a0
    nop                                           ; $6f10: $00
    scf                                           ; $6f11: $37
    ret nz                                        ; $6f12: $c0

    ld c, a                                       ; $6f13: $4f
    ret nc                                        ; $6f14: $d0

    sub b                                         ; $6f15: $90
    rlca                                          ; $6f16: $07
    ld a, [hl]                                    ; $6f17: $7e
    inc bc                                        ; $6f18: $03
    ld bc, $eb11                                  ; $6f19: $01 $11 $eb
    push af                                       ; $6f1c: $f5
    add hl, bc                                    ; $6f1d: $09
    ld [$e204], sp                                ; $6f1e: $08 $04 $e2
    jp z, Jump_000_0006                           ; $6f21: $ca $06 $00

jr_0c8_6f24:
    db $fd                                        ; $6f24: $fd
    ld [bc], a                                    ; $6f25: $02
    nop                                           ; $6f26: $00
    rst $38                                       ; $6f27: $ff
    ld bc, $4bff                                  ; $6f28: $01 $ff $4b
    rst $38                                       ; $6f2b: $ff
    nop                                           ; $6f2c: $00
    xor a                                         ; $6f2d: $af
    cp $f8                                        ; $6f2e: $fe $f8
    db $fc                                        ; $6f30: $fc
    ret z                                         ; $6f31: $c8

    ld [hl], b                                    ; $6f32: $70
    ld b, b                                       ; $6f33: $40
    nop                                           ; $6f34: $00
    nop                                           ; $6f35: $00
    ld [bc], a                                    ; $6f36: $02
    rrca                                          ; $6f37: $0f
    pop hl                                        ; $6f38: $e1
    adc $c8                                       ; $6f39: $ce $c8
    sub b                                         ; $6f3b: $90
    sub e                                         ; $6f3c: $93
    jr nz, @-$7e                                  ; $6f3d: $20 $80

    ld bc, $8004                                  ; $6f3f: $01 $04 $80
    sbc a                                         ; $6f42: $9f
    ld h, b                                       ; $6f43: $60
    ld l, a                                       ; $6f44: $6f
    jr nc, jr_0c8_6f67                            ; $6f45: $30 $20

    sbc a                                         ; $6f47: $9f
    nop                                           ; $6f48: $00
    ld [hl-], a                                   ; $6f49: $32
    rst $38                                       ; $6f4a: $ff
    call z, Call_0c8_6c1e                         ; $6f4b: $cc $1e $6c

jr_0c8_6f4e:
    nop                                           ; $6f4e: $00
    jp nc, Jump_000_0021                          ; $6f4f: $d2 $21 $00

    push hl                                       ; $6f52: $e5
    ld [de], a                                    ; $6f53: $12
    ldh [rNR14], a                                ; $6f54: $e0 $14
    adc b                                         ; $6f56: $88
    ld h, h                                       ; $6f57: $64
    add c                                         ; $6f58: $81
    ret z                                         ; $6f59: $c8

    ld b, b                                       ; $6f5a: $40
    ccf                                           ; $6f5b: $3f
    ld bc, $2f00                                  ; $6f5c: $01 $00 $2f
    rra                                           ; $6f5f: $1f
    ld c, e                                       ; $6f60: $4b
    add a                                         ; $6f61: $87
    adc d                                         ; $6f62: $8a
    ld [hl], c                                    ; $6f63: $71
    nop                                           ; $6f64: $00
    jr nc, jr_0c8_6f73                            ; $6f65: $30 $0c

jr_0c8_6f67:
    push bc                                       ; $6f67: $c5
    ld [bc], a                                    ; $6f68: $02
    or $01                                        ; $6f69: $f6 $01
    ld [c], a                                     ; $6f6b: $e2
    call $f600                                    ; $6f6c: $cd $00 $f6
    ret                                           ; $6f6f: $c9


    ret nz                                        ; $6f70: $c0

    sbc a                                         ; $6f71: $9f
    or b                                          ; $6f72: $b0

jr_0c8_6f73:
    sbc a                                         ; $6f73: $9f
    add b                                         ; $6f74: $80
    ccf                                           ; $6f75: $3f
    nop                                           ; $6f76: $00
    ld [hl], b                                    ; $6f77: $70
    rra                                           ; $6f78: $1f
    ret z                                         ; $6f79: $c8

    rra                                           ; $6f7a: $1f
    add h                                         ; $6f7b: $84
    rrca                                          ; $6f7c: $0f
    cpl                                           ; $6f7d: $2f
    sbc a                                         ; $6f7e: $9f
    nop                                           ; $6f7f: $00

jr_0c8_6f80:
    cp b                                          ; $6f80: $b8
    ld b, [hl]                                    ; $6f81: $46
    ld b, b                                       ; $6f82: $40
    and b                                         ; $6f83: $a0
    sub h                                         ; $6f84: $94
    ld h, e                                       ; $6f85: $63
    ld c, e                                       ; $6f86: $4b
    and h                                         ; $6f87: $a4
    nop                                           ; $6f88: $00
    ld d, $e8                                     ; $6f89: $16 $e8
    dec c                                         ; $6f8b: $0d
    ldh a, [rNR11]                                ; $6f8c: $f0 $11
    ld a, [$0396]                                 ; $6f8e: $fa $96 $03
    nop                                           ; $6f91: $00
    dec sp                                        ; $6f92: $3b
    ld bc, $f904                                  ; $6f93: $01 $04 $f9
    ld a, d                                       ; $6f96: $7a
    add h                                         ; $6f97: $84
    dec b                                         ; $6f98: $05
    ld [bc], a                                    ; $6f99: $02
    ld c, b                                       ; $6f9a: $48
    jr c, jr_0c8_6f24                             ; $6f9b: $38 $87

    inc bc                                        ; $6f9d: $03
    rst $38                                       ; $6f9e: $ff
    nop                                           ; $6f9f: $00
    adc l                                         ; $6fa0: $8d
    ld c, $a7                                     ; $6fa1: $0e $a7
    rst $38                                       ; $6fa3: $ff
    ld [hl], a                                    ; $6fa4: $77
    nop                                           ; $6fa5: $00
    rst $38                                       ; $6fa6: $ff
    ld a, [hl]                                    ; $6fa7: $7e
    ccf                                           ; $6fa8: $3f
    or d                                          ; $6fa9: $b2
    inc e                                         ; $6faa: $1c
    ld b, b                                       ; $6fab: $40
    add b                                         ; $6fac: $80
    and d                                         ; $6fad: $a2
    nop                                           ; $6fae: $00
    ld b, c                                       ; $6faf: $41
    ld c, b                                       ; $6fb0: $48
    rst $20                                       ; $6fb1: $e7
    db $e4                                        ; $6fb2: $e4
    ret z                                         ; $6fb3: $c8

    ret                                           ; $6fb4: $c9


    sub b                                         ; $6fb5: $90
    ccf                                           ; $6fb6: $3f
    add b                                         ; $6fb7: $80
    inc b                                         ; $6fb8: $04
    rlca                                          ; $6fb9: $07
    rlca                                          ; $6fba: $07
    jr c, jr_0c8_6fc7                             ; $6fbb: $38 $0a

    dec c                                         ; $6fbd: $0d
    ret z                                         ; $6fbe: $c8

    rst $20                                       ; $6fbf: $e7
    or e                                          ; $6fc0: $b3
    nop                                           ; $6fc1: $00
    ld a, a                                       ; $6fc2: $7f
    ld [hl], a                                    ; $6fc3: $77
    ld c, $b2                                     ; $6fc4: $0e $b2
    nop                                           ; $6fc6: $00

jr_0c8_6fc7:
    add sp, $10                                   ; $6fc7: $e8 $10
    db $fc                                        ; $6fc9: $fc
    nop                                           ; $6fca: $00
    ld bc, $05f8                                  ; $6fcb: $01 $f8 $05
    ld [c], a                                     ; $6fce: $e2
    add hl, de                                    ; $6fcf: $19
    cp e                                          ; $6fd0: $bb
    ldh a, [$82]                                  ; $6fd1: $f0 $82
    nop                                           ; $6fd3: $00
    cp $84                                        ; $6fd4: $fe $84
    cp $a8                                        ; $6fd6: $fe $a8
    db $fc                                        ; $6fd8: $fc
    cp b                                          ; $6fd9: $b8
    ld sp, hl                                     ; $6fda: $f9
    di                                            ; $6fdb: $f3
    inc bc                                        ; $6fdc: $03
    pop af                                        ; $6fdd: $f1
    pop bc                                        ; $6fde: $c1
    db $e3                                        ; $6fdf: $e3
    adc [hl]                                      ; $6fe0: $8e
    pop bc                                        ; $6fe1: $c1
    cp h                                          ; $6fe2: $bc
    call z, Call_000_1a0e                         ; $6fe3: $cc $0e $1a
    inc bc                                        ; $6fe6: $03
    nop                                           ; $6fe7: $00
    ld a, a                                       ; $6fe8: $7f
    add b                                         ; $6fe9: $80
    cp $81                                        ; $6fea: $fe $81
    xor a                                         ; $6fec: $af
    db $d3                                        ; $6fed: $d3
    and $de                                       ; $6fee: $e6 $de
    nop                                           ; $6ff0: $00
    ld a, b                                       ; $6ff1: $78
    db $fc                                        ; $6ff2: $fc
    ldh a, [rNR23]                                ; $6ff3: $f0 $18
    db $e3                                        ; $6ff5: $e3
    ld sp, $67af                                  ; $6ff6: $31 $af $67
    nop                                           ; $6ff9: $00
    rra                                           ; $6ffa: $1f
    rst $08                                       ; $6ffb: $cf
    cp a                                          ; $6ffc: $bf
    sbc a                                         ; $6ffd: $9f
    cp a                                          ; $6ffe: $bf
    ccf                                           ; $6fff: $3f
    rra                                           ; $7000: $1f
    ccf                                           ; $7001: $3f
    inc b                                         ; $7002: $04
    cp a                                          ; $7003: $bf
    ccf                                           ; $7004: $3f
    ld a, [hl]                                    ; $7005: $7e
    rst $38                                       ; $7006: $ff
    db $e3                                        ; $7007: $e3
    xor [hl]                                      ; $7008: $ae
    ld b, [hl]                                    ; $7009: $46
    rst $38                                       ; $700a: $ff
    rst $38                                       ; $700b: $ff
    nop                                           ; $700c: $00
    inc b                                         ; $700d: $04
    db $fc                                        ; $700e: $fc
    ret nz                                        ; $700f: $c0

    ld hl, sp-$44                                 ; $7010: $f8 $bc
    ld hl, sp-$43                                 ; $7012: $f8 $bd
    cp $6c                                        ; $7014: $fe $6c
    cp $74                                        ; $7016: $fe $74
    rlca                                          ; $7018: $07
    ld [de], a                                    ; $7019: $12
    rrca                                          ; $701a: $0f
    sbc a                                         ; $701b: $9f
    and b                                         ; $701c: $a0
    rlca                                          ; $701d: $07
    ld e, h                                       ; $701e: $5c
    dec bc                                        ; $701f: $0b
    ccf                                           ; $7020: $3f
    ld b, b                                       ; $7021: $40
    nop                                           ; $7022: $00
    ld d, a                                       ; $7023: $57
    ld l, b                                       ; $7024: $68
    ld [hl+], a                                   ; $7025: $22
    ld a, l                                       ; $7026: $7d
    dec sp                                        ; $7027: $3b
    ccf                                           ; $7028: $3f
    pop af                                        ; $7029: $f1
    ld [$f400], sp                                ; $702a: $08 $00 $f4
    ld a, [bc]                                    ; $702d: $0a
    ld [c], a                                     ; $702e: $e2
    inc d                                         ; $702f: $14
    ldh [rNR22], a                                ; $7030: $e0 $17
    pop bc                                        ; $7032: $c1
    inc sp                                        ; $7033: $33
    nop                                           ; $7034: $00
    ld bc, $84e0                                  ; $7035: $01 $e0 $84
    ret z                                         ; $7038: $c8

    ld hl, $a09e                                  ; $7039: $21 $9e $a0
    ccf                                           ; $703c: $3f
    nop                                           ; $703d: $00
    ld d, b                                       ; $703e: $50
    ccf                                           ; $703f: $3f
    jr nc, jr_0c8_70a1                            ; $7040: $30 $5f

    db $eb                                        ; $7042: $eb
    rra                                           ; $7043: $1f
    rst $28                                       ; $7044: $ef
    sbc a                                         ; $7045: $9f
    nop                                           ; $7046: $00
    ld d, [hl]                                    ; $7047: $56
    adc [hl]                                      ; $7048: $8e
    inc b                                         ; $7049: $04
    inc c                                         ; $704a: $0c
    dec b                                         ; $704b: $05
    nop                                           ; $704c: $00
    rrca                                          ; $704d: $0f
    ret nc                                        ; $704e: $d0

    nop                                           ; $704f: $00
    sbc a                                         ; $7050: $9f
    ret nc                                        ; $7051: $d0

    rst $18                                       ; $7052: $df
    sub b                                         ; $7053: $90
    rra                                           ; $7054: $1f
    sub b                                         ; $7055: $90
    ccf                                           ; $7056: $3f
    jr jr_0c8_7059                                ; $7057: $18 $00

jr_0c8_7059:
    ld a, [hl-]                                   ; $7059: $3a
    dec e                                         ; $705a: $1d
    inc l                                         ; $705b: $2c
    ld e, a                                       ; $705c: $5f
    db $e3                                        ; $705d: $e3
    rlca                                          ; $705e: $07
    rst $38                                       ; $705f: $ff
    ld [bc], a                                    ; $7060: $02
    nop                                           ; $7061: $00
    ld hl, sp+$06                                 ; $7062: $f8 $06
    db $fc                                        ; $7064: $fc
    inc b                                         ; $7065: $04
    ld hl, sp+$0d                                 ; $7066: $f8 $0d
    db $eb                                        ; $7068: $eb
    add hl, de                                    ; $7069: $19
    nop                                           ; $706a: $00
    pop de                                        ; $706b: $d1
    dec sp                                        ; $706c: $3b
    ld h, e                                       ; $706d: $63
    pop af                                        ; $706e: $f1
    pop bc                                        ; $706f: $c1
    pop hl                                        ; $7070: $e1
    rrca                                          ; $7071: $0f
    rra                                           ; $7072: $1f
    ld h, d                                       ; $7073: $62
    ld e, h                                       ; $7074: $5c
    ld a, [hl]                                    ; $7075: $7e
    scf                                           ; $7076: $37
    push de                                       ; $7077: $d5
    rrca                                          ; $7078: $0f
    ret nz                                        ; $7079: $c0

    rst $38                                       ; $707a: $ff
    ld a, b                                       ; $707b: $78
    add b                                         ; $707c: $80
    ld d, b                                       ; $707d: $50
    dec bc                                        ; $707e: $0b
    nop                                           ; $707f: $00
    sub b                                         ; $7080: $90
    sbc a                                         ; $7081: $9f
    nop                                           ; $7082: $00
    ld b, a                                       ; $7083: $47
    adc b                                         ; $7084: $88
    rst $10                                       ; $7085: $d7
    add sp, -$1d                                  ; $7086: $e8 $e3
    ld bc, $f7f4                                  ; $7088: $01 $f4 $f7
    or $e7                                        ; $708b: $f6 $e7
    di                                            ; $708d: $f3
    di                                            ; $708e: $f3
    pop hl                                        ; $708f: $e1
    jp hl                                         ; $7090: $e9


    inc b                                         ; $7091: $04
    add b                                         ; $7092: $80
    ld e, d                                       ; $7093: $5a
    inc b                                         ; $7094: $04
    cp $01                                        ; $7095: $fe $01
    db $fc                                        ; $7097: $fc
    inc bc                                        ; $7098: $03
    ld sp, hl                                     ; $7099: $f9
    ld b, $36                                     ; $709a: $06 $36
    nop                                           ; $709c: $00
    call z, $fcd9                                 ; $709d: $cc $d9 $fc
    inc h                                         ; $70a0: $24

jr_0c8_70a1:
    rlca                                          ; $70a1: $07
    add [hl]                                      ; $70a2: $86
    ld b, e                                       ; $70a3: $43

jr_0c8_70a4:
    and l                                         ; $70a4: $a5
    nop                                           ; $70a5: $00
    ld c, e                                       ; $70a6: $4b
    rrca                                          ; $70a7: $0f
    ld [hl], c                                    ; $70a8: $71
    ld [de], a                                    ; $70a9: $12
    dec a                                         ; $70aa: $3d
    inc b                                         ; $70ab: $04
    ld [$00c0], sp                                ; $70ac: $08 $c0 $00
    nop                                           ; $70af: $00
    ld [$01f0], sp                                ; $70b0: $08 $f0 $01
    ld a, [$fa11]                                 ; $70b3: $fa $11 $fa
    ld d, b                                       ; $70b6: $50
    nop                                           ; $70b7: $00
    ei                                            ; $70b8: $fb
    ld sp, hl                                     ; $70b9: $f9
    pop af                                        ; $70ba: $f1
    di                                            ; $70bb: $f3
    pop af                                        ; $70bc: $f1
    ld [hl], d                                    ; $70bd: $72
    pop hl                                        ; $70be: $e1
    ld b, e                                       ; $70bf: $43
    jr nz, jr_0c8_7122                            ; $70c0: $20 $60

    cpl                                           ; $70c2: $2f
    ld e, l                                       ; $70c3: $5d
    inc [hl]                                      ; $70c4: $34
    cp $81                                        ; $70c5: $fe $81
    db $dd                                        ; $70c7: $dd
    db $e3                                        ; $70c8: $e3
    ld h, e                                       ; $70c9: $63
    nop                                           ; $70ca: $00
    rst $38                                       ; $70cb: $ff
    ld e, $3f                                     ; $70cc: $1e $3f
    push bc                                       ; $70ce: $c5
    ld b, e                                       ; $70cf: $43

jr_0c8_70d0:
    ld c, e                                       ; $70d0: $4b
    rst $00                                       ; $70d1: $c7
    ld e, a                                       ; $70d2: $5f
    jr jr_0c8_70a4                                ; $70d3: $18 $cf

    rst $18                                       ; $70d5: $df
    sbc a                                         ; $70d6: $9f
    ldh a, [rP1]                                  ; $70d7: $f0 $00
    ld h, b                                       ; $70d9: $60
    dec b                                         ; $70da: $05
    rrca                                          ; $70db: $0f
    rrca                                          ; $70dc: $0f
    ld hl, sp+$20                                 ; $70dd: $f8 $20
    rst $38                                       ; $70df: $ff
    adc a                                         ; $70e0: $8f
    ldh a, [$50]                                  ; $70e1: $f0 $50
    ld hl, $12f2                                  ; $70e3: $21 $f2 $12
    pop hl                                        ; $70e6: $e1
    add sp, $31                                   ; $70e7: $e8 $31
    pop af                                        ; $70e9: $f1
    ld a, a                                       ; $70ea: $7f
    inc sp                                        ; $70eb: $33
    ld b, $b5                                     ; $70ec: $06 $b5
    rra                                           ; $70ee: $1f
    inc l                                         ; $70ef: $2c
    ldh a, [$f8]                                  ; $70f0: $f0 $f8
    db $eb                                        ; $70f2: $eb
    dec b                                         ; $70f3: $05
    db $10                                        ; $70f4: $10
    ld a, e                                       ; $70f5: $7b
    rst $38                                       ; $70f6: $ff
    ei                                            ; $70f7: $fb
    and $15                                       ; $70f8: $e6 $15
    rst $38                                       ; $70fa: $ff
    cp $32                                        ; $70fb: $fe $32
    ld bc, $8000                                  ; $70fd: $01 $00 $80
    rlca                                          ; $7100: $07
    ld d, h                                       ; $7101: $54
    adc b                                         ; $7102: $88
    call nz, $d790                                ; $7103: $c4 $90 $d7
    and b                                         ; $7106: $a0
    nop                                           ; $7107: $00
    ld e, a                                       ; $7108: $5f
    and b                                         ; $7109: $a0
    sbc c                                         ; $710a: $99
    ld h, [hl]                                    ; $710b: $66
    ld e, d                                       ; $710c: $5a
    xor l                                         ; $710d: $ad
    rra                                           ; $710e: $1f
    cp a                                          ; $710f: $bf
    nop                                           ; $7110: $00
    ld a, a                                       ; $7111: $7f
    sbc a                                         ; $7112: $9f
    sbc a                                         ; $7113: $9f
    ld e, a                                       ; $7114: $5f
    adc a                                         ; $7115: $8f
    ld e, a                                       ; $7116: $5f
    ld b, a                                       ; $7117: $47
    adc a                                         ; $7118: $8f
    jr jr_0c8_7167                                ; $7119: $18 $4c

    add e                                         ; $711b: $83
    jr jr_0c8_70d0                                ; $711c: $18 $b2

    inc bc                                        ; $711e: $03
    adc [hl]                                      ; $711f: $8e
    daa                                           ; $7120: $27
    rst $38                                       ; $7121: $ff

jr_0c8_7122:
    ret                                           ; $7122: $c9


    ldh a, [rP1]                                  ; $7123: $f0 $00
    ld [hl], d                                    ; $7125: $72
    add b                                         ; $7126: $80
    push bc                                       ; $7127: $c5
    jr c, @+$04                                   ; $7128: $38 $02

    db $fc                                        ; $712a: $fc
    ld hl, sp-$04                                 ; $712b: $f8 $fc
    nop                                           ; $712d: $00
    jp hl                                         ; $712e: $e9


    ldh a, [rDIV]                                 ; $712f: $f0 $04
    jp Jump_000_0a95                              ; $7131: $c3 $95 $0a


    ld b, d                                       ; $7134: $42
    jr nc, jr_0c8_7137                            ; $7135: $30 $00

jr_0c8_7137:
    and a                                         ; $7137: $a7
    ld b, b                                       ; $7138: $40
    xor a                                         ; $7139: $af
    ld b, b                                       ; $713a: $40
    ccf                                           ; $713b: $3f
    ret nz                                        ; $713c: $c0

    sub d                                         ; $713d: $92
    rrca                                          ; $713e: $0f
    nop                                           ; $713f: $00
    inc a                                         ; $7140: $3c
    ret nz                                        ; $7141: $c0

    inc b                                         ; $7142: $04
    ld hl, sp+$08                                 ; $7143: $f8 $08
    ld b, $04                                     ; $7145: $06 $04
    ld [bc], a                                    ; $7147: $02
    nop                                           ; $7148: $00
    push hl                                       ; $7149: $e5
    ld [bc], a                                    ; $714a: $02
    ldh a, [rTMA]                                 ; $714b: $f0 $06
    ld hl, sp+$04                                 ; $714d: $f8 $04
    ld c, h                                       ; $714f: $4c
    inc sp                                        ; $7150: $33
    nop                                           ; $7151: $00
    dec a                                         ; $7152: $3d
    ld b, d                                       ; $7153: $42
    ld h, c                                       ; $7154: $61
    sbc $41                                       ; $7155: $de $41
    rst $38                                       ; $7157: $ff
    bit 7, a                                      ; $7158: $cb $7f
    nop                                           ; $715a: $00
    ld l, a                                       ; $715b: $6f
    ld a, [hl]                                    ; $715c: $7e
    ld a, a                                       ; $715d: $7f
    inc a                                         ; $715e: $3c
    dec e                                         ; $715f: $1d
    jr c, jr_0c8_71a2                             ; $7160: $38 $40

    add a                                         ; $7162: $87
    ld bc, $ef4f                                  ; $7163: $01 $4f $ef
    ld a, c                                       ; $7166: $79

jr_0c8_7167:
    rst $18                                       ; $7167: $df
    sub c                                         ; $7168: $91
    rst $38                                       ; $7169: $ff
    cpl                                           ; $716a: $2f
    inc e                                         ; $716b: $1c
    inc b                                         ; $716c: $04
    adc d                                         ; $716d: $8a
    db $db                                        ; $716e: $db
    rrca                                          ; $716f: $0f
    ldh [$81], a                                  ; $7170: $e0 $81
    ldh [$c2], a                                  ; $7172: $e0 $c2
    ld b, $ef                                     ; $7174: $06 $ef
    ld a, a                                       ; $7176: $7f
    ld de, $00fd                                  ; $7177: $11 $fd $00
    cp $fe                                        ; $717a: $fe $fe
    db $fd                                        ; $717c: $fd
    sub b                                         ; $717d: $90
    dec c                                         ; $717e: $0d
    ld hl, $521e                                  ; $717f: $21 $1e $52
    nop                                           ; $7182: $00
    ld hl, $4112                                  ; $7183: $21 $12 $41
    sbc l                                         ; $7186: $9d
    ld b, d                                       ; $7187: $42
    ld a, l                                       ; $7188: $7d
    add d                                         ; $7189: $82
    ld [hl], d                                    ; $718a: $72
    jr @-$71                                      ; $718b: $18 $8d

    xor l                                         ; $718d: $ad
    ld e, d                                       ; $718e: $5a
    rst $38                                       ; $718f: $ff
    rrca                                          ; $7190: $0f
    inc sp                                        ; $7191: $33
    inc bc                                        ; $7192: $03
    ld a, a                                       ; $7193: $7f
    cpl                                           ; $7194: $2f
    rra                                           ; $7195: $1f
    inc b                                         ; $7196: $04
    sbc c                                         ; $7197: $99
    ld b, $31                                     ; $7198: $06 $31
    ret nz                                        ; $719a: $c0

    add b                                         ; $719b: $80
    call z, $fd15                                 ; $719c: $cc $15 $fd
    cp $00                                        ; $719f: $fe $00
    ld a, [c]                                     ; $71a1: $f2

jr_0c8_71a2:
    db $fc                                        ; $71a2: $fc
    and l                                         ; $71a3: $a5
    ret nz                                        ; $71a4: $c0

    push hl                                       ; $71a5: $e5
    nop                                           ; $71a6: $00
    adc e                                         ; $71a7: $8b
    ld [hl], b                                    ; $71a8: $70
    nop                                           ; $71a9: $00
    dec b                                         ; $71aa: $05
    ld hl, sp-$40                                 ; $71ab: $f8 $c0
    ldh [rSB], a                                  ; $71ad: $e0 $01
    add $10                                       ; $71af: $c6 $10
    rrca                                          ; $71b1: $0f
    ld bc, $6814                                  ; $71b2: $01 $14 $68
    inc l                                         ; $71b5: $2c
    ret nz                                        ; $71b6: $c0

    ld c, a                                       ; $71b7: $4f
    add b                                         ; $71b8: $80
    ld e, a                                       ; $71b9: $5f
    inc d                                         ; $71ba: $14
    dec b                                         ; $71bb: $05
    nop                                           ; $71bc: $00
    sub b                                         ; $71bd: $90
    ld a, c                                       ; $71be: $79
    and b                                         ; $71bf: $a0
    ld b, e                                       ; $71c0: $43
    ld de, $23e3                                  ; $71c1: $11 $e3 $23
    add hl, de                                    ; $71c4: $19
    nop                                           ; $71c5: $00
    dec d                                         ; $71c6: $15
    add hl, bc                                    ; $71c7: $09
    ret nz                                        ; $71c8: $c0

    dec c                                         ; $71c9: $0d
    ldh [$0c], a                                  ; $71ca: $e0 $0c
    db $fc                                        ; $71cc: $fc
    nop                                           ; $71cd: $00
    nop                                           ; $71ce: $00
    ld h, e                                       ; $71cf: $63
    sbc h                                         ; $71d0: $9c
    ld [c], a                                     ; $71d1: $e2
    rra                                           ; $71d2: $1f
    add a                                         ; $71d3: $87
    ld a, e                                       ; $71d4: $7b
    ld b, $ff                                     ; $71d5: $06 $ff
    nop                                           ; $71d7: $00
    and l                                         ; $71d8: $a5
    cp $ee                                        ; $71d9: $fe $ee
    db $fd                                        ; $71db: $fd
    rst $38                                       ; $71dc: $ff
    ld a, c                                       ; $71dd: $79
    ld [hl], e                                    ; $71de: $73
    add hl, sp                                    ; $71df: $39
    nop                                           ; $71e0: $00
    daa                                           ; $71e1: $27
    inc e                                         ; $71e2: $1c
    cp a                                          ; $71e3: $bf
    ld a, a                                       ; $71e4: $7f
    rst $20                                       ; $71e5: $e7
    ld a, a                                       ; $71e6: $7f
    ld b, a                                       ; $71e7: $47
    rst $38                                       ; $71e8: $ff
    ld h, b                                       ; $71e9: $60
    cp a                                          ; $71ea: $bf
    ld [bc], a                                    ; $71eb: $02
    nop                                           ; $71ec: $00
    db $fc                                        ; $71ed: $fc
    rrca                                          ; $71ee: $0f
    ld b, $08                                     ; $71ef: $06 $08
    ld de, $f0e0                                  ; $71f1: $11 $e0 $f0
    db $10                                        ; $71f4: $10
    ld sp, hl                                     ; $71f5: $f9
    cp h                                          ; $71f6: $bc
    ld sp, hl                                     ; $71f7: $f9
    ld a, l                                       ; $71f8: $7d
    nop                                           ; $71f9: $00
    db $fd                                        ; $71fa: $fd
    ld a, [$fdfd]                                 ; $71fb: $fa $fd $fd
    nop                                           ; $71fe: $00
    ld a, [$679f]                                 ; $71ff: $fa $9f $67
    ld c, e                                       ; $7202: $4b
    or a                                          ; $7203: $b7
    ld b, a                                       ; $7204: $47
    adc c                                         ; $7205: $89
    ret z                                         ; $7206: $c8

    nop                                           ; $7207: $00
    dec b                                         ; $7208: $05
    cp b                                          ; $7209: $b8
    inc b                                         ; $720a: $04
    or $08                                        ; $720b: $f6 $08
    db $e4                                        ; $720d: $e4
    dec de                                        ; $720e: $1b
    ld e, e                                       ; $720f: $5b
    ld b, b                                       ; $7210: $40
    or h                                          ; $7211: $b4
    ret nz                                        ; $7212: $c0

    cpl                                           ; $7213: $2f
    ld a, $7f                                     ; $7214: $3e $7f
    inc sp                                        ; $7216: $33
    inc c                                         ; $7217: $0c
    ld h, e                                       ; $7218: $63
    add b                                         ; $7219: $80
    add b                                         ; $721a: $80
    add b                                         ; $721b: $80
    ld [$fefc], sp                                ; $721c: $08 $fc $fe
    db $f4                                        ; $721f: $f4
    ld hl, sp-$40                                 ; $7220: $f8 $c0
    ld sp, hl                                     ; $7222: $f9
    ret z                                         ; $7223: $c8

    nop                                           ; $7224: $00
    inc bc                                        ; $7225: $03
    push de                                       ; $7226: $d5
    ld [bc], a                                    ; $7227: $02
    ld d, $e1                                     ; $7228: $16 $e1
    ld a, [bc]                                    ; $722a: $0a
    pop af                                        ; $722b: $f1
    ldh [rDIV], a                                 ; $722c: $e0 $04
    inc e                                         ; $722e: $1c
    inc b                                         ; $722f: $04
    nop                                           ; $7230: $00
    di                                            ; $7231: $f3
    inc c                                         ; $7232: $0c
    ld l, a                                       ; $7233: $6f
    sbc b                                         ; $7234: $98
    ld d, a                                       ; $7235: $57
    ld hl, sp+$5f                                 ; $7236: $f8 $5f
    and b                                         ; $7238: $a0
    jr nz, @+$01                                  ; $7239: $20 $ff

    nop                                           ; $723b: $00
    ld [bc], a                                    ; $723c: $02
    sbc b                                         ; $723d: $98
    db $ed                                        ; $723e: $ed
    ccf                                           ; $723f: $3f
    and $18                                       ; $7240: $e6 $18
    push af                                       ; $7242: $f5
    nop                                           ; $7243: $00
    ld [$1ce3], sp                                ; $7244: $08 $e3 $1c
    ld hl, sp+$0f                                 ; $7247: $f8 $0f
    or $0f                                        ; $7249: $f6 $0f
    db $fd                                        ; $724b: $fd
    nop                                           ; $724c: $00
    ld [bc], a                                    ; $724d: $02
    rst $38                                       ; $724e: $ff
    nop                                           ; $724f: $00
    add e                                         ; $7250: $83
    db $fc                                        ; $7251: $fc
    call Call_0c8_5502                            ; $7252: $cd $02 $55
    nop                                           ; $7255: $00
    ld [bc], a                                    ; $7256: $02
    db $fc                                        ; $7257: $fc
    inc bc                                        ; $7258: $03
    ld e, e                                       ; $7259: $5b
    and [hl]                                      ; $725a: $a6
    push de                                       ; $725b: $d5
    cp $57                                        ; $725c: $fe $57
    nop                                           ; $725e: $00
    xor b                                         ; $725f: $a8
    rst $38                                       ; $7260: $ff
    nop                                           ; $7261: $00
    db $eb                                        ; $7262: $eb
    ld d, $fc                                     ; $7263: $16 $fc
    inc bc                                        ; $7265: $03
    cp $00                                        ; $7266: $fe $00
    inc bc                                        ; $7268: $03
    pop bc                                        ; $7269: $c1
    ccf                                           ; $726a: $3f
    and d                                         ; $726b: $a2
    ld b, b                                       ; $726c: $40
    sbc l                                         ; $726d: $9d
    ld h, b                                       ; $726e: $60
    adc d                                         ; $726f: $8a
    nop                                           ; $7270: $00
    ld [hl], l                                    ; $7271: $75
    rst $10                                       ; $7272: $d7
    ccf                                           ; $7273: $3f
    add $01                                       ; $7274: $c6 $01
    cp $01                                        ; $7276: $fe $01
    dec bc                                        ; $7278: $0b
    nop                                           ; $7279: $00
    push af                                       ; $727a: $f5
    xor e                                         ; $727b: $ab
    rst $38                                       ; $727c: $ff
    db $ec                                        ; $727d: $ec
    db $10                                        ; $727e: $10
    ld l, a                                       ; $727f: $6f
    db $10                                        ; $7280: $10
    sub l                                         ; $7281: $95
    nop                                           ; $7282: $00
    ld a, d                                       ; $7283: $7a
    cp d                                          ; $7284: $ba
    rst $38                                       ; $7285: $ff
    rst $00                                       ; $7286: $c7
    nop                                           ; $7287: $00
    ld a, a                                       ; $7288: $7f
    add b                                         ; $7289: $80
    ld a, [hl+]                                   ; $728a: $2a
    nop                                           ; $728b: $00
    push de                                       ; $728c: $d5
    cp d                                          ; $728d: $ba
    rst $38                                       ; $728e: $ff
    swap h                                        ; $728f: $cb $34
    sbc a                                         ; $7291: $9f
    ld h, b                                       ; $7292: $60
    ccf                                           ; $7293: $3f
    nop                                           ; $7294: $00
    ldh [$df], a                                  ; $7295: $e0 $df
    ldh [$8b], a                                  ; $7297: $e0 $8b
    ld a, h                                       ; $7299: $7c
    scf                                           ; $729a: $37
    ld hl, sp+$3f                                 ; $729b: $f8 $3f
    db $10                                        ; $729d: $10
    ret nz                                        ; $729e: $c0

    ld a, a                                       ; $729f: $7f
    add b                                         ; $72a0: $80
    ld [hl], b                                    ; $72a1: $70
    jr z, @-$0a                                   ; $72a2: $28 $f4

    dec bc                                        ; $72a4: $0b
    ld a, [$0005]                                 ; $72a5: $fa $05 $00
    xor $11                                       ; $72a8: $ee $11
    cp $01                                        ; $72aa: $fe $01
    db $f4                                        ; $72ac: $f4
    dec bc                                        ; $72ad: $0b
    xor $11                                       ; $72ae: $ee $11
    nop                                           ; $72b0: $00
    db $fc                                        ; $72b1: $fc
    inc bc                                        ; $72b2: $03
    ld a, [$7a05]                                 ; $72b3: $fa $05 $7a
    rst $38                                       ; $72b6: $ff
    or l                                          ; $72b7: $b5
    rst $08                                       ; $72b8: $cf
    nop                                           ; $72b9: $00
    cp d                                          ; $72ba: $ba
    rst $00                                       ; $72bb: $c7
    sub a                                         ; $72bc: $97
    db $eb                                        ; $72bd: $eb
    xor d                                         ; $72be: $aa
    rst $10                                       ; $72bf: $d7
    push de                                       ; $72c0: $d5
    cp $00                                        ; $72c1: $fe $00
    ld a, d                                       ; $72c3: $7a
    rst $38                                       ; $72c4: $ff
    ld e, l                                       ; $72c5: $5d
    cp $29                                        ; $72c6: $fe $29
    ld [hl], e                                    ; $72c8: $73
    ld l, c                                       ; $72c9: $69
    push af                                       ; $72ca: $f5
    nop                                           ; $72cb: $00
    pop af                                        ; $72cc: $f1
    ld sp, hl                                     ; $72cd: $f9
    ld l, e                                       ; $72ce: $6b
    sbc a                                         ; $72cf: $9f
    rst $30                                       ; $72d0: $f7
    rrca                                          ; $72d1: $0f
    rst $10                                       ; $72d2: $d7
    rlca                                          ; $72d3: $07
    inc b                                         ; $72d4: $04
    and a                                         ; $72d5: $a7
    rlca                                          ; $72d6: $07
    ld b, a                                       ; $72d7: $47
    adc a                                         ; $72d8: $8f
    rst $38                                       ; $72d9: $ff
    ld bc, $0068                                  ; $72da: $01 $68 $00
    rst $18                                       ; $72dd: $df
    nop                                           ; $72de: $00
    jr nz, jr_0c8_735e                            ; $72df: $20 $7d

    add d                                         ; $72e1: $82
    db $eb                                        ; $72e2: $eb
    inc d                                         ; $72e3: $14
    rst $38                                       ; $72e4: $ff
    nop                                           ; $72e5: $00
    xor e                                         ; $72e6: $ab
    db $10                                        ; $72e7: $10
    ld d, h                                       ; $72e8: $54
    ld [hl], l                                    ; $72e9: $75
    adc d                                         ; $72ea: $8a
    ld [$ff08], sp                                ; $72eb: $08 $08 $ff
    nop                                           ; $72ee: $00
    cp $01                                        ; $72ef: $fe $01
    nop                                           ; $72f1: $00
    rst $28                                       ; $72f2: $ef
    db $10                                        ; $72f3: $10
    cp e                                          ; $72f4: $bb
    ld b, h                                       ; $72f5: $44
    ld [hl], a                                    ; $72f6: $77
    adc b                                         ; $72f7: $88
    ei                                            ; $72f8: $fb
    inc b                                         ; $72f9: $04
    nop                                           ; $72fa: $00
    sub $29                                       ; $72fb: $d6 $29
    rst $38                                       ; $72fd: $ff
    nop                                           ; $72fe: $00
    rst $30                                       ; $72ff: $f7
    ld [$10ef], sp                                ; $7300: $08 $ef $10
    nop                                           ; $7303: $00
    rst $38                                       ; $7304: $ff
    nop                                           ; $7305: $00
    cp a                                          ; $7306: $bf
    ld b, b                                       ; $7307: $40
    ld a, e                                       ; $7308: $7b
    add h                                         ; $7309: $84
    or a                                          ; $730a: $b7
    ld c, b                                       ; $730b: $48
    jr nz, jr_0c8_737d                            ; $730c: $20 $6f

    sub b                                         ; $730e: $90
    add sp, $18                                   ; $730f: $e8 $18
    xor $11                                       ; $7311: $ee $11
    db $dd                                        ; $7313: $dd
    ld [hl+], a                                   ; $7314: $22
    ld a, [$0501]                                 ; $7315: $fa $01 $05
    cp l                                          ; $7318: $bd
    ld b, d                                       ; $7319: $42
    ld l, c                                       ; $731a: $69
    sub [hl]                                      ; $731b: $96
    ld [$2015], a                                 ; $731c: $ea $15 $20
    ld e, b                                       ; $731f: $58
    inc h                                         ; $7320: $24
    xor d                                         ; $7321: $aa
    ld d, l                                       ; $7322: $55
    jr nz, jr_0c8_737d                            ; $7323: $20 $58

    cp a                                          ; $7325: $bf
    ld b, b                                       ; $7326: $40
    ld h, b                                       ; $7327: $60
    ld e, b                                       ; $7328: $58
    db $fc                                        ; $7329: $fc
    inc bc                                        ; $732a: $03
    nop                                           ; $732b: $00
    sbc $21                                       ; $732c: $de $21
    ld a, h                                       ; $732e: $7c
    add e                                         ; $732f: $83
    ld [$fc15], a                                 ; $7330: $ea $15 $fc
    inc bc                                        ; $7333: $03
    nop                                           ; $7334: $00
    xor d                                         ; $7335: $aa
    ld d, l                                       ; $7336: $55
    ld [hl], l                                    ; $7337: $75
    adc e                                         ; $7338: $8b
    ld [$b415], a                                 ; $7339: $ea $15 $b4
    rst $08                                       ; $733c: $cf
    nop                                           ; $733d: $00
    cp $87                                        ; $733e: $fe $87
    xor e                                         ; $7340: $ab
    rst $10                                       ; $7341: $d7
    sub a                                         ; $7342: $97
    db $eb                                        ; $7343: $eb
    and d                                         ; $7344: $a2
    rst $38                                       ; $7345: $ff
    nop                                           ; $7346: $00
    rst $10                                       ; $7347: $d7
    rst $38                                       ; $7348: $ff
    ld a, l                                       ; $7349: $7d
    rst $38                                       ; $734a: $ff
    ld c, d                                       ; $734b: $4a
    push af                                       ; $734c: $f5
    xor a                                         ; $734d: $af
    rra                                           ; $734e: $1f
    nop                                           ; $734f: $00
    sub e                                         ; $7350: $93
    rst $38                                       ; $7351: $ff
    jp hl                                         ; $7352: $e9


    pop af                                        ; $7353: $f1
    ld [hl], l                                    ; $7354: $75
    add c                                         ; $7355: $81
    xor c                                         ; $7356: $a9
    ld d, c                                       ; $7357: $51
    db $10                                        ; $7358: $10
    ld b, l                                       ; $7359: $45
    di                                            ; $735a: $f3
    xor e                                         ; $735b: $ab
    xor l                                         ; $735c: $ad
    nop                                           ; $735d: $00

jr_0c8_735e:
    ld d, l                                       ; $735e: $55
    xor d                                         ; $735f: $aa
    and e                                         ; $7360: $a3
    ld a, h                                       ; $7361: $7c
    nop                                           ; $7362: $00
    dec d                                         ; $7363: $15
    ld [$d4ab], a                                 ; $7364: $ea $ab $d4
    dec d                                         ; $7367: $15
    db $eb                                        ; $7368: $eb
    and b                                         ; $7369: $a0
    ld a, a                                       ; $736a: $7f
    nop                                           ; $736b: $00
    ld [hl], l                                    ; $736c: $75
    cp $ea                                        ; $736d: $fe $ea
    rst $38                                       ; $736f: $ff
    cp h                                          ; $7370: $bc
    ld b, e                                       ; $7371: $43
    ld l, c                                       ; $7372: $69
    sub [hl]                                      ; $7373: $96
    nop                                           ; $7374: $00
    jp nc, Jump_000_292d                          ; $7375: $d2 $2d $29

    rst $18                                       ; $7378: $df
    ld d, d                                       ; $7379: $52
    cp a                                          ; $737a: $bf
    adc b                                         ; $737b: $88
    ld a, a                                       ; $737c: $7f

jr_0c8_737d:
    nop                                           ; $737d: $00
    ld d, l                                       ; $737e: $55
    rst $38                                       ; $737f: $ff
    xor [hl]                                      ; $7380: $ae
    rst $38                                       ; $7381: $ff
    push af                                       ; $7382: $f5
    ld a, [bc]                                    ; $7383: $0a
    ld e, e                                       ; $7384: $5b
    and h                                         ; $7385: $a4
    nop                                           ; $7386: $00
    or l                                          ; $7387: $b5
    ld c, d                                       ; $7388: $4a
    ld c, e                                       ; $7389: $4b
    or h                                          ; $738a: $b4
    ld de, $aaee                                  ; $738b: $11 $ee $aa
    rst $18                                       ; $738e: $df
    nop                                           ; $738f: $00
    inc d                                         ; $7390: $14
    rst $38                                       ; $7391: $ff
    cp d                                          ; $7392: $ba
    rst $38                                       ; $7393: $ff
    db $d3                                        ; $7394: $d3
    inc l                                         ; $7395: $2c
    ld c, [hl]                                    ; $7396: $4e
    cp c                                          ; $7397: $b9
    nop                                           ; $7398: $00
    dec d                                         ; $7399: $15
    ld a, [$f748]                                 ; $739a: $fa $48 $f7
    and l                                         ; $739d: $a5
    rst $18                                       ; $739e: $df
    jr z, @+$01                                   ; $739f: $28 $ff

    nop                                           ; $73a1: $00
    ld e, h                                       ; $73a2: $5c
    rst $38                                       ; $73a3: $ff
    ld [$55ff], a                                 ; $73a4: $ea $ff $55
    xor e                                         ; $73a7: $ab
    and d                                         ; $73a8: $a2
    ld a, l                                       ; $73a9: $7d
    ld [$eb15], sp                                ; $73aa: $08 $15 $eb
    xor d                                         ; $73ad: $aa
    push de                                       ; $73ae: $d5
    ld b, b                                       ; $73af: $40
    db $10                                        ; $73b0: $10
    rst $38                                       ; $73b1: $ff
    db $eb                                        ; $73b2: $eb
    rst $38                                       ; $73b3: $ff
    inc b                                         ; $73b4: $04
    sbc a                                         ; $73b5: $9f
    ldh [$aa], a                                  ; $73b6: $e0 $aa
    push de                                       ; $73b8: $d5
    pop bc                                        ; $73b9: $c1
    jr jr_0c8_73bc                                ; $73ba: $18 $00

jr_0c8_73bc:
    rst $38                                       ; $73bc: $ff
    rst $38                                       ; $73bd: $ff
    nop                                           ; $73be: $00
    call nc, $abef                                ; $73bf: $d4 $ef $ab
    rst $10                                       ; $73c2: $d7
    push bc                                       ; $73c3: $c5
    cp $5b                                        ; $73c4: $fe $5b
    rst $20                                       ; $73c6: $e7
    inc b                                         ; $73c7: $04
    ld l, l                                       ; $73c8: $6d
    pop de                                        ; $73c9: $d1
    ld b, c                                       ; $73ca: $41
    ei                                            ; $73cb: $fb
    db $eb                                        ; $73cc: $eb
    rla                                           ; $73cd: $17
    ld bc, $e75b                                  ; $73ce: $01 $5b $e7
    ld [$fff2], sp                                ; $73d1: $08 $f2 $ff
    ld c, l                                       ; $73d4: $4d
    cp [hl]                                       ; $73d5: $be
    jr nz, jr_0c8_73e1                            ; $73d6: $20 $09

    cp $fe                                        ; $73d8: $fe $fe
    xor l                                         ; $73da: $ad
    nop                                           ; $73db: $00
    xor l                                         ; $73dc: $ad
    rst $38                                       ; $73dd: $ff
    rst $38                                       ; $73de: $ff
    ld [hl], b                                    ; $73df: $70
    ld sp, hl                                     ; $73e0: $f9

jr_0c8_73e1:
    dec h                                         ; $73e1: $25
    ld [hl], b                                    ; $73e2: $70
    xor d                                         ; $73e3: $aa
    nop                                           ; $73e4: $00
    ld [hl], l                                    ; $73e5: $75
    push de                                       ; $73e6: $d5
    ld a, [$f52a]                                 ; $73e7: $fa $2a $f5
    ld [hl], $fb                                  ; $73ea: $36 $fb
    reti                                          ; $73ec: $d9


    nop                                           ; $73ed: $00
    ld h, a                                       ; $73ee: $67

jr_0c8_73ef:
    db $d3                                        ; $73ef: $d3
    cp a                                          ; $73f0: $bf
    adc h                                         ; $73f1: $8c
    ld a, h                                       ; $73f2: $7c
    ld [hl], c                                    ; $73f3: $71
    db $f4                                        ; $73f4: $f4
    ld c, c                                       ; $73f5: $49
    nop                                           ; $73f6: $00
    nop                                           ; $73f7: $00
    inc [hl]                                      ; $73f8: $34
    rst $18                                       ; $73f9: $df
    rst $00                                       ; $73fa: $c7
    cp a                                          ; $73fb: $bf
    jr c, jr_0c8_73ef                             ; $73fc: $38 $f1

    db $eb                                        ; $73fe: $eb
    nop                                           ; $73ff: $00
    call nz, $9865                                ; $7400: $c4 $65 $98
    or h                                          ; $7403: $b4
    jp Jump_0c8_645a                              ; $7404: $c3 $5a $64


    sub e                                         ; $7407: $93
    nop                                           ; $7408: $00
    rra                                           ; $7409: $1f
    push af                                       ; $740a: $f5
    jp z, Jump_000_04cb                           ; $740b: $ca $cb $04

    and h                                         ; $740e: $a4
    ld c, b                                       ; $740f: $48
    ld c, [hl]                                    ; $7410: $4e
    nop                                           ; $7411: $00
    sub c                                         ; $7412: $91
    cp e                                          ; $7413: $bb
    ld b, a                                       ; $7414: $47
    ld l, h                                       ; $7415: $6c
    dec e                                         ; $7416: $1d
    or b                                          ; $7417: $b0
    ld [hl], d                                    ; $7418: $72
    db $f4                                        ; $7419: $f4
    nop                                           ; $741a: $00
    ld hl, $442f                                  ; $741b: $21 $2f $44
    ld e, e                                       ; $741e: $5b
    add a                                         ; $741f: $87
    cp d                                          ; $7420: $ba
    ld [hl], c                                    ; $7421: $71
    ret nz                                        ; $7422: $c0

    nop                                           ; $7423: $00
    jp nc, $2488                                  ; $7424: $d2 $88 $24

    ld d, e                                       ; $7427: $53
    nop                                           ; $7428: $00
    adc b                                         ; $7429: $88
    ld [hl+], a                                   ; $742a: $22
    ld b, l                                       ; $742b: $45
    nop                                           ; $742c: $00
    inc de                                        ; $742d: $13
    db $e4                                        ; $742e: $e4
    jp z, Jump_000_2448                           ; $742f: $ca $48 $24

    inc c                                         ; $7432: $0c
    ld d, d                                       ; $7433: $52
    ld h, c                                       ; $7434: $61
    nop                                           ; $7435: $00
    inc c                                         ; $7436: $0c
    add l                                         ; $7437: $85
    inc hl                                        ; $7438: $23
    rla                                           ; $7439: $17
    ld c, h                                       ; $743a: $4c
    ld e, [hl]                                    ; $743b: $5e
    ld sp, $006b                                  ; $743c: $31 $6b $00
    sub b                                         ; $743f: $90
    ld h, h                                       ; $7440: $64
    rlca                                          ; $7441: $07
    add a                                         ; $7442: $87
    inc hl                                        ; $7443: $23
    ld d, c                                       ; $7444: $51
    ld a, $7b                                     ; $7445: $3e $7b
    nop                                           ; $7447: $00
    call $27cc                                    ; $7448: $cd $cc $27
    or [hl]                                       ; $744b: $b6
    inc bc                                        ; $744c: $03
    xor e                                         ; $744d: $ab
    dec d                                         ; $744e: $15
    ld e, e                                       ; $744f: $5b
    nop                                           ; $7450: $00
    and a                                         ; $7451: $a7
    pop bc                                        ; $7452: $c1
    rst $38                                       ; $7453: $ff
    inc e                                         ; $7454: $1c
    ei                                            ; $7455: $fb
    add l                                         ; $7456: $85
    rst $38                                       ; $7457: $ff
    jr z, jr_0c8_745a                             ; $7458: $28 $00

jr_0c8_745a:
    rst $18                                       ; $745a: $df
    ld d, e                                       ; $745b: $53
    rst $38                                       ; $745c: $ff
    adc a                                         ; $745d: $8f
    ld a, h                                       ; $745e: $7c
    dec a                                         ; $745f: $3d
    ldh a, [$e5]                                  ; $7460: $f0 $e5
    nop                                           ; $7462: $00
    jr jr_0c8_74c9                                ; $7463: $18 $64

    rst $38                                       ; $7465: $ff
    sub e                                         ; $7466: $93
    rst $28                                       ; $7467: $ef
    ld sp, $d6ff                                  ; $7468: $31 $ff $d6
    nop                                           ; $746b: $00
    ld sp, hl                                     ; $746c: $f9
    ld a, [hl+]                                   ; $746d: $2a
    rst $10                                       ; $746e: $d7
    adc d                                         ; $746f: $8a
    db $fd                                        ; $7470: $fd
    adc $73                                       ; $7471: $ce $73
    cp e                                          ; $7473: $bb
    ld d, b                                       ; $7474: $50
    ld e, a                                       ; $7475: $5f
    add b                                         ; $7476: $80
    jr c, @-$71                                   ; $7477: $38 $8d

    add b                                         ; $7479: $80
    db $10                                        ; $747a: $10
    ld a, [$95ff]                                 ; $747b: $fa $ff $95
    db $eb                                        ; $747e: $eb
    ld de, $d5ab                                  ; $747f: $11 $ab $d5
    jp nz, $01c7                                  ; $7482: $c2 $c7 $01

    xor d                                         ; $7485: $aa
    rst $38                                       ; $7486: $ff
    push de                                       ; $7487: $d5
    call Call_000_0001                            ; $7488: $cd $01 $00
    sbc d                                         ; $748b: $9a
    ld a, a                                       ; $748c: $7f
    push hl                                       ; $748d: $e5
    rst $38                                       ; $748e: $ff
    cpl                                           ; $748f: $2f
    rst $10                                       ; $7490: $d7
    ld d, d                                       ; $7491: $52
    xor a                                         ; $7492: $af
    and c                                         ; $7493: $a1
    db $10                                        ; $7494: $10
    ld [$d657], sp                                ; $7495: $08 $57 $d6
    ld [$583b], sp                                ; $7498: $08 $3b $58
    cp a                                          ; $749b: $bf
    daa                                           ; $749c: $27
    ld c, b                                       ; $749d: $48
    ld bc, $ff10                                  ; $749e: $01 $10 $ff
    rst $38                                       ; $74a1: $ff
    ld l, d                                       ; $74a2: $6a
    jr nz, jr_0c8_74b5                            ; $74a3: $20 $10

    db $10                                        ; $74a5: $10
    ld [hl+], a                                   ; $74a6: $22
    ld h, $88                                     ; $74a7: $26 $88
    nop                                           ; $74a9: $00
    and c                                         ; $74aa: $a1
    db $10                                        ; $74ab: $10
    dec b                                         ; $74ac: $05
    inc hl                                        ; $74ad: $23
    ld e, d                                       ; $74ae: $5a
    ld sp, $c877                                  ; $74af: $31 $77 $c8
    inc b                                         ; $74b2: $04
    ld l, l                                       ; $74b3: $6d
    sub b                                         ; $74b4: $90

jr_0c8_74b5:
    sub [hl]                                      ; $74b5: $96
    pop hl                                        ; $74b6: $e1
    rra                                           ; $74b7: $1f
    add [hl]                                      ; $74b8: $86
    nop                                           ; $74b9: $00
    ld a, c                                       ; $74ba: $79
    add $00                                       ; $74bb: $c6 $00
    call $ab30                                    ; $74bd: $cd $30 $ab
    db $10                                        ; $74c0: $10
    sub [hl]                                      ; $74c1: $96
    ld h, c                                       ; $74c2: $61
    ld e, e                                       ; $74c3: $5b
    add a                                         ; $74c4: $87
    nop                                           ; $74c5: $00
    xor a                                         ; $74c6: $af
    inc e                                         ; $74c7: $1c
    cp c                                          ; $74c8: $b9

jr_0c8_74c9:
    ld d, d                                       ; $74c9: $52
    cp h                                          ; $74ca: $bc
    ld [$245f], sp                                ; $74cb: $08 $5f $24
    nop                                           ; $74ce: $00
    ei                                            ; $74cf: $fb
    rlca                                          ; $74d0: $07
    cp c                                          ; $74d1: $b9
    halt                                          ; $74d2: $76
    or $c9                                        ; $74d3: $f6 $c9
    push de                                       ; $74d5: $d5
    ld [bc], a                                    ; $74d6: $02
    nop                                           ; $74d7: $00
    ld d, d                                       ; $74d8: $52
    xor l                                         ; $74d9: $ad
    rla                                           ; $74da: $17
    ld c, h                                       ; $74db: $4c
    ld e, h                                       ; $74dc: $5c
    ld sp, $cc73                                  ; $74dd: $31 $73 $cc
    nop                                           ; $74e0: $00
    and h                                         ; $74e1: $a4
    ld [de], a                                    ; $74e2: $12
    or l                                          ; $74e3: $b5
    ld [$215a], sp                                ; $74e4: $08 $5a $21
    ld l, e                                       ; $74e7: $6b
    sub a                                         ; $74e8: $97
    nop                                           ; $74e9: $00
    adc h                                         ; $74ea: $8c
    ccf                                           ; $74eb: $3f
    or l                                          ; $74ec: $b5
    jp nz, Jump_0c8_64db                          ; $74ed: $c2 $db $64

    ld l, d                                       ; $74f0: $6a
    ld sp, $b300                                  ; $74f1: $31 $00 $b3
    ld e, a                                       ; $74f4: $5f
    or a                                          ; $74f5: $b7
    ld a, b                                       ; $74f6: $78
    jp z, Jump_000_25fc                           ; $74f7: $ca $fc $25

    sbc $00                                       ; $74fa: $de $00
    xor d                                         ; $74fc: $aa
    rst $30                                       ; $74fd: $f7
    ld l, $5c                                     ; $74fe: $2e $5c
    ld a, [hl-]                                   ; $7500: $3a
    pop af                                        ; $7501: $f1
    ld sp, hl                                     ; $7502: $f9
    add $00                                       ; $7503: $c6 $00
    sub $29                                       ; $7505: $d6 $29
    sub a                                         ; $7507: $97
    ld [$31ca], sp                                ; $7508: $08 $ca $31
    xor e                                         ; $750b: $ab
    ld b, a                                       ; $750c: $47

jr_0c8_750d:
    nop                                           ; $750d: $00
    xor $1c                                       ; $750e: $ee $1c
    ld d, d                                       ; $7510: $52
    ld hl, $449b                                  ; $7511: $21 $9b $44
    ld h, [hl]                                    ; $7514: $66
    sbc c                                         ; $7515: $99
    nop                                           ; $7516: $00
    ld e, e                                       ; $7517: $5b
    daa                                           ; $7518: $27
    jr nc, jr_0c8_750d                            ; $7519: $30 $f2

    ret                                           ; $751b: $c9


    ret nz                                        ; $751c: $c0

    inc b                                         ; $751d: $04
    ld sp, $2800                                  ; $751e: $31 $00 $28
    ld b, h                                       ; $7521: $44
    xor $1c                                       ; $7522: $ee $1c
    or b                                          ; $7524: $b0
    ld [hl], d                                    ; $7525: $72
    jp hl                                         ; $7526: $e9


    call nz, Call_000_3200                        ; $7527: $c4 $00 $32
    jr nz, jr_0c8_7558                            ; $752a: $20 $2c

    adc c                                         ; $752c: $89
    ld b, a                                       ; $752d: $47
    inc d                                         ; $752e: $14
    rlca                                          ; $752f: $07
    inc hl                                        ; $7530: $23
    ld [de], a                                    ; $7531: $12
    sub h                                         ; $7532: $94
    rrca                                          ; $7533: $0f
    ld de, $6080                                  ; $7534: $11 $80 $60
    inc c                                         ; $7537: $0c
    rst $38                                       ; $7538: $ff
    add b                                         ; $7539: $80
    ld e, b                                       ; $753a: $58
    db $10                                        ; $753b: $10
    ld c, b                                       ; $753c: $48
    rst $38                                       ; $753d: $ff
    add b                                         ; $753e: $80
    ld e, b                                       ; $753f: $58
    inc b                                         ; $7540: $04
    rst $38                                       ; $7541: $ff
    add b                                         ; $7542: $80
    ld e, b                                       ; $7543: $58
    ld e, d                                       ; $7544: $5a
    db $e4                                        ; $7545: $e4
    ld d, e                                       ; $7546: $53
    nop                                           ; $7547: $00
    cp a                                          ; $7548: $bf
    sbc a                                         ; $7549: $9f
    ld a, h                                       ; $754a: $7c
    ld a, [hl-]                                   ; $754b: $3a
    pop af                                        ; $754c: $f1
    rst $20                                       ; $754d: $e7
    ret c                                         ; $754e: $d8

    jp c, Jump_000_2400                           ; $754f: $da $00 $24

    sub d                                         ; $7552: $92
    inc h                                         ; $7553: $24
    ld [hl], $c9                                  ; $7554: $36 $c9
    or l                                          ; $7556: $b5
    ld a, d                                       ; $7557: $7a

jr_0c8_7558:
    sub l                                         ; $7558: $95
    ld [bc], a                                    ; $7559: $02
    ld l, [hl]                                    ; $755a: $6e
    ld c, [hl]                                    ; $755b: $4e
    sub e                                         ; $755c: $93
    or e                                          ; $755d: $b3
    add hl, bc                                    ; $755e: $09
    ld d, $be                                     ; $755f: $16 $be
    nop                                           ; $7561: $00
    cp e                                          ; $7562: $bb
    nop                                           ; $7563: $00
    ld [hl], b                                    ; $7564: $70
    push af                                       ; $7565: $f5
    ret z                                         ; $7566: $c8

    ld l, c                                       ; $7567: $69
    ld [de], a                                    ; $7568: $12
    ld c, e                                       ; $7569: $4b
    and a                                         ; $756a: $a7
    db $ec                                        ; $756b: $ec
    nop                                           ; $756c: $00
    rra                                           ; $756d: $1f
    ld a, $f3                                     ; $756e: $3e $f3
    rst $30                                       ; $7570: $f7
    ret                                           ; $7571: $c9


    sub l                                         ; $7572: $95
    ld h, b                                       ; $7573: $60
    ld c, l                                       ; $7574: $4d
    nop                                           ; $7575: $00
    sub b                                         ; $7576: $90
    or [hl]                                       ; $7577: $b6
    add hl, bc                                    ; $7578: $09
    or c                                          ; $7579: $b1
    ld a, a                                       ; $757a: $7f
    add hl, de                                    ; $757b: $19
    or $a2                                        ; $757c: $f6 $a2
    nop                                           ; $757e: $00
    rst $38                                       ; $757f: $ff
    ld d, l                                       ; $7580: $55
    xor a                                         ; $7581: $af
    ld a, [hl+]                                   ; $7582: $2a
    db $dd                                        ; $7583: $dd
    xor e                                         ; $7584: $ab
    rst $30                                       ; $7585: $f7
    cp c                                          ; $7586: $b9
    nop                                           ; $7587: $00
    ld [hl], b                                    ; $7588: $70
    db $e4                                        ; $7589: $e4
    pop bc                                        ; $758a: $c1
    ld e, c                                       ; $758b: $59
    rst $28                                       ; $758c: $ef
    ld c, e                                       ; $758d: $4b
    rst $30                                       ; $758e: $f7
    xor [hl]                                      ; $758f: $ae
    nop                                           ; $7590: $00
    call c, $f936                                 ; $7591: $dc $36 $f9
    set 1, h                                      ; $7594: $cb $cc
    dec d                                         ; $7596: $15
    ld h, $ad                                     ; $7597: $26 $ad
    nop                                           ; $7599: $00
    ld bc, $1049                                  ; $759a: $01 $49 $10
    ccf                                           ; $759d: $3f
    ld a, [c]                                     ; $759e: $f2
    db $ed                                        ; $759f: $ed
    db $10                                        ; $75a0: $10
    sub d                                         ; $75a1: $92
    nop                                           ; $75a2: $00
    ld c, c                                       ; $75a3: $49
    xor b                                         ; $75a4: $a8
    ld d, $52                                     ; $75a5: $16 $52
    add hl, hl                                    ; $75a7: $29
    dec hl                                        ; $75a8: $2b
    rst $10                                       ; $75a9: $d7
    inc a                                         ; $75aa: $3c
    nop                                           ; $75ab: $00
    di                                            ; $75ac: $f3
    or $c9                                        ; $75ad: $f6 $c9
    inc d                                         ; $75af: $14
    ld [$83c5], sp                                ; $75b0: $08 $c5 $83
    push af                                       ; $75b3: $f5
    nop                                           ; $75b4: $00
    ld c, a                                       ; $75b5: $4f
    or b                                          ; $75b6: $b0
    ld a, a                                       ; $75b7: $7f
    push bc                                       ; $75b8: $c5
    cp $e6                                        ; $75b9: $fe $e6
    dec sp                                        ; $75bb: $3b
    cp c                                          ; $75bc: $b9
    nop                                           ; $75bd: $00
    ld c, a                                       ; $75be: $4f
    call z, Call_0c8_5227                         ; $75bf: $cc $27 $52
    ccf                                           ; $75c2: $3f
    ld [de], a                                    ; $75c3: $12
    rst $38                                       ; $75c4: $ff
    ld c, c                                       ; $75c5: $49
    nop                                           ; $75c6: $00
    or [hl]                                       ; $75c7: $b6
    adc h                                         ; $75c8: $8c
    ld a, e                                       ; $75c9: $7b
    ld d, b                                       ; $75ca: $50
    rst $28                                       ; $75cb: $ef
    and e                                         ; $75cc: $a3
    rst $38                                       ; $75cd: $ff
    ld a, [hl-]                                   ; $75ce: $3a
    nop                                           ; $75cf: $00
    pop af                                        ; $75d0: $f1
    reti                                          ; $75d1: $d9


    db $e4                                        ; $75d2: $e4
    xor e                                         ; $75d3: $ab
    rla                                           ; $75d4: $17
    ld c, a                                       ; $75d5: $4f
    cp h                                          ; $75d6: $bc
    or l                                          ; $75d7: $b5
    ld bc, $9d7a                                  ; $75d8: $01 $7a $9d
    ld b, [hl]                                    ; $75db: $46
    ld h, [hl]                                    ; $75dc: $66
    sub e                                         ; $75dd: $93
    sub e                                         ; $75de: $93
    dec l                                         ; $75df: $2d
    and $09                                       ; $75e0: $e6 $09
    ld bc, $01ea                                  ; $75e2: $01 $ea $01
    dec hl                                        ; $75e5: $2b
    call nc, Call_000_08b5                        ; $75e6: $d4 $b5 $08
    sbc e                                         ; $75e9: $9b
    ld a, [$0000]                                 ; $75ea: $fa $00 $00
    add hl, sp                                    ; $75ed: $39
    ldh a, [$cc]                                  ; $75ee: $f0 $cc
    pop bc                                        ; $75f0: $c1
    or c                                          ; $75f1: $b1
    inc b                                         ; $75f2: $04
    adc e                                         ; $75f3: $8b
    ld b, a                                       ; $75f4: $47
    nop                                           ; $75f5: $00
    ld l, [hl]                                    ; $75f6: $6e
    sbc h                                         ; $75f7: $9c
    or c                                          ; $75f8: $b1
    ld [hl], b                                    ; $75f9: $70
    inc b                                         ; $75fa: $04
    ld hl, $902b                                  ; $75fb: $21 $2b $90
    nop                                           ; $75fe: $00
    db $10                                        ; $75ff: $10
    ld h, [hl]                                    ; $7600: $66
    xor c                                         ; $7601: $a9
    nop                                           ; $7602: $00
    ld b, l                                       ; $7603: $45
    inc de                                        ; $7604: $13
    add hl, bc                                    ; $7605: $09
    ld d, d                                       ; $7606: $52
    nop                                           ; $7607: $00
    ld [hl-], a                                   ; $7608: $32
    add b                                         ; $7609: $80
    ld b, c                                       ; $760a: $41
    ld a, [de]                                    ; $760b: $1a
    push bc                                       ; $760c: $c5
    inc de                                        ; $760d: $13
    inc d                                         ; $760e: $14
    ld c, a                                       ; $760f: $4f
    nop                                           ; $7610: $00
    ld d, c                                       ; $7611: $51
    ld a, $4c                                     ; $7612: $3e $4c
    di                                            ; $7614: $f3
    ld [hl], $ef                                  ; $7615: $36 $ef
    dec h                                         ; $7617: $25
    add e                                         ; $7618: $83
    nop                                           ; $7619: $00
    rla                                           ; $761a: $17
    ld c, h                                       ; $761b: $4c
    ld d, [hl]                                    ; $761c: $56
    add hl, sp                                    ; $761d: $39
    ld d, l                                       ; $761e: $55
    xor [hl]                                      ; $761f: $ae
    jp z, $007f                                   ; $7620: $ca $7f $00

    add hl, hl                                    ; $7623: $29
    rst $10                                       ; $7624: $d7
    sub h                                         ; $7625: $94
    ei                                            ; $7626: $fb
    swap a                                        ; $7627: $cb $37
    or e                                          ; $7629: $b3
    inc c                                         ; $762a: $0c
    nop                                           ; $762b: $00
    ld a, [bc]                                    ; $762c: $0a
    pop de                                        ; $762d: $d1
    or l                                          ; $762e: $b5
    ld [bc], a                                    ; $762f: $02
    adc e                                         ; $7630: $8b
    ld d, a                                       ; $7631: $57
    rst $28                                       ; $7632: $ef
    inc e                                         ; $7633: $1c
    nop                                           ; $7634: $00
    ld a, [hl-]                                   ; $7635: $3a
    pop af                                        ; $7636: $f1
    add sp, -$3a                                  ; $7637: $e8 $c6
    push hl                                       ; $7639: $e5
    jr jr_0c8_7697                                ; $763a: $18 $5b

    add a                                         ; $763c: $87
    nop                                           ; $763d: $00
    xor [hl]                                      ; $763e: $ae
    inc e                                         ; $763f: $1c
    cp d                                          ; $7640: $ba
    ld [hl], l                                    ; $7641: $75
    or [hl]                                       ; $7642: $b6
    ld c, b                                       ; $7643: $48
    xor l                                         ; $7644: $ad
    ld [de], a                                    ; $7645: $12
    ld [$4cb2], sp                                ; $7646: $08 $b2 $4c
    sub $21                                       ; $7649: $d6 $21
    ld d, d                                       ; $764b: $52
    ld bc, $b530                                  ; $764c: $01 $30 $b5
    ld e, d                                       ; $764f: $5a
    nop                                           ; $7650: $00
    ld e, e                                       ; $7651: $5b
    adc h                                         ; $7652: $8c
    cp e                                          ; $7653: $bb
    ld b, a                                       ; $7654: $47
    ld l, a                                       ; $7655: $6f
    sbc h                                         ; $7656: $9c
    cp h                                          ; $7657: $bc
    ld [hl], e                                    ; $7658: $73
    nop                                           ; $7659: $00
    ei                                            ; $765a: $fb
    ret nz                                        ; $765b: $c0

    jp nz, $b135                                  ; $765c: $c2 $35 $b1

    ld [hl], h                                    ; $765f: $74
    call z, Call_000_00c1                         ; $7660: $cc $c1 $00
    or e                                          ; $7663: $b3
    ld [$104c], sp                                ; $7664: $08 $4c $10
    db $10                                        ; $7667: $10
    ld h, $d5                                     ; $7668: $26 $d5
    add e                                         ; $766a: $83
    nop                                           ; $766b: $00
    ld [hl], h                                    ; $766c: $74
    rst $08                                       ; $766d: $cf
    ld [hl-], a                                   ; $766e: $32
    db $fd                                        ; $766f: $fd
    xor b                                         ; $7670: $a8
    ld [bc], a                                    ; $7671: $02
    ld de, $0088                                  ; $7672: $11 $88 $00
    ld b, l                                       ; $7675: $45
    inc hl                                        ; $7676: $23
    sub [hl]                                      ; $7677: $96
    ld c, h                                       ; $7678: $4c
    ld e, c                                       ; $7679: $59
    ld [hl], $2a                                  ; $767a: $36 $2a
    push af                                       ; $767c: $f5
    nop                                           ; $767d: $00
    ld [hl], l                                    ; $767e: $75
    ret c                                         ; $767f: $d8

    jp z, Jump_0c8_5ebc                           ; $7680: $ca $bc $5e

    inc sp                                        ; $7683: $33
    ld [hl], e                                    ; $7684: $73
    call $ab00                                    ; $7685: $cd $00 $ab
    db $10                                        ; $7688: $10
    sub h                                         ; $7689: $94
    ld h, d                                       ; $768a: $62
    ld d, c                                       ; $768b: $51
    adc h                                         ; $768c: $8c
    sbc e                                         ; $768d: $9b
    daa                                           ; $768e: $27
    nop                                           ; $768f: $00
    ld l, [hl]                                    ; $7690: $6e
    sbc h                                         ; $7691: $9c
    cp [hl]                                       ; $7692: $be
    ld [hl], c                                    ; $7693: $71
    sbc e                                         ; $7694: $9b
    rst $20                                       ; $7695: $e7
    ld c, d                                       ; $7696: $4a

jr_0c8_7697:
    cp l                                          ; $7697: $bd
    nop                                           ; $7698: $00
    xor e                                         ; $7699: $ab
    rst $30                                       ; $769a: $f7
    call z, $b37c                                 ; $769b: $cc $7c $b3
    ld [hl], b                                    ; $769e: $70
    db $f4                                        ; $769f: $f4
    ld hl, $9900                                  ; $76a0: $21 $00 $99
    ld [hl], d                                    ; $76a3: $72
    inc a                                         ; $76a4: $3c
    adc c                                         ; $76a5: $89
    dec [hl]                                      ; $76a6: $35
    ld a, [$cccb]                                 ; $76a7: $fa $cb $cc
    nop                                           ; $76aa: $00
    dec [hl]                                      ; $76ab: $35
    ld b, $82                                     ; $76ac: $06 $82
    inc sp                                        ; $76ae: $33
    dec bc                                        ; $76af: $0b
    ld b, c                                       ; $76b0: $41
    rst $00                                       ; $76b1: $c7
    inc de                                        ; $76b2: $13
    nop                                           ; $76b3: $00
    sbc l                                         ; $76b4: $9d
    inc c                                         ; $76b5: $0c
    ld a, d                                       ; $76b6: $7a
    jr nc, @-$55                                  ; $76b7: $30 $a9

    ld b, [hl]                                    ; $76b9: $46
    ld d, [hl]                                    ; $76ba: $56
    xor c                                         ; $76bb: $a9
    nop                                           ; $76bc: $00
    sbc e                                         ; $76bd: $9b
    daa                                           ; $76be: $27
    xor $1c                                       ; $76bf: $ee $1c
    dec sp                                        ; $76c1: $3b
    ldh a, [$2b]                                  ; $76c2: $f0 $2b
    inc [hl]                                      ; $76c4: $34
    nop                                           ; $76c5: $00
    ld d, [hl]                                    ; $76c6: $56
    add hl, de                                    ; $76c7: $19
    adc e                                         ; $76c8: $8b
    inc l                                         ; $76c9: $2c
    cp [hl]                                       ; $76ca: $be
    ld [hl], e                                    ; $76cb: $73
    rst $30                                       ; $76cc: $f7
    ret                                           ; $76cd: $c9


    nop                                           ; $76ce: $00
    call $aa32                                    ; $76cf: $cd $32 $aa
    ld b, b                                       ; $76d2: $40
    ld d, l                                       ; $76d3: $55
    ld a, [hl+]                                   ; $76d4: $2a
    ld e, e                                       ; $76d5: $5b
    add a                                         ; $76d6: $87
    nop                                           ; $76d7: $00
    xor l                                         ; $76d8: $ad
    ld e, $b2                                     ; $76d9: $1e $b2
    ld a, l                                       ; $76db: $7d
    push de                                       ; $76dc: $d5
    nop                                           ; $76dd: $00
    ld h, [hl]                                    ; $76de: $66
    sbc c                                         ; $76df: $99
    nop                                           ; $76e0: $00
    cp e                                          ; $76e1: $bb
    rst $00                                       ; $76e2: $c7
    adc $7c                                       ; $76e3: $ce $7c
    or e                                          ; $76e5: $b3
    ld a, [hl]                                    ; $76e6: $7e
    dec [hl]                                      ; $76e7: $35
    jp c, $0e00                                   ; $76e8: $da $00 $0e

    db $fd                                        ; $76eb: $fd
    or c                                          ; $76ec: $b1
    rst $18                                       ; $76ed: $df
    nop                                           ; $76ee: $00
    ld b, $c7                                     ; $76ef: $06 $c7
    inc bc                                        ; $76f1: $03
    nop                                           ; $76f2: $00
    inc de                                        ; $76f3: $13
    pop hl                                        ; $76f4: $e1
    add $23                                       ; $76f5: $c6 $23
    dec c                                         ; $76f7: $0d
    add $3f                                       ; $76f8: $c6 $3f
    add hl, bc                                    ; $76fa: $09
    nop                                           ; $76fb: $00
    db $dd                                        ; $76fc: $dd
    inc sp                                        ; $76fd: $33
    or $c3                                        ; $76fe: $f6 $c3
    res 0, d                                      ; $7700: $cb $82
    add a                                         ; $7702: $87
    add d                                         ; $7703: $82
    nop                                           ; $7704: $00
    jp hl                                         ; $7705: $e9


    sbc h                                         ; $7706: $9c
    ld hl, sp-$7a                                 ; $7707: $f8 $86
    db $f4                                        ; $7709: $f4
    adc h                                         ; $770a: $8c
    ld a, $dc                                     ; $770b: $3e $dc
    nop                                           ; $770d: $00
    ld a, [c]                                     ; $770e: $f2
    ld a, $d1                                     ; $770f: $3e $d1
    ccf                                           ; $7711: $3f
    or b                                          ; $7712: $b0
    ld a, a                                       ; $7713: $7f
    ld h, b                                       ; $7714: $60
    rst $38                                       ; $7715: $ff
    ld a, [bc]                                    ; $7716: $0a
    nop                                           ; $7717: $00
    xor a                                         ; $7718: $af
    add b                                         ; $7719: $80
    xor a                                         ; $771a: $af
    inc b                                         ; $771b: $04
    ld d, b                                       ; $771c: $50
    rst $38                                       ; $771d: $ff
    ld [bc], a                                    ; $771e: $02
    ld e, b                                       ; $771f: $58
    ld a, [bc]                                    ; $7720: $0a
    db $10                                        ; $7721: $10
    ld a, [$fa1a]                                 ; $7722: $fa $1a $fa
    inc b                                         ; $7725: $04
    ld c, b                                       ; $7726: $48
    cp a                                          ; $7727: $bf
    rrca                                          ; $7728: $0f
    ld e, a                                       ; $7729: $5f
    ld bc, $ab00                                  ; $772a: $01 $00 $ab
    ld bc, $01ff                                  ; $772d: $01 $ff $01
    rst $38                                       ; $7730: $ff
    ld a, [bc]                                    ; $7731: $0a
    rst $38                                       ; $7732: $ff
    ld d, a                                       ; $7733: $57
    nop                                           ; $7734: $00
    rst $38                                       ; $7735: $ff
    xor a                                         ; $7736: $af
    rst $38                                       ; $7737: $ff
    cp $21                                        ; $7738: $fe $21
    ld hl, $2131                                  ; $773a: $21 $31 $21
    nop                                           ; $773d: $00
    inc de                                        ; $773e: $13
    ld de, $13bf                                  ; $773f: $11 $bf $13
    rst $38                                       ; $7742: $ff
    rst $38                                       ; $7743: $ff
    rst $38                                       ; $7744: $ff
    xor e                                         ; $7745: $ab
    nop                                           ; $7746: $00
    rst $38                                       ; $7747: $ff
    ld b, e                                       ; $7748: $43
    rst $38                                       ; $7749: $ff
    add e                                         ; $774a: $83
    db $fc                                        ; $774b: $fc
    rst $38                                       ; $774c: $ff
    db $ec                                        ; $774d: $ec
    rst $38                                       ; $774e: $ff
    ld bc, $fff4                                  ; $774f: $01 $f4 $ff
    xor $ff                                       ; $7752: $ee $ff
    or $ff                                        ; $7754: $f6 $ff
    ld a, [$0004]                                 ; $7756: $fa $04 $00
    ld [$fffe], sp                                ; $7759: $08 $fe $ff
    ld b, b                                       ; $775c: $40
    ld e, a                                       ; $775d: $5f
    ld [bc], a                                    ; $775e: $02
    ld e, b                                       ; $775f: $58

jr_0c8_7760:
    jr nc, @-$09                                  ; $7760: $30 $f5

    ld de, $f540                                  ; $7762: $11 $40 $f5
    inc b                                         ; $7765: $04
    ld c, b                                       ; $7766: $48
    xor h                                         ; $7767: $ac
    rst $30                                       ; $7768: $f7
    rst $10                                       ; $7769: $d7
    db $ec                                        ; $776a: $ec
    xor e                                         ; $776b: $ab
    call c, $5b00                                 ; $776c: $dc $00 $5b
    xor h                                         ; $776f: $ac
    xor l                                         ; $7770: $ad
    ld e, e                                       ; $7771: $5b
    ld d, a                                       ; $7772: $57
    cp b                                          ; $7773: $b8
    or a                                          ; $7774: $b7
    ld e, b                                       ; $7775: $58
    nop                                           ; $7776: $00
    ld e, a                                       ; $7777: $5f
    or e                                          ; $7778: $b3
    ld l, a                                       ; $7779: $6f
    sub d                                         ; $777a: $92
    or l                                          ; $777b: $b5
    jp z, Jump_0c8_65db                           ; $777c: $ca $db $65

    nop                                           ; $777f: $00
    or $19                                        ; $7780: $f6 $19
    ld [hl], e                                    ; $7782: $73
    adc h                                         ; $7783: $8c
    call c, $e767                                 ; $7784: $dc $67 $e7
    add hl, de                                    ; $7787: $19
    nop                                           ; $7788: $00
    ccf                                           ; $7789: $3f
    pop bc                                        ; $778a: $c1
    xor b                                         ; $778b: $a8
    ld d, h                                       ; $778c: $54
    add sp, $54                                   ; $778d: $e8 $54
    and b                                         ; $778f: $a0
    ld e, b                                       ; $7790: $58

jr_0c8_7791:
    nop                                           ; $7791: $00
    sub b                                         ; $7792: $90
    ld l, b                                       ; $7793: $68
    ret nc                                        ; $7794: $d0

    ldh a, [$a0]                                  ; $7795: $f0 $a0
    ret nc                                        ; $7797: $d0

    ld h, b                                       ; $7798: $60
    add b                                         ; $7799: $80
    nop                                           ; $779a: $00
    ret nz                                        ; $779b: $c0

    jr nz, jr_0c8_77a6                            ; $779c: $20 $08

    xor [hl]                                      ; $779e: $ae
    jr jr_0c8_77fd                                ; $779f: $18 $5c

    jr c, jr_0c8_7760                             ; $77a1: $38 $bd

    nop                                           ; $77a3: $00
    ld l, c                                       ; $77a4: $69
    ld a, e                                       ; $77a5: $7b

jr_0c8_77a6:
    ret                                           ; $77a6: $c9


    ei                                            ; $77a7: $fb
    adc c                                         ; $77a8: $89
    db $db                                        ; $77a9: $db
    add hl, de                                    ; $77aa: $19
    cp e                                          ; $77ab: $bb
    nop                                           ; $77ac: $00
    dec a                                         ; $77ad: $3d
    ccf                                           ; $77ae: $3f
    ld a, [hl-]                                   ; $77af: $3a
    ccf                                           ; $77b0: $3f
    rst $38                                       ; $77b1: $ff
    add c                                         ; $77b2: $81
    cp l                                          ; $77b3: $bd
    jp $df00                                      ; $77b4: $c3 $00 $df


    rst $38                                       ; $77b7: $ff
    pop bc                                        ; $77b8: $c1
    push hl                                       ; $77b9: $e5
    add b                                         ; $77ba: $80
    rst $30                                       ; $77bb: $f7
    add b                                         ; $77bc: $80
    jp nc, $c02d                                  ; $77bd: $d2 $2d $c0

    ld [$00c0], a                                 ; $77c0: $ea $c0 $00
    nop                                           ; $77c3: $00
    inc b                                         ; $77c4: $04
    jr nz, jr_0c8_7791                            ; $77c5: $20 $ca

    nop                                           ; $77c7: $00
    db $10                                        ; $77c8: $10
    adc $08                                       ; $77c9: $ce $08
    and b                                         ; $77cb: $a0
    db $10                                        ; $77cc: $10
    ld b, b                                       ; $77cd: $40

jr_0c8_77ce:
    inc b                                         ; $77ce: $04
    ldh a, [rP1]                                  ; $77cf: $f0 $00
    nop                                           ; $77d1: $00
    cpl                                           ; $77d2: $2f
    nop                                           ; $77d3: $00
    rst $28                                       ; $77d4: $ef
    nop                                           ; $77d5: $00
    ld l, b                                       ; $77d6: $68
    rrca                                          ; $77d7: $0f
    add sp, $68                                   ; $77d8: $e8 $68
    ld hl, sp+$18                                 ; $77da: $f8 $18
    jr nz, jr_0c8_77ce                            ; $77dc: $20 $f0

    nop                                           ; $77de: $00
    inc bc                                        ; $77df: $03
    ei                                            ; $77e0: $fb
    nop                                           ; $77e1: $00
    ld d, l                                       ; $77e2: $55
    db $fc                                        ; $77e3: $fc
    ld b, $29                                     ; $77e4: $06 $29
    ld [bc], a                                    ; $77e6: $02
    ld c, [hl]                                    ; $77e7: $4e
    nop                                           ; $77e8: $00
    rst $38                                       ; $77e9: $ff
    ld d, d                                       ; $77ea: $52
    nop                                           ; $77eb: $00
    inc bc                                        ; $77ec: $03
    ld [de], a                                    ; $77ed: $12
    jr nz, jr_0c8_7859                            ; $77ee: $20 $69

    jr nz, jr_0c8_7802                            ; $77f0: $20 $10

    jr nz, @+$62                                  ; $77f2: $20 $60

    jr z, jr_0c8_77fe                             ; $77f4: $28 $08

    jr nz, jr_0c8_7818                            ; $77f6: $20 $20

    ret nz                                        ; $77f8: $c0

    ccf                                           ; $77f9: $3f
    ld [hl], b                                    ; $77fa: $70
    jr z, jr_0c8_7804                             ; $77fb: $28 $07

jr_0c8_77fd:
    ld b, b                                       ; $77fd: $40

jr_0c8_77fe:
    ld e, a                                       ; $77fe: $5f
    ret nz                                        ; $77ff: $c0

    rst $18                                       ; $7800: $df
    nop                                           ; $7801: $00

jr_0c8_7802:
    ld c, $20                                     ; $7802: $0e $20

jr_0c8_7804:
    ld [hl], b                                    ; $7804: $70
    db $10                                        ; $7805: $10
    ld d, b                                       ; $7806: $50
    ld d, c                                       ; $7807: $51
    nop                                           ; $7808: $00
    ld [$30ff], sp                                ; $7809: $08 $ff $30
    push af                                       ; $780c: $f5
    db $10                                        ; $780d: $10
    db $f4                                        ; $780e: $f4
    nop                                           ; $780f: $00
    rst $30                                       ; $7810: $f7
    jr z, jr_0c8_7813                             ; $7811: $28 $00

jr_0c8_7813:
    ldh a, [rSVBK]                                ; $7813: $f0 $70
    jr z, jr_0c8_7838                             ; $7815: $28 $21

    ld c, c                                       ; $7817: $49

jr_0c8_7818:
    ld bc, $ff14                                  ; $7818: $01 $14 $ff
    ld l, d                                       ; $781b: $6a
    ld a, [bc]                                    ; $781c: $0a
    rst $38                                       ; $781d: $ff
    push de                                       ; $781e: $d5
    rst $38                                       ; $781f: $ff
    db $fc                                        ; $7820: $fc
    ld b, e                                       ; $7821: $43
    ld bc, $52ff                                  ; $7822: $01 $ff $52
    nop                                           ; $7825: $00
    ld b, c                                       ; $7826: $41
    nop                                           ; $7827: $00
    rst $38                                       ; $7828: $ff
    sub h                                         ; $7829: $94
    rst $38                                       ; $782a: $ff
    ld c, l                                       ; $782b: $4d
    rst $38                                       ; $782c: $ff
    ld a, [hl-]                                   ; $782d: $3a
    rst $38                                       ; $782e: $ff
    ld [hl], a                                    ; $782f: $77
    and b                                         ; $7830: $a0
    db $10                                        ; $7831: $10
    db $10                                        ; $7832: $10
    ld [bc], a                                    ; $7833: $02
    ld e, $00                                     ; $7834: $1e $00
    and b                                         ; $7836: $a0
    rst $38                                       ; $7837: $ff

jr_0c8_7838:
    ld c, e                                       ; $7838: $4b
    rst $38                                       ; $7839: $ff
    ld d, $28                                     ; $783a: $16 $28
    rst $38                                       ; $783c: $ff
    db $ed                                        ; $783d: $ed
    jr nz, jr_0c8_7850                            ; $783e: $20 $10

    ld b, d                                       ; $7840: $42
    ld l, $00                                     ; $7841: $2e $00
    adc b                                         ; $7843: $88
    rst $38                                       ; $7844: $ff
    ld [hl-], a                                   ; $7845: $32
    jr nc, @+$01                                  ; $7846: $30 $ff

    ld [hl], l                                    ; $7848: $75
    ld h, b                                       ; $7849: $60
    ld bc, $0831                                  ; $784a: $01 $31 $08
    ld b, h                                       ; $784d: $44
    rst $38                                       ; $784e: $ff
    sub c                                         ; $784f: $91

jr_0c8_7850:
    rst $38                                       ; $7850: $ff
    ld d, h                                       ; $7851: $54
    ld [hl+], a                                   ; $7852: $22
    jr nc, jr_0c8_7855                            ; $7853: $30 $00

jr_0c8_7855:
    or [hl]                                       ; $7855: $b6
    jr nz, jr_0c8_7878                            ; $7856: $20 $20

    ld b, h                                       ; $7858: $44

jr_0c8_7859:
    sbc e                                         ; $7859: $9b

jr_0c8_785a:
    ld bc, $ff92                                  ; $785a: $01 $92 $ff
    inc b                                         ; $785d: $04
    dec l                                         ; $785e: $2d
    rst $38                                       ; $785f: $ff
    ld a, d                                       ; $7860: $7a
    rst $38                                       ; $7861: $ff
    push af                                       ; $7862: $f5
    ld d, b                                       ; $7863: $50
    db $10                                        ; $7864: $10
    rla                                           ; $7865: $17
    add sp, $00                                   ; $7866: $e8 $00
    ld l, e                                       ; $7868: $6b
    inc d                                         ; $7869: $14
    rst $10                                       ; $786a: $d7
    jr c, @+$2f                                   ; $786b: $38 $2d

    ld a, [c]                                     ; $786d: $f2
    ld l, e                                       ; $786e: $6b
    sub h                                         ; $786f: $94
    ld [bc], a                                    ; $7870: $02
    or a                                          ; $7871: $b7
    ld c, b                                       ; $7872: $48
    ld e, a                                       ; $7873: $5f
    and b                                         ; $7874: $a0
    cp $01                                        ; $7875: $fe $01
    rst $18                                       ; $7877: $df

jr_0c8_7878:
    add hl, hl                                    ; $7878: $29
    rst $30                                       ; $7879: $f7
    nop                                           ; $787a: $00
    ld [$14eb], sp                                ; $787b: $08 $eb $14
    rst $18                                       ; $787e: $df

jr_0c8_787f:
    jr nz, jr_0c8_787f                            ; $787f: $20 $fe

    ld bc, $00b5                                  ; $7881: $01 $b5 $00
    ld hl, sp-$4d                                 ; $7884: $f8 $b3
    ld c, h                                       ; $7886: $4c
    sub $2f                                       ; $7887: $d6 $2f
    xor d                                         ; $7889: $aa
    ld d, l                                       ; $788a: $55
    rst $30                                       ; $788b: $f7
    jr nz, jr_0c8_7896                            ; $788c: $20 $08

    ei                                            ; $788e: $fb
    xor l                                         ; $788f: $ad
    db $10                                        ; $7890: $10
    ld l, l                                       ; $7891: $6d
    ld [de], a                                    ; $7892: $12
    sbc a                                         ; $7893: $9f
    ld h, b                                       ; $7894: $60
    xor a                                         ; $7895: $af

jr_0c8_7896:
    inc b                                         ; $7896: $04
    ret nc                                        ; $7897: $d0

    rst $18                                       ; $7898: $df
    jr nz, jr_0c8_785a                            ; $7899: $20 $bf

    ld b, b                                       ; $789b: $40

jr_0c8_789c:
    add hl, bc                                    ; $789c: $09
    ld a, [de]                                    ; $789d: $1a
    db $fd                                        ; $789e: $fd
    ld [bc], a                                    ; $789f: $02
    ld bc, $04fb                                  ; $78a0: $01 $fb $04
    push de                                       ; $78a3: $d5
    ld a, [hl+]                                   ; $78a4: $2a
    cp e                                          ; $78a5: $bb
    ld b, h                                       ; $78a6: $44
    rst $30                                       ; $78a7: $f7
    db $eb                                        ; $78a8: $eb
    nop                                           ; $78a9: $00
    add b                                         ; $78aa: $80
    dec de                                        ; $78ab: $1b
    ld a, [bc]                                    ; $78ac: $0a
    ei                                            ; $78ad: $fb
    inc b                                         ; $78ae: $04
    push af                                       ; $78af: $f5
    ld a, [bc]                                    ; $78b0: $0a
    db $eb                                        ; $78b1: $eb
    inc d                                         ; $78b2: $14
    db $fd                                        ; $78b3: $fd

jr_0c8_78b4:
    ret nz                                        ; $78b4: $c0

    add hl, de                                    ; $78b5: $19
    ld bc, $1830                                  ; $78b6: $01 $30 $18
    ld c, l                                       ; $78b9: $4d
    di                                            ; $78ba: $f3

jr_0c8_78bb:
    jp c, $d43f                                   ; $78bb: $da $3f $d4

    jr nz, jr_0c8_78c0                            ; $78be: $20 $00

jr_0c8_78c0:
    cp d                                          ; $78c0: $ba
    ld b, b                                       ; $78c1: $40
    sbc a                                         ; $78c2: $9f
    ld h, b                                       ; $78c3: $60
    rst $20                                       ; $78c4: $e7
    jr c, jr_0c8_78b4                             ; $78c5: $38 $ed

    rra                                           ; $78c7: $1f
    nop                                           ; $78c8: $00
    cp $01                                        ; $78c9: $fe $01
    jr nc, jr_0c8_789c                            ; $78cb: $30 $cf

    ld d, [hl]                                    ; $78cd: $56
    ld hl, sp+$4d                                 ; $78ce: $f8 $4d
    jr nc, jr_0c8_78d2                            ; $78d0: $30 $00

jr_0c8_78d2:
    and e                                         ; $78d2: $a3
    inc e                                         ; $78d3: $1c
    db $ed                                        ; $78d4: $ed
    rra                                           ; $78d5: $1f
    adc a                                         ; $78d6: $8f

Jump_0c8_78d7:
    ld [hl], b                                    ; $78d7: $70
    rst $10                                       ; $78d8: $d7
    add sp, $02                                   ; $78d9: $e8 $02
    xor [hl]                                      ; $78db: $ae
    ld d, c                                       ; $78dc: $51
    db $fd                                        ; $78dd: $fd
    ld [bc], a                                    ; $78de: $02
    ld a, [$5305]                                 ; $78df: $fa $05 $53
    ld a, [hl+]                                   ; $78e2: $2a
    cp a                                          ; $78e3: $bf
    nop                                           ; $78e4: $00
    ld b, b                                       ; $78e5: $40
    ld a, a                                       ; $78e6: $7f
    add b                                         ; $78e7: $80
    ld a, l                                       ; $78e8: $7d
    add d                                         ; $78e9: $82
    ei                                            ; $78ea: $fb
    inc b                                         ; $78eb: $04
    db $fd                                        ; $78ec: $fd
    ld b, $02                                     ; $78ed: $06 $02
    cp e                                          ; $78ef: $bb
    ld b, h                                       ; $78f0: $44
    ld [hl], a                                    ; $78f1: $77
    adc b                                         ; $78f2: $88
    ld l, c                                       ; $78f3: $69
    ld a, [bc]                                    ; $78f4: $0a
    sub b                                         ; $78f5: $90
    ld [$00f7], sp                                ; $78f6: $08 $f7 $00
    ld [$12ed], sp                                ; $78f9: $08 $ed $12
    ret nc                                        ; $78fc: $d0

    cpl                                           ; $78fd: $2f
    jp hl                                         ; $78fe: $e9


    db $10                                        ; $78ff: $10
    call c, $2004                                 ; $7900: $dc $04 $20
    daa                                           ; $7903: $27
    ld hl, sp+$6b                                 ; $7904: $f8 $6b
    rra                                           ; $7906: $1f
    ld a, a                                       ; $7907: $7f
    ld a, [bc]                                    ; $7908: $0a
    ld e, a                                       ; $7909: $5f
    and b                                         ; $790a: $a0
    nop                                           ; $790b: $00
    xor [hl]                                      ; $790c: $ae
    ld d, c                                       ; $790d: $51
    dec d                                         ; $790e: $15
    ld [$14ab], a                                 ; $790f: $ea $ab $14
    adc l                                         ; $7912: $8d
    ld [hl], d                                    ; $7913: $72
    nop                                           ; $7914: $00
    jp c, $fee5                                   ; $7915: $da $e5 $fe

    ld bc, $04fb                                  ; $7918: $01 $fb $04
    cp $01                                        ; $791b: $fe $01
    add a                                         ; $791d: $87
    ld b, [hl]                                    ; $791e: $46
    ld [$08f7], sp                                ; $791f: $08 $f7 $08
    ld a, a                                       ; $7922: $7f
    add b                                         ; $7923: $80
    inc [hl]                                      ; $7924: $34
    jr jr_0c8_78bb                                ; $7925: $18 $94

    ld [$0858], sp                                ; $7927: $08 $58 $08
    sub b                                         ; $792a: $90
    ld [$fb18], sp                                ; $792b: $08 $18 $fb
    inc b                                         ; $792e: $04
    sbc h                                         ; $792f: $9c
    jr z, @+$01                                   ; $7930: $28 $ff

    nop                                           ; $7932: $00
    ld a, [$3005]                                 ; $7933: $fa $05 $30
    ld e, a                                       ; $7936: $5f
    and b                                         ; $7937: $a0
    cp d                                          ; $7938: $ba
    jr z, @-$42                                   ; $7939: $28 $bc

    jr @+$01                                      ; $793b: $18 $ff

    nop                                           ; $793d: $00
    rst $18                                       ; $793e: $df
    jr nz, jr_0c8_7941                            ; $793f: $20 $00

jr_0c8_7941:
    cp l                                          ; $7941: $bd
    ld b, d                                       ; $7942: $42
    ld e, e                                       ; $7943: $5b
    and h                                         ; $7944: $a4
    or a                                          ; $7945: $b7
    ld c, b                                       ; $7946: $48
    ld a, a                                       ; $7947: $7f
    add b                                         ; $7948: $80
    nop                                           ; $7949: $00
    cp [hl]                                       ; $794a: $be
    ld b, c                                       ; $794b: $41
    ld a, l                                       ; $794c: $7d
    add d                                         ; $794d: $82
    ldh a, [rIF]                                  ; $794e: $f0 $0f
    db $eb                                        ; $7950: $eb
    db $10                                        ; $7951: $10
    ld [$19e6], sp                                ; $7952: $08 $e6 $19
    or $0f                                        ; $7955: $f6 $0f
    jr jr_0c8_7961                                ; $7957: $18 $08

    cp a                                          ; $7959: $bf
    ld b, b                                       ; $795a: $40
    ld e, a                                       ; $795b: $5f
    nop                                           ; $795c: $00
    and b                                         ; $795d: $a0
    push de                                       ; $795e: $d5
    ld [hl+], a                                   ; $795f: $22
    xor b                                         ; $7960: $a8

jr_0c8_7961:
    pop bc                                        ; $7961: $c1
    sbc [hl]                                      ; $7962: $9e
    pop hl                                        ; $7963: $e1
    ld h, l                                       ; $7964: $65
    inc b                                         ; $7965: $04
    ld a, [$5dbe]                                 ; $7966: $fa $be $5d
    push de                                       ; $7969: $d5
    ld a, [hl+]                                   ; $796a: $2a
    ei                                            ; $796b: $fb
    ld a, [bc]                                    ; $796c: $0a
    ld a, a                                       ; $796d: $7f
    add b                                         ; $796e: $80
    ld c, $bf                                     ; $796f: $0e $bf
    ld b, b                                       ; $7971: $40
    rst $28                                       ; $7972: $ef
    db $10                                        ; $7973: $10
    ld b, [hl]                                    ; $7974: $46
    jr z, jr_0c8_79e9                             ; $7975: $28 $72

    jr @+$32                                      ; $7977: $18 $30

    add hl, de                                    ; $7979: $19
    rst $28                                       ; $797a: $ef
    inc b                                         ; $797b: $04
    db $10                                        ; $797c: $10
    ld d, b                                       ; $797d: $50

jr_0c8_797e:
    xor a                                         ; $797e: $af
    xor d                                         ; $797f: $aa
    ld d, b                                       ; $7980: $50
    ld [$bf29], sp                                ; $7981: $08 $29 $bf
    ld b, b                                       ; $7984: $40
    nop                                           ; $7985: $00
    ld l, a                                       ; $7986: $6f
    sub b                                         ; $7987: $90
    scf                                           ; $7988: $37
    ret z                                         ; $7989: $c8

    jp z, $b535                                   ; $798a: $ca $35 $b5

    ld c, d                                       ; $798d: $4a

jr_0c8_798e:
    nop                                           ; $798e: $00
    ld [$bd15], a                                 ; $798f: $ea $15 $bd
    ld b, d                                       ; $7992: $42
    ld sp, hl                                     ; $7993: $f9
    ld b, $f6                                     ; $7994: $06 $f6
    add hl, bc                                    ; $7996: $09
    nop                                           ; $7997: $00
    db $e4                                        ; $7998: $e4
    jr jr_0c8_798e                                ; $7999: $18 $f3

    inc e                                         ; $799b: $1c
    sub $2f                                       ; $799c: $d6 $2f
    push af                                       ; $799e: $f5
    ld a, [bc]                                    ; $799f: $0a
    nop                                           ; $79a0: $00
    dec bc                                        ; $79a1: $0b

jr_0c8_79a2:
    db $f4                                        ; $79a2: $f4
    sub a                                         ; $79a3: $97
    ld [$1ce3], sp                                ; $79a4: $08 $e3 $1c
    call nc, $02e3                                ; $79a7: $d4 $e3 $02
    and e                                         ; $79aa: $a3
    ld b, b                                       ; $79ab: $40
    sbc l                                         ; $79ac: $9d
    ld h, e                                       ; $79ad: $63
    jp Jump_0c8_44fe                              ; $79ae: $c3 $fe $44


    jr jr_0c8_79a2                                ; $79b1: $18 $ef

    ld b, e                                       ; $79b3: $43
    db $10                                        ; $79b4: $10
    and [hl]                                      ; $79b5: $a6
    ld [$10ef], sp                                ; $79b6: $08 $ef $10
    rst $10                                       ; $79b9: $d7
    jr z, jr_0c8_79c0                             ; $79ba: $28 $04

    add hl, bc                                    ; $79bc: $09
    ld hl, sp+$08                                 ; $79bd: $f8 $08
    nop                                           ; $79bf: $00

jr_0c8_79c0:
    rst $18                                       ; $79c0: $df
    jr nz, jr_0c8_797e                            ; $79c1: $20 $bb

    ld b, h                                       ; $79c3: $44
    ld a, a                                       ; $79c4: $7f
    add b                                         ; $79c5: $80
    cp $01                                        ; $79c6: $fe $01
    sbc c                                         ; $79c8: $99
    sub d                                         ; $79c9: $92
    add hl, bc                                    ; $79ca: $09
    ld [hl], a                                    ; $79cb: $77
    adc b                                         ; $79cc: $88
    ld [hl], d                                    ; $79cd: $72
    ld [$0b79], sp                                ; $79ce: $08 $79 $0b
    cp [hl]                                       ; $79d1: $be
    ld b, c                                       ; $79d2: $41
    jr nc, @+$0b                                  ; $79d3: $30 $09

    nop                                           ; $79d5: $00
    cp $01                                        ; $79d6: $fe $01
    db $dd                                        ; $79d8: $dd
    ld [hl+], a                                   ; $79d9: $22
    cp d                                          ; $79da: $ba
    ld b, h                                       ; $79db: $44
    pop bc                                        ; $79dc: $c1
    ld a, $00                                     ; $79dd: $3e $00
    dec h                                         ; $79df: $25
    jp $02bf                                      ; $79e0: $c3 $bf $02


    ld d, h                                       ; $79e3: $54
    and b                                         ; $79e4: $a0
    rst $38                                       ; $79e5: $ff
    jr nz, jr_0c8_79e8                            ; $79e6: $20 $00

jr_0c8_79e8:
    rlca                                          ; $79e8: $07

jr_0c8_79e9:
    ld hl, sp+$75                                 ; $79e9: $f8 $75
    rrca                                          ; $79eb: $0f
    xor d                                         ; $79ec: $aa
    inc b                                         ; $79ed: $04
    ld sp, hl                                     ; $79ee: $f9
    ld b, $00                                     ; $79ef: $06 $00
    inc sp                                        ; $79f1: $33
    rst $08                                       ; $79f2: $cf

jr_0c8_79f3:
    ret                                           ; $79f3: $c9


    ldh a, [$35]                                  ; $79f4: $f0 $35
    ld a, [bc]                                    ; $79f6: $0a
    rst $20                                       ; $79f7: $e7
    jr jr_0c8_79fa                                ; $79f8: $18 $00

jr_0c8_79fa:
    adc $31                                       ; $79fa: $ce $31
    or l                                          ; $79fc: $b5
    ld [$10af], a                                 ; $79fd: $ea $af $10
    push hl                                       ; $7a00: $e5
    ld a, [de]                                    ; $7a01: $1a
    nop                                           ; $7a02: $00
    dec bc                                        ; $7a03: $0b
    db $f4                                        ; $7a04: $f4
    ld [hl], a                                    ; $7a05: $77
    ret z                                         ; $7a06: $c8

    xor [hl]                                      ; $7a07: $ae
    ld d, b                                       ; $7a08: $50
    ld c, l                                       ; $7a09: $4d
    or b                                          ; $7a0a: $b0
    inc c                                         ; $7a0b: $0c
    db $eb                                        ; $7a0c: $eb
    inc e                                         ; $7a0d: $1c
    db $db                                        ; $7a0e: $db
    daa                                           ; $7a0f: $27
    and b                                         ; $7a10: $a0
    ld [$0bbb], sp                                ; $7a11: $08 $bb $0b
    ld l, $19                                     ; $7a14: $2e $19
    inc bc                                        ; $7a16: $03
    ld h, l                                       ; $7a17: $65
    ld a, [de]                                    ; $7a18: $1a
    rst $08                                       ; $7a19: $cf
    jr nc, jr_0c8_79f3                            ; $7a1a: $30 $d7

    add sp, $0e                                   ; $7a1c: $e8 $0e
    ld [$09c4], sp                                ; $7a1e: $08 $c4 $09
    inc e                                         ; $7a21: $1c
    rst $28                                       ; $7a22: $ef
    db $10                                        ; $7a23: $10
    rst $18                                       ; $7a24: $df
    or l                                          ; $7a25: $b5
    ld [bc], a                                    ; $7a26: $02
    ld [de], a                                    ; $7a27: $12
    add hl, sp                                    ; $7a28: $39
    ld [hl], h                                    ; $7a29: $74
    add hl, bc                                    ; $7a2a: $09
    ret nc                                        ; $7a2b: $d0

    cpl                                           ; $7a2c: $2f
    nop                                           ; $7a2d: $00
    xor c                                         ; $7a2e: $a9
    ld d, b                                       ; $7a2f: $50
    ld c, [hl]                                    ; $7a30: $4e
    or b                                          ; $7a31: $b0
    di                                            ; $7a32: $f3
    inc e                                         ; $7a33: $1c
    or [hl]                                       ; $7a34: $b6
    ld c, a                                       ; $7a35: $4f
    ld [$01fe], sp                                ; $7a36: $08 $fe $01
    ld a, a                                       ; $7a39: $7f
    add c                                         ; $7a3a: $81
    sub [hl]                                      ; $7a3b: $96
    add hl, bc                                    ; $7a3c: $09
    ld [hl], l                                    ; $7a3d: $75
    adc d                                         ; $7a3e: $8a
    xor e                                         ; $7a3f: $ab
    nop                                           ; $7a40: $00
    ld d, h                                       ; $7a41: $54
    inc bc                                        ; $7a42: $03
    db $fc                                        ; $7a43: $fc
    and h                                         ; $7a44: $a4
    inc bc                                        ; $7a45: $03
    ld a, l                                       ; $7a46: $7d
    add d                                         ; $7a47: $82
    ld [hl-], a                                   ; $7a48: $32
    ld [de], a                                    ; $7a49: $12
    call $fa75                                    ; $7a4a: $cd $75 $fa
    ld e, d                                       ; $7a4d: $5a
    add hl, de                                    ; $7a4e: $19
    ld l, a                                       ; $7a4f: $6f
    sub b                                         ; $7a50: $90
    or d                                          ; $7a51: $b2
    add hl, bc                                    ; $7a52: $09
    adc $30                                       ; $7a53: $ce $30
    ld sp, $94ee                                  ; $7a55: $31 $ee $94
    ld bc, $0a10                                  ; $7a58: $01 $10 $0a
    ld [hl], a                                    ; $7a5b: $77
    adc b                                         ; $7a5c: $88
    xor a                                         ; $7a5d: $af
    ld d, b                                       ; $7a5e: $50
    inc sp                                        ; $7a5f: $33
    ld e, a                                       ; $7a60: $5f
    and b                                         ; $7a61: $a0
    add h                                         ; $7a62: $84
    add hl, bc                                    ; $7a63: $09
    ld [hl], h                                    ; $7a64: $74
    add hl, sp                                    ; $7a65: $39
    ld l, d                                       ; $7a66: $6a
    sub l                                         ; $7a67: $95
    ret nc                                        ; $7a68: $d0

    jr @+$7e                                      ; $7a69: $18 $7c

    add hl, de                                    ; $7a6b: $19
    inc c                                         ; $7a6c: $0c
    ld a, l                                       ; $7a6d: $7d
    add d                                         ; $7a6e: $82
    add d                                         ; $7a6f: $82
    ld a, l                                       ; $7a70: $7d
    ld [$d839], a                                 ; $7a71: $ea $39 $d8
    ld [$50af], sp                                ; $7a74: $08 $af $50
    jr nz, @-$04                                  ; $7a77: $20 $fa

    dec b                                         ; $7a79: $05
    ld a, d                                       ; $7a7a: $7a
    add hl, bc                                    ; $7a7b: $09
    cp $01                                        ; $7a7c: $fe $01
    ld a, l                                       ; $7a7e: $7d
    add d                                         ; $7a7f: $82
    ld a, [$050c]                                 ; $7a80: $fa $0c $05
    db $fc                                        ; $7a83: $fc
    inc bc                                        ; $7a84: $03
    ld a, [$2311]                                 ; $7a85: $fa $11 $23
    inc b                                         ; $7a88: $04
    ld a, [de]                                    ; $7a89: $1a
    ld a, a                                       ; $7a8a: $7f
    add b                                         ; $7a8b: $80
    nop                                           ; $7a8c: $00
    sbc a                                         ; $7a8d: $9f
    ld h, b                                       ; $7a8e: $60
    ld b, e                                       ; $7a8f: $43
    db $fc                                        ; $7a90: $fc
    call nc, $a93f                                ; $7a91: $d4 $3f $a9
    ld b, b                                       ; $7a94: $40
    nop                                           ; $7a95: $00
    sbc [hl]                                      ; $7a96: $9e
    ld h, c                                       ; $7a97: $61
    pop hl                                        ; $7a98: $e1
    ccf                                           ; $7a99: $3f
    rst $10                                       ; $7a9a: $d7
    ld l, $eb                                     ; $7a9b: $2e $eb
    inc d                                         ; $7a9d: $14
    nop                                           ; $7a9e: $00
    or $09                                        ; $7a9f: $f6 $09
    ld a, [hl]                                    ; $7aa1: $7e
    add c                                         ; $7aa2: $81
    db $dd                                        ; $7aa3: $dd
    ld [hl+], a                                   ; $7aa4: $22
    cpl                                           ; $7aa5: $2f
    ret nc                                        ; $7aa6: $d0

    ld a, b                                       ; $7aa7: $78
    rst $18                                       ; $7aa8: $df
    add $01                                       ; $7aa9: $c6 $01
    add b                                         ; $7aab: $80
    ld [$18c4], sp                                ; $7aac: $08 $c4 $18
    ld hl, sp+$09                                 ; $7aaf: $f8 $09
    rst $30                                       ; $7ab1: $f7
    ld [$40ea], sp                                ; $7ab2: $08 $ea $40
    dec d                                         ; $7ab5: $15
    sbc e                                         ; $7ab6: $9b
    inc c                                         ; $7ab7: $0c
    push af                                       ; $7ab8: $f5
    ld a, [bc]                                    ; $7ab9: $0a
    add sp, $17                                   ; $7aba: $e8 $17
    ld a, [$0004]                                 ; $7abc: $fa $04 $00

jr_0c8_7abf:
    or l                                          ; $7abf: $b5
    ld c, b                                       ; $7ac0: $48
    ld e, a                                       ; $7ac1: $5f
    xor b                                         ; $7ac2: $a8
    and h                                         ; $7ac3: $a4
    ld e, a                                       ; $7ac4: $5f
    jp nc, Jump_000_0021                          ; $7ac5: $d2 $21 $00

    cp h                                          ; $7ac8: $bc
    ld b, e                                       ; $7ac9: $43
    ld c, l                                       ; $7aca: $4d
    add d                                         ; $7acb: $82
    ld a, $c3                                     ; $7acc: $3e $c3
    or [hl]                                       ; $7ace: $b6
    ld a, h                                       ; $7acf: $7c
    nop                                           ; $7ad0: $00
    ld l, c                                       ; $7ad1: $69
    db $10                                        ; $7ad2: $10
    adc a                                         ; $7ad3: $8f
    ld [hl], b                                    ; $7ad4: $70
    rst $20                                       ; $7ad5: $e7
    ld hl, sp+$58                                 ; $7ad6: $f8 $58
    xor a                                         ; $7ad8: $af
    nop                                           ; $7ad9: $00
    xor a                                         ; $7ada: $af
    ld d, e                                       ; $7adb: $53
    rlca                                          ; $7adc: $07
    ld hl, sp+$4a                                 ; $7add: $f8 $4a
    add l                                         ; $7adf: $85
    or l                                          ; $7ae0: $b5
    ld c, d                                       ; $7ae1: $4a
    nop                                           ; $7ae2: $00
    ld c, d                                       ; $7ae3: $4a
    dec [hl]                                      ; $7ae4: $35
    rst $10                                       ; $7ae5: $d7
    jr z, @-$60                                   ; $7ae6: $28 $9e

    ld h, c                                       ; $7ae8: $61
    ld a, a                                       ; $7ae9: $7f
    ret nz                                        ; $7aea: $c0

    add b                                         ; $7aeb: $80
    ld [hl-], a                                   ; $7aec: $32
    ld [bc], a                                    ; $7aed: $02
    inc b                                         ; $7aee: $04
    pop hl                                        ; $7aef: $e1
    ld e, $d2                                     ; $7af0: $1e $d2
    ld hl, $11fe                                  ; $7af2: $21 $fe $11
    ld hl, $0efd                                  ; $7af5: $21 $fd $0e
    ld a, [bc]                                    ; $7af8: $0a
    add hl, bc                                    ; $7af9: $09
    xor [hl]                                      ; $7afa: $ae
    ld d, c                                       ; $7afb: $51
    cpl                                           ; $7afc: $2f
    db $10                                        ; $7afd: $10
    add [hl]                                      ; $7afe: $86
    ld bc, $1e81                                  ; $7aff: $01 $81 $1e
    ld bc, $21de                                  ; $7b02: $01 $de $21
    cp l                                          ; $7b05: $bd
    ld b, d                                       ; $7b06: $42
    ei                                            ; $7b07: $fb
    inc b                                         ; $7b08: $04
    inc [hl]                                      ; $7b09: $34
    add hl, bc                                    ; $7b0a: $09
    add b                                         ; $7b0b: $80
    and d                                         ; $7b0c: $a2
    ld a, [bc]                                    ; $7b0d: $0a
    push af                                       ; $7b0e: $f5
    ld a, [bc]                                    ; $7b0f: $0a
    cp a                                          ; $7b10: $bf
    ld b, b                                       ; $7b11: $40
    rst $10                                       ; $7b12: $d7
    jr z, jr_0c8_7abf                             ; $7b13: $28 $aa

    ld e, $55                                     ; $7b15: $1e $55
    ld b, l                                       ; $7b17: $45
    cp d                                          ; $7b18: $ba
    ld c, [hl]                                    ; $7b19: $4e
    ld a, [de]                                    ; $7b1a: $1a
    jr nz, jr_0c8_7b25                            ; $7b1b: $20 $08

    ld c, b                                       ; $7b1d: $48
    ld a, [hl-]                                   ; $7b1e: $3a
    ld b, h                                       ; $7b1f: $44
    add hl, bc                                    ; $7b20: $09
    xor a                                         ; $7b21: $af
    ld b, e                                       ; $7b22: $43
    ld d, b                                       ; $7b23: $50
    ld c, b                                       ; $7b24: $48

jr_0c8_7b25:
    add hl, de                                    ; $7b25: $19
    db $ed                                        ; $7b26: $ed
    ld a, $eb                                     ; $7b27: $3e $eb
    inc d                                         ; $7b29: $14
    add $09                                       ; $7b2a: $c6 $09
    ld l, h                                       ; $7b2c: $6c
    ld a, [bc]                                    ; $7b2d: $0a
    ccf                                           ; $7b2e: $3f
    push af                                       ; $7b2f: $f5
    ld a, [bc]                                    ; $7b30: $0a
    ld a, [hl+]                                   ; $7b31: $2a
    ld a, [bc]                                    ; $7b32: $0a
    ld a, b                                       ; $7b33: $78
    add hl, de                                    ; $7b34: $19
    ld a, [hl+]                                   ; $7b35: $2a
    ld a, [hl-]                                   ; $7b36: $3a
    ld b, c                                       ; $7b37: $41
    dec c                                         ; $7b38: $0d
    ld b, b                                       ; $7b39: $40
    dec de                                        ; $7b3a: $1b
    adc h                                         ; $7b3b: $8c
    ld a, [bc]                                    ; $7b3c: $0a
    ld [hl-], a                                   ; $7b3d: $32
    db $dd                                        ; $7b3e: $dd
    ld [hl+], a                                   ; $7b3f: $22
    ld c, [hl]                                    ; $7b40: $4e
    add hl, hl                                    ; $7b41: $29
    cp $0a                                        ; $7b42: $fe $0a
    ei                                            ; $7b44: $fb
    inc b                                         ; $7b45: $04
    adc [hl]                                      ; $7b46: $8e
    add hl, bc                                    ; $7b47: $09
    ei                                            ; $7b48: $fb
    nop                                           ; $7b49: $00
    inc b                                         ; $7b4a: $04
    or $09                                        ; $7b4b: $f6 $09
    jp hl                                         ; $7b4d: $e9


    ld d, $f6                                     ; $7b4e: $16 $f6

jr_0c8_7b50:
    ld [$00f9], sp                                ; $7b50: $08 $f9 $00
    ld c, $fe                                     ; $7b53: $0e $fe
    rlca                                          ; $7b55: $07
    cp b                                          ; $7b56: $b8
    ld b, a                                       ; $7b57: $47
    ld d, e                                       ; $7b58: $53
    add b                                         ; $7b59: $80
    dec a                                         ; $7b5a: $3d
    nop                                           ; $7b5b: $00
    jp $ff5a                                      ; $7b5c: $c3 $5a $ff


    dec de                                        ; $7b5f: $1b
    ld b, $94                                     ; $7b60: $06 $94
    inc bc                                        ; $7b62: $03
    ld hl, sp+$00                                 ; $7b63: $f8 $00
    rlca                                          ; $7b65: $07
    ld h, c                                       ; $7b66: $61
    sbc [hl]                                      ; $7b67: $9e
    rst $28                                       ; $7b68: $ef
    db $10                                        ; $7b69: $10
    ld d, l                                       ; $7b6a: $55
    xor d                                         ; $7b6b: $aa
    ld [bc], a                                    ; $7b6c: $02
    nop                                           ; $7b6d: $00
    db $fd                                        ; $7b6e: $fd
    xor c                                         ; $7b6f: $a9
    ld b, $d6                                     ; $7b70: $06 $d6
    ld bc, $07f9                                  ; $7b72: $01 $f9 $07
    db $dd                                        ; $7b75: $dd
    inc e                                         ; $7b76: $1c
    cp $ae                                        ; $7b77: $fe $ae
    ld de, $2b26                                  ; $7b79: $11 $26 $2b
    ld a, $0b                                     ; $7b7c: $3e $0b
    call c, $f71a                                 ; $7b7e: $dc $1a $f7
    ld [$af00], sp                                ; $7b81: $08 $00 $af
    ld d, b                                       ; $7b84: $50
    ld d, b                                       ; $7b85: $50
    xor a                                         ; $7b86: $af
    xor l                                         ; $7b87: $ad
    ld d, b                                       ; $7b88: $50
    ei                                            ; $7b89: $fb
    inc c                                         ; $7b8a: $0c
    nop                                           ; $7b8b: $00
    cp $07                                        ; $7b8c: $fe $07
    rst $30                                       ; $7b8e: $f7
    add hl, bc                                    ; $7b8f: $09
    ei                                            ; $7b90: $fb
    inc b                                         ; $7b91: $04
    cp a                                          ; $7b92: $bf
    ld b, b                                       ; $7b93: $40
    nop                                           ; $7b94: $00
    rst $18                                       ; $7b95: $df
    jr nz, jr_0c8_7b50                            ; $7b96: $20 $b8

    ld b, a                                       ; $7b98: $47
    ld b, [hl]                                    ; $7b99: $46
    cp b                                          ; $7b9a: $b8
    dec l                                         ; $7b9b: $2d
    rst $00                                       ; $7b9c: $c7
    ld [$0186], sp                                ; $7b9d: $08 $86 $01
    ld a, d                                       ; $7ba0: $7a
    add c                                         ; $7ba1: $81
    cp a                                          ; $7ba2: $bf
    dec e                                         ; $7ba3: $1d
    ld e, a                                       ; $7ba4: $5f
    and b                                         ; $7ba5: $a0
    or a                                          ; $7ba6: $b7
    nop                                           ; $7ba7: $00
    ld c, b                                       ; $7ba8: $48
    ld a, [bc]                                    ; $7ba9: $0a
    push af                                       ; $7baa: $f5
    sub l                                         ; $7bab: $95
    ld a, [bc]                                    ; $7bac: $0a
    jp c, $8005                                   ; $7bad: $da $05 $80

    inc bc                                        ; $7bb0: $03
    or [hl]                                       ; $7bb1: $b6
    ld [bc], a                                    ; $7bb2: $02
    nop                                           ; $7bb3: $00
    add b                                         ; $7bb4: $80
    rst $38                                       ; $7bb5: $ff
    ld b, b                                       ; $7bb6: $40
    ret nz                                        ; $7bb7: $c0

    sbc a                                         ; $7bb8: $9f
    ret nz                                        ; $7bb9: $c0

    ld d, b                                       ; $7bba: $50
    rst $08                                       ; $7bbb: $cf
    nop                                           ; $7bbc: $00
    sub b                                         ; $7bbd: $90
    rst $08                                       ; $7bbe: $cf
    ld h, b                                       ; $7bbf: $60
    rst $18                                       ; $7bc0: $df
    cp a                                          ; $7bc1: $bf
    rst $38                                       ; $7bc2: $ff
    ld b, b                                       ; $7bc3: $40
    rst $38                                       ; $7bc4: $ff
    ld a, [de]                                    ; $7bc5: $1a
    nop                                           ; $7bc6: $00
    rst $38                                       ; $7bc7: $ff
    nop                                           ; $7bc8: $00
    inc bc                                        ; $7bc9: $03
    jr jr_0c8_7bd6                                ; $7bca: $18 $0a

    nop                                           ; $7bcc: $00
    rst $38                                       ; $7bcd: $ff
    ld c, $00                                     ; $7bce: $0e $00
    inc bc                                        ; $7bd0: $03
    ld bc, $0fff                                  ; $7bd1: $01 $ff $0f
    dec b                                         ; $7bd4: $05
    push af                                       ; $7bd5: $f5

jr_0c8_7bd6:
    dec c                                         ; $7bd6: $0d
    dec b                                         ; $7bd7: $05
    db $fd                                        ; $7bd8: $fd
    ld [bc], a                                    ; $7bd9: $02
    ld [$ff02], sp                                ; $7bda: $08 $02 $ff
    db $fd                                        ; $7bdd: $fd
    nop                                           ; $7bde: $00
    rst $38                                       ; $7bdf: $ff
    ld b, e                                       ; $7be0: $43
    ccf                                           ; $7be1: $3f
    ld [bc], a                                    ; $7be2: $02
    ld e, b                                       ; $7be3: $58
    or a                                          ; $7be4: $b7
    nop                                           ; $7be5: $00
    db $fd                                        ; $7be6: $fd
    cp c                                          ; $7be7: $b9
    db $ed                                        ; $7be8: $ed
    cp e                                          ; $7be9: $bb
    db $ed                                        ; $7bea: $ed
    cp l                                          ; $7beb: $bd
    rst $38                                       ; $7bec: $ff
    or $00                                        ; $7bed: $f6 $00
    rst $38                                       ; $7bef: $ff
    db $eb                                        ; $7bf0: $eb
    rst $38                                       ; $7bf1: $ff
    push af                                       ; $7bf2: $f5
    cp $ea                                        ; $7bf3: $fe $ea
    rst $38                                       ; $7bf5: $ff
    add c                                         ; $7bf6: $81
    nop                                           ; $7bf7: $00
    rst $38                                       ; $7bf8: $ff
    adc c                                         ; $7bf9: $89
    rst $30                                       ; $7bfa: $f7
    push de                                       ; $7bfb: $d5
    xor e                                         ; $7bfc: $ab
    ld [$f7d7], a                                 ; $7bfd: $ea $d7 $f7
    nop                                           ; $7c00: $00
    xor $ef                                       ; $7c01: $ee $ef
    rst $30                                       ; $7c03: $f7
    ld a, [hl]                                    ; $7c04: $7e
    nop                                           ; $7c05: $00
    add c                                         ; $7c06: $81
    nop                                           ; $7c07: $00
    db $e4                                        ; $7c08: $e4
    nop                                           ; $7c09: $00
    ld a, e                                       ; $7c0a: $7b
    ld a, a                                       ; $7c0b: $7f
    ld [hl], b                                    ; $7c0c: $70
    ld a, a                                       ; $7c0d: $7f
    ld [hl], b                                    ; $7c0e: $70
    push af                                       ; $7c0f: $f5
    ld a, a                                       ; $7c10: $7f
    ld l, c                                       ; $7c11: $69
    nop                                           ; $7c12: $00
    ld hl, sp-$33                                 ; $7c13: $f8 $cd
    ld hl, sp-$57                                 ; $7c15: $f8 $a9
    ld a, b                                       ; $7c17: $78
    ld c, l                                       ; $7c18: $4d
    ld hl, sp-$80                                 ; $7c19: $f8 $80
    nop                                           ; $7c1b: $00
    ret nz                                        ; $7c1c: $c0

    ld e, a                                       ; $7c1d: $5f
    ret nz                                        ; $7c1e: $c0

    sub b                                         ; $7c1f: $90
    rst $08                                       ; $7c20: $cf
    ld d, b                                       ; $7c21: $50
    rst $08                                       ; $7c22: $cf
    and b                                         ; $7c23: $a0
    inc c                                         ; $7c24: $0c
    rst $18                                       ; $7c25: $df
    ld a, a                                       ; $7c26: $7f
    rst $38                                       ; $7c27: $ff
    add b                                         ; $7c28: $80
    ld h, d                                       ; $7c29: $62
    ld [$506e], sp                                ; $7c2a: $08 $6e $50
    rst $38                                       ; $7c2d: $ff
    rst $38                                       ; $7c2e: $ff
    ld [bc], a                                    ; $7c2f: $02
    inc c                                         ; $7c30: $0c
    rlca                                          ; $7c31: $07
    db $f4                                        ; $7c32: $f4
    rrca                                          ; $7c33: $0f
    inc b                                         ; $7c34: $04
    rst $38                                       ; $7c35: $ff
    ld [bc], a                                    ; $7c36: $02
    ld [$88fc], sp                                ; $7c37: $08 $fc $88
    add d                                         ; $7c3a: $82
    db $10                                        ; $7c3b: $10
    pop af                                        ; $7c3c: $f1
    rst $38                                       ; $7c3d: $ff
    jp hl                                         ; $7c3e: $e9


    inc b                                         ; $7c3f: $04
    nop                                           ; $7c40: $00
    ldh [rIE], a                                  ; $7c41: $e0 $ff
    pop hl                                        ; $7c43: $e1
    db $10                                        ; $7c44: $10
    cp $e2                                        ; $7c45: $fe $e2
    db $fd                                        ; $7c47: $fd
    inc b                                         ; $7c48: $04
    ld [$81e7], sp                                ; $7c49: $08 $e7 $81
    ld b, d                                       ; $7c4c: $42
    jp $c30c                                      ; $7c4d: $c3 $0c $c3


    nop                                           ; $7c50: $00
    cp l                                          ; $7c51: $bd
    jp Jump_000_10a1                              ; $7c52: $c3 $a1 $10


    xor l                                         ; $7c55: $ad
    nop                                           ; $7c56: $00
    adc e                                         ; $7c57: $8b
    rst $38                                       ; $7c58: $ff
    ld c, b                                       ; $7c59: $48
    adc b                                         ; $7c5a: $88
    ld [bc], a                                    ; $7c5b: $02
    nop                                           ; $7c5c: $00
    rrca                                          ; $7c5d: $0f
    rst $30                                       ; $7c5e: $f7
    db $10                                        ; $7c5f: $10
    jr z, @+$01                                   ; $7c60: $28 $ff

    rst $38                                       ; $7c62: $ff
    push de                                       ; $7c63: $d5
    nop                                           ; $7c64: $00
    rst $38                                       ; $7c65: $ff
    and b                                         ; $7c66: $a0
    rst $38                                       ; $7c67: $ff
    db $fd                                        ; $7c68: $fd
    rst $38                                       ; $7c69: $ff
    and a                                         ; $7c6a: $a7
    ld hl, sp-$2a                                 ; $7c6b: $f8 $d6
    ld a, [bc]                                    ; $7c6d: $0a
    ld hl, sp-$5d                                 ; $7c6e: $f8 $a3
    db $fc                                        ; $7c70: $fc
    call nc, Call_000_00c4                        ; $7c71: $d4 $c4 $00
    ld d, l                                       ; $7c74: $55
    call nc, $d500                                ; $7c75: $d4 $00 $d5
    nop                                           ; $7c78: $00
    rst $38                                       ; $7c79: $ff
    ret nz                                        ; $7c7a: $c0

    ccf                                           ; $7c7b: $3f
    ld [hl], b                                    ; $7c7c: $70
    ccf                                           ; $7c7d: $3f
    ld c, d                                       ; $7c7e: $4a
    ccf                                           ; $7c7f: $3f
    or $80                                        ; $7c80: $f6 $80
    db $10                                        ; $7c82: $10
    jr nz, @-$10                                  ; $7c83: $20 $ee

    rst $38                                       ; $7c85: $ff
    xor a                                         ; $7c86: $af
    ld d, b                                       ; $7c87: $50
    ld [bc], a                                    ; $7c88: $02
    db $fd                                        ; $7c89: $fd
    add b                                         ; $7c8a: $80
    jr nz, @+$01                                  ; $7c8b: $20 $ff

    ld d, a                                       ; $7c8d: $57
    ret nc                                        ; $7c8e: $d0

    ld h, b                                       ; $7c8f: $60
    jp nz, $a53f                                  ; $7c90: $c2 $3f $a5

    ld a, [$084b]                                 ; $7c93: $fa $4b $08
    db $f4                                        ; $7c96: $f4
    and l                                         ; $7c97: $a5
    ld a, [$eb7d]                                 ; $7c98: $fa $7d $eb
    nop                                           ; $7c9b: $00
    ld a, [hl]                                    ; $7c9c: $7e
    add b                                         ; $7c9d: $80
    inc bc                                        ; $7c9e: $03
    add b                                         ; $7c9f: $80
    ld b, b                                       ; $7ca0: $40
    nop                                           ; $7ca1: $00
    xor $11                                       ; $7ca2: $ee $11
    rst $38                                       ; $7ca4: $ff
    nop                                           ; $7ca5: $00
    ld d, a                                       ; $7ca6: $57
    xor b                                         ; $7ca7: $a8
    push de                                       ; $7ca8: $d5
    jr nz, @+$01                                  ; $7ca9: $20 $ff

    ld b, b                                       ; $7cab: $40
    ld b, b                                       ; $7cac: $40
    jr nz, @-$03                                  ; $7cad: $20 $fb

    inc b                                         ; $7caf: $04
    db $dd                                        ; $7cb0: $dd
    ld [hl+], a                                   ; $7cb1: $22
    ld [$1540], a                                 ; $7cb2: $ea $40 $15
    ld b, b                                       ; $7cb5: $40
    jr c, @-$24                                   ; $7cb6: $38 $da

    db $fc                                        ; $7cb8: $fc
    ld a, a                                       ; $7cb9: $7f
    add b                                         ; $7cba: $80
    nop                                           ; $7cbb: $00
    rst $38                                       ; $7cbc: $ff
    nop                                           ; $7cbd: $00
    halt                                          ; $7cbe: $76
    rst $38                                       ; $7cbf: $ff
    ld a, a                                       ; $7cc0: $7f
    db $10                                        ; $7cc1: $10
    rst $30                                       ; $7cc2: $f7
    jr @-$4d                                      ; $7cc3: $18 $b1

    ld e, [hl]                                    ; $7cc5: $5e
    ld bc, $ff9e                                  ; $7cc6: $01 $9e $ff

Call_0c8_7cc9:
    ld a, [hl]                                    ; $7cc9: $7e
    jr nz, @-$17                                  ; $7cca: $20 $e7

    jr c, jr_0c8_7cee                             ; $7ccc: $38 $20

    inc c                                         ; $7cce: $0c
    ld bc, $5300                                  ; $7ccf: $01 $00 $53
    ld bc, $01ff                                  ; $7cd2: $01 $ff $01
    ld e, d                                       ; $7cd5: $5a
    and l                                         ; $7cd6: $a5
    ld d, a                                       ; $7cd7: $57
    rst $38                                       ; $7cd8: $ff
    ld b, b                                       ; $7cd9: $40
    cp a                                          ; $7cda: $bf
    jr jr_0c8_7cdd                                ; $7cdb: $18 $00

jr_0c8_7cdd:
    db $10                                        ; $7cdd: $10
    rst $38                                       ; $7cde: $ff
    ld h, a                                       ; $7cdf: $67

Jump_0c8_7ce0:
    rst $38                                       ; $7ce0: $ff
    dec b                                         ; $7ce1: $05
    ld a, [$8000]                                 ; $7ce2: $fa $00 $80
    rst $38                                       ; $7ce5: $ff
    ld b, c                                       ; $7ce6: $41
    rst $38                                       ; $7ce7: $ff
    xor d                                         ; $7ce8: $aa
    rst $38                                       ; $7ce9: $ff
    rst $30                                       ; $7cea: $f7
    ld [$e310], sp                                ; $7ceb: $08 $10 $e3

jr_0c8_7cee:
    inc e                                         ; $7cee: $1c
    ld [$00a4], sp                                ; $7cef: $08 $a4 $00
    db $fd                                        ; $7cf2: $fd
    inc bc                                        ; $7cf3: $03
    jr z, @-$27                                   ; $7cf4: $28 $d7

    ld d, c                                       ; $7cf6: $51
    ld bc, $0136                                  ; $7cf7: $01 $36 $01
    ld b, d                                       ; $7cfa: $42
    jr z, jr_0c8_7cfd                             ; $7cfb: $28 $00

jr_0c8_7cfd:
    xor c                                         ; $7cfd: $a9
    ld d, a                                       ; $7cfe: $57
    sbc [hl]                                      ; $7cff: $9e

Jump_0c8_7d00:
    ld l, e                                       ; $7d00: $6b
    ld bc, $5728                                  ; $7d01: $01 $28 $57
    xor b                                         ; $7d04: $a8
    xor b                                         ; $7d05: $a8
    ld [$822b], sp                                ; $7d06: $08 $2b $82
    ld bc, $ffa0                                  ; $7d09: $01 $a0 $ff
    ei                                            ; $7d0c: $fb
    jr nz, @+$01                                  ; $7d0d: $20 $ff

    ld d, h                                       ; $7d0f: $54
    adc c                                         ; $7d10: $89
    ld bc, $d52a                                  ; $7d11: $01 $2a $d5
    rst $08                                       ; $7d14: $cf
    rst $38                                       ; $7d15: $ff
    dec a                                         ; $7d16: $3d
    nop                                           ; $7d17: $00
    ret nz                                        ; $7d18: $c0

    adc a                                         ; $7d19: $8f
    ldh a, [$80]                                  ; $7d1a: $f0 $80
    rst $38                                       ; $7d1c: $ff
    ld [$7dff], a                                 ; $7d1d: $ea $ff $7d
    nop                                           ; $7d20: $00
    add e                                         ; $7d21: $83
    ld [$81f7], sp                                ; $7d22: $08 $f7 $81
    rst $38                                       ; $7d25: $ff
    push hl                                       ; $7d26: $e5
    rst $38                                       ; $7d27: $ff
    dec [hl]                                      ; $7d28: $35
    nop                                           ; $7d29: $00
    ld a, [de]                                    ; $7d2a: $1a
    ld a, [c]                                     ; $7d2b: $f2
    dec e                                         ; $7d2c: $1d
    or b                                          ; $7d2d: $b0
    ld e, a                                       ; $7d2e: $5f
    xor $ff                                       ; $7d2f: $ee $ff
    ld d, h                                       ; $7d31: $54
    nop                                           ; $7d32: $00
    xor e                                         ; $7d33: $ab
    xor e                                         ; $7d34: $ab
    ld d, l                                       ; $7d35: $55
    ld d, l                                       ; $7d36: $55
    xor e                                         ; $7d37: $ab
    ld b, a                                       ; $7d38: $47
    rst $38                                       ; $7d39: $ff
    ld e, d                                       ; $7d3a: $5a
    nop                                           ; $7d3b: $00
    and b                                         ; $7d3c: $a0
    xor d                                         ; $7d3d: $aa
    ld d, l                                       ; $7d3e: $55
    dec b                                         ; $7d3f: $05
    ld a, [$ff55]                                 ; $7d40: $fa $55 $ff
    ld b, c                                       ; $7d43: $41
    nop                                           ; $7d44: $00
    ld bc, $01ab                                  ; $7d45: $01 $ab $01
    push af                                       ; $7d48: $f5
    ld bc, $ff77                                  ; $7d49: $01 $77 $ff
    ld [hl], l                                    ; $7d4c: $75
    nop                                           ; $7d4d: $00
    ld a, [hl+]                                   ; $7d4e: $2a
    xor d                                         ; $7d4f: $aa
    ld [hl], l                                    ; $7d50: $75
    ld h, b                                       ; $7d51: $60
    cp a                                          ; $7d52: $bf
    rst $38                                       ; $7d53: $ff
    rst $38                                       ; $7d54: $ff
    ld a, d                                       ; $7d55: $7a
    nop                                           ; $7d56: $00
    add b                                         ; $7d57: $80
    ccf                                           ; $7d58: $3f
    ret nz                                        ; $7d59: $c0

    dec b                                         ; $7d5a: $05
    ld a, [$ffe0]                                 ; $7d5b: $fa $e0 $ff
    sbc a                                         ; $7d5e: $9f
    nop                                           ; $7d5f: $00
    ld [$5cab], sp                                ; $7d60: $08 $ab $5c
    ld e, b                                       ; $7d63: $58
    xor a                                         ; $7d64: $af
    db $db                                        ; $7d65: $db
    rst $38                                       ; $7d66: $ff
    add b                                         ; $7d67: $80
    inc d                                         ; $7d68: $14
    nop                                           ; $7d69: $00
    ld a, [$aa00]                                 ; $7d6a: $fa $00 $aa
    ld [$e1d1], sp                                ; $7d6d: $08 $d1 $e1
    ld bc, $d42b                                  ; $7d70: $01 $2b $d4
    nop                                           ; $7d73: $00
    db $eb                                        ; $7d74: $eb
    rst $38                                       ; $7d75: $ff
    jr nc, jr_0c8_7d97                            ; $7d76: $30 $1f

    nop                                           ; $7d78: $00
    rra                                           ; $7d79: $1f
    xor d                                         ; $7d7a: $aa
    rra                                           ; $7d7b: $1f
    nop                                           ; $7d7c: $00
    sub e                                         ; $7d7d: $93
    rst $38                                       ; $7d7e: $ff
    db $f4                                        ; $7d7f: $f4
    rrca                                          ; $7d80: $0f
    xor [hl]                                      ; $7d81: $ae
    ld d, a                                       ; $7d82: $57
    ld de, $00ef                                  ; $7d83: $11 $ef $00
    ld [$dfff], a                                 ; $7d86: $ea $ff $df
    ld h, b                                       ; $7d89: $60
    rlca                                          ; $7d8a: $07
    ld hl, sp-$40                                 ; $7d8b: $f8 $c0
    ld a, a                                       ; $7d8d: $7f
    nop                                           ; $7d8e: $00
    ld sp, hl                                     ; $7d8f: $f9
    rst $38                                       ; $7d90: $ff
    dec e                                         ; $7d91: $1d
    ldh [rSC], a                                  ; $7d92: $e0 $02
    db $fd                                        ; $7d94: $fd
    db $10                                        ; $7d95: $10
    rst $38                                       ; $7d96: $ff

jr_0c8_7d97:
    ld b, b                                       ; $7d97: $40
    or a                                          ; $7d98: $b7
    ret nz                                        ; $7d99: $c0

    nop                                           ; $7d9a: $00
    cp $01                                        ; $7d9b: $fe $01
    ld d, $e9                                     ; $7d9d: $16 $e9
    db $fd                                        ; $7d9f: $fd
    rst $38                                       ; $7da0: $ff
    nop                                           ; $7da1: $00
    ld a, $c0                                     ; $7da2: $3e $c0
    ld c, a                                       ; $7da4: $4f
    ldh a, [rP1]                                  ; $7da5: $f0 $00
    rst $38                                       ; $7da7: $ff
    ld a, l                                       ; $7da8: $7d
    rst $38                                       ; $7da9: $ff
    ld b, [hl]                                    ; $7daa: $46
    db $ed                                        ; $7dab: $ed
    db $10                                        ; $7dac: $10
    ld hl, $1f3a                                  ; $7dad: $21 $3a $1f
    ld hl, sp+$1a                                 ; $7db0: $f8 $1a
    ld bc, $3910                                  ; $7db2: $01 $10 $39
    ld e, l                                       ; $7db5: $5d
    dec b                                         ; $7db6: $05
    rst $38                                       ; $7db7: $ff
    ld l, d                                       ; $7db8: $6a
    dec [hl]                                      ; $7db9: $35
    ld b, b                                       ; $7dba: $40
    ccf                                           ; $7dbb: $3f
    ld d, b                                       ; $7dbc: $50
    add hl, sp                                    ; $7dbd: $39
    ld e, a                                       ; $7dbe: $5f
    sub b                                         ; $7dbf: $90
    nop                                           ; $7dc0: $00
    nop                                           ; $7dc1: $00
    ld de, $93ee                                  ; $7dc2: $11 $ee $93
    rst $38                                       ; $7dc5: $ff
    ld l, e                                       ; $7dc6: $6b
    call nc, $ea15                                ; $7dc7: $d4 $15 $ea
    inc b                                         ; $7dca: $04
    ld b, d                                       ; $7dcb: $42
    db $fd                                        ; $7dcc: $fd
    or h                                          ; $7dcd: $b4
    rst $38                                       ; $7dce: $ff
    call nc, Call_000_0251                        ; $7dcf: $d4 $51 $02
    ld bc, $00fe                                  ; $7dd2: $01 $fe $00
    cp $ff                                        ; $7dd5: $fe $ff
    rla                                           ; $7dd7: $17
    ld [$0ef9], sp                                ; $7dd8: $08 $f9 $0e

jr_0c8_7ddb:
    xor b                                         ; $7ddb: $a8
    ld e, a                                       ; $7ddc: $5f
    add b                                         ; $7ddd: $80
    sbc [hl]                                      ; $7dde: $9e
    ld bc, $ea40                                  ; $7ddf: $01 $40 $ea
    ld b, b                                       ; $7de2: $40
    ld a, l                                       ; $7de3: $7d
    rst $00                                       ; $7de4: $c7
    ld a, [hl]                                    ; $7de5: $7e
    ld sp, hl                                     ; $7de6: $f9
    ld b, b                                       ; $7de7: $40
    sub e                                         ; $7de8: $93
    ld h, b                                       ; $7de9: $60
    nop                                           ; $7dea: $00
    dec bc                                        ; $7deb: $0b
    push af                                       ; $7dec: $f5
    and e                                         ; $7ded: $a3
    rst $38                                       ; $7dee: $ff
    ld bc, $0006                                  ; $7def: $01 $06 $00
    xor h                                         ; $7df2: $ac
    rlca                                          ; $7df3: $07
    ld d, [hl]                                    ; $7df4: $56
    rst $38                                       ; $7df5: $ff
    push de                                       ; $7df6: $d5
    nop                                           ; $7df7: $00
    cp [hl]                                       ; $7df8: $be
    ld b, b                                       ; $7df9: $40
    ld bc, $a05f                                  ; $7dfa: $01 $5f $a0
    ld a, [bc]                                    ; $7dfd: $0a
    push af                                       ; $7dfe: $f5
    db $ed                                        ; $7dff: $ed
    rst $38                                       ; $7e00: $ff
    or c                                          ; $7e01: $b1
    add c                                         ; $7e02: $81
    ld [bc], a                                    ; $7e03: $02
    nop                                           ; $7e04: $00
    ld b, b                                       ; $7e05: $40
    rst $38                                       ; $7e06: $ff
    ld a, l                                       ; $7e07: $7d
    ccf                                           ; $7e08: $3f
    db $fd                                        ; $7e09: $fd
    jr nz, jr_0c8_7ddb                            ; $7e0a: $20 $cf

    jr nc, jr_0c8_7e0e                            ; $7e0c: $30 $00

jr_0c8_7e0e:
    ldh [$3f], a                                  ; $7e0e: $e0 $3f
    push af                                       ; $7e10: $f5
    rst $38                                       ; $7e11: $ff
    ld a, [$1f80]                                 ; $7e12: $fa $80 $1f
    ldh [rLCDC], a                                ; $7e15: $e0 $40
    add b                                         ; $7e17: $80
    ret nc                                        ; $7e18: $d0

    ld bc, $0857                                  ; $7e19: $01 $57 $08
    rst $30                                       ; $7e1c: $f7
    ld [$9e69], sp                                ; $7e1d: $08 $69 $9e
    ld bc, $ff5f                                  ; $7e20: $01 $5f $ff
    rst $08                                       ; $7e23: $cf
    ld [bc], a                                    ; $7e24: $02
    db $fc                                        ; $7e25: $fc
    inc bc                                        ; $7e26: $03
    ld [bc], a                                    ; $7e27: $02
    cp b                                          ; $7e28: $b8
    ld bc, $0c00                                  ; $7e29: $01 $00 $0c
    db $10                                        ; $7e2c: $10
    rst $38                                       ; $7e2d: $ff
    db $10                                        ; $7e2e: $10
    ld d, d                                       ; $7e2f: $52
    cp l                                          ; $7e30: $bd
    cp c                                          ; $7e31: $b9
    rst $38                                       ; $7e32: $ff
    ld b, b                                       ; $7e33: $40
    rst $38                                       ; $7e34: $ff
    stop                                          ; $7e35: $10 $00
    ld a, [hl+]                                   ; $7e37: $2a
    rst $10                                       ; $7e38: $d7

jr_0c8_7e39:
    pop af                                        ; $7e39: $f1
    rst $38                                       ; $7e3a: $ff
    ldh a, [$1f]                                  ; $7e3b: $f0 $1f
    nop                                           ; $7e3d: $00
    ld hl, sp+$1f                                 ; $7e3e: $f8 $1f
    dec b                                         ; $7e40: $05
    rst $38                                       ; $7e41: $ff
    di                                            ; $7e42: $f3
    rst $38                                       ; $7e43: $ff
    ld sp, hl                                     ; $7e44: $f9
    ld c, $10                                     ; $7e45: $0e $10
    ld a, [c]                                     ; $7e47: $f2
    rrca                                          ; $7e48: $0f
    dec c                                         ; $7e49: $0d
    ld [$ae00], sp                                ; $7e4a: $08 $00 $ae
    ld d, c                                       ; $7e4d: $51
    inc b                                         ; $7e4e: $04
    ei                                            ; $7e4f: $fb
    nop                                           ; $7e50: $00
    ld d, b                                       ; $7e51: $50
    rst $38                                       ; $7e52: $ff
    adc c                                         ; $7e53: $89
    rst $38                                       ; $7e54: $ff
    ld [hl], e                                    ; $7e55: $73
    adc h                                         ; $7e56: $8c
    dec h                                         ; $7e57: $25
    sbc $50                                       ; $7e58: $de $50
    ld b, h                                       ; $7e5a: $44
    jp z, $bd02                                   ; $7e5b: $ca $02 $bd

    ld c, b                                       ; $7e5e: $48
    ld de, $fff7                                  ; $7e5f: $11 $f7 $ff
    or l                                          ; $7e62: $b5
    nop                                           ; $7e63: $00
    nop                                           ; $7e64: $00
    cp $00                                        ; $7e65: $fe $00
    ld d, l                                       ; $7e67: $55
    xor d                                         ; $7e68: $aa
    pop af                                        ; $7e69: $f1
    rst $38                                       ; $7e6a: $ff
    ld b, c                                       ; $7e6b: $41
    ld b, $01                                     ; $7e6c: $06 $01
    db $ec                                        ; $7e6e: $ec
    rlca                                          ; $7e6f: $07
    jr c, jr_0c8_7e39                             ; $7e70: $38 $c7

    inc b                                         ; $7e72: $04
    rst $38                                       ; $7e73: $ff
    ld d, l                                       ; $7e74: $55
    sub b                                         ; $7e75: $90
    nop                                           ; $7e76: $00
    db $10                                        ; $7e77: $10
    rst $38                                       ; $7e78: $ff
    ld b, b                                       ; $7e79: $40
    adc d                                         ; $7e7a: $8a
    cp b                                          ; $7e7b: $b8
    db $10                                        ; $7e7c: $10
    ld d, l                                       ; $7e7d: $55
    xor d                                         ; $7e7e: $aa
    inc bc                                        ; $7e7f: $03
    db $fd                                        ; $7e80: $fd
    nop                                           ; $7e81: $00
    inc bc                                        ; $7e82: $03
    ld [bc], a                                    ; $7e83: $02
    xor d                                         ; $7e84: $aa
    inc bc                                        ; $7e85: $03
    call nc, $aa03                                ; $7e86: $d4 $03 $aa
    rst $38                                       ; $7e89: $ff
    nop                                           ; $7e8a: $00
    ld e, a                                       ; $7e8b: $5f
    ldh [$c7], a                                  ; $7e8c: $e0 $c7
    ld a, b                                       ; $7e8e: $78
    nop                                           ; $7e8f: $00
    rst $38                                       ; $7e90: $ff
    ld l, a                                       ; $7e91: $6f
    rst $38                                       ; $7e92: $ff
    ld b, b                                       ; $7e93: $40
    ld [$0136], a                                 ; $7e94: $ea $36 $01
    dec d                                         ; $7e97: $15
    ld [$ff99], a                                 ; $7e98: $ea $99 $ff
    pop af                                        ; $7e9b: $f1
    ld c, $00                                     ; $7e9c: $0e $00
    xor h                                         ; $7e9e: $ac
    ld d, a                                       ; $7e9f: $57
    ld d, b                                       ; $7ea0: $50
    xor a                                         ; $7ea1: $af
    add l                                         ; $7ea2: $85
    ld a, a                                       ; $7ea3: $7f
    rst $28                                       ; $7ea4: $ef
    jr nc, @+$06                                  ; $7ea5: $30 $04

    and a                                         ; $7ea7: $a7
    ld a, b                                       ; $7ea8: $78
    ld hl, $bafe                                  ; $7ea9: $21 $fe $ba
    add sp, $10                                   ; $7eac: $e8 $10
    inc b                                         ; $7eae: $04
    ei                                            ; $7eaf: $fb
    nop                                           ; $7eb0: $00

jr_0c8_7eb1:
    rst $38                                       ; $7eb1: $ff
    rst $38                                       ; $7eb2: $ff
    dec l                                         ; $7eb3: $2d
    ld b, $f8                                     ; $7eb4: $06 $f8
    rlca                                          ; $7eb6: $07
    ld d, b                                       ; $7eb7: $50
    xor a                                         ; $7eb8: $af
    nop                                           ; $7eb9: $00
    ld d, a                                       ; $7eba: $57
    rst $38                                       ; $7ebb: $ff
    cp h                                          ; $7ebc: $bc
    ret nz                                        ; $7ebd: $c0

    sbc a                                         ; $7ebe: $9f
    ldh [$85], a                                  ; $7ebf: $e0 $85
    ld a, [$cf00]                                 ; $7ec1: $fa $00 $cf
    rst $38                                       ; $7ec4: $ff
    rst $10                                       ; $7ec5: $d7
    ld a, a                                       ; $7ec6: $7f
    rst $38                                       ; $7ec7: $ff
    nop                                           ; $7ec8: $00
    dec d                                         ; $7ec9: $15
    ld [$d310], a                                 ; $7eca: $ea $10 $d3
    rst $38                                       ; $7ecd: $ff
    ld a, c                                       ; $7ece: $79
    ret nz                                        ; $7ecf: $c0

    nop                                           ; $7ed0: $00
    inc b                                         ; $7ed1: $04
    ei                                            ; $7ed2: $fb
    ld [hl], a                                    ; $7ed3: $77
    rst $38                                       ; $7ed4: $ff
    nop                                           ; $7ed5: $00
    cp l                                          ; $7ed6: $bd
    cp $e7                                        ; $7ed7: $fe $e7
    jr jr_0c8_7f4b                                ; $7ed9: $18 $70

    sbc a                                         ; $7edb: $9f
    cp a                                          ; $7edc: $bf
    rst $38                                       ; $7edd: $ff
    nop                                           ; $7ede: $00
    sub a                                         ; $7edf: $97
    add sp, -$40                                  ; $7ee0: $e8 $c0
    rst $38                                       ; $7ee2: $ff
    xor b                                         ; $7ee3: $a8
    rst $38                                       ; $7ee4: $ff
    cp e                                          ; $7ee5: $bb
    rst $38                                       ; $7ee6: $ff
    ld b, b                                       ; $7ee7: $40
    cp $58                                        ; $7ee8: $fe $58
    ld bc, $55ab                                  ; $7eea: $01 $ab $55

jr_0c8_7eed:
    cp d                                          ; $7eed: $ba
    rst $38                                       ; $7eee: $ff
    ld d, l                                       ; $7eef: $55
    ld [$0a00], a                                 ; $7ef0: $ea $00 $0a
    push af                                       ; $7ef3: $f5
    dec b                                         ; $7ef4: $05
    ld a, [$ff40]                                 ; $7ef5: $fa $40 $ff
    inc d                                         ; $7ef8: $14
    nop                                           ; $7ef9: $00
    dec c                                         ; $7efa: $0d
    nop                                           ; $7efb: $00
    sub a                                         ; $7efc: $97
    nop                                           ; $7efd: $00
    nop                                           ; $7efe: $00
    ld l, b                                       ; $7eff: $68

Call_0c8_7f00:
    ld l, c                                       ; $7f00: $69
    ld l, d                                       ; $7f01: $6a
    ld l, e                                       ; $7f02: $6b
    ld l, h                                       ; $7f03: $6c
    ld l, l                                       ; $7f04: $6d
    ld l, [hl]                                    ; $7f05: $6e
    ld l, a                                       ; $7f06: $6f
    ld b, b                                       ; $7f07: $40
    ld [hl], b                                    ; $7f08: $70
    inc b                                         ; $7f09: $04
    jr nz, jr_0c8_7f7d                            ; $7f0a: $20 $71

    ld [hl], d                                    ; $7f0c: $72
    ld [hl], e                                    ; $7f0d: $73
    ld [hl], h                                    ; $7f0e: $74
    ld [hl], l                                    ; $7f0f: $75

Jump_0c8_7f10:
    halt                                          ; $7f10: $76
    ld bc, $7877                                  ; $7f11: $01 $77 $78
    ld a, c                                       ; $7f14: $79
    ld a, d                                       ; $7f15: $7a
    ld a, b                                       ; $7f16: $78
    ld a, c                                       ; $7f17: $79
    ld a, e                                       ; $7f18: $7b
    inc b                                         ; $7f19: $04
    jr nz, jr_0c8_7f1c                            ; $7f1a: $20 $00

jr_0c8_7f1c:
    ld a, h                                       ; $7f1c: $7c
    ld a, l                                       ; $7f1d: $7d
    ld a, [hl]                                    ; $7f1e: $7e
    ld a, a                                       ; $7f1f: $7f
    add b                                         ; $7f20: $80
    add c                                         ; $7f21: $81
    add d                                         ; $7f22: $82
    add e                                         ; $7f23: $83
    ld d, b                                       ; $7f24: $50
    add h                                         ; $7f25: $84
    inc bc                                        ; $7f26: $03
    nop                                           ; $7f27: $00
    add b                                         ; $7f28: $80
    inc b                                         ; $7f29: $04
    jr nz, jr_0c8_7eb1                            ; $7f2a: $20 $85

    add [hl]                                      ; $7f2c: $86
    add a                                         ; $7f2d: $87
    adc b                                         ; $7f2e: $88
    nop                                           ; $7f2f: $00
    adc c                                         ; $7f30: $89
    adc d                                         ; $7f31: $8a
    adc e                                         ; $7f32: $8b
    adc h                                         ; $7f33: $8c
    adc l                                         ; $7f34: $8d
    adc [hl]                                      ; $7f35: $8e
    adc a                                         ; $7f36: $8f
    sub b                                         ; $7f37: $90
    add b                                         ; $7f38: $80
    ld [$9148], sp                                ; $7f39: $08 $48 $91
    sub d                                         ; $7f3c: $92
    sub e                                         ; $7f3d: $93
    sub h                                         ; $7f3e: $94
    sub l                                         ; $7f3f: $95
    sub [hl]                                      ; $7f40: $96
    sub a                                         ; $7f41: $97
    ld b, b                                       ; $7f42: $40
    sbc b                                         ; $7f43: $98
    ld [$9948], sp                                ; $7f44: $08 $48 $99
    sbc d                                         ; $7f47: $9a
    sbc e                                         ; $7f48: $9b
    sbc h                                         ; $7f49: $9c
    sbc l                                         ; $7f4a: $9d

jr_0c8_7f4b:
    sbc [hl]                                      ; $7f4b: $9e
    jr nz, jr_0c8_7eed                            ; $7f4c: $20 $9f

    and b                                         ; $7f4e: $a0
    ld [$a148], sp                                ; $7f4f: $08 $48 $a1
    and d                                         ; $7f52: $a2
    and e                                         ; $7f53: $a3
    and h                                         ; $7f54: $a4
    and l                                         ; $7f55: $a5
    db $10                                        ; $7f56: $10
    and [hl]                                      ; $7f57: $a6
    and a                                         ; $7f58: $a7
    xor b                                         ; $7f59: $a8
    ld [$a948], sp                                ; $7f5a: $08 $48 $a9
    xor d                                         ; $7f5d: $aa
    xor e                                         ; $7f5e: $ab
    xor h                                         ; $7f5f: $ac
    ld [$aead], sp                                ; $7f60: $08 $ad $ae
    xor a                                         ; $7f63: $af
    or b                                          ; $7f64: $b0
    ld [$b148], sp                                ; $7f65: $08 $48 $b1
    or d                                          ; $7f68: $b2
    or e                                          ; $7f69: $b3
    rlca                                          ; $7f6a: $07
    or h                                          ; $7f6b: $b4
    or l                                          ; $7f6c: $b5
    or [hl]                                       ; $7f6d: $b6
    or a                                          ; $7f6e: $b7
    cp b                                          ; $7f6f: $b8
    ld [$7848], sp                                ; $7f70: $08 $48 $78
    ld hl, sp+$78                                 ; $7f73: $f8 $78
    ld hl, sp-$4b                                 ; $7f75: $f8 $b5
    add b                                         ; $7f77: $80
    ld c, b                                       ; $7f78: $48
    inc b                                         ; $7f79: $04
    ld bc, $23f8                                  ; $7f7a: $01 $f8 $23

jr_0c8_7f7d:
    db $10                                        ; $7f7d: $10
    inc c                                         ; $7f7e: $0c
    ld bc, $0f80                                  ; $7f7f: $01 $80 $0f
    ld bc, $1e80                                  ; $7f82: $01 $80 $1e

jr_0c8_7f85:
    inc c                                         ; $7f85: $0c
    inc c                                         ; $7f86: $0c
    ld c, $02                                     ; $7f87: $0e $02
    ld [$0803], sp                                ; $7f89: $08 $03 $08
    ld [bc], a                                    ; $7f8c: $02
    jr jr_0c8_7f9b                                ; $7f8d: $18 $0c

    ld [$0f0d], sp                                ; $7f8f: $08 $0d $0f
    ld c, $0d                                     ; $7f92: $0e $0d
    dec c                                         ; $7f94: $0d
    ld c, $1a                                     ; $7f95: $0e $1a
    nop                                           ; $7f97: $00
    ld [de], a                                    ; $7f98: $12
    jr nc, @+$19                                  ; $7f99: $30 $17

jr_0c8_7f9b:
    jr jr_0c8_7fc0                                ; $7f9b: $18 $23

    db $10                                        ; $7f9d: $10
    ld [hl], a                                    ; $7f9e: $77
    dec c                                         ; $7f9f: $0d
    add hl, hl                                    ; $7fa0: $29
    jr z, jr_0c8_7fd7                             ; $7fa1: $28 $34

    nop                                           ; $7fa3: $00
    inc hl                                        ; $7fa4: $23
    ld [$2c0c], sp                                ; $7fa5: $08 $0c $2c
    ld [$2039], sp                                ; $7fa8: $08 $39 $20
    inc e                                         ; $7fab: $1c
    db $10                                        ; $7fac: $10
    ld l, e                                       ; $7fad: $6b

jr_0c8_7fae:
    dec c                                         ; $7fae: $0d
    add hl, sp                                    ; $7faf: $39
    ld [$180a], sp                                ; $7fb0: $08 $0a $18
    dec c                                         ; $7fb3: $0d
    inc d                                         ; $7fb4: $14
    jr jr_0c8_7fc3                                ; $7fb5: $18 $0c

    ld [hl+], a                                   ; $7fb7: $22
    db $10                                        ; $7fb8: $10
    sub d                                         ; $7fb9: $92
    ld [$0d7f], sp                                ; $7fba: $08 $7f $0d
    ld bc, $2200                                  ; $7fbd: $01 $00 $22

Call_0c8_7fc0:
jr_0c8_7fc0:
    ld [$181c], sp                                ; $7fc0: $08 $1c $18

jr_0c8_7fc3:
    ld a, e                                       ; $7fc3: $7b
    nop                                           ; $7fc4: $00
    db $10                                        ; $7fc5: $10
    db $10                                        ; $7fc6: $10
    add b                                         ; $7fc7: $80
    db $10                                        ; $7fc8: $10
    adc c                                         ; $7fc9: $89
    nop                                           ; $7fca: $00
    cp $5b                                        ; $7fcb: $fe $5b
    jr @+$15                                      ; $7fcd: $18 $13

    jr nc, @+$6e                                  ; $7fcf: $30 $6c

    jr nc, @+$6a                                  ; $7fd1: $30 $68

    ld [$0094], sp                                ; $7fd3: $08 $94 $00
    ld a, [de]                                    ; $7fd6: $1a

jr_0c8_7fd7:
    jr jr_0c8_7f85                                ; $7fd7: $18 $ac

    nop                                           ; $7fd9: $00
    bit 0, h                                      ; $7fda: $cb $44
    rst $18                                       ; $7fdc: $df
    ccf                                           ; $7fdd: $3f
    or d                                          ; $7fde: $b2
    add hl, hl                                    ; $7fdf: $29
    ld b, [hl]                                    ; $7fe0: $46
    jr jr_0c8_7fae                                ; $7fe1: $18 $cb

    ld b, h                                       ; $7fe3: $44
    cp b                                          ; $7fe4: $b8
    ld a, e                                       ; $7fe5: $7b
    db $ed                                        ; $7fe6: $ed
    ld c, c                                       ; $7fe7: $49
    jr nz, @+$1e                                  ; $7fe8: $20 $1c

    bit 0, h                                      ; $7fea: $cb $44
    cp d                                          ; $7fec: $ba
    ld l, e                                       ; $7fed: $6b
    db $ed                                        ; $7fee: $ed
    add hl, sp                                    ; $7fef: $39
    ld hl, $ff04                                  ; $7ff0: $21 $04 $ff
    ld a, a                                       ; $7ff3: $7f
    cp e                                          ; $7ff4: $bb
    ld [hl], $ef                                  ; $7ff5: $36 $ef
    ld [$0422], sp                                ; $7ff7: $08 $22 $04
    rst $38                                       ; $7ffa: $ff
    rst $38                                       ; $7ffb: $ff
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
