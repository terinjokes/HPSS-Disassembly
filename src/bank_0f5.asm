; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0f5", ROMX[$4000], BANK[$f5]

    push af                                       ; $4000: $f5
    inc de                                        ; $4001: $13
    rlca                                          ; $4002: $07
    push af                                       ; $4003: $f5
    dec bc                                        ; $4004: $0b
    ldh a, [$09]                                  ; $4005: $f0 $09
    db $e4                                        ; $4007: $e4
    db $fd                                        ; $4008: $fd
    ld hl, sp-$0b                                 ; $4009: $f8 $f5
    db $f4                                        ; $400b: $f4
    db $fd                                        ; $400c: $fd
    rst $30                                       ; $400d: $f7
    inc b                                         ; $400e: $04
    inc b                                         ; $400f: $04
    ld hl, sp+$04                                 ; $4010: $f8 $04
    nop                                           ; $4012: $00
    inc b                                         ; $4013: $04
    ld [bc], a                                    ; $4014: $02
    add c                                         ; $4015: $81
    nop                                           ; $4016: $00
    ld [bc], a                                    ; $4017: $02
    db $10                                        ; $4018: $10
    add l                                         ; $4019: $85
    jr nz, @+$12                                  ; $401a: $20 $10

    jr nz, jr_0f5_401e                            ; $401c: $20 $00

jr_0f5_401e:
    db $10                                        ; $401e: $10
    inc b                                         ; $401f: $04
    nop                                           ; $4020: $00
    sub h                                         ; $4021: $94
    ld [$4044], sp                                ; $4022: $08 $44 $40
    adc b                                         ; $4025: $88
    ld b, b                                       ; $4026: $40
    add b                                         ; $4027: $80
    nop                                           ; $4028: $00
    ld b, d                                       ; $4029: $42
    ld [bc], a                                    ; $402a: $02
    ld de, $1902                                  ; $402b: $11 $02 $19
    db $10                                        ; $402e: $10
    ld a, [bc]                                    ; $402f: $0a
    db $10                                        ; $4030: $10
    jr z, jr_0f5_4053                             ; $4031: $28 $20

    ld e, b                                       ; $4033: $58
    jr nc, jr_0f5_407e                            ; $4034: $30 $48

    inc b                                         ; $4036: $04
    ld bc, $0304                                  ; $4037: $01 $04 $03
    add e                                         ; $403a: $83
    ld [bc], a                                    ; $403b: $02
    inc bc                                        ; $403c: $03
    ld [bc], a                                    ; $403d: $02
    inc bc                                        ; $403e: $03
    inc bc                                        ; $403f: $03
    add c                                         ; $4040: $81
    inc hl                                        ; $4041: $23
    ld [bc], a                                    ; $4042: $02
    inc de                                        ; $4043: $13
    add d                                         ; $4044: $82
    ld [hl], e                                    ; $4045: $73
    ld h, c                                       ; $4046: $61
    ld [bc], a                                    ; $4047: $02
    ld hl, $e1a9                                  ; $4048: $21 $a9 $e1
    and b                                         ; $404b: $a0
    ld l, b                                       ; $404c: $68
    ldh [$ad], a                                  ; $404d: $e0 $ad
    inc h                                         ; $404f: $24
    ld e, e                                       ; $4050: $5b
    ld e, a                                       ; $4051: $5f
    ld h, b                                       ; $4052: $60

jr_0f5_4053:
    ld hl, $303e                                  ; $4053: $21 $3e $30
    ret z                                         ; $4056: $c8

    ld e, b                                       ; $4057: $58
    and h                                         ; $4058: $a4
    cp l                                          ; $4059: $bd
    jp $e39c                                      ; $405a: $c3 $9c $e3


    cp d                                          ; $405d: $ba
    push bc                                       ; $405e: $c5
    ld l, $d1                                     ; $405f: $2e $d1
    sbc a                                         ; $4061: $9f
    ldh [$1f], a                                  ; $4062: $e0 $1f
    ldh [$8e], a                                  ; $4064: $e0 $8e
    pop af                                        ; $4066: $f1
    ld e, $e1                                     ; $4067: $1e $e1
    sbc d                                         ; $4069: $9a
    push hl                                       ; $406a: $e5
    inc l                                         ; $406b: $2c
    db $d3                                        ; $406c: $d3
    adc c                                         ; $406d: $89
    rst $30                                       ; $406e: $f7
    ld bc, $a7ff                                  ; $406f: $01 $ff $a7
    rst $38                                       ; $4072: $ff
    ld [bc], a                                    ; $4073: $02
    cp $04                                        ; $4074: $fe $04
    ld b, b                                       ; $4076: $40
    adc b                                         ; $4077: $88
    jr nz, jr_0f5_40da                            ; $4078: $20 $60

    jr nz, @+$62                                  ; $407a: $20 $60

    jr nz, @+$62                                  ; $407c: $20 $60

jr_0f5_407e:
    jr nz, @+$62                                  ; $407e: $20 $60

    dec b                                         ; $4080: $05
    ld b, b                                       ; $4081: $40
    add h                                         ; $4082: $84
    ld c, h                                       ; $4083: $4c
    ld a, [bc]                                    ; $4084: $0a
    inc c                                         ; $4085: $0c
    ld b, $02                                     ; $4086: $06 $02
    inc b                                         ; $4088: $04
    adc c                                         ; $4089: $89
    daa                                           ; $408a: $27
    dec b                                         ; $408b: $05
    ld h, $25                                     ; $408c: $26 $25
    ld b, a                                       ; $408e: $47
    ld h, h                                       ; $408f: $64
    sbc d                                         ; $4090: $9a
    ld a, [$0206]                                 ; $4091: $fa $06 $02
    inc bc                                        ; $4094: $03
    ld [bc], a                                    ; $4095: $02
    nop                                           ; $4096: $00
    add [hl]                                      ; $4097: $86
    inc b                                         ; $4098: $04
    ld [bc], a                                    ; $4099: $02
    rlca                                          ; $409a: $07
    nop                                           ; $409b: $00
    ldh [rIE], a                                  ; $409c: $e0 $ff
    ld [bc], a                                    ; $409e: $02
    rra                                           ; $409f: $1f
    inc d                                         ; $40a0: $14
    nop                                           ; $40a1: $00
    add a                                         ; $40a2: $87
    and b                                         ; $40a3: $a0
    ldh [rP1], a                                  ; $40a4: $e0 $00
    ld b, b                                       ; $40a6: $40
    ld d, b                                       ; $40a7: $50
    and b                                         ; $40a8: $a0
    db $fc                                        ; $40a9: $fc
    ld [bc], a                                    ; $40aa: $02
    inc bc                                        ; $40ab: $03
    add c                                         ; $40ac: $81
    rst $38                                       ; $40ad: $ff
    ld [bc], a                                    ; $40ae: $02
    db $fc                                        ; $40af: $fc
    ld a, [de]                                    ; $40b0: $1a
    nop                                           ; $40b1: $00
    add d                                         ; $40b2: $82
    ld bc, $0203                                  ; $40b3: $01 $03 $02
    ld [bc], a                                    ; $40b6: $02
    ld d, $00                                     ; $40b7: $16 $00
    rst $38                                       ; $40b9: $ff
    rrca                                          ; $40ba: $0f
    dec b                                         ; $40bb: $05
    push af                                       ; $40bc: $f5
    dec bc                                        ; $40bd: $0b
    ldh a, [$09]                                  ; $40be: $f0 $09
    rst $20                                       ; $40c0: $e7
    db $fc                                        ; $40c1: $fc
    ld a, [$f7f5]                                 ; $40c2: $fa $f5 $f7
    db $fd                                        ; $40c5: $fd
    rst $38                                       ; $40c6: $ff
    inc b                                         ; $40c7: $04
    rlca                                          ; $40c8: $07
    db $fc                                        ; $40c9: $fc
    add h                                         ; $40ca: $84
    db $10                                        ; $40cb: $10
    ld [$1000], sp                                ; $40cc: $08 $00 $10
    dec b                                         ; $40cf: $05
    nop                                           ; $40d0: $00
    ld [bc], a                                    ; $40d1: $02
    ld [bc], a                                    ; $40d2: $02
    sub l                                         ; $40d3: $95
    ld bc, $0800                                  ; $40d4: $01 $00 $08
    nop                                           ; $40d7: $00
    jr z, jr_0f5_40da                             ; $40d8: $28 $00

jr_0f5_40da:
    ld l, b                                       ; $40da: $68
    jr nc, jr_0f5_4137                            ; $40db: $30 $5a

    jr z, @+$58                                   ; $40dd: $28 $56

    jr jr_0f5_4107                                ; $40df: $18 $26

    ld e, $22                                     ; $40e1: $1e $22
    ld [$0a14], sp                                ; $40e3: $08 $14 $0a
    ld d, $28                                     ; $40e6: $16 $28
    ld [hl], $06                                  ; $40e8: $36 $06
    ld bc, $0004                                  ; $40ea: $01 $04 $00
    sub h                                         ; $40ed: $94
    jr nz, @+$12                                  ; $40ee: $20 $10

    ld d, b                                       ; $40f0: $50
    jr nc, jr_0f5_4113                            ; $40f1: $30 $20

    ld h, b                                       ; $40f3: $60
    and b                                         ; $40f4: $a0
    ld h, b                                       ; $40f5: $60
    jr nz, @-$1a                                  ; $40f6: $20 $e4

    ldh [$a6], a                                  ; $40f8: $e0 $a6
    ld [hl+], a                                   ; $40fa: $22
    ld d, l                                       ; $40fb: $55
    ld e, a                                       ; $40fc: $5f
    ld h, b                                       ; $40fd: $60
    ld hl, $1c3e                                  ; $40fe: $21 $3e $1c
    rra                                           ; $4101: $1f
    ld [bc], a                                    ; $4102: $02
    inc bc                                        ; $4103: $03
    sub b                                         ; $4104: $90
    ld e, d                                       ; $4105: $5a
    ld h, [hl]                                    ; $4106: $66

jr_0f5_4107:
    jp c, $8de6                                   ; $4107: $da $e6 $8d

    di                                            ; $410a: $f3
    cp l                                          ; $410b: $bd
    jp $e75b                                      ; $410c: $c3 $5b $e7


    cp l                                          ; $410f: $bd
    jp $ef93                                      ; $4110: $c3 $93 $ef


jr_0f5_4113:
    adc $fe                                       ; $4113: $ce $fe
    ld [bc], a                                    ; $4115: $02
    ld a, h                                       ; $4116: $7c
    ld [bc], a                                    ; $4117: $02
    jr c, @+$05                                   ; $4118: $38 $03

    nop                                           ; $411a: $00
    sbc l                                         ; $411b: $9d
    ld bc, $1100                                  ; $411c: $01 $00 $11
    ld bc, $0190                                  ; $411f: $01 $90 $01
    sub d                                         ; $4122: $92
    sub e                                         ; $4123: $93
    ld l, h                                       ; $4124: $6c
    inc b                                         ; $4125: $04
    ld [$0c0a], sp                                ; $4126: $08 $0a $0c
    inc b                                         ; $4129: $04
    ld b, $05                                     ; $412a: $06 $05
    ld b, $04                                     ; $412c: $06 $04
    rlca                                          ; $412e: $07
    dec b                                         ; $412f: $05
    ld b, a                                       ; $4130: $47

jr_0f5_4131:
    ld b, h                                       ; $4131: $44
    ld a, [hl+]                                   ; $4132: $2a
    ld a, d                                       ; $4133: $7a
    ld b, $c4                                     ; $4134: $06 $c4
    inc a                                         ; $4136: $3c

jr_0f5_4137:
    jr c, jr_0f5_4131                             ; $4137: $38 $f8

    ld [bc], a                                    ; $4139: $02
    ret nz                                        ; $413a: $c0

    ld a, [bc]                                    ; $413b: $0a
    nop                                           ; $413c: $00
    add c                                         ; $413d: $81
    ld a, a                                       ; $413e: $7f
    ld [bc], a                                    ; $413f: $02
    nop                                           ; $4140: $00
    inc bc                                        ; $4141: $03
    ld a, a                                       ; $4142: $7f
    ld a, [de]                                    ; $4143: $1a
    nop                                           ; $4144: $00
    rst $38                                       ; $4145: $ff
    dec c                                         ; $4146: $0d
    inc b                                         ; $4147: $04
    push af                                       ; $4148: $f5
    dec bc                                        ; $4149: $0b
    ldh a, [$09]                                  ; $414a: $f0 $09
    ld [$fafc], a                                 ; $414c: $ea $fc $fa
    push af                                       ; $414f: $f5
    ld a, [$fafd]                                 ; $4150: $fa $fd $fa
    inc b                                         ; $4153: $04
    add c                                         ; $4154: $81
    nop                                           ; $4155: $00
    ld [bc], a                                    ; $4156: $02
    db $10                                        ; $4157: $10
    add c                                         ; $4158: $81
    ld [$0005], sp                                ; $4159: $08 $05 $00
    sub a                                         ; $415c: $97
    ld [$1800], sp                                ; $415d: $08 $00 $18
    db $10                                        ; $4160: $10
    jr z, jr_0f5_4173                             ; $4161: $28 $10

    jr z, jr_0f5_4191                             ; $4163: $28 $2c

    inc [hl]                                      ; $4165: $34
    ld [$1014], sp                                ; $4166: $08 $14 $10
    inc e                                         ; $4169: $1c
    ld [de], a                                    ; $416a: $12
    ld e, $2a                                     ; $416b: $1e $2a
    ld [hl], $2d                                  ; $416d: $36 $2d
    inc sp                                        ; $416f: $33
    ld e, l                                       ; $4170: $5d
    ld h, e                                       ; $4171: $63
    ld e, l                                       ; $4172: $5d

jr_0f5_4173:
    ld h, e                                       ; $4173: $63
    ld a, [bc]                                    ; $4174: $0a
    nop                                           ; $4175: $00
    adc c                                         ; $4176: $89
    jr nz, @+$12                                  ; $4177: $20 $10

    ld d, b                                       ; $4179: $50
    jr nc, jr_0f5_41dc                            ; $417a: $30 $60

    jr nz, @-$5e                                  ; $417c: $20 $a0

    ld h, b                                       ; $417e: $60
    jr nz, jr_0f5_4183                            ; $417f: $20 $02

    ldh [$89], a                                  ; $4181: $e0 $89

jr_0f5_4183:
    and l                                         ; $4183: $a5
    jr nz, jr_0f5_41e3                            ; $4184: $20 $5d

    ld e, a                                       ; $4186: $5f
    ld h, b                                       ; $4187: $60
    ld hl, $1c3e                                  ; $4188: $21 $3e $1c
    rra                                           ; $418b: $1f
    ld [bc], a                                    ; $418c: $02
    inc bc                                        ; $418d: $03
    add d                                         ; $418e: $82
    add $fe                                       ; $418f: $c6 $fe

jr_0f5_4191:
    ld [bc], a                                    ; $4191: $02
    ld a, h                                       ; $4192: $7c
    ld [bc], a                                    ; $4193: $02
    jr c, jr_0f5_41a3                             ; $4194: $38 $0d

    nop                                           ; $4196: $00
    add d                                         ; $4197: $82
    sub b                                         ; $4198: $90
    nop                                           ; $4199: $00
    ld [bc], a                                    ; $419a: $02
    sub b                                         ; $419b: $90
    add h                                         ; $419c: $84

jr_0f5_419d:
    jr z, jr_0f5_419d                             ; $419d: $28 $fe

    ld bc, $02ff                                  ; $419f: $01 $ff $02
    nop                                           ; $41a2: $00

jr_0f5_41a3:
    inc bc                                        ; $41a3: $03
    rst $38                                       ; $41a4: $ff
    ld a, [bc]                                    ; $41a5: $0a
    nop                                           ; $41a6: $00
    sub h                                         ; $41a7: $94
    inc b                                         ; $41a8: $04
    ld [$0c0a], sp                                ; $41a9: $08 $0a $0c
    inc b                                         ; $41ac: $04
    ld b, $05                                     ; $41ad: $06 $05
    ld b, $05                                     ; $41af: $06 $05
    ld h, $05                                     ; $41b1: $26 $05
    daa                                           ; $41b3: $27
    inc h                                         ; $41b4: $24
    ld c, d                                       ; $41b5: $4a
    ld l, d                                       ; $41b6: $6a
    ld d, $44                                     ; $41b7: $16 $44
    inc a                                         ; $41b9: $3c
    jr c, jr_0f5_4234                             ; $41ba: $38 $78

    ld [bc], a                                    ; $41bc: $02
    ld b, b                                       ; $41bd: $40
    rst $38                                       ; $41be: $ff
    dec bc                                        ; $41bf: $0b
    inc bc                                        ; $41c0: $03
    db $f4                                        ; $41c1: $f4
    dec bc                                        ; $41c2: $0b
    or $0d                                        ; $41c3: $f6 $0d
    db $fd                                        ; $41c5: $fd
    pop af                                        ; $41c6: $f1
    db $fd                                        ; $41c7: $fd

jr_0f5_41c8:
    ld sp, hl                                     ; $41c8: $f9
    db $fd                                        ; $41c9: $fd
    ld a, [$3902]                                 ; $41ca: $fa $02 $39
    adc d                                         ; $41cd: $8a
    ld h, [hl]                                    ; $41ce: $66
    ld a, a                                       ; $41cf: $7f
    or e                                          ; $41d0: $b3

jr_0f5_41d1:
    adc $bc                                       ; $41d1: $ce $bc
    rst $00                                       ; $41d3: $c7
    push de                                       ; $41d4: $d5
    xor $42                                       ; $41d5: $ee $42
    ld a, a                                       ; $41d7: $7f
    ld [bc], a                                    ; $41d8: $02
    dec l                                         ; $41d9: $2d
    ld [de], a                                    ; $41da: $12
    nop                                           ; $41db: $00

jr_0f5_41dc:
    ld [bc], a                                    ; $41dc: $02
    ld b, b                                       ; $41dd: $40
    adc d                                         ; $41de: $8a
    jr nc, jr_0f5_41d1                            ; $41df: $30 $f0

    xor $1e                                       ; $41e1: $ee $1e

jr_0f5_41e3:
    ld sp, hl                                     ; $41e3: $f9
    rlca                                          ; $41e4: $07
    sub e                                         ; $41e5: $93
    ld l, a                                       ; $41e6: $6f
    ld e, h                                       ; $41e7: $5c
    db $fc                                        ; $41e8: $fc
    ld [bc], a                                    ; $41e9: $02
    ret nz                                        ; $41ea: $c0

    ld a, [de]                                    ; $41eb: $1a
    nop                                           ; $41ec: $00
    ld [bc], a                                    ; $41ed: $02
    ld bc, $0016                                  ; $41ee: $01 $16 $00
    rst $38                                       ; $41f1: $ff
    dec c                                         ; $41f2: $0d
    inc b                                         ; $41f3: $04
    db $f4                                        ; $41f4: $f4
    dec bc                                        ; $41f5: $0b
    or $0d                                        ; $41f6: $f6 $0d
    db $fd                                        ; $41f8: $fd
    pop af                                        ; $41f9: $f1
    db $fd                                        ; $41fa: $fd
    ld sp, hl                                     ; $41fb: $f9
    db $fd                                        ; $41fc: $fd
    ld bc, $02fd                                  ; $41fd: $01 $fd $02
    ld [bc], a                                    ; $4200: $02
    add hl, sp                                    ; $4201: $39
    adc d                                         ; $4202: $8a
    ld h, [hl]                                    ; $4203: $66
    ld a, a                                       ; $4204: $7f
    sbc d                                         ; $4205: $9a
    rst $20                                       ; $4206: $e7
    cp l                                          ; $4207: $bd
    add $d5                                       ; $4208: $c6 $d5
    xor $42                                       ; $420a: $ee $42
    ld a, a                                       ; $420c: $7f
    ld [bc], a                                    ; $420d: $02
    dec l                                         ; $420e: $2d
    ld [de], a                                    ; $420f: $12
    nop                                           ; $4210: $00
    ld [bc], a                                    ; $4211: $02
    ld c, d                                       ; $4212: $4a
    adc d                                         ; $4213: $8a
    ld sp, $d6ff                                  ; $4214: $31 $ff $d6
    add hl, sp                                    ; $4217: $39
    rst $28                                       ; $4218: $ef
    jr nc, jr_0f5_41c8                            ; $4219: $30 $ad

    ld [hl], d                                    ; $421b: $72
    ld d, d                                       ; $421c: $52
    rst $38                                       ; $421d: $ff
    ld [bc], a                                    ; $421e: $02
    ld c, [hl]                                    ; $421f: $4e
    inc d                                         ; $4220: $14
    nop                                           ; $4221: $00
    ld [bc], a                                    ; $4222: $02
    and b                                         ; $4223: $a0
    add [hl]                                      ; $4224: $86
    ld e, a                                       ; $4225: $5f
    cp a                                          ; $4226: $bf
    db $ec                                        ; $4227: $ec
    inc d                                         ; $4228: $14
    inc bc                                        ; $4229: $03
    rst $38                                       ; $422a: $ff
    ld [bc], a                                    ; $422b: $02
    xor h                                         ; $422c: $ac
    inc e                                         ; $422d: $1c
    nop                                           ; $422e: $00
    ld [bc], a                                    ; $422f: $02
    ld bc, $0016                                  ; $4230: $01 $16 $00
    rst $38                                       ; $4233: $ff

jr_0f5_4234:
    dec c                                         ; $4234: $0d
    inc b                                         ; $4235: $04
    db $f4                                        ; $4236: $f4
    dec bc                                        ; $4237: $0b
    or $0d                                        ; $4238: $f6 $0d
    db $fd                                        ; $423a: $fd
    pop af                                        ; $423b: $f1
    db $fd                                        ; $423c: $fd
    ld sp, hl                                     ; $423d: $f9
    db $fd                                        ; $423e: $fd
    ld bc, $05fd                                  ; $423f: $01 $fd $05
    ld [bc], a                                    ; $4242: $02
    inc [hl]                                      ; $4243: $34
    adc d                                         ; $4244: $8a
    ld d, e                                       ; $4245: $53
    ld a, a                                       ; $4246: $7f
    sbc $e3                                       ; $4247: $de $e3
    cp l                                          ; $4249: $bd
    jp nz, $e7da                                  ; $424a: $c2 $da $e7

    ld d, l                                       ; $424d: $55

jr_0f5_424e:
    ld l, e                                       ; $424e: $6b
    ld [bc], a                                    ; $424f: $02
    ld a, [hl-]                                   ; $4250: $3a
    ld [de], a                                    ; $4251: $12
    nop                                           ; $4252: $00
    ld [bc], a                                    ; $4253: $02
    and [hl]                                      ; $4254: $a6
    adc d                                         ; $4255: $8a
    ld e, c                                       ; $4256: $59
    cp [hl]                                       ; $4257: $be
    rst $30                                       ; $4258: $f7
    jr jr_0f5_424e                                ; $4259: $18 $f3

    inc e                                         ; $425b: $1c
    xor a                                         ; $425c: $af
    ld e, b                                       ; $425d: $58
    ld [$02ff], sp                                ; $425e: $08 $ff $02
    ld [hl], a                                    ; $4261: $77
    ld [de], a                                    ; $4262: $12
    nop                                           ; $4263: $00
    ld [bc], a                                    ; $4264: $02
    ret nz                                        ; $4265: $c0

    adc b                                         ; $4266: $88
    ld [hl], h                                    ; $4267: $74
    db $f4                                        ; $4268: $f4
    sub e                                         ; $4269: $93
    ld l, a                                       ; $426a: $6f
    ld c, l                                       ; $426b: $4d
    or d                                          ; $426c: $b2
    inc l                                         ; $426d: $2c
    rst $18                                       ; $426e: $df
    ld [bc], a                                    ; $426f: $02
    or e                                          ; $4270: $b3
    jr jr_0f5_4273                                ; $4271: $18 $00

jr_0f5_4273:
    ld [bc], a                                    ; $4273: $02
    ld c, $02                                     ; $4274: $0e $02
    ld [$0782], sp                                ; $4276: $08 $82 $07
    rrca                                          ; $4279: $0f
    ld [bc], a                                    ; $427a: $02
    ld [$0014], sp                                ; $427b: $08 $14 $00
    rst $38                                       ; $427e: $ff
    rlca                                          ; $427f: $07
    ld bc, $0bf4                                  ; $4280: $01 $f4 $0b
    or $0d                                        ; $4283: $f6 $0d
    or $fa                                        ; $4285: $f6 $fa
    ld [bc], a                                    ; $4287: $02
    ld a, $88                                     ; $4288: $3e $88
    dec de                                        ; $428a: $1b
    rra                                           ; $428b: $1f
    dec [hl]                                      ; $428c: $35
    dec sp                                        ; $428d: $3b
    ld l, a                                       ; $428e: $6f
    ld [hl], e                                    ; $428f: $73
    ld [hl-], a                                   ; $4290: $32
    ld a, $02                                     ; $4291: $3e $02
    ld e, $14                                     ; $4293: $1e $14
    nop                                           ; $4295: $00
    rst $38                                       ; $4296: $ff
    rlca                                          ; $4297: $07
    ld bc, $0bf4                                  ; $4298: $01 $f4 $0b
    or $0d                                        ; $429b: $f6 $0d
    or $fa                                        ; $429d: $f6 $fa
    ld [bc], a                                    ; $429f: $02
    ld e, $88                                     ; $42a0: $1e $88
    inc sp                                        ; $42a2: $33
    ccf                                           ; $42a3: $3f
    ld a, l                                       ; $42a4: $7d
    ld [hl], e                                    ; $42a5: $73
    dec hl                                        ; $42a6: $2b
    scf                                           ; $42a7: $37
    ld [hl-], a                                   ; $42a8: $32
    ld a, $02                                     ; $42a9: $3e $02
    inc e                                         ; $42ab: $1c
    inc d                                         ; $42ac: $14
    nop                                           ; $42ad: $00
    rst $38                                       ; $42ae: $ff
    add hl, bc                                    ; $42af: $09
    ld [bc], a                                    ; $42b0: $02
    db $f4                                        ; $42b1: $f4
    dec bc                                        ; $42b2: $0b
    or $0d                                        ; $42b3: $f6 $0d
    push af                                       ; $42b5: $f5
    ei                                            ; $42b6: $fb
    push af                                       ; $42b7: $f5
    ld bc, $1002                                  ; $42b8: $01 $02 $10
    ld [bc], a                                    ; $42bb: $02
    inc a                                         ; $42bc: $3c
    adc b                                         ; $42bd: $88
    ld [hl], $3e                                  ; $42be: $36 $3e
    ld l, d                                       ; $42c0: $6a
    halt                                          ; $42c1: $76
    rst $18                                       ; $42c2: $df
    rst $20                                       ; $42c3: $e7
    ld h, l                                       ; $42c4: $65
    ld a, l                                       ; $42c5: $7d
    ld [bc], a                                    ; $42c6: $02
    jr c, jr_0f5_42dd                             ; $42c7: $38 $14

    nop                                           ; $42c9: $00
    ld [bc], a                                    ; $42ca: $02
    ld [$3e02], sp                                ; $42cb: $08 $02 $3e
    adc b                                         ; $42ce: $88
    dec de                                        ; $42cf: $1b
    rra                                           ; $42d0: $1f
    dec [hl]                                      ; $42d1: $35
    dec sp                                        ; $42d2: $3b
    cpl                                           ; $42d3: $2f
    inc sp                                        ; $42d4: $33
    ld [hl-], a                                   ; $42d5: $32
    ld a, $02                                     ; $42d6: $3e $02
    ld e, $10                                     ; $42d8: $1e $10
    nop                                           ; $42da: $00
    rst $38                                       ; $42db: $ff
    add hl, bc                                    ; $42dc: $09

jr_0f5_42dd:
    ld [bc], a                                    ; $42dd: $02
    db $f4                                        ; $42de: $f4
    dec bc                                        ; $42df: $0b
    or $0d                                        ; $42e0: $f6 $0d
    push af                                       ; $42e2: $f5
    ei                                            ; $42e3: $fb
    push af                                       ; $42e4: $f5
    ld [bc], a                                    ; $42e5: $02
    ld [bc], a                                    ; $42e6: $02
    db $10                                        ; $42e7: $10
    adc d                                         ; $42e8: $8a
    inc l                                         ; $42e9: $2c
    inc a                                         ; $42ea: $3c
    inc h                                         ; $42eb: $24
    inc a                                         ; $42ec: $3c
    ld a, d                                       ; $42ed: $7a
    ld h, [hl]                                    ; $42ee: $66
    sub $ee                                       ; $42ef: $d6 $ee
    ld h, l                                       ; $42f1: $65
    ld a, l                                       ; $42f2: $7d
    ld [bc], a                                    ; $42f3: $02
    inc a                                         ; $42f4: $3c
    inc d                                         ; $42f5: $14
    nop                                           ; $42f6: $00
    ld [bc], a                                    ; $42f7: $02
    db $10                                        ; $42f8: $10
    ld [bc], a                                    ; $42f9: $02
    ld a, h                                       ; $42fa: $7c
    adc b                                         ; $42fb: $88
    ld [hl], $3e                                  ; $42fc: $36 $3e
    ld l, e                                       ; $42fe: $6b
    ld [hl], a                                    ; $42ff: $77
    ld e, [hl]                                    ; $4300: $5e
    ld h, [hl]                                    ; $4301: $66
    ld h, h                                       ; $4302: $64
    ld a, h                                       ; $4303: $7c
    ld [bc], a                                    ; $4304: $02
    inc a                                         ; $4305: $3c
    stop                                          ; $4306: $10 $00
    rst $38                                       ; $4308: $ff
    dec bc                                        ; $4309: $0b
    inc bc                                        ; $430a: $03
    db $f4                                        ; $430b: $f4
    dec bc                                        ; $430c: $0b
    or $0d                                        ; $430d: $f6 $0d
    or $fb                                        ; $430f: $f6 $fb
    or $03                                        ; $4311: $f6 $03
    or $06                                        ; $4313: $f6 $06
    ld [bc], a                                    ; $4315: $02
    ld a, h                                       ; $4316: $7c
    adc b                                         ; $4317: $88
    ld h, $3e                                     ; $4318: $26 $3e
    ld c, d                                       ; $431a: $4a
    halt                                          ; $431b: $76
    rst $10                                       ; $431c: $d7
    rst $28                                       ; $431d: $ef
    ld l, l                                       ; $431e: $6d
    ld a, l                                       ; $431f: $7d
    ld [bc], a                                    ; $4320: $02
    inc a                                         ; $4321: $3c
    ld [bc], a                                    ; $4322: $02
    ld [$0012], sp                                ; $4323: $08 $12 $00
    ld [bc], a                                    ; $4326: $02
    db $10                                        ; $4327: $10
    ld [bc], a                                    ; $4328: $02
    ld hl, sp-$78                                 ; $4329: $f8 $88
    call z, $f4fc                                 ; $432b: $cc $fc $f4
    call z, $dcac                                 ; $432e: $cc $ac $dc
    ret z                                         ; $4331: $c8

    ld hl, sp+$02                                 ; $4332: $f8 $02
    ld a, c                                       ; $4334: $79
    ld [bc], a                                    ; $4335: $02
    inc hl                                        ; $4336: $23
    adc d                                         ; $4337: $8a
    ld c, $0f                                     ; $4338: $0e $0f
    dec c                                         ; $433a: $0d
    ld c, $1b                                     ; $433b: $0e $1b
    inc e                                         ; $433d: $1c
    add hl, sp                                    ; $433e: $39

Jump_0f5_433f:
    ld a, $1c                                     ; $433f: $3e $1c
    rra                                           ; $4341: $1f
    ld [bc], a                                    ; $4342: $02
    rrca                                          ; $4343: $0f
    ld [bc], a                                    ; $4344: $02
    inc bc                                        ; $4345: $03
    ld [de], a                                    ; $4346: $12
    nop                                           ; $4347: $00

Jump_0f5_4348:
    ld [bc], a                                    ; $4348: $02
    ld b, $88                                     ; $4349: $06 $88
    inc bc                                        ; $434b: $03
    rlca                                          ; $434c: $07
    dec b                                         ; $434d: $05
    inc bc                                        ; $434e: $03
    rlca                                          ; $434f: $07
    inc bc                                        ; $4350: $03
    ld [bc], a                                    ; $4351: $02
    ld b, $02                                     ; $4352: $06 $02
    rlca                                          ; $4354: $07
    ld [bc], a                                    ; $4355: $02
    inc b                                         ; $4356: $04
    ld [bc], a                                    ; $4357: $02
    nop                                           ; $4358: $00
    rst $38                                       ; $4359: $ff
    dec bc                                        ; $435a: $0b
    inc bc                                        ; $435b: $03
    db $f4                                        ; $435c: $f4
    dec bc                                        ; $435d: $0b
    or $0d                                        ; $435e: $f6 $0d
    push af                                       ; $4360: $f5
    ei                                            ; $4361: $fb
    push af                                       ; $4362: $f5
    inc bc                                        ; $4363: $03
    push af                                       ; $4364: $f5
    rlca                                          ; $4365: $07
    ld [bc], a                                    ; $4366: $02
    ld [$3c02], sp                                ; $4367: $08 $02 $3c
    adc b                                         ; $436a: $88
    ld [hl], $3e                                  ; $436b: $36 $3e
    ld l, d                                       ; $436d: $6a
    halt                                          ; $436e: $76
    sbc $e6                                       ; $436f: $de $e6
    ld h, l                                       ; $4371: $65
    ld a, l                                       ; $4372: $7d
    ld [bc], a                                    ; $4373: $02
    inc a                                         ; $4374: $3c
    ld [bc], a                                    ; $4375: $02
    db $10                                        ; $4376: $10
    ld [de], a                                    ; $4377: $12
    nop                                           ; $4378: $00
    ld [bc], a                                    ; $4379: $02
    jr nz, jr_0f5_437e                            ; $437a: $20 $02

    ld a, b                                       ; $437c: $78
    adc b                                         ; $437d: $88

jr_0f5_437e:
    ld l, h                                       ; $437e: $6c
    ld a, h                                       ; $437f: $7c
    call nc, $bcec                                ; $4380: $d4 $ec $bc
    call z, $f8c8                                 ; $4383: $cc $c8 $f8
    ld [bc], a                                    ; $4386: $02
    ld a, h                                       ; $4387: $7c
    ld [bc], a                                    ; $4388: $02
    inc de                                        ; $4389: $13
    adc d                                         ; $438a: $8a
    ld b, $07                                     ; $438b: $06 $07
    dec c                                         ; $438d: $0d
    ld c, $1d                                     ; $438e: $0e $1d
    ld e, $1b                                     ; $4390: $1e $1b
    inc e                                         ; $4392: $1c
    dec e                                         ; $4393: $1d
    ld e, $02                                     ; $4394: $1e $02
    rrca                                          ; $4396: $0f
    ld [bc], a                                    ; $4397: $02
    dec b                                         ; $4398: $05
    stop                                          ; $4399: $10 $00
    ld [bc], a                                    ; $439b: $02
    inc b                                         ; $439c: $04
    ld [bc], a                                    ; $439d: $02
    inc c                                         ; $439e: $0c
    add a                                         ; $439f: $87
    ld b, $0e                                     ; $43a0: $06 $0e
    dec bc                                        ; $43a2: $0b
    rlca                                          ; $43a3: $07
    ld c, $06                                     ; $43a4: $0e $06
    inc b                                         ; $43a6: $04
    inc bc                                        ; $43a7: $03
    inc c                                         ; $43a8: $0c
    ld [bc], a                                    ; $43a9: $02
    ld [$0bff], sp                                ; $43aa: $08 $ff $0b
    inc bc                                        ; $43ad: $03
    db $f4                                        ; $43ae: $f4
    dec bc                                        ; $43af: $0b
    or $0d                                        ; $43b0: $f6 $0d
    push af                                       ; $43b2: $f5
    ei                                            ; $43b3: $fb
    push af                                       ; $43b4: $f5
    inc bc                                        ; $43b5: $03
    push af                                       ; $43b6: $f5
    rlca                                          ; $43b7: $07
    ld [bc], a                                    ; $43b8: $02
    db $10                                        ; $43b9: $10
    ld [bc], a                                    ; $43ba: $02
    inc a                                         ; $43bb: $3c
    adc b                                         ; $43bc: $88
    halt                                          ; $43bd: $76
    ld a, [hl]                                    ; $43be: $7e
    ld e, e                                       ; $43bf: $5b
    ld h, a                                       ; $43c0: $67
    sub $ee                                       ; $43c1: $d6 $ee
    ld l, l                                       ; $43c3: $6d
    ld a, l                                       ; $43c4: $7d
    ld [bc], a                                    ; $43c5: $02
    inc a                                         ; $43c6: $3c
    inc d                                         ; $43c7: $14
    nop                                           ; $43c8: $00
    ld [bc], a                                    ; $43c9: $02
    jr nz, jr_0f5_43ce                            ; $43ca: $20 $02

    ld a, b                                       ; $43cc: $78
    adc b                                         ; $43cd: $88

jr_0f5_43ce:
    ld c, h                                       ; $43ce: $4c
    ld a, h                                       ; $43cf: $7c
    db $f4                                        ; $43d0: $f4
    call z, $dcac                                 ; $43d1: $cc $ac $dc
    ret z                                         ; $43d4: $c8

    ld hl, sp+$02                                 ; $43d5: $f8 $02
    ld a, c                                       ; $43d7: $79
    ld [bc], a                                    ; $43d8: $02
    inc hl                                        ; $43d9: $23
    adc h                                         ; $43da: $8c
    ld b, $07                                     ; $43db: $06 $07
    inc c                                         ; $43dd: $0c
    rrca                                          ; $43de: $0f
    add hl, bc                                    ; $43df: $09
    ld c, $1b                                     ; $43e0: $0e $1b
    inc e                                         ; $43e2: $1c
    dec e                                         ; $43e3: $1d
    ld e, $0e                                     ; $43e4: $1e $0e
    rrca                                          ; $43e6: $0f
    ld [bc], a                                    ; $43e7: $02
    inc bc                                        ; $43e8: $03
    stop                                          ; $43e9: $10 $00
    ld [bc], a                                    ; $43eb: $02
    ld [$0c02], sp                                ; $43ec: $08 $02 $0c
    add a                                         ; $43ef: $87
    ld b, $0e                                     ; $43f0: $06 $0e
    dec bc                                        ; $43f2: $0b
    rlca                                          ; $43f3: $07
    ld a, [bc]                                    ; $43f4: $0a
    ld b, $04                                     ; $43f5: $06 $04

jr_0f5_43f7:
    inc bc                                        ; $43f7: $03
    inc c                                         ; $43f8: $0c
    ld [bc], a                                    ; $43f9: $02
    ld [$0dff], sp                                ; $43fa: $08 $ff $0d
    inc b                                         ; $43fd: $04
    db $f4                                        ; $43fe: $f4
    dec bc                                        ; $43ff: $0b
    or $0d                                        ; $4400: $f6 $0d
    push af                                       ; $4402: $f5
    ei                                            ; $4403: $fb
    or $03                                        ; $4404: $f6 $03
    cp $06                                        ; $4406: $fe $06
    dec b                                         ; $4408: $05
    cp $02                                        ; $4409: $fe $02
    ld [$7c02], sp                                ; $440b: $08 $02 $7c
    adc b                                         ; $440e: $88
    ld [hl], $3e                                  ; $440f: $36 $3e
    ld l, d                                       ; $4411: $6a
    halt                                          ; $4412: $76
    sbc $e6                                       ; $4413: $de $e6
    ld h, l                                       ; $4415: $65
    ld a, l                                       ; $4416: $7d
    ld [bc], a                                    ; $4417: $02
    inc a                                         ; $4418: $3c
    ld [de], a                                    ; $4419: $12
    nop                                           ; $441a: $00
    ld [bc], a                                    ; $441b: $02
    jr nz, jr_0f5_4420                            ; $441c: $20 $02

    ld hl, sp-$78                                 ; $441e: $f8 $88

jr_0f5_4420:
    ld l, h                                       ; $4420: $6c
    ld a, h                                       ; $4421: $7c
    sub $ee                                       ; $4422: $d6 $ee
    cp h                                          ; $4424: $bc
    call z, $f8c8                                 ; $4425: $cc $c8 $f8
    ld [bc], a                                    ; $4428: $02
    ld a, l                                       ; $4429: $7d
    ld [bc], a                                    ; $442a: $02
    rla                                           ; $442b: $17
    adc d                                         ; $442c: $8a

jr_0f5_442d:
    ld c, $0f                                     ; $442d: $0e $0f
    dec c                                         ; $442f: $0d
    ld c, $1d                                     ; $4430: $0e $1d
    ld e, $1b                                     ; $4432: $1e $1b
    inc e                                         ; $4434: $1c
    dec e                                         ; $4435: $1d
    ld e, $02                                     ; $4436: $1e $02
    rrca                                          ; $4438: $0f
    ld [bc], a                                    ; $4439: $02
    cp e                                          ; $443a: $bb
    add d                                         ; $443b: $82
    db $ec                                        ; $443c: $ec
    db $fc                                        ; $443d: $fc
    ld [bc], a                                    ; $443e: $02
    ld b, $88                                     ; $443f: $06 $88
    inc bc                                        ; $4441: $03

jr_0f5_4442:
    rlca                                          ; $4442: $07
    dec b                                         ; $4443: $05
    inc bc                                        ; $4444: $03
    rlca                                          ; $4445: $07
    inc bc                                        ; $4446: $03
    ld [bc], a                                    ; $4447: $02
    ld b, $02                                     ; $4448: $06 $02
    rlca                                          ; $444a: $07
    ld [bc], a                                    ; $444b: $02
    inc b                                         ; $444c: $04
    ld [bc], a                                    ; $444d: $02
    nop                                           ; $444e: $00
    add a                                         ; $444f: $87
    jr nc, jr_0f5_4442                            ; $4450: $30 $f0

    ret nc                                        ; $4452: $d0

    jr nc, jr_0f5_442d                            ; $4453: $30 $d8

    jr c, jr_0f5_43f7                             ; $4455: $38 $a0

    ld [bc], a                                    ; $4457: $02
    ld h, b                                       ; $4458: $60
    add c                                         ; $4459: $81
    ldh [rSC], a                                  ; $445a: $e0 $02
    ret nz                                        ; $445c: $c0

    ld [bc], a                                    ; $445d: $02
    add b                                         ; $445e: $80
    inc b                                         ; $445f: $04
    nop                                           ; $4460: $00
    add l                                         ; $4461: $85
    ld b, $07                                     ; $4462: $06 $07
    inc e                                         ; $4464: $1c
    rra                                           ; $4465: $1f
    dec c                                         ; $4466: $0d
    ld [bc], a                                    ; $4467: $02
    ld c, $81                                     ; $4468: $0e $81
    rrca                                          ; $446a: $0f
    ld [bc], a                                    ; $446b: $02
    rlca                                          ; $446c: $07
    ld [bc], a                                    ; $446d: $02
    ld bc, $0012                                  ; $446e: $01 $12 $00
    rst $38                                       ; $4471: $ff
    dec c                                         ; $4472: $0d
    inc b                                         ; $4473: $04
    db $f4                                        ; $4474: $f4
    dec bc                                        ; $4475: $0b
    or $0d                                        ; $4476: $f6 $0d
    push af                                       ; $4478: $f5
    ei                                            ; $4479: $fb
    or $03                                        ; $447a: $f6 $03
    db $fd                                        ; $447c: $fd
    ld b, $05                                     ; $447d: $06 $05
    cp $02                                        ; $447f: $fe $02
    db $10                                        ; $4481: $10
    ld [bc], a                                    ; $4482: $02
    ld a, h                                       ; $4483: $7c
    adc b                                         ; $4484: $88
    ld h, $3e                                     ; $4485: $26 $3e
    ld a, e                                       ; $4487: $7b
    ld h, a                                       ; $4488: $67
    sub $ee                                       ; $4489: $d6 $ee
    ld h, h                                       ; $448b: $64
    ld a, h                                       ; $448c: $7c
    ld [bc], a                                    ; $448d: $02
    jr c, jr_0f5_44a2                             ; $448e: $38 $12

    nop                                           ; $4490: $00
    ld [bc], a                                    ; $4491: $02
    jr nz, jr_0f5_4496                            ; $4492: $20 $02

    ld a, b                                       ; $4494: $78
    adc b                                         ; $4495: $88

jr_0f5_4496:
    ld c, h                                       ; $4496: $4c
    ld a, h                                       ; $4497: $7c

Jump_0f5_4498:
    db $f4                                        ; $4498: $f4
    call z, $deae                                 ; $4499: $cc $ae $de
    ret z                                         ; $449c: $c8

    ld hl, sp+$02                                 ; $449d: $f8 $02
    ld a, c                                       ; $449f: $79
    ld [bc], a                                    ; $44a0: $02
    inc hl                                        ; $44a1: $23

jr_0f5_44a2:
    adc h                                         ; $44a2: $8c
    ld b, $07                                     ; $44a3: $06 $07
    inc e                                         ; $44a5: $1c
    rra                                           ; $44a6: $1f
    add hl, bc                                    ; $44a7: $09
    ld c, $1b                                     ; $44a8: $0e $1b
    inc e                                         ; $44aa: $1c
    dec e                                         ; $44ab: $1d
    ld e, $2e                                     ; $44ac: $1e $2e
    cpl                                           ; $44ae: $2f
    ld [bc], a                                    ; $44af: $02
    ld [hl], e                                    ; $44b0: $73
    add d                                         ; $44b1: $82
    db $ec                                        ; $44b2: $ec
    db $fc                                        ; $44b3: $fc
    ld [bc], a                                    ; $44b4: $02
    inc b                                         ; $44b5: $04
    ld [bc], a                                    ; $44b6: $02
    ld b, $88                                     ; $44b7: $06 $88
    inc bc                                        ; $44b9: $03
    rlca                                          ; $44ba: $07
    dec b                                         ; $44bb: $05
    inc bc                                        ; $44bc: $03

jr_0f5_44bd:
    dec b                                         ; $44bd: $05
    inc bc                                        ; $44be: $03
    ld [bc], a                                    ; $44bf: $02
    ld b, $02                                     ; $44c0: $06 $02
    rlca                                          ; $44c2: $07
    ld [bc], a                                    ; $44c3: $02
    inc b                                         ; $44c4: $04
    ld [bc], a                                    ; $44c5: $02
    nop                                           ; $44c6: $00
    add a                                         ; $44c7: $87
    or b                                          ; $44c8: $b0
    ld [hl], b                                    ; $44c9: $70
    ret c                                         ; $44ca: $d8

    jr c, jr_0f5_44bd                             ; $44cb: $38 $f0

    jr nc, jr_0f5_44ef                            ; $44cd: $30 $20

    inc bc                                        ; $44cf: $03
    ldh [rSC], a                                  ; $44d0: $e0 $02
    ret nz                                        ; $44d2: $c0

    ld [bc], a                                    ; $44d3: $02
    nop                                           ; $44d4: $00
    ld [bc], a                                    ; $44d5: $02
    ld [$0688], sp                                ; $44d6: $08 $88 $06
    rlca                                          ; $44d9: $07
    dec c                                         ; $44da: $0d
    ld c, $0c                                     ; $44db: $0e $0c
    rrca                                          ; $44dd: $0f
    ld c, $0f                                     ; $44de: $0e $0f
    ld [bc], a                                    ; $44e0: $02
    rlca                                          ; $44e1: $07
    ld [bc], a                                    ; $44e2: $02

jr_0f5_44e3:
    ld bc, $0012                                  ; $44e3: $01 $12 $00
    rst $38                                       ; $44e6: $ff
    dec c                                         ; $44e7: $0d
    inc b                                         ; $44e8: $04
    db $f4                                        ; $44e9: $f4
    dec bc                                        ; $44ea: $0b
    or $0d                                        ; $44eb: $f6 $0d
    push af                                       ; $44ed: $f5
    ei                                            ; $44ee: $fb

jr_0f5_44ef:
    or $03                                        ; $44ef: $f6 $03
    db $fd                                        ; $44f1: $fd
    ld b, $05                                     ; $44f2: $06 $05
    cp $02                                        ; $44f4: $fe $02
    ld [$3c02], sp                                ; $44f6: $08 $02 $3c
    adc b                                         ; $44f9: $88
    ld [hl], $3e                                  ; $44fa: $36 $3e
    ld e, e                                       ; $44fc: $5b
    ld h, a                                       ; $44fd: $67
    sub $ee                                       ; $44fe: $d6 $ee
    ld l, l                                       ; $4500: $6d
    ld a, l                                       ; $4501: $7d
    ld [bc], a                                    ; $4502: $02
    inc a                                         ; $4503: $3c
    ld [de], a                                    ; $4504: $12
    nop                                           ; $4505: $00
    ld [bc], a                                    ; $4506: $02
    jr nz, jr_0f5_450b                            ; $4507: $20 $02

    ld a, b                                       ; $4509: $78
    adc b                                         ; $450a: $88

jr_0f5_450b:
    ld l, h                                       ; $450b: $6c
    ld a, h                                       ; $450c: $7c
    or [hl]                                       ; $450d: $b6
    adc $ac                                       ; $450e: $ce $ac
    call c, $f8d8                                 ; $4510: $dc $d8 $f8
    ld [bc], a                                    ; $4513: $02
    ld [hl], b                                    ; $4514: $70
    ld [bc], a                                    ; $4515: $02
    dec de                                        ; $4516: $1b
    adc d                                         ; $4517: $8a
    ld c, $0f                                     ; $4518: $0e $0f
    dec c                                         ; $451a: $0d
    ld c, $3b                                     ; $451b: $0e $3b
    inc a                                         ; $451d: $3c
    add hl, de                                    ; $451e: $19
    ld e, $1c                                     ; $451f: $1e $1c
    rra                                           ; $4521: $1f
    ld [bc], a                                    ; $4522: $02
    cpl                                           ; $4523: $2f
    ld [bc], a                                    ; $4524: $02
    or e                                          ; $4525: $b3
    add d                                         ; $4526: $82
    db $ec                                        ; $4527: $ec
    db $fc                                        ; $4528: $fc
    ld [bc], a                                    ; $4529: $02
    ld [bc], a                                    ; $452a: $02
    ld [bc], a                                    ; $452b: $02
    ld b, $87                                     ; $452c: $06 $87
    inc bc                                        ; $452e: $03
    rlca                                          ; $452f: $07
    dec b                                         ; $4530: $05

jr_0f5_4531:
    inc bc                                        ; $4531: $03
    rlca                                          ; $4532: $07
    inc bc                                        ; $4533: $03
    ld [bc], a                                    ; $4534: $02
    inc bc                                        ; $4535: $03
    ld b, $02                                     ; $4536: $06 $02
    inc b                                         ; $4538: $04
    ld [bc], a                                    ; $4539: $02
    nop                                           ; $453a: $00
    adc b                                         ; $453b: $88
    or b                                          ; $453c: $b0
    ld [hl], b                                    ; $453d: $70
    ret c                                         ; $453e: $d8

    jr c, jr_0f5_4531                             ; $453f: $38 $f0

    jr nc, jr_0f5_44e3                            ; $4541: $30 $a0

    ld h, b                                       ; $4543: $60
    ld [bc], a                                    ; $4544: $02
    ldh a, [rSC]                                  ; $4545: $f0 $02
    ret nz                                        ; $4547: $c0

    inc b                                         ; $4548: $04
    nop                                           ; $4549: $00
    adc b                                         ; $454a: $88
    ld b, $07                                     ; $454b: $06 $07
    ld c, $0f                                     ; $454d: $0e $0f
    dec e                                         ; $454f: $1d
    ld e, $0e                                     ; $4550: $1e $0e
    rrca                                          ; $4552: $0f
    ld [bc], a                                    ; $4553: $02
    rlca                                          ; $4554: $07
    ld [bc], a                                    ; $4555: $02
    ld [bc], a                                    ; $4556: $02
    ld [de], a                                    ; $4557: $12
    nop                                           ; $4558: $00
    rst $38                                       ; $4559: $ff
    ld de, $f406                                  ; $455a: $11 $06 $f4
    dec bc                                        ; $455d: $0b
    or $0d                                        ; $455e: $f6 $0d
    or $f9                                        ; $4560: $f6 $f9
    or $01                                        ; $4562: $f6 $01
    ld sp, hl                                     ; $4564: $f9
    rlca                                          ; $4565: $07
    ld b, $f8                                     ; $4566: $06 $f8
    ld b, $00                                     ; $4568: $06 $00
    ld b, $02                                     ; $456a: $06 $02
    ld [bc], a                                    ; $456c: $02
    rra                                           ; $456d: $1f
    adc b                                         ; $456e: $88
    dec c                                         ; $456f: $0d
    rrca                                          ; $4570: $0f
    ld a, [de]                                    ; $4571: $1a
    dec e                                         ; $4572: $1d
    scf                                           ; $4573: $37
    add hl, sp                                    ; $4574: $39
    add hl, de                                    ; $4575: $19
    rra                                           ; $4576: $1f
    ld [bc], a                                    ; $4577: $02
    ld c, $0e                                     ; $4578: $0e $0e
    nop                                           ; $457a: $00
    ld [bc], a                                    ; $457b: $02
    dec c                                         ; $457c: $0d
    ld [bc], a                                    ; $457d: $02
    ld e, [hl]                                    ; $457e: $5e
    add d                                         ; $457f: $82
    ld sp, hl                                     ; $4580: $f9
    rst $38                                       ; $4581: $ff
    ld [bc], a                                    ; $4582: $02
    inc b                                         ; $4583: $04
    ld [bc], a                                    ; $4584: $02
    cp [hl]                                       ; $4585: $be
    add a                                         ; $4586: $87
    sub e                                         ; $4587: $93
    sbc a                                         ; $4588: $9f
    cp l                                          ; $4589: $bd
    or e                                          ; $458a: $b3
    ld l, e                                       ; $458b: $6b
    ld [hl], a                                    ; $458c: $77
    ld [hl-], a                                   ; $458d: $32
    inc bc                                        ; $458e: $03
    ld a, $02                                     ; $458f: $3e $02
    ld [$0702], sp                                ; $4591: $08 $02 $07
    ld [bc], a                                    ; $4594: $02
    inc bc                                        ; $4595: $03
    ld [bc], a                                    ; $4596: $02
    rlca                                          ; $4597: $07
    add c                                         ; $4598: $81
    ld b, $03                                     ; $4599: $06 $03
    rlca                                          ; $459b: $07
    ld [bc], a                                    ; $459c: $02
    inc de                                        ; $459d: $13
    ld [bc], a                                    ; $459e: $02
    ld a, $82                                     ; $459f: $3e $82
    sbc e                                         ; $45a1: $9b
    sbc a                                         ; $45a2: $9f
    ld [bc], a                                    ; $45a3: $02
    jr nz, jr_0f5_45aa                            ; $45a4: $20 $04

    nop                                           ; $45a6: $00
    ld [bc], a                                    ; $45a7: $02
    jr nz, jr_0f5_45ac                            ; $45a8: $20 $02

jr_0f5_45aa:
    inc [hl]                                      ; $45aa: $34
    adc d                                         ; $45ab: $8a

jr_0f5_45ac:
    inc l                                         ; $45ac: $2c
    inc a                                         ; $45ad: $3c
    ld d, $2e                                     ; $45ae: $16 $2e
    dec de                                        ; $45b0: $1b
    daa                                           ; $45b1: $27
    ld a, $06                                     ; $45b2: $3e $06
    inc d                                         ; $45b4: $14
    inc l                                         ; $45b5: $2c
    ld [bc], a                                    ; $45b6: $02
    inc a                                         ; $45b7: $3c
    ld [bc], a                                    ; $45b8: $02
    jr jr_0f5_45bd                                ; $45b9: $18 $02

    nop                                           ; $45bb: $00
    sub d                                         ; $45bc: $92

jr_0f5_45bd:
    ld [hl], b                                    ; $45bd: $70
    ldh a, [$a0]                                  ; $45be: $f0 $a0
    ld h, b                                       ; $45c0: $60
    or b                                          ; $45c1: $b0
    ld [hl], b                                    ; $45c2: $70
    ld [hl], c                                    ; $45c3: $71
    ld a, [hl]                                    ; $45c4: $7e
    rst $00                                       ; $45c5: $c7
    ld hl, sp-$11                                 ; $45c6: $f8 $ef

jr_0f5_45c8:
    ldh a, [$c7]                                  ; $45c8: $f0 $c7
    ld hl, sp+$74                                 ; $45ca: $f8 $74
    ld a, e                                       ; $45cc: $7b
    jp hl                                         ; $45cd: $e9


    rst $38                                       ; $45ce: $ff
    ld [bc], a                                    ; $45cf: $02
    ld a, $02                                     ; $45d0: $3e $02
    inc c                                         ; $45d2: $0c
    stop                                          ; $45d3: $10 $00
    adc d                                         ; $45d5: $8a
    ld a, b                                       ; $45d6: $78
    cp $32                                        ; $45d7: $fe $32
    db $fc                                        ; $45d9: $fc
    or [hl]                                       ; $45da: $b6
    ld a, b                                       ; $45db: $78
    ld a, d                                       ; $45dc: $7a
    db $fd                                        ; $45dd: $fd
    db $dd                                        ; $45de: $dd
    rst $18                                       ; $45df: $df
    ld [bc], a                                    ; $45e0: $02
    rst $20                                       ; $45e1: $e7
    ld [bc], a                                    ; $45e2: $02
    add b                                         ; $45e3: $80
    jr jr_0f5_45e6                                ; $45e4: $18 $00

jr_0f5_45e6:
    inc b                                         ; $45e6: $04
    ld [bc], a                                    ; $45e7: $02
    ld [bc], a                                    ; $45e8: $02
    ld bc, $0014                                  ; $45e9: $01 $14 $00
    rst $38                                       ; $45ec: $ff
    rrca                                          ; $45ed: $0f
    dec b                                         ; $45ee: $05
    db $f4                                        ; $45ef: $f4
    dec bc                                        ; $45f0: $0b
    or $0d                                        ; $45f1: $f6 $0d
    or $fa                                        ; $45f3: $f6 $fa
    or $02                                        ; $45f5: $f6 $02
    db $fc                                        ; $45f7: $fc
    rlca                                          ; $45f8: $07
    ld b, $f8                                     ; $45f9: $06 $f8
    ld b, $ff                                     ; $45fb: $06 $ff
    ld [bc], a                                    ; $45fd: $02
    ld a, $88                                     ; $45fe: $3e $88
    dec de                                        ; $4600: $1b
    rra                                           ; $4601: $1f
    dec l                                         ; $4602: $2d
    inc sp                                        ; $4603: $33
    ld l, e                                       ; $4604: $6b
    ld [hl], a                                    ; $4605: $77
    ld [hl], $3e                                  ; $4606: $36 $3e
    ld [bc], a                                    ; $4608: $02
    inc e                                         ; $4609: $1c
    ld c, $00                                     ; $460a: $0e $00
    ld [bc], a                                    ; $460c: $02
    ld [$6d02], sp                                ; $460d: $08 $02 $6d
    add d                                         ; $4610: $82
    db $d3                                        ; $4611: $d3
    rst $38                                       ; $4612: $ff
    ld [bc], a                                    ; $4613: $02
    jr jr_0f5_4618                                ; $4614: $18 $02

    ld a, h                                       ; $4616: $7c
    adc b                                         ; $4617: $88

jr_0f5_4618:
    or [hl]                                       ; $4618: $b6
    cp [hl]                                       ; $4619: $be
    ld e, e                                       ; $461a: $5b
    ld h, a                                       ; $461b: $67
    sub $ee                                       ; $461c: $d6 $ee
    ld l, [hl]                                    ; $461e: $6e
    ld a, [hl]                                    ; $461f: $7e
    ld [bc], a                                    ; $4620: $02
    inc a                                         ; $4621: $3c
    ld [bc], a                                    ; $4622: $02
    inc de                                        ; $4623: $13
    ld [bc], a                                    ; $4624: $02
    inc bc                                        ; $4625: $03
    add l                                         ; $4626: $85
    ld c, $0f                                     ; $4627: $0e $0f
    inc b                                         ; $4629: $04
    rlca                                          ; $462a: $07
    dec c                                         ; $462b: $0d
    ld [bc], a                                    ; $462c: $02
    ld c, $81                                     ; $462d: $0e $81
    rrca                                          ; $462f: $0f
    ld [bc], a                                    ; $4630: $02
    daa                                           ; $4631: $27
    ld [bc], a                                    ; $4632: $02
    add hl, sp                                    ; $4633: $39
    add d                                         ; $4634: $82
    halt                                          ; $4635: $76
    ld a, [hl]                                    ; $4636: $7e
    ld [bc], a                                    ; $4637: $02
    db $10                                        ; $4638: $10
    ld [bc], a                                    ; $4639: $02
    jr jr_0f5_45c8                                ; $463a: $18 $8c

    ld c, $1e                                     ; $463c: $0e $1e
    ld b, $1e                                     ; $463e: $06 $1e
    dec de                                        ; $4640: $1b
    rlca                                          ; $4641: $07
    ld a, [de]                                    ; $4642: $1a
    ld b, $14                                     ; $4643: $06 $14
    inc c                                         ; $4645: $0c
    ld c, $1e                                     ; $4646: $0e $1e
    ld [bc], a                                    ; $4648: $02
    jr jr_0f5_464d                                ; $4649: $18 $02

    nop                                           ; $464b: $00
    add a                                         ; $464c: $87

jr_0f5_464d:
    ld h, b                                       ; $464d: $60
    ldh [$b0], a                                  ; $464e: $e0 $b0
    ld [hl], b                                    ; $4650: $70
    ldh [$60], a                                  ; $4651: $e0 $60
    ld b, b                                       ; $4653: $40
    inc bc                                        ; $4654: $03
    ret nz                                        ; $4655: $c0

    ld [bc], a                                    ; $4656: $02
    add b                                         ; $4657: $80
    adc h                                         ; $4658: $8c
    ld [hl], e                                    ; $4659: $73
    ld a, h                                       ; $465a: $7c
    rst $28                                       ; $465b: $ef
    ldh a, [rVBK]                                 ; $465c: $f0 $4f
    ld [hl], b                                    ; $465e: $70
    rst $18                                       ; $465f: $df
    ldh [$64], a                                  ; $4660: $e0 $64
    ld a, e                                       ; $4662: $7b
    ld l, e                                       ; $4663: $6b
    ld a, a                                       ; $4664: $7f
    ld [bc], a                                    ; $4665: $02
    scf                                           ; $4666: $37
    ld [bc], a                                    ; $4667: $02
    ld [hl+], a                                   ; $4668: $22
    stop                                          ; $4669: $10 $00
    adc b                                         ; $466b: $88
    dec a                                         ; $466c: $3d
    ld a, [hl]                                    ; $466d: $7e
    ld e, e                                       ; $466e: $5b
    inc a                                         ; $466f: $3c
    ld e, c                                       ; $4670: $59
    ld a, $3c                                     ; $4671: $3e $3c
    ld a, a                                       ; $4673: $7f
    ld [bc], a                                    ; $4674: $02
    ld l, a                                       ; $4675: $6f
    ld [bc], a                                    ; $4676: $02
    ld h, e                                       ; $4677: $63
    ld [bc], a                                    ; $4678: $02
    jr nz, jr_0f5_468d                            ; $4679: $20 $12

    nop                                           ; $467b: $00
    rst $38                                       ; $467c: $ff
    rrca                                          ; $467d: $0f
    dec b                                         ; $467e: $05
    db $f4                                        ; $467f: $f4
    dec bc                                        ; $4680: $0b
    or $0d                                        ; $4681: $f6 $0d
    push af                                       ; $4683: $f5
    ei                                            ; $4684: $fb
    or $03                                        ; $4685: $f6 $03
    db $fd                                        ; $4687: $fd
    rlca                                          ; $4688: $07
    dec b                                         ; $4689: $05
    ld hl, sp+$05                                 ; $468a: $f8 $05
    rst $38                                       ; $468c: $ff

jr_0f5_468d:
    ld [bc], a                                    ; $468d: $02
    ld [$7c02], sp                                ; $468e: $08 $02 $7c
    adc b                                         ; $4691: $88
    ld h, $3e                                     ; $4692: $26 $3e
    ld a, e                                       ; $4694: $7b
    ld h, a                                       ; $4695: $67
    sub $ee                                       ; $4696: $d6 $ee
    ld h, l                                       ; $4698: $65
    ld a, l                                       ; $4699: $7d
    ld [bc], a                                    ; $469a: $02
    inc a                                         ; $469b: $3c
    ld c, $00                                     ; $469c: $0e $00
    ld [bc], a                                    ; $469e: $02
    inc e                                         ; $469f: $1c
    ld [bc], a                                    ; $46a0: $02
    cp b                                          ; $46a1: $b8
    ld [bc], a                                    ; $46a2: $02
    jr nc, jr_0f5_46a7                            ; $46a3: $30 $02

    ld hl, sp-$78                                 ; $46a5: $f8 $88

jr_0f5_46a7:
    ld c, h                                       ; $46a7: $4c
    ld a, h                                       ; $46a8: $7c
    or $ce                                        ; $46a9: $f6 $ce
    xor h                                         ; $46ab: $ac
    call c, $f8c8                                 ; $46ac: $dc $c8 $f8
    ld [bc], a                                    ; $46af: $02
    ld a, d                                       ; $46b0: $7a
    ld [bc], a                                    ; $46b1: $02
    daa                                           ; $46b2: $27
    adc d                                         ; $46b3: $8a
    ld e, $1f                                     ; $46b4: $1e $1f
    dec c                                         ; $46b6: $0d
    ld c, $1b                                     ; $46b7: $0e $1b
    inc e                                         ; $46b9: $1c
    add hl, sp                                    ; $46ba: $39
    ld a, $1c                                     ; $46bb: $3e $1c
    rra                                           ; $46bd: $1f
    ld [bc], a                                    ; $46be: $02
    rrca                                          ; $46bf: $0f
    ld [bc], a                                    ; $46c0: $02
    inc sp                                        ; $46c1: $33
    add d                                         ; $46c2: $82
    db $ec                                        ; $46c3: $ec
    db $fc                                        ; $46c4: $fc
    ld [bc], a                                    ; $46c5: $02
    inc b                                         ; $46c6: $04
    ld [bc], a                                    ; $46c7: $02
    inc c                                         ; $46c8: $0c
    adc b                                         ; $46c9: $88
    ld b, $0e                                     ; $46ca: $06 $0e
    dec bc                                        ; $46cc: $0b
    rlca                                          ; $46cd: $07
    ld c, $06                                     ; $46ce: $0e $06
    inc b                                         ; $46d0: $04
    inc c                                         ; $46d1: $0c
    ld [bc], a                                    ; $46d2: $02
    ld c, $02                                     ; $46d3: $0e $02
    ld [$0002], sp                                ; $46d5: $08 $02 $00
    add a                                         ; $46d8: $87
    ld h, b                                       ; $46d9: $60
    ldh [$b0], a                                  ; $46da: $e0 $b0
    ld [hl], b                                    ; $46dc: $70
    ldh [$60], a                                  ; $46dd: $e0 $60
    ld b, b                                       ; $46df: $40
    inc bc                                        ; $46e0: $03
    ret nz                                        ; $46e1: $c0

    ld [bc], a                                    ; $46e2: $02
    add b                                         ; $46e3: $80
    ld [bc], a                                    ; $46e4: $02
    nop                                           ; $46e5: $00
    adc [hl]                                      ; $46e6: $8e
    inc a                                         ; $46e7: $3c
    ccf                                           ; $46e8: $3f
    ld h, e                                       ; $46e9: $63
    ld a, h                                       ; $46ea: $7c
    rst $08                                       ; $46eb: $cf
    ldh a, [$6f]                                  ; $46ec: $f0 $6f
    ld [hl], b                                    ; $46ee: $70
    rst $00                                       ; $46ef: $c7
    ld hl, sp-$06                                 ; $46f0: $f8 $fa
    push af                                       ; $46f2: $f5
    ld h, c                                       ; $46f3: $61
    ld a, a                                       ; $46f4: $7f
    ld [bc], a                                    ; $46f5: $02
    scf                                           ; $46f6: $37
    ld [bc], a                                    ; $46f7: $02
    ld [de], a                                    ; $46f8: $12
    ld c, $00                                     ; $46f9: $0e $00
    ld [bc], a                                    ; $46fb: $02
    ld h, b                                       ; $46fc: $60
    adc d                                         ; $46fd: $8a
    dec a                                         ; $46fe: $3d
    ld a, [hl]                                    ; $46ff: $7e
    ld e, l                                       ; $4700: $5d
    ld a, $1b                                     ; $4701: $3e $1b
    ld a, h                                       ; $4703: $7c
    dec a                                         ; $4704: $3d
    ld a, [hl]                                    ; $4705: $7e
    cpl                                           ; $4706: $2f
    ld l, a                                       ; $4707: $6f
    ld [bc], a                                    ; $4708: $02
    ld h, l                                       ; $4709: $65
    ld [bc], a                                    ; $470a: $02
    jr nz, @+$12                                  ; $470b: $20 $10

    nop                                           ; $470d: $00
    rst $38                                       ; $470e: $ff
    inc de                                        ; $470f: $13
    rlca                                          ; $4710: $07
    db $f4                                        ; $4711: $f4
    dec bc                                        ; $4712: $0b
    or $0d                                        ; $4713: $f6 $0d
    ld a, [$f5f1]                                 ; $4715: $fa $f1 $f5
    ld sp, hl                                     ; $4718: $f9
    or $01                                        ; $4719: $f6 $01
    ld sp, hl                                     ; $471b: $f9
    ld b, $05                                     ; $471c: $06 $05
    ld sp, hl                                     ; $471e: $f9
    dec b                                         ; $471f: $05
    ld bc, $0205                                  ; $4720: $01 $05 $02
    ld [bc], a                                    ; $4723: $02
    dec b                                         ; $4724: $05
    ld [bc], a                                    ; $4725: $02
    rrca                                          ; $4726: $0f
    sub b                                         ; $4727: $90
    dec e                                         ; $4728: $1d
    rra                                           ; $4729: $1f
    ld [hl], b                                    ; $472a: $70
    ld a, a                                       ; $472b: $7f
    db $eb                                        ; $472c: $eb
    db $fc                                        ; $472d: $fc
    pop hl                                        ; $472e: $e1
    cp $eb                                        ; $472f: $fe $eb
    db $fc                                        ; $4731: $fc
    ld [hl], c                                    ; $4732: $71
    ld a, [hl]                                    ; $4733: $7e
    dec [hl]                                      ; $4734: $35
    ld a, $7a                                     ; $4735: $3e $7a
    ld a, a                                       ; $4737: $7f
    ld [bc], a                                    ; $4738: $02
    ccf                                           ; $4739: $3f
    ld [bc], a                                    ; $473a: $02
    dec bc                                        ; $473b: $0b
    ld [bc], a                                    ; $473c: $02
    inc b                                         ; $473d: $04
    ld [bc], a                                    ; $473e: $02
    ld bc, $0302                                  ; $473f: $01 $02 $03
    ld [bc], a                                    ; $4742: $02
    ld bc, $0202                                  ; $4743: $01 $02 $02
    ld [bc], a                                    ; $4746: $02
    rra                                           ; $4747: $1f
    adc b                                         ; $4748: $88
    dec c                                         ; $4749: $0d
    rrca                                          ; $474a: $0f
    ld [hl], $39                                  ; $474b: $36 $39
    dec [hl]                                      ; $474d: $35
    dec sp                                        ; $474e: $3b
    db $db                                        ; $474f: $db
    rst $18                                       ; $4750: $df
    ld [bc], a                                    ; $4751: $02
    xor $92                                       ; $4752: $ee $92
    ld [hl], b                                    ; $4754: $70
    ldh a, [$98]                                  ; $4755: $f0 $98
    ld a, b                                       ; $4757: $78
    db $ec                                        ; $4758: $ec
    inc e                                         ; $4759: $1c
    db $ec                                        ; $475a: $ec
    inc e                                         ; $475b: $1c
    add sp, $18                                   ; $475c: $e8 $18
    db $ec                                        ; $475e: $ec
    inc e                                         ; $475f: $1c
    ld e, b                                       ; $4760: $58
    cp b                                          ; $4761: $b8
    cp h                                          ; $4762: $bc
    db $fc                                        ; $4763: $fc
    ld a, [hl]                                    ; $4764: $7e
    cp $02                                        ; $4765: $fe $02
    inc c                                         ; $4767: $0c
    ld [bc], a                                    ; $4768: $02
    cp [hl]                                       ; $4769: $be
    adc b                                         ; $476a: $88
    db $db                                        ; $476b: $db
    rst $18                                       ; $476c: $df
    xor l                                         ; $476d: $ad
    or e                                          ; $476e: $b3
    ld l, e                                       ; $476f: $6b
    ld [hl], a                                    ; $4770: $77
    ld [hl], $3e                                  ; $4771: $36 $3e
    ld [bc], a                                    ; $4773: $02
    rra                                           ; $4774: $1f
    ld [bc], a                                    ; $4775: $02
    inc b                                         ; $4776: $04

jr_0f5_4777:
    ld [bc], a                                    ; $4777: $02
    rlca                                          ; $4778: $07
    ld [bc], a                                    ; $4779: $02
    inc bc                                        ; $477a: $03
    ld [bc], a                                    ; $477b: $02
    rlca                                          ; $477c: $07
    add c                                         ; $477d: $81
    ld b, $03                                     ; $477e: $06 $03
    rlca                                          ; $4780: $07
    ld [bc], a                                    ; $4781: $02
    dec bc                                        ; $4782: $0b
    ld [bc], a                                    ; $4783: $02
    sbc [hl]                                      ; $4784: $9e
    add d                                         ; $4785: $82
    sbc e                                         ; $4786: $9b
    sbc a                                         ; $4787: $9f
    ld [bc], a                                    ; $4788: $02
    db $10                                        ; $4789: $10
    inc b                                         ; $478a: $04
    nop                                           ; $478b: $00
    ld [bc], a                                    ; $478c: $02
    ld [$1a02], sp                                ; $478d: $08 $02 $1a
    adc d                                         ; $4790: $8a
    ld d, $1e                                     ; $4791: $16 $1e
    dec bc                                        ; $4793: $0b

jr_0f5_4794:
    rla                                           ; $4794: $17
    dec c                                         ; $4795: $0d
    inc de                                        ; $4796: $13
    rra                                           ; $4797: $1f
    inc bc                                        ; $4798: $03
    ld a, [bc]                                    ; $4799: $0a
    ld d, $02                                     ; $479a: $16 $02
    ld e, $02                                     ; $479c: $1e $02
    inc c                                         ; $479e: $0c
    ld [bc], a                                    ; $479f: $02
    db $10                                        ; $47a0: $10
    sub h                                         ; $47a1: $94

jr_0f5_47a2:
    jr nc, jr_0f5_4794                            ; $47a2: $30 $f0

    ret c                                         ; $47a4: $d8

    jr c, jr_0f5_4777                             ; $47a5: $38 $d0

    jr nc, jr_0f5_47a2                            ; $47a7: $30 $f9

    rst $38                                       ; $47a9: $ff
    ld [c], a                                     ; $47aa: $e2
    db $fd                                        ; $47ab: $fd
    adc [hl]                                      ; $47ac: $8e
    pop af                                        ; $47ad: $f1
    rst $18                                       ; $47ae: $df
    ldh [$8e], a                                  ; $47af: $e0 $8e
    pop af                                        ; $47b1: $f1
    jp hl                                         ; $47b2: $e9


    rst $30                                       ; $47b3: $f7
    db $d3                                        ; $47b4: $d3
    rst $38                                       ; $47b5: $ff
    ld [bc], a                                    ; $47b6: $02
    ld a, l                                       ; $47b7: $7d
    ld [bc], a                                    ; $47b8: $02
    ld a, [de]                                    ; $47b9: $1a
    stop                                          ; $47ba: $10 $00
    adc d                                         ; $47bc: $8a
    ldh a, [$f8]                                  ; $47bd: $f0 $f8
    ld h, b                                       ; $47bf: $60
    ld hl, sp+$68                                 ; $47c0: $f8 $68
    ldh a, [$f5]                                  ; $47c2: $f0 $f5
    ei                                            ; $47c4: $fb
    cp e                                          ; $47c5: $bb
    cp a                                          ; $47c6: $bf
    ld [bc], a                                    ; $47c7: $02
    xor [hl]                                      ; $47c8: $ae
    ld [bc], a                                    ; $47c9: $02
    inc b                                         ; $47ca: $04
    ld a, [de]                                    ; $47cb: $1a
    nop                                           ; $47cc: $00
    ld [bc], a                                    ; $47cd: $02
    ld bc, $0014                                  ; $47ce: $01 $14 $00
    rst $38                                       ; $47d1: $ff
    inc de                                        ; $47d2: $13
    rlca                                          ; $47d3: $07
    db $f4                                        ; $47d4: $f4
    dec bc                                        ; $47d5: $0b
    or $0d                                        ; $47d6: $f6 $0d
    ld a, [$f5f1]                                 ; $47d8: $fa $f1 $f5
    ld sp, hl                                     ; $47db: $f9
    or $01                                        ; $47dc: $f6 $01
    ld hl, sp+$06                                 ; $47de: $f8 $06
    dec b                                         ; $47e0: $05
    ld sp, hl                                     ; $47e1: $f9
    dec b                                         ; $47e2: $05
    ld bc, $0205                                  ; $47e3: $01 $05 $02
    ld [bc], a                                    ; $47e6: $02
    inc bc                                        ; $47e7: $03
    ld [bc], a                                    ; $47e8: $02
    rrca                                          ; $47e9: $0f
    sub b                                         ; $47ea: $90
    dec e                                         ; $47eb: $1d
    rra                                           ; $47ec: $1f
    ld [hl], d                                    ; $47ed: $72
    ld a, l                                       ; $47ee: $7d
    rst $20                                       ; $47ef: $e7
    ld hl, sp+$63                                 ; $47f0: $f8 $63
    ld a, h                                       ; $47f2: $7c
    db $eb                                        ; $47f3: $eb
    db $fc                                        ; $47f4: $fc
    ld [hl], a                                    ; $47f5: $77
    ld a, b                                       ; $47f6: $78
    ld [hl], l                                    ; $47f7: $75
    ld a, [hl]                                    ; $47f8: $7e
    ld a, [hl-]                                   ; $47f9: $3a
    ccf                                           ; $47fa: $3f
    ld [bc], a                                    ; $47fb: $02
    rra                                           ; $47fc: $1f
    ld [bc], a                                    ; $47fd: $02
    dec b                                         ; $47fe: $05
    ld [bc], a                                    ; $47ff: $02
    nop                                           ; $4800: $00
    ld [bc], a                                    ; $4801: $02
    ld bc, $0002                                  ; $4802: $01 $02 $00
    ld [bc], a                                    ; $4805: $02
    ld bc, $0402                                  ; $4806: $01 $02 $04

jr_0f5_4809:
    ld [bc], a                                    ; $4809: $02
    rra                                           ; $480a: $1f
    adc b                                         ; $480b: $88

jr_0f5_480c:
    dec c                                         ; $480c: $0d
    rrca                                          ; $480d: $0f
    ld a, [de]                                    ; $480e: $1a
    dec e                                         ; $480f: $1d
    scf                                           ; $4810: $37
    add hl, sp                                    ; $4811: $39
    ld e, c                                       ; $4812: $59
    ld e, a                                       ; $4813: $5f
    ld [bc], a                                    ; $4814: $02
    rst $38                                       ; $4815: $ff
    sub d                                         ; $4816: $92
    jr nc, jr_0f5_4809                            ; $4817: $30 $f0

    sbc b                                         ; $4819: $98
    ld a, b                                       ; $481a: $78
    call z, $e83c                                 ; $481b: $cc $3c $e8
    jr jr_0f5_480c                                ; $481e: $18 $ec

    inc e                                         ; $4820: $1c
    add sp, $18                                   ; $4821: $e8 $18
    ld d, b                                       ; $4823: $50
    or b                                          ; $4824: $b0
    jr c, @-$06                                   ; $4825: $38 $f8

    halt                                          ; $4827: $76
    or $02                                        ; $4828: $f6 $02
    ld [$9e02], sp                                ; $482a: $08 $02 $9e
    adc b                                         ; $482d: $88
    db $db                                        ; $482e: $db
    rst $18                                       ; $482f: $df
    or l                                          ; $4830: $b5
    cp e                                          ; $4831: $bb
    ld l, a                                       ; $4832: $6f
    ld [hl], e                                    ; $4833: $73
    ld [hl-], a                                   ; $4834: $32
    ld a, $02                                     ; $4835: $3e $02
    ld e, $02                                     ; $4837: $1e $02
    inc b                                         ; $4839: $04
    ld [bc], a                                    ; $483a: $02
    ld bc, $0702                                  ; $483b: $01 $02 $07
    add e                                         ; $483e: $83
    ld [bc], a                                    ; $483f: $02
    inc bc                                        ; $4840: $03
    ld b, $03                                     ; $4841: $06 $03
    rlca                                          ; $4843: $07
    ld [bc], a                                    ; $4844: $02
    inc bc                                        ; $4845: $03
    ld [bc], a                                    ; $4846: $02
    adc h                                         ; $4847: $8c
    add d                                         ; $4848: $82
    cp e                                          ; $4849: $bb
    cp a                                          ; $484a: $bf
    inc b                                         ; $484b: $04
    db $10                                        ; $484c: $10
    inc b                                         ; $484d: $04
    nop                                           ; $484e: $00
    ld [bc], a                                    ; $484f: $02
    db $10                                        ; $4850: $10
    ld [bc], a                                    ; $4851: $02
    inc e                                         ; $4852: $1c

jr_0f5_4853:
    adc h                                         ; $4853: $8c
    rla                                           ; $4854: $17
    rra                                           ; $4855: $1f
    inc bc                                        ; $4856: $03
    rra                                           ; $4857: $1f
    dec c                                         ; $4858: $0d
    inc de                                        ; $4859: $13
    dec e                                         ; $485a: $1d
    inc bc                                        ; $485b: $03
    ld a, [bc]                                    ; $485c: $0a
    ld d, $17                                     ; $485d: $16 $17
    rra                                           ; $485f: $1f
    ld [bc], a                                    ; $4860: $02
    inc e                                         ; $4861: $1c
    ld [bc], a                                    ; $4862: $02
    nop                                           ; $4863: $00
    sub d                                         ; $4864: $92
    or b                                          ; $4865: $b0
    ld [hl], b                                    ; $4866: $70
    ret nc                                        ; $4867: $d0

    jr nc, jr_0f5_4853                            ; $4868: $30 $e9

    rst $38                                       ; $486a: $ff
    and $f9                                       ; $486b: $e6 $f9
    rst $18                                       ; $486d: $df
    ldh [$9f], a                                  ; $486e: $e0 $9f
    ldh [$be], a                                  ; $4870: $e0 $be
    pop bc                                        ; $4872: $c1
    ret                                           ; $4873: $c9


    rst $30                                       ; $4874: $f7
    rst $10                                       ; $4875: $d7
    rst $38                                       ; $4876: $ff
    ld [bc], a                                    ; $4877: $02
    ld l, [hl]                                    ; $4878: $6e
    ld [bc], a                                    ; $4879: $02
    inc b                                         ; $487a: $04
    stop                                          ; $487b: $10 $00
    adc b                                         ; $487d: $88
    ldh a, [$f8]                                  ; $487e: $f0 $f8
    ld [hl], b                                    ; $4880: $70
    ld hl, sp+$6f                                 ; $4881: $f8 $6f
    pop af                                        ; $4883: $f1
    push af                                       ; $4884: $f5
    ei                                            ; $4885: $fb
    ld [bc], a                                    ; $4886: $02
    cp a                                          ; $4887: $bf
    ld [bc], a                                    ; $4888: $02
    add [hl]                                      ; $4889: $86
    ld [bc], a                                    ; $488a: $02
    add b                                         ; $488b: $80
    ld d, $00                                     ; $488c: $16 $00
    ld [bc], a                                    ; $488e: $02
    ld bc, $0018                                  ; $488f: $01 $18 $00
    rst $38                                       ; $4892: $ff
    ld de, $f406                                  ; $4893: $11 $06 $f4
    dec bc                                        ; $4896: $0b
    or $0d                                        ; $4897: $f6 $0d
    ei                                            ; $4899: $fb
    ld a, [c]                                     ; $489a: $f2

jr_0f5_489b:
    push af                                       ; $489b: $f5
    ld a, [$02f6]                                 ; $489c: $fa $f6 $02
    db $fd                                        ; $489f: $fd
    ld b, $05                                     ; $48a0: $06 $05
    ld sp, hl                                     ; $48a2: $f9
    dec b                                         ; $48a3: $05
    cp $02                                        ; $48a4: $fe $02
    rla                                           ; $48a6: $17
    sub d                                         ; $48a7: $92
    ld a, [hl-]                                   ; $48a8: $3a
    ccf                                           ; $48a9: $3f
    ld h, l                                       ; $48aa: $65
    ld a, d                                       ; $48ab: $7a
    rst $08                                       ; $48ac: $cf
    ldh a, [$c3]                                  ; $48ad: $f0 $c3
    db $fc                                        ; $48af: $fc
    rst $10                                       ; $48b0: $d7
    ld hl, sp+$67                                 ; $48b1: $f8 $67
    ld a, b                                       ; $48b3: $78
    ld [$74fd], a                                 ; $48b4: $ea $fd $74
    ld a, a                                       ; $48b7: $7f
    ld a, $3f                                     ; $48b8: $3e $3f
    ld [bc], a                                    ; $48ba: $02
    dec bc                                        ; $48bb: $0b
    ld [bc], a                                    ; $48bc: $02
    ld bc, $0302                                  ; $48bd: $01 $02 $03
    ld [bc], a                                    ; $48c0: $02
    ld bc, $0302                                  ; $48c1: $01 $02 $03
    ld [bc], a                                    ; $48c4: $02
    ld bc, $0402                                  ; $48c5: $01 $02 $04
    ld [bc], a                                    ; $48c8: $02
    ld a, $88                                     ; $48c9: $3e $88
    inc de                                        ; $48cb: $13
    rra                                           ; $48cc: $1f
    dec a                                         ; $48cd: $3d
    inc sp                                        ; $48ce: $33
    ld l, e                                       ; $48cf: $6b
    ld [hl], a                                    ; $48d0: $77
    ld [hl-], a                                   ; $48d1: $32
    ld a, $02                                     ; $48d2: $3e $02
    ld e, h                                       ; $48d4: $5c
    ld [bc], a                                    ; $48d5: $02
    add sp, -$72                                  ; $48d6: $e8 $8e
    jr nc, @-$0e                                  ; $48d8: $30 $f0

    ld d, b                                       ; $48da: $50
    or b                                          ; $48db: $b0
    ret c                                         ; $48dc: $d8

    jr c, @-$6e                                   ; $48dd: $38 $90

    ld [hl], b                                    ; $48df: $70
    ret c                                         ; $48e0: $d8

    jr c, jr_0f5_489b                             ; $48e1: $38 $b8

    ld a, b                                       ; $48e3: $78
    ld [hl], b                                    ; $48e4: $70
    ldh a, [rSC]                                  ; $48e5: $f0 $02
    db $fd                                        ; $48e7: $fd
    ld [bc], a                                    ; $48e8: $02
    db $10                                        ; $48e9: $10
    ld [bc], a                                    ; $48ea: $02
    ld a, h                                       ; $48eb: $7c
    adc b                                         ; $48ec: $88
    ld [hl], $3e                                  ; $48ed: $36 $3e
    db $db                                        ; $48ef: $db
    rst $20                                       ; $48f0: $e7
    ld d, [hl]                                    ; $48f1: $56
    ld l, [hl]                                    ; $48f2: $6e
    ld l, h                                       ; $48f3: $6c
    ld a, h                                       ; $48f4: $7c
    ld [bc], a                                    ; $48f5: $02
    dec a                                         ; $48f6: $3d
    ld [bc], a                                    ; $48f7: $02
    dec hl                                        ; $48f8: $2b
    ld [bc], a                                    ; $48f9: $02
    rlca                                          ; $48fa: $07
    adc b                                         ; $48fb: $88

jr_0f5_48fc:
    ld b, $07                                     ; $48fc: $06 $07
    dec c                                         ; $48fe: $0d
    ld c, $0c                                     ; $48ff: $0e $0c
    rrca                                          ; $4901: $0f
    ld c, $0f                                     ; $4902: $0e $0f
    ld [bc], a                                    ; $4904: $02
    rla                                           ; $4905: $17
    ld [bc], a                                    ; $4906: $02
    sbc l                                         ; $4907: $9d
    add d                                         ; $4908: $82
    ld [hl], $3e                                  ; $4909: $36 $3e
    ld [bc], a                                    ; $490b: $02
    ld a, [bc]                                    ; $490c: $0a
    adc d                                         ; $490d: $8a
    ld b, $0e                                     ; $490e: $06 $0e
    dec bc                                        ; $4910: $0b
    rlca                                          ; $4911: $07
    dec c                                         ; $4912: $0d
    inc bc                                        ; $4913: $03
    rrca                                          ; $4914: $0f
    inc bc                                        ; $4915: $03
    ld [bc], a                                    ; $4916: $02
    ld c, $02                                     ; $4917: $0e $02
    rrca                                          ; $4919: $0f
    ld [bc], a                                    ; $491a: $02
    inc c                                         ; $491b: $0c
    ld [bc], a                                    ; $491c: $02
    ld [$3087], sp                                ; $491d: $08 $87 $30
    ldh a, [$d0]                                  ; $4920: $f0 $d0
    jr nc, jr_0f5_48fc                            ; $4922: $30 $d8

    jr c, @-$5e                                   ; $4924: $38 $a0

    ld [bc], a                                    ; $4926: $02
    ld h, b                                       ; $4927: $60
    add c                                         ; $4928: $81
    ldh [rSC], a                                  ; $4929: $e0 $02
    ret nz                                        ; $492b: $c0

    ld [bc], a                                    ; $492c: $02
    ld b, b                                       ; $492d: $40
    adc [hl]                                      ; $492e: $8e
    ld a, c                                       ; $492f: $79
    ld a, a                                       ; $4930: $7f
    ld b, [hl]                                    ; $4931: $46
    ld a, c                                       ; $4932: $79
    rra                                           ; $4933: $1f
    ld h, b                                       ; $4934: $60
    ld e, [hl]                                    ; $4935: $5e
    ld h, c                                       ; $4936: $61
    ld c, $71                                     ; $4937: $0e $71
    ld [hl], h                                    ; $4939: $74
    ld l, e                                       ; $493a: $6b
    jp Jump_000_02ff                              ; $493b: $c3 $ff $02


    ld l, [hl]                                    ; $493e: $6e
    ld [bc], a                                    ; $493f: $02
    inc b                                         ; $4940: $04
    ld c, $00                                     ; $4941: $0e $00
    ld [bc], a                                    ; $4943: $02
    db $10                                        ; $4944: $10
    add l                                         ; $4945: $85
    ld e, $1f                                     ; $4946: $1e $1f
    inc c                                         ; $4948: $0c
    rra                                           ; $4949: $1f
    dec c                                         ; $494a: $0d
    ld [bc], a                                    ; $494b: $02
    ld e, $81                                     ; $494c: $1e $81
    rra                                           ; $494e: $1f
    ld [bc], a                                    ; $494f: $02
    rla                                           ; $4950: $17
    ld [bc], a                                    ; $4951: $02
    add hl, de                                    ; $4952: $19
    ld [bc], a                                    ; $4953: $02
    db $10                                        ; $4954: $10
    stop                                          ; $4955: $10 $00
    rst $38                                       ; $4957: $ff
    ld de, $f406                                  ; $4958: $11 $06 $f4
    dec bc                                        ; $495b: $0b
    or $0d                                        ; $495c: $f6 $0d
    ld a, [$f5f1]                                 ; $495e: $fa $f1 $f5
    ld sp, hl                                     ; $4961: $f9
    or $01                                        ; $4962: $f6 $01
    ld sp, hl                                     ; $4964: $f9
    rlca                                          ; $4965: $07
    dec b                                         ; $4966: $05
    ld sp, hl                                     ; $4967: $f9
    dec b                                         ; $4968: $05
    ld bc, $0502                                  ; $4969: $01 $02 $05
    ld [bc], a                                    ; $496c: $02
    rrca                                          ; $496d: $0f
    sub b                                         ; $496e: $90
    dec e                                         ; $496f: $1d
    rra                                           ; $4970: $1f
    ld [hl], b                                    ; $4971: $70
    ld a, a                                       ; $4972: $7f
    db $eb                                        ; $4973: $eb
    db $fc                                        ; $4974: $fc
    ld h, c                                       ; $4975: $61
    ld a, [hl]                                    ; $4976: $7e
    db $eb                                        ; $4977: $eb
    db $fc                                        ; $4978: $fc
    ld [hl], c                                    ; $4979: $71
    ld a, [hl]                                    ; $497a: $7e
    dec [hl]                                      ; $497b: $35
    ld a, $7a                                     ; $497c: $3e $7a
    ld a, a                                       ; $497e: $7f
    ld [bc], a                                    ; $497f: $02
    ccf                                           ; $4980: $3f
    ld [bc], a                                    ; $4981: $02
    dec bc                                        ; $4982: $0b
    ld [bc], a                                    ; $4983: $02
    nop                                           ; $4984: $00
    ld [bc], a                                    ; $4985: $02
    ld bc, $0002                                  ; $4986: $01 $02 $00
    ld [bc], a                                    ; $4989: $02
    ld bc, $0402                                  ; $498a: $01 $02 $04
    ld [bc], a                                    ; $498d: $02
    rrca                                          ; $498e: $0f
    adc b                                         ; $498f: $88
    dec c                                         ; $4990: $0d
    rrca                                          ; $4991: $0f
    ld d, $19                                     ; $4992: $16 $19
    dec [hl]                                      ; $4994: $35
    dec sp                                        ; $4995: $3b
    db $db                                        ; $4996: $db
    rst $18                                       ; $4997: $df
    ld [bc], a                                    ; $4998: $02
    rst $38                                       ; $4999: $ff
    sub d                                         ; $499a: $92
    ld [hl], d                                    ; $499b: $72
    ld a, [c]                                     ; $499c: $f2
    sbc b                                         ; $499d: $98
    ld a, b                                       ; $499e: $78
    db $ec                                        ; $499f: $ec
    inc e                                         ; $49a0: $1c
    db $ec                                        ; $49a1: $ec
    inc e                                         ; $49a2: $1c
    add sp, $18                                   ; $49a3: $e8 $18
    db $ec                                        ; $49a5: $ec
    inc e                                         ; $49a6: $1c
    ld e, b                                       ; $49a7: $58
    cp b                                          ; $49a8: $b8
    or [hl]                                       ; $49a9: $b6
    or $7e                                        ; $49aa: $f6 $7e
    cp $02                                        ; $49ac: $fe $02
    inc c                                         ; $49ae: $0c
    ld [bc], a                                    ; $49af: $02
    sbc [hl]                                      ; $49b0: $9e
    adc b                                         ; $49b1: $88
    ei                                            ; $49b2: $fb
    rst $38                                       ; $49b3: $ff
    or l                                          ; $49b4: $b5
    cp e                                          ; $49b5: $bb
    ld l, a                                       ; $49b6: $6f
    ld [hl], e                                    ; $49b7: $73
    ld [hl-], a                                   ; $49b8: $32
    ld a, $02                                     ; $49b9: $3e $02
    rra                                           ; $49bb: $1f
    ld [bc], a                                    ; $49bc: $02
    nop                                           ; $49bd: $00
    ld [bc], a                                    ; $49be: $02
    rlca                                          ; $49bf: $07
    ld [bc], a                                    ; $49c0: $02
    inc bc                                        ; $49c1: $03
    ld [bc], a                                    ; $49c2: $02
    rlca                                          ; $49c3: $07
    add c                                         ; $49c4: $81
    ld b, $03                                     ; $49c5: $06 $03
    rlca                                          ; $49c7: $07
    ld [bc], a                                    ; $49c8: $02
    inc bc                                        ; $49c9: $03
    ld [bc], a                                    ; $49ca: $02
    sbc l                                         ; $49cb: $9d
    add d                                         ; $49cc: $82
    cp e                                          ; $49cd: $bb
    cp a                                          ; $49ce: $bf
    ld [bc], a                                    ; $49cf: $02
    jr nz, jr_0f5_49d6                            ; $49d0: $20 $04

    nop                                           ; $49d2: $00
    ld [bc], a                                    ; $49d3: $02
    db $10                                        ; $49d4: $10
    ld [bc], a                                    ; $49d5: $02

jr_0f5_49d6:
    inc [hl]                                      ; $49d6: $34
    adc d                                         ; $49d7: $8a
    inc l                                         ; $49d8: $2c
    inc a                                         ; $49d9: $3c
    ld d, $2e                                     ; $49da: $16 $2e
    dec de                                        ; $49dc: $1b
    daa                                           ; $49dd: $27
    ld a, $06                                     ; $49de: $3e $06
    inc d                                         ; $49e0: $14
    inc l                                         ; $49e1: $2c
    ld [bc], a                                    ; $49e2: $02
    inc a                                         ; $49e3: $3c
    ld [bc], a                                    ; $49e4: $02
    jr jr_0f5_49e9                                ; $49e5: $18 $02

    nop                                           ; $49e7: $00
    sub h                                         ; $49e8: $94

jr_0f5_49e9:
    ld h, b                                       ; $49e9: $60
    ldh [$a0], a                                  ; $49ea: $e0 $a0
    ld h, b                                       ; $49ec: $60
    ldh [$60], a                                  ; $49ed: $e0 $60
    ld sp, hl                                     ; $49ef: $f9
    rst $38                                       ; $49f0: $ff
    ld [c], a                                     ; $49f1: $e2
    db $fd                                        ; $49f2: $fd
    adc [hl]                                      ; $49f3: $8e
    pop af                                        ; $49f4: $f1
    rst $18                                       ; $49f5: $df
    ldh [$8e], a                                  ; $49f6: $e0 $8e
    pop af                                        ; $49f8: $f1
    jp hl                                         ; $49f9: $e9


    rst $30                                       ; $49fa: $f7
    db $d3                                        ; $49fb: $d3
    rst $38                                       ; $49fc: $ff
    ld [bc], a                                    ; $49fd: $02
    ld a, l                                       ; $49fe: $7d
    ld [bc], a                                    ; $49ff: $02
    jr jr_0f5_4a12                                ; $4a00: $18 $10

    nop                                           ; $4a02: $00
    adc b                                         ; $4a03: $88
    db $f4                                        ; $4a04: $f4
    ld hl, sp+$6c                                 ; $4a05: $f8 $6c
    ldh a, [$64]                                  ; $4a07: $f0 $64
    ld hl, sp-$0f                                 ; $4a09: $f8 $f1
    rst $38                                       ; $4a0b: $ff
    ld [bc], a                                    ; $4a0c: $02
    cp a                                          ; $4a0d: $bf
    ld [bc], a                                    ; $4a0e: $02
    adc $12                                       ; $4a0f: $ce $12
    nop                                           ; $4a11: $00

jr_0f5_4a12:
    rst $38                                       ; $4a12: $ff
    ld de, $f406                                  ; $4a13: $11 $06 $f4
    dec bc                                        ; $4a16: $0b
    or $0d                                        ; $4a17: $f6 $0d
    ld a, [$f5f1]                                 ; $4a19: $fa $f1 $f5
    ld sp, hl                                     ; $4a1c: $f9
    or $01                                        ; $4a1d: $f6 $01
    ld sp, hl                                     ; $4a1f: $f9
    ld b, $05                                     ; $4a20: $06 $05
    ld sp, hl                                     ; $4a22: $f9
    dec b                                         ; $4a23: $05
    ld bc, $0302                                  ; $4a24: $01 $02 $03
    ld [bc], a                                    ; $4a27: $02
    rrca                                          ; $4a28: $0f
    sub b                                         ; $4a29: $90
    dec e                                         ; $4a2a: $1d
    rra                                           ; $4a2b: $1f
    ld [hl], d                                    ; $4a2c: $72
    ld a, l                                       ; $4a2d: $7d
    rst $20                                       ; $4a2e: $e7
    ld hl, sp+$63                                 ; $4a2f: $f8 $63
    ld a, h                                       ; $4a31: $7c
    db $eb                                        ; $4a32: $eb
    db $fc                                        ; $4a33: $fc
    ld [hl], a                                    ; $4a34: $77
    ld a, b                                       ; $4a35: $78
    ld [hl], l                                    ; $4a36: $75
    ld a, [hl]                                    ; $4a37: $7e
    ld a, [hl-]                                   ; $4a38: $3a
    ccf                                           ; $4a39: $3f
    ld [bc], a                                    ; $4a3a: $02
    rra                                           ; $4a3b: $1f
    ld [bc], a                                    ; $4a3c: $02
    dec b                                         ; $4a3d: $05
    ld [bc], a                                    ; $4a3e: $02
    nop                                           ; $4a3f: $00
    ld [bc], a                                    ; $4a40: $02
    ld bc, $0002                                  ; $4a41: $01 $02 $00
    ld [bc], a                                    ; $4a44: $02
    ld bc, $0402                                  ; $4a45: $01 $02 $04
    ld [bc], a                                    ; $4a48: $02
    rra                                           ; $4a49: $1f
    adc b                                         ; $4a4a: $88

jr_0f5_4a4b:
    dec c                                         ; $4a4b: $0d
    rrca                                          ; $4a4c: $0f
    ld a, [de]                                    ; $4a4d: $1a
    dec e                                         ; $4a4e: $1d
    scf                                           ; $4a4f: $37
    add hl, sp                                    ; $4a50: $39
    ld e, c                                       ; $4a51: $59
    ld e, a                                       ; $4a52: $5f
    ld [bc], a                                    ; $4a53: $02
    rst $38                                       ; $4a54: $ff
    sub d                                         ; $4a55: $92
    ld [hl-], a                                   ; $4a56: $32
    ld a, [c]                                     ; $4a57: $f2
    sbc b                                         ; $4a58: $98
    ld a, b                                       ; $4a59: $78
    call z, $e83c                                 ; $4a5a: $cc $3c $e8
    jr jr_0f5_4a4b                                ; $4a5d: $18 $ec

    inc e                                         ; $4a5f: $1c
    add sp, $18                                   ; $4a60: $e8 $18
    ld d, b                                       ; $4a62: $50
    or b                                          ; $4a63: $b0
    jr c, @-$06                                   ; $4a64: $38 $f8

    halt                                          ; $4a66: $76
    or $02                                        ; $4a67: $f6 $02
    ld [$be02], sp                                ; $4a69: $08 $02 $be
    adc b                                         ; $4a6c: $88
    db $d3                                        ; $4a6d: $d3
    rst $18                                       ; $4a6e: $df
    cp l                                          ; $4a6f: $bd
    or e                                          ; $4a70: $b3
    ld l, e                                       ; $4a71: $6b
    ld [hl], a                                    ; $4a72: $77
    ld [hl-], a                                   ; $4a73: $32
    ld a, $02                                     ; $4a74: $3e $02
    rra                                           ; $4a76: $1f
    ld [bc], a                                    ; $4a77: $02
    inc b                                         ; $4a78: $04
    ld [bc], a                                    ; $4a79: $02
    ld bc, $0702                                  ; $4a7a: $01 $02 $07
    add h                                         ; $4a7d: $84
    ld [bc], a                                    ; $4a7e: $02
    inc bc                                        ; $4a7f: $03
    ld b, $07                                     ; $4a80: $06 $07
    inc b                                         ; $4a82: $04
    inc bc                                        ; $4a83: $03
    ld [bc], a                                    ; $4a84: $02
    adc h                                         ; $4a85: $8c
    add d                                         ; $4a86: $82
    sbc e                                         ; $4a87: $9b
    sbc a                                         ; $4a88: $9f
    ld [bc], a                                    ; $4a89: $02
    db $10                                        ; $4a8a: $10
    inc b                                         ; $4a8b: $04
    nop                                           ; $4a8c: $00
    ld [bc], a                                    ; $4a8d: $02
    ld [$1c02], sp                                ; $4a8e: $08 $02 $1c
    adc h                                         ; $4a91: $8c
    rla                                           ; $4a92: $17

jr_0f5_4a93:
    rra                                           ; $4a93: $1f
    inc bc                                        ; $4a94: $03
    rra                                           ; $4a95: $1f
    dec c                                         ; $4a96: $0d
    inc de                                        ; $4a97: $13

jr_0f5_4a98:
    dec e                                         ; $4a98: $1d
    inc bc                                        ; $4a99: $03
    ld a, [bc]                                    ; $4a9a: $0a
    ld d, $17                                     ; $4a9b: $16 $17
    rra                                           ; $4a9d: $1f
    ld [bc], a                                    ; $4a9e: $02
    inc e                                         ; $4a9f: $1c
    ld [bc], a                                    ; $4aa0: $02
    nop                                           ; $4aa1: $00
    sub h                                         ; $4aa2: $94
    or b                                          ; $4aa3: $b0
    ld [hl], b                                    ; $4aa4: $70
    ret nc                                        ; $4aa5: $d0

    jr nc, jr_0f5_4a98                            ; $4aa6: $30 $f0

    jr nc, jr_0f5_4a93                            ; $4aa8: $30 $e9

    rst $38                                       ; $4aaa: $ff
    and $f9                                       ; $4aab: $e6 $f9
    rst $18                                       ; $4aad: $df
    ldh [$9f], a                                  ; $4aae: $e0 $9f
    ldh [$be], a                                  ; $4ab0: $e0 $be
    pop bc                                        ; $4ab2: $c1
    ret                                           ; $4ab3: $c9


    rst $30                                       ; $4ab4: $f7
    rst $10                                       ; $4ab5: $d7
    rst $38                                       ; $4ab6: $ff
    ld [bc], a                                    ; $4ab7: $02
    ld l, [hl]                                    ; $4ab8: $6e
    ld [bc], a                                    ; $4ab9: $02
    inc b                                         ; $4aba: $04
    stop                                          ; $4abb: $10 $00
    adc b                                         ; $4abd: $88
    ldh a, [$f8]                                  ; $4abe: $f0 $f8
    ld [hl], b                                    ; $4ac0: $70
    ld hl, sp+$68                                 ; $4ac1: $f8 $68
    ldh a, [$f5]                                  ; $4ac3: $f0 $f5
    ei                                            ; $4ac5: $fb
    ld [bc], a                                    ; $4ac6: $02
    cp a                                          ; $4ac7: $bf
    ld [bc], a                                    ; $4ac8: $02
    add $12                                       ; $4ac9: $c6 $12
    nop                                           ; $4acb: $00
    rst $38                                       ; $4acc: $ff
    add hl, bc                                    ; $4acd: $09
    ld [bc], a                                    ; $4ace: $02
    db $f4                                        ; $4acf: $f4
    dec bc                                        ; $4ad0: $0b
    or $0d                                        ; $4ad1: $f6 $0d
    rlca                                          ; $4ad3: $07
    db $fc                                        ; $4ad4: $fc
    rlca                                          ; $4ad5: $07
    rst $38                                       ; $4ad6: $ff
    sub d                                         ; $4ad7: $92
    nop                                           ; $4ad8: $00
    ld [bc], a                                    ; $4ad9: $02
    nop                                           ; $4ada: $00
    ld [de], a                                    ; $4adb: $12
    ld a, [de]                                    ; $4adc: $1a
    ld c, b                                       ; $4add: $48
    rst $38                                       ; $4ade: $ff
    xor l                                         ; $4adf: $ad
    sbc d                                         ; $4ae0: $9a
    push hl                                       ; $4ae1: $e5
    ld a, a                                       ; $4ae2: $7f
    ld b, b                                       ; $4ae3: $40
    db $db                                        ; $4ae4: $db
    db $e4                                        ; $4ae5: $e4
    pop de                                        ; $4ae6: $d1
    xor $66                                       ; $4ae7: $ee $66
    ld a, a                                       ; $4ae9: $7f
    ld [bc], a                                    ; $4aea: $02
    ccf                                           ; $4aeb: $3f
    stop                                          ; $4aec: $10 $00
    add a                                         ; $4aee: $87
    inc b                                         ; $4aef: $04
    ld b, $07                                     ; $4af0: $06 $07
    ld bc, $0107                                  ; $4af2: $01 $07 $01
    dec b                                         ; $4af5: $05
    ld [bc], a                                    ; $4af6: $02
    inc bc                                        ; $4af7: $03
    add e                                         ; $4af8: $83
    rlca                                          ; $4af9: $07
    inc bc                                        ; $4afa: $03
    rlca                                          ; $4afb: $07
    ld [bc], a                                    ; $4afc: $02
    ld b, $02                                     ; $4afd: $06 $02
    inc b                                         ; $4aff: $04
    inc c                                         ; $4b00: $0c
    nop                                           ; $4b01: $00
    rst $38                                       ; $4b02: $ff
    dec bc                                        ; $4b03: $0b
    inc bc                                        ; $4b04: $03
    db $f4                                        ; $4b05: $f4
    dec bc                                        ; $4b06: $0b
    or $0d                                        ; $4b07: $f6 $0d
    dec b                                         ; $4b09: $05
    ld sp, hl                                     ; $4b0a: $f9
    dec b                                         ; $4b0b: $05
    ld bc, $0205                                  ; $4b0c: $01 $05 $02
    sub [hl]                                      ; $4b0f: $96
    nop                                           ; $4b10: $00
    db $10                                        ; $4b11: $10
    ld [hl+], a                                   ; $4b12: $22
    ld [hl-], a                                   ; $4b13: $32
    ld d, c                                       ; $4b14: $51
    ld h, e                                       ; $4b15: $63
    ld l, c                                       ; $4b16: $69
    ld e, e                                       ; $4b17: $5b
    xor [hl]                                      ; $4b18: $ae
    db $dd                                        ; $4b19: $dd
    or c                                          ; $4b1a: $b1
    adc $db                                       ; $4b1b: $ce $db
    db $e4                                        ; $4b1d: $e4
    rst $38                                       ; $4b1e: $ff
    ldh [rRP], a                                  ; $4b1f: $e0 $56
    ld l, c                                       ; $4b21: $69
    ld l, e                                       ; $4b22: $6b
    ld a, l                                       ; $4b23: $7d
    ld a, c                                       ; $4b24: $79
    ld a, a                                       ; $4b25: $7f
    ld [bc], a                                    ; $4b26: $02
    rra                                           ; $4b27: $1f
    add hl, bc                                    ; $4b28: $09
    nop                                           ; $4b29: $00
    sub b                                         ; $4b2a: $90
    db $10                                        ; $4b2b: $10
    ld [hl+], a                                   ; $4b2c: $22
    ld [hl-], a                                   ; $4b2d: $32
    ld hl, $1133                                  ; $4b2e: $21 $33 $11
    inc hl                                        ; $4b31: $23

jr_0f5_4b32:
    or [hl]                                       ; $4b32: $b6
    and l                                         ; $4b33: $a5
    dec bc                                        ; $4b34: $0b
    or l                                          ; $4b35: $b5
    cp h                                          ; $4b36: $bc
    ld b, e                                       ; $4b37: $43
    or e                                          ; $4b38: $b3
    ld c, a                                       ; $4b39: $4f
    reti                                          ; $4b3a: $d9


    ld [bc], a                                    ; $4b3b: $02
    daa                                           ; $4b3c: $27
    add c                                         ; $4b3d: $81
    rst $38                                       ; $4b3e: $ff
    ld [bc], a                                    ; $4b3f: $02
    cp $02                                        ; $4b40: $fe $02
    ld a, h                                       ; $4b42: $7c
    stop                                          ; $4b43: $10 $00
    ld [$1001], sp                                ; $4b45: $08 $01 $10
    nop                                           ; $4b48: $00
    rst $38                                       ; $4b49: $ff
    ld de, $f406                                  ; $4b4a: $11 $06 $f4
    dec bc                                        ; $4b4d: $0b
    or $0d                                        ; $4b4e: $f6 $0d
    rst $38                                       ; $4b50: $ff
    or $fd                                        ; $4b51: $f6 $fd
    cp $00                                        ; $4b53: $fe $00
    inc b                                         ; $4b55: $04
    dec c                                         ; $4b56: $0d
    ld hl, sp+$0d                                 ; $4b57: $f8 $0d
    rst $38                                       ; $4b59: $ff
    dec c                                         ; $4b5a: $0d
    ld bc, $00a1                                  ; $4b5b: $01 $a1 $00
    ld [bc], a                                    ; $4b5e: $02
    nop                                           ; $4b5f: $00
    ld [hl+], a                                   ; $4b60: $22
    inc hl                                        ; $4b61: $23
    ld d, l                                       ; $4b62: $55
    ld b, l                                       ; $4b63: $45
    ld [hl], a                                    ; $4b64: $77
    db $e4                                        ; $4b65: $e4
    rst $10                                       ; $4b66: $d7
    ld a, [hl+]                                   ; $4b67: $2a
    db $dd                                        ; $4b68: $dd
    cp d                                          ; $4b69: $ba
    sbc $be                                       ; $4b6a: $de $be
    jp nz, $e7db                                  ; $4b6c: $c2 $db $e7

    ld l, b                                       ; $4b6f: $68
    ld [hl], a                                    ; $4b70: $77
    ld a, [hl]                                    ; $4b71: $7e
    ld h, c                                       ; $4b72: $61
    sbc [hl]                                      ; $4b73: $9e
    pop hl                                        ; $4b74: $e1
    or a                                          ; $4b75: $b7
    ret z                                         ; $4b76: $c8

    db $d3                                        ; $4b77: $d3
    db $fc                                        ; $4b78: $fc
    sub $f9                                       ; $4b79: $d6 $f9
    ld d, d                                       ; $4b7b: $52
    ld a, l                                       ; $4b7c: $7d
    nop                                           ; $4b7d: $00
    ld [bc], a                                    ; $4b7e: $02
    db $10                                        ; $4b7f: $10
    sbc l                                         ; $4b80: $9d
    jr jr_0f5_4b93                                ; $4b81: $18 $10

    jr @+$12                                      ; $4b83: $18 $10

    dec e                                         ; $4b85: $1d
    dec d                                         ; $4b86: $15
    jr jr_0f5_4b9d                                ; $4b87: $18 $14

    add hl, de                                    ; $4b89: $19
    jr nz, @+$3f                                  ; $4b8a: $20 $3d

    ld h, $3b                                     ; $4b8c: $26 $3b
    ld d, [hl]                                    ; $4b8e: $56
    ld l, c                                       ; $4b8f: $69
    ld d, h                                       ; $4b90: $54
    ld l, e                                       ; $4b91: $6b
    cp l                                          ; $4b92: $bd

jr_0f5_4b93:
    jp $e0df                                      ; $4b93: $c3 $df $e0


    ld e, l                                       ; $4b96: $5d
    ld [c], a                                     ; $4b97: $e2
    ld e, l                                       ; $4b98: $5d
    and d                                         ; $4b99: $a2
    rst $08                                       ; $4b9a: $cf
    jr nc, jr_0f5_4b32                            ; $4b9b: $30 $95

jr_0f5_4b9d:
    ld l, d                                       ; $4b9d: $6a
    ld [bc], a                                    ; $4b9e: $02
    inc b                                         ; $4b9f: $04
    sbc h                                         ; $4ba0: $9c
    ld [hl+], a                                   ; $4ba1: $22
    ld h, $20                                     ; $4ba2: $26 $20
    ld l, $24                                     ; $4ba4: $2e $24
    ld a, [bc]                                    ; $4ba6: $0a
    dec [hl]                                      ; $4ba7: $35
    dec de                                        ; $4ba8: $1b
    scf                                           ; $4ba9: $37
    dec sp                                        ; $4baa: $3b
    ccf                                           ; $4bab: $3f
    inc sp                                        ; $4bac: $33
    dec e                                         ; $4bad: $1d
    inc sp                                        ; $4bae: $33

jr_0f5_4baf:
    dec de                                        ; $4baf: $1b
    daa                                           ; $4bb0: $27
    dec a                                         ; $4bb1: $3d
    inc bc                                        ; $4bb2: $03
    dec de                                        ; $4bb3: $1b
    cpl                                           ; $4bb4: $2f
    daa                                           ; $4bb5: $27
    rra                                           ; $4bb6: $1f
    ld c, $3e                                     ; $4bb7: $0e $3e
    ld h, $fe                                     ; $4bb9: $26 $fe
    cp h                                          ; $4bbb: $bc
    ld a, h                                       ; $4bbc: $7c
    ld [bc], a                                    ; $4bbd: $02
    db $fc                                        ; $4bbe: $fc
    adc b                                         ; $4bbf: $88
    inc bc                                        ; $4bc0: $03
    nop                                           ; $4bc1: $00
    inc bc                                        ; $4bc2: $03
    nop                                           ; $4bc3: $00
    db $fd                                        ; $4bc4: $fd
    rst $38                                       ; $4bc5: $ff

jr_0f5_4bc6:
    dec a                                         ; $4bc6: $3d
    ccf                                           ; $4bc7: $3f
    jr jr_0f5_4bca                                ; $4bc8: $18 $00

jr_0f5_4bca:
    adc b                                         ; $4bca: $88
    ld c, b                                       ; $4bcb: $48
    ld [hl], b                                    ; $4bcc: $70
    ld e, b                                       ; $4bcd: $58
    ld h, b                                       ; $4bce: $60
    jr nc, jr_0f5_4c09                            ; $4bcf: $30 $38

    rla                                           ; $4bd1: $17
    rra                                           ; $4bd2: $1f
    ld e, $00                                     ; $4bd3: $1e $00
    ld [bc], a                                    ; $4bd5: $02
    ld bc, $0018                                  ; $4bd6: $01 $18 $00
    rst $38                                       ; $4bd9: $ff
    rrca                                          ; $4bda: $0f
    dec b                                         ; $4bdb: $05
    db $f4                                        ; $4bdc: $f4
    dec bc                                        ; $4bdd: $0b
    or $0d                                        ; $4bde: $f6 $0d
    db $fd                                        ; $4be0: $fd
    or $fb                                        ; $4be1: $f6 $fb
    cp $01                                        ; $4be3: $fe $01
    inc b                                         ; $4be5: $04
    dec bc                                        ; $4be6: $0b
    or $0b                                        ; $4be7: $f6 $0b
    db $fc                                        ; $4be9: $fc
    add l                                         ; $4bea: $85
    nop                                           ; $4beb: $00
    ld [bc], a                                    ; $4bec: $02
    nop                                           ; $4bed: $00
    ld [bc], a                                    ; $4bee: $02
    ld b, $02                                     ; $4bef: $06 $02
    dec b                                         ; $4bf1: $05
    sbc d                                         ; $4bf2: $9a
    rlca                                          ; $4bf3: $07
    ld bc, $1217                                  ; $4bf4: $01 $17 $12
    dec l                                         ; $4bf7: $2d
    ld [hl+], a                                   ; $4bf8: $22
    dec sp                                        ; $4bf9: $3b
    ld [hl], l                                    ; $4bfa: $75
    ld h, [hl]                                    ; $4bfb: $66
    dec d                                         ; $4bfc: $15
    ld h, [hl]                                    ; $4bfd: $66
    ld e, a                                       ; $4bfe: $5f
    ld l, b                                       ; $4bff: $68
    db $db                                        ; $4c00: $db
    rst $20                                       ; $4c01: $e7
    ld l, b                                       ; $4c02: $68
    ld [hl], a                                    ; $4c03: $77
    cp $e1                                        ; $4c04: $fe $e1
    sbc [hl]                                      ; $4c06: $9e
    pop hl                                        ; $4c07: $e1
    or a                                          ; $4c08: $b7

jr_0f5_4c09:
    ret z                                         ; $4c09: $c8

    ld d, e                                       ; $4c0a: $53
    ld a, h                                       ; $4c0b: $7c
    nop                                           ; $4c0c: $00
    ld [bc], a                                    ; $4c0d: $02
    jr nz, jr_0f5_4b93                            ; $4c0e: $20 $83

    jr nc, jr_0f5_4c32                            ; $4c10: $30 $20

    jr nc, jr_0f5_4c16                            ; $4c12: $30 $02

    db $10                                        ; $4c14: $10
    add e                                         ; $4c15: $83

jr_0f5_4c16:
    nop                                           ; $4c16: $00
    db $10                                        ; $4c17: $10
    jr nz, jr_0f5_4c1c                            ; $4c18: $20 $02

    jr c, jr_0f5_4baf                             ; $4c1a: $38 $93

jr_0f5_4c1c:
    jr nc, jr_0f5_4bc6                            ; $4c1c: $30 $a8

    or d                                          ; $4c1e: $b2
    and e                                         ; $4c1f: $a3
    cp l                                          ; $4c20: $bd
    ld h, l                                       ; $4c21: $65
    ei                                            ; $4c22: $fb
    push de                                       ; $4c23: $d5
    ld [$eb54], a                                 ; $4c24: $ea $54 $eb
    cp h                                          ; $4c27: $bc

jr_0f5_4c28:
    jp $e0df                                      ; $4c28: $c3 $df $e0


    ld e, l                                       ; $4c2b: $5d
    ld [c], a                                     ; $4c2c: $e2
    ld e, l                                       ; $4c2d: $5d
    and d                                         ; $4c2e: $a2
    ld [bc], a                                    ; $4c2f: $02
    db $10                                        ; $4c30: $10
    sbc d                                         ; $4c31: $9a

jr_0f5_4c32:
    ld [$0018], sp                                ; $4c32: $08 $18 $00
    jr c, jr_0f5_4c49                             ; $4c35: $38 $12

    ld a, [hl+]                                   ; $4c37: $2a
    ld e, $06                                     ; $4c38: $1e $06
    ld a, [hl-]                                   ; $4c3a: $3a
    ld h, $3e                                     ; $4c3b: $26 $3e
    ld [hl+], a                                   ; $4c3d: $22
    rla                                           ; $4c3e: $17
    cpl                                           ; $4c3f: $2f
    dec a                                         ; $4c40: $3d
    inc bc                                        ; $4c41: $03
    dec de                                        ; $4c42: $1b
    cpl                                           ; $4c43: $2f
    db $e3                                        ; $4c44: $e3
    rra                                           ; $4c45: $1f
    ld b, [hl]                                    ; $4c46: $46
    cp [hl]                                       ; $4c47: $be
    inc l                                         ; $4c48: $2c

jr_0f5_4c49:
    db $fc                                        ; $4c49: $fc
    or [hl]                                       ; $4c4a: $b6
    ld a, [hl]                                    ; $4c4b: $7e
    ld [bc], a                                    ; $4c4c: $02
    db $fc                                        ; $4c4d: $fc
    ld [bc], a                                    ; $4c4e: $02
    cp b                                          ; $4c4f: $b8
    inc b                                         ; $4c50: $04
    nop                                           ; $4c51: $00
    add [hl]                                      ; $4c52: $86
    or $f9                                        ; $4c53: $f6 $f9
    ld d, d                                       ; $4c55: $52
    ld a, l                                       ; $4c56: $7d
    rla                                           ; $4c57: $17
    rra                                           ; $4c58: $1f
    ld [bc], a                                    ; $4c59: $02
    add hl, de                                    ; $4c5a: $19
    inc d                                         ; $4c5b: $14
    nop                                           ; $4c5c: $00
    adc h                                         ; $4c5d: $8c
    inc sp                                        ; $4c5e: $33
    inc c                                         ; $4c5f: $0c
    dec h                                         ; $4c60: $25
    ld a, [de]                                    ; $4c61: $1a
    add hl, sp                                    ; $4c62: $39
    ld c, $3b                                     ; $4c63: $0e $3b
    inc c                                         ; $4c65: $0c
    ld d, $37                                     ; $4c66: $16 $37
    ld [hl+], a                                   ; $4c68: $22
    inc hl                                        ; $4c69: $23
    inc d                                         ; $4c6a: $14
    nop                                           ; $4c6b: $00
    rst $38                                       ; $4c6c: $ff
    ld de, $f406                                  ; $4c6d: $11 $06 $f4
    dec bc                                        ; $4c70: $0b
    or $0d                                        ; $4c71: $f6 $0d
    cp $f5                                        ; $4c73: $fe $f5
    ld a, [$00fd]                                 ; $4c75: $fa $fd $00
    inc b                                         ; $4c78: $04
    ld a, [bc]                                    ; $4c79: $0a
    rst $30                                       ; $4c7a: $f7
    ld a, [bc]                                    ; $4c7b: $0a
    rst $38                                       ; $4c7c: $ff
    ld a, [bc]                                    ; $4c7d: $0a
    nop                                           ; $4c7e: $00
    add e                                         ; $4c7f: $83
    nop                                           ; $4c80: $00
    ld bc, $0200                                  ; $4c81: $01 $00 $02
    ld bc, $0202                                  ; $4c84: $01 $02 $02
    sbc d                                         ; $4c87: $9a
    inc bc                                        ; $4c88: $03
    ld [bc], a                                    ; $4c89: $02
    inc de                                        ; $4c8a: $13
    dec d                                         ; $4c8b: $15
    ld l, $25                                     ; $4c8c: $2e $25
    ccf                                           ; $4c8e: $3f
    ld [hl], d                                    ; $4c8f: $72
    ld h, l                                       ; $4c90: $65
    ld d, $65                                     ; $4c91: $16 $65
    ld e, e                                       ; $4c93: $5b
    ld l, h                                       ; $4c94: $6c
    rst $18                                       ; $4c95: $df
    rst $20                                       ; $4c96: $e7
    ld l, h                                       ; $4c97: $6c
    ld [hl], a                                    ; $4c98: $77
    ld c, a                                       ; $4c99: $4f
    ld [hl], b                                    ; $4c9a: $70
    ld e, e                                       ; $4c9b: $5b
    ld h, h                                       ; $4c9c: $64
    add hl, hl                                    ; $4c9d: $29
    ld a, $7b                                     ; $4c9e: $3e $7b
    ld a, h                                       ; $4ca0: $7c
    nop                                           ; $4ca1: $00
    ld [bc], a                                    ; $4ca2: $02
    jr nz, jr_0f5_4c28                            ; $4ca3: $20 $83

    jr nc, jr_0f5_4ca7                            ; $4ca5: $30 $00

jr_0f5_4ca7:
    db $10                                        ; $4ca7: $10
    dec b                                         ; $4ca8: $05
    nop                                           ; $4ca9: $00
    add c                                         ; $4caa: $81
    ld bc, $9103                                  ; $4cab: $01 $03 $91
    sub h                                         ; $4cae: $94
    add c                                         ; $4caf: $81
    add hl, bc                                    ; $4cb0: $09
    sbc c                                         ; $4cb1: $99
    ld sp, $32a9                                  ; $4cb2: $31 $a9 $32
    dec hl                                        ; $4cb5: $2b
    xor d                                         ; $4cb6: $aa
    or a                                          ; $4cb7: $b7
    xor d                                         ; $4cb8: $aa
    or a                                          ; $4cb9: $b7
    push de                                       ; $4cba: $d5
    ld l, [hl]                                    ; $4cbb: $6e
    ld d, l                                       ; $4cbc: $55
    xor $2b                                       ; $4cbd: $ee $2b
    db $fc                                        ; $4cbf: $fc
    nop                                           ; $4cc0: $00
    ld b, b                                       ; $4cc1: $40
    nop                                           ; $4cc2: $00
    ld [bc], a                                    ; $4cc3: $02
    ld b, b                                       ; $4cc4: $40
    sbc c                                         ; $4cc5: $99
    jr nz, jr_0f5_4cec                            ; $4cc6: $20 $24

    ld b, h                                       ; $4cc8: $44
    ld h, d                                       ; $4cc9: $62

jr_0f5_4cca:
    ld b, $40                                     ; $4cca: $06 $40
    ld l, $36                                     ; $4ccc: $2e $36
    ld e, d                                       ; $4cce: $5a
    dec [hl]                                      ; $4ccf: $35
    ld c, e                                       ; $4cd0: $4b
    ld h, $5a                                     ; $4cd1: $26 $5a
    ld l, [hl]                                    ; $4cd3: $6e
    ld [de], a                                    ; $4cd4: $12
    ld e, l                                       ; $4cd5: $5d
    or e                                          ; $4cd6: $b3
    ei                                            ; $4cd7: $fb
    rlca                                          ; $4cd8: $07
    ld e, l                                       ; $4cd9: $5d
    and e                                         ; $4cda: $a3
    ld l, $fe                                     ; $4cdb: $2e $fe
    or [hl]                                       ; $4cdd: $b6
    ld a, [hl]                                    ; $4cde: $7e
    ld [bc], a                                    ; $4cdf: $02
    db $fc                                        ; $4ce0: $fc
    add c                                         ; $4ce1: $81
    nop                                           ; $4ce2: $00
    ld [bc], a                                    ; $4ce3: $02
    inc bc                                        ; $4ce4: $03
    adc c                                         ; $4ce5: $89
    nop                                           ; $4ce6: $00
    inc bc                                        ; $4ce7: $03
    nop                                           ; $4ce8: $00
    ld bc, $a502                                  ; $4ce9: $01 $02 $a5

jr_0f5_4cec:
    ld a, [$7f6e]                                 ; $4cec: $fa $6e $7f
    ld [bc], a                                    ; $4cef: $02
    dec de                                        ; $4cf0: $1b
    ld [de], a                                    ; $4cf1: $12
    nop                                           ; $4cf2: $00
    adc [hl]                                      ; $4cf3: $8e
    cp b                                          ; $4cf4: $b8
    ld b, b                                       ; $4cf5: $40
    sbc b                                         ; $4cf6: $98
    ld h, b                                       ; $4cf7: $60
    jr z, jr_0f5_4cca                             ; $4cf8: $28 $d0

    ret z                                         ; $4cfa: $c8

    ld [hl], b                                    ; $4cfb: $70
    ret c                                         ; $4cfc: $d8

    ld h, b                                       ; $4cfd: $60
    ldh a, [$f8]                                  ; $4cfe: $f0 $f8
    sub l                                         ; $4d00: $95
    sbc l                                         ; $4d01: $9d
    ld e, $00                                     ; $4d02: $1e $00
    ld [bc], a                                    ; $4d04: $02
    ld bc, $0012                                  ; $4d05: $01 $12 $00
    rst $38                                       ; $4d08: $ff
    dec bc                                        ; $4d09: $0b
    inc bc                                        ; $4d0a: $03
    db $f4                                        ; $4d0b: $f4
    dec bc                                        ; $4d0c: $0b
    or $0d                                        ; $4d0d: $f6 $0d
    inc b                                         ; $4d0f: $04
    rst $30                                       ; $4d10: $f7
    inc b                                         ; $4d11: $04
    rst $38                                       ; $4d12: $ff
    inc b                                         ; $4d13: $04
    ld [bc], a                                    ; $4d14: $02
    inc bc                                        ; $4d15: $03
    nop                                           ; $4d16: $00
    sub l                                         ; $4d17: $95
    stop                                          ; $4d18: $10 $00
    db $10                                        ; $4d1a: $10
    jr nc, jr_0f5_4d46                            ; $4d1b: $30 $29

    ld d, l                                       ; $4d1d: $55
    ld l, l                                       ; $4d1e: $6d
    ld a, l                                       ; $4d1f: $7d
    ld c, l                                       ; $4d20: $4d
    ld e, c                                       ; $4d21: $59
    ld h, l                                       ; $4d22: $65
    ld a, l                                       ; $4d23: $7d
    ld [hl], e                                    ; $4d24: $73
    or [hl]                                       ; $4d25: $b6
    call Call_0f5_647b                            ; $4d26: $cd $7b $64
    ld a, [hl]                                    ; $4d29: $7e
    ld b, c                                       ; $4d2a: $41
    ld sp, $023f                                  ; $4d2b: $31 $3f $02
    ld c, $06                                     ; $4d2e: $0e $06
    nop                                           ; $4d30: $00
    ld [bc], a                                    ; $4d31: $02
    inc b                                         ; $4d32: $04
    sub [hl]                                      ; $4d33: $96
    ld bc, $0485                                  ; $4d34: $01 $85 $04
    add c                                         ; $4d37: $81
    push bc                                       ; $4d38: $c5
    ld b, d                                       ; $4d39: $42
    rst $00                                       ; $4d3a: $c7
    ld b, h                                       ; $4d3b: $44
    xor l                                         ; $4d3c: $ad
    ld l, [hl]                                    ; $4d3d: $6e
    dec b                                         ; $4d3e: $05
    cp $d3                                        ; $4d3f: $fe $d3
    xor h                                         ; $4d41: $ac
    ei                                            ; $4d42: $fb
    add h                                         ; $4d43: $84
    ld l, a                                       ; $4d44: $6f
    sub b                                         ; $4d45: $90

jr_0f5_4d46:
    ld l, h                                       ; $4d46: $6c
    sub a                                         ; $4d47: $97
    xor [hl]                                      ; $4d48: $ae
    rst $38                                       ; $4d49: $ff
    ld [bc], a                                    ; $4d4a: $02
    or a                                          ; $4d4b: $b7
    ld a, [bc]                                    ; $4d4c: $0a
    nop                                           ; $4d4d: $00
    inc bc                                        ; $4d4e: $03
    inc b                                         ; $4d4f: $04
    ld [bc], a                                    ; $4d50: $02
    nop                                           ; $4d51: $00
    add d                                         ; $4d52: $82
    inc b                                         ; $4d53: $04
    ld [bc], a                                    ; $4d54: $02
    inc bc                                        ; $4d55: $03
    ld b, $87                                     ; $4d56: $06 $87
    dec b                                         ; $4d58: $05
    rlca                                          ; $4d59: $07
    ld bc, $0307                                  ; $4d5a: $01 $07 $03
    rlca                                          ; $4d5d: $07
    ld [bc], a                                    ; $4d5e: $02
    inc bc                                        ; $4d5f: $03
    ld b, $08                                     ; $4d60: $06 $08
    nop                                           ; $4d62: $00
    rst $38                                       ; $4d63: $ff
    dec bc                                        ; $4d64: $0b
    inc bc                                        ; $4d65: $03
    db $f4                                        ; $4d66: $f4
    dec bc                                        ; $4d67: $0b
    or $0d                                        ; $4d68: $f6 $0d
    inc b                                         ; $4d6a: $04
    rst $30                                       ; $4d6b: $f7
    inc b                                         ; $4d6c: $04
    rst $38                                       ; $4d6d: $ff
    inc b                                         ; $4d6e: $04
    ld [bc], a                                    ; $4d6f: $02
    rlca                                          ; $4d70: $07
    nop                                           ; $4d71: $00
    sub c                                         ; $4d72: $91
    ld de, $1100                                  ; $4d73: $11 $00 $11
    ld sp, $512a                                  ; $4d76: $31 $2a $51
    ld l, d                                       ; $4d79: $6a
    ld a, a                                       ; $4d7a: $7f
    ld c, a                                       ; $4d7b: $4f
    or l                                          ; $4d7c: $b5
    rst $08                                       ; $4d7d: $cf
    ld a, d                                       ; $4d7e: $7a
    ld h, l                                       ; $4d7f: $65
    ld a, h                                       ; $4d80: $7c
    ld b, e                                       ; $4d81: $43
    ld [hl], e                                    ; $4d82: $73
    ld a, a                                       ; $4d83: $7f
    ld [bc], a                                    ; $4d84: $02
    cpl                                           ; $4d85: $2f
    rlca                                          ; $4d86: $07
    nop                                           ; $4d87: $00
    sub a                                         ; $4d88: $97
    stop                                          ; $4d89: $10 $00
    db $10                                        ; $4d8b: $10
    inc [hl]                                      ; $4d8c: $34
    inc l                                         ; $4d8d: $2c
    add hl, sp                                    ; $4d8e: $39
    dec l                                         ; $4d8f: $2d
    ld e, [hl]                                    ; $4d90: $5e
    ld l, e                                       ; $4d91: $6b
    dec c                                         ; $4d92: $0d
    ld a, d                                       ; $4d93: $7a
    rlca                                          ; $4d94: $07
    db $f4                                        ; $4d95: $f4
    xor l                                         ; $4d96: $ad
    ld e, [hl]                                    ; $4d97: $5e
    db $fd                                        ; $4d98: $fd
    ld c, $db                                     ; $4d99: $0e $db
    inc h                                         ; $4d9b: $24
    ei                                            ; $4d9c: $fb
    inc l                                         ; $4d9d: $2c
    ld a, a                                       ; $4d9e: $7f
    rst $38                                       ; $4d9f: $ff
    ld [bc], a                                    ; $4da0: $02
    ld l, e                                       ; $4da1: $6b
    ld c, $00                                     ; $4da2: $0e $00
    inc bc                                        ; $4da4: $03
    inc b                                         ; $4da5: $04
    add [hl]                                      ; $4da6: $86
    nop                                           ; $4da7: $00
    ld [bc], a                                    ; $4da8: $02
    ld b, $02                                     ; $4da9: $06 $02
    ld b, $01                                     ; $4dab: $06 $01
    inc bc                                        ; $4dad: $03
    rlca                                          ; $4dae: $07
    add d                                         ; $4daf: $82
    inc bc                                        ; $4db0: $03
    rlca                                          ; $4db1: $07
    ld [bc], a                                    ; $4db2: $02
    ld b, $08                                     ; $4db3: $06 $08
    nop                                           ; $4db5: $00
    rst $38                                       ; $4db6: $ff
    add hl, bc                                    ; $4db7: $09
    ld [bc], a                                    ; $4db8: $02
    ld hl, sp+$07                                 ; $4db9: $f8 $07
    or $0b                                        ; $4dbb: $f6 $0b
    ld a, [$fafb]                                 ; $4dbd: $fa $fb $fa
    cp $99                                        ; $4dc0: $fe $99
    inc b                                         ; $4dc2: $04
    nop                                           ; $4dc3: $00
    ld c, $00                                     ; $4dc4: $0e $00
    dec a                                         ; $4dc6: $3d
    ld [bc], a                                    ; $4dc7: $02
    dec [hl]                                      ; $4dc8: $35
    ld a, [bc]                                    ; $4dc9: $0a
    ld c, d                                       ; $4dca: $4a
    dec [hl]                                      ; $4dcb: $35
    push hl                                       ; $4dcc: $e5
    ld e, $5e                                     ; $4dcd: $1e $5e
    cpl                                           ; $4dcf: $2f
    ld h, a                                       ; $4dd0: $67
    ld e, $48                                     ; $4dd1: $1e $48
    scf                                           ; $4dd3: $37
    dec [hl]                                      ; $4dd4: $35
    ld a, [bc]                                    ; $4dd5: $0a
    inc sp                                        ; $4dd6: $33
    inc c                                         ; $4dd7: $0c
    ld c, $00                                     ; $4dd8: $0e $00
    inc b                                         ; $4dda: $04
    dec bc                                        ; $4ddb: $0b
    nop                                           ; $4ddc: $00
    adc l                                         ; $4ddd: $8d
    inc b                                         ; $4dde: $04
    nop                                           ; $4ddf: $00
    inc b                                         ; $4de0: $04
    nop                                           ; $4de1: $00
    ld b, $00                                     ; $4de2: $06 $00
    ld [bc], a                                    ; $4de4: $02
    inc b                                         ; $4de5: $04
    ld b, $00                                     ; $4de6: $06 $00
    inc bc                                        ; $4de8: $03
    inc b                                         ; $4de9: $04
    ld [bc], a                                    ; $4dea: $02
    ld [bc], a                                    ; $4deb: $02
    inc b                                         ; $4dec: $04
    add d                                         ; $4ded: $82
    nop                                           ; $4dee: $00
    inc b                                         ; $4def: $04
    dec bc                                        ; $4df0: $0b
    nop                                           ; $4df1: $00
    rst $38                                       ; $4df2: $ff
    ld de, $f806                                  ; $4df3: $11 $06 $f8
    rlca                                          ; $4df6: $07
    or $0b                                        ; $4df7: $f6 $0b
    db $f4                                        ; $4df9: $f4
    db $f4                                        ; $4dfa: $f4
    di                                            ; $4dfb: $f3
    db $fc                                        ; $4dfc: $fc
    di                                            ; $4dfd: $f3
    inc b                                         ; $4dfe: $04
    db $fd                                        ; $4dff: $fd
    dec b                                         ; $4e00: $05
    inc bc                                        ; $4e01: $03
    push af                                       ; $4e02: $f5
    inc bc                                        ; $4e03: $03
    db $fd                                        ; $4e04: $fd
    add c                                         ; $4e05: $81
    ld bc, $0002                                  ; $4e06: $01 $02 $00
    sbc $01                                       ; $4e09: $de $01
    rrca                                          ; $4e0b: $0f
    nop                                           ; $4e0c: $00
    ld [bc], a                                    ; $4e0d: $02
    dec b                                         ; $4e0e: $05
    inc d                                         ; $4e0f: $14
    dec bc                                        ; $4e10: $0b
    jr z, jr_0f5_4e1a                             ; $4e11: $28 $07

    ld de, $300f                                  ; $4e13: $11 $0f $30
    rrca                                          ; $4e16: $0f
    ld h, a                                       ; $4e17: $67
    ld e, $d3                                     ; $4e18: $1e $d3

jr_0f5_4e1a:
    inc l                                         ; $4e1a: $2c
    ld h, [hl]                                    ; $4e1b: $66
    dec e                                         ; $4e1c: $1d
    dec bc                                        ; $4e1d: $0b
    inc a                                         ; $4e1e: $3c
    ld h, a                                       ; $4e1f: $67
    inc e                                         ; $4e20: $1c

jr_0f5_4e21:
    ld h, [hl]                                    ; $4e21: $66
    dec e                                         ; $4e22: $1d
    inc bc                                        ; $4e23: $03
    ld a, $d3                                     ; $4e24: $3e $d3
    inc l                                         ; $4e26: $2c
    or d                                          ; $4e27: $b2
    nop                                           ; $4e28: $00
    or d                                          ; $4e29: $b2
    nop                                           ; $4e2a: $00
    push de                                       ; $4e2b: $d5
    ld a, [hl+]                                   ; $4e2c: $2a
    add b                                         ; $4e2d: $80
    ld a, a                                       ; $4e2e: $7f
    ld [$42ff], sp                                ; $4e2f: $08 $ff $42
    rst $38                                       ; $4e32: $ff
    ld a, $e3                                     ; $4e33: $3e $e3
    ld l, e                                       ; $4e35: $6b
    sub h                                         ; $4e36: $94
    sub $29                                       ; $4e37: $d6 $29
    add c                                         ; $4e39: $81
    ld a, [hl]                                    ; $4e3a: $7e
    jr @+$01                                      ; $4e3b: $18 $ff

    xor d                                         ; $4e3d: $aa
    ld a, a                                       ; $4e3e: $7f
    inc e                                         ; $4e3f: $1c
    rst $38                                       ; $4e40: $ff
    ld a, e                                       ; $4e41: $7b
    rst $38                                       ; $4e42: $ff
    ld e, h                                       ; $4e43: $5c
    rst $38                                       ; $4e44: $ff
    xor d                                         ; $4e45: $aa
    ld a, a                                       ; $4e46: $7f
    add b                                         ; $4e47: $80
    nop                                           ; $4e48: $00
    ret nz                                        ; $4e49: $c0

    nop                                           ; $4e4a: $00
    add b                                         ; $4e4b: $80
    ld b, b                                       ; $4e4c: $40
    ld a, b                                       ; $4e4d: $78
    add b                                         ; $4e4e: $80
    jr nz, jr_0f5_4e21                            ; $4e4f: $20 $d0

    inc d                                         ; $4e51: $14
    add sp, -$76                                  ; $4e52: $e8 $8a
    ldh a, [$84]                                  ; $4e54: $f0 $84
    ld hl, sp-$5a                                 ; $4e56: $f8 $a6
    ld a, b                                       ; $4e58: $78
    db $d3                                        ; $4e59: $d3
    inc a                                         ; $4e5a: $3c
    ld h, l                                       ; $4e5b: $65
    sbc d                                         ; $4e5c: $9a
    or e                                          ; $4e5d: $b3
    ld e, h                                       ; $4e5e: $5c

jr_0f5_4e5f:
    jr nc, jr_0f5_4e5f                            ; $4e5f: $30 $fe

    ld h, e                                       ; $4e61: $63
    sbc h                                         ; $4e62: $9c
    inc sp                                        ; $4e63: $33
    call c, Call_000_1ef8                         ; $4e64: $dc $f8 $1e
    ld bc, $000b                                  ; $4e67: $01 $0b $00
    adc a                                         ; $4e6a: $8f
    bit 6, h                                      ; $4e6b: $cb $74
    add [hl]                                      ; $4e6d: $86
    ld a, b                                       ; $4e6e: $78
    ld c, h                                       ; $4e6f: $4c
    ldh a, [$88]                                  ; $4e70: $f0 $88
    ldh a, [rNR14]                                ; $4e72: $f0 $14
    ldh [$28], a                                  ; $4e74: $e0 $28
    ret nc                                        ; $4e76: $d0

    ld b, b                                       ; $4e77: $40
    and b                                         ; $4e78: $a0
    ldh a, [rSC]                                  ; $4e79: $f0 $02
    nop                                           ; $4e7b: $00
    ld [bc], a                                    ; $4e7c: $02
    add b                                         ; $4e7d: $80
    ld [bc], a                                    ; $4e7e: $02
    nop                                           ; $4e7f: $00
    adc [hl]                                      ; $4e80: $8e
    ld bc, $3ccb                                  ; $4e81: $01 $cb $3c
    ld h, a                                       ; $4e84: $67
    ld e, $22                                     ; $4e85: $1e $22
    rra                                           ; $4e87: $1f
    ld d, b                                       ; $4e88: $50
    rrca                                          ; $4e89: $0f
    jr z, jr_0f5_4ea3                             ; $4e8a: $28 $17

    inc b                                         ; $4e8c: $04
    dec bc                                        ; $4e8d: $0b
    ld e, $02                                     ; $4e8e: $1e $02
    ld bc, $0284                                  ; $4e90: $01 $84 $02
    inc bc                                        ; $4e93: $03
    nop                                           ; $4e94: $00
    ld bc, $000b                                  ; $4e95: $01 $0b $00
    sub l                                         ; $4e98: $95
    jr z, @+$01                                   ; $4e99: $28 $ff

    add e                                         ; $4e9b: $83
    ld a, h                                       ; $4e9c: $7c
    ld c, l                                       ; $4e9d: $4d
    or d                                          ; $4e9e: $b2
    rst $30                                       ; $4e9f: $f7
    add hl, bc                                    ; $4ea0: $09
    ld a, l                                       ; $4ea1: $7d
    rst $00                                       ; $4ea2: $c7

jr_0f5_4ea3:
    call nz, $08ff                                ; $4ea3: $c4 $ff $08
    rst $38                                       ; $4ea6: $ff
    add b                                         ; $4ea7: $80
    ld a, a                                       ; $4ea8: $7f
    xor e                                         ; $4ea9: $ab
    ld d, h                                       ; $4eaa: $54
    ld [hl], l                                    ; $4eab: $75
    nop                                           ; $4eac: $00
    dec h                                         ; $4ead: $25
    dec bc                                        ; $4eae: $0b
    nop                                           ; $4eaf: $00
    rst $38                                       ; $4eb0: $ff
    dec de                                        ; $4eb1: $1b
    dec bc                                        ; $4eb2: $0b
    ld hl, sp+$07                                 ; $4eb3: $f8 $07
    or $0b                                        ; $4eb5: $f6 $0b
    pop af                                        ; $4eb7: $f1
    ldh a, [$ee]                                  ; $4eb8: $f0 $ee
    ld hl, sp-$14                                 ; $4eba: $f8 $ec
    nop                                           ; $4ebc: $00
    pop af                                        ; $4ebd: $f1
    ld [$09f9], sp                                ; $4ebe: $08 $f9 $09
    ld bc, $fef0                                  ; $4ec1: $01 $f0 $fe
    ld hl, sp-$04                                 ; $4ec4: $f8 $fc
    nop                                           ; $4ec6: $00
    ld bc, $0c07                                  ; $4ec7: $01 $07 $0c
    ld hl, sp+$0c                                 ; $4eca: $f8 $0c
    rst $38                                       ; $4ecc: $ff
    pop bc                                        ; $4ecd: $c1
    ld [bc], a                                    ; $4ece: $02
    nop                                           ; $4ecf: $00
    ld bc, $0400                                  ; $4ed0: $01 $00 $04
    nop                                           ; $4ed3: $00
    inc bc                                        ; $4ed4: $03
    nop                                           ; $4ed5: $00
    dec b                                         ; $4ed6: $05
    nop                                           ; $4ed7: $00
    inc de                                        ; $4ed8: $13
    nop                                           ; $4ed9: $00
    ld c, $01                                     ; $4eda: $0e $01
    ld [hl+], a                                   ; $4edc: $22
    ld bc, $019e                                  ; $4edd: $01 $9e $01
    jr c, jr_0f5_4ee9                             ; $4ee0: $38 $07

    inc l                                         ; $4ee2: $2c
    inc bc                                        ; $4ee3: $03
    inc d                                         ; $4ee4: $14
    dec bc                                        ; $4ee5: $0b
    ld c, b                                       ; $4ee6: $48
    rlca                                          ; $4ee7: $07
    inc e                                         ; $4ee8: $1c

jr_0f5_4ee9:
    inc bc                                        ; $4ee9: $03
    ld c, l                                       ; $4eea: $4d
    inc bc                                        ; $4eeb: $03
    jr z, jr_0f5_4ef5                             ; $4eec: $28 $07

    inc h                                         ; $4eee: $24
    nop                                           ; $4eef: $00
    dec d                                         ; $4ef0: $15
    nop                                           ; $4ef1: $00
    ld sp, $af00                                  ; $4ef2: $31 $00 $af

jr_0f5_4ef5:
    db $10                                        ; $4ef5: $10
    ld a, [hl-]                                   ; $4ef6: $3a
    ld b, l                                       ; $4ef7: $45
    xor b                                         ; $4ef8: $a8
    rla                                           ; $4ef9: $17
    ldh [$1f], a                                  ; $4efa: $e0 $1f
    ld bc, $147f                                  ; $4efc: $01 $7f $14
    rst $38                                       ; $4eff: $ff
    adc a                                         ; $4f00: $8f
    ld a, c                                       ; $4f01: $79
    ccf                                           ; $4f02: $3f
    ldh a, [rKEY1]                                ; $4f03: $f0 $4d
    ld a, [$e778]                                 ; $4f05: $fa $78 $e7
    inc [hl]                                      ; $4f08: $34
    set 6, c                                      ; $4f09: $cb $f1
    rst $08                                       ; $4f0b: $cf
    ld h, l                                       ; $4f0c: $65
    sbc a                                         ; $4f0d: $9f
    add b                                         ; $4f0e: $80
    inc bc                                        ; $4f0f: $03
    nop                                           ; $4f10: $00
    cp l                                          ; $4f11: $bd
    sub d                                         ; $4f12: $92
    nop                                           ; $4f13: $00
    call nc, $c600                                ; $4f14: $d4 $00 $c6
    nop                                           ; $4f17: $00

jr_0f5_4f18:
    ld a, d                                       ; $4f18: $7a
    add h                                         ; $4f19: $84
    ld l, $d1                                     ; $4f1a: $2e $d1
    ld a, [bc]                                    ; $4f1c: $0a
    db $f4                                        ; $4f1d: $f4
    add e                                         ; $4f1e: $83
    db $fc                                        ; $4f1f: $fc
    ld b, b                                       ; $4f20: $40
    rst $38                                       ; $4f21: $ff
    ld d, h                                       ; $4f22: $54
    rst $38                                       ; $4f23: $ff
    cp b                                          ; $4f24: $b8
    ld c, a                                       ; $4f25: $4f
    ld a, [hl]                                    ; $4f26: $7e
    add a                                         ; $4f27: $87
    ld e, c                                       ; $4f28: $59
    xor a                                         ; $4f29: $af
    rrca                                          ; $4f2a: $0f
    di                                            ; $4f2b: $f3
    sub [hl]                                      ; $4f2c: $96
    jp hl                                         ; $4f2d: $e9


    and b                                         ; $4f2e: $a0
    nop                                           ; $4f2f: $00
    ld b, b                                       ; $4f30: $40
    nop                                           ; $4f31: $00
    sub b                                         ; $4f32: $90
    nop                                           ; $4f33: $00
    ldh [rP1], a                                  ; $4f34: $e0 $00
    ld d, b                                       ; $4f36: $50
    nop                                           ; $4f37: $00
    ld h, h                                       ; $4f38: $64
    add b                                         ; $4f39: $80
    cp b                                          ; $4f3a: $b8
    ld b, b                                       ; $4f3b: $40
    ld [hl+], a                                   ; $4f3c: $22
    ret nz                                        ; $4f3d: $c0

    inc a                                         ; $4f3e: $3c
    ret nz                                        ; $4f3f: $c0

    ld c, $f0                                     ; $4f40: $0e $f0
    ld e, d                                       ; $4f42: $5a
    ldh [$94], a                                  ; $4f43: $e0 $94
    add sp, $09                                   ; $4f45: $e8 $09
    ldh a, [$9c]                                  ; $4f47: $f0 $9c
    ldh [$59], a                                  ; $4f49: $e0 $59
    ldh [$8a], a                                  ; $4f4b: $e0 $8a
    ldh a, [rSB]                                  ; $4f4d: $f0 $01
    rrca                                          ; $4f4f: $0f
    nop                                           ; $4f50: $00
    db $f4                                        ; $4f51: $f4
    inc d                                         ; $4f52: $14
    ldh [$b2], a                                  ; $4f53: $e0 $b2
    ret nz                                        ; $4f55: $c0

    jr c, jr_0f5_4f18                             ; $4f56: $38 $c0

    ld [de], a                                    ; $4f58: $12
    ldh [$28], a                                  ; $4f59: $e0 $28

jr_0f5_4f5b:
    ret nc                                        ; $4f5b: $d0

    inc [hl]                                      ; $4f5c: $34
    ret nz                                        ; $4f5d: $c0

    inc e                                         ; $4f5e: $1c
    ldh [$79], a                                  ; $4f5f: $e0 $79

jr_0f5_4f61:
    add b                                         ; $4f61: $80
    jr z, jr_0f5_4f6b                             ; $4f62: $28 $07

    ld c, l                                       ; $4f64: $4d
    inc bc                                        ; $4f65: $03
    inc e                                         ; $4f66: $1c
    inc bc                                        ; $4f67: $03
    ld c, b                                       ; $4f68: $48
    rlca                                          ; $4f69: $07
    inc d                                         ; $4f6a: $14

jr_0f5_4f6b:
    dec bc                                        ; $4f6b: $0b
    inc l                                         ; $4f6c: $2c
    inc bc                                        ; $4f6d: $03
    jr c, jr_0f5_4f77                             ; $4f6e: $38 $07

    sbc [hl]                                      ; $4f70: $9e
    ld bc, $0122                                  ; $4f71: $01 $22 $01
    ld c, $01                                     ; $4f74: $0e $01
    inc de                                        ; $4f76: $13

jr_0f5_4f77:
    nop                                           ; $4f77: $00
    dec b                                         ; $4f78: $05
    nop                                           ; $4f79: $00
    inc bc                                        ; $4f7a: $03
    nop                                           ; $4f7b: $00
    inc b                                         ; $4f7c: $04
    nop                                           ; $4f7d: $00
    ld bc, $0200                                  ; $4f7e: $01 $00 $02
    nop                                           ; $4f81: $00
    or d                                          ; $4f82: $b2
    rst $08                                       ; $4f83: $cf
    rst $00                                       ; $4f84: $c7
    ccf                                           ; $4f85: $3f
    push hl                                       ; $4f86: $e5
    sbc a                                         ; $4f87: $9f
    db $eb                                        ; $4f88: $eb
    sbc a                                         ; $4f89: $9f
    rst $20                                       ; $4f8a: $e7
    ld a, a                                       ; $4f8b: $7f
    or d                                          ; $4f8c: $b2
    rst $08                                       ; $4f8d: $cf
    ld h, l                                       ; $4f8e: $65
    sbc a                                         ; $4f8f: $9f
    pop af                                        ; $4f90: $f1
    rst $08                                       ; $4f91: $cf
    inc [hl]                                      ; $4f92: $34
    bit 7, b                                      ; $4f93: $cb $78
    rst $20                                       ; $4f95: $e7
    ld c, l                                       ; $4f96: $4d
    ld a, [$f03f]                                 ; $4f97: $fa $3f $f0
    adc [hl]                                      ; $4f9a: $8e
    ld a, c                                       ; $4f9b: $79
    dec d                                         ; $4f9c: $15
    rst $38                                       ; $4f9d: $ff
    dec b                                         ; $4f9e: $05
    ld a, a                                       ; $4f9f: $7f
    ldh [$1f], a                                  ; $4fa0: $e0 $1f
    rst $00                                       ; $4fa2: $c7
    ld sp, hl                                     ; $4fa3: $f9
    db $d3                                        ; $4fa4: $d3
    db $fc                                        ; $4fa5: $fc
    and [hl]                                      ; $4fa6: $a6
    ld sp, hl                                     ; $4fa7: $f9
    pop af                                        ; $4fa8: $f1
    cp $e3                                        ; $4fa9: $fe $e3
    db $fc                                        ; $4fab: $fc
    jp $d1fc                                      ; $4fac: $c3 $fc $d1


    rst $38                                       ; $4faf: $ff
    and [hl]                                      ; $4fb0: $a6
    ld sp, hl                                     ; $4fb1: $f9
    db $d3                                        ; $4fb2: $d3
    db $fc                                        ; $4fb3: $fc
    ld b, a                                       ; $4fb4: $47
    ld sp, hl                                     ; $4fb5: $f9
    sub [hl]                                      ; $4fb6: $96
    jp hl                                         ; $4fb7: $e9


    rrca                                          ; $4fb8: $0f
    di                                            ; $4fb9: $f3
    ld e, c                                       ; $4fba: $59
    xor a                                         ; $4fbb: $af
    ld a, [hl]                                    ; $4fbc: $7e
    add a                                         ; $4fbd: $87
    ld hl, sp+$4f                                 ; $4fbe: $f8 $4f
    call nc, $40ff                                ; $4fc0: $d4 $ff $40
    nop                                           ; $4fc3: $00
    ld b, b                                       ; $4fc4: $40
    nop                                           ; $4fc5: $00
    ld [bc], a                                    ; $4fc6: $02
    ld b, b                                       ; $4fc7: $40
    add c                                         ; $4fc8: $81
    nop                                           ; $4fc9: $00
    inc bc                                        ; $4fca: $03
    ld b, b                                       ; $4fcb: $40
    sub l                                         ; $4fcc: $95
    nop                                           ; $4fcd: $00
    ld b, b                                       ; $4fce: $40
    nop                                           ; $4fcf: $00
    ld b, b                                       ; $4fd0: $40
    nop                                           ; $4fd1: $00
    ld b, b                                       ; $4fd2: $40
    ld de, $5c60                                  ; $4fd3: $11 $60 $5c
    jr nz, jr_0f5_500a                            ; $4fd6: $20 $32

    ld b, b                                       ; $4fd8: $40
    jr z, jr_0f5_4f5b                             ; $4fd9: $28 $80

    ldh a, [rP1]                                  ; $4fdb: $f0 $00
    ld c, b                                       ; $4fdd: $48
    nop                                           ; $4fde: $00
    jr nz, jr_0f5_4f61                            ; $4fdf: $20 $80

    ld d, b                                       ; $4fe1: $50
    dec b                                         ; $4fe2: $05
    nop                                           ; $4fe3: $00
    adc e                                         ; $4fe4: $8b
    xor b                                         ; $4fe5: $a8
    rla                                           ; $4fe6: $17
    ld a, [hl-]                                   ; $4fe7: $3a
    ld b, l                                       ; $4fe8: $45
    xor a                                         ; $4fe9: $af
    db $10                                        ; $4fea: $10
    jr nc, jr_0f5_4fee                            ; $4feb: $30 $01

    dec d                                         ; $4fed: $15

jr_0f5_4fee:
    nop                                           ; $4fee: $00
    inc h                                         ; $4fef: $24
    ld [de], a                                    ; $4ff0: $12
    nop                                           ; $4ff1: $00
    sub b                                         ; $4ff2: $90
    ld a, a                                       ; $4ff3: $7f
    ld hl, $057e                                  ; $4ff4: $21 $7e $05
    ld a, d                                       ; $4ff7: $7a
    rla                                           ; $4ff8: $17
    ld l, b                                       ; $4ff9: $68
    dec a                                         ; $4ffa: $3d
    ld b, d                                       ; $4ffb: $42

jr_0f5_4ffc:
    ld h, e                                       ; $4ffc: $63
    nop                                           ; $4ffd: $00
    ld a, [hl+]                                   ; $4ffe: $2a
    ld b, b                                       ; $4fff: $40
    ld c, c                                       ; $5000: $49
    nop                                           ; $5001: $00
    ld b, b                                       ; $5002: $40
    rrca                                          ; $5003: $0f
    nop                                           ; $5004: $00
    rst $38                                       ; $5005: $ff
    ld hl, $f80e                                  ; $5006: $21 $0e $f8
    rlca                                          ; $5009: $07

jr_0f5_500a:
    or $0b                                        ; $500a: $f6 $0b
    pop af                                        ; $500c: $f1
    db $ed                                        ; $500d: $ed
    db $eb                                        ; $500e: $eb
    push af                                       ; $500f: $f5
    add sp, -$03                                  ; $5010: $e8 $fd
    db $eb                                        ; $5012: $eb
    dec b                                         ; $5013: $05
    pop af                                        ; $5014: $f1
    inc c                                         ; $5015: $0c
    ld bc, $fbed                                  ; $5016: $01 $ed $fb
    push af                                       ; $5019: $f5
    ld hl, sp-$03                                 ; $501a: $f8 $fd
    ei                                            ; $501c: $fb
    dec b                                         ; $501d: $05
    ld bc, $080c                                  ; $501e: $01 $0c $08
    pop af                                        ; $5021: $f1
    ld [$08f9], sp                                ; $5022: $08 $f9 $08
    ld bc, $0808                                  ; $5025: $01 $08 $08
    pop bc                                        ; $5028: $c1
    ld [bc], a                                    ; $5029: $02
    nop                                           ; $502a: $00
    ld bc, $0600                                  ; $502b: $01 $00 $06
    nop                                           ; $502e: $00
    ld bc, $0c00                                  ; $502f: $01 $00 $0c
    nop                                           ; $5032: $00
    dec b                                         ; $5033: $05
    ld [bc], a                                    ; $5034: $02
    add d                                         ; $5035: $82
    nop                                           ; $5036: $00
    inc a                                         ; $5037: $3c
    ld bc, $0007                                  ; $5038: $01 $07 $00
    ld [hl], l                                    ; $503b: $75
    ld [bc], a                                    ; $503c: $02
    ld [$5e07], sp                                ; $503d: $08 $07 $5e
    ld bc, $0304                                  ; $5040: $01 $04 $03
    ld e, $01                                     ; $5043: $1e $01
    cp h                                          ; $5045: $bc
    inc bc                                        ; $5046: $03
    ld l, [hl]                                    ; $5047: $6e
    ld bc, $0004                                  ; $5048: $01 $04 $00
    dec b                                         ; $504b: $05
    nop                                           ; $504c: $00
    sbc h                                         ; $504d: $9c
    nop                                           ; $504e: $00
    ld d, e                                       ; $504f: $53
    inc b                                         ; $5050: $04
    ld l, a                                       ; $5051: $6f
    nop                                           ; $5052: $00
    or [hl]                                       ; $5053: $b6
    ld bc, $057a                                  ; $5054: $01 $7a $05
    or b                                          ; $5057: $b0
    rrca                                          ; $5058: $0f
    and b                                         ; $5059: $a0
    rra                                           ; $505a: $1f
    push bc                                       ; $505b: $c5
    ccf                                           ; $505c: $3f
    add l                                         ; $505d: $85
    ld a, a                                       ; $505e: $7f
    ld b, e                                       ; $505f: $43
    cp [hl]                                       ; $5060: $be
    rla                                           ; $5061: $17
    db $fc                                        ; $5062: $fc
    daa                                           ; $5063: $27
    cp $57                                        ; $5064: $fe $57
    ld hl, sp+$2f                                 ; $5066: $f8 $2f
    ldh a, [rNR10]                                ; $5068: $f0 $10
    inc bc                                        ; $506a: $03
    nop                                           ; $506b: $00
    pop bc                                        ; $506c: $c1
    jr z, jr_0f5_506f                             ; $506d: $28 $00

jr_0f5_506f:
    ld b, d                                       ; $506f: $42
    nop                                           ; $5070: $00
    ld l, c                                       ; $5071: $69
    nop                                           ; $5072: $00
    xor $00                                       ; $5073: $ee $00
    ld a, l                                       ; $5075: $7d
    nop                                           ; $5076: $00
    rst $10                                       ; $5077: $d7
    jr z, jr_0f5_4ffc                             ; $5078: $28 $82

    ld a, l                                       ; $507a: $7d
    nop                                           ; $507b: $00
    rst $38                                       ; $507c: $ff
    ld b, h                                       ; $507d: $44
    rst $38                                       ; $507e: $ff
    ld l, h                                       ; $507f: $6c
    rst $38                                       ; $5080: $ff
    rst $10                                       ; $5081: $d7
    rst $38                                       ; $5082: $ff

jr_0f5_5083:
    ld a, l                                       ; $5083: $7d
    cp e                                          ; $5084: $bb
    rst $38                                       ; $5085: $ff
    add d                                         ; $5086: $82
    rst $38                                       ; $5087: $ff
    nop                                           ; $5088: $00
    ld b, b                                       ; $5089: $40
    nop                                           ; $508a: $00
    ld b, b                                       ; $508b: $40
    nop                                           ; $508c: $00
    ld [hl], b                                    ; $508d: $70
    nop                                           ; $508e: $00
    sub l                                         ; $508f: $95
    ld b, b                                       ; $5090: $40
    db $ec                                        ; $5091: $ec
    nop                                           ; $5092: $00
    jp c, $bc00                                   ; $5093: $da $00 $bc

    ld b, b                                       ; $5096: $40
    dec de                                        ; $5097: $1b
    ldh [$8a], a                                  ; $5098: $e0 $8a
    ldh a, [rBGP]                                 ; $509a: $f0 $47
    ld hl, sp+$42                                 ; $509c: $f8 $42
    db $fc                                        ; $509e: $fc
    add l                                         ; $509f: $85
    ld a, [$7ed0]                                 ; $50a0: $fa $d0 $7e
    ret z                                         ; $50a3: $c8

    ld a, a                                       ; $50a4: $7f
    pop af                                        ; $50a5: $f1
    ld a, $f9                                     ; $50a6: $3e $f9
    ld c, $40                                     ; $50a8: $0e $40
    nop                                           ; $50aa: $00
    ld b, b                                       ; $50ab: $40
    nop                                           ; $50ac: $00
    ld h, b                                       ; $50ad: $60
    inc bc                                        ; $50ae: $03
    nop                                           ; $50af: $00
    db $e3                                        ; $50b0: $e3
    jr nc, jr_0f5_50b3                            ; $50b1: $30 $00

jr_0f5_50b3:
    jr nz, jr_0f5_50f5                            ; $50b3: $20 $40

    ld b, c                                       ; $50b5: $41
    nop                                           ; $50b6: $00
    inc a                                         ; $50b7: $3c
    nop                                           ; $50b8: $00
    ld h, b                                       ; $50b9: $60
    nop                                           ; $50ba: $00
    ld l, $40                                     ; $50bb: $2e $40
    db $10                                        ; $50bd: $10
    ldh [$7a], a                                  ; $50be: $e0 $7a
    add b                                         ; $50c0: $80
    jr nz, jr_0f5_5083                            ; $50c1: $20 $c0

    ld a, b                                       ; $50c3: $78
    add b                                         ; $50c4: $80
    dec a                                         ; $50c5: $3d
    ret nz                                        ; $50c6: $c0

    halt                                          ; $50c7: $76
    add b                                         ; $50c8: $80
    inc b                                         ; $50c9: $04
    inc bc                                        ; $50ca: $03
    cp h                                          ; $50cb: $bc
    inc bc                                        ; $50cc: $03
    ld e, $01                                     ; $50cd: $1e $01
    inc b                                         ; $50cf: $04
    inc bc                                        ; $50d0: $03
    ld e, [hl]                                    ; $50d1: $5e
    ld bc, $0708                                  ; $50d2: $01 $08 $07
    ld [hl], l                                    ; $50d5: $75
    ld [bc], a                                    ; $50d6: $02
    rlca                                          ; $50d7: $07
    nop                                           ; $50d8: $00
    inc a                                         ; $50d9: $3c
    ld bc, $0002                                  ; $50da: $01 $02 $00
    ld b, l                                       ; $50dd: $45
    ld [bc], a                                    ; $50de: $02
    inc c                                         ; $50df: $0c
    nop                                           ; $50e0: $00
    ld bc, $0600                                  ; $50e1: $01 $00 $06
    nop                                           ; $50e4: $00
    inc bc                                        ; $50e5: $03

jr_0f5_50e6:
    nop                                           ; $50e6: $00
    ld [bc], a                                    ; $50e7: $02
    nop                                           ; $50e8: $00
    inc c                                         ; $50e9: $0c
    ei                                            ; $50ea: $fb
    ld a, [hl]                                    ; $50eb: $7e
    pop af                                        ; $50ec: $f1
    jr jr_0f5_50e6                                ; $50ed: $18 $f7

    cp b                                          ; $50ef: $b8
    rst $20                                       ; $50f0: $e7
    ld e, l                                       ; $50f1: $5d
    db $e3                                        ; $50f2: $e3
    ld d, b                                       ; $50f3: $50

jr_0f5_50f4:
    rst $28                                       ; $50f4: $ef

jr_0f5_50f5:
    cp l                                          ; $50f5: $bd
    db $d3                                        ; $50f6: $d3
    ld e, b                                       ; $50f7: $58
    rst $20                                       ; $50f8: $e7
    db $fc                                        ; $50f9: $fc
    db $e3                                        ; $50fa: $e3
    jr jr_0f5_50f4                                ; $50fb: $18 $f7

    ld a, [hl]                                    ; $50fd: $7e
    pop hl                                        ; $50fe: $e1
    inc l                                         ; $50ff: $2c
    db $d3                                        ; $5100: $d3
    ld a, $e1                                     ; $5101: $3e $e1
    ld d, a                                       ; $5103: $57
    ld hl, sp+$27                                 ; $5104: $f8 $27
    cp $1f                                        ; $5106: $fe $1f
    db $fc                                        ; $5108: $fc
    xor d                                         ; $5109: $aa
    ld d, l                                       ; $510a: $55
    ld bc, $28fe                                  ; $510b: $01 $fe $28
    rst $38                                       ; $510e: $ff
    ld d, h                                       ; $510f: $54
    rst $38                                       ; $5110: $ff
    ld l, h                                       ; $5111: $6c
    rst $38                                       ; $5112: $ff
    cp d                                          ; $5113: $ba
    inc bc                                        ; $5114: $03
    rst $38                                       ; $5115: $ff
    pop de                                        ; $5116: $d1
    ld a, h                                       ; $5117: $7c
    rst $38                                       ; $5118: $ff
    cp $ff                                        ; $5119: $fe $ff
    ld a, l                                       ; $511b: $7d

jr_0f5_511c:
    rst $38                                       ; $511c: $ff
    cp $ff                                        ; $511d: $fe $ff
    ld a, [hl]                                    ; $511f: $7e
    rst $38                                       ; $5120: $ff
    cp d                                          ; $5121: $ba
    rst $38                                       ; $5122: $ff
    ld l, h                                       ; $5123: $6c
    rst $38                                       ; $5124: $ff
    ld d, b                                       ; $5125: $50
    rst $38                                       ; $5126: $ff
    ld [bc], a                                    ; $5127: $02
    db $fd                                        ; $5128: $fd
    ld l, b                                       ; $5129: $68
    sub [hl]                                      ; $512a: $96
    ld a, h                                       ; $512b: $7c
    adc [hl]                                      ; $512c: $8e
    jr nc, @-$20                                  ; $512d: $30 $de

    ld a, d                                       ; $512f: $7a
    adc [hl]                                      ; $5130: $8e
    inc [hl]                                      ; $5131: $34
    adc $14                                       ; $5132: $ce $14
    xor $3a                                       ; $5134: $ee $3a
    rst $10                                       ; $5136: $d7
    inc [hl]                                      ; $5137: $34
    rst $08                                       ; $5138: $cf
    ld a, [hl]                                    ; $5139: $7e
    adc a                                         ; $513a: $8f
    jr nc, jr_0f5_511c                            ; $513b: $30 $df

    db $f4                                        ; $513d: $f4
    rrca                                          ; $513e: $0f
    ld l, b                                       ; $513f: $68
    or a                                          ; $5140: $b7
    ld sp, hl                                     ; $5141: $f9
    ld c, $f5                                     ; $5142: $0e $f5
    ld a, $88                                     ; $5144: $3e $88
    rst $38                                       ; $5146: $ff
    ret nc                                        ; $5147: $d0

    ld a, [hl]                                    ; $5148: $7e
    jr nz, jr_0f5_518b                            ; $5149: $20 $40

    dec a                                         ; $514b: $3d
    ld b, b                                       ; $514c: $40
    ld a, b                                       ; $514d: $78
    nop                                           ; $514e: $00
    jr nz, jr_0f5_5191                            ; $514f: $20 $40

    ld a, d                                       ; $5151: $7a
    nop                                           ; $5152: $00
    db $10                                        ; $5153: $10
    ld h, b                                       ; $5154: $60
    ld l, $40                                     ; $5155: $2e $40
    ld h, b                                       ; $5157: $60
    nop                                           ; $5158: $00
    inc a                                         ; $5159: $3c
    nop                                           ; $515a: $00
    ld b, c                                       ; $515b: $41
    nop                                           ; $515c: $00
    and b                                         ; $515d: $a0
    ld b, b                                       ; $515e: $40
    jr nc, jr_0f5_5161                            ; $515f: $30 $00

jr_0f5_5161:
    add b                                         ; $5161: $80
    nop                                           ; $5162: $00

jr_0f5_5163:
    ld h, b                                       ; $5163: $60
    nop                                           ; $5164: $00
    ret nz                                        ; $5165: $c0

    nop                                           ; $5166: $00
    ld b, b                                       ; $5167: $40
    rlca                                          ; $5168: $07
    nop                                           ; $5169: $00
    sub e                                         ; $516a: $93
    inc b                                         ; $516b: $04
    dec bc                                        ; $516c: $0b
    ld [$0c07], sp                                ; $516d: $08 $07 $0c
    inc bc                                        ; $5170: $03
    ld a, [bc]                                    ; $5171: $0a
    ld bc, $000b                                  ; $5172: $01 $0b $00
    rlca                                          ; $5175: $07
    nop                                           ; $5176: $00
    dec bc                                        ; $5177: $0b
    nop                                           ; $5178: $00
    add [hl]                                      ; $5179: $86
    nop                                           ; $517a: $00
    dec b                                         ; $517b: $05
    nop                                           ; $517c: $00
    add hl, bc                                    ; $517d: $09
    rlca                                          ; $517e: $07
    nop                                           ; $517f: $00
    cp a                                          ; $5180: $bf
    inc b                                         ; $5181: $04
    dec bc                                        ; $5182: $0b
    dec c                                         ; $5183: $0d
    ld [bc], a                                    ; $5184: $02
    rrca                                          ; $5185: $0f
    nop                                           ; $5186: $00
    cpl                                           ; $5187: $2f
    ld hl, sp+$57                                 ; $5188: $f8 $57
    ei                                            ; $518a: $fb

jr_0f5_518b:
    ld e, l                                       ; $518b: $5d
    rst $38                                       ; $518c: $ff
    ld [bc], a                                    ; $518d: $02
    rst $38                                       ; $518e: $ff
    inc b                                         ; $518f: $04
    rst $38                                       ; $5190: $ff

jr_0f5_5191:
    and b                                         ; $5191: $a0
    ld e, a                                       ; $5192: $5f
    ld l, b                                       ; $5193: $68
    rla                                           ; $5194: $17
    db $fd                                        ; $5195: $fd
    ld [bc], a                                    ; $5196: $02
    scf                                           ; $5197: $37
    ld b, b                                       ; $5198: $40
    adc $00                                       ; $5199: $ce $00
    ld d, [hl]                                    ; $519b: $56
    nop                                           ; $519c: $00
    ld b, b                                       ; $519d: $40
    nop                                           ; $519e: $00
    add d                                         ; $519f: $82
    nop                                           ; $51a0: $00
    jr nc, jr_0f5_5163                            ; $51a1: $30 $c0

    ld [hl], b                                    ; $51a3: $70
    add b                                         ; $51a4: $80
    ldh a, [rP1]                                  ; $51a5: $f0 $00
    ld hl, sp+$2f                                 ; $51a7: $f8 $2f
    sub $bf                                       ; $51a9: $d6 $bf
    ld [hl], b                                    ; $51ab: $70
    rst $38                                       ; $51ac: $ff
    ret z                                         ; $51ad: $c8

    rst $38                                       ; $51ae: $ff
    add c                                         ; $51af: $81
    cp $0b                                        ; $51b0: $fe $0b
    db $f4                                        ; $51b2: $f4
    dec l                                         ; $51b3: $2d
    ret nc                                        ; $51b4: $d0

    ld a, [hl]                                    ; $51b5: $7e
    add b                                         ; $51b6: $80
    reti                                          ; $51b7: $d9


    inc b                                         ; $51b8: $04
    rst $20                                       ; $51b9: $e7
    nop                                           ; $51ba: $00
    call nz, $6400                                ; $51bb: $c4 $00 $64
    nop                                           ; $51be: $00
    add d                                         ; $51bf: $82
    rlca                                          ; $51c0: $07
    nop                                           ; $51c1: $00
    sub e                                         ; $51c2: $93
    jr nz, @+$52                                  ; $51c3: $20 $50

    db $10                                        ; $51c5: $10
    ld h, b                                       ; $51c6: $60
    jr nc, jr_0f5_5209                            ; $51c7: $30 $40

    ld d, b                                       ; $51c9: $50
    nop                                           ; $51ca: $00
    ld d, b                                       ; $51cb: $50
    nop                                           ; $51cc: $00
    ld h, b                                       ; $51cd: $60
    nop                                           ; $51ce: $00
    ld d, b                                       ; $51cf: $50
    nop                                           ; $51d0: $00
    ld h, c                                       ; $51d1: $61
    nop                                           ; $51d2: $00
    jr nz, jr_0f5_51d5                            ; $51d3: $20 $00

jr_0f5_51d5:
    db $10                                        ; $51d5: $10
    rlca                                          ; $51d6: $07
    nop                                           ; $51d7: $00
    rst $38                                       ; $51d8: $ff
    dec hl                                        ; $51d9: $2b
    inc de                                        ; $51da: $13
    ld hl, sp+$07                                 ; $51db: $f8 $07
    or $0b                                        ; $51dd: $f6 $0b
    db $f4                                        ; $51df: $f4
    rst $20                                       ; $51e0: $e7
    inc b                                         ; $51e1: $04
    rst $20                                       ; $51e2: $e7
    ld [$faef], a                                 ; $51e3: $ea $ef $fa
    rst $28                                       ; $51e6: $ef
    ld a, [bc]                                    ; $51e7: $0a
    rst $28                                       ; $51e8: $ef
    jp hl                                         ; $51e9: $e9


    rst $30                                       ; $51ea: $f7
    ld sp, hl                                     ; $51eb: $f9
    rst $30                                       ; $51ec: $f7
    add hl, bc                                    ; $51ed: $09
    rst $30                                       ; $51ee: $f7
    add hl, de                                    ; $51ef: $19
    ld sp, hl                                     ; $51f0: $f9
    and $ff                                       ; $51f1: $e6 $ff
    or $ff                                        ; $51f3: $f6 $ff
    ld b, $ff                                     ; $51f5: $06 $ff
    ld d, $ff                                     ; $51f7: $16 $ff
    ld [$fa07], a                                 ; $51f9: $ea $07 $fa
    rlca                                          ; $51fc: $07
    ld a, [bc]                                    ; $51fd: $0a
    rlca                                          ; $51fe: $07
    rst $28                                       ; $51ff: $ef
    rrca                                          ; $5200: $0f
    rst $38                                       ; $5201: $ff
    rrca                                          ; $5202: $0f
    db $10                                        ; $5203: $10
    rrca                                          ; $5204: $0f
    add c                                         ; $5205: $81
    ld bc, $0003                                  ; $5206: $01 $03 $00

jr_0f5_5209:
    add e                                         ; $5209: $83
    inc d                                         ; $520a: $14
    nop                                           ; $520b: $00
    ld [bc], a                                    ; $520c: $02
    inc bc                                        ; $520d: $03
    nop                                           ; $520e: $00
    add a                                         ; $520f: $87
    dec b                                         ; $5210: $05
    nop                                           ; $5211: $00
    ld c, $00                                     ; $5212: $0e $00
    ld bc, $0b00                                  ; $5214: $01 $00 $0b
    inc bc                                        ; $5217: $03
    nop                                           ; $5218: $00
    add a                                         ; $5219: $87
    ld [bc], a                                    ; $521a: $02
    nop                                           ; $521b: $00
    rla                                           ; $521c: $17
    nop                                           ; $521d: $00
    ld bc, $0500                                  ; $521e: $01 $00 $05
    inc bc                                        ; $5221: $03
    nop                                           ; $5222: $00
    add e                                         ; $5223: $83
    rla                                           ; $5224: $17
    nop                                           ; $5225: $00
    ld bc, $0003                                  ; $5226: $01 $03 $00
    add a                                         ; $5229: $87
    dec bc                                        ; $522a: $0b
    nop                                           ; $522b: $00
    ld bc, $0600                                  ; $522c: $01 $00 $06
    nop                                           ; $522f: $00
    inc bc                                        ; $5230: $03
    inc bc                                        ; $5231: $03
    nop                                           ; $5232: $00
    add c                                         ; $5233: $81
    inc bc                                        ; $5234: $03
    dec b                                         ; $5235: $05
    nop                                           ; $5236: $00
    add c                                         ; $5237: $81
    add hl, bc                                    ; $5238: $09
    dec bc                                        ; $5239: $0b
    nop                                           ; $523a: $00
    add c                                         ; $523b: $81
    ld bc, $0003                                  ; $523c: $01 $03 $00
    reti                                          ; $523f: $d9


    inc b                                         ; $5240: $04
    nop                                           ; $5241: $00
    rlca                                          ; $5242: $07
    nop                                           ; $5243: $00
    adc d                                         ; $5244: $8a
    ld bc, $0006                                  ; $5245: $01 $06 $00
    dec hl                                        ; $5248: $2b
    nop                                           ; $5249: $00
    dec e                                         ; $524a: $1d
    nop                                           ; $524b: $00
    ld [$1d01], a                                 ; $524c: $ea $01 $1d
    ld [bc], a                                    ; $524f: $02
    ld c, b                                       ; $5250: $48
    rlca                                          ; $5251: $07
    call nc, $202b                                ; $5252: $d4 $2b $20
    rrca                                          ; $5255: $0f
    ld b, c                                       ; $5256: $41
    rra                                           ; $5257: $1f
    db $f4                                        ; $5258: $f4
    rrca                                          ; $5259: $0f
    and e                                         ; $525a: $a3
    ld e, a                                       ; $525b: $5f
    jp nz, Jump_0f5_433f                          ; $525c: $c2 $3f $43

    cp l                                          ; $525f: $bd
    rst $30                                       ; $5260: $f7
    rra                                           ; $5261: $1f
    add c                                         ; $5262: $81
    ld a, [hl]                                    ; $5263: $7e
    add $3f                                       ; $5264: $c6 $3f
    dec h                                         ; $5266: $25
    rst $18                                       ; $5267: $df
    rst $08                                       ; $5268: $cf
    ld a, [hl-]                                   ; $5269: $3a
    add a                                         ; $526a: $87
    ld a, h                                       ; $526b: $7c
    srl a                                         ; $526c: $cb $3f
    add l                                         ; $526e: $85
    ld a, a                                       ; $526f: $7f
    rst $00                                       ; $5270: $c7
    ld a, $81                                     ; $5271: $3e $81
    ld a, [hl]                                    ; $5273: $7e
    rst $30                                       ; $5274: $f7
    dec e                                         ; $5275: $1d
    ld b, c                                       ; $5276: $41
    cp a                                          ; $5277: $bf
    jp nz, Jump_0f5_633f                          ; $5278: $c2 $3f $63

    rra                                           ; $527b: $1f
    sub h                                         ; $527c: $94
    ld l, a                                       ; $527d: $6f
    jp $201f                                      ; $527e: $c3 $1f $20


    rrca                                          ; $5281: $0f
    call nc, $882b                                ; $5282: $d4 $2b $88
    rlca                                          ; $5285: $07
    dec e                                         ; $5286: $1d
    ld [bc], a                                    ; $5287: $02
    jp z, $1d01                                   ; $5288: $ca $01 $1d

    nop                                           ; $528b: $00
    inc sp                                        ; $528c: $33
    nop                                           ; $528d: $00
    ld b, b                                       ; $528e: $40
    nop                                           ; $528f: $00
    ld a, [bc]                                    ; $5290: $0a
    ld bc, $0003                                  ; $5291: $01 $03 $00
    add h                                         ; $5294: $84
    nop                                           ; $5295: $00
    ld [$0100], sp                                ; $5296: $08 $00 $01
    inc bc                                        ; $5299: $03
    nop                                           ; $529a: $00
    db $e3                                        ; $529b: $e3
    dec b                                         ; $529c: $05
    nop                                           ; $529d: $00
    jr z, jr_0f5_52a0                             ; $529e: $28 $00

jr_0f5_52a0:
    and l                                         ; $52a0: $a5
    nop                                           ; $52a1: $00
    sbc e                                         ; $52a2: $9b
    jr nz, jr_0f5_5322                            ; $52a3: $20 $7d

    ld [bc], a                                    ; $52a5: $02
    and [hl]                                      ; $52a6: $a6
    add hl, de                                    ; $52a7: $19
    ld d, b                                       ; $52a8: $50
    xor a                                         ; $52a9: $af
    add c                                         ; $52aa: $81
    ld a, a                                       ; $52ab: $7f
    ld b, [hl]                                    ; $52ac: $46
    cp a                                          ; $52ad: $bf
    inc de                                        ; $52ae: $13
    rst $38                                       ; $52af: $ff
    dec l                                         ; $52b0: $2d
    rst $38                                       ; $52b1: $ff
    xor e                                         ; $52b2: $ab
    db $fc                                        ; $52b3: $fc
    rra                                           ; $52b4: $1f
    push af                                       ; $52b5: $f5
    cp a                                          ; $52b6: $bf
    db $e4                                        ; $52b7: $e4
    ld d, l                                       ; $52b8: $55
    cp d                                          ; $52b9: $ba
    cp h                                          ; $52ba: $bc
    jp $8ff0                                      ; $52bb: $c3 $f0 $8f


    ld [$6337], a                                 ; $52be: $ea $37 $63
    rst $18                                       ; $52c1: $df
    pop hl                                        ; $52c2: $e1
    rra                                           ; $52c3: $1f
    res 7, a                                      ; $52c4: $cb $bf
    rst $00                                       ; $52c6: $c7
    ccf                                           ; $52c7: $3f
    push bc                                       ; $52c8: $c5
    ccf                                           ; $52c9: $3f
    srl a                                         ; $52ca: $cb $3f
    rst $10                                       ; $52cc: $d7
    ccf                                           ; $52cd: $3f
    add e                                         ; $52ce: $83
    ld a, a                                       ; $52cf: $7f
    push hl                                       ; $52d0: $e5
    rra                                           ; $52d1: $1f
    adc e                                         ; $52d2: $8b
    ld a, a                                       ; $52d3: $7f
    pop bc                                        ; $52d4: $c1
    ccf                                           ; $52d5: $3f
    ld a, [c]                                     ; $52d6: $f2
    adc a                                         ; $52d7: $8f
    ld l, c                                       ; $52d8: $69
    rst $10                                       ; $52d9: $d7
    ld a, b                                       ; $52da: $78
    add a                                         ; $52db: $87
    cp $a9                                        ; $52dc: $fe $a9
    cp [hl]                                       ; $52de: $be
    ld h, c                                       ; $52df: $61
    rra                                           ; $52e0: $1f
    ld a, [$ecb7]                                 ; $52e1: $fa $b7 $ec
    rla                                           ; $52e4: $17
    ei                                            ; $52e5: $fb
    xor c                                         ; $52e6: $a9
    cp $2d                                        ; $52e7: $fe $2d
    rst $38                                       ; $52e9: $ff
    ld d, e                                       ; $52ea: $53
    rst $38                                       ; $52eb: $ff
    ld b, $ff                                     ; $52ec: $06 $ff
    ld bc, $50ff                                  ; $52ee: $01 $ff $50
    xor a                                         ; $52f1: $af
    or h                                          ; $52f2: $b4
    dec bc                                        ; $52f3: $0b
    ld a, l                                       ; $52f4: $7d
    ld [bc], a                                    ; $52f5: $02
    sbc d                                         ; $52f6: $9a
    ld hl, $00e5                                  ; $52f7: $21 $e5 $00
    jr z, jr_0f5_52fc                             ; $52fa: $28 $00

jr_0f5_52fc:
    or h                                          ; $52fc: $b4
    nop                                           ; $52fd: $00
    ld [hl+], a                                   ; $52fe: $22
    dec e                                         ; $52ff: $1d
    nop                                           ; $5300: $00
    add c                                         ; $5301: $81
    ld b, b                                       ; $5302: $40
    inc bc                                        ; $5303: $03
    nop                                           ; $5304: $00
    rst $20                                       ; $5305: $e7
    and d                                         ; $5306: $a2
    nop                                           ; $5307: $00
    ld d, $00                                     ; $5308: $16 $00
    and d                                         ; $530a: $a2
    nop                                           ; $530b: $00
    or h                                          ; $530c: $b4
    nop                                           ; $530d: $00
    db $db                                        ; $530e: $db
    jr nz, jr_0f5_5368                            ; $530f: $20 $57

    xor b                                         ; $5311: $a8
    dec b                                         ; $5312: $05
    ld a, [$fe21]                                 ; $5313: $fa $21 $fe
    jr nc, @+$01                                  ; $5316: $30 $ff

    db $ec                                        ; $5318: $ec
    rst $38                                       ; $5319: $ff
    ld sp, hl                                     ; $531a: $f9
    cp a                                          ; $531b: $bf
    ld d, [hl]                                    ; $531c: $56
    rst $38                                       ; $531d: $ff
    ld a, [c]                                     ; $531e: $f2
    xor l                                         ; $531f: $ad
    db $fd                                        ; $5320: $fd
    rlca                                          ; $5321: $07

jr_0f5_5322:
    push af                                       ; $5322: $f5
    ld a, [bc]                                    ; $5323: $0a
    cpl                                           ; $5324: $2f
    ret nc                                        ; $5325: $d0

    dec c                                         ; $5326: $0d
    ld a, [c]                                     ; $5327: $f2
    ld h, e                                       ; $5328: $63
    db $fc                                        ; $5329: $fc
    pop de                                        ; $532a: $d1
    cp $68                                        ; $532b: $fe $68
    rst $38                                       ; $532d: $ff
    db $fc                                        ; $532e: $fc
    rst $38                                       ; $532f: $ff
    ld [$fcff], a                                 ; $5330: $ea $ff $fc
    rst $38                                       ; $5333: $ff
    ld a, [$fdff]                                 ; $5334: $fa $ff $fd
    rst $38                                       ; $5337: $ff
    db $f4                                        ; $5338: $f4
    rst $38                                       ; $5339: $ff
    ld a, [$f8ff]                                 ; $533a: $fa $ff $f8
    rst $38                                       ; $533d: $ff
    ld [hl], h                                    ; $533e: $74
    rst $38                                       ; $533f: $ff
    ret c                                         ; $5340: $d8

    rst $38                                       ; $5341: $ff
    and c                                         ; $5342: $a1
    cp $55                                        ; $5343: $fe $55
    ld a, [$fc63]                                 ; $5345: $fa $63 $fc
    rlca                                          ; $5348: $07
    ld sp, hl                                     ; $5349: $f9
    rst $18                                       ; $534a: $df
    ld hl, $08f7                                  ; $534b: $21 $f7 $08
    cp l                                          ; $534e: $bd
    ld h, d                                       ; $534f: $62
    sbc l                                         ; $5350: $9d
    ld l, a                                       ; $5351: $6f
    ld a, [c]                                     ; $5352: $f2
    rst $18                                       ; $5353: $df
    ld d, [hl]                                    ; $5354: $56
    rst $38                                       ; $5355: $ff
    cp c                                          ; $5356: $b9
    rst $38                                       ; $5357: $ff
    xor h                                         ; $5358: $ac
    rst $38                                       ; $5359: $ff
    db $10                                        ; $535a: $10
    rst $38                                       ; $535b: $ff
    add c                                         ; $535c: $81
    cp $25                                        ; $535d: $fe $25
    jp c, $a856                                   ; $535f: $da $56 $a8

    ei                                            ; $5362: $fb
    nop                                           ; $5363: $00
    and h                                         ; $5364: $a4
    nop                                           ; $5365: $00
    or d                                          ; $5366: $b2
    nop                                           ; $5367: $00

jr_0f5_5368:
    ld d, $00                                     ; $5368: $16 $00
    ld [bc], a                                    ; $536a: $02
    nop                                           ; $536b: $00
    jr nz, jr_0f5_5383                            ; $536c: $20 $15

    nop                                           ; $536e: $00
    db $e3                                        ; $536f: $e3
    sub b                                         ; $5370: $90
    nop                                           ; $5371: $00
    ldh [rP1], a                                  ; $5372: $e0 $00
    dec h                                         ; $5374: $25
    add b                                         ; $5375: $80
    call c, $aa00                                 ; $5376: $dc $00 $aa
    db $10                                        ; $5379: $10
    ld l, h                                       ; $537a: $6c
    add b                                         ; $537b: $80
    add hl, sp                                    ; $537c: $39
    ret nz                                        ; $537d: $c0

    ld d, [hl]                                    ; $537e: $56
    and b                                         ; $537f: $a0
    ld a, [bc]                                    ; $5380: $0a
    ldh a, [$97]                                  ; $5381: $f0 $97

jr_0f5_5383:
    add sp, -$5e                                  ; $5383: $e8 $a2
    db $fc                                        ; $5385: $fc
    dec b                                         ; $5386: $05
    ld a, [$fea0]                                 ; $5387: $fa $a0 $fe
    db $10                                        ; $538a: $10
    rst $38                                       ; $538b: $ff
    and l                                         ; $538c: $a5
    ld a, [hl]                                    ; $538d: $7e
    ld hl, sp+$1f                                 ; $538e: $f8 $1f
    ret z                                         ; $5390: $c8

    cp a                                          ; $5391: $bf
    ret nc                                        ; $5392: $d0

    ld a, a                                       ; $5393: $7f
    db $fd                                        ; $5394: $fd
    rrca                                          ; $5395: $0f
    ld h, b                                       ; $5396: $60
    sbc a                                         ; $5397: $9f
    cp h                                          ; $5398: $bc
    ld c, a                                       ; $5399: $4f
    ld [hl], h                                    ; $539a: $74
    sbc a                                         ; $539b: $9f
    ld a, d                                       ; $539c: $7a
    and a                                         ; $539d: $a7
    db $e4                                        ; $539e: $e4
    rra                                           ; $539f: $1f
    ld a, d                                       ; $53a0: $7a
    adc a                                         ; $53a1: $8f
    or h                                          ; $53a2: $b4
    ld e, a                                       ; $53a3: $5f
    db $ec                                        ; $53a4: $ec
    rla                                           ; $53a5: $17
    ld [hl], b                                    ; $53a6: $70
    sbc a                                         ; $53a7: $9f
    ld a, l                                       ; $53a8: $7d
    xor a                                         ; $53a9: $af
    ret nc                                        ; $53aa: $d0

    ld a, a                                       ; $53ab: $7f
    ret z                                         ; $53ac: $c8

    ccf                                           ; $53ad: $3f
    ld hl, sp+$5f                                 ; $53ae: $f8 $5f
    and l                                         ; $53b0: $a5
    ld a, [hl]                                    ; $53b1: $7e
    db $10                                        ; $53b2: $10
    rst $38                                       ; $53b3: $ff
    and b                                         ; $53b4: $a0
    cp $05                                        ; $53b5: $fe $05
    ld a, [$fca2]                                 ; $53b7: $fa $a2 $fc
    rla                                           ; $53ba: $17
    add sp, $4a                                   ; $53bb: $e8 $4a
    ldh a, [rNR22]                                ; $53bd: $f0 $17
    ldh [$bb], a                                  ; $53bf: $e0 $bb
    ld b, b                                       ; $53c1: $40
    ld l, b                                       ; $53c2: $68
    add b                                         ; $53c3: $80
    xor d                                         ; $53c4: $aa
    db $10                                        ; $53c5: $10
    call z, $2200                                 ; $53c6: $cc $00 $22
    add b                                         ; $53c9: $80
    ld [c], a                                     ; $53ca: $e2
    nop                                           ; $53cb: $00
    sub b                                         ; $53cc: $90
    nop                                           ; $53cd: $00
    add b                                         ; $53ce: $80
    nop                                           ; $53cf: $00
    ld b, b                                       ; $53d0: $40
    nop                                           ; $53d1: $00
    add b                                         ; $53d2: $80
    inc bc                                        ; $53d3: $03
    nop                                           ; $53d4: $00
    add c                                         ; $53d5: $81
    ldh [$03], a                                  ; $53d6: $e0 $03
    nop                                           ; $53d8: $00
    cp c                                          ; $53d9: $b9
    ld [hl], b                                    ; $53da: $70
    nop                                           ; $53db: $00
    ld b, b                                       ; $53dc: $40
    add b                                         ; $53dd: $80
    sub b                                         ; $53de: $90
    nop                                           ; $53df: $00
    ld [hl], h                                    ; $53e0: $74
    nop                                           ; $53e1: $00
    ldh [rP1], a                                  ; $53e2: $e0 $00
    cp h                                          ; $53e4: $bc
    ld b, b                                       ; $53e5: $40
    ld l, d                                       ; $53e6: $6a
    add b                                         ; $53e7: $80
    ld d, b                                       ; $53e8: $50
    and b                                         ; $53e9: $a0
    ld a, [$2000]                                 ; $53ea: $fa $00 $20
    ret nz                                        ; $53ed: $c0

    ld a, b                                       ; $53ee: $78
    add b                                         ; $53ef: $80
    sbc l                                         ; $53f0: $9d
    ld h, b                                       ; $53f1: $60
    ld [hl], h                                    ; $53f2: $74
    add b                                         ; $53f3: $80
    inc [hl]                                      ; $53f4: $34
    ret nz                                        ; $53f5: $c0

    ld h, b                                       ; $53f6: $60
    add b                                         ; $53f7: $80
    db $dd                                        ; $53f8: $dd
    jr nz, jr_0f5_5473                            ; $53f9: $20 $78

    add b                                         ; $53fb: $80
    jr nz, @-$3e                                  ; $53fc: $20 $c0

    ld a, [$5000]                                 ; $53fe: $fa $00 $50
    and b                                         ; $5401: $a0
    ld l, d                                       ; $5402: $6a
    add b                                         ; $5403: $80
    cp h                                          ; $5404: $bc
    ld b, b                                       ; $5405: $40
    ldh [rP1], a                                  ; $5406: $e0 $00
    ld e, b                                       ; $5408: $58
    nop                                           ; $5409: $00
    add [hl]                                      ; $540a: $86
    nop                                           ; $540b: $00
    ld h, b                                       ; $540c: $60
    add b                                         ; $540d: $80
    ld [hl], b                                    ; $540e: $70
    nop                                           ; $540f: $00
    ldh [rP1], a                                  ; $5410: $e0 $00
    ld b, b                                       ; $5412: $40
    inc bc                                        ; $5413: $03
    nop                                           ; $5414: $00
    add c                                         ; $5415: $81
    add b                                         ; $5416: $80
    add hl, de                                    ; $5417: $19
    nop                                           ; $5418: $00
    rst $38                                       ; $5419: $ff
    ld sp, $f816                                  ; $541a: $31 $16 $f8
    rlca                                          ; $541d: $07
    or $0b                                        ; $541e: $f6 $0b
    db $eb                                        ; $5420: $eb
    db $ed                                        ; $5421: $ed
    and $f5                                       ; $5422: $e6 $f5
    and $fd                                       ; $5424: $e6 $fd
    rst $20                                       ; $5426: $e7
    dec b                                         ; $5427: $05
    ld [$f60d], a                                 ; $5428: $ea $0d $f6
    add sp, -$0a                                  ; $542b: $e8 $f6
    ldh a, [$f6]                                  ; $542d: $f0 $f6
    ld hl, sp-$0a                                 ; $542f: $f8 $f6
    nop                                           ; $5431: $00
    rst $30                                       ; $5432: $f7
    ld [$10f6], sp                                ; $5433: $08 $f6 $10
    ld b, $e9                                     ; $5436: $06 $e9
    ld b, $f1                                     ; $5438: $06 $f1
    ld b, $f9                                     ; $543a: $06 $f9
    ld b, $01                                     ; $543c: $06 $01
    ld b, $09                                     ; $543e: $06 $09
    ld b, $10                                     ; $5440: $06 $10
    ld d, $ed                                     ; $5442: $16 $ed
    ld d, $f6                                     ; $5444: $16 $f6
    ld d, $fe                                     ; $5446: $16 $fe
    ld d, $06                                     ; $5448: $16 $06
    ld d, $07                                     ; $544a: $16 $07
    adc e                                         ; $544c: $8b
    ld [bc], a                                    ; $544d: $02
    nop                                           ; $544e: $00
    add c                                         ; $544f: $81
    nop                                           ; $5450: $00
    dec b                                         ; $5451: $05
    nop                                           ; $5452: $00
    ld [bc], a                                    ; $5453: $02
    nop                                           ; $5454: $00
    add hl, sp                                    ; $5455: $39
    nop                                           ; $5456: $00
    dec bc                                        ; $5457: $0b
    ld [bc], a                                    ; $5458: $02
    inc b                                         ; $5459: $04
    or $03                                        ; $545a: $f6 $03
    ld a, [hl-]                                   ; $545c: $3a
    nop                                           ; $545d: $00
    add l                                         ; $545e: $85
    ld [bc], a                                    ; $545f: $02
    ld [hl], d                                    ; $5460: $72
    ld bc, $1a25                                  ; $5461: $01 $25 $1a
    ret z                                         ; $5464: $c8

    inc bc                                        ; $5465: $03
    ret nc                                        ; $5466: $d0

    daa                                           ; $5467: $27

jr_0f5_5468:
    dec a                                         ; $5468: $3d
    inc bc                                        ; $5469: $03
    ld c, b                                       ; $546a: $48
    or a                                          ; $546b: $b7
    or c                                          ; $546c: $b1
    rrca                                          ; $546d: $0f
    ld [bc], a                                    ; $546e: $02
    nop                                           ; $546f: $00
    stop                                          ; $5470: $10 $00
    ld [bc], a                                    ; $5472: $02

jr_0f5_5473:
    nop                                           ; $5473: $00
    dec bc                                        ; $5474: $0b
    nop                                           ; $5475: $00
    ld c, d                                       ; $5476: $4a
    nop                                           ; $5477: $00
    jr c, @+$03                                   ; $5478: $38 $01

    ld h, $08                                     ; $547a: $26 $08
    db $db                                        ; $547c: $db
    inc b                                         ; $547d: $04
    xor l                                         ; $547e: $ad
    ld b, d                                       ; $547f: $42
    inc [hl]                                      ; $5480: $34
    adc e                                         ; $5481: $8b
    and b                                         ; $5482: $a0

jr_0f5_5483:
    ld e, a                                       ; $5483: $5f
    ld b, c                                       ; $5484: $41
    ccf                                           ; $5485: $3f
    sub l                                         ; $5486: $95
    ld a, [hl]                                    ; $5487: $7e
    rrca                                          ; $5488: $0f
    push af                                       ; $5489: $f5
    ccf                                           ; $548a: $3f
    db $e4                                        ; $548b: $e4
    dec e                                         ; $548c: $1d
    ld a, [c]                                     ; $548d: $f2
    ld [$2800], sp                                ; $548e: $08 $00 $28
    nop                                           ; $5491: $00
    jr z, jr_0f5_5494                             ; $5492: $28 $00

jr_0f5_5494:
    ld b, l                                       ; $5494: $45
    nop                                           ; $5495: $00
    ld c, h                                       ; $5496: $4c
    jr nz, @+$7b                                  ; $5497: $20 $79

    inc b                                         ; $5499: $04
    jp c, Jump_0f5_5524                           ; $549a: $da $24 $55

    xor d                                         ; $549d: $aa
    ld bc, $8afe                                  ; $549e: $01 $fe $8a
    rst $38                                       ; $54a1: $ff
    jr nz, jr_0f5_5483                            ; $54a2: $20 $df

    cp e                                          ; $54a4: $bb
    rst $28                                       ; $54a5: $ef
    rst $38                                       ; $54a6: $ff
    xor d                                         ; $54a7: $aa
    rst $38                                       ; $54a8: $ff
    dec b                                         ; $54a9: $05
    rst $10                                       ; $54aa: $d7
    jr z, @+$03                                   ; $54ab: $28 $01

    cp $90                                        ; $54ad: $fe $90
    nop                                           ; $54af: $00
    add b                                         ; $54b0: $80
    nop                                           ; $54b1: $00
    and d                                         ; $54b2: $a2
    nop                                           ; $54b3: $00
    and h                                         ; $54b4: $a4
    nop                                           ; $54b5: $00
    jr c, jr_0f5_54b8                             ; $54b6: $38 $00

jr_0f5_54b8:
    adc c                                         ; $54b8: $89
    ld h, b                                       ; $54b9: $60
    or a                                          ; $54ba: $b7
    ld b, b                                       ; $54bb: $40
    ld l, d                                       ; $54bc: $6a
    add h                                         ; $54bd: $84
    ld e, c                                       ; $54be: $59
    and d                                         ; $54bf: $a2
    ld a, [bc]                                    ; $54c0: $0a
    db $f4                                        ; $54c1: $f4
    ld bc, $52fc                                  ; $54c2: $01 $fc $52
    db $fd                                        ; $54c5: $fd
    and c                                         ; $54c6: $a1
    ld a, [hl]                                    ; $54c7: $7e
    ld [$751f], a                                 ; $54c8: $ea $1f $75
    cp d                                          ; $54cb: $ba
    ld a, b                                       ; $54cc: $78
    add a                                         ; $54cd: $87
    jr nz, jr_0f5_54d0                            ; $54ce: $20 $00

jr_0f5_54d0:
    add b                                         ; $54d0: $80
    inc bc                                        ; $54d1: $03
    nop                                           ; $54d2: $00
    sbc e                                         ; $54d3: $9b
    ld b, h                                       ; $54d4: $44
    nop                                           ; $54d5: $00
    add b                                         ; $54d6: $80
    nop                                           ; $54d7: $00
    jr nc, jr_0f5_54da                            ; $54d8: $30 $00

jr_0f5_54da:
    ldh [rP1], a                                  ; $54da: $e0 $00
    ld b, h                                       ; $54dc: $44
    add b                                         ; $54dd: $80
    cp b                                          ; $54de: $b8
    nop                                           ; $54df: $00
    ret nz                                        ; $54e0: $c0

    nop                                           ; $54e1: $00
    sbc [hl]                                      ; $54e2: $9e
    nop                                           ; $54e3: $00
    ld c, b                                       ; $54e4: $48
    or b                                          ; $54e5: $b0
    jr nz, jr_0f5_5468                            ; $54e6: $20 $80

    dec de                                        ; $54e8: $1b
    call nz, $b048                                ; $54e9: $c4 $48 $b0
    cp a                                          ; $54ec: $bf
    ld b, b                                       ; $54ed: $40
    ld e, b                                       ; $54ee: $58
    dec b                                         ; $54ef: $05
    nop                                           ; $54f0: $00
    cp $08                                        ; $54f1: $fe $08
    nop                                           ; $54f3: $00
    jr jr_0f5_54f6                                ; $54f4: $18 $00

jr_0f5_54f6:
    ld a, [bc]                                    ; $54f6: $0a
    ld bc, $0037                                  ; $54f7: $01 $37 $00
    add c                                         ; $54fa: $81
    nop                                           ; $54fb: $00
    ld [bc], a                                    ; $54fc: $02
    dec b                                         ; $54fd: $05
    ld a, a                                       ; $54fe: $7f
    nop                                           ; $54ff: $00
    inc c                                         ; $5500: $0c
    inc bc                                        ; $5501: $03
    dec bc                                        ; $5502: $0b
    nop                                           ; $5503: $00
    ld bc, $9f00                                  ; $5504: $01 $00 $9f
    nop                                           ; $5507: $00
    ld [bc], a                                    ; $5508: $02
    dec b                                         ; $5509: $05
    add hl, bc                                    ; $550a: $09
    nop                                           ; $550b: $00
    ld bc, $0706                                  ; $550c: $01 $06 $07
    inc b                                         ; $550f: $04
    rlca                                          ; $5510: $07
    ld bc, $0407                                  ; $5511: $01 $07 $04
    rlca                                          ; $5514: $07
    nop                                           ; $5515: $00
    add [hl]                                      ; $5516: $86
    ld a, l                                       ; $5517: $7d
    xor $31                                       ; $5518: $ee $31
    ld c, $f9                                     ; $551a: $0e $f9
    xor [hl]                                      ; $551c: $ae
    ld e, l                                       ; $551d: $5d
    inc c                                         ; $551e: $0c
    di                                            ; $551f: $f3
    sbc [hl]                                      ; $5520: $9e
    ld a, c                                       ; $5521: $79
    ld c, h                                       ; $5522: $4c
    ei                                            ; $5523: $fb

Jump_0f5_5524:
    sbc [hl]                                      ; $5524: $9e
    ld [hl], c                                    ; $5525: $71
    ld e, $e1                                     ; $5526: $1e $e1
    sbc h                                         ; $5528: $9c
    ld a, e                                       ; $5529: $7b
    rrca                                          ; $552a: $0f
    ld hl, sp-$1e                                 ; $552b: $f8 $e2
    rra                                           ; $552d: $1f
    add l                                         ; $552e: $85
    ld a, a                                       ; $552f: $7f
    xor b                                         ; $5530: $a8

jr_0f5_5531:
    ld a, a                                       ; $5531: $7f
    jr jr_0f5_5531                                ; $5532: $18 $fd

    ld [hl], b                                    ; $5534: $70

jr_0f5_5535:
    ld a, [$fc20]                                 ; $5535: $fa $20 $fc
    ld h, b                                       ; $5538: $60
    ld hl, sp-$40                                 ; $5539: $f8 $c0
    ldh a, [rLCDC]                                ; $553b: $f0 $40
    add sp, -$80                                  ; $553d: $e8 $80
    ldh a, [rLCDC]                                ; $553f: $f0 $40
    ldh a, [$80]                                  ; $5541: $f0 $80
    add sp, $40                                   ; $5543: $e8 $40
    ldh a, [$e0]                                  ; $5545: $f0 $e0
    ld hl, sp+$40                                 ; $5547: $f8 $40
    db $f4                                        ; $5549: $f4
    add b                                         ; $554a: $80
    ld hl, sp-$20                                 ; $554b: $f8 $e0
    ld hl, sp+$54                                 ; $554d: $f8 $54
    rst $38                                       ; $554f: $ff
    add hl, bc                                    ; $5550: $09
    cp $0c                                        ; $5551: $fe $0c
    ld e, a                                       ; $5553: $5f
    rlca                                          ; $5554: $07
    cpl                                           ; $5555: $2f
    ld [bc], a                                    ; $5556: $02
    rra                                           ; $5557: $1f
    inc bc                                        ; $5558: $03
    rrca                                          ; $5559: $0f
    ld bc, $0107                                  ; $555a: $01 $07 $01
    dec bc                                        ; $555d: $0b
    nop                                           ; $555e: $00
    rlca                                          ; $555f: $07
    ld bc, $0007                                  ; $5560: $01 $07 $00
    dec bc                                        ; $5563: $0b
    ld bc, $0307                                  ; $5564: $01 $07 $03
    rrca                                          ; $5567: $0f
    ld bc, $0017                                  ; $5568: $01 $17 $00
    rrca                                          ; $556b: $0f
    ldh a, [rNR23]                                ; $556c: $f0 $18
    ld a, b                                       ; $556e: $78
    ret z                                         ; $556f: $c8

    sbc l                                         ; $5570: $9d
    ld [hl], b                                    ; $5571: $70
    sbc b                                         ; $5572: $98
    ld [hl], b                                    ; $5573: $70
    sbc a                                         ; $5574: $9f
    jr c, @-$37                                   ; $5575: $38 $c7

    ld a, e                                       ; $5577: $7b
    adc [hl]                                      ; $5578: $8e
    or b                                          ; $5579: $b0
    rst $08                                       ; $557a: $cf
    ld a, [hl-]                                   ; $557b: $3a
    call $e799                                    ; $557c: $cd $99 $e7
    inc a                                         ; $557f: $3c
    rst $00                                       ; $5580: $c7
    sbc b                                         ; $5581: $98
    rst $28                                       ; $5582: $ef
    ld a, $c7                                     ; $5583: $3e $c7
    cp h                                          ; $5585: $bc
    jp $ef1d                                      ; $5586: $c3 $1d $ef


    ld hl, sp-$71                                 ; $5589: $f8 $8f
    dec sp                                        ; $558b: $3b
    and $01                                       ; $558c: $e6 $01
    rlca                                          ; $558e: $07
    nop                                           ; $558f: $00
    add c                                         ; $5590: $81
    sbc $02                                       ; $5591: $de $02
    jr nz, jr_0f5_5535                            ; $5593: $20 $a0

    ret nz                                        ; $5595: $c0

    db $f4                                        ; $5596: $f4
    nop                                           ; $5597: $00
    ld b, b                                       ; $5598: $40
    add b                                         ; $5599: $80
    ldh a, [rP1]                                  ; $559a: $f0 $00
    add hl, de                                    ; $559c: $19
    ldh [$e8], a                                  ; $559d: $e0 $e8
    nop                                           ; $559f: $00
    ld l, h                                       ; $55a0: $6c
    add b                                         ; $55a1: $80
    ret nz                                        ; $55a2: $c0

    nop                                           ; $55a3: $00
    ld a, c                                       ; $55a4: $79
    add b                                         ; $55a5: $80
    sub b                                         ; $55a6: $90
    ld h, b                                       ; $55a7: $60
    ld b, b                                       ; $55a8: $40
    add b                                         ; $55a9: $80
    rst $28                                       ; $55aa: $ef
    nop                                           ; $55ab: $00
    dec b                                         ; $55ac: $05
    ld [bc], a                                    ; $55ad: $02
    dec sp                                        ; $55ae: $3b
    nop                                           ; $55af: $00
    inc d                                         ; $55b0: $14
    dec bc                                        ; $55b1: $0b
    ld [bc], a                                    ; $55b2: $02
    ld bc, $031f                                  ; $55b3: $01 $1f $03
    nop                                           ; $55b6: $00
    adc c                                         ; $55b7: $89
    inc bc                                        ; $55b8: $03
    nop                                           ; $55b9: $00
    ld e, $01                                     ; $55ba: $1e $01
    ld b, b                                       ; $55bc: $40
    nop                                           ; $55bd: $00
    inc bc                                        ; $55be: $03
    nop                                           ; $55bf: $00
    inc b                                         ; $55c0: $04
    inc bc                                        ; $55c1: $03
    nop                                           ; $55c2: $00
    add c                                         ; $55c3: $81
    ld bc, $0005                                  ; $55c4: $01 $05 $00
    cp $9c                                        ; $55c7: $fe $9c
    ld h, a                                       ; $55c9: $67
    ld e, $e1                                     ; $55ca: $1e $e1
    cpl                                           ; $55cc: $2f
    ret c                                         ; $55cd: $d8

    adc [hl]                                      ; $55ce: $8e
    ld a, l                                       ; $55cf: $7d
    db $d3                                        ; $55d0: $d3
    inc a                                         ; $55d1: $3c
    rrca                                          ; $55d2: $0f
    ld a, d                                       ; $55d3: $7a
    add e                                         ; $55d4: $83
    ld a, $55                                     ; $55d5: $3e $55
    cp [hl]                                       ; $55d7: $be
    ld [hl+], a                                   ; $55d8: $22
    rra                                           ; $55d9: $1f
    ld [hl], h                                    ; $55da: $74
    dec bc                                        ; $55db: $0b
    xor b                                         ; $55dc: $a8
    rlca                                          ; $55dd: $07
    ld d, b                                       ; $55de: $50
    daa                                           ; $55df: $27
    and $09                                       ; $55e0: $e6 $09
    cp c                                          ; $55e2: $b9
    ld [bc], a                                    ; $55e3: $02
    ld a, [hl+]                                   ; $55e4: $2a
    inc b                                         ; $55e5: $04
    ld e, l                                       ; $55e6: $5d
    nop                                           ; $55e7: $00
    ldh [$fa], a                                  ; $55e8: $e0 $fa
    ld b, b                                       ; $55ea: $40
    db $fd                                        ; $55eb: $fd
    jr nc, @+$01                                  ; $55ec: $30 $ff

    sbc d                                         ; $55ee: $9a
    ld a, a                                       ; $55ef: $7f
    sub a                                         ; $55f0: $97
    ld a, a                                       ; $55f1: $7f
    ld h, c                                       ; $55f2: $61
    sbc a                                         ; $55f3: $9f
    add sp, $17                                   ; $55f4: $e8 $17
    db $db                                        ; $55f6: $db
    and h                                         ; $55f7: $a4
    rst $38                                       ; $55f8: $ff
    ret nz                                        ; $55f9: $c0

    rst $38                                       ; $55fa: $ff
    xor d                                         ; $55fb: $aa
    ld c, [hl]                                    ; $55fc: $4e
    db $fd                                        ; $55fd: $fd
    dec de                                        ; $55fe: $1b
    rst $38                                       ; $55ff: $ff
    add d                                         ; $5600: $82
    ld a, a                                       ; $5601: $7f
    ld c, b                                       ; $5602: $48
    cp a                                          ; $5603: $bf
    jp nc, $b52d                                  ; $5604: $d2 $2d $b5

    ld c, d                                       ; $5607: $4a
    ld c, $be                                     ; $5608: $0e $be
    inc b                                         ; $560a: $04
    ld a, a                                       ; $560b: $7f
    dec e                                         ; $560c: $1d
    cp $b2                                        ; $560d: $fe $b2
    db $fd                                        ; $560f: $fd
    ld d, e                                       ; $5610: $53
    db $fc                                        ; $5611: $fc
    dec c                                         ; $5612: $0d
    ld a, [c]                                     ; $5613: $f2
    ld l, a                                       ; $5614: $6f
    sub b                                         ; $5615: $90
    cp $01                                        ; $5616: $fe $01
    ld a, [$7e87]                                 ; $5618: $fa $87 $7e
    db $db                                        ; $561b: $db
    push hl                                       ; $561c: $e5
    cp a                                          ; $561d: $bf
    xor b                                         ; $561e: $a8
    rst $38                                       ; $561f: $ff
    add b                                         ; $5620: $80
    rst $38                                       ; $5621: $ff
    dec h                                         ; $5622: $25
    ld a, [$ec12]                                 ; $5623: $fa $12 $ec
    ld e, l                                       ; $5626: $5d
    and d                                         ; $5627: $a2
    ld bc, $7100                                  ; $5628: $01 $00 $71
    sbc [hl]                                      ; $562b: $9e
    ld sp, hl                                     ; $562c: $f9
    ld l, $e0                                     ; $562d: $2e $e0
    ccf                                           ; $562f: $3f
    sub $79                                       ; $5630: $d6 $79
    pop hl                                        ; $5632: $e1
    inc a                                         ; $5633: $3c
    add d                                         ; $5634: $82
    ld hl, sp+$15                                 ; $5635: $f8 $15
    ld [$f0a9], a                                 ; $5637: $ea $a9 $f0
    ld d, l                                       ; $563a: $55
    xor b                                         ; $563b: $a8
    dec hl                                        ; $563c: $2b
    ret nc                                        ; $563d: $d0

    ld d, h                                       ; $563e: $54
    adc b                                         ; $563f: $88
    adc $20                                       ; $5640: $ce $20
    inc sp                                        ; $5642: $33
    add b                                         ; $5643: $80
    xor b                                         ; $5644: $a8
    ld b, b                                       ; $5645: $40
    adc c                                         ; $5646: $89
    ld [hl], h                                    ; $5647: $74
    nop                                           ; $5648: $00
    ld [hl], d                                    ; $5649: $72
    nop                                           ; $564a: $00
    db $10                                        ; $564b: $10
    ld h, b                                       ; $564c: $60
    ld e, h                                       ; $564d: $5c
    nop                                           ; $564e: $00
    jr c, jr_0f5_5653                             ; $564f: $38 $02

    ld b, b                                       ; $5651: $40
    adc [hl]                                      ; $5652: $8e

jr_0f5_5653:
    nop                                           ; $5653: $00
    ld e, b                                       ; $5654: $58
    jr nz, @+$06                                  ; $5655: $20 $04

    nop                                           ; $5657: $00
    ld b, c                                       ; $5658: $41
    nop                                           ; $5659: $00
    jr nc, @+$42                                  ; $565a: $30 $40

    ld [$4000], sp                                ; $565c: $08 $00 $40
    nop                                           ; $565f: $00
    jr nz, @+$07                                  ; $5660: $20 $05

    nop                                           ; $5662: $00
    add a                                         ; $5663: $87
    ld b, b                                       ; $5664: $40
    nop                                           ; $5665: $00
    ld [$0900], sp                                ; $5666: $08 $00 $09
    nop                                           ; $5669: $00
    add d                                         ; $566a: $82
    dec e                                         ; $566b: $1d
    nop                                           ; $566c: $00
    adc c                                         ; $566d: $89
    ld c, l                                       ; $566e: $4d
    db $10                                        ; $566f: $10
    ld [hl], d                                    ; $5670: $72
    nop                                           ; $5671: $00
    sub h                                         ; $5672: $94
    nop                                           ; $5673: $00
    sub [hl]                                      ; $5674: $96
    nop                                           ; $5675: $00
    inc b                                         ; $5676: $04
    inc bc                                        ; $5677: $03
    nop                                           ; $5678: $00
    add c                                         ; $5679: $81
    jr nz, jr_0f5_568f                            ; $567a: $20 $13

    nop                                           ; $567c: $00
    adc e                                         ; $567d: $8b
    ld l, l                                       ; $567e: $6d
    sub b                                         ; $567f: $90
    jp z, $f910                                   ; $5680: $ca $10 $f9

    nop                                           ; $5683: $00
    adc e                                         ; $5684: $8b
    nop                                           ; $5685: $00
    sub c                                         ; $5686: $91
    nop                                           ; $5687: $00
    ld de, $0015                                  ; $5688: $11 $15 $00
    add a                                         ; $568b: $87
    sub d                                         ; $568c: $92
    ld b, b                                       ; $568d: $40
    ld [hl], e                                    ; $568e: $73

jr_0f5_568f:
    nop                                           ; $568f: $00
    ld e, b                                       ; $5690: $58
    nop                                           ; $5691: $00
    ld b, b                                       ; $5692: $40
    dec b                                         ; $5693: $05
    nop                                           ; $5694: $00
    add c                                         ; $5695: $81
    db $10                                        ; $5696: $10
    rla                                           ; $5697: $17
    nop                                           ; $5698: $00
    add c                                         ; $5699: $81
    ld bc, $001b                                  ; $569a: $01 $1b $00
    rst $38                                       ; $569d: $ff
    cpl                                           ; $569e: $2f
    dec d                                         ; $569f: $15
    ld hl, sp+$07                                 ; $56a0: $f8 $07
    or $0b                                        ; $56a2: $f6 $0b
    db $eb                                        ; $56a4: $eb
    db $eb                                        ; $56a5: $eb
    rst $20                                       ; $56a6: $e7
    di                                            ; $56a7: $f3
    push hl                                       ; $56a8: $e5
    ei                                            ; $56a9: $fb
    push hl                                       ; $56aa: $e5
    inc bc                                        ; $56ab: $03
    ld [$f30b], a                                 ; $56ac: $ea $0b $f3
    db $10                                        ; $56af: $10
    or $e8                                        ; $56b0: $f6 $e8
    rst $30                                       ; $56b2: $f7
    ldh a, [$f5]                                  ; $56b3: $f0 $f5
    ld hl, sp-$0b                                 ; $56b5: $f8 $f5
    nop                                           ; $56b7: $00
    push af                                       ; $56b8: $f5
    ld [$1003], sp                                ; $56b9: $08 $03 $10
    ld b, $e9                                     ; $56bc: $06 $e9
    ld b, $f1                                     ; $56be: $06 $f1
    rlca                                          ; $56c0: $07
    ld sp, hl                                     ; $56c1: $f9
    ld b, $01                                     ; $56c2: $06 $01
    dec b                                         ; $56c4: $05
    ld [$0a13], sp                                ; $56c5: $08 $13 $0a
    dec d                                         ; $56c8: $15
    ld a, [c]                                     ; $56c9: $f2
    dec d                                         ; $56ca: $15
    ld a, [$0215]                                 ; $56cb: $fa $15 $02
    add c                                         ; $56ce: $81
    ld bc, $0003                                  ; $56cf: $01 $03 $00
    db $dd                                        ; $56d2: $dd
    ld [bc], a                                    ; $56d3: $02
    nop                                           ; $56d4: $00
    ld [$0200], sp                                ; $56d5: $08 $00 $02
    nop                                           ; $56d8: $00
    dec b                                         ; $56d9: $05
    nop                                           ; $56da: $00
    ld a, [bc]                                    ; $56db: $0a
    nop                                           ; $56dc: $00
    dec h                                         ; $56dd: $25
    nop                                           ; $56de: $00
    sub e                                         ; $56df: $93
    nop                                           ; $56e0: $00
    ld [hl], $0b                                  ; $56e1: $36 $0b
    add hl, bc                                    ; $56e3: $09
    ld [bc], a                                    ; $56e4: $02
    ld [hl], e                                    ; $56e5: $73
    inc b                                         ; $56e6: $04
    inc l                                         ; $56e7: $2c
    inc de                                        ; $56e8: $13
    ld e, e                                       ; $56e9: $5b
    inc b                                         ; $56ea: $04
    or l                                          ; $56eb: $b5
    ld a, [bc]                                    ; $56ec: $0a
    dec de                                        ; $56ed: $1b
    inc l                                         ; $56ee: $2c
    ld [bc], a                                    ; $56ef: $02
    nop                                           ; $56f0: $00
    ld [bc], a                                    ; $56f1: $02
    nop                                           ; $56f2: $00
    ld a, [bc]                                    ; $56f3: $0a
    nop                                           ; $56f4: $00
    ld l, c                                       ; $56f5: $69
    ld [bc], a                                    ; $56f6: $02
    ld l, $00                                     ; $56f7: $2e $00
    ld e, e                                       ; $56f9: $5b
    inc b                                         ; $56fa: $04
    xor l                                         ; $56fb: $ad
    ld [bc], a                                    ; $56fc: $02
    or [hl]                                       ; $56fd: $b6
    dec bc                                        ; $56fe: $0b
    pop hl                                        ; $56ff: $e1
    ld e, $5c                                     ; $5700: $1e $5c
    inc sp                                        ; $5702: $33
    xor e                                         ; $5703: $ab
    ld d, h                                       ; $5704: $54
    ld l, h                                       ; $5705: $6c
    sub e                                         ; $5706: $93
    ld d, $eb                                     ; $5707: $16 $eb
    db $f4                                        ; $5709: $f4
    rrca                                          ; $570a: $0f
    jp z, Jump_0f5_683e                           ; $570b: $ca $3e $68

    sbc a                                         ; $570e: $9f
    ld a, [bc]                                    ; $570f: $0a
    nop                                           ; $5710: $00
    ld [$d100], sp                                ; $5711: $08 $00 $d1
    nop                                           ; $5714: $00
    sbc e                                         ; $5715: $9b
    nop                                           ; $5716: $00
    ld c, [hl]                                    ; $5717: $4e
    ld de, $09b6                                  ; $5718: $11 $b6 $09
    ld sp, hl                                     ; $571b: $f9
    ld c, $57                                     ; $571c: $0e $57
    xor b                                         ; $571e: $a8
    ld b, $f9                                     ; $571f: $06 $f9
    jp c, Jump_0f5_6a25                           ; $5721: $da $25 $6a

    sub l                                         ; $5724: $95
    pop hl                                        ; $5725: $e1
    ccf                                           ; $5726: $3f
    inc [hl]                                      ; $5727: $34
    rst $38                                       ; $5728: $ff
    jp z, $80ff                                   ; $5729: $ca $ff $80

    rst $38                                       ; $572c: $ff
    nop                                           ; $572d: $00
    db $eb                                        ; $572e: $eb
    jr nz, jr_0f5_5734                            ; $572f: $20 $03

    nop                                           ; $5731: $00
    cp a                                          ; $5732: $bf
    ld l, b                                       ; $5733: $68

jr_0f5_5734:
    nop                                           ; $5734: $00
    ld hl, $4e00                                  ; $5735: $21 $00 $4e
    nop                                           ; $5738: $00
    di                                            ; $5739: $f3
    ld [$42ac], sp                                ; $573a: $08 $ac $42
    ld e, a                                       ; $573d: $5f
    and b                                         ; $573e: $a0
    ld [hl], $c8                                  ; $573f: $36 $c8
    db $ed                                        ; $5741: $ed
    ld a, [de]                                    ; $5742: $1a
    adc b                                         ; $5743: $88
    ld [hl], a                                    ; $5744: $77

jr_0f5_5745:
    ld d, d                                       ; $5745: $52
    xor l                                         ; $5746: $ad
    dec l                                         ; $5747: $2d
    ld a, [c]                                     ; $5748: $f2
    pop bc                                        ; $5749: $c1
    cp $6a                                        ; $574a: $fe $6a
    ld a, l                                       ; $574c: $7d
    ld de, $80fe                                  ; $574d: $11 $fe $80
    nop                                           ; $5750: $00
    add b                                         ; $5751: $80
    nop                                           ; $5752: $00
    ld d, b                                       ; $5753: $50
    nop                                           ; $5754: $00
    xor b                                         ; $5755: $a8
    ld b, b                                       ; $5756: $40
    or c                                          ; $5757: $b1
    nop                                           ; $5758: $00
    db $ec                                        ; $5759: $ec
    nop                                           ; $575a: $00
    ret c                                         ; $575b: $d8

    add b                                         ; $575c: $80
    add hl, hl                                    ; $575d: $29
    ret nz                                        ; $575e: $c0

    sbc l                                         ; $575f: $9d
    ld h, b                                       ; $5760: $60
    add hl, hl                                    ; $5761: $29
    ret c                                         ; $5762: $d8

    call nc, Call_0f5_622a                        ; $5763: $d4 $2a $62
    sbc b                                         ; $5766: $98
    ld sp, $07cc                                  ; $5767: $31 $cc $07
    ld hl, sp-$4d                                 ; $576a: $f8 $b3
    call z, $d629                                 ; $576c: $cc $29 $d6
    jr jr_0f5_5771                                ; $576f: $18 $00

jr_0f5_5771:
    inc d                                         ; $5771: $14
    inc bc                                        ; $5772: $03
    nop                                           ; $5773: $00
    sbc e                                         ; $5774: $9b
    jr jr_0f5_5777                                ; $5775: $18 $00

jr_0f5_5777:
    inc b                                         ; $5777: $04
    nop                                           ; $5778: $00
    jr jr_0f5_577b                                ; $5779: $18 $00

jr_0f5_577b:
    inc d                                         ; $577b: $14
    nop                                           ; $577c: $00
    ld l, $d0                                     ; $577d: $2e $d0
    ld a, b                                       ; $577f: $78
    add b                                         ; $5780: $80
    ld d, l                                       ; $5781: $55
    and b                                         ; $5782: $a0
    jr c, jr_0f5_5745                             ; $5783: $38 $c0

    inc l                                         ; $5785: $2c
    ldh a, [$3c]                                  ; $5786: $f0 $3c
    ret nz                                        ; $5788: $c0

    sub d                                         ; $5789: $92
    ld h, b                                       ; $578a: $60
    inc sp                                        ; $578b: $33
    ret nz                                        ; $578c: $c0

    cp b                                          ; $578d: $b8
    ld b, b                                       ; $578e: $40
    jr nz, @+$05                                  ; $578f: $20 $03

    nop                                           ; $5791: $00
    add e                                         ; $5792: $83
    jr nz, jr_0f5_5795                            ; $5793: $20 $00

jr_0f5_5795:
    ld h, b                                       ; $5795: $60
    inc bc                                        ; $5796: $03
    nop                                           ; $5797: $00
    ret z                                         ; $5798: $c8

    ld e, a                                       ; $5799: $5f

jr_0f5_579a:
    nop                                           ; $579a: $00
    inc c                                         ; $579b: $0c
    inc bc                                        ; $579c: $03
    ld d, $01                                     ; $579d: $16 $01
    xor h                                         ; $579f: $ac
    inc bc                                        ; $57a0: $03
    ld e, $01                                     ; $57a1: $1e $01
    ld h, $03                                     ; $57a3: $26 $03
    ld a, [bc]                                    ; $57a5: $0a
    dec b                                         ; $57a6: $05
    rrca                                          ; $57a7: $0f
    nop                                           ; $57a8: $00
    ld d, h                                       ; $57a9: $54
    inc bc                                        ; $57aa: $03
    rra                                           ; $57ab: $1f
    ld bc, $0106                                  ; $57ac: $01 $06 $01
    inc de                                        ; $57af: $13
    rrca                                          ; $57b0: $0f
    ld [de], a                                    ; $57b1: $12
    rrca                                          ; $57b2: $0f
    inc c                                         ; $57b3: $0c
    rra                                           ; $57b4: $1f
    inc d                                         ; $57b5: $14
    rrca                                          ; $57b6: $0f
    ld h, h                                       ; $57b7: $64
    sbc [hl]                                      ; $57b8: $9e
    jr z, jr_0f5_579a                             ; $57b9: $28 $df

    call nz, Call_0f5_683e                        ; $57bb: $c4 $3e $68
    sbc a                                         ; $57be: $9f
    ret nc                                        ; $57bf: $d0

    ld a, $48                                     ; $57c0: $3e $48
    cp a                                          ; $57c2: $bf
    add sp, $1d                                   ; $57c3: $e8 $1d
    ld b, b                                       ; $57c5: $40
    cp [hl]                                       ; $57c6: $be
    ld e, b                                       ; $57c7: $58
    cp a                                          ; $57c8: $bf
    ret nz                                        ; $57c9: $c0

    ld a, $28                                     ; $57ca: $3e $28
    rst $18                                       ; $57cc: $df
    ld [hl], h                                    ; $57cd: $74
    adc [hl]                                      ; $57ce: $8e
    nop                                           ; $57cf: $00
    ld a, [de]                                    ; $57d0: $1a
    nop                                           ; $57d1: $00
    inc d                                         ; $57d2: $14
    nop                                           ; $57d3: $00
    and c                                         ; $57d4: $a1
    nop                                           ; $57d5: $00
    ret nc                                        ; $57d6: $d0

    nop                                           ; $57d7: $00
    add b                                         ; $57d8: $80
    nop                                           ; $57d9: $00
    ld b, b                                       ; $57da: $40
    nop                                           ; $57db: $00
    add b                                         ; $57dc: $80
    nop                                           ; $57dd: $00
    jr nz, jr_0f5_57e0                            ; $57de: $20 $00

jr_0f5_57e0:
    add b                                         ; $57e0: $80
    dec b                                         ; $57e1: $05
    nop                                           ; $57e2: $00
    add c                                         ; $57e3: $81
    add b                                         ; $57e4: $80
    rlca                                          ; $57e5: $07
    nop                                           ; $57e6: $00
    adc c                                         ; $57e7: $89
    add b                                         ; $57e8: $80
    nop                                           ; $57e9: $00
    xor a                                         ; $57ea: $af
    nop                                           ; $57eb: $00
    dec d                                         ; $57ec: $15
    nop                                           ; $57ed: $00
    ld [bc], a                                    ; $57ee: $02
    nop                                           ; $57ef: $00
    dec b                                         ; $57f0: $05
    inc bc                                        ; $57f1: $03
    nop                                           ; $57f2: $00
    add c                                         ; $57f3: $81
    ld bc, $0009                                  ; $57f4: $01 $09 $00
    add c                                         ; $57f7: $81
    ld bc, $000a                                  ; $57f8: $01 $0a $00
    add c                                         ; $57fb: $81
    add b                                         ; $57fc: $80
    inc bc                                        ; $57fd: $03
    ldh [$d7], a                                  ; $57fe: $e0 $d7
    ld b, b                                       ; $5800: $40
    ldh [rNR41], a                                ; $5801: $e0 $20
    ldh [rNR41], a                                ; $5803: $e0 $20
    and b                                         ; $5805: $a0
    ld [de], a                                    ; $5806: $12
    ld a, l                                       ; $5807: $7d
    ld [hl], $fd                                  ; $5808: $36 $fd
    add hl, bc                                    ; $580a: $09
    ld a, [hl]                                    ; $580b: $7e
    dec de                                        ; $580c: $1b
    cp h                                          ; $580d: $bc
    ld a, [bc]                                    ; $580e: $0a
    ld a, l                                       ; $580f: $7d
    inc bc                                        ; $5810: $03
    inc l                                         ; $5811: $2c
    add hl, de                                    ; $5812: $19
    ld a, [hl]                                    ; $5813: $7e
    dec c                                         ; $5814: $0d
    sbc $0a                                       ; $5815: $de $0a
    dec a                                         ; $5817: $3d
    ld a, [bc]                                    ; $5818: $0a
    ld a, l                                       ; $5819: $7d
    dec bc                                        ; $581a: $0b
    cp h                                          ; $581b: $bc
    sub [hl]                                      ; $581c: $96
    ld h, b                                       ; $581d: $60
    inc a                                         ; $581e: $3c
    ret nz                                        ; $581f: $c0

    ld d, b                                       ; $5820: $50
    and b                                         ; $5821: $a0
    cp h                                          ; $5822: $bc
    ld b, b                                       ; $5823: $40
    ld c, b                                       ; $5824: $48
    ldh a, [$35]                                  ; $5825: $f0 $35
    ret nz                                        ; $5827: $c0

    ld e, d                                       ; $5828: $5a
    and b                                         ; $5829: $a0
    ldh a, [rP1]                                  ; $582a: $f0 $00
    ld a, [hl+]                                   ; $582c: $2a
    add b                                         ; $582d: $80
    ld b, b                                       ; $582e: $40
    nop                                           ; $582f: $00
    ret nc                                        ; $5830: $d0

    nop                                           ; $5831: $00
    inc [hl]                                      ; $5832: $34
    nop                                           ; $5833: $00
    add b                                         ; $5834: $80
    nop                                           ; $5835: $00
    ld d, b                                       ; $5836: $50
    nop                                           ; $5837: $00
    jr nz, jr_0f5_583a                            ; $5838: $20 $00

jr_0f5_583a:
    add b                                         ; $583a: $80
    nop                                           ; $583b: $00
    ld l, $00                                     ; $583c: $2e $00
    inc [hl]                                      ; $583e: $34
    dec bc                                        ; $583f: $0b
    call Call_000_2e02                            ; $5840: $cd $02 $2e
    ld bc, $000b                                  ; $5843: $01 $0b $00
    ld l, h                                       ; $5846: $6c
    ld bc, $0012                                  ; $5847: $01 $12 $00
    add hl, bc                                    ; $584a: $09
    ld [bc], a                                    ; $584b: $02
    inc d                                         ; $584c: $14
    nop                                           ; $584d: $00
    ld bc, $0600                                  ; $584e: $01 $00 $06
    nop                                           ; $5851: $00
    dec b                                         ; $5852: $05
    nop                                           ; $5853: $00
    ld [bc], a                                    ; $5854: $02
    nop                                           ; $5855: $00
    ld [bc], a                                    ; $5856: $02
    ld b, $00                                     ; $5857: $06 $00
    sbc [hl]                                      ; $5859: $9e
    ld bc, $3ec8                                  ; $585a: $01 $c8 $3e
    ld e, b                                       ; $585d: $58
    cp a                                          ; $585e: $bf
    ld h, h                                       ; $585f: $64
    sbc [hl]                                      ; $5860: $9e
    inc h                                         ; $5861: $24
    rst $18                                       ; $5862: $df
    ret c                                         ; $5863: $d8

    and a                                         ; $5864: $a7
    ld [hl], e                                    ; $5865: $73
    adc a                                         ; $5866: $8f
    ld a, l                                       ; $5867: $7d
    add e                                         ; $5868: $83
    call nz, $db3b                                ; $5869: $c4 $3b $db
    inc h                                         ; $586c: $24
    dec hl                                        ; $586d: $2b
    sub h                                         ; $586e: $94
    jp c, $b90d                                   ; $586f: $da $0d $b9

    ld b, $6d                                     ; $5872: $06 $6d
    ld [bc], a                                    ; $5874: $02
    xor e                                         ; $5875: $ab
    db $10                                        ; $5876: $10
    ld d, a                                       ; $5877: $57
    ld [bc], a                                    ; $5878: $02
    nop                                           ; $5879: $00
    ldh [$80], a                                  ; $587a: $e0 $80
    nop                                           ; $587c: $00
    ld [$a000], sp                                ; $587d: $08 $00 $a0
    nop                                           ; $5880: $00
    jp nc, Jump_0f5_6900                          ; $5881: $d2 $00 $69

    nop                                           ; $5884: $00
    db $fd                                        ; $5885: $fd
    ld h, b                                       ; $5886: $60
    rst $38                                       ; $5887: $ff
    ld c, l                                       ; $5888: $4d
    rst $38                                       ; $5889: $ff
    inc hl                                        ; $588a: $23
    rst $38                                       ; $588b: $ff
    call nc, $b82f                                ; $588c: $d4 $2f $b8
    ld b, a                                       ; $588f: $47
    dec e                                         ; $5890: $1d
    ld [c], a                                     ; $5891: $e2
    sub d                                         ; $5892: $92
    ld l, l                                       ; $5893: $6d
    ld h, h                                       ; $5894: $64
    cp e                                          ; $5895: $bb
    push de                                       ; $5896: $d5
    dec hl                                        ; $5897: $2b
    cp [hl]                                       ; $5898: $be
    ld bc, $0100                                  ; $5899: $01 $00 $01
    nop                                           ; $589c: $00
    ld [bc], a                                    ; $589d: $02
    nop                                           ; $589e: $00
    add hl, bc                                    ; $589f: $09
    nop                                           ; $58a0: $00
    ld [bc], a                                    ; $58a1: $02
    nop                                           ; $58a2: $00
    ld d, a                                       ; $58a3: $57
    nop                                           ; $58a4: $00
    dec l                                         ; $58a5: $2d
    inc bc                                        ; $58a6: $03
    rst $18                                       ; $58a7: $df
    inc b                                         ; $58a8: $04
    rst $38                                       ; $58a9: $ff
    push de                                       ; $58aa: $d5
    rst $38                                       ; $58ab: $ff
    add hl, hl                                    ; $58ac: $29
    cp $8d                                        ; $58ad: $fe $8d
    ld a, [$48b7]                                 ; $58af: $fa $b7 $48
    add sp, $17                                   ; $58b2: $e8 $17
    and e                                         ; $58b4: $a3
    ld e, [hl]                                    ; $58b5: $5e
    dec c                                         ; $58b6: $0d
    ld a, [c]                                     ; $58b7: $f2
    ld d, [hl]                                    ; $58b8: $56
    xor c                                         ; $58b9: $a9
    ld de, $0b7e                                  ; $58ba: $11 $7e $0b
    ld a, h                                       ; $58bd: $7c
    ld [de], a                                    ; $58be: $12
    ld e, l                                       ; $58bf: $5d
    dec d                                         ; $58c0: $15
    ld a, [hl]                                    ; $58c1: $7e
    dec h                                         ; $58c2: $25
    ld a, d                                       ; $58c3: $7a
    jr z, @+$79                                   ; $58c4: $28 $77

    ld b, [hl]                                    ; $58c6: $46
    ld a, c                                       ; $58c7: $79
    inc a                                         ; $58c8: $3c
    ld h, e                                       ; $58c9: $63
    jr c, @+$49                                   ; $58ca: $38 $47

    ld b, l                                       ; $58cc: $45
    ld a, [hl-]                                   ; $58cd: $3a
    inc sp                                        ; $58ce: $33
    ld c, [hl]                                    ; $58cf: $4e
    inc h                                         ; $58d0: $24
    ld e, c                                       ; $58d1: $59
    dec bc                                        ; $58d2: $0b
    ld [hl], b                                    ; $58d3: $70
    dec e                                         ; $58d4: $1d
    ld [hl], b                                    ; $58d5: $70
    inc h                                         ; $58d6: $24
    ld d, b                                       ; $58d7: $50
    ld e, l                                       ; $58d8: $5d
    nop                                           ; $58d9: $00
    ld bc, $0003                                  ; $58da: $01 $03 $00
    add a                                         ; $58dd: $87
    xor b                                         ; $58de: $a8
    nop                                           ; $58df: $00
    ld d, b                                       ; $58e0: $50
    nop                                           ; $58e1: $00
    ret nz                                        ; $58e2: $c0

    nop                                           ; $58e3: $00
    jr nz, @+$19                                  ; $58e4: $20 $17

    nop                                           ; $58e6: $00
    add a                                         ; $58e7: $87
    sub d                                         ; $58e8: $92
    inc b                                         ; $58e9: $04
    inc e                                         ; $58ea: $1c
    nop                                           ; $58eb: $00
    dec h                                         ; $58ec: $25
    nop                                           ; $58ed: $00
    dec b                                         ; $58ee: $05
    add hl, de                                    ; $58ef: $19
    nop                                           ; $58f0: $00
    adc e                                         ; $58f1: $8b
    ld bc, $9300                                  ; $58f2: $01 $00 $93
    inc h                                         ; $58f5: $24
    ld [hl], $00                                  ; $58f6: $36 $00
    dec c                                         ; $58f8: $0d
    nop                                           ; $58f9: $00
    ld c, d                                       ; $58fa: $4a
    nop                                           ; $58fb: $00
    ld [$0013], sp                                ; $58fc: $08 $13 $00
    adc c                                         ; $58ff: $89
    ld bc, $f700                                  ; $5900: $01 $00 $f7
    nop                                           ; $5903: $00
    ld c, c                                       ; $5904: $49
    jr nz, jr_0f5_5968                            ; $5905: $20 $61

    nop                                           ; $5907: $00
    and d                                         ; $5908: $a2
    inc bc                                        ; $5909: $03
    nop                                           ; $590a: $00
    add c                                         ; $590b: $81
    add b                                         ; $590c: $80
    inc de                                        ; $590d: $13
    nop                                           ; $590e: $00
    rst $38                                       ; $590f: $ff
    add hl, hl                                    ; $5910: $29
    ld [de], a                                    ; $5911: $12
    ld hl, sp+$07                                 ; $5912: $f8 $07
    or $0b                                        ; $5914: $f6 $0b

jr_0f5_5916:
    ld [$e7ea], a                                 ; $5916: $ea $ea $e7
    ld a, [c]                                     ; $5919: $f2
    push hl                                       ; $591a: $e5
    ld a, [$02e6]                                 ; $591b: $fa $e6 $02
    rst $20                                       ; $591e: $e7
    ld a, [bc]                                    ; $591f: $0a
    db $ed                                        ; $5920: $ed
    ld de, $e6f7                                  ; $5921: $11 $f7 $e6
    rst $30                                       ; $5924: $f7
    db $ed                                        ; $5925: $ed
    rst $30                                       ; $5926: $f7
    dec bc                                        ; $5927: $0b
    db $fd                                        ; $5928: $fd
    ld [de], a                                    ; $5929: $12
    rlca                                          ; $592a: $07
    rst $20                                       ; $592b: $e7
    rlca                                          ; $592c: $07
    rst $28                                       ; $592d: $ef
    ld c, $f7                                     ; $592e: $0e $f7
    rrca                                          ; $5930: $0f
    rst $38                                       ; $5931: $ff
    rlca                                          ; $5932: $07
    rlca                                          ; $5933: $07
    ld [$150e], sp                                ; $5934: $08 $0e $15
    rst $28                                       ; $5937: $ef
    dec d                                         ; $5938: $15
    dec b                                         ; $5939: $05
    add c                                         ; $593a: $81
    ld bc, $0003                                  ; $593b: $01 $03 $00
    cp b                                          ; $593e: $b8
    dec b                                         ; $593f: $05
    nop                                           ; $5940: $00
    inc de                                        ; $5941: $13
    nop                                           ; $5942: $00
    dec e                                         ; $5943: $1d
    nop                                           ; $5944: $00
    ld a, [bc]                                    ; $5945: $0a
    nop                                           ; $5946: $00
    dec [hl]                                      ; $5947: $35
    nop                                           ; $5948: $00
    ld b, $09                                     ; $5949: $06 $09
    call nz, Call_0f5_6903                        ; $594b: $c4 $03 $69
    ld d, $13                                     ; $594e: $16 $13
    dec b                                         ; $5950: $05
    and c                                         ; $5951: $a1
    inc c                                         ; $5952: $0c
    ld d, d                                       ; $5953: $52
    ld [$06e9], sp                                ; $5954: $08 $e9 $06
    ld l, d                                       ; $5957: $6a
    ld de, $58a4                                  ; $5958: $11 $a4 $58
    ld b, $00                                     ; $595b: $06 $00
    inc d                                         ; $595d: $14
    nop                                           ; $595e: $00
    ld [de], a                                    ; $595f: $12
    nop                                           ; $5960: $00
    ld e, l                                       ; $5961: $5d
    nop                                           ; $5962: $00
    ld l, $11                                     ; $5963: $2e $11
    ld c, d                                       ; $5965: $4a
    dec b                                         ; $5966: $05
    add hl, hl                                    ; $5967: $29

jr_0f5_5968:
    ld d, [hl]                                    ; $5968: $56
    and $09                                       ; $5969: $e6 $09
    ld [$68d5], sp                                ; $596b: $08 $d5 $68
    add h                                         ; $596e: $84
    xor d                                         ; $596f: $aa
    inc sp                                        ; $5970: $33
    ld h, c                                       ; $5971: $61
    adc b                                         ; $5972: $88
    sub b                                         ; $5973: $90
    jr nc, jr_0f5_5996                            ; $5974: $30 $20

    or h                                          ; $5976: $b4
    ld [bc], a                                    ; $5977: $02
    jr nz, jr_0f5_5916                            ; $5978: $20 $9c

    ld b, b                                       ; $597a: $40
    ret nz                                        ; $597b: $c0

    ld de, $4000                                  ; $597c: $11 $00 $40
    nop                                           ; $597f: $00
    sub d                                         ; $5980: $92
    nop                                           ; $5981: $00
    jp c, $9d00                                   ; $5982: $da $00 $9d

    ld b, d                                       ; $5985: $42
    db $f4                                        ; $5986: $f4
    nop                                           ; $5987: $00
    xor c                                         ; $5988: $a9
    ld d, h                                       ; $5989: $54
    db $10                                        ; $598a: $10
    db $e3                                        ; $598b: $e3
    sbc $20                                       ; $598c: $de $20
    ret nc                                        ; $598e: $d0

    ld c, c                                       ; $598f: $49
    inc [hl]                                      ; $5990: $34
    ld e, e                                       ; $5991: $5b
    add c                                         ; $5992: $81
    ret nz                                        ; $5993: $c0

    ld b, b                                       ; $5994: $40
    ld [hl+], a                                   ; $5995: $22

jr_0f5_5996:
    ld b, $00                                     ; $5996: $06 $00
    sbc d                                         ; $5998: $9a
    ld [hl+], a                                   ; $5999: $22
    nop                                           ; $599a: $00
    sub [hl]                                      ; $599b: $96
    nop                                           ; $599c: $00
    or d                                          ; $599d: $b2
    nop                                           ; $599e: $00
    or h                                          ; $599f: $b4
    nop                                           ; $59a0: $00
    ld a, [$5601]                                 ; $59a1: $fa $01 $56
    xor c                                         ; $59a4: $a9
    add l                                         ; $59a5: $85
    ld a, d                                       ; $59a6: $7a
    ld sp, hl                                     ; $59a7: $f9
    ld b, [hl]                                    ; $59a8: $46
    sub [hl]                                      ; $59a9: $96
    add hl, hl                                    ; $59aa: $29
    add $a2                                       ; $59ab: $c6 $a2
    ld de, $2432                                  ; $59ad: $11 $32 $24
    adc h                                         ; $59b0: $8c
    add hl, bc                                    ; $59b1: $09
    inc b                                         ; $59b2: $04
    dec b                                         ; $59b3: $05
    nop                                           ; $59b4: $00
    and h                                         ; $59b5: $a4
    ld bc, $0080                                  ; $59b6: $01 $80 $00
    and b                                         ; $59b9: $a0
    nop                                           ; $59ba: $00
    add b                                         ; $59bb: $80
    nop                                           ; $59bc: $00
    xor b                                         ; $59bd: $a8
    nop                                           ; $59be: $00
    ret nc                                        ; $59bf: $d0

    nop                                           ; $59c0: $00

jr_0f5_59c1:
    ld a, [hl+]                                   ; $59c1: $2a
    nop                                           ; $59c2: $00

jr_0f5_59c3:
    inc l                                         ; $59c3: $2c
    add b                                         ; $59c4: $80
    inc sp                                        ; $59c5: $33
    ld c, b                                       ; $59c6: $48
    dec d                                         ; $59c7: $15
    ldh [rOCPS], a                                ; $59c8: $e0 $6a
    db $10                                        ; $59ca: $10
    rra                                           ; $59cb: $1f
    ret nz                                        ; $59cc: $c0

    ld h, d                                       ; $59cd: $62
    inc e                                         ; $59ce: $1c
    sbc c                                         ; $59cf: $99
    add $44                                       ; $59d0: $c6 $44
    jp c, Jump_0f5_4348                           ; $59d2: $da $48 $43

    ld h, $30                                     ; $59d5: $26 $30
    ld b, b                                       ; $59d7: $40
    nop                                           ; $59d8: $00
    ld b, b                                       ; $59d9: $40
    inc bc                                        ; $59da: $03
    nop                                           ; $59db: $00
    add c                                         ; $59dc: $81
    ld h, b                                       ; $59dd: $60
    inc bc                                        ; $59de: $03
    nop                                           ; $59df: $00
    sbc c                                         ; $59e0: $99
    jr jr_0f5_59e3                                ; $59e1: $18 $00

jr_0f5_59e3:
    jr nc, jr_0f5_5a25                            ; $59e3: $30 $40

    ld h, b                                       ; $59e5: $60
    nop                                           ; $59e6: $00
    ld d, b                                       ; $59e7: $50
    nop                                           ; $59e8: $00
    ld d, b                                       ; $59e9: $50
    nop                                           ; $59ea: $00
    xor [hl]                                      ; $59eb: $ae
    db $10                                        ; $59ec: $10
    or h                                          ; $59ed: $b4
    ld b, b                                       ; $59ee: $40
    jr z, jr_0f5_59c1                             ; $59ef: $28 $d0

    ld a, l                                       ; $59f1: $7d
    add b                                         ; $59f2: $80
    db $10                                        ; $59f3: $10
    ld h, b                                       ; $59f4: $60
    sub h                                         ; $59f5: $94
    ld c, b                                       ; $59f6: $48
    jr nc, jr_0f5_59f9                            ; $59f7: $30 $00

jr_0f5_59f9:
    db $10                                        ; $59f9: $10
    inc bc                                        ; $59fa: $03
    nop                                           ; $59fb: $00
    sbc h                                         ; $59fc: $9c
    ld e, a                                       ; $59fd: $5f
    nop                                           ; $59fe: $00
    inc b                                         ; $59ff: $04
    inc bc                                        ; $5a00: $03
    jr jr_0f5_5a08                                ; $5a01: $18 $05

    cp h                                          ; $5a03: $bc
    inc bc                                        ; $5a04: $03
    ld b, $00                                     ; $5a05: $06 $00
    ld e, d                                       ; $5a07: $5a

jr_0f5_5a08:
    inc b                                         ; $5a08: $04
    dec b                                         ; $5a09: $05
    ld [de], a                                    ; $5a0a: $12
    ld d, b                                       ; $5a0b: $50
    rlca                                          ; $5a0c: $07
    dec bc                                        ; $5a0d: $0b
    nop                                           ; $5a0e: $00
    ld e, e                                       ; $5a0f: $5b
    inc b                                         ; $5a10: $04
    ld b, $00                                     ; $5a11: $06 $00
    or h                                          ; $5a13: $b4
    dec bc                                        ; $5a14: $0b
    inc e                                         ; $5a15: $1c
    ld bc, $0304                                  ; $5a16: $01 $04 $03
    inc bc                                        ; $5a19: $03
    nop                                           ; $5a1a: $00
    cp h                                          ; $5a1b: $bc
    ld bc, $7828                                  ; $5a1c: $01 $28 $78
    jr nz, @+$0e                                  ; $5a1f: $20 $0c

    inc l                                         ; $5a21: $2c
    jr jr_0f5_5a64                                ; $5a22: $18 $40

    nop                                           ; $5a24: $00

jr_0f5_5a25:
    jr nz, jr_0f5_5a7b                            ; $5a25: $20 $54

    ld a, b                                       ; $5a27: $78
    ld [$4020], sp                                ; $5a28: $08 $20 $40
    nop                                           ; $5a2b: $00
    jr jr_0f5_5a4e                                ; $5a2c: $18 $20

jr_0f5_5a2e:
    ld [hl+], a                                   ; $5a2e: $22
    ld e, b                                       ; $5a2f: $58
    nop                                           ; $5a30: $00
    jr nc, jr_0f5_5a87                            ; $5a31: $30 $54

    ld b, b                                       ; $5a33: $40
    db $10                                        ; $5a34: $10
    ld l, h                                       ; $5a35: $6c
    ld e, b                                       ; $5a36: $58
    inc e                                         ; $5a37: $1c

jr_0f5_5a38:
    ld c, b                                       ; $5a38: $48
    jr nc, jr_0f5_59c3                            ; $5a39: $30 $88

    inc b                                         ; $5a3b: $04
    nop                                           ; $5a3c: $00
    inc d                                         ; $5a3d: $14
    jr jr_0f5_5a44                                ; $5a3e: $18 $04

    ld [hl], b                                    ; $5a40: $70
    jr nc, jr_0f5_5a5b                            ; $5a41: $30 $18

    ld [bc], a                                    ; $5a43: $02

jr_0f5_5a44:
    ld bc, $2a06                                  ; $5a44: $01 $06 $2a
    inc e                                         ; $5a47: $1c
    ld a, [bc]                                    ; $5a48: $0a
    inc bc                                        ; $5a49: $03
    inc h                                         ; $5a4a: $24
    jr @+$13                                      ; $5a4b: $18 $11

    ld [bc], a                                    ; $5a4d: $02

jr_0f5_5a4e:
    dec d                                         ; $5a4e: $15
    ld a, [bc]                                    ; $5a4f: $0a
    nop                                           ; $5a50: $00
    inc e                                         ; $5a51: $1c
    ld a, [bc]                                    ; $5a52: $0a
    ld [bc], a                                    ; $5a53: $02
    ld bc, $1936                                  ; $5a54: $01 $36 $19
    dec a                                         ; $5a57: $3d
    ld [bc], a                                    ; $5a58: $02
    ld b, b                                       ; $5a59: $40
    cp b                                          ; $5a5a: $b8

jr_0f5_5a5b:
    jr nz, jr_0f5_5ab7                            ; $5a5b: $20 $5a

    jr nz, jr_0f5_5a67                            ; $5a5d: $20 $08

    nop                                           ; $5a5f: $00
    inc [hl]                                      ; $5a60: $34
    ld c, b                                       ; $5a61: $48
    ld d, b                                       ; $5a62: $50
    nop                                           ; $5a63: $00

jr_0f5_5a64:
    ld e, d                                       ; $5a64: $5a
    jr nz, @+$62                                  ; $5a65: $20 $60

jr_0f5_5a67:
    nop                                           ; $5a67: $00
    dec l                                         ; $5a68: $2d
    ld d, b                                       ; $5a69: $50
    jr c, jr_0f5_5a6c                             ; $5a6a: $38 $00

jr_0f5_5a6c:
    jr nz, jr_0f5_5a2e                            ; $5a6c: $20 $c0

    ld a, [$5800]                                 ; $5a6e: $fa $00 $58
    and b                                         ; $5a71: $a0
    ld a, h                                       ; $5a72: $7c
    nop                                           ; $5a73: $00
    and b                                         ; $5a74: $a0
    nop                                           ; $5a75: $00
    ld d, b                                       ; $5a76: $50
    nop                                           ; $5a77: $00
    ld [$b606], sp                                ; $5a78: $08 $06 $b6

jr_0f5_5a7b:
    add hl, bc                                    ; $5a7b: $09

jr_0f5_5a7c:
    dec l                                         ; $5a7c: $2d
    ld [de], a                                    ; $5a7d: $12
    ld a, c                                       ; $5a7e: $79
    ld b, $0a                                     ; $5a7f: $06 $0a
    nop                                           ; $5a81: $00
    ld [de], a                                    ; $5a82: $12
    ld bc, $0002                                  ; $5a83: $01 $02 $00
    dec c                                         ; $5a86: $0d

jr_0f5_5a87:
    ld [bc], a                                    ; $5a87: $02
    jr jr_0f5_5a8a                                ; $5a88: $18 $00

jr_0f5_5a8a:
    ld bc, $0600                                  ; $5a8a: $01 $00 $06
    nop                                           ; $5a8d: $00
    ld bc, $0300                                  ; $5a8e: $01 $00 $03
    nop                                           ; $5a91: $00
    ld [bc], a                                    ; $5a92: $02
    ld b, $00                                     ; $5a93: $06 $00
    cp h                                          ; $5a95: $bc
    jr nc, jr_0f5_5a38                            ; $5a96: $30 $a0

    ld h, h                                       ; $5a98: $64
    ldh a, [rNR41]                                ; $5a99: $f0 $20
    ld b, b                                       ; $5a9b: $40
    inc l                                         ; $5a9c: $2c
    ret z                                         ; $5a9d: $c8

    jr jr_0f5_5ac0                                ; $5a9e: $18 $20

    add l                                         ; $5aa0: $85
    ld d, h                                       ; $5aa1: $54
    or [hl]                                       ; $5aa2: $b6
    ld [hl-], a                                   ; $5aa3: $32
    add $9c                                       ; $5aa4: $c6 $9c
    ld [hl], b                                    ; $5aa6: $70
    ld d, b                                       ; $5aa7: $50
    and [hl]                                      ; $5aa8: $a6
    xor a                                         ; $5aa9: $af
    db $10                                        ; $5aaa: $10
    ld d, c                                       ; $5aab: $51
    ld a, [bc]                                    ; $5aac: $0a
    cp h                                          ; $5aad: $bc
    ld bc, $1269                                  ; $5aae: $01 $69 $12
    xor c                                         ; $5ab1: $a9
    nop                                           ; $5ab2: $00
    ld b, $01                                     ; $5ab3: $06 $01
    nop                                           ; $5ab5: $00
    add b                                         ; $5ab6: $80

jr_0f5_5ab7:
    jr nz, jr_0f5_5ac9                            ; $5ab7: $20 $10

    ld c, b                                       ; $5ab9: $48
    pop hl                                        ; $5aba: $e1
    jp nc, Jump_0f5_4498                          ; $5abb: $d2 $98 $44

    adc b                                         ; $5abe: $88
    db $db                                        ; $5abf: $db

jr_0f5_5ac0:
    jr z, jr_0f5_5a7c                             ; $5ac0: $28 $ba

    push bc                                       ; $5ac2: $c5
    ld b, [hl]                                    ; $5ac3: $46
    cp l                                          ; $5ac4: $bd
    call nc, $ba2b                                ; $5ac5: $d4 $2b $ba
    dec b                                         ; $5ac8: $05

jr_0f5_5ac9:
    ld c, e                                       ; $5ac9: $4b
    db $10                                        ; $5aca: $10
    sbc d                                         ; $5acb: $9a
    nop                                           ; $5acc: $00
    jp nc, $0800                                  ; $5acd: $d2 $00 $08

    nop                                           ; $5ad0: $00
    ld bc, $0003                                  ; $5ad1: $01 $03 $00
    sbc e                                         ; $5ad4: $9b
    ld bc, $0400                                  ; $5ad5: $01 $00 $04
    ld de, $8602                                  ; $5ad8: $11 $02 $86
    sub b                                         ; $5adb: $90
    db $fc                                        ; $5adc: $fc
    ld [hl], $05                                  ; $5add: $36 $05
    sub a                                         ; $5adf: $97
    ld l, b                                       ; $5ae0: $68
    inc d                                         ; $5ae1: $14
    rst $08                                       ; $5ae2: $cf
    xor d                                         ; $5ae3: $aa
    ld d, l                                       ; $5ae4: $55
    ld e, l                                       ; $5ae5: $5d
    ld [bc], a                                    ; $5ae6: $02
    or [hl]                                       ; $5ae7: $b6
    ld b, b                                       ; $5ae8: $40
    sub [hl]                                      ; $5ae9: $96
    nop                                           ; $5aea: $00
    ld [de], a                                    ; $5aeb: $12
    nop                                           ; $5aec: $00
    ld b, b                                       ; $5aed: $40
    nop                                           ; $5aee: $00
    inc b                                         ; $5aef: $04
    ld b, $00                                     ; $5af0: $06 $00
    add c                                         ; $5af2: $81
    dec bc                                        ; $5af3: $0b
    ld [bc], a                                    ; $5af4: $02
    ld bc, $03a3                                  ; $5af5: $01 $a3 $03
    ld bc, $0500                                  ; $5af8: $01 $00 $05
    inc b                                         ; $5afb: $04
    ld d, $01                                     ; $5afc: $16 $01
    ld [$3b0c], sp                                ; $5afe: $08 $0c $3b
    inc de                                        ; $5b01: $13
    jr jr_0f5_5b11                                ; $5b02: $18 $0d

    inc hl                                        ; $5b04: $23
    or d                                          ; $5b05: $b2
    sbc c                                         ; $5b06: $99
    dec l                                         ; $5b07: $2d
    ld d, d                                       ; $5b08: $52
    sub d                                         ; $5b09: $92
    ld b, h                                       ; $5b0a: $44
    adc $21                                       ; $5b0b: $ce $21
    dec h                                         ; $5b0d: $25
    ret nc                                        ; $5b0e: $d0

    xor c                                         ; $5b0f: $a9
    ld b, b                                       ; $5b10: $40

jr_0f5_5b11:
    ld hl, sp+$00                                 ; $5b11: $f8 $00
    jr nz, jr_0f5_5b65                            ; $5b13: $20 $50

    jr nc, @+$62                                  ; $5b15: $30 $60

    ld [hl], b                                    ; $5b17: $70
    nop                                           ; $5b18: $00
    ld b, b                                       ; $5b19: $40
    ld [bc], a                                    ; $5b1a: $02
    nop                                           ; $5b1b: $00
    sub d                                         ; $5b1c: $92
    jr nc, jr_0f5_5b67                            ; $5b1d: $30 $48

    jr nz, jr_0f5_5b37                            ; $5b1f: $20 $16

    ld l, b                                       ; $5b21: $68
    inc hl                                        ; $5b22: $23
    ld b, b                                       ; $5b23: $40
    ld [hl], b                                    ; $5b24: $70
    nop                                           ; $5b25: $00
    inc l                                         ; $5b26: $2c
    nop                                           ; $5b27: $00

jr_0f5_5b28:
    ld d, b                                       ; $5b28: $50
    nop                                           ; $5b29: $00
    jr c, jr_0f5_5b2c                             ; $5b2a: $38 $00

jr_0f5_5b2c:
    ld c, b                                       ; $5b2c: $48
    nop                                           ; $5b2d: $00
    jr nz, jr_0f5_5b33                            ; $5b2e: $20 $03

    nop                                           ; $5b30: $00
    add c                                         ; $5b31: $81
    ld b, b                                       ; $5b32: $40

jr_0f5_5b33:
    dec b                                         ; $5b33: $05
    nop                                           ; $5b34: $00
    add e                                         ; $5b35: $83
    dec hl                                        ; $5b36: $2b

jr_0f5_5b37:
    nop                                           ; $5b37: $00
    ld [bc], a                                    ; $5b38: $02
    inc bc                                        ; $5b39: $03
    nop                                           ; $5b3a: $00
    add c                                         ; $5b3b: $81
    ld [bc], a                                    ; $5b3c: $02
    add hl, de                                    ; $5b3d: $19
    nop                                           ; $5b3e: $00
    add a                                         ; $5b3f: $87
    dec d                                         ; $5b40: $15
    ld [$0024], sp                                ; $5b41: $08 $24 $00
    stop                                          ; $5b44: $10 $00
    inc h                                         ; $5b46: $24
    dec d                                         ; $5b47: $15
    nop                                           ; $5b48: $00
    rst $38                                       ; $5b49: $ff
    add hl, bc                                    ; $5b4a: $09
    ld [bc], a                                    ; $5b4b: $02
    ld a, [$c609]                                 ; $5b4c: $fa $09 $c6
    rst $10                                       ; $5b4f: $d7
    pop de                                        ; $5b50: $d1
    add sp, -$2f                                  ; $5b51: $e8 $d1
    db $ed                                        ; $5b53: $ed
    inc b                                         ; $5b54: $04
    nop                                           ; $5b55: $00
    ld [bc], a                                    ; $5b56: $02
    db $10                                        ; $5b57: $10
    adc c                                         ; $5b58: $89
    nop                                           ; $5b59: $00
    db $10                                        ; $5b5a: $10
    jr c, jr_0f5_5b85                             ; $5b5b: $38 $28

    cp d                                          ; $5b5d: $ba
    add $38                                       ; $5b5e: $c6 $38
    jr z, jr_0f5_5b62                             ; $5b60: $28 $00

jr_0f5_5b62:
    inc bc                                        ; $5b62: $03
    db $10                                        ; $5b63: $10

jr_0f5_5b64:
    rrca                                          ; $5b64: $0f

jr_0f5_5b65:
    nop                                           ; $5b65: $00
    ld [bc], a                                    ; $5b66: $02

jr_0f5_5b67:
    ld [bc], a                                    ; $5b67: $02
    add e                                         ; $5b68: $83
    dec b                                         ; $5b69: $05
    nop                                           ; $5b6a: $00
    ld [bc], a                                    ; $5b6b: $02
    ld a, [de]                                    ; $5b6c: $1a
    nop                                           ; $5b6d: $00
    rst $38                                       ; $5b6e: $ff
    add hl, bc                                    ; $5b6f: $09
    ld [bc], a                                    ; $5b70: $02
    ld sp, hl                                     ; $5b71: $f9
    ld [$d7c6], sp                                ; $5b72: $08 $c6 $d7
    rst $08                                       ; $5b75: $cf
    and $cf                                       ; $5b76: $e6 $cf
    xor $06                                       ; $5b78: $ee $06
    nop                                           ; $5b7a: $00
    ld [bc], a                                    ; $5b7b: $02
    ld [$008d], sp                                ; $5b7c: $08 $8d $00
    ld [$141c], sp                                ; $5b7f: $08 $1c $14
    ld a, [hl+]                                   ; $5b82: $2a
    ld [hl], $be                                  ; $5b83: $36 $be

jr_0f5_5b85:
    pop bc                                        ; $5b85: $c1
    ld a, [hl+]                                   ; $5b86: $2a
    ld [hl], $1c                                  ; $5b87: $36 $1c
    inc d                                         ; $5b89: $14
    nop                                           ; $5b8a: $00
    inc bc                                        ; $5b8b: $03
    ld [$0008], sp                                ; $5b8c: $08 $08 $00
    ld [bc], a                                    ; $5b8f: $02
    ld [$0081], sp                                ; $5b90: $08 $81 $00
    ld [bc], a                                    ; $5b93: $02
    ld [$1486], sp                                ; $5b94: $08 $86 $14
    ld e, l                                       ; $5b97: $5d
    ld h, e                                       ; $5b98: $63
    ld [$0014], sp                                ; $5b99: $08 $14 $00
    inc bc                                        ; $5b9c: $03
    ld [$8002], sp                                ; $5b9d: $08 $02 $80
    add hl, bc                                    ; $5ba0: $09
    nop                                           ; $5ba1: $00
    ld [bc], a                                    ; $5ba2: $02
    jr nz, jr_0f5_5b28                            ; $5ba3: $20 $83

    ld d, b                                       ; $5ba5: $50
    nop                                           ; $5ba6: $00
    jr nz, jr_0f5_5bab                            ; $5ba7: $20 $02

    nop                                           ; $5ba9: $00
    rst $38                                       ; $5baa: $ff

jr_0f5_5bab:
    dec bc                                        ; $5bab: $0b
    inc bc                                        ; $5bac: $03
    ld sp, hl                                     ; $5bad: $f9
    ld [$d7c6], sp                                ; $5bae: $08 $c6 $d7
    ret nc                                        ; $5bb1: $d0

    db $e4                                        ; $5bb2: $e4
    adc $ec                                       ; $5bb3: $ce $ec
    pop de                                        ; $5bb5: $d1
    rst $28                                       ; $5bb6: $ef
    ld [bc], a                                    ; $5bb7: $02
    ld [bc], a                                    ; $5bb8: $02
    sub l                                         ; $5bb9: $95
    nop                                           ; $5bba: $00
    ld [bc], a                                    ; $5bbb: $02
    nop                                           ; $5bbc: $00
    ld [bc], a                                    ; $5bbd: $02
    rlca                                          ; $5bbe: $07

jr_0f5_5bbf:
    dec b                                         ; $5bbf: $05
    ld [bc], a                                    ; $5bc0: $02
    dec b                                         ; $5bc1: $05
    rla                                           ; $5bc2: $17

jr_0f5_5bc3:
    jr jr_0f5_5b64                                ; $5bc3: $18 $9f

    ldh [rNR22], a                                ; $5bc5: $e0 $17
    jr jr_0f5_5bcb                                ; $5bc7: $18 $02

    dec b                                         ; $5bc9: $05
    rlca                                          ; $5bca: $07

jr_0f5_5bcb:
    dec b                                         ; $5bcb: $05
    nop                                           ; $5bcc: $00
    ld [bc], a                                    ; $5bcd: $02
    nop                                           ; $5bce: $00
    inc bc                                        ; $5bcf: $03
    ld [bc], a                                    ; $5bd0: $02
    ld b, $00                                     ; $5bd1: $06 $00
    ld [bc], a                                    ; $5bd3: $02
    ld [bc], a                                    ; $5bd4: $02
    sub d                                         ; $5bd5: $92
    nop                                           ; $5bd6: $00
    ld [bc], a                                    ; $5bd7: $02
    dec b                                         ; $5bd8: $05
    rlca                                          ; $5bd9: $07
    ld a, [bc]                                    ; $5bda: $0a
    dec c                                         ; $5bdb: $0d
    daa                                           ; $5bdc: $27
    jr c, jr_0f5_5be9                             ; $5bdd: $38 $0a

    dec c                                         ; $5bdf: $0d
    dec b                                         ; $5be0: $05
    rlca                                          ; $5be1: $07
    ld b, b                                       ; $5be2: $40
    jp nz, Jump_000_3aca                          ; $5be3: $c2 $ca $3a

    ld b, b                                       ; $5be6: $40
    ret nz                                        ; $5be7: $c0

    ld [bc], a                                    ; $5be8: $02

jr_0f5_5be9:
    nop                                           ; $5be9: $00
    ld [bc], a                                    ; $5bea: $02
    ld [$0081], sp                                ; $5beb: $08 $81 $00
    ld [bc], a                                    ; $5bee: $02
    ld [$1485], sp                                ; $5bef: $08 $85 $14
    ld e, l                                       ; $5bf2: $5d
    ld h, e                                       ; $5bf3: $63
    ld [$0214], sp                                ; $5bf4: $08 $14 $02
    inc b                                         ; $5bf7: $04
    add d                                         ; $5bf8: $82
    ld bc, $0207                                  ; $5bf9: $01 $07 $02
    inc b                                         ; $5bfc: $04
    dec d                                         ; $5bfd: $15
    nop                                           ; $5bfe: $00
    inc bc                                        ; $5bff: $03
    ld b, b                                       ; $5c00: $40
    ld [bc], a                                    ; $5c01: $02
    nop                                           ; $5c02: $00
    rst $38                                       ; $5c03: $ff
    dec bc                                        ; $5c04: $0b
    inc bc                                        ; $5c05: $03
    ld sp, hl                                     ; $5c06: $f9
    ld [$d7c6], sp                                ; $5c07: $08 $c6 $d7
    rst $08                                       ; $5c0a: $cf
    db $e3                                        ; $5c0b: $e3
    pop de                                        ; $5c0c: $d1
    db $eb                                        ; $5c0d: $eb
    jp nc, Jump_000_02ed                          ; $5c0e: $d2 $ed $02

    ld bc, $0099                                  ; $5c11: $01 $99 $00
    ld bc, $0100                                  ; $5c14: $01 $00 $01
    inc bc                                        ; $5c17: $03
    ld [bc], a                                    ; $5c18: $02
    ld bc, $0302                                  ; $5c19: $01 $02 $03
    inc b                                         ; $5c1c: $04
    rla                                           ; $5c1d: $17
    jr jr_0f5_5bbf                                ; $5c1e: $18 $9f

    ldh [rNR22], a                                ; $5c20: $e0 $17
    jr @+$05                                      ; $5c22: $18 $03

    inc b                                         ; $5c24: $04
    ld bc, $0302                                  ; $5c25: $01 $02 $03
    ld [bc], a                                    ; $5c28: $02
    nop                                           ; $5c29: $00
    ld bc, $0300                                  ; $5c2a: $01 $00 $03

jr_0f5_5c2d:
    ld bc, $0003                                  ; $5c2d: $01 $03 $00
    sbc h                                         ; $5c30: $9c
    ld bc, $8281                                  ; $5c31: $01 $81 $82
    nop                                           ; $5c34: $00
    add c                                         ; $5c35: $81
    add b                                         ; $5c36: $80
    ld b, b                                       ; $5c37: $40
    ret nc                                        ; $5c38: $d0

    jr nc, jr_0f5_5c2d                            ; $5c39: $30 $f2

    ld c, $d0                                     ; $5c3b: $0e $d0
    jr nc, jr_0f5_5bc3                            ; $5c3d: $30 $84

    ld b, h                                       ; $5c3f: $44
    nop                                           ; $5c40: $00
    add h                                         ; $5c41: $84
    adc d                                         ; $5c42: $8a
    adc [hl]                                      ; $5c43: $8e
    dec d                                         ; $5c44: $15
    dec de                                        ; $5c45: $1b
    ld c, [hl]                                    ; $5c46: $4e
    ld [hl], c                                    ; $5c47: $71
    dec d                                         ; $5c48: $15
    dec de                                        ; $5c49: $1b
    ld a, [bc]                                    ; $5c4a: $0a
    ld c, $00                                     ; $5c4b: $0e $00
    inc bc                                        ; $5c4d: $03
    inc b                                         ; $5c4e: $04
    add d                                         ; $5c4f: $82
    nop                                           ; $5c50: $00
    ld [bc], a                                    ; $5c51: $02
    ld [de], a                                    ; $5c52: $12
    nop                                           ; $5c53: $00
    add d                                         ; $5c54: $82
    ld bc, $0a03                                  ; $5c55: $01 $03 $0a
    nop                                           ; $5c58: $00
    rst $38                                       ; $5c59: $ff
    add hl, bc                                    ; $5c5a: $09
    ld [bc], a                                    ; $5c5b: $02
    ld sp, hl                                     ; $5c5c: $f9
    ld [$d7c6], sp                                ; $5c5d: $08 $c6 $d7
    db $d3                                        ; $5c60: $d3
    rst $20                                       ; $5c61: $e7
    db $d3                                        ; $5c62: $d3
    ld [$1002], a                                 ; $5c63: $ea $02 $10
    add c                                         ; $5c66: $81
    nop                                           ; $5c67: $00
    ld [bc], a                                    ; $5c68: $02
    db $10                                        ; $5c69: $10
    add [hl]                                      ; $5c6a: $86
    jr z, @-$44                                   ; $5c6b: $28 $ba

    add $10                                       ; $5c6d: $c6 $10
    jr z, jr_0f5_5c71                             ; $5c6f: $28 $00

jr_0f5_5c71:
    inc bc                                        ; $5c71: $03
    db $10                                        ; $5c72: $10
    inc hl                                        ; $5c73: $23
    nop                                           ; $5c74: $00
    ld [bc], a                                    ; $5c75: $02
    ld [bc], a                                    ; $5c76: $02
    add e                                         ; $5c77: $83
    dec b                                         ; $5c78: $05
    nop                                           ; $5c79: $00
    ld [bc], a                                    ; $5c7a: $02
    ld a, [bc]                                    ; $5c7b: $0a
    nop                                           ; $5c7c: $00
    rst $38                                       ; $5c7d: $ff
    dec c                                         ; $5c7e: $0d
    inc b                                         ; $5c7f: $04
    ld sp, hl                                     ; $5c80: $f9
    ld [$d7c6], sp                                ; $5c81: $08 $c6 $d7
    ret nz                                        ; $5c84: $c0

    ld a, [$00c0]                                 ; $5c85: $fa $c0 $00
    ret nc                                        ; $5c88: $d0

    ld a, [$00d0]                                 ; $5c89: $fa $d0 $00
    add $da                                       ; $5c8c: $c6 $da
    rst $38                                       ; $5c8e: $ff
    cp h                                          ; $5c8f: $bc
    rst $38                                       ; $5c90: $ff
    jp c, $bcff                                   ; $5c91: $da $ff $bc

    rst $38                                       ; $5c94: $ff
    jp c, $bcff                                   ; $5c95: $da $ff $bc

    rst $38                                       ; $5c98: $ff
    jp c, $bcff                                   ; $5c99: $da $ff $bc

    rst $38                                       ; $5c9c: $ff
    jp c, $bcff                                   ; $5c9d: $da $ff $bc

    rst $38                                       ; $5ca0: $ff
    jp c, $bcff                                   ; $5ca1: $da $ff $bc

    rst $38                                       ; $5ca4: $ff
    jp c, $bcff                                   ; $5ca5: $da $ff $bc

    rst $38                                       ; $5ca8: $ff
    jp c, $bcff                                   ; $5ca9: $da $ff $bc

    rst $38                                       ; $5cac: $ff
    rla                                           ; $5cad: $17
    add hl, hl                                    ; $5cae: $29
    rrca                                          ; $5caf: $0f
    ld sp, $2917                                  ; $5cb0: $31 $17 $29
    rrca                                          ; $5cb3: $0f
    ld sp, $2917                                  ; $5cb4: $31 $17 $29
    rrca                                          ; $5cb7: $0f
    ld sp, $2917                                  ; $5cb8: $31 $17 $29
    rrca                                          ; $5cbb: $0f
    ld sp, $2917                                  ; $5cbc: $31 $17 $29
    rrca                                          ; $5cbf: $0f
    ld sp, $2917                                  ; $5cc0: $31 $17 $29
    rrca                                          ; $5cc3: $0f
    ld sp, $2917                                  ; $5cc4: $31 $17 $29
    rrca                                          ; $5cc7: $0f
    ld sp, $2917                                  ; $5cc8: $31 $17 $29
    rrca                                          ; $5ccb: $0f
    ld sp, $ffda                                  ; $5ccc: $31 $da $ff
    ld a, h                                       ; $5ccf: $7c
    ld a, a                                       ; $5cd0: $7f
    ld a, [hl-]                                   ; $5cd1: $3a
    ccf                                           ; $5cd2: $3f
    ld [bc], a                                    ; $5cd3: $02
    rlca                                          ; $5cd4: $07
    jr jr_0f5_5cd7                                ; $5cd5: $18 $00

jr_0f5_5cd7:
    add [hl]                                      ; $5cd7: $86
    rla                                           ; $5cd8: $17
    dec hl                                        ; $5cd9: $2b
    ld c, $36                                     ; $5cda: $0e $36
    inc e                                         ; $5cdc: $1c
    inc a                                         ; $5cdd: $3c
    ld [bc], a                                    ; $5cde: $02
    jr nz, jr_0f5_5cf9                            ; $5cdf: $20 $18

    nop                                           ; $5ce1: $00
    rst $38                                       ; $5ce2: $ff
    ld de, $f906                                  ; $5ce3: $11 $06 $f9
    ld [$d7c6], sp                                ; $5ce6: $08 $c6 $d7
    ret nz                                        ; $5ce9: $c0

    ld a, [$00c0]                                 ; $5cea: $fa $c0 $00
    ret nc                                        ; $5ced: $d0

    ld a, [$00d0]                                 ; $5cee: $fa $d0 $00
    ldh [$fa], a                                  ; $5cf1: $e0 $fa
    ldh [rP1], a                                  ; $5cf3: $e0 $00
    cp $da                                        ; $5cf5: $fe $da
    rst $38                                       ; $5cf7: $ff
    cp h                                          ; $5cf8: $bc

jr_0f5_5cf9:
    rst $38                                       ; $5cf9: $ff
    jp c, $bcff                                   ; $5cfa: $da $ff $bc

    rst $38                                       ; $5cfd: $ff
    jp c, $bcff                                   ; $5cfe: $da $ff $bc

    rst $38                                       ; $5d01: $ff
    jp c, $bcff                                   ; $5d02: $da $ff $bc

    rst $38                                       ; $5d05: $ff
    jp c, $bcff                                   ; $5d06: $da $ff $bc

    rst $38                                       ; $5d09: $ff
    jp c, $bcff                                   ; $5d0a: $da $ff $bc

    rst $38                                       ; $5d0d: $ff
    jp c, $bcff                                   ; $5d0e: $da $ff $bc

    rst $38                                       ; $5d11: $ff
    jp c, $bcff                                   ; $5d12: $da $ff $bc

    rst $38                                       ; $5d15: $ff
    rla                                           ; $5d16: $17
    add hl, hl                                    ; $5d17: $29
    rrca                                          ; $5d18: $0f
    ld sp, $2917                                  ; $5d19: $31 $17 $29
    rrca                                          ; $5d1c: $0f
    ld sp, $2917                                  ; $5d1d: $31 $17 $29
    rrca                                          ; $5d20: $0f
    ld sp, $2917                                  ; $5d21: $31 $17 $29
    rrca                                          ; $5d24: $0f
    ld sp, $2917                                  ; $5d25: $31 $17 $29
    rrca                                          ; $5d28: $0f
    ld sp, $2917                                  ; $5d29: $31 $17 $29
    rrca                                          ; $5d2c: $0f
    ld sp, $2917                                  ; $5d2d: $31 $17 $29
    rrca                                          ; $5d30: $0f
    ld sp, $2917                                  ; $5d31: $31 $17 $29
    rrca                                          ; $5d34: $0f
    ld sp, $ffda                                  ; $5d35: $31 $da $ff
    cp h                                          ; $5d38: $bc
    rst $38                                       ; $5d39: $ff
    jp c, $bcff                                   ; $5d3a: $da $ff $bc

    rst $38                                       ; $5d3d: $ff
    jp c, $bcff                                   ; $5d3e: $da $ff $bc

    rst $38                                       ; $5d41: $ff
    jp c, $bcff                                   ; $5d42: $da $ff $bc

    rst $38                                       ; $5d45: $ff
    jp c, $bcff                                   ; $5d46: $da $ff $bc

    rst $38                                       ; $5d49: $ff
    jp c, $bcff                                   ; $5d4a: $da $ff $bc

    rst $38                                       ; $5d4d: $ff
    jp c, $bcff                                   ; $5d4e: $da $ff $bc

    rst $38                                       ; $5d51: $ff
    jp c, $bcff                                   ; $5d52: $da $ff $bc

    rst $38                                       ; $5d55: $ff
    rla                                           ; $5d56: $17
    add hl, hl                                    ; $5d57: $29
    rrca                                          ; $5d58: $0f
    ld sp, $2917                                  ; $5d59: $31 $17 $29
    rrca                                          ; $5d5c: $0f
    ld sp, $2917                                  ; $5d5d: $31 $17 $29
    rrca                                          ; $5d60: $0f
    ld sp, $2917                                  ; $5d61: $31 $17 $29
    rrca                                          ; $5d64: $0f
    ld sp, $2917                                  ; $5d65: $31 $17 $29
    rrca                                          ; $5d68: $0f
    ld sp, $2917                                  ; $5d69: $31 $17 $29
    rrca                                          ; $5d6c: $0f
    ld sp, $2917                                  ; $5d6d: $31 $17 $29
    rrca                                          ; $5d70: $0f
    ld sp, $2917                                  ; $5d71: $31 $17 $29
    adc b                                         ; $5d74: $88
    rrca                                          ; $5d75: $0f
    ld sp, $ffda                                  ; $5d76: $31 $da $ff
    ld a, h                                       ; $5d79: $7c
    ld a, a                                       ; $5d7a: $7f
    ld a, [hl-]                                   ; $5d7b: $3a
    ccf                                           ; $5d7c: $3f
    ld [bc], a                                    ; $5d7d: $02
    rlca                                          ; $5d7e: $07
    jr jr_0f5_5d81                                ; $5d7f: $18 $00

jr_0f5_5d81:
    add [hl]                                      ; $5d81: $86
    rla                                           ; $5d82: $17
    dec hl                                        ; $5d83: $2b
    ld c, $36                                     ; $5d84: $0e $36
    inc e                                         ; $5d86: $1c
    inc a                                         ; $5d87: $3c
    ld [bc], a                                    ; $5d88: $02
    jr nz, jr_0f5_5da3                            ; $5d89: $20 $18

    nop                                           ; $5d8b: $00
    rst $38                                       ; $5d8c: $ff
    add hl, de                                    ; $5d8d: $19
    ld a, [bc]                                    ; $5d8e: $0a
    ld sp, hl                                     ; $5d8f: $f9
    ld [$d7c6], sp                                ; $5d90: $08 $c6 $d7
    ret nz                                        ; $5d93: $c0

    ld a, [$00c0]                                 ; $5d94: $fa $c0 $00
    ret nc                                        ; $5d97: $d0

    ld a, [$00d0]                                 ; $5d98: $fa $d0 $00
    ldh [$fa], a                                  ; $5d9b: $e0 $fa
    ldh [rP1], a                                  ; $5d9d: $e0 $00
    ldh a, [$fa]                                  ; $5d9f: $f0 $fa
    ldh a, [rP1]                                  ; $5da1: $f0 $00

jr_0f5_5da3:
    nop                                           ; $5da3: $00
    ld a, [$0000]                                 ; $5da4: $fa $00 $00
    cp $da                                        ; $5da7: $fe $da
    rst $38                                       ; $5da9: $ff
    cp h                                          ; $5daa: $bc
    rst $38                                       ; $5dab: $ff
    jp c, $bcff                                   ; $5dac: $da $ff $bc

    rst $38                                       ; $5daf: $ff
    jp c, $bcff                                   ; $5db0: $da $ff $bc

    rst $38                                       ; $5db3: $ff
    jp c, $bcff                                   ; $5db4: $da $ff $bc

    rst $38                                       ; $5db7: $ff
    jp c, $bcff                                   ; $5db8: $da $ff $bc

    rst $38                                       ; $5dbb: $ff
    jp c, $bcff                                   ; $5dbc: $da $ff $bc

    rst $38                                       ; $5dbf: $ff
    jp c, $bcff                                   ; $5dc0: $da $ff $bc

    rst $38                                       ; $5dc3: $ff
    jp c, $bcff                                   ; $5dc4: $da $ff $bc

    rst $38                                       ; $5dc7: $ff
    rla                                           ; $5dc8: $17
    add hl, hl                                    ; $5dc9: $29
    rrca                                          ; $5dca: $0f
    ld sp, $2917                                  ; $5dcb: $31 $17 $29
    rrca                                          ; $5dce: $0f
    ld sp, $2917                                  ; $5dcf: $31 $17 $29
    rrca                                          ; $5dd2: $0f
    ld sp, $2917                                  ; $5dd3: $31 $17 $29
    rrca                                          ; $5dd6: $0f
    ld sp, $2917                                  ; $5dd7: $31 $17 $29
    rrca                                          ; $5dda: $0f
    ld sp, $2917                                  ; $5ddb: $31 $17 $29
    rrca                                          ; $5dde: $0f
    ld sp, $2917                                  ; $5ddf: $31 $17 $29
    rrca                                          ; $5de2: $0f
    ld sp, $2917                                  ; $5de3: $31 $17 $29
    rrca                                          ; $5de6: $0f
    ld sp, $ffda                                  ; $5de7: $31 $da $ff
    cp h                                          ; $5dea: $bc
    rst $38                                       ; $5deb: $ff
    jp c, $bcff                                   ; $5dec: $da $ff $bc

    rst $38                                       ; $5def: $ff
    jp c, $bcff                                   ; $5df0: $da $ff $bc

    rst $38                                       ; $5df3: $ff
    jp c, $bcff                                   ; $5df4: $da $ff $bc

    rst $38                                       ; $5df7: $ff
    jp c, $bcff                                   ; $5df8: $da $ff $bc

    rst $38                                       ; $5dfb: $ff
    jp c, $bcff                                   ; $5dfc: $da $ff $bc

    rst $38                                       ; $5dff: $ff
    jp c, $bcff                                   ; $5e00: $da $ff $bc

    rst $38                                       ; $5e03: $ff
    jp c, $bcff                                   ; $5e04: $da $ff $bc

    rst $38                                       ; $5e07: $ff
    rla                                           ; $5e08: $17
    add hl, hl                                    ; $5e09: $29
    rrca                                          ; $5e0a: $0f
    ld sp, $2917                                  ; $5e0b: $31 $17 $29
    rrca                                          ; $5e0e: $0f
    ld sp, $2917                                  ; $5e0f: $31 $17 $29
    rrca                                          ; $5e12: $0f
    ld sp, $2917                                  ; $5e13: $31 $17 $29
    rrca                                          ; $5e16: $0f
    ld sp, $2917                                  ; $5e17: $31 $17 $29
    rrca                                          ; $5e1a: $0f
    ld sp, $2917                                  ; $5e1b: $31 $17 $29
    rrca                                          ; $5e1e: $0f
    ld sp, $2917                                  ; $5e1f: $31 $17 $29
    rrca                                          ; $5e22: $0f
    ld sp, $2917                                  ; $5e23: $31 $17 $29
    cp $0f                                        ; $5e26: $fe $0f
    ld sp, $ffda                                  ; $5e28: $31 $da $ff
    cp h                                          ; $5e2b: $bc
    rst $38                                       ; $5e2c: $ff
    jp c, $bcff                                   ; $5e2d: $da $ff $bc

    rst $38                                       ; $5e30: $ff
    jp c, $bcff                                   ; $5e31: $da $ff $bc

    rst $38                                       ; $5e34: $ff
    jp c, $bcff                                   ; $5e35: $da $ff $bc

    rst $38                                       ; $5e38: $ff
    jp c, $bcff                                   ; $5e39: $da $ff $bc

    rst $38                                       ; $5e3c: $ff
    jp c, $bcff                                   ; $5e3d: $da $ff $bc

    rst $38                                       ; $5e40: $ff
    jp c, $bcff                                   ; $5e41: $da $ff $bc

    rst $38                                       ; $5e44: $ff
    jp c, $bcff                                   ; $5e45: $da $ff $bc

    rst $38                                       ; $5e48: $ff
    rla                                           ; $5e49: $17
    add hl, hl                                    ; $5e4a: $29
    rrca                                          ; $5e4b: $0f
    ld sp, $2917                                  ; $5e4c: $31 $17 $29
    rrca                                          ; $5e4f: $0f
    ld sp, $2917                                  ; $5e50: $31 $17 $29
    rrca                                          ; $5e53: $0f
    ld sp, $2917                                  ; $5e54: $31 $17 $29
    rrca                                          ; $5e57: $0f
    ld sp, $2917                                  ; $5e58: $31 $17 $29
    rrca                                          ; $5e5b: $0f
    ld sp, $2917                                  ; $5e5c: $31 $17 $29
    rrca                                          ; $5e5f: $0f
    ld sp, $2917                                  ; $5e60: $31 $17 $29
    rrca                                          ; $5e63: $0f
    ld sp, $2917                                  ; $5e64: $31 $17 $29
    rrca                                          ; $5e67: $0f
    ld sp, $ffda                                  ; $5e68: $31 $da $ff
    cp h                                          ; $5e6b: $bc
    rst $38                                       ; $5e6c: $ff
    jp c, $bcff                                   ; $5e6d: $da $ff $bc

    rst $38                                       ; $5e70: $ff
    jp c, $bcff                                   ; $5e71: $da $ff $bc

    rst $38                                       ; $5e74: $ff
    jp c, $bcff                                   ; $5e75: $da $ff $bc

    rst $38                                       ; $5e78: $ff
    jp c, $bcff                                   ; $5e79: $da $ff $bc

    rst $38                                       ; $5e7c: $ff
    jp c, $bcff                                   ; $5e7d: $da $ff $bc

    rst $38                                       ; $5e80: $ff
    jp c, $bcff                                   ; $5e81: $da $ff $bc

    rst $38                                       ; $5e84: $ff
    jp c, $bcff                                   ; $5e85: $da $ff $bc

    rst $38                                       ; $5e88: $ff
    rla                                           ; $5e89: $17
    add hl, hl                                    ; $5e8a: $29
    rrca                                          ; $5e8b: $0f
    ld sp, $2917                                  ; $5e8c: $31 $17 $29
    rrca                                          ; $5e8f: $0f
    ld sp, $2917                                  ; $5e90: $31 $17 $29
    rrca                                          ; $5e93: $0f
    ld sp, $2917                                  ; $5e94: $31 $17 $29
    rrca                                          ; $5e97: $0f
    ld sp, $2917                                  ; $5e98: $31 $17 $29
    rrca                                          ; $5e9b: $0f
    ld sp, $2917                                  ; $5e9c: $31 $17 $29
    rrca                                          ; $5e9f: $0f
    ld sp, $2917                                  ; $5ea0: $31 $17 $29
    rrca                                          ; $5ea3: $0f
    ld sp, $1786                                  ; $5ea4: $31 $86 $17
    add hl, hl                                    ; $5ea7: $29
    rrca                                          ; $5ea8: $0f
    ld sp, $ffda                                  ; $5ea9: $31 $da $ff
    ld e, $00                                     ; $5eac: $1e $00
    add d                                         ; $5eae: $82
    rla                                           ; $5eaf: $17
    add hl, hl                                    ; $5eb0: $29
    ld e, $00                                     ; $5eb1: $1e $00
    rst $38                                       ; $5eb3: $ff
    add hl, de                                    ; $5eb4: $19
    ld a, [bc]                                    ; $5eb5: $0a
    ld sp, hl                                     ; $5eb6: $f9
    ld [$d7c6], sp                                ; $5eb7: $08 $c6 $d7
    ret nz                                        ; $5eba: $c0

    ld a, [$00c0]                                 ; $5ebb: $fa $c0 $00
    ret nc                                        ; $5ebe: $d0

    ld a, [$00d0]                                 ; $5ebf: $fa $d0 $00
    ldh [$fa], a                                  ; $5ec2: $e0 $fa
    ldh [rP1], a                                  ; $5ec4: $e0 $00
    ldh a, [$fa]                                  ; $5ec6: $f0 $fa
    ldh a, [rP1]                                  ; $5ec8: $f0 $00
    nop                                           ; $5eca: $00
    ld a, [$0000]                                 ; $5ecb: $fa $00 $00
    cp $96                                        ; $5ece: $fe $96
    rst $38                                       ; $5ed0: $ff
    adc a                                         ; $5ed1: $8f
    rst $38                                       ; $5ed2: $ff
    sub [hl]                                      ; $5ed3: $96
    rst $38                                       ; $5ed4: $ff
    adc a                                         ; $5ed5: $8f
    rst $38                                       ; $5ed6: $ff
    sub [hl]                                      ; $5ed7: $96
    rst $38                                       ; $5ed8: $ff
    adc a                                         ; $5ed9: $8f
    rst $38                                       ; $5eda: $ff
    sub [hl]                                      ; $5edb: $96
    rst $38                                       ; $5edc: $ff
    adc a                                         ; $5edd: $8f
    rst $38                                       ; $5ede: $ff
    sub [hl]                                      ; $5edf: $96
    rst $38                                       ; $5ee0: $ff
    adc a                                         ; $5ee1: $8f
    rst $38                                       ; $5ee2: $ff
    sub [hl]                                      ; $5ee3: $96
    rst $38                                       ; $5ee4: $ff
    adc a                                         ; $5ee5: $8f
    rst $38                                       ; $5ee6: $ff
    sub [hl]                                      ; $5ee7: $96
    rst $38                                       ; $5ee8: $ff
    adc a                                         ; $5ee9: $8f
    rst $38                                       ; $5eea: $ff
    sub [hl]                                      ; $5eeb: $96
    rst $38                                       ; $5eec: $ff
    adc a                                         ; $5eed: $8f
    rst $38                                       ; $5eee: $ff
    dec h                                         ; $5eef: $25
    dec sp                                        ; $5ef0: $3b
    inc bc                                        ; $5ef1: $03
    dec a                                         ; $5ef2: $3d
    dec h                                         ; $5ef3: $25
    dec sp                                        ; $5ef4: $3b
    inc bc                                        ; $5ef5: $03
    dec a                                         ; $5ef6: $3d
    dec h                                         ; $5ef7: $25
    dec sp                                        ; $5ef8: $3b
    inc bc                                        ; $5ef9: $03
    dec a                                         ; $5efa: $3d
    dec h                                         ; $5efb: $25
    dec sp                                        ; $5efc: $3b
    inc bc                                        ; $5efd: $03
    dec a                                         ; $5efe: $3d
    dec h                                         ; $5eff: $25
    dec sp                                        ; $5f00: $3b
    inc bc                                        ; $5f01: $03
    dec a                                         ; $5f02: $3d
    dec h                                         ; $5f03: $25
    dec sp                                        ; $5f04: $3b
    inc bc                                        ; $5f05: $03
    dec a                                         ; $5f06: $3d
    dec h                                         ; $5f07: $25
    dec sp                                        ; $5f08: $3b
    inc bc                                        ; $5f09: $03
    dec a                                         ; $5f0a: $3d
    dec h                                         ; $5f0b: $25
    dec sp                                        ; $5f0c: $3b
    inc bc                                        ; $5f0d: $03
    dec a                                         ; $5f0e: $3d
    sub [hl]                                      ; $5f0f: $96
    rst $38                                       ; $5f10: $ff
    adc a                                         ; $5f11: $8f
    rst $38                                       ; $5f12: $ff
    sub [hl]                                      ; $5f13: $96
    rst $38                                       ; $5f14: $ff
    adc a                                         ; $5f15: $8f
    rst $38                                       ; $5f16: $ff
    sub [hl]                                      ; $5f17: $96
    rst $38                                       ; $5f18: $ff
    adc a                                         ; $5f19: $8f
    rst $38                                       ; $5f1a: $ff
    sub [hl]                                      ; $5f1b: $96
    rst $38                                       ; $5f1c: $ff
    adc a                                         ; $5f1d: $8f
    rst $38                                       ; $5f1e: $ff
    sub [hl]                                      ; $5f1f: $96
    rst $38                                       ; $5f20: $ff
    adc a                                         ; $5f21: $8f
    rst $38                                       ; $5f22: $ff
    sub [hl]                                      ; $5f23: $96
    rst $38                                       ; $5f24: $ff
    adc a                                         ; $5f25: $8f
    rst $38                                       ; $5f26: $ff
    sub [hl]                                      ; $5f27: $96
    rst $38                                       ; $5f28: $ff
    adc a                                         ; $5f29: $8f
    rst $38                                       ; $5f2a: $ff
    sub [hl]                                      ; $5f2b: $96
    rst $38                                       ; $5f2c: $ff
    adc a                                         ; $5f2d: $8f
    rst $38                                       ; $5f2e: $ff
    dec h                                         ; $5f2f: $25
    dec sp                                        ; $5f30: $3b
    inc bc                                        ; $5f31: $03
    dec a                                         ; $5f32: $3d
    dec h                                         ; $5f33: $25
    dec sp                                        ; $5f34: $3b
    inc bc                                        ; $5f35: $03
    dec a                                         ; $5f36: $3d
    dec h                                         ; $5f37: $25
    dec sp                                        ; $5f38: $3b
    inc bc                                        ; $5f39: $03
    dec a                                         ; $5f3a: $3d
    dec h                                         ; $5f3b: $25
    dec sp                                        ; $5f3c: $3b
    inc bc                                        ; $5f3d: $03
    dec a                                         ; $5f3e: $3d
    dec h                                         ; $5f3f: $25
    dec sp                                        ; $5f40: $3b
    inc bc                                        ; $5f41: $03
    dec a                                         ; $5f42: $3d
    dec h                                         ; $5f43: $25
    dec sp                                        ; $5f44: $3b
    inc bc                                        ; $5f45: $03
    dec a                                         ; $5f46: $3d
    dec h                                         ; $5f47: $25
    dec sp                                        ; $5f48: $3b
    inc bc                                        ; $5f49: $03
    dec a                                         ; $5f4a: $3d
    dec h                                         ; $5f4b: $25
    dec sp                                        ; $5f4c: $3b
    cp $03                                        ; $5f4d: $fe $03
    dec a                                         ; $5f4f: $3d
    sub [hl]                                      ; $5f50: $96
    rst $38                                       ; $5f51: $ff
    adc a                                         ; $5f52: $8f
    rst $38                                       ; $5f53: $ff
    sub [hl]                                      ; $5f54: $96
    rst $38                                       ; $5f55: $ff
    adc a                                         ; $5f56: $8f
    rst $38                                       ; $5f57: $ff
    sub [hl]                                      ; $5f58: $96
    rst $38                                       ; $5f59: $ff
    adc a                                         ; $5f5a: $8f
    rst $38                                       ; $5f5b: $ff
    sub [hl]                                      ; $5f5c: $96
    rst $38                                       ; $5f5d: $ff
    adc a                                         ; $5f5e: $8f
    rst $38                                       ; $5f5f: $ff
    sub [hl]                                      ; $5f60: $96
    rst $38                                       ; $5f61: $ff
    adc a                                         ; $5f62: $8f
    rst $38                                       ; $5f63: $ff
    sub [hl]                                      ; $5f64: $96
    rst $38                                       ; $5f65: $ff
    adc a                                         ; $5f66: $8f
    rst $38                                       ; $5f67: $ff
    sub [hl]                                      ; $5f68: $96
    rst $38                                       ; $5f69: $ff
    adc a                                         ; $5f6a: $8f
    rst $38                                       ; $5f6b: $ff
    sub [hl]                                      ; $5f6c: $96
    rst $38                                       ; $5f6d: $ff
    adc a                                         ; $5f6e: $8f
    rst $38                                       ; $5f6f: $ff
    dec h                                         ; $5f70: $25
    dec sp                                        ; $5f71: $3b
    inc bc                                        ; $5f72: $03
    dec a                                         ; $5f73: $3d
    dec h                                         ; $5f74: $25
    dec sp                                        ; $5f75: $3b
    inc bc                                        ; $5f76: $03
    dec a                                         ; $5f77: $3d
    dec h                                         ; $5f78: $25
    dec sp                                        ; $5f79: $3b
    inc bc                                        ; $5f7a: $03
    dec a                                         ; $5f7b: $3d
    dec h                                         ; $5f7c: $25
    dec sp                                        ; $5f7d: $3b
    inc bc                                        ; $5f7e: $03
    dec a                                         ; $5f7f: $3d
    dec h                                         ; $5f80: $25
    dec sp                                        ; $5f81: $3b
    inc bc                                        ; $5f82: $03
    dec a                                         ; $5f83: $3d
    dec h                                         ; $5f84: $25
    dec sp                                        ; $5f85: $3b
    inc bc                                        ; $5f86: $03
    dec a                                         ; $5f87: $3d
    dec h                                         ; $5f88: $25
    dec sp                                        ; $5f89: $3b
    inc bc                                        ; $5f8a: $03
    dec a                                         ; $5f8b: $3d
    dec h                                         ; $5f8c: $25
    dec sp                                        ; $5f8d: $3b
    inc bc                                        ; $5f8e: $03
    dec a                                         ; $5f8f: $3d
    sub [hl]                                      ; $5f90: $96
    rst $38                                       ; $5f91: $ff
    adc a                                         ; $5f92: $8f
    rst $38                                       ; $5f93: $ff
    sub [hl]                                      ; $5f94: $96
    rst $38                                       ; $5f95: $ff
    adc a                                         ; $5f96: $8f
    rst $38                                       ; $5f97: $ff
    sub [hl]                                      ; $5f98: $96
    rst $38                                       ; $5f99: $ff
    adc a                                         ; $5f9a: $8f
    rst $38                                       ; $5f9b: $ff
    sub [hl]                                      ; $5f9c: $96
    rst $38                                       ; $5f9d: $ff
    adc a                                         ; $5f9e: $8f
    rst $38                                       ; $5f9f: $ff
    sub [hl]                                      ; $5fa0: $96
    rst $38                                       ; $5fa1: $ff
    adc a                                         ; $5fa2: $8f
    rst $38                                       ; $5fa3: $ff
    sub [hl]                                      ; $5fa4: $96
    rst $38                                       ; $5fa5: $ff
    adc a                                         ; $5fa6: $8f
    rst $38                                       ; $5fa7: $ff
    sub [hl]                                      ; $5fa8: $96
    rst $38                                       ; $5fa9: $ff
    adc a                                         ; $5faa: $8f
    rst $38                                       ; $5fab: $ff
    sub [hl]                                      ; $5fac: $96
    rst $38                                       ; $5fad: $ff
    adc a                                         ; $5fae: $8f
    rst $38                                       ; $5faf: $ff
    dec h                                         ; $5fb0: $25
    dec sp                                        ; $5fb1: $3b
    inc bc                                        ; $5fb2: $03
    dec a                                         ; $5fb3: $3d
    dec h                                         ; $5fb4: $25
    dec sp                                        ; $5fb5: $3b
    inc bc                                        ; $5fb6: $03
    dec a                                         ; $5fb7: $3d
    dec h                                         ; $5fb8: $25
    dec sp                                        ; $5fb9: $3b
    inc bc                                        ; $5fba: $03
    dec a                                         ; $5fbb: $3d
    dec h                                         ; $5fbc: $25
    dec sp                                        ; $5fbd: $3b
    inc bc                                        ; $5fbe: $03
    dec a                                         ; $5fbf: $3d
    dec h                                         ; $5fc0: $25
    dec sp                                        ; $5fc1: $3b
    inc bc                                        ; $5fc2: $03
    dec a                                         ; $5fc3: $3d
    dec h                                         ; $5fc4: $25
    dec sp                                        ; $5fc5: $3b
    inc bc                                        ; $5fc6: $03
    dec a                                         ; $5fc7: $3d
    dec h                                         ; $5fc8: $25
    dec sp                                        ; $5fc9: $3b
    inc bc                                        ; $5fca: $03
    dec a                                         ; $5fcb: $3d
    add [hl]                                      ; $5fcc: $86
    dec h                                         ; $5fcd: $25
    dec sp                                        ; $5fce: $3b
    inc bc                                        ; $5fcf: $03
    dec a                                         ; $5fd0: $3d
    sub [hl]                                      ; $5fd1: $96
    rst $38                                       ; $5fd2: $ff
    ld e, $00                                     ; $5fd3: $1e $00
    add d                                         ; $5fd5: $82
    dec h                                         ; $5fd6: $25
    dec sp                                        ; $5fd7: $3b
    ld e, $00                                     ; $5fd8: $1e $00
    rst $38                                       ; $5fda: $ff
    add hl, de                                    ; $5fdb: $19
    ld a, [bc]                                    ; $5fdc: $0a
    ld sp, hl                                     ; $5fdd: $f9
    ld [$d7c6], sp                                ; $5fde: $08 $c6 $d7
    ret nz                                        ; $5fe1: $c0

    ld a, [$00c0]                                 ; $5fe2: $fa $c0 $00
    ret nc                                        ; $5fe5: $d0

    ld a, [$00d0]                                 ; $5fe6: $fa $d0 $00
    ldh [$fa], a                                  ; $5fe9: $e0 $fa
    ldh [rP1], a                                  ; $5feb: $e0 $00
    ldh a, [$fa]                                  ; $5fed: $f0 $fa
    ldh a, [rP1]                                  ; $5fef: $f0 $00
    nop                                           ; $5ff1: $00
    ld a, [$0000]                                 ; $5ff2: $fa $00 $00
    cp $c5                                        ; $5ff5: $fe $c5
    cp a                                          ; $5ff7: $bf
    and e                                         ; $5ff8: $a3
    rst $18                                       ; $5ff9: $df
    push bc                                       ; $5ffa: $c5
    cp a                                          ; $5ffb: $bf
    and e                                         ; $5ffc: $a3
    rst $18                                       ; $5ffd: $df
    push bc                                       ; $5ffe: $c5
    cp a                                          ; $5fff: $bf
    and e                                         ; $6000: $a3
    rst $18                                       ; $6001: $df
    push bc                                       ; $6002: $c5
    cp a                                          ; $6003: $bf
    and e                                         ; $6004: $a3
    rst $18                                       ; $6005: $df
    push bc                                       ; $6006: $c5
    cp a                                          ; $6007: $bf
    and e                                         ; $6008: $a3
    rst $18                                       ; $6009: $df
    push bc                                       ; $600a: $c5
    cp a                                          ; $600b: $bf
    and e                                         ; $600c: $a3
    rst $18                                       ; $600d: $df
    push bc                                       ; $600e: $c5
    cp a                                          ; $600f: $bf
    and e                                         ; $6010: $a3
    rst $18                                       ; $6011: $df
    push bc                                       ; $6012: $c5
    cp a                                          ; $6013: $bf
    and e                                         ; $6014: $a3
    rst $18                                       ; $6015: $df
    add hl, hl                                    ; $6016: $29
    ccf                                           ; $6017: $3f
    ld sp, $293f                                  ; $6018: $31 $3f $29
    ccf                                           ; $601b: $3f
    ld sp, $293f                                  ; $601c: $31 $3f $29
    ccf                                           ; $601f: $3f
    ld sp, $293f                                  ; $6020: $31 $3f $29
    ccf                                           ; $6023: $3f
    ld sp, $293f                                  ; $6024: $31 $3f $29
    ccf                                           ; $6027: $3f
    ld sp, $293f                                  ; $6028: $31 $3f $29
    ccf                                           ; $602b: $3f
    ld sp, $293f                                  ; $602c: $31 $3f $29
    ccf                                           ; $602f: $3f
    ld sp, $293f                                  ; $6030: $31 $3f $29
    ccf                                           ; $6033: $3f
    ld sp, $c53f                                  ; $6034: $31 $3f $c5
    cp a                                          ; $6037: $bf
    and e                                         ; $6038: $a3
    rst $18                                       ; $6039: $df
    push bc                                       ; $603a: $c5
    cp a                                          ; $603b: $bf
    and e                                         ; $603c: $a3
    rst $18                                       ; $603d: $df
    push bc                                       ; $603e: $c5
    cp a                                          ; $603f: $bf
    and e                                         ; $6040: $a3
    rst $18                                       ; $6041: $df
    push bc                                       ; $6042: $c5
    cp a                                          ; $6043: $bf
    and e                                         ; $6044: $a3
    rst $18                                       ; $6045: $df
    push bc                                       ; $6046: $c5
    cp a                                          ; $6047: $bf
    and e                                         ; $6048: $a3
    rst $18                                       ; $6049: $df
    push bc                                       ; $604a: $c5
    cp a                                          ; $604b: $bf
    and e                                         ; $604c: $a3
    rst $18                                       ; $604d: $df
    push bc                                       ; $604e: $c5
    cp a                                          ; $604f: $bf
    and e                                         ; $6050: $a3
    rst $18                                       ; $6051: $df
    push bc                                       ; $6052: $c5
    cp a                                          ; $6053: $bf
    and e                                         ; $6054: $a3
    rst $18                                       ; $6055: $df
    add hl, hl                                    ; $6056: $29
    ccf                                           ; $6057: $3f
    ld sp, $293f                                  ; $6058: $31 $3f $29
    ccf                                           ; $605b: $3f
    ld sp, $293f                                  ; $605c: $31 $3f $29
    ccf                                           ; $605f: $3f
    ld sp, $293f                                  ; $6060: $31 $3f $29
    ccf                                           ; $6063: $3f
    ld sp, $293f                                  ; $6064: $31 $3f $29
    ccf                                           ; $6067: $3f
    ld sp, $293f                                  ; $6068: $31 $3f $29
    ccf                                           ; $606b: $3f
    ld sp, $293f                                  ; $606c: $31 $3f $29
    ccf                                           ; $606f: $3f
    ld sp, $293f                                  ; $6070: $31 $3f $29
    ccf                                           ; $6073: $3f
    cp $31                                        ; $6074: $fe $31
    ccf                                           ; $6076: $3f
    push bc                                       ; $6077: $c5
    cp a                                          ; $6078: $bf
    and e                                         ; $6079: $a3
    rst $18                                       ; $607a: $df
    push bc                                       ; $607b: $c5
    cp a                                          ; $607c: $bf
    and e                                         ; $607d: $a3
    rst $18                                       ; $607e: $df
    push bc                                       ; $607f: $c5
    cp a                                          ; $6080: $bf
    and e                                         ; $6081: $a3
    rst $18                                       ; $6082: $df
    push bc                                       ; $6083: $c5
    cp a                                          ; $6084: $bf
    and e                                         ; $6085: $a3
    rst $18                                       ; $6086: $df
    push bc                                       ; $6087: $c5
    cp a                                          ; $6088: $bf
    and e                                         ; $6089: $a3
    rst $18                                       ; $608a: $df
    push bc                                       ; $608b: $c5
    cp a                                          ; $608c: $bf
    and e                                         ; $608d: $a3
    rst $18                                       ; $608e: $df
    push bc                                       ; $608f: $c5
    cp a                                          ; $6090: $bf
    and e                                         ; $6091: $a3
    rst $18                                       ; $6092: $df
    push bc                                       ; $6093: $c5
    cp a                                          ; $6094: $bf
    and e                                         ; $6095: $a3
    rst $18                                       ; $6096: $df
    add hl, hl                                    ; $6097: $29
    ccf                                           ; $6098: $3f
    ld sp, $293f                                  ; $6099: $31 $3f $29
    ccf                                           ; $609c: $3f
    ld sp, $293f                                  ; $609d: $31 $3f $29
    ccf                                           ; $60a0: $3f
    ld sp, $293f                                  ; $60a1: $31 $3f $29
    ccf                                           ; $60a4: $3f
    ld sp, $293f                                  ; $60a5: $31 $3f $29
    ccf                                           ; $60a8: $3f
    ld sp, $293f                                  ; $60a9: $31 $3f $29
    ccf                                           ; $60ac: $3f
    ld sp, $293f                                  ; $60ad: $31 $3f $29
    ccf                                           ; $60b0: $3f
    ld sp, $293f                                  ; $60b1: $31 $3f $29
    ccf                                           ; $60b4: $3f
    ld sp, $c53f                                  ; $60b5: $31 $3f $c5
    cp a                                          ; $60b8: $bf
    and e                                         ; $60b9: $a3
    rst $18                                       ; $60ba: $df
    push bc                                       ; $60bb: $c5
    cp a                                          ; $60bc: $bf
    and e                                         ; $60bd: $a3
    rst $18                                       ; $60be: $df
    push bc                                       ; $60bf: $c5
    cp a                                          ; $60c0: $bf
    and e                                         ; $60c1: $a3
    rst $18                                       ; $60c2: $df
    push bc                                       ; $60c3: $c5
    cp a                                          ; $60c4: $bf
    and e                                         ; $60c5: $a3
    rst $18                                       ; $60c6: $df
    push bc                                       ; $60c7: $c5
    cp a                                          ; $60c8: $bf
    and e                                         ; $60c9: $a3
    rst $18                                       ; $60ca: $df
    push bc                                       ; $60cb: $c5
    cp a                                          ; $60cc: $bf
    and e                                         ; $60cd: $a3
    rst $18                                       ; $60ce: $df
    push bc                                       ; $60cf: $c5
    cp a                                          ; $60d0: $bf
    and e                                         ; $60d1: $a3
    rst $18                                       ; $60d2: $df
    push bc                                       ; $60d3: $c5
    cp a                                          ; $60d4: $bf
    and e                                         ; $60d5: $a3
    rst $18                                       ; $60d6: $df
    add hl, hl                                    ; $60d7: $29
    ccf                                           ; $60d8: $3f
    ld sp, $293f                                  ; $60d9: $31 $3f $29
    ccf                                           ; $60dc: $3f
    ld sp, $293f                                  ; $60dd: $31 $3f $29
    ccf                                           ; $60e0: $3f
    ld sp, $293f                                  ; $60e1: $31 $3f $29
    ccf                                           ; $60e4: $3f
    ld sp, $293f                                  ; $60e5: $31 $3f $29
    ccf                                           ; $60e8: $3f
    ld sp, $293f                                  ; $60e9: $31 $3f $29
    ccf                                           ; $60ec: $3f
    ld sp, $293f                                  ; $60ed: $31 $3f $29
    ccf                                           ; $60f0: $3f
    ld sp, $863f                                  ; $60f1: $31 $3f $86
    add hl, hl                                    ; $60f4: $29
    ccf                                           ; $60f5: $3f
    ld sp, $c53f                                  ; $60f6: $31 $3f $c5
    cp a                                          ; $60f9: $bf
    ld e, $00                                     ; $60fa: $1e $00
    add d                                         ; $60fc: $82
    add hl, hl                                    ; $60fd: $29
    ccf                                           ; $60fe: $3f
    ld e, $00                                     ; $60ff: $1e $00
    rst $38                                       ; $6101: $ff
    add hl, de                                    ; $6102: $19
    ld a, [bc]                                    ; $6103: $0a
    ld sp, hl                                     ; $6104: $f9
    ld [$d7c6], sp                                ; $6105: $08 $c6 $d7
    ret nz                                        ; $6108: $c0

    ld a, [$00c0]                                 ; $6109: $fa $c0 $00
    ret nc                                        ; $610c: $d0

    ld a, [$00d0]                                 ; $610d: $fa $d0 $00
    ldh [$fa], a                                  ; $6110: $e0 $fa
    ldh [rP1], a                                  ; $6112: $e0 $00
    ldh a, [$fa]                                  ; $6114: $f0 $fa
    ldh a, [rP1]                                  ; $6116: $f0 $00
    nop                                           ; $6118: $00
    ld a, [$0000]                                 ; $6119: $fa $00 $00
    cp $cb                                        ; $611c: $fe $cb
    db $f4                                        ; $611e: $f4
    add a                                         ; $611f: $87
    ld hl, sp-$35                                 ; $6120: $f8 $cb
    db $f4                                        ; $6122: $f4
    add a                                         ; $6123: $87
    ld hl, sp-$35                                 ; $6124: $f8 $cb
    db $f4                                        ; $6126: $f4
    add a                                         ; $6127: $87
    ld hl, sp-$35                                 ; $6128: $f8 $cb
    db $f4                                        ; $612a: $f4
    add a                                         ; $612b: $87
    ld hl, sp-$35                                 ; $612c: $f8 $cb
    db $f4                                        ; $612e: $f4
    add a                                         ; $612f: $87
    ld hl, sp-$35                                 ; $6130: $f8 $cb
    db $f4                                        ; $6132: $f4
    add a                                         ; $6133: $87
    ld hl, sp-$35                                 ; $6134: $f8 $cb
    db $f4                                        ; $6136: $f4
    add a                                         ; $6137: $87
    ld hl, sp-$35                                 ; $6138: $f8 $cb
    db $f4                                        ; $613a: $f4
    add a                                         ; $613b: $87
    ld hl, sp+$13                                 ; $613c: $f8 $13
    cpl                                           ; $613e: $2f
    ld hl, $131f                                  ; $613f: $21 $1f $13
    cpl                                           ; $6142: $2f
    ld hl, $131f                                  ; $6143: $21 $1f $13
    cpl                                           ; $6146: $2f
    ld hl, $131f                                  ; $6147: $21 $1f $13
    cpl                                           ; $614a: $2f
    ld hl, $131f                                  ; $614b: $21 $1f $13
    cpl                                           ; $614e: $2f
    ld hl, $131f                                  ; $614f: $21 $1f $13
    cpl                                           ; $6152: $2f
    ld hl, $131f                                  ; $6153: $21 $1f $13
    cpl                                           ; $6156: $2f
    ld hl, $131f                                  ; $6157: $21 $1f $13
    cpl                                           ; $615a: $2f
    ld hl, $cb1f                                  ; $615b: $21 $1f $cb
    db $f4                                        ; $615e: $f4
    add a                                         ; $615f: $87
    ld hl, sp-$35                                 ; $6160: $f8 $cb
    db $f4                                        ; $6162: $f4
    add a                                         ; $6163: $87
    ld hl, sp-$35                                 ; $6164: $f8 $cb
    db $f4                                        ; $6166: $f4
    add a                                         ; $6167: $87
    ld hl, sp-$35                                 ; $6168: $f8 $cb
    db $f4                                        ; $616a: $f4
    add a                                         ; $616b: $87
    ld hl, sp-$35                                 ; $616c: $f8 $cb
    db $f4                                        ; $616e: $f4
    add a                                         ; $616f: $87
    ld hl, sp-$35                                 ; $6170: $f8 $cb
    db $f4                                        ; $6172: $f4
    add a                                         ; $6173: $87
    ld hl, sp-$35                                 ; $6174: $f8 $cb
    db $f4                                        ; $6176: $f4
    add a                                         ; $6177: $87
    ld hl, sp-$35                                 ; $6178: $f8 $cb
    db $f4                                        ; $617a: $f4
    add a                                         ; $617b: $87
    ld hl, sp+$13                                 ; $617c: $f8 $13
    cpl                                           ; $617e: $2f
    ld hl, $131f                                  ; $617f: $21 $1f $13
    cpl                                           ; $6182: $2f
    ld hl, $131f                                  ; $6183: $21 $1f $13
    cpl                                           ; $6186: $2f
    ld hl, $131f                                  ; $6187: $21 $1f $13
    cpl                                           ; $618a: $2f
    ld hl, $131f                                  ; $618b: $21 $1f $13
    cpl                                           ; $618e: $2f
    ld hl, $131f                                  ; $618f: $21 $1f $13
    cpl                                           ; $6192: $2f
    ld hl, $131f                                  ; $6193: $21 $1f $13
    cpl                                           ; $6196: $2f
    ld hl, $131f                                  ; $6197: $21 $1f $13
    cpl                                           ; $619a: $2f
    cp $21                                        ; $619b: $fe $21
    rra                                           ; $619d: $1f
    set 6, h                                      ; $619e: $cb $f4
    add a                                         ; $61a0: $87
    ld hl, sp-$35                                 ; $61a1: $f8 $cb
    db $f4                                        ; $61a3: $f4
    add a                                         ; $61a4: $87
    ld hl, sp-$35                                 ; $61a5: $f8 $cb
    db $f4                                        ; $61a7: $f4
    add a                                         ; $61a8: $87
    ld hl, sp-$35                                 ; $61a9: $f8 $cb
    db $f4                                        ; $61ab: $f4
    add a                                         ; $61ac: $87
    ld hl, sp-$35                                 ; $61ad: $f8 $cb
    db $f4                                        ; $61af: $f4
    add a                                         ; $61b0: $87
    ld hl, sp-$35                                 ; $61b1: $f8 $cb
    db $f4                                        ; $61b3: $f4
    add a                                         ; $61b4: $87
    ld hl, sp-$35                                 ; $61b5: $f8 $cb
    db $f4                                        ; $61b7: $f4
    add a                                         ; $61b8: $87
    ld hl, sp-$35                                 ; $61b9: $f8 $cb
    db $f4                                        ; $61bb: $f4
    add a                                         ; $61bc: $87
    ld hl, sp+$13                                 ; $61bd: $f8 $13
    cpl                                           ; $61bf: $2f
    ld hl, $131f                                  ; $61c0: $21 $1f $13
    cpl                                           ; $61c3: $2f
    ld hl, $131f                                  ; $61c4: $21 $1f $13
    cpl                                           ; $61c7: $2f
    ld hl, $131f                                  ; $61c8: $21 $1f $13
    cpl                                           ; $61cb: $2f
    ld hl, $131f                                  ; $61cc: $21 $1f $13
    cpl                                           ; $61cf: $2f
    ld hl, $131f                                  ; $61d0: $21 $1f $13
    cpl                                           ; $61d3: $2f
    ld hl, $131f                                  ; $61d4: $21 $1f $13
    cpl                                           ; $61d7: $2f
    ld hl, $131f                                  ; $61d8: $21 $1f $13
    cpl                                           ; $61db: $2f
    ld hl, $cb1f                                  ; $61dc: $21 $1f $cb
    db $f4                                        ; $61df: $f4
    add a                                         ; $61e0: $87
    ld hl, sp-$35                                 ; $61e1: $f8 $cb
    db $f4                                        ; $61e3: $f4
    add a                                         ; $61e4: $87
    ld hl, sp-$35                                 ; $61e5: $f8 $cb
    db $f4                                        ; $61e7: $f4
    add a                                         ; $61e8: $87
    ld hl, sp-$35                                 ; $61e9: $f8 $cb
    db $f4                                        ; $61eb: $f4
    add a                                         ; $61ec: $87
    ld hl, sp-$35                                 ; $61ed: $f8 $cb
    db $f4                                        ; $61ef: $f4
    add a                                         ; $61f0: $87
    ld hl, sp-$35                                 ; $61f1: $f8 $cb
    db $f4                                        ; $61f3: $f4
    add a                                         ; $61f4: $87
    ld hl, sp-$35                                 ; $61f5: $f8 $cb
    db $f4                                        ; $61f7: $f4
    add a                                         ; $61f8: $87
    ld hl, sp-$35                                 ; $61f9: $f8 $cb
    db $f4                                        ; $61fb: $f4
    add a                                         ; $61fc: $87
    ld hl, sp+$13                                 ; $61fd: $f8 $13
    cpl                                           ; $61ff: $2f
    ld hl, $131f                                  ; $6200: $21 $1f $13
    cpl                                           ; $6203: $2f
    ld hl, $131f                                  ; $6204: $21 $1f $13
    cpl                                           ; $6207: $2f
    ld hl, $131f                                  ; $6208: $21 $1f $13
    cpl                                           ; $620b: $2f
    ld hl, $131f                                  ; $620c: $21 $1f $13
    cpl                                           ; $620f: $2f
    ld hl, $131f                                  ; $6210: $21 $1f $13
    cpl                                           ; $6213: $2f
    ld hl, $131f                                  ; $6214: $21 $1f $13
    cpl                                           ; $6217: $2f
    ld hl, $861f                                  ; $6218: $21 $1f $86
    inc de                                        ; $621b: $13
    cpl                                           ; $621c: $2f
    ld hl, $cb1f                                  ; $621d: $21 $1f $cb
    db $f4                                        ; $6220: $f4
    ld e, $00                                     ; $6221: $1e $00
    add d                                         ; $6223: $82
    inc de                                        ; $6224: $13
    cpl                                           ; $6225: $2f
    ld e, $00                                     ; $6226: $1e $00
    rst $38                                       ; $6228: $ff
    add hl, de                                    ; $6229: $19

Call_0f5_622a:
    ld a, [bc]                                    ; $622a: $0a
    ld sp, hl                                     ; $622b: $f9
    ld [$d7c6], sp                                ; $622c: $08 $c6 $d7
    ret nz                                        ; $622f: $c0

    ld a, [$00c0]                                 ; $6230: $fa $c0 $00
    ret nc                                        ; $6233: $d0

    ld a, [$00d0]                                 ; $6234: $fa $d0 $00
    ldh [$fa], a                                  ; $6237: $e0 $fa
    ldh [rP1], a                                  ; $6239: $e0 $00
    ldh a, [$fa]                                  ; $623b: $f0 $fa
    ldh a, [rP1]                                  ; $623d: $f0 $00
    nop                                           ; $623f: $00
    ld a, [$0000]                                 ; $6240: $fa $00 $00
    cp $d2                                        ; $6243: $fe $d2
    db $fd                                        ; $6245: $fd
    and c                                         ; $6246: $a1
    cp $d2                                        ; $6247: $fe $d2
    db $fd                                        ; $6249: $fd
    and c                                         ; $624a: $a1
    cp $d2                                        ; $624b: $fe $d2
    db $fd                                        ; $624d: $fd
    and c                                         ; $624e: $a1
    cp $d2                                        ; $624f: $fe $d2
    db $fd                                        ; $6251: $fd
    and c                                         ; $6252: $a1
    cp $d2                                        ; $6253: $fe $d2
    db $fd                                        ; $6255: $fd
    and c                                         ; $6256: $a1
    cp $d2                                        ; $6257: $fe $d2
    db $fd                                        ; $6259: $fd
    and c                                         ; $625a: $a1
    cp $d2                                        ; $625b: $fe $d2
    db $fd                                        ; $625d: $fd
    and c                                         ; $625e: $a1
    cp $d2                                        ; $625f: $fe $d2
    db $fd                                        ; $6261: $fd
    and c                                         ; $6262: $a1
    cp $35                                        ; $6263: $fe $35
    dec bc                                        ; $6265: $0b
    add hl, sp                                    ; $6266: $39
    rlca                                          ; $6267: $07
    dec [hl]                                      ; $6268: $35
    dec bc                                        ; $6269: $0b
    add hl, sp                                    ; $626a: $39
    rlca                                          ; $626b: $07
    dec [hl]                                      ; $626c: $35
    dec bc                                        ; $626d: $0b
    add hl, sp                                    ; $626e: $39
    rlca                                          ; $626f: $07
    dec [hl]                                      ; $6270: $35
    dec bc                                        ; $6271: $0b
    add hl, sp                                    ; $6272: $39
    rlca                                          ; $6273: $07
    dec [hl]                                      ; $6274: $35
    dec bc                                        ; $6275: $0b
    add hl, sp                                    ; $6276: $39
    rlca                                          ; $6277: $07
    dec [hl]                                      ; $6278: $35
    dec bc                                        ; $6279: $0b
    add hl, sp                                    ; $627a: $39
    rlca                                          ; $627b: $07
    dec [hl]                                      ; $627c: $35
    dec bc                                        ; $627d: $0b
    add hl, sp                                    ; $627e: $39
    rlca                                          ; $627f: $07
    dec [hl]                                      ; $6280: $35
    dec bc                                        ; $6281: $0b
    add hl, sp                                    ; $6282: $39
    rlca                                          ; $6283: $07
    jp nc, $a1fd                                  ; $6284: $d2 $fd $a1

    cp $d2                                        ; $6287: $fe $d2
    db $fd                                        ; $6289: $fd
    and c                                         ; $628a: $a1
    cp $d2                                        ; $628b: $fe $d2
    db $fd                                        ; $628d: $fd
    and c                                         ; $628e: $a1
    cp $d2                                        ; $628f: $fe $d2
    db $fd                                        ; $6291: $fd
    and c                                         ; $6292: $a1
    cp $d2                                        ; $6293: $fe $d2
    db $fd                                        ; $6295: $fd
    and c                                         ; $6296: $a1
    cp $d2                                        ; $6297: $fe $d2
    db $fd                                        ; $6299: $fd
    and c                                         ; $629a: $a1
    cp $d2                                        ; $629b: $fe $d2
    db $fd                                        ; $629d: $fd
    and c                                         ; $629e: $a1
    cp $d2                                        ; $629f: $fe $d2
    db $fd                                        ; $62a1: $fd
    and c                                         ; $62a2: $a1
    cp $35                                        ; $62a3: $fe $35
    dec bc                                        ; $62a5: $0b
    add hl, sp                                    ; $62a6: $39
    rlca                                          ; $62a7: $07
    dec [hl]                                      ; $62a8: $35
    dec bc                                        ; $62a9: $0b
    add hl, sp                                    ; $62aa: $39
    rlca                                          ; $62ab: $07
    dec [hl]                                      ; $62ac: $35
    dec bc                                        ; $62ad: $0b
    add hl, sp                                    ; $62ae: $39
    rlca                                          ; $62af: $07
    dec [hl]                                      ; $62b0: $35
    dec bc                                        ; $62b1: $0b
    add hl, sp                                    ; $62b2: $39
    rlca                                          ; $62b3: $07
    dec [hl]                                      ; $62b4: $35
    dec bc                                        ; $62b5: $0b
    add hl, sp                                    ; $62b6: $39
    rlca                                          ; $62b7: $07
    dec [hl]                                      ; $62b8: $35
    dec bc                                        ; $62b9: $0b
    add hl, sp                                    ; $62ba: $39
    rlca                                          ; $62bb: $07
    dec [hl]                                      ; $62bc: $35
    dec bc                                        ; $62bd: $0b
    add hl, sp                                    ; $62be: $39
    rlca                                          ; $62bf: $07
    dec [hl]                                      ; $62c0: $35
    dec bc                                        ; $62c1: $0b
    cp $39                                        ; $62c2: $fe $39
    rlca                                          ; $62c4: $07
    jp nc, $a1fd                                  ; $62c5: $d2 $fd $a1

    cp $d2                                        ; $62c8: $fe $d2
    db $fd                                        ; $62ca: $fd
    and c                                         ; $62cb: $a1
    cp $d2                                        ; $62cc: $fe $d2
    db $fd                                        ; $62ce: $fd
    and c                                         ; $62cf: $a1
    cp $d2                                        ; $62d0: $fe $d2
    db $fd                                        ; $62d2: $fd
    and c                                         ; $62d3: $a1
    cp $d2                                        ; $62d4: $fe $d2
    db $fd                                        ; $62d6: $fd
    and c                                         ; $62d7: $a1
    cp $d2                                        ; $62d8: $fe $d2
    db $fd                                        ; $62da: $fd
    and c                                         ; $62db: $a1
    cp $d2                                        ; $62dc: $fe $d2
    db $fd                                        ; $62de: $fd
    and c                                         ; $62df: $a1
    cp $d2                                        ; $62e0: $fe $d2
    db $fd                                        ; $62e2: $fd
    and c                                         ; $62e3: $a1
    cp $35                                        ; $62e4: $fe $35
    dec bc                                        ; $62e6: $0b
    add hl, sp                                    ; $62e7: $39
    rlca                                          ; $62e8: $07
    dec [hl]                                      ; $62e9: $35
    dec bc                                        ; $62ea: $0b
    add hl, sp                                    ; $62eb: $39
    rlca                                          ; $62ec: $07
    dec [hl]                                      ; $62ed: $35
    dec bc                                        ; $62ee: $0b
    add hl, sp                                    ; $62ef: $39
    rlca                                          ; $62f0: $07
    dec [hl]                                      ; $62f1: $35
    dec bc                                        ; $62f2: $0b
    add hl, sp                                    ; $62f3: $39

jr_0f5_62f4:
    rlca                                          ; $62f4: $07
    dec [hl]                                      ; $62f5: $35
    dec bc                                        ; $62f6: $0b
    add hl, sp                                    ; $62f7: $39
    rlca                                          ; $62f8: $07
    dec [hl]                                      ; $62f9: $35
    dec bc                                        ; $62fa: $0b
    add hl, sp                                    ; $62fb: $39
    rlca                                          ; $62fc: $07
    dec [hl]                                      ; $62fd: $35
    dec bc                                        ; $62fe: $0b
    add hl, sp                                    ; $62ff: $39
    rlca                                          ; $6300: $07
    dec [hl]                                      ; $6301: $35
    dec bc                                        ; $6302: $0b
    add hl, sp                                    ; $6303: $39
    rlca                                          ; $6304: $07
    jp nc, $a1fd                                  ; $6305: $d2 $fd $a1

    cp $d2                                        ; $6308: $fe $d2
    db $fd                                        ; $630a: $fd
    and c                                         ; $630b: $a1
    cp $d2                                        ; $630c: $fe $d2
    db $fd                                        ; $630e: $fd
    and c                                         ; $630f: $a1
    cp $d2                                        ; $6310: $fe $d2
    db $fd                                        ; $6312: $fd
    and c                                         ; $6313: $a1
    cp $d2                                        ; $6314: $fe $d2
    db $fd                                        ; $6316: $fd
    and c                                         ; $6317: $a1
    cp $d2                                        ; $6318: $fe $d2
    db $fd                                        ; $631a: $fd
    and c                                         ; $631b: $a1
    cp $d2                                        ; $631c: $fe $d2
    db $fd                                        ; $631e: $fd
    and c                                         ; $631f: $a1
    cp $d2                                        ; $6320: $fe $d2
    db $fd                                        ; $6322: $fd
    and c                                         ; $6323: $a1
    cp $35                                        ; $6324: $fe $35
    dec bc                                        ; $6326: $0b
    add hl, sp                                    ; $6327: $39
    rlca                                          ; $6328: $07
    dec [hl]                                      ; $6329: $35
    dec bc                                        ; $632a: $0b
    add hl, sp                                    ; $632b: $39
    rlca                                          ; $632c: $07
    dec [hl]                                      ; $632d: $35
    dec bc                                        ; $632e: $0b
    add hl, sp                                    ; $632f: $39
    rlca                                          ; $6330: $07
    dec [hl]                                      ; $6331: $35
    dec bc                                        ; $6332: $0b
    add hl, sp                                    ; $6333: $39
    rlca                                          ; $6334: $07
    dec [hl]                                      ; $6335: $35
    dec bc                                        ; $6336: $0b
    add hl, sp                                    ; $6337: $39
    rlca                                          ; $6338: $07
    dec [hl]                                      ; $6339: $35
    dec bc                                        ; $633a: $0b
    add hl, sp                                    ; $633b: $39
    rlca                                          ; $633c: $07
    dec [hl]                                      ; $633d: $35
    dec bc                                        ; $633e: $0b

Jump_0f5_633f:
    add hl, sp                                    ; $633f: $39
    rlca                                          ; $6340: $07
    add [hl]                                      ; $6341: $86
    dec [hl]                                      ; $6342: $35
    dec bc                                        ; $6343: $0b
    add hl, sp                                    ; $6344: $39
    rlca                                          ; $6345: $07
    jp nc, Jump_000_1efd                          ; $6346: $d2 $fd $1e

    nop                                           ; $6349: $00
    add d                                         ; $634a: $82
    dec [hl]                                      ; $634b: $35
    dec bc                                        ; $634c: $0b
    ld e, $00                                     ; $634d: $1e $00
    rst $38                                       ; $634f: $ff
    dec d                                         ; $6350: $15
    ld [$08f9], sp                                ; $6351: $08 $f9 $08
    add $d7                                       ; $6354: $c6 $d7
    call nz, $c4fa                                ; $6356: $c4 $fa $c4
    nop                                           ; $6359: $00
    call nc, $d4fa                                ; $635a: $d4 $fa $d4
    nop                                           ; $635d: $00
    db $e4                                        ; $635e: $e4
    ld a, [$00e4]                                 ; $635f: $fa $e4 $00
    db $f4                                        ; $6362: $f4
    ld a, [$00f4]                                 ; $6363: $fa $f4 $00
    cp $80                                        ; $6366: $fe $80
    add d                                         ; $6368: $82
    nop                                           ; $6369: $00
    jr nz, jr_0f5_62f4                            ; $636a: $20 $88

    xor d                                         ; $636c: $aa
    adc d                                         ; $636d: $8a
    xor d                                         ; $636e: $aa
    adc b                                         ; $636f: $88
    db $eb                                        ; $6370: $eb
    adc d                                         ; $6371: $8a
    xor d                                         ; $6372: $aa
    sbc b                                         ; $6373: $98
    ei                                            ; $6374: $fb
    jp c, $bcff                                   ; $6375: $da $ff $bc

    rst $38                                       ; $6378: $ff
    jp c, $bcff                                   ; $6379: $da $ff $bc

    rst $38                                       ; $637c: $ff
    jp c, $bcff                                   ; $637d: $da $ff $bc

    rst $38                                       ; $6380: $ff
    jp c, $bcff                                   ; $6381: $da $ff $bc

    rst $38                                       ; $6384: $ff
    jp c, Jump_000_00ff                           ; $6385: $da $ff $00

    db $10                                        ; $6388: $10
    dec b                                         ; $6389: $05
    ld bc, $3004                                  ; $638a: $01 $04 $30
    dec d                                         ; $638d: $15
    ld hl, $3105                                  ; $638e: $21 $05 $31
    rla                                           ; $6391: $17
    ld hl, $3105                                  ; $6392: $21 $05 $31
    rla                                           ; $6395: $17
    add hl, hl                                    ; $6396: $29
    rrca                                          ; $6397: $0f
    ld sp, $2917                                  ; $6398: $31 $17 $29
    rrca                                          ; $639b: $0f
    ld sp, $2917                                  ; $639c: $31 $17 $29
    rrca                                          ; $639f: $0f
    ld sp, $2917                                  ; $63a0: $31 $17 $29
    rrca                                          ; $63a3: $0f
    ld sp, $2917                                  ; $63a4: $31 $17 $29
    cp h                                          ; $63a7: $bc
    rst $38                                       ; $63a8: $ff
    jp c, $bcff                                   ; $63a9: $da $ff $bc

    rst $38                                       ; $63ac: $ff
    jp c, $bcff                                   ; $63ad: $da $ff $bc

    rst $38                                       ; $63b0: $ff
    jp c, $bcff                                   ; $63b1: $da $ff $bc

    rst $38                                       ; $63b4: $ff
    jp c, $bcff                                   ; $63b5: $da $ff $bc

    rst $38                                       ; $63b8: $ff
    jp c, $bcff                                   ; $63b9: $da $ff $bc

    rst $38                                       ; $63bc: $ff
    jp c, $bcff                                   ; $63bd: $da $ff $bc

    rst $38                                       ; $63c0: $ff
    jp c, $bcff                                   ; $63c1: $da $ff $bc

    rst $38                                       ; $63c4: $ff
    jp c, $0fff                                   ; $63c5: $da $ff $0f

    ld sp, $2917                                  ; $63c8: $31 $17 $29
    rrca                                          ; $63cb: $0f
    ld sp, $2917                                  ; $63cc: $31 $17 $29
    rrca                                          ; $63cf: $0f
    ld sp, $2917                                  ; $63d0: $31 $17 $29
    rrca                                          ; $63d3: $0f
    ld sp, $2917                                  ; $63d4: $31 $17 $29
    rrca                                          ; $63d7: $0f
    ld sp, $2917                                  ; $63d8: $31 $17 $29
    rrca                                          ; $63db: $0f
    ld sp, $2917                                  ; $63dc: $31 $17 $29
    rrca                                          ; $63df: $0f
    ld sp, $2917                                  ; $63e0: $31 $17 $29
    rrca                                          ; $63e3: $0f
    ld sp, $17dc                                  ; $63e4: $31 $dc $17
    add hl, hl                                    ; $63e7: $29
    cp h                                          ; $63e8: $bc
    rst $38                                       ; $63e9: $ff
    jp c, $bcff                                   ; $63ea: $da $ff $bc

    rst $38                                       ; $63ed: $ff
    jp c, $bcff                                   ; $63ee: $da $ff $bc

    rst $38                                       ; $63f1: $ff
    jp c, $bcff                                   ; $63f2: $da $ff $bc

    rst $38                                       ; $63f5: $ff
    jp c, $bcff                                   ; $63f6: $da $ff $bc

    rst $38                                       ; $63f9: $ff

jr_0f5_63fa:
    jp c, $bcff                                   ; $63fa: $da $ff $bc

    rst $38                                       ; $63fd: $ff
    jp c, $bcff                                   ; $63fe: $da $ff $bc

    rst $38                                       ; $6401: $ff
    jp c, $bcff                                   ; $6402: $da $ff $bc

    rst $38                                       ; $6405: $ff
    jp c, $0fff                                   ; $6406: $da $ff $0f

    ld sp, $2917                                  ; $6409: $31 $17 $29
    rrca                                          ; $640c: $0f
    ld sp, $2917                                  ; $640d: $31 $17 $29
    rrca                                          ; $6410: $0f
    ld sp, $2917                                  ; $6411: $31 $17 $29
    rrca                                          ; $6414: $0f
    ld sp, $2917                                  ; $6415: $31 $17 $29
    rrca                                          ; $6418: $0f
    ld sp, $2917                                  ; $6419: $31 $17 $29
    rrca                                          ; $641c: $0f
    ld sp, $2917                                  ; $641d: $31 $17 $29
    rrca                                          ; $6420: $0f
    ld sp, $2917                                  ; $6421: $31 $17 $29
    rrca                                          ; $6424: $0f
    ld sp, $2917                                  ; $6425: $31 $17 $29
    cp h                                          ; $6428: $bc
    rst $38                                       ; $6429: $ff
    jp c, $bcff                                   ; $642a: $da $ff $bc

    rst $38                                       ; $642d: $ff
    jp c, $bcff                                   ; $642e: $da $ff $bc

    rst $38                                       ; $6431: $ff
    jp c, $bcff                                   ; $6432: $da $ff $bc

    rst $38                                       ; $6435: $ff
    jp c, $bcff                                   ; $6436: $da $ff $bc

    rst $38                                       ; $6439: $ff
    jp c, $bcff                                   ; $643a: $da $ff $bc

    rst $38                                       ; $643d: $ff
    jp c, $bcff                                   ; $643e: $da $ff $bc

    rst $38                                       ; $6441: $ff
    ld b, $00                                     ; $6442: $06 $00
    sbc d                                         ; $6444: $9a
    rrca                                          ; $6445: $0f
    ld sp, $2917                                  ; $6446: $31 $17 $29
    rrca                                          ; $6449: $0f
    ld sp, $2917                                  ; $644a: $31 $17 $29
    rrca                                          ; $644d: $0f
    ld sp, $2917                                  ; $644e: $31 $17 $29
    rrca                                          ; $6451: $0f
    ld sp, $2917                                  ; $6452: $31 $17 $29
    rrca                                          ; $6455: $0f
    ld sp, $2917                                  ; $6456: $31 $17 $29
    rrca                                          ; $6459: $0f
    ld sp, $2917                                  ; $645a: $31 $17 $29
    rrca                                          ; $645d: $0f
    ld sp, $0006                                  ; $645e: $31 $06 $00
    rst $38                                       ; $6461: $ff
    ld de, $f906                                  ; $6462: $11 $06 $f9
    ld [$d7c6], sp                                ; $6465: $08 $c6 $d7
    ldh [$fa], a                                  ; $6468: $e0 $fa
    ldh [rP1], a                                  ; $646a: $e0 $00
    ldh a, [$fa]                                  ; $646c: $f0 $fa
    ldh a, [rP1]                                  ; $646e: $f0 $00
    nop                                           ; $6470: $00
    ld a, [$0000]                                 ; $6471: $fa $00 $00
    and b                                         ; $6474: $a0
    nop                                           ; $6475: $00
    ld b, b                                       ; $6476: $40
    nop                                           ; $6477: $00
    jr z, jr_0f5_63fa                             ; $6478: $28 $80

    and b                                         ; $647a: $a0

Call_0f5_647b:
    add b                                         ; $647b: $80
    ldh [$82], a                                  ; $647c: $e0 $82
    ld [$aa82], a                                 ; $647e: $ea $82 $aa
    add d                                         ; $6481: $82
    ei                                            ; $6482: $fb
    add e                                         ; $6483: $83
    db $eb                                        ; $6484: $eb
    add [hl]                                      ; $6485: $86
    rst $38                                       ; $6486: $ff
    adc a                                         ; $6487: $8f
    rst $38                                       ; $6488: $ff
    sub [hl]                                      ; $6489: $96
    rst $38                                       ; $648a: $ff
    adc a                                         ; $648b: $8f
    rst $38                                       ; $648c: $ff
    sub [hl]                                      ; $648d: $96
    rst $38                                       ; $648e: $ff
    adc a                                         ; $648f: $8f
    rst $38                                       ; $6490: $ff
    sub [hl]                                      ; $6491: $96
    rst $38                                       ; $6492: $ff
    adc a                                         ; $6493: $8f
    rst $38                                       ; $6494: $ff
    ld [bc], a                                    ; $6495: $02
    jr nz, @+$04                                  ; $6496: $20 $02

    ld bc, $23de                                  ; $6498: $01 $de $23
    add hl, hl                                    ; $649b: $29
    ld bc, $2309                                  ; $649c: $01 $09 $23
    add hl, hl                                    ; $649f: $29
    ld bc, $232b                                  ; $64a0: $01 $2b $23
    dec l                                         ; $64a3: $2d
    dec b                                         ; $64a4: $05
    dec hl                                        ; $64a5: $2b
    inc hl                                        ; $64a6: $23
    dec a                                         ; $64a7: $3d
    dec b                                         ; $64a8: $05
    dec sp                                        ; $64a9: $3b
    inc hl                                        ; $64aa: $23
    dec a                                         ; $64ab: $3d
    dec b                                         ; $64ac: $05
    dec sp                                        ; $64ad: $3b
    inc hl                                        ; $64ae: $23
    dec a                                         ; $64af: $3d
    dec b                                         ; $64b0: $05
    dec sp                                        ; $64b1: $3b
    inc hl                                        ; $64b2: $23
    dec a                                         ; $64b3: $3d
    dec b                                         ; $64b4: $05
    dec sp                                        ; $64b5: $3b
    sub [hl]                                      ; $64b6: $96
    rst $38                                       ; $64b7: $ff
    adc a                                         ; $64b8: $8f
    rst $38                                       ; $64b9: $ff
    sub [hl]                                      ; $64ba: $96
    rst $38                                       ; $64bb: $ff
    adc a                                         ; $64bc: $8f
    rst $38                                       ; $64bd: $ff
    sub [hl]                                      ; $64be: $96
    rst $38                                       ; $64bf: $ff
    adc a                                         ; $64c0: $8f
    rst $38                                       ; $64c1: $ff
    sub [hl]                                      ; $64c2: $96
    rst $38                                       ; $64c3: $ff
    adc a                                         ; $64c4: $8f
    rst $38                                       ; $64c5: $ff
    sub [hl]                                      ; $64c6: $96
    rst $38                                       ; $64c7: $ff
    adc a                                         ; $64c8: $8f
    rst $38                                       ; $64c9: $ff
    sub [hl]                                      ; $64ca: $96
    rst $38                                       ; $64cb: $ff
    adc a                                         ; $64cc: $8f
    rst $38                                       ; $64cd: $ff
    sub [hl]                                      ; $64ce: $96
    rst $38                                       ; $64cf: $ff
    adc a                                         ; $64d0: $8f
    rst $38                                       ; $64d1: $ff
    sub [hl]                                      ; $64d2: $96
    rst $38                                       ; $64d3: $ff
    adc a                                         ; $64d4: $8f
    rst $38                                       ; $64d5: $ff
    inc hl                                        ; $64d6: $23
    dec a                                         ; $64d7: $3d
    dec b                                         ; $64d8: $05
    dec sp                                        ; $64d9: $3b
    inc hl                                        ; $64da: $23
    dec a                                         ; $64db: $3d
    dec b                                         ; $64dc: $05
    dec sp                                        ; $64dd: $3b
    inc hl                                        ; $64de: $23
    dec a                                         ; $64df: $3d
    dec b                                         ; $64e0: $05
    dec sp                                        ; $64e1: $3b
    inc hl                                        ; $64e2: $23
    dec a                                         ; $64e3: $3d
    dec b                                         ; $64e4: $05
    dec sp                                        ; $64e5: $3b
    inc hl                                        ; $64e6: $23
    dec a                                         ; $64e7: $3d
    dec b                                         ; $64e8: $05
    dec sp                                        ; $64e9: $3b
    inc hl                                        ; $64ea: $23
    dec a                                         ; $64eb: $3d
    dec b                                         ; $64ec: $05
    dec sp                                        ; $64ed: $3b
    inc hl                                        ; $64ee: $23
    dec a                                         ; $64ef: $3d
    dec b                                         ; $64f0: $05
    dec sp                                        ; $64f1: $3b
    inc hl                                        ; $64f2: $23
    dec a                                         ; $64f3: $3d
    dec b                                         ; $64f4: $05
    dec sp                                        ; $64f5: $3b
    sub [hl]                                      ; $64f6: $96
    rst $38                                       ; $64f7: $ff
    ld e, $00                                     ; $64f8: $1e $00
    add d                                         ; $64fa: $82
    inc hl                                        ; $64fb: $23
    dec a                                         ; $64fc: $3d
    ld e, $00                                     ; $64fd: $1e $00
    rst $38                                       ; $64ff: $ff
    add hl, bc                                    ; $6500: $09
    ld [bc], a                                    ; $6501: $02
    ld sp, hl                                     ; $6502: $f9
    ld [$d7c6], sp                                ; $6503: $08 $c6 $d7
    push af                                       ; $6506: $f5
    ld a, [$00f5]                                 ; $6507: $fa $f5 $00
    ld [bc], a                                    ; $650a: $02
    add b                                         ; $650b: $80
    sub [hl]                                      ; $650c: $96
    jr nz, jr_0f5_6511                            ; $650d: $20 $02

    add d                                         ; $650f: $82
    xor d                                         ; $6510: $aa

jr_0f5_6511:
    and c                                         ; $6511: $a1
    adc e                                         ; $6512: $8b
    jp $a1af                                      ; $6513: $c3 $af $a1


    adc e                                         ; $6516: $8b
    jp $a5bb                                      ; $6517: $c3 $bb $a5


    rst $18                                       ; $651a: $df
    jp $a5bf                                      ; $651b: $c3 $bf $a5


    rst $18                                       ; $651e: $df
    jp $a5bf                                      ; $651f: $c3 $bf $a5


    rst $18                                       ; $6522: $df
    ld [$9800], sp                                ; $6523: $08 $00 $98
    ld bc, $0005                                  ; $6526: $01 $05 $00
    db $10                                        ; $6529: $10
    ld de, $0115                                  ; $652a: $11 $15 $01
    dec d                                         ; $652d: $15
    ld de, $011d                                  ; $652e: $11 $1d $01
    rla                                           ; $6531: $17
    ld sp, $293f                                  ; $6532: $31 $3f $29
    ccf                                           ; $6535: $3f
    ld sp, $293f                                  ; $6536: $31 $3f $29
    ccf                                           ; $6539: $3f
    ld sp, $293f                                  ; $653a: $31 $3f $29
    ccf                                           ; $653d: $3f
    ld [$ff00], sp                                ; $653e: $08 $00 $ff
    ld de, $fa06                                  ; $6541: $11 $06 $fa
    rlca                                          ; $6544: $07
    db $fd                                        ; $6545: $fd
    ld a, [bc]                                    ; $6546: $0a
    nop                                           ; $6547: $00
    rst $30                                       ; $6548: $f7
    nop                                           ; $6549: $00
    rst $38                                       ; $654a: $ff
    nop                                           ; $654b: $00
    inc bc                                        ; $654c: $03
    db $10                                        ; $654d: $10
    rst $30                                       ; $654e: $f7
    db $10                                        ; $654f: $10
    rst $38                                       ; $6550: $ff
    db $10                                        ; $6551: $10
    inc bc                                        ; $6552: $03
    ret nz                                        ; $6553: $c0

    dec de                                        ; $6554: $1b
    rra                                           ; $6555: $1f
    rla                                           ; $6556: $17
    rra                                           ; $6557: $1f
    dec de                                        ; $6558: $1b
    rra                                           ; $6559: $1f
    rla                                           ; $655a: $17
    rra                                           ; $655b: $1f
    dec de                                        ; $655c: $1b
    rra                                           ; $655d: $1f
    rla                                           ; $655e: $17
    rra                                           ; $655f: $1f
    dec de                                        ; $6560: $1b
    rra                                           ; $6561: $1f
    rla                                           ; $6562: $17
    rra                                           ; $6563: $1f
    dec de                                        ; $6564: $1b
    rra                                           ; $6565: $1f
    rla                                           ; $6566: $17
    rra                                           ; $6567: $1f
    dec sp                                        ; $6568: $3b
    ccf                                           ; $6569: $3f
    rla                                           ; $656a: $17
    ccf                                           ; $656b: $3f
    ld e, e                                       ; $656c: $5b
    ld a, a                                       ; $656d: $7f
    rst $10                                       ; $656e: $d7
    cp a                                          ; $656f: $bf
    adc e                                         ; $6570: $8b
    cp a                                          ; $6571: $bf
    ld [hl], a                                    ; $6572: $77
    ld e, a                                       ; $6573: $5f
    ld c, e                                       ; $6574: $4b
    db $f4                                        ; $6575: $f4
    add a                                         ; $6576: $87
    ld hl, sp+$4b                                 ; $6577: $f8 $4b
    db $f4                                        ; $6579: $f4
    add a                                         ; $657a: $87
    ld hl, sp+$4b                                 ; $657b: $f8 $4b
    db $f4                                        ; $657d: $f4
    add a                                         ; $657e: $87
    ld hl, sp+$4b                                 ; $657f: $f8 $4b
    db $f4                                        ; $6581: $f4
    add a                                         ; $6582: $87
    ld hl, sp+$4b                                 ; $6583: $f8 $4b
    db $f4                                        ; $6585: $f4
    add a                                         ; $6586: $87
    ld hl, sp+$4b                                 ; $6587: $f8 $4b
    db $f4                                        ; $6589: $f4
    add a                                         ; $658a: $87
    ld hl, sp+$4b                                 ; $658b: $f8 $4b
    db $f4                                        ; $658d: $f4
    add a                                         ; $658e: $87
    ld hl, sp+$4b                                 ; $658f: $f8 $4b
    db $f4                                        ; $6591: $f4
    add [hl]                                      ; $6592: $86
    ld sp, hl                                     ; $6593: $f9
    dec d                                         ; $6594: $15
    ld [$0c93], sp                                ; $6595: $08 $93 $0c
    ld a, [bc]                                    ; $6598: $0a
    ld c, $0d                                     ; $6599: $0e $0d
    dec bc                                        ; $659b: $0b
    inc c                                         ; $659c: $0c
    ld a, [bc]                                    ; $659d: $0a
    ld [bc], a                                    ; $659e: $02
    ld c, $05                                     ; $659f: $0e $05
    rrca                                          ; $65a1: $0f
    and c                                         ; $65a2: $a1
    rst $38                                       ; $65a3: $ff
    ld d, h                                       ; $65a4: $54
    ld c, a                                       ; $65a5: $4f
    add hl, hl                                    ; $65a6: $29
    ld a, [hl-]                                   ; $65a7: $3a
    inc bc                                        ; $65a8: $03
    ld [bc], a                                    ; $65a9: $02
    jr jr_0f5_65ac                                ; $65aa: $18 $00

jr_0f5_65ac:
    adc b                                         ; $65ac: $88
    ld [bc], a                                    ; $65ad: $02
    rst $38                                       ; $65ae: $ff
    sub c                                         ; $65af: $91
    rst $38                                       ; $65b0: $ff
    dec h                                         ; $65b1: $25
    ei                                            ; $65b2: $fb
    sub $5e                                       ; $65b3: $d6 $5e
    jr jr_0f5_65b7                                ; $65b5: $18 $00

jr_0f5_65b7:
    add h                                         ; $65b7: $84
    dec bc                                        ; $65b8: $0b
    dec b                                         ; $65b9: $05
    ld [bc], a                                    ; $65ba: $02
    ld a, [bc]                                    ; $65bb: $0a
    ld [bc], a                                    ; $65bc: $02
    inc c                                         ; $65bd: $0c
    ld a, [de]                                    ; $65be: $1a
    nop                                           ; $65bf: $00
    rst $38                                       ; $65c0: $ff
    dec d                                         ; $65c1: $15
    ld [$07fa], sp                                ; $65c2: $08 $fa $07
    db $fd                                        ; $65c5: $fd
    ld a, [bc]                                    ; $65c6: $0a
    inc bc                                        ; $65c7: $03
    ldh a, [rP1]                                  ; $65c8: $f0 $00
    ld hl, sp+$00                                 ; $65ca: $f8 $00
    nop                                           ; $65cc: $00
    inc bc                                        ; $65cd: $03
    ld [$0a09], sp                                ; $65ce: $08 $09 $0a
    db $10                                        ; $65d1: $10
    di                                            ; $65d2: $f3
    db $10                                        ; $65d3: $10
    ei                                            ; $65d4: $fb
    db $10                                        ; $65d5: $10
    ld [bc], a                                    ; $65d6: $02
    cp $00                                        ; $65d7: $fe $00
    ld [bc], a                                    ; $65d9: $02
    nop                                           ; $65da: $00
    ld b, $04                                     ; $65db: $06 $04
    nop                                           ; $65dd: $00
    dec b                                         ; $65de: $05
    daa                                           ; $65df: $27
    ld h, $37                                     ; $65e0: $26 $37
    dec a                                         ; $65e2: $3d
    ld l, $13                                     ; $65e3: $2e $13
    inc a                                         ; $65e5: $3c
    ld [hl-], a                                   ; $65e6: $32
    ld a, l                                       ; $65e7: $7d
    halt                                          ; $65e8: $76
    ld a, c                                       ; $65e9: $79
    inc d                                         ; $65ea: $14
    ld e, e                                       ; $65eb: $5b
    xor [hl]                                      ; $65ec: $ae
    pop af                                        ; $65ed: $f1
    halt                                          ; $65ee: $76
    ld sp, hl                                     ; $65ef: $f9
    inc [hl]                                      ; $65f0: $34
    ld a, e                                       ; $65f1: $7b
    cpl                                           ; $65f2: $2f
    ld [hl], b                                    ; $65f3: $70
    inc de                                        ; $65f4: $13
    inc a                                         ; $65f5: $3c
    dec e                                         ; $65f6: $1d
    ld a, $25                                     ; $65f7: $3e $25
    ccf                                           ; $65f9: $3f
    inc hl                                        ; $65fa: $23
    ccf                                           ; $65fb: $3f
    dec h                                         ; $65fc: $25
    ccf                                           ; $65fd: $3f
    inc hl                                        ; $65fe: $23
    ld a, a                                       ; $65ff: $7f
    dec h                                         ; $6600: $25
    ld a, a                                       ; $6601: $7f
    db $e3                                        ; $6602: $e3
    rst $38                                       ; $6603: $ff
    ld h, l                                       ; $6604: $65
    rst $38                                       ; $6605: $ff
    inc hl                                        ; $6606: $23
    rst $38                                       ; $6607: $ff
    and l                                         ; $6608: $a5
    ld a, a                                       ; $6609: $7f
    ld h, e                                       ; $660a: $63
    rst $38                                       ; $660b: $ff
    ld h, l                                       ; $660c: $65
    rst $38                                       ; $660d: $ff
    db $e3                                        ; $660e: $e3
    rst $38                                       ; $660f: $ff
    ld h, l                                       ; $6610: $65
    rst $38                                       ; $6611: $ff
    db $e3                                        ; $6612: $e3
    rst $38                                       ; $6613: $ff
    ld h, l                                       ; $6614: $65
    rst $38                                       ; $6615: $ff
    and e                                         ; $6616: $a3
    rst $38                                       ; $6617: $ff
    and l                                         ; $6618: $a5
    ei                                            ; $6619: $fb
    jp $a5fd                                      ; $661a: $c3 $fd $a5


    ei                                            ; $661d: $fb
    jp $a5fd                                      ; $661e: $c3 $fd $a5


    ei                                            ; $6621: $fb
    jp $a5fd                                      ; $6622: $c3 $fd $a5


    ei                                            ; $6625: $fb
    jp $a5fd                                      ; $6626: $c3 $fd $a5


    ei                                            ; $6629: $fb
    jp $a5fd                                      ; $662a: $c3 $fd $a5


    ei                                            ; $662d: $fb
    jp $a5fd                                      ; $662e: $c3 $fd $a5


    ei                                            ; $6631: $fb
    jp $a5fd                                      ; $6632: $c3 $fd $a5


    ei                                            ; $6635: $fb
    jp Jump_000_00fd                              ; $6636: $c3 $fd $00


    ld c, b                                       ; $6639: $48
    nop                                           ; $663a: $00
    ret c                                         ; $663b: $d8

    ldh [$d8], a                                  ; $663c: $e0 $d8
    and b                                         ; $663e: $a0
    pop af                                        ; $663f: $f1
    jr @-$03                                      ; $6640: $18 $fb

    ld l, h                                       ; $6642: $6c
    sbc a                                         ; $6643: $9f
    sub d                                         ; $6644: $92
    xor $97                                       ; $6645: $ee $97
    db $eb                                        ; $6647: $eb
    set 6, a                                      ; $6648: $cb $f7
    sbc d                                         ; $664a: $9a
    and $cd                                       ; $664b: $e6 $cd
    di                                            ; $664d: $f3
    cp c                                          ; $664e: $b9
    rst $00                                       ; $664f: $c7
    ld e, e                                       ; $6650: $5b
    rst $20                                       ; $6651: $e7
    cp e                                          ; $6652: $bb
    rst $00                                       ; $6653: $c7
    halt                                          ; $6654: $76
    adc a                                         ; $6655: $8f
    adc e                                         ; $6656: $8b
    xor $1f                                       ; $6657: $ee $1f
    nop                                           ; $6659: $00
    ld [bc], a                                    ; $665a: $02
    nop                                           ; $665b: $00
    ld [bc], a                                    ; $665c: $02
    ld bc, $0103                                  ; $665d: $01 $03 $01
    inc bc                                        ; $6660: $03
    nop                                           ; $6661: $00
    ld [bc], a                                    ; $6662: $02
    ld [bc], a                                    ; $6663: $02
    add l                                         ; $6664: $85
    inc bc                                        ; $6665: $03
    nop                                           ; $6666: $00

jr_0f5_6667:
    ld [bc], a                                    ; $6667: $02
    nop                                           ; $6668: $00
    ld [bc], a                                    ; $6669: $02
    inc b                                         ; $666a: $04
    nop                                           ; $666b: $00
    adc b                                         ; $666c: $88
    jr nc, jr_0f5_6667                            ; $666d: $30 $f8

    ldh [$f0], a                                  ; $666f: $e0 $f0
    add b                                         ; $6671: $80
    ldh [rP1], a                                  ; $6672: $e0 $00
    add b                                         ; $6674: $80
    inc b                                         ; $6675: $04
    nop                                           ; $6676: $00
    sub b                                         ; $6677: $90
    inc bc                                        ; $6678: $03
    rlca                                          ; $6679: $07
    ld bc, $0607                                  ; $667a: $01 $07 $06
    ld bc, $f867                                  ; $667d: $01 $67 $f8
    ld a, [hl-]                                   ; $6680: $3a
    ld a, l                                       ; $6681: $7d
    rrca                                          ; $6682: $0f
    ccf                                           ; $6683: $3f
    inc bc                                        ; $6684: $03
    rrca                                          ; $6685: $0f
    nop                                           ; $6686: $00
    inc bc                                        ; $6687: $03
    stop                                          ; $6688: $10 $00
    add c                                         ; $668a: $81
    db $ed                                        ; $668b: $ed
    inc bc                                        ; $668c: $03
    rst $38                                       ; $668d: $ff
    add l                                         ; $668e: $85
    dec [hl]                                      ; $668f: $35
    rst $38                                       ; $6690: $ff
    push bc                                       ; $6691: $c5
    ld a, [hl-]                                   ; $6692: $3a
    rst $38                                       ; $6693: $ff
    ld [bc], a                                    ; $6694: $02
    nop                                           ; $6695: $00
    add d                                         ; $6696: $82
    rst $38                                       ; $6697: $ff
    ei                                            ; $6698: $fb
    inc bc                                        ; $6699: $03
    rst $38                                       ; $669a: $ff
    add d                                         ; $669b: $82
    nop                                           ; $669c: $00
    rst $38                                       ; $669d: $ff
    ld c, $00                                     ; $669e: $0e $00
    adc c                                         ; $66a0: $89
    inc e                                         ; $66a1: $1c
    ld a, h                                       ; $66a2: $7c
    ld a, b                                       ; $66a3: $78
    ld a, h                                       ; $66a4: $7c
    ld c, b                                       ; $66a5: $48
    ld [hl], h                                    ; $66a6: $74
    dec a                                         ; $66a7: $3d
    ld b, d                                       ; $66a8: $42
    ld [hl], c                                    ; $66a9: $71
    ld [bc], a                                    ; $66aa: $02
    rrca                                          ; $66ab: $0f
    add a                                         ; $66ac: $87
    ld a, a                                       ; $66ad: $7f
    ld a, $7f                                     ; $66ae: $3e $7f
    ld [hl], b                                    ; $66b0: $70
    ld a, [hl]                                    ; $66b1: $7e
    nop                                           ; $66b2: $00
    ld [hl], b                                    ; $66b3: $70
    ld c, $00                                     ; $66b4: $0e $00
    rst $38                                       ; $66b6: $ff
    dec d                                         ; $66b7: $15
    ld [$07fa], sp                                ; $66b8: $08 $fa $07
    db $fd                                        ; $66bb: $fd
    ld a, [bc]                                    ; $66bc: $0a
    inc bc                                        ; $66bd: $03
    ldh a, [rP1]                                  ; $66be: $f0 $00
    ld hl, sp+$00                                 ; $66c0: $f8 $00
    nop                                           ; $66c2: $00
    inc bc                                        ; $66c3: $03
    ld [$0a0a], sp                                ; $66c4: $08 $0a $0a
    db $10                                        ; $66c7: $10
    di                                            ; $66c8: $f3
    db $10                                        ; $66c9: $10
    ei                                            ; $66ca: $fb
    db $10                                        ; $66cb: $10
    ld [bc], a                                    ; $66cc: $02
    cp $00                                        ; $66cd: $fe $00
    ld [bc], a                                    ; $66cf: $02
    nop                                           ; $66d0: $00
    ld [bc], a                                    ; $66d1: $02
    ld a, [bc]                                    ; $66d2: $0a
    add hl, bc                                    ; $66d3: $09
    dec b                                         ; $66d4: $05
    rrca                                          ; $66d5: $0f
    ld d, $17                                     ; $66d6: $16 $17
    dec a                                         ; $66d8: $3d
    ld l, $13                                     ; $66d9: $2e $13
    inc a                                         ; $66db: $3c
    ld [hl], $79                                  ; $66dc: $36 $79
    ld l, [hl]                                    ; $66de: $6e
    ld [hl], c                                    ; $66df: $71
    inc d                                         ; $66e0: $14
    ld e, e                                       ; $66e1: $5b
    xor [hl]                                      ; $66e2: $ae
    pop af                                        ; $66e3: $f1
    ld h, [hl]                                    ; $66e4: $66
    ld sp, hl                                     ; $66e5: $f9
    inc [hl]                                      ; $66e6: $34
    ld a, e                                       ; $66e7: $7b
    cpl                                           ; $66e8: $2f
    ld [hl], b                                    ; $66e9: $70
    ld [de], a                                    ; $66ea: $12
    dec a                                         ; $66eb: $3d
    add hl, de                                    ; $66ec: $19
    ld a, $31                                     ; $66ed: $3e $31
    cpl                                           ; $66ef: $2f
    jr z, jr_0f5_6729                             ; $66f0: $28 $37

    ld sp, $282f                                  ; $66f2: $31 $2f $28
    ld [hl], a                                    ; $66f5: $77
    ld sp, $e86f                                  ; $66f6: $31 $6f $e8
    rst $30                                       ; $66f9: $f7
    pop af                                        ; $66fa: $f1
    rst $28                                       ; $66fb: $ef
    ld l, b                                       ; $66fc: $68
    rst $30                                       ; $66fd: $f7
    ld sp, $68ef                                  ; $66fe: $31 $ef $68
    rst $30                                       ; $6701: $f7
    ld [hl], c                                    ; $6702: $71
    rst $28                                       ; $6703: $ef
    add sp, -$09                                  ; $6704: $e8 $f7
    ld [hl], c                                    ; $6706: $71
    rst $28                                       ; $6707: $ef
    add sp, -$09                                  ; $6708: $e8 $f7
    ld [hl], c                                    ; $670a: $71
    rst $28                                       ; $670b: $ef
    xor b                                         ; $670c: $a8
    rst $30                                       ; $670d: $f7
    ld l, c                                       ; $670e: $69
    rst $38                                       ; $670f: $ff
    pop af                                        ; $6710: $f1
    rst $38                                       ; $6711: $ff
    ld l, c                                       ; $6712: $69
    rst $38                                       ; $6713: $ff
    pop af                                        ; $6714: $f1
    rst $38                                       ; $6715: $ff
    ld l, c                                       ; $6716: $69
    rst $38                                       ; $6717: $ff
    pop af                                        ; $6718: $f1
    rst $38                                       ; $6719: $ff
    ld l, c                                       ; $671a: $69
    rst $38                                       ; $671b: $ff
    pop af                                        ; $671c: $f1
    rst $38                                       ; $671d: $ff
    ld l, c                                       ; $671e: $69
    rst $38                                       ; $671f: $ff
    pop af                                        ; $6720: $f1
    rst $38                                       ; $6721: $ff
    ld l, c                                       ; $6722: $69
    rst $38                                       ; $6723: $ff
    pop af                                        ; $6724: $f1
    rst $38                                       ; $6725: $ff
    ld l, c                                       ; $6726: $69
    rst $38                                       ; $6727: $ff
    pop af                                        ; $6728: $f1

jr_0f5_6729:
    rst $38                                       ; $6729: $ff
    ld l, c                                       ; $672a: $69
    rst $38                                       ; $672b: $ff
    pop af                                        ; $672c: $f1
    rst $38                                       ; $672d: $ff
    nop                                           ; $672e: $00
    ld b, b                                       ; $672f: $40
    nop                                           ; $6730: $00
    ret nc                                        ; $6731: $d0

    ldh a, [$d8]                                  ; $6732: $f0 $d8
    or b                                          ; $6734: $b0
    db $f4                                        ; $6735: $f4
    sbc b                                         ; $6736: $98
    db $fd                                        ; $6737: $fd
    dec l                                         ; $6738: $2d
    rst $18                                       ; $6739: $df
    sub d                                         ; $673a: $92
    xor $97                                       ; $673b: $ee $97
    db $eb                                        ; $673d: $eb
    set 6, a                                      ; $673e: $cb $f7
    sbc d                                         ; $6740: $9a
    and $cd                                       ; $6741: $e6 $cd
    di                                            ; $6743: $f3
    sbc c                                         ; $6744: $99
    rst $20                                       ; $6745: $e7
    ld d, e                                       ; $6746: $53
    rst $28                                       ; $6747: $ef
    cp e                                          ; $6748: $bb
    rst $00                                       ; $6749: $c7
    ld h, [hl]                                    ; $674a: $66
    sbc a                                         ; $674b: $9f
    add e                                         ; $674c: $83
    xor $1f                                       ; $674d: $ee $1f
    nop                                           ; $674f: $00
    ld [bc], a                                    ; $6750: $02
    ld bc, $0284                                  ; $6751: $01 $84 $02
    ld bc, $0003                                  ; $6754: $01 $03 $00
    ld [bc], a                                    ; $6757: $02
    ld [bc], a                                    ; $6758: $02
    add l                                         ; $6759: $85
    inc bc                                        ; $675a: $03
    nop                                           ; $675b: $00

jr_0f5_675c:
    ld [bc], a                                    ; $675c: $02
    nop                                           ; $675d: $00
    ld [bc], a                                    ; $675e: $02
    inc b                                         ; $675f: $04
    nop                                           ; $6760: $00
    add [hl]                                      ; $6761: $86
    jr nc, jr_0f5_675c                            ; $6762: $30 $f8

    ldh [$f0], a                                  ; $6764: $e0 $f0
    add b                                         ; $6766: $80
    ldh [rSC], a                                  ; $6767: $e0 $02
    add b                                         ; $6769: $80
    ld b, $00                                     ; $676a: $06 $00
    sub b                                         ; $676c: $90
    inc bc                                        ; $676d: $03
    rlca                                          ; $676e: $07
    ld bc, $0607                                  ; $676f: $01 $07 $06
    ld bc, $f867                                  ; $6772: $01 $67 $f8
    ld a, [hl-]                                   ; $6775: $3a
    ld a, l                                       ; $6776: $7d
    ld c, $3f                                     ; $6777: $0e $3f
    inc bc                                        ; $6779: $03
    rrca                                          ; $677a: $0f
    ld [bc], a                                    ; $677b: $02
    inc bc                                        ; $677c: $03
    stop                                          ; $677d: $10 $00
    add c                                         ; $677f: $81
    rlc e                                         ; $6780: $cb $03
    rst $38                                       ; $6782: $ff
    adc c                                         ; $6783: $89
    cp l                                          ; $6784: $bd
    rst $38                                       ; $6785: $ff
    push bc                                       ; $6786: $c5
    ld a, [hl-]                                   ; $6787: $3a
    cp a                                          ; $6788: $bf
    ld b, b                                       ; $6789: $40
    dec b                                         ; $678a: $05
    ld a, [$03c8]                                 ; $678b: $fa $c8 $03
    rst $38                                       ; $678e: $ff
    add d                                         ; $678f: $82
    ld [bc], a                                    ; $6790: $02
    rst $38                                       ; $6791: $ff
    ld c, $00                                     ; $6792: $0e $00
    sub d                                         ; $6794: $92
    inc a                                         ; $6795: $3c
    ld a, h                                       ; $6796: $7c
    ld a, b                                       ; $6797: $78
    ld a, h                                       ; $6798: $7c
    ld c, b                                       ; $6799: $48
    ld [hl], h                                    ; $679a: $74
    dec a                                         ; $679b: $3d
    ld b, d                                       ; $679c: $42
    ld [hl], c                                    ; $679d: $71
    rrca                                          ; $679e: $0f
    ld c, a                                       ; $679f: $4f
    ccf                                           ; $67a0: $3f
    ld a, $7f                                     ; $67a1: $3e $7f
    ld [hl], b                                    ; $67a3: $70
    ld a, [hl]                                    ; $67a4: $7e
    nop                                           ; $67a5: $00
    ld [hl], b                                    ; $67a6: $70
    ld c, $00                                     ; $67a7: $0e $00
    rst $38                                       ; $67a9: $ff
    dec d                                         ; $67aa: $15
    ld [$07fa], sp                                ; $67ab: $08 $fa $07
    db $fd                                        ; $67ae: $fd
    ld a, [bc]                                    ; $67af: $0a
    inc bc                                        ; $67b0: $03
    rst $28                                       ; $67b1: $ef
    nop                                           ; $67b2: $00
    rst $30                                       ; $67b3: $f7
    nop                                           ; $67b4: $00
    rst $38                                       ; $67b5: $ff
    nop                                           ; $67b6: $00
    rlca                                          ; $67b7: $07
    ld b, $0b                                     ; $67b8: $06 $0b
    db $10                                        ; $67ba: $10
    di                                            ; $67bb: $f3
    db $10                                        ; $67bc: $10
    ei                                            ; $67bd: $fb
    db $10                                        ; $67be: $10
    inc bc                                        ; $67bf: $03
    ldh [rP1], a                                  ; $67c0: $e0 $00
    ld bc, $0300                                  ; $67c2: $01 $00 $03
    rlca                                          ; $67c5: $07
    dec c                                         ; $67c6: $0d
    ld c, $1f                                     ; $67c7: $0e $1f
    inc de                                        ; $67c9: $13
    dec de                                        ; $67ca: $1b
    ld e, $17                                     ; $67cb: $1e $17
    add hl, bc                                    ; $67cd: $09
    ld e, $19                                     ; $67ce: $1e $19
    ld a, [hl]                                    ; $67d0: $7e
    ld a, e                                       ; $67d1: $7b
    ld a, h                                       ; $67d2: $7c
    adc d                                         ; $67d3: $8a
    db $ed                                        ; $67d4: $ed
    ld d, a                                       ; $67d5: $57
    ld a, b                                       ; $67d6: $78
    dec sp                                        ; $67d7: $3b
    ld a, h                                       ; $67d8: $7c
    ld a, [de]                                    ; $67d9: $1a
    dec a                                         ; $67da: $3d
    rla                                           ; $67db: $17
    jr c, @+$0b                                   ; $67dc: $38 $09

    ld e, $0e                                     ; $67de: $1e $0e
    rra                                           ; $67e0: $1f
    add hl, de                                    ; $67e1: $19
    ld e, $10                                     ; $67e2: $1e $10
    rra                                           ; $67e4: $1f
    add hl, de                                    ; $67e5: $19
    ld e, $90                                     ; $67e6: $1e $90
    cp a                                          ; $67e8: $bf
    ld e, c                                       ; $67e9: $59
    cp $f0                                        ; $67ea: $fe $f0
    ld a, a                                       ; $67ec: $7f
    cp c                                          ; $67ed: $b9
    cp $10                                        ; $67ee: $fe $10
    rst $38                                       ; $67f0: $ff
    reti                                          ; $67f1: $d9


    ld a, $b0                                     ; $67f2: $3e $b0
    ld a, a                                       ; $67f4: $7f
    add hl, sp                                    ; $67f5: $39
    cp $70                                        ; $67f6: $fe $70
    rst $38                                       ; $67f8: $ff
    add hl, sp                                    ; $67f9: $39
    cp $70                                        ; $67fa: $fe $70
    rst $38                                       ; $67fc: $ff
    add hl, sp                                    ; $67fd: $39
    cp $50                                        ; $67fe: $fe $50
    rst $38                                       ; $6800: $ff
    ld l, c                                       ; $6801: $69
    sub a                                         ; $6802: $97
    ldh a, [rIF]                                  ; $6803: $f0 $0f
    ld l, c                                       ; $6805: $69
    sub a                                         ; $6806: $97
    ldh a, [rIF]                                  ; $6807: $f0 $0f
    ld l, c                                       ; $6809: $69
    sub a                                         ; $680a: $97
    ldh a, [rIF]                                  ; $680b: $f0 $0f
    ld l, c                                       ; $680d: $69
    sub a                                         ; $680e: $97
    ldh a, [rIF]                                  ; $680f: $f0 $0f
    ld l, c                                       ; $6811: $69
    sub a                                         ; $6812: $97
    ldh a, [rIF]                                  ; $6813: $f0 $0f
    ld l, c                                       ; $6815: $69
    sub a                                         ; $6816: $97
    ldh a, [rIF]                                  ; $6817: $f0 $0f
    ld l, c                                       ; $6819: $69
    sub a                                         ; $681a: $97
    ldh a, [rIF]                                  ; $681b: $f0 $0f
    ld l, c                                       ; $681d: $69
    sub a                                         ; $681e: $97
    ldh a, [rIF]                                  ; $681f: $f0 $0f
    ld b, $80                                     ; $6821: $06 $80
    jp z, $b490                                   ; $6823: $ca $90 $b4

    add b                                         ; $6826: $80
    db $fc                                        ; $6827: $fc
    ld a, [c]                                     ; $6828: $f2
    rst $28                                       ; $6829: $ef
    db $d3                                        ; $682a: $d3
    ei                                            ; $682b: $fb
    adc h                                         ; $682c: $8c
    db $fd                                        ; $682d: $fd
    or [hl]                                       ; $682e: $b6
    rst $08                                       ; $682f: $cf
    ret                                           ; $6830: $c9


    rst $30                                       ; $6831: $f7
    set 6, l                                      ; $6832: $cb $f5
    push hl                                       ; $6834: $e5
    ei                                            ; $6835: $fb
    call $e6f3                                    ; $6836: $cd $f3 $e6
    ld sp, hl                                     ; $6839: $f9
    call c, $ade3                                 ; $683a: $dc $e3 $ad
    di                                            ; $683d: $f3

Call_0f5_683e:
Jump_0f5_683e:
    nop                                           ; $683e: $00
    ld [$0800], sp                                ; $683f: $08 $00 $08
    nop                                           ; $6842: $00
    ld [$0400], sp                                ; $6843: $08 $00 $04
    ld [$0a0e], sp                                ; $6846: $08 $0e $0a
    ld c, $03                                     ; $6849: $0e $03
    rlca                                          ; $684b: $07
    ld [$0c0e], sp                                ; $684c: $08 $0e $0c
    ld c, $08                                     ; $684f: $0e $08
    inc c                                         ; $6851: $0c
    ret c                                         ; $6852: $d8

    inc a                                         ; $6853: $3c
    or b                                          ; $6854: $b0
    ld a, b                                       ; $6855: $78
    ld [hl], b                                    ; $6856: $70
    ld hl, sp+$60                                 ; $6857: $f8 $60
    ldh a, [$c0]                                  ; $6859: $f0 $c0
    ldh [rP1], a                                  ; $685b: $e0 $00
    ret nz                                        ; $685d: $c0

    dec bc                                        ; $685e: $0b
    rlca                                          ; $685f: $07
    add hl, bc                                    ; $6860: $09
    rlca                                          ; $6861: $07
    ld c, $01                                     ; $6862: $0e $01
    ld h, a                                       ; $6864: $67
    ld hl, sp+$3a                                 ; $6865: $f8 $3a
    ld a, l                                       ; $6867: $7d
    rrca                                          ; $6868: $0f
    ccf                                           ; $6869: $3f
    inc bc                                        ; $686a: $03
    rrca                                          ; $686b: $0f
    nop                                           ; $686c: $00
    inc bc                                        ; $686d: $03
    stop                                          ; $686e: $10 $00
    add d                                         ; $6870: $82
    sub $e9                                       ; $6871: $d6 $e9
    ld [bc], a                                    ; $6873: $02
    rst $38                                       ; $6874: $ff
    add l                                         ; $6875: $85
    dec [hl]                                      ; $6876: $35
    rst $38                                       ; $6877: $ff
    push bc                                       ; $6878: $c5
    ld a, [hl-]                                   ; $6879: $3a
    rst $38                                       ; $687a: $ff
    ld [bc], a                                    ; $687b: $02
    nop                                           ; $687c: $00
    add d                                         ; $687d: $82
    rst $38                                       ; $687e: $ff
    ei                                            ; $687f: $fb
    inc bc                                        ; $6880: $03
    rst $38                                       ; $6881: $ff
    add d                                         ; $6882: $82
    nop                                           ; $6883: $00
    rst $38                                       ; $6884: $ff
    ld c, $00                                     ; $6885: $0e $00
    adc c                                         ; $6887: $89
    cp l                                          ; $6888: $bd
    ld a, [hl]                                    ; $6889: $7e
    di                                            ; $688a: $f3
    db $fc                                        ; $688b: $fc
    sub a                                         ; $688c: $97
    add sp, $7a                                   ; $688d: $e8 $7a
    add l                                         ; $688f: $85
    db $e3                                        ; $6890: $e3
    ld [bc], a                                    ; $6891: $02
    rra                                           ; $6892: $1f
    add a                                         ; $6893: $87
    rst $38                                       ; $6894: $ff
    ld a, h                                       ; $6895: $7c
    rst $38                                       ; $6896: $ff
    ldh [$fc], a                                  ; $6897: $e0 $fc
    nop                                           ; $6899: $00
    ldh [$0e], a                                  ; $689a: $e0 $0e
    nop                                           ; $689c: $00
    rst $38                                       ; $689d: $ff
    dec d                                         ; $689e: $15
    ld [$07fa], sp                                ; $689f: $08 $fa $07
    db $fd                                        ; $68a2: $fd
    ld a, [bc]                                    ; $68a3: $0a
    inc bc                                        ; $68a4: $03
    ldh a, [rP1]                                  ; $68a5: $f0 $00
    ld hl, sp+$00                                 ; $68a7: $f8 $00
    nop                                           ; $68a9: $00
    inc bc                                        ; $68aa: $03
    ld [$0a0a], sp                                ; $68ab: $08 $0a $0a
    db $10                                        ; $68ae: $10
    di                                            ; $68af: $f3
    db $10                                        ; $68b0: $10
    ei                                            ; $68b1: $fb
    db $10                                        ; $68b2: $10
    ld [bc], a                                    ; $68b3: $02
    cp $00                                        ; $68b4: $fe $00
    ld [bc], a                                    ; $68b6: $02
    nop                                           ; $68b7: $00
    ld [bc], a                                    ; $68b8: $02
    ld a, [bc]                                    ; $68b9: $0a
    add hl, bc                                    ; $68ba: $09
    dec b                                         ; $68bb: $05
    rrca                                          ; $68bc: $0f
    ld d, $17                                     ; $68bd: $16 $17
    dec a                                         ; $68bf: $3d
    ld l, $13                                     ; $68c0: $2e $13
    inc a                                         ; $68c2: $3c
    ld [hl], $79                                  ; $68c3: $36 $79
    ld l, [hl]                                    ; $68c5: $6e
    ld [hl], c                                    ; $68c6: $71
    inc d                                         ; $68c7: $14
    ld e, e                                       ; $68c8: $5b
    xor [hl]                                      ; $68c9: $ae
    pop af                                        ; $68ca: $f1
    ld h, [hl]                                    ; $68cb: $66
    ld sp, hl                                     ; $68cc: $f9
    inc [hl]                                      ; $68cd: $34
    ld a, e                                       ; $68ce: $7b
    cpl                                           ; $68cf: $2f
    ld [hl], b                                    ; $68d0: $70
    ld [de], a                                    ; $68d1: $12
    dec a                                         ; $68d2: $3d
    add hl, de                                    ; $68d3: $19
    ld a, $34                                     ; $68d4: $3e $34
    ccf                                           ; $68d6: $3f
    jr z, jr_0f5_6918                             ; $68d7: $28 $3f

    inc [hl]                                      ; $68d9: $34
    ccf                                           ; $68da: $3f
    jr z, jr_0f5_695c                             ; $68db: $28 $7f

    inc [hl]                                      ; $68dd: $34
    ld a, a                                       ; $68de: $7f
    add sp, -$01                                  ; $68df: $e8 $ff
    db $f4                                        ; $68e1: $f4
    rst $38                                       ; $68e2: $ff
    ld l, b                                       ; $68e3: $68
    rst $38                                       ; $68e4: $ff
    inc [hl]                                      ; $68e5: $34
    rst $38                                       ; $68e6: $ff
    ld l, b                                       ; $68e7: $68
    rst $38                                       ; $68e8: $ff
    ld [hl], h                                    ; $68e9: $74
    rst $38                                       ; $68ea: $ff
    add sp, -$01                                  ; $68eb: $e8 $ff
    ld [hl], h                                    ; $68ed: $74
    rst $38                                       ; $68ee: $ff
    add sp, -$01                                  ; $68ef: $e8 $ff
    ld [hl], h                                    ; $68f1: $74
    rst $38                                       ; $68f2: $ff
    xor b                                         ; $68f3: $a8
    rst $38                                       ; $68f4: $ff
    or l                                          ; $68f5: $b5
    ld c, e                                       ; $68f6: $4b
    ld a, c                                       ; $68f7: $79
    add a                                         ; $68f8: $87
    or l                                          ; $68f9: $b5
    ld c, e                                       ; $68fa: $4b
    ld a, c                                       ; $68fb: $79
    add a                                         ; $68fc: $87
    or l                                          ; $68fd: $b5
    ld c, e                                       ; $68fe: $4b
    ld a, c                                       ; $68ff: $79

Jump_0f5_6900:
    add a                                         ; $6900: $87
    or l                                          ; $6901: $b5
    ld c, e                                       ; $6902: $4b

Call_0f5_6903:
    ld a, c                                       ; $6903: $79
    add a                                         ; $6904: $87
    or l                                          ; $6905: $b5
    ld c, e                                       ; $6906: $4b
    ld a, c                                       ; $6907: $79
    add a                                         ; $6908: $87
    or l                                          ; $6909: $b5
    ld c, e                                       ; $690a: $4b
    ld a, c                                       ; $690b: $79
    add a                                         ; $690c: $87
    or l                                          ; $690d: $b5
    ld c, e                                       ; $690e: $4b
    ld a, c                                       ; $690f: $79
    add a                                         ; $6910: $87
    or l                                          ; $6911: $b5
    ld c, e                                       ; $6912: $4b
    ld a, c                                       ; $6913: $79
    add a                                         ; $6914: $87
    nop                                           ; $6915: $00
    ld b, b                                       ; $6916: $40
    nop                                           ; $6917: $00

jr_0f5_6918:
    ret nc                                        ; $6918: $d0

    ldh a, [$d8]                                  ; $6919: $f0 $d8
    or b                                          ; $691b: $b0
    db $f4                                        ; $691c: $f4
    sbc b                                         ; $691d: $98
    db $fd                                        ; $691e: $fd
    dec l                                         ; $691f: $2d
    rst $18                                       ; $6920: $df
    sub d                                         ; $6921: $92
    xor $97                                       ; $6922: $ee $97
    db $eb                                        ; $6924: $eb
    set 6, a                                      ; $6925: $cb $f7
    sbc d                                         ; $6927: $9a
    and $cd                                       ; $6928: $e6 $cd
    di                                            ; $692a: $f3
    sbc c                                         ; $692b: $99
    rst $20                                       ; $692c: $e7
    ld d, e                                       ; $692d: $53
    rst $28                                       ; $692e: $ef
    cp e                                          ; $692f: $bb
    rst $00                                       ; $6930: $c7
    ld h, [hl]                                    ; $6931: $66
    sbc a                                         ; $6932: $9f
    add e                                         ; $6933: $83
    xor $1f                                       ; $6934: $ee $1f
    nop                                           ; $6936: $00
    ld [bc], a                                    ; $6937: $02
    ld bc, $0284                                  ; $6938: $01 $84 $02
    ld bc, $0003                                  ; $693b: $01 $03 $00
    ld [bc], a                                    ; $693e: $02
    ld [bc], a                                    ; $693f: $02
    add l                                         ; $6940: $85
    inc bc                                        ; $6941: $03
    nop                                           ; $6942: $00

jr_0f5_6943:
    ld [bc], a                                    ; $6943: $02
    nop                                           ; $6944: $00
    ld [bc], a                                    ; $6945: $02
    inc b                                         ; $6946: $04
    nop                                           ; $6947: $00
    add [hl]                                      ; $6948: $86
    jr nc, jr_0f5_6943                            ; $6949: $30 $f8

    ldh [$f0], a                                  ; $694b: $e0 $f0
    add b                                         ; $694d: $80
    ldh [rSC], a                                  ; $694e: $e0 $02
    add b                                         ; $6950: $80
    ld b, $00                                     ; $6951: $06 $00
    sub b                                         ; $6953: $90
    inc bc                                        ; $6954: $03
    rlca                                          ; $6955: $07
    ld bc, $0607                                  ; $6956: $01 $07 $06
    ld bc, $f867                                  ; $6959: $01 $67 $f8

jr_0f5_695c:
    ld a, [hl-]                                   ; $695c: $3a
    ld a, l                                       ; $695d: $7d
    ld c, $3f                                     ; $695e: $0e $3f
    inc bc                                        ; $6960: $03
    rrca                                          ; $6961: $0f
    ld [bc], a                                    ; $6962: $02
    inc bc                                        ; $6963: $03
    stop                                          ; $6964: $10 $00
    add d                                         ; $6966: $82
    push hl                                       ; $6967: $e5
    ld a, [$ff02]                                 ; $6968: $fa $02 $ff
    adc c                                         ; $696b: $89
    cp l                                          ; $696c: $bd
    rst $38                                       ; $696d: $ff
    push bc                                       ; $696e: $c5
    ld a, [hl-]                                   ; $696f: $3a
    cp a                                          ; $6970: $bf
    ld b, b                                       ; $6971: $40
    dec b                                         ; $6972: $05
    ld a, [$03c8]                                 ; $6973: $fa $c8 $03
    rst $38                                       ; $6976: $ff
    add d                                         ; $6977: $82
    ld [bc], a                                    ; $6978: $02
    rst $38                                       ; $6979: $ff
    ld c, $00                                     ; $697a: $0e $00
    sub d                                         ; $697c: $92
    ld e, h                                       ; $697d: $5c
    inc a                                         ; $697e: $3c
    ld a, b                                       ; $697f: $78
    ld a, h                                       ; $6980: $7c
    ld c, b                                       ; $6981: $48
    ld [hl], h                                    ; $6982: $74
    dec a                                         ; $6983: $3d
    ld b, d                                       ; $6984: $42
    ld [hl], c                                    ; $6985: $71
    rrca                                          ; $6986: $0f
    ld c, a                                       ; $6987: $4f
    ccf                                           ; $6988: $3f
    ld a, $7f                                     ; $6989: $3e $7f
    ld [hl], b                                    ; $698b: $70
    ld a, [hl]                                    ; $698c: $7e
    nop                                           ; $698d: $00
    ld [hl], b                                    ; $698e: $70
    ld c, $00                                     ; $698f: $0e $00
    rst $38                                       ; $6991: $ff
    dec d                                         ; $6992: $15
    ld [$07fa], sp                                ; $6993: $08 $fa $07
    db $fd                                        ; $6996: $fd
    ld a, [bc]                                    ; $6997: $0a
    inc bc                                        ; $6998: $03
    ldh a, [rP1]                                  ; $6999: $f0 $00
    ld hl, sp+$00                                 ; $699b: $f8 $00
    nop                                           ; $699d: $00
    inc bc                                        ; $699e: $03
    ld [$0a0a], sp                                ; $699f: $08 $0a $0a
    db $10                                        ; $69a2: $10
    di                                            ; $69a3: $f3
    db $10                                        ; $69a4: $10
    ei                                            ; $69a5: $fb
    db $10                                        ; $69a6: $10
    ld [bc], a                                    ; $69a7: $02
    cp $00                                        ; $69a8: $fe $00
    ld [bc], a                                    ; $69aa: $02
    nop                                           ; $69ab: $00
    ld [bc], a                                    ; $69ac: $02
    ld a, [bc]                                    ; $69ad: $0a
    add hl, bc                                    ; $69ae: $09
    dec b                                         ; $69af: $05
    rrca                                          ; $69b0: $0f
    ld d, $17                                     ; $69b1: $16 $17
    dec a                                         ; $69b3: $3d
    ld l, $13                                     ; $69b4: $2e $13
    inc a                                         ; $69b6: $3c
    ld [hl], $79                                  ; $69b7: $36 $79
    ld l, [hl]                                    ; $69b9: $6e
    ld [hl], c                                    ; $69ba: $71
    inc d                                         ; $69bb: $14
    ld e, e                                       ; $69bc: $5b
    xor [hl]                                      ; $69bd: $ae
    pop af                                        ; $69be: $f1
    ld h, [hl]                                    ; $69bf: $66
    ld sp, hl                                     ; $69c0: $f9
    inc [hl]                                      ; $69c1: $34
    ld a, e                                       ; $69c2: $7b
    cpl                                           ; $69c3: $2f
    ld [hl], b                                    ; $69c4: $70
    ld [de], a                                    ; $69c5: $12
    dec a                                         ; $69c6: $3d
    add hl, de                                    ; $69c7: $19
    ld a, $36                                     ; $69c8: $3e $36
    ccf                                           ; $69ca: $3f
    cpl                                           ; $69cb: $2f
    ccf                                           ; $69cc: $3f
    ld [hl], $3f                                  ; $69cd: $36 $3f
    cpl                                           ; $69cf: $2f
    ld a, a                                       ; $69d0: $7f
    ld [hl], $7f                                  ; $69d1: $36 $7f
    rst $28                                       ; $69d3: $ef
    rst $38                                       ; $69d4: $ff
    or $ff                                        ; $69d5: $f6 $ff
    ld l, a                                       ; $69d7: $6f
    rst $38                                       ; $69d8: $ff
    ld [hl], $ff                                  ; $69d9: $36 $ff
    ld l, a                                       ; $69db: $6f
    rst $38                                       ; $69dc: $ff
    halt                                          ; $69dd: $76
    rst $38                                       ; $69de: $ff
    rst $28                                       ; $69df: $ef
    rst $38                                       ; $69e0: $ff
    halt                                          ; $69e1: $76
    rst $38                                       ; $69e2: $ff
    rst $28                                       ; $69e3: $ef
    rst $38                                       ; $69e4: $ff
    halt                                          ; $69e5: $76
    rst $38                                       ; $69e6: $ff
    xor a                                         ; $69e7: $af
    rst $38                                       ; $69e8: $ff
    sub a                                         ; $69e9: $97
    jp hl                                         ; $69ea: $e9


    rrca                                          ; $69eb: $0f
    pop af                                        ; $69ec: $f1
    sub a                                         ; $69ed: $97
    jp hl                                         ; $69ee: $e9


    rrca                                          ; $69ef: $0f
    pop af                                        ; $69f0: $f1
    sub a                                         ; $69f1: $97
    jp hl                                         ; $69f2: $e9


    rrca                                          ; $69f3: $0f
    pop af                                        ; $69f4: $f1
    sub a                                         ; $69f5: $97
    jp hl                                         ; $69f6: $e9


    rrca                                          ; $69f7: $0f
    pop af                                        ; $69f8: $f1
    sub a                                         ; $69f9: $97
    jp hl                                         ; $69fa: $e9


    rrca                                          ; $69fb: $0f
    pop af                                        ; $69fc: $f1
    sub a                                         ; $69fd: $97
    jp hl                                         ; $69fe: $e9


    rrca                                          ; $69ff: $0f
    pop af                                        ; $6a00: $f1
    sub a                                         ; $6a01: $97
    jp hl                                         ; $6a02: $e9


    rrca                                          ; $6a03: $0f
    pop af                                        ; $6a04: $f1
    sub a                                         ; $6a05: $97
    jp hl                                         ; $6a06: $e9


    rrca                                          ; $6a07: $0f
    pop af                                        ; $6a08: $f1
    nop                                           ; $6a09: $00
    ld b, b                                       ; $6a0a: $40
    nop                                           ; $6a0b: $00
    ret nc                                        ; $6a0c: $d0

    ldh a, [$d8]                                  ; $6a0d: $f0 $d8
    or b                                          ; $6a0f: $b0
    db $f4                                        ; $6a10: $f4
    sbc b                                         ; $6a11: $98
    db $fd                                        ; $6a12: $fd
    dec l                                         ; $6a13: $2d
    rst $18                                       ; $6a14: $df
    sub d                                         ; $6a15: $92
    xor $97                                       ; $6a16: $ee $97
    db $eb                                        ; $6a18: $eb
    set 6, a                                      ; $6a19: $cb $f7
    sbc d                                         ; $6a1b: $9a
    and $cd                                       ; $6a1c: $e6 $cd
    di                                            ; $6a1e: $f3
    sbc c                                         ; $6a1f: $99
    rst $20                                       ; $6a20: $e7
    ld d, e                                       ; $6a21: $53
    rst $28                                       ; $6a22: $ef
    cp e                                          ; $6a23: $bb
    rst $00                                       ; $6a24: $c7

Jump_0f5_6a25:
    ld h, [hl]                                    ; $6a25: $66
    sbc a                                         ; $6a26: $9f
    add e                                         ; $6a27: $83
    xor $1f                                       ; $6a28: $ee $1f
    nop                                           ; $6a2a: $00
    ld [bc], a                                    ; $6a2b: $02
    ld bc, $0284                                  ; $6a2c: $01 $84 $02
    ld bc, $0003                                  ; $6a2f: $01 $03 $00
    ld [bc], a                                    ; $6a32: $02
    ld [bc], a                                    ; $6a33: $02
    add l                                         ; $6a34: $85
    inc bc                                        ; $6a35: $03
    nop                                           ; $6a36: $00

jr_0f5_6a37:
    ld [bc], a                                    ; $6a37: $02
    nop                                           ; $6a38: $00
    ld [bc], a                                    ; $6a39: $02
    inc b                                         ; $6a3a: $04
    nop                                           ; $6a3b: $00
    add [hl]                                      ; $6a3c: $86
    jr nc, jr_0f5_6a37                            ; $6a3d: $30 $f8

    ldh [$f0], a                                  ; $6a3f: $e0 $f0
    add b                                         ; $6a41: $80
    ldh [rSC], a                                  ; $6a42: $e0 $02
    add b                                         ; $6a44: $80
    ld b, $00                                     ; $6a45: $06 $00
    sub b                                         ; $6a47: $90
    inc bc                                        ; $6a48: $03
    rlca                                          ; $6a49: $07
    ld bc, $0607                                  ; $6a4a: $01 $07 $06
    ld bc, $f867                                  ; $6a4d: $01 $67 $f8
    ld a, [hl-]                                   ; $6a50: $3a
    ld a, l                                       ; $6a51: $7d
    ld c, $3f                                     ; $6a52: $0e $3f
    inc bc                                        ; $6a54: $03
    rrca                                          ; $6a55: $0f
    ld [bc], a                                    ; $6a56: $02
    inc bc                                        ; $6a57: $03
    stop                                          ; $6a58: $10 $00
    add c                                         ; $6a5a: $81
    db $f4                                        ; $6a5b: $f4
    inc bc                                        ; $6a5c: $03
    rst $38                                       ; $6a5d: $ff
    adc c                                         ; $6a5e: $89
    cp l                                          ; $6a5f: $bd
    rst $38                                       ; $6a60: $ff
    push bc                                       ; $6a61: $c5
    ld a, [hl-]                                   ; $6a62: $3a
    cp a                                          ; $6a63: $bf
    ld b, b                                       ; $6a64: $40
    dec b                                         ; $6a65: $05
    ld a, [$03c8]                                 ; $6a66: $fa $c8 $03
    rst $38                                       ; $6a69: $ff
    add d                                         ; $6a6a: $82
    ld [bc], a                                    ; $6a6b: $02
    rst $38                                       ; $6a6c: $ff
    ld c, $00                                     ; $6a6d: $0e $00
    sub d                                         ; $6a6f: $92
    ld e, h                                       ; $6a70: $5c
    inc a                                         ; $6a71: $3c
    ld a, b                                       ; $6a72: $78
    ld a, h                                       ; $6a73: $7c
    ld c, b                                       ; $6a74: $48
    ld [hl], h                                    ; $6a75: $74
    dec a                                         ; $6a76: $3d
    ld b, d                                       ; $6a77: $42
    ld [hl], c                                    ; $6a78: $71
    rrca                                          ; $6a79: $0f
    ld c, a                                       ; $6a7a: $4f
    ccf                                           ; $6a7b: $3f
    ld a, $7f                                     ; $6a7c: $3e $7f
    ld [hl], b                                    ; $6a7e: $70
    ld a, [hl]                                    ; $6a7f: $7e
    nop                                           ; $6a80: $00
    ld [hl], b                                    ; $6a81: $70
    ld c, $00                                     ; $6a82: $0e $00
    rst $38                                       ; $6a84: $ff
    dec d                                         ; $6a85: $15
    ld [$07fa], sp                                ; $6a86: $08 $fa $07
    db $fd                                        ; $6a89: $fd
    ld a, [bc]                                    ; $6a8a: $0a
    dec b                                         ; $6a8b: $05
    rst $28                                       ; $6a8c: $ef
    nop                                           ; $6a8d: $00
    rst $30                                       ; $6a8e: $f7
    nop                                           ; $6a8f: $00
    rst $38                                       ; $6a90: $ff
    nop                                           ; $6a91: $00
    rlca                                          ; $6a92: $07
    rlca                                          ; $6a93: $07
    dec bc                                        ; $6a94: $0b
    db $10                                        ; $6a95: $10
    push af                                       ; $6a96: $f5
    db $10                                        ; $6a97: $10
    db $fd                                        ; $6a98: $fd
    db $10                                        ; $6a99: $10
    inc bc                                        ; $6a9a: $03
    add d                                         ; $6a9b: $82
    dec b                                         ; $6a9c: $05
    dec c                                         ; $6a9d: $0d
    ld [bc], a                                    ; $6a9e: $02
    inc c                                         ; $6a9f: $0c
    call c, $131b                                 ; $6aa0: $dc $1b $13
    ld d, $1f                                     ; $6aa3: $16 $1f
    add hl, bc                                    ; $6aa5: $09
    ld c, $19                                     ; $6aa6: $0e $19
    ld e, [hl]                                    ; $6aa8: $5e
    ld e, e                                       ; $6aa9: $5b
    ld e, h                                       ; $6aaa: $5c
    xor e                                         ; $6aab: $ab
    db $ec                                        ; $6aac: $ec
    scf                                           ; $6aad: $37
    ld a, b                                       ; $6aae: $78
    inc sp                                        ; $6aaf: $33
    ld a, h                                       ; $6ab0: $7c
    dec de                                        ; $6ab1: $1b
    inc a                                         ; $6ab2: $3c
    dec d                                         ; $6ab3: $15
    ld a, [hl-]                                   ; $6ab4: $3a
    add hl, bc                                    ; $6ab5: $09
    ld e, $0c                                     ; $6ab6: $1e $0c
    rra                                           ; $6ab8: $1f
    ld b, $0f                                     ; $6ab9: $06 $0f
    inc bc                                        ; $6abb: $03
    rlca                                          ; $6abc: $07
    ld de, $121f                                  ; $6abd: $11 $1f $12
    rra                                           ; $6ac0: $1f
    ld de, $921f                                  ; $6ac1: $11 $1f $92
    sbc a                                         ; $6ac4: $9f
    ld d, c                                       ; $6ac5: $51
    rst $18                                       ; $6ac6: $df
    ld a, [c]                                     ; $6ac7: $f2
    ld a, a                                       ; $6ac8: $7f
    or c                                          ; $6ac9: $b1
    rst $38                                       ; $6aca: $ff
    ld [de], a                                    ; $6acb: $12
    rst $38                                       ; $6acc: $ff
    pop de                                        ; $6acd: $d1
    ccf                                           ; $6ace: $3f
    or d                                          ; $6acf: $b2
    ld a, a                                       ; $6ad0: $7f
    ld sp, $72ff                                  ; $6ad1: $31 $ff $72
    rst $38                                       ; $6ad4: $ff
    ld sp, $72ff                                  ; $6ad5: $31 $ff $72
    rst $38                                       ; $6ad8: $ff
    or c                                          ; $6ad9: $b1
    ld a, a                                       ; $6ada: $7f
    ld d, d                                       ; $6adb: $52
    rst $38                                       ; $6adc: $ff
    pop hl                                        ; $6add: $e1
    cp $d2                                        ; $6ade: $fe $d2
    db $fd                                        ; $6ae0: $fd
    pop hl                                        ; $6ae1: $e1
    cp $d2                                        ; $6ae2: $fe $d2
    db $fd                                        ; $6ae4: $fd
    pop hl                                        ; $6ae5: $e1
    cp $d2                                        ; $6ae6: $fe $d2
    db $fd                                        ; $6ae8: $fd
    pop hl                                        ; $6ae9: $e1
    cp $d2                                        ; $6aea: $fe $d2
    db $fd                                        ; $6aec: $fd
    pop hl                                        ; $6aed: $e1
    cp $d2                                        ; $6aee: $fe $d2
    db $fd                                        ; $6af0: $fd
    pop hl                                        ; $6af1: $e1
    cp $d2                                        ; $6af2: $fe $d2
    db $fd                                        ; $6af4: $fd
    pop hl                                        ; $6af5: $e1
    cp $d2                                        ; $6af6: $fe $d2
    db $fd                                        ; $6af8: $fd
    pop hl                                        ; $6af9: $e1
    cp $d0                                        ; $6afa: $fe $d0
    rst $38                                       ; $6afc: $ff
    ld b, $80                                     ; $6afd: $06 $80
    ld [bc], a                                    ; $6aff: $02
    sub b                                         ; $6b00: $90
    sbc b                                         ; $6b01: $98
    and b                                         ; $6b02: $a0
    or b                                          ; $6b03: $b0
    ld a, [$d3eb]                                 ; $6b04: $fa $eb $d3
    di                                            ; $6b07: $f3
    adc l                                         ; $6b08: $8d
    db $fc                                        ; $6b09: $fc
    or [hl]                                       ; $6b0a: $b6
    rst $08                                       ; $6b0b: $cf
    reti                                          ; $6b0c: $d9


    rst $20                                       ; $6b0d: $e7
    ret                                           ; $6b0e: $c9


    rst $30                                       ; $6b0f: $f7
    db $ed                                        ; $6b10: $ed
    di                                            ; $6b11: $f3
    call $eef3                                    ; $6b12: $cd $f3 $ee
    pop af                                        ; $6b15: $f1
    call c, $ade3                                 ; $6b16: $dc $e3 $ad
    di                                            ; $6b19: $f3
    inc b                                         ; $6b1a: $04
    ld [$0002], sp                                ; $6b1b: $08 $02 $00
    add c                                         ; $6b1e: $81
    ld [$0a03], sp                                ; $6b1f: $08 $03 $0a
    sub h                                         ; $6b22: $94
    rlca                                          ; $6b23: $07
    dec b                                         ; $6b24: $05
    inc c                                         ; $6b25: $0c
    ld c, $0c                                     ; $6b26: $0e $0c
    ld c, $08                                     ; $6b28: $0e $08
    inc c                                         ; $6b2a: $0c
    adc b                                         ; $6b2b: $88
    ld a, h                                       ; $6b2c: $7c
    or b                                          ; $6b2d: $b0
    ld a, b                                       ; $6b2e: $78
    jr nc, @-$06                                  ; $6b2f: $30 $f8

    ld h, b                                       ; $6b31: $60
    ldh a, [$c0]                                  ; $6b32: $f0 $c0
    ldh [rP1], a                                  ; $6b34: $e0 $00
    ret nz                                        ; $6b36: $c0

    ld [bc], a                                    ; $6b37: $02
    nop                                           ; $6b38: $00
    adc c                                         ; $6b39: $89
    cpl                                           ; $6b3a: $2f
    rra                                           ; $6b3b: $1f
    dec [hl]                                      ; $6b3c: $35
    rrca                                          ; $6b3d: $0f
    ld a, [hl-]                                   ; $6b3e: $3a
    dec b                                         ; $6b3f: $05
    rra                                           ; $6b40: $1f
    jr nz, jr_0f5_6b66                            ; $6b41: $20 $23

    ld [bc], a                                    ; $6b43: $02
    inc a                                         ; $6b44: $3c
    add a                                         ; $6b45: $87
    rst $38                                       ; $6b46: $ff
    rlca                                          ; $6b47: $07
    ccf                                           ; $6b48: $3f
    inc bc                                        ; $6b49: $03
    rrca                                          ; $6b4a: $0f
    nop                                           ; $6b4b: $00
    inc bc                                        ; $6b4c: $03
    ld c, $00                                     ; $6b4d: $0e $00
    add c                                         ; $6b4f: $81
    ld a, b                                       ; $6b50: $78
    inc bc                                        ; $6b51: $03
    rst $38                                       ; $6b52: $ff
    add l                                         ; $6b53: $85
    ld d, h                                       ; $6b54: $54
    rst $38                                       ; $6b55: $ff
    ld d, l                                       ; $6b56: $55
    xor d                                         ; $6b57: $aa
    rst $38                                       ; $6b58: $ff
    ld [bc], a                                    ; $6b59: $02
    nop                                           ; $6b5a: $00
    add d                                         ; $6b5b: $82
    rst $38                                       ; $6b5c: $ff
    db $ed                                        ; $6b5d: $ed
    inc bc                                        ; $6b5e: $03
    rst $38                                       ; $6b5f: $ff
    add d                                         ; $6b60: $82
    nop                                           ; $6b61: $00
    rst $38                                       ; $6b62: $ff
    ld c, $00                                     ; $6b63: $0e $00
    adc c                                         ; $6b65: $89

jr_0f5_6b66:
    dec a                                         ; $6b66: $3d
    ld a, $17                                     ; $6b67: $3e $17
    jr c, jr_0f5_6ba2                             ; $6b69: $38 $37

    ld [$0738], sp                                ; $6b6b: $08 $38 $07
    daa                                           ; $6b6e: $27
    ld [bc], a                                    ; $6b6f: $02
    rra                                           ; $6b70: $1f
    add a                                         ; $6b71: $87
    ccf                                           ; $6b72: $3f
    jr nc, jr_0f5_6bb4                            ; $6b73: $30 $3f

    jr nz, @+$3e                                  ; $6b75: $20 $3c

    nop                                           ; $6b77: $00
    jr nz, jr_0f5_6b88                            ; $6b78: $20 $0e

    nop                                           ; $6b7a: $00
    rst $38                                       ; $6b7b: $ff
    dec d                                         ; $6b7c: $15
    ld [$07fa], sp                                ; $6b7d: $08 $fa $07
    db $fd                                        ; $6b80: $fd
    ld a, [bc]                                    ; $6b81: $0a
    inc bc                                        ; $6b82: $03
    ldh a, [rP1]                                  ; $6b83: $f0 $00
    ld hl, sp+$00                                 ; $6b85: $f8 $00
    nop                                           ; $6b87: $00

jr_0f5_6b88:
    inc bc                                        ; $6b88: $03
    ld [$0a09], sp                                ; $6b89: $08 $09 $0a
    db $10                                        ; $6b8c: $10
    di                                            ; $6b8d: $f3
    db $10                                        ; $6b8e: $10
    ei                                            ; $6b8f: $fb
    db $10                                        ; $6b90: $10
    ld [bc], a                                    ; $6b91: $02
    pop hl                                        ; $6b92: $e1
    nop                                           ; $6b93: $00
    ld [bc], a                                    ; $6b94: $02
    nop                                           ; $6b95: $00
    ld b, $04                                     ; $6b96: $06 $04
    nop                                           ; $6b98: $00
    dec b                                         ; $6b99: $05
    daa                                           ; $6b9a: $27
    ld h, $37                                     ; $6b9b: $26 $37
    dec a                                         ; $6b9d: $3d
    ld l, $13                                     ; $6b9e: $2e $13
    inc a                                         ; $6ba0: $3c
    ld [hl-], a                                   ; $6ba1: $32

jr_0f5_6ba2:
    ld a, l                                       ; $6ba2: $7d
    halt                                          ; $6ba3: $76
    ld a, c                                       ; $6ba4: $79
    inc d                                         ; $6ba5: $14
    ld e, e                                       ; $6ba6: $5b
    xor [hl]                                      ; $6ba7: $ae
    pop af                                        ; $6ba8: $f1
    halt                                          ; $6ba9: $76
    ld sp, hl                                     ; $6baa: $f9
    inc [hl]                                      ; $6bab: $34
    ld a, e                                       ; $6bac: $7b
    cpl                                           ; $6bad: $2f
    ld [hl], b                                    ; $6bae: $70
    inc de                                        ; $6baf: $13
    inc a                                         ; $6bb0: $3c
    dec e                                         ; $6bb1: $1d
    ld a, $28                                     ; $6bb2: $3e $28

jr_0f5_6bb4:
    scf                                           ; $6bb4: $37
    ld sp, $282f                                  ; $6bb5: $31 $2f $28
    scf                                           ; $6bb8: $37
    ld sp, $286f                                  ; $6bb9: $31 $6f $28
    ld [hl], a                                    ; $6bbc: $77
    pop af                                        ; $6bbd: $f1
    rst $28                                       ; $6bbe: $ef
    ld l, b                                       ; $6bbf: $68
    rst $30                                       ; $6bc0: $f7
    ld sp, $a8ef                                  ; $6bc1: $31 $ef $a8
    ld [hl], a                                    ; $6bc4: $77
    ld [hl], c                                    ; $6bc5: $71
    rst $28                                       ; $6bc6: $ef
    ld l, b                                       ; $6bc7: $68
    rst $30                                       ; $6bc8: $f7
    pop af                                        ; $6bc9: $f1
    rst $28                                       ; $6bca: $ef
    ld l, b                                       ; $6bcb: $68
    rst $30                                       ; $6bcc: $f7
    pop af                                        ; $6bcd: $f1
    rst $28                                       ; $6bce: $ef
    ld l, b                                       ; $6bcf: $68
    rst $30                                       ; $6bd0: $f7
    cp c                                          ; $6bd1: $b9
    rst $38                                       ; $6bd2: $ff
    pop af                                        ; $6bd3: $f1
    rst $38                                       ; $6bd4: $ff
    ld l, c                                       ; $6bd5: $69
    rst $38                                       ; $6bd6: $ff
    pop af                                        ; $6bd7: $f1
    rst $38                                       ; $6bd8: $ff
    ld l, c                                       ; $6bd9: $69
    rst $38                                       ; $6bda: $ff
    pop af                                        ; $6bdb: $f1
    rst $38                                       ; $6bdc: $ff
    ld l, c                                       ; $6bdd: $69
    rst $38                                       ; $6bde: $ff
    pop af                                        ; $6bdf: $f1
    rst $38                                       ; $6be0: $ff
    ld l, c                                       ; $6be1: $69
    rst $38                                       ; $6be2: $ff
    pop af                                        ; $6be3: $f1
    rst $38                                       ; $6be4: $ff
    ld l, c                                       ; $6be5: $69
    rst $38                                       ; $6be6: $ff
    pop af                                        ; $6be7: $f1
    rst $38                                       ; $6be8: $ff
    ld l, c                                       ; $6be9: $69
    rst $38                                       ; $6bea: $ff
    pop af                                        ; $6beb: $f1
    rst $38                                       ; $6bec: $ff
    ld l, c                                       ; $6bed: $69
    rst $38                                       ; $6bee: $ff
    pop af                                        ; $6bef: $f1
    rst $38                                       ; $6bf0: $ff
    ld l, c                                       ; $6bf1: $69
    rst $38                                       ; $6bf2: $ff
    nop                                           ; $6bf3: $00
    ld [bc], a                                    ; $6bf4: $02
    ld c, b                                       ; $6bf5: $48
    sbc [hl]                                      ; $6bf6: $9e
    sbc b                                         ; $6bf7: $98
    ldh [$d8], a                                  ; $6bf8: $e0 $d8
    or b                                          ; $6bfa: $b0
    pop af                                        ; $6bfb: $f1
    ld e, $fd                                     ; $6bfc: $1e $fd
    ld l, l                                       ; $6bfe: $6d
    sbc a                                         ; $6bff: $9f
    sub d                                         ; $6c00: $92
    xor $97                                       ; $6c01: $ee $97
    db $eb                                        ; $6c03: $eb
    set 6, a                                      ; $6c04: $cb $f7
    sbc d                                         ; $6c06: $9a
    and $cd                                       ; $6c07: $e6 $cd
    di                                            ; $6c09: $f3
    cp c                                          ; $6c0a: $b9
    rst $00                                       ; $6c0b: $c7
    ld e, e                                       ; $6c0c: $5b
    rst $20                                       ; $6c0d: $e7
    cp e                                          ; $6c0e: $bb
    rst $00                                       ; $6c0f: $c7
    halt                                          ; $6c10: $76
    adc a                                         ; $6c11: $8f
    xor $1f                                       ; $6c12: $ee $1f
    nop                                           ; $6c14: $00
    ld [bc], a                                    ; $6c15: $02
    ld [bc], a                                    ; $6c16: $02
    add [hl]                                      ; $6c17: $86
    nop                                           ; $6c18: $00
    ld bc, $0103                                  ; $6c19: $01 $03 $01
    inc bc                                        ; $6c1c: $03
    nop                                           ; $6c1d: $00
    ld [bc], a                                    ; $6c1e: $02
    ld [bc], a                                    ; $6c1f: $02
    add l                                         ; $6c20: $85
    inc bc                                        ; $6c21: $03
    nop                                           ; $6c22: $00

jr_0f5_6c23:
    ld [bc], a                                    ; $6c23: $02
    nop                                           ; $6c24: $00
    ld [bc], a                                    ; $6c25: $02
    inc b                                         ; $6c26: $04
    nop                                           ; $6c27: $00
    adc b                                         ; $6c28: $88
    jr nc, jr_0f5_6c23                            ; $6c29: $30 $f8

    ldh [$f0], a                                  ; $6c2b: $e0 $f0
    add b                                         ; $6c2d: $80
    ldh [rP1], a                                  ; $6c2e: $e0 $00
    add b                                         ; $6c30: $80
    inc b                                         ; $6c31: $04
    nop                                           ; $6c32: $00
    sub b                                         ; $6c33: $90
    inc bc                                        ; $6c34: $03
    rlca                                          ; $6c35: $07
    ld bc, $0607                                  ; $6c36: $01 $07 $06
    ld bc, $f867                                  ; $6c39: $01 $67 $f8
    ld a, [hl-]                                   ; $6c3c: $3a
    ld a, l                                       ; $6c3d: $7d
    rrca                                          ; $6c3e: $0f
    ccf                                           ; $6c3f: $3f
    inc bc                                        ; $6c40: $03
    rrca                                          ; $6c41: $0f
    nop                                           ; $6c42: $00
    inc bc                                        ; $6c43: $03
    stop                                          ; $6c44: $10 $00
    add c                                         ; $6c46: $81
    rst $00                                       ; $6c47: $c7
    inc bc                                        ; $6c48: $03
    rst $38                                       ; $6c49: $ff
    add l                                         ; $6c4a: $85
    dec [hl]                                      ; $6c4b: $35
    rst $38                                       ; $6c4c: $ff
    push bc                                       ; $6c4d: $c5
    ld a, [hl-]                                   ; $6c4e: $3a
    rst $38                                       ; $6c4f: $ff
    ld [bc], a                                    ; $6c50: $02
    nop                                           ; $6c51: $00
    add d                                         ; $6c52: $82
    rst $38                                       ; $6c53: $ff
    ei                                            ; $6c54: $fb
    inc bc                                        ; $6c55: $03
    rst $38                                       ; $6c56: $ff
    add d                                         ; $6c57: $82
    nop                                           ; $6c58: $00
    rst $38                                       ; $6c59: $ff
    ld c, $00                                     ; $6c5a: $0e $00
    adc c                                         ; $6c5c: $89
    ld e, h                                       ; $6c5d: $5c
    ld a, h                                       ; $6c5e: $7c
    ld a, b                                       ; $6c5f: $78
    ld a, h                                       ; $6c60: $7c
    ld c, b                                       ; $6c61: $48
    ld [hl], h                                    ; $6c62: $74
    dec a                                         ; $6c63: $3d
    ld b, d                                       ; $6c64: $42
    ld [hl], c                                    ; $6c65: $71
    ld [bc], a                                    ; $6c66: $02
    rrca                                          ; $6c67: $0f
    add a                                         ; $6c68: $87
    ld a, a                                       ; $6c69: $7f
    ld a, $7f                                     ; $6c6a: $3e $7f
    ld [hl], b                                    ; $6c6c: $70
    ld a, [hl]                                    ; $6c6d: $7e
    nop                                           ; $6c6e: $00
    ld [hl], b                                    ; $6c6f: $70
    ld c, $00                                     ; $6c70: $0e $00
    rst $38                                       ; $6c72: $ff
    dec d                                         ; $6c73: $15
    ld [$07fa], sp                                ; $6c74: $08 $fa $07
    db $fd                                        ; $6c77: $fd
    ld a, [bc]                                    ; $6c78: $0a
    inc bc                                        ; $6c79: $03
    ldh a, [rP1]                                  ; $6c7a: $f0 $00
    ld hl, sp+$00                                 ; $6c7c: $f8 $00
    nop                                           ; $6c7e: $00
    inc bc                                        ; $6c7f: $03
    ld [$0a0a], sp                                ; $6c80: $08 $0a $0a
    db $10                                        ; $6c83: $10
    di                                            ; $6c84: $f3
    db $10                                        ; $6c85: $10
    ei                                            ; $6c86: $fb
    db $10                                        ; $6c87: $10
    ld [bc], a                                    ; $6c88: $02
    cp $00                                        ; $6c89: $fe $00
    ld [bc], a                                    ; $6c8b: $02
    nop                                           ; $6c8c: $00
    ld [bc], a                                    ; $6c8d: $02
    ld a, [bc]                                    ; $6c8e: $0a
    add hl, bc                                    ; $6c8f: $09
    dec b                                         ; $6c90: $05
    rrca                                          ; $6c91: $0f
    ld d, $17                                     ; $6c92: $16 $17
    dec a                                         ; $6c94: $3d
    ld l, $13                                     ; $6c95: $2e $13
    inc a                                         ; $6c97: $3c
    ld [hl], $79                                  ; $6c98: $36 $79
    ld l, [hl]                                    ; $6c9a: $6e
    ld [hl], c                                    ; $6c9b: $71
    inc d                                         ; $6c9c: $14
    ld e, e                                       ; $6c9d: $5b
    xor [hl]                                      ; $6c9e: $ae
    pop af                                        ; $6c9f: $f1
    ld h, [hl]                                    ; $6ca0: $66
    ld sp, hl                                     ; $6ca1: $f9
    inc [hl]                                      ; $6ca2: $34
    ld a, e                                       ; $6ca3: $7b
    cpl                                           ; $6ca4: $2f
    ld [hl], b                                    ; $6ca5: $70
    ld [de], a                                    ; $6ca6: $12
    dec a                                         ; $6ca7: $3d
    add hl, de                                    ; $6ca8: $19
    ld a, $08                                     ; $6ca9: $3e $08
    nop                                           ; $6cab: $00
    ld a, [hl+]                                   ; $6cac: $2a
    jr nz, jr_0f5_6cd7                            ; $6cad: $20 $28

    ld [hl+], a                                   ; $6caf: $22
    ld a, [hl-]                                   ; $6cb0: $3a
    ld h, c                                       ; $6cb1: $61
    jr z, jr_0f5_6d16                             ; $6cb2: $28 $62

    cp $e0                                        ; $6cb4: $fe $e0
    db $ed                                        ; $6cb6: $ed
    ld a, [c]                                     ; $6cb7: $f2
    ld a, [hl]                                    ; $6cb8: $7e
    pop hl                                        ; $6cb9: $e1
    dec l                                         ; $6cba: $2d
    ld a, [c]                                     ; $6cbb: $f2
    ld a, [hl]                                    ; $6cbc: $7e
    pop hl                                        ; $6cbd: $e1
    ld l, l                                       ; $6cbe: $6d
    ld a, [c]                                     ; $6cbf: $f2
    cp $e1                                        ; $6cc0: $fe $e1
    ld l, l                                       ; $6cc2: $6d
    ld a, [c]                                     ; $6cc3: $f2
    cp $e1                                        ; $6cc4: $fe $e1
    ld l, l                                       ; $6cc6: $6d
    ld a, [c]                                     ; $6cc7: $f2
    cp [hl]                                       ; $6cc8: $be
    pop hl                                        ; $6cc9: $e1
    db $10                                        ; $6cca: $10
    sub b                                         ; $6ccb: $90
    dec b                                         ; $6ccc: $05
    sub l                                         ; $6ccd: $95
    dec d                                         ; $6cce: $15
    push de                                       ; $6ccf: $d5
    dec c                                         ; $6cd0: $0d
    db $dd                                        ; $6cd1: $dd
    rla                                           ; $6cd2: $17
    rst $10                                       ; $6cd3: $d7
    rrca                                          ; $6cd4: $0f
    rst $38                                       ; $6cd5: $ff
    rla                                           ; $6cd6: $17

jr_0f5_6cd7:
    rst $38                                       ; $6cd7: $ff
    rrca                                          ; $6cd8: $0f
    rst $38                                       ; $6cd9: $ff
    rla                                           ; $6cda: $17
    rst $38                                       ; $6cdb: $ff
    rrca                                          ; $6cdc: $0f
    rst $38                                       ; $6cdd: $ff
    rla                                           ; $6cde: $17
    rst $38                                       ; $6cdf: $ff
    rrca                                          ; $6ce0: $0f
    rst $38                                       ; $6ce1: $ff
    rla                                           ; $6ce2: $17
    rst $38                                       ; $6ce3: $ff
    rrca                                          ; $6ce4: $0f
    rst $38                                       ; $6ce5: $ff
    rla                                           ; $6ce6: $17
    rst $38                                       ; $6ce7: $ff
    rrca                                          ; $6ce8: $0f
    rst $38                                       ; $6ce9: $ff
    nop                                           ; $6cea: $00
    ld b, b                                       ; $6ceb: $40
    nop                                           ; $6cec: $00
    ld d, b                                       ; $6ced: $50
    ld [hl], b                                    ; $6cee: $70
    ld e, b                                       ; $6cef: $58
    or b                                          ; $6cf0: $b0
    db $f4                                        ; $6cf1: $f4
    sbc b                                         ; $6cf2: $98
    db $fd                                        ; $6cf3: $fd
    dec l                                         ; $6cf4: $2d
    rst $18                                       ; $6cf5: $df
    sub d                                         ; $6cf6: $92
    xor $97                                       ; $6cf7: $ee $97
    db $eb                                        ; $6cf9: $eb
    set 6, a                                      ; $6cfa: $cb $f7
    sbc d                                         ; $6cfc: $9a
    and $cd                                       ; $6cfd: $e6 $cd
    di                                            ; $6cff: $f3
    sbc c                                         ; $6d00: $99
    rst $20                                       ; $6d01: $e7
    ld d, e                                       ; $6d02: $53
    rst $28                                       ; $6d03: $ef
    cp e                                          ; $6d04: $bb
    rst $00                                       ; $6d05: $c7
    ld h, [hl]                                    ; $6d06: $66
    sbc a                                         ; $6d07: $9f
    add e                                         ; $6d08: $83
    xor $1f                                       ; $6d09: $ee $1f
    nop                                           ; $6d0b: $00
    ld [bc], a                                    ; $6d0c: $02
    ld bc, $0284                                  ; $6d0d: $01 $84 $02
    ld bc, $0003                                  ; $6d10: $01 $03 $00
    ld [bc], a                                    ; $6d13: $02
    ld [bc], a                                    ; $6d14: $02
    add l                                         ; $6d15: $85

jr_0f5_6d16:
    inc bc                                        ; $6d16: $03
    nop                                           ; $6d17: $00

jr_0f5_6d18:
    ld [bc], a                                    ; $6d18: $02
    nop                                           ; $6d19: $00
    ld [bc], a                                    ; $6d1a: $02
    inc b                                         ; $6d1b: $04
    nop                                           ; $6d1c: $00
    add [hl]                                      ; $6d1d: $86
    jr nc, jr_0f5_6d18                            ; $6d1e: $30 $f8

    ldh [$f0], a                                  ; $6d20: $e0 $f0
    add b                                         ; $6d22: $80
    ldh [rSC], a                                  ; $6d23: $e0 $02
    add b                                         ; $6d25: $80
    ld b, $00                                     ; $6d26: $06 $00
    sub b                                         ; $6d28: $90
    inc bc                                        ; $6d29: $03
    rlca                                          ; $6d2a: $07
    ld bc, $0607                                  ; $6d2b: $01 $07 $06
    ld bc, $f867                                  ; $6d2e: $01 $67 $f8
    ld a, [hl-]                                   ; $6d31: $3a
    ld a, l                                       ; $6d32: $7d
    ld c, $3f                                     ; $6d33: $0e $3f
    inc bc                                        ; $6d35: $03
    rrca                                          ; $6d36: $0f
    ld [bc], a                                    ; $6d37: $02
    inc bc                                        ; $6d38: $03
    stop                                          ; $6d39: $10 $00
    add d                                         ; $6d3b: $82
    add sp, -$29                                  ; $6d3c: $e8 $d7
    ld [bc], a                                    ; $6d3e: $02
    rst $38                                       ; $6d3f: $ff
    adc c                                         ; $6d40: $89
    cp l                                          ; $6d41: $bd
    rst $38                                       ; $6d42: $ff
    push bc                                       ; $6d43: $c5
    ld a, [hl-]                                   ; $6d44: $3a
    cp a                                          ; $6d45: $bf
    ld b, b                                       ; $6d46: $40
    dec b                                         ; $6d47: $05
    ld a, [$03c8]                                 ; $6d48: $fa $c8 $03
    rst $38                                       ; $6d4b: $ff
    add d                                         ; $6d4c: $82
    ld [bc], a                                    ; $6d4d: $02
    rst $38                                       ; $6d4e: $ff
    ld c, $00                                     ; $6d4f: $0e $00
    sub d                                         ; $6d51: $92
    inc e                                         ; $6d52: $1c
    ld a, h                                       ; $6d53: $7c
    ld a, b                                       ; $6d54: $78
    ld a, h                                       ; $6d55: $7c
    ld c, b                                       ; $6d56: $48
    ld [hl], h                                    ; $6d57: $74
    dec a                                         ; $6d58: $3d
    ld b, d                                       ; $6d59: $42
    ld [hl], c                                    ; $6d5a: $71
    rrca                                          ; $6d5b: $0f
    ld c, a                                       ; $6d5c: $4f
    ccf                                           ; $6d5d: $3f
    ld a, $7f                                     ; $6d5e: $3e $7f
    ld [hl], b                                    ; $6d60: $70
    ld a, [hl]                                    ; $6d61: $7e
    nop                                           ; $6d62: $00
    ld [hl], b                                    ; $6d63: $70
    ld c, $00                                     ; $6d64: $0e $00
    rst $38                                       ; $6d66: $ff
    dec d                                         ; $6d67: $15
    ld [$07fa], sp                                ; $6d68: $08 $fa $07
    db $fd                                        ; $6d6b: $fd
    ld a, [bc]                                    ; $6d6c: $0a
    dec b                                         ; $6d6d: $05
    rst $28                                       ; $6d6e: $ef
    inc bc                                        ; $6d6f: $03
    rst $30                                       ; $6d70: $f7
    inc b                                         ; $6d71: $04
    rst $38                                       ; $6d72: $ff
    inc bc                                        ; $6d73: $03
    rlca                                          ; $6d74: $07
    rlca                                          ; $6d75: $07
    dec bc                                        ; $6d76: $0b
    inc de                                        ; $6d77: $13
    push af                                       ; $6d78: $f5
    inc de                                        ; $6d79: $13
    db $fd                                        ; $6d7a: $fd
    inc de                                        ; $6d7b: $13
    inc bc                                        ; $6d7c: $03
    add d                                         ; $6d7d: $82
    dec b                                         ; $6d7e: $05
    dec c                                         ; $6d7f: $0d
    ld [bc], a                                    ; $6d80: $02
    inc c                                         ; $6d81: $0c
    sbc h                                         ; $6d82: $9c
    dec de                                        ; $6d83: $1b
    inc de                                        ; $6d84: $13
    ld d, $1f                                     ; $6d85: $16 $1f
    add hl, bc                                    ; $6d87: $09
    ld c, $19                                     ; $6d88: $0e $19
    ld e, [hl]                                    ; $6d8a: $5e
    ld e, e                                       ; $6d8b: $5b
    ld e, h                                       ; $6d8c: $5c
    xor e                                         ; $6d8d: $ab
    db $ec                                        ; $6d8e: $ec
    scf                                           ; $6d8f: $37
    ld a, b                                       ; $6d90: $78
    inc sp                                        ; $6d91: $33
    ld a, h                                       ; $6d92: $7c
    dec de                                        ; $6d93: $1b
    inc a                                         ; $6d94: $3c
    dec d                                         ; $6d95: $15
    ld a, [hl-]                                   ; $6d96: $3a
    add hl, bc                                    ; $6d97: $09
    ld e, $0c                                     ; $6d98: $1e $0c
    rra                                           ; $6d9a: $1f
    ld b, $0f                                     ; $6d9b: $06 $0f
    inc bc                                        ; $6d9d: $03
    rlca                                          ; $6d9e: $07
    ld [bc], a                                    ; $6d9f: $02
    add b                                         ; $6da0: $80
    cp [hl]                                       ; $6da1: $be
    ld d, b                                       ; $6da2: $50
    ret nc                                        ; $6da3: $d0

    ldh [$64], a                                  ; $6da4: $e0 $64
    or c                                          ; $6da6: $b1
    db $f4                                        ; $6da7: $f4
    db $10                                        ; $6da8: $10
    push af                                       ; $6da9: $f5
    reti                                          ; $6daa: $d9


    inc a                                         ; $6dab: $3c
    or b                                          ; $6dac: $b0
    ld [hl], l                                    ; $6dad: $75
    add hl, sp                                    ; $6dae: $39
    cp $70                                        ; $6daf: $fe $70
    rst $38                                       ; $6db1: $ff
    add hl, sp                                    ; $6db2: $39
    cp $70                                        ; $6db3: $fe $70
    rst $38                                       ; $6db5: $ff
    cp c                                          ; $6db6: $b9
    ld a, [hl]                                    ; $6db7: $7e
    ld d, b                                       ; $6db8: $50
    rst $38                                       ; $6db9: $ff
    cp l                                          ; $6dba: $bd
    ld a, [hl]                                    ; $6dbb: $7e
    rst $10                                       ; $6dbc: $d7
    ccf                                           ; $6dbd: $3f
    jp hl                                         ; $6dbe: $e9


    rla                                           ; $6dbf: $17
    nop                                           ; $6dc0: $00
    ld [bc], a                                    ; $6dc1: $02
    ld b, b                                       ; $6dc2: $40
    ld [$0248], sp                                ; $6dc3: $08 $48 $02
    ld h, b                                       ; $6dc6: $60
    ld a, [bc]                                    ; $6dc7: $0a
    ld l, b                                       ; $6dc8: $68
    add [hl]                                      ; $6dc9: $86
    ld h, b                                       ; $6dca: $60
    dec bc                                        ; $6dcb: $0b
    ld l, c                                       ; $6dcc: $69
    rla                                           ; $6dcd: $17
    ldh a, [rIF]                                  ; $6dce: $f0 $0f
    ld l, c                                       ; $6dd0: $69
    sub a                                         ; $6dd1: $97
    ldh a, [rIF]                                  ; $6dd2: $f0 $0f
    ld l, c                                       ; $6dd4: $69
    sub a                                         ; $6dd5: $97
    ldh a, [rIF]                                  ; $6dd6: $f0 $0f
    ld l, e                                       ; $6dd8: $6b
    sub a                                         ; $6dd9: $97
    db $fd                                        ; $6dda: $fd
    rst $38                                       ; $6ddb: $ff
    ld d, e                                       ; $6ddc: $53
    db $fc                                        ; $6ddd: $fc
    ld d, a                                       ; $6dde: $57
    xor b                                         ; $6ddf: $a8
    ld [bc], a                                    ; $6de0: $02
    db $10                                        ; $6de1: $10
    sbc [hl]                                      ; $6de2: $9e
    and b                                         ; $6de3: $a0
    or b                                          ; $6de4: $b0
    ld a, [hl-]                                   ; $6de5: $3a
    dec hl                                        ; $6de6: $2b
    sub e                                         ; $6de7: $93
    or e                                          ; $6de8: $b3
    adc l                                         ; $6de9: $8d
    cp h                                          ; $6dea: $bc
    or [hl]                                       ; $6deb: $b6
    adc a                                         ; $6dec: $8f
    sbc c                                         ; $6ded: $99
    and a                                         ; $6dee: $a7
    adc c                                         ; $6def: $89
    or a                                          ; $6df0: $b7
    db $ed                                        ; $6df1: $ed
    di                                            ; $6df2: $f3
    call $eef3                                    ; $6df3: $cd $f3 $ee
    pop af                                        ; $6df6: $f1
    call c, $ade3                                 ; $6df7: $dc $e3 $ad
    di                                            ; $6dfa: $f3
    ret c                                         ; $6dfb: $d8

    rst $20                                       ; $6dfc: $e7
    ld a, e                                       ; $6dfd: $7b
    add a                                         ; $6dfe: $87
    ld [hl], e                                    ; $6dff: $73
    adc a                                         ; $6e00: $8f
    inc b                                         ; $6e01: $04
    ld [$0002], sp                                ; $6e02: $08 $02 $00
    add c                                         ; $6e05: $81
    ld [$0a03], sp                                ; $6e06: $08 $03 $0a
    sub h                                         ; $6e09: $94
    rlca                                          ; $6e0a: $07
    dec b                                         ; $6e0b: $05
    inc c                                         ; $6e0c: $0c
    ld c, $0c                                     ; $6e0d: $0e $0c
    ld c, $08                                     ; $6e0f: $0e $08
    inc c                                         ; $6e11: $0c
    ld [$000c], sp                                ; $6e12: $08 $0c $00
    ld [$0800], sp                                ; $6e15: $08 $00 $08
    ld h, b                                       ; $6e18: $60
    ldh a, [$c0]                                  ; $6e19: $f0 $c0
    ldh [rP1], a                                  ; $6e1b: $e0 $00
    ret nz                                        ; $6e1d: $c0

    ld [bc], a                                    ; $6e1e: $02
    nop                                           ; $6e1f: $00
    add e                                         ; $6e20: $83
    rra                                           ; $6e21: $1f
    jr nz, jr_0f5_6e47                            ; $6e22: $20 $23

    ld [bc], a                                    ; $6e24: $02
    inc a                                         ; $6e25: $3c
    add a                                         ; $6e26: $87
    rst $38                                       ; $6e27: $ff
    rlca                                          ; $6e28: $07
    ccf                                           ; $6e29: $3f
    inc bc                                        ; $6e2a: $03
    rrca                                          ; $6e2b: $0f
    nop                                           ; $6e2c: $00
    inc bc                                        ; $6e2d: $03
    inc d                                         ; $6e2e: $14
    nop                                           ; $6e2f: $00
    add e                                         ; $6e30: $83
    ld b, b                                       ; $6e31: $40
    add b                                         ; $6e32: $80
    rst $38                                       ; $6e33: $ff
    ld [bc], a                                    ; $6e34: $02
    nop                                           ; $6e35: $00
    add d                                         ; $6e36: $82
    rst $38                                       ; $6e37: $ff
    db $ed                                        ; $6e38: $ed
    inc bc                                        ; $6e39: $03
    rst $38                                       ; $6e3a: $ff
    add d                                         ; $6e3b: $82
    nop                                           ; $6e3c: $00
    rst $38                                       ; $6e3d: $ff
    inc d                                         ; $6e3e: $14
    nop                                           ; $6e3f: $00
    add e                                         ; $6e40: $83
    ld [$2707], sp                                ; $6e41: $08 $07 $27
    ld [bc], a                                    ; $6e44: $02
    rra                                           ; $6e45: $1f
    add a                                         ; $6e46: $87

jr_0f5_6e47:
    ccf                                           ; $6e47: $3f
    jr nc, jr_0f5_6e89                            ; $6e48: $30 $3f

    jr nz, jr_0f5_6e88                            ; $6e4a: $20 $3c

    nop                                           ; $6e4c: $00
    jr nz, jr_0f5_6e63                            ; $6e4d: $20 $14

    nop                                           ; $6e4f: $00
    rst $38                                       ; $6e50: $ff
    dec d                                         ; $6e51: $15

jr_0f5_6e52:
    ld [$07fa], sp                                ; $6e52: $08 $fa $07
    db $fd                                        ; $6e55: $fd
    ld a, [bc]                                    ; $6e56: $0a
    dec b                                         ; $6e57: $05
    ld a, [c]                                     ; $6e58: $f2
    inc b                                         ; $6e59: $04
    ld a, [$0204]                                 ; $6e5a: $fa $04 $02
    dec b                                         ; $6e5d: $05
    ld [$f314], sp                                ; $6e5e: $08 $14 $f3
    inc d                                         ; $6e61: $14
    ei                                            ; $6e62: $fb

jr_0f5_6e63:
    inc d                                         ; $6e63: $14
    inc bc                                        ; $6e64: $03
    inc d                                         ; $6e65: $14
    rlca                                          ; $6e66: $07
    ld [bc], a                                    ; $6e67: $02
    inc b                                         ; $6e68: $04
    ld [bc], a                                    ; $6e69: $02
    rlca                                          ; $6e6a: $07
    sbc h                                         ; $6e6b: $9c

jr_0f5_6e6c:
    dec b                                         ; $6e6c: $05
    rlca                                          ; $6e6d: $07
    ld e, $1d                                     ; $6e6e: $1e $1d
    ld c, c                                       ; $6e70: $49
    ld c, [hl]                                    ; $6e71: $4e
    ld e, e                                       ; $6e72: $5b
    ld a, h                                       ; $6e73: $7c
    ld l, $33                                     ; $6e74: $2e $33
    push de                                       ; $6e76: $d5
    db $eb                                        ; $6e77: $eb
    ld c, e                                       ; $6e78: $4b
    ld a, h                                       ; $6e79: $7c
    ld a, e                                       ; $6e7a: $7b
    ld l, h                                       ; $6e7b: $6c
    daa                                           ; $6e7c: $27
    jr c, jr_0f5_6e52                             ; $6e7d: $38 $d3

    db $fd                                        ; $6e7f: $fd
    sbc e                                         ; $6e80: $9b
    db $dd                                        ; $6e81: $dd
    dec d                                         ; $6e82: $15
    ld e, $3a                                     ; $6e83: $1e $3a
    dec a                                         ; $6e85: $3d
    ld l, a                                       ; $6e86: $6f
    ld l, b                                       ; $6e87: $68

jr_0f5_6e88:
    ld [bc], a                                    ; $6e88: $02

jr_0f5_6e89:
    db $10                                        ; $6e89: $10
    ld [bc], a                                    ; $6e8a: $02
    add hl, sp                                    ; $6e8b: $39
    adc e                                         ; $6e8c: $8b
    jp c, $2dfb                                   ; $6e8d: $da $fb $2d

    sbc $c4                                       ; $6e90: $de $c4
    cp e                                          ; $6e92: $bb
    rlca                                          ; $6e93: $07
    rst $38                                       ; $6e94: $ff
    jr z, jr_0f5_6eff                             ; $6e95: $28 $68

    nop                                           ; $6e97: $00
    inc bc                                        ; $6e98: $03
    add b                                         ; $6e99: $80
    inc bc                                        ; $6e9a: $03
    nop                                           ; $6e9b: $00
    add c                                         ; $6e9c: $81
    add b                                         ; $6e9d: $80
    inc bc                                        ; $6e9e: $03
    ld b, b                                       ; $6e9f: $40
    add a                                         ; $6ea0: $87
    ret nz                                        ; $6ea1: $c0

    ld d, $d6                                     ; $6ea2: $16 $d6
    dec e                                         ; $6ea4: $1d
    rst $38                                       ; $6ea5: $ff
    and h                                         ; $6ea6: $a4
    ei                                            ; $6ea7: $fb
    ld [bc], a                                    ; $6ea8: $02
    jr nc, @-$60                                  ; $6ea9: $30 $9e

    ld c, b                                       ; $6eab: $48
    ld a, b                                       ; $6eac: $78
    rst $28                                       ; $6ead: $ef
    rst $18                                       ; $6eae: $df
    dec sp                                        ; $6eaf: $3b
    rst $00                                       ; $6eb0: $c7
    dec b                                         ; $6eb1: $05
    ld a, [$dd82]                                 ; $6eb2: $fa $82 $dd
    dec hl                                        ; $6eb5: $2b
    inc a                                         ; $6eb6: $3c
    add hl, bc                                    ; $6eb7: $09
    rrca                                          ; $6eb8: $0f
    ld b, $07                                     ; $6eb9: $06 $07
    dec b                                         ; $6ebb: $05
    ld b, $0f                                     ; $6ebc: $06 $0f
    inc c                                         ; $6ebe: $0c
    ld bc, $9b06                                  ; $6ebf: $01 $06 $9b
    sbc [hl]                                      ; $6ec2: $9e
    ld h, a                                       ; $6ec3: $67
    xor $52                                       ; $6ec4: $ee $52
    db $fd                                        ; $6ec6: $fd
    dec e                                         ; $6ec7: $1d
    cp $06                                        ; $6ec8: $fe $06
    jr nz, jr_0f5_6ece                            ; $6eca: $20 $02

    jr c, jr_0f5_6e6c                             ; $6ecc: $38 $9e

jr_0f5_6ece:
    ld [de], a                                    ; $6ece: $12
    ld [hl-], a                                   ; $6ecf: $32
    ld a, [de]                                    ; $6ed0: $1a
    ld a, $34                                     ; $6ed1: $3e $34
    inc c                                         ; $6ed3: $0c
    dec hl                                        ; $6ed4: $2b
    rla                                           ; $6ed5: $17
    ld [de], a                                    ; $6ed6: $12
    ld a, $1e                                     ; $6ed7: $3e $1e
    ld [hl], $24                                  ; $6ed9: $36 $24
    inc e                                         ; $6edb: $1c
    dec bc                                        ; $6edc: $0b
    ccf                                           ; $6edd: $3f
    add hl, de                                    ; $6ede: $19
    dec sp                                        ; $6edf: $3b
    jr z, jr_0f5_6f1a                             ; $6ee0: $28 $38

    inc e                                         ; $6ee2: $1c
    inc a                                         ; $6ee3: $3c
    or $16                                        ; $6ee4: $f6 $16
    nop                                           ; $6ee6: $00
    ld bc, $feb1                                  ; $6ee7: $01 $b1 $fe
    ld c, [hl]                                    ; $6eea: $4e
    ld e, a                                       ; $6eeb: $5f
    ld [bc], a                                    ; $6eec: $02
    rra                                           ; $6eed: $1f
    ld [bc], a                                    ; $6eee: $02
    dec bc                                        ; $6eef: $0b
    ld [bc], a                                    ; $6ef0: $02
    jr jr_0f5_6f07                                ; $6ef1: $18 $14

    nop                                           ; $6ef3: $00
    adc h                                         ; $6ef4: $8c
    cp e                                          ; $6ef5: $bb
    ld b, a                                       ; $6ef6: $47
    sbc c                                         ; $6ef7: $99
    ld h, a                                       ; $6ef8: $67
    jp Jump_000_2dfc                              ; $6ef9: $c3 $fc $2d


    ld a, $a4                                     ; $6efc: $3e $a4
    and a                                         ; $6efe: $a7

jr_0f5_6eff:
    and e                                         ; $6eff: $a3
    or e                                          ; $6f00: $b3
    ld [bc], a                                    ; $6f01: $02
    ld [bc], a                                    ; $6f02: $02
    ld [de], a                                    ; $6f03: $12
    nop                                           ; $6f04: $00
    adc d                                         ; $6f05: $8a
    ret nc                                        ; $6f06: $d0

jr_0f5_6f07:
    ld hl, sp+$38                                 ; $6f07: $f8 $38
    rst $00                                       ; $6f09: $c7
    ld [hl], a                                    ; $6f0a: $77
    adc a                                         ; $6f0b: $8f
    call Call_000_1c35                            ; $6f0c: $cd $35 $1c
    db $fc                                        ; $6f0f: $fc
    ld [bc], a                                    ; $6f10: $02
    adc b                                         ; $6f11: $88
    ld [bc], a                                    ; $6f12: $02
    ld b, b                                       ; $6f13: $40
    inc d                                         ; $6f14: $14
    nop                                           ; $6f15: $00
    add d                                         ; $6f16: $82
    dec b                                         ; $6f17: $05
    rlca                                          ; $6f18: $07
    ld [bc], a                                    ; $6f19: $02

jr_0f5_6f1a:
    nop                                           ; $6f1a: $00
    ld [bc], a                                    ; $6f1b: $02
    ld [$0018], sp                                ; $6f1c: $08 $18 $00
    rst $38                                       ; $6f1f: $ff
    rla                                           ; $6f20: $17
    add hl, bc                                    ; $6f21: $09
    ld a, [$fd07]                                 ; $6f22: $fa $07 $fd
    ld a, [bc]                                    ; $6f25: $0a
    inc b                                         ; $6f26: $04
    pop af                                        ; $6f27: $f1
    cp $f9                                        ; $6f28: $fe $f9
    cp $01                                        ; $6f2a: $fe $01
    rst $38                                       ; $6f2c: $ff
    add hl, bc                                    ; $6f2d: $09
    dec b                                         ; $6f2e: $05
    ld a, [bc]                                    ; $6f2f: $0a
    ld c, $f0                                     ; $6f30: $0e $f0
    ld c, $f9                                     ; $6f32: $0e $f9
    ld c, $01                                     ; $6f34: $0e $01
    ld c, $06                                     ; $6f36: $0e $06
    adc b                                         ; $6f38: $88
    db $db                                        ; $6f39: $db
    ei                                            ; $6f3a: $fb
    dec h                                         ; $6f3b: $25
    ld l, a                                       ; $6f3c: $6f
    add hl, bc                                    ; $6f3d: $09
    scf                                           ; $6f3e: $37
    ld c, $05                                     ; $6f3f: $0e $05
    ld [bc], a                                    ; $6f41: $02
    inc b                                         ; $6f42: $04
    ld [bc], a                                    ; $6f43: $02
    db $10                                        ; $6f44: $10
    adc h                                         ; $6f45: $8c
    ld d, $1f                                     ; $6f46: $16 $1f
    ld [hl], c                                    ; $6f48: $71
    ld [hl], a                                    ; $6f49: $77
    ld l, [hl]                                    ; $6f4a: $6e
    ld a, b                                       ; $6f4b: $78
    or h                                          ; $6f4c: $b4
    call z, $a746                                 ; $6f4d: $cc $46 $a7
    ld [bc], a                                    ; $6f50: $02
    inc bc                                        ; $6f51: $03
    ld [bc], a                                    ; $6f52: $02
    rlca                                          ; $6f53: $07
    add [hl]                                      ; $6f54: $86
    inc c                                         ; $6f55: $0c
    ld a, [bc]                                    ; $6f56: $0a
    ld [bc], a                                    ; $6f57: $02
    dec b                                         ; $6f58: $05
    jr nc, jr_0f5_6f83                            ; $6f59: $30 $28

    ld [bc], a                                    ; $6f5b: $02
    and b                                         ; $6f5c: $a0
    sub e                                         ; $6f5d: $93
    ld d, b                                       ; $6f5e: $50
    ld [hl], b                                    ; $6f5f: $70
    and b                                         ; $6f60: $a0
    ret nc                                        ; $6f61: $d0

    ld c, [hl]                                    ; $6f62: $4e
    ld a, [hl]                                    ; $6f63: $7e
    ld c, d                                       ; $6f64: $4a
    ld d, [hl]                                    ; $6f65: $56
    inc e                                         ; $6f66: $1c
    jr nc, jr_0f5_6f89                            ; $6f67: $30 $20

    inc e                                         ; $6f69: $1c
    add b                                         ; $6f6a: $80
    pop bc                                        ; $6f6b: $c1
    ld b, b                                       ; $6f6c: $40
    ret nz                                        ; $6f6d: $c0

    cp b                                          ; $6f6e: $b8
    ld a, b                                       ; $6f6f: $78
    add b                                         ; $6f70: $80
    inc bc                                        ; $6f71: $03
    nop                                           ; $6f72: $00
    inc bc                                        ; $6f73: $03
    ld b, b                                       ; $6f74: $40
    add c                                         ; $6f75: $81
    add b                                         ; $6f76: $80
    ld [bc], a                                    ; $6f77: $02
    nop                                           ; $6f78: $00
    add d                                         ; $6f79: $82
    ret nz                                        ; $6f7a: $c0

    ld [hl], b                                    ; $6f7b: $70
    ld [bc], a                                    ; $6f7c: $02
    ld bc, $0e92                                  ; $6f7d: $01 $92 $0e
    rrca                                          ; $6f80: $0f
    add hl, bc                                    ; $6f81: $09
    rrca                                          ; $6f82: $0f

jr_0f5_6f83:
    inc a                                         ; $6f83: $3c
    ccf                                           ; $6f84: $3f
    ld d, d                                       ; $6f85: $52
    ld a, d                                       ; $6f86: $7a
    or h                                          ; $6f87: $b4
    ld sp, hl                                     ; $6f88: $f9

jr_0f5_6f89:
    add hl, sp                                    ; $6f89: $39
    ret z                                         ; $6f8a: $c8

    add hl, de                                    ; $6f8b: $19
    sbc e                                         ; $6f8c: $9b
    nop                                           ; $6f8d: $00
    ld [bc], a                                    ; $6f8e: $02
    ld bc, $0207                                  ; $6f8f: $01 $07 $02
    ld bc, $0003                                  ; $6f92: $01 $03 $00
    add c                                         ; $6f95: $81
    ld bc, $0002                                  ; $6f96: $01 $02 $00
    add c                                         ; $6f99: $81
    inc b                                         ; $6f9a: $04
    ld [bc], a                                    ; $6f9b: $02
    inc bc                                        ; $6f9c: $03
    add e                                         ; $6f9d: $83
    inc b                                         ; $6f9e: $04
    nop                                           ; $6f9f: $00
    add b                                         ; $6fa0: $80
    inc bc                                        ; $6fa1: $03
    nop                                           ; $6fa2: $00
    add e                                         ; $6fa3: $83
    ld b, b                                       ; $6fa4: $40
    nop                                           ; $6fa5: $00
    ld b, b                                       ; $6fa6: $40
    ld [bc], a                                    ; $6fa7: $02
    ret nz                                        ; $6fa8: $c0

    ld [bc], a                                    ; $6fa9: $02
    jp z, Jump_000_038a                           ; $6faa: $ca $8a $03

    rrca                                          ; $6fad: $0f
    ld c, h                                       ; $6fae: $4c
    ld [hl], c                                    ; $6faf: $71
    inc [hl]                                      ; $6fb0: $34
    call z, $9c6e                                 ; $6fb1: $cc $6e $9c
    rst $00                                       ; $6fb4: $c7
    rst $08                                       ; $6fb5: $cf
    dec b                                         ; $6fb6: $05
    nop                                           ; $6fb7: $00
    add a                                         ; $6fb8: $87
    jr nz, jr_0f5_6f83                            ; $6fb9: $20 $c8

    or h                                          ; $6fbb: $b4
    ld [hl], $5a                                  ; $6fbc: $36 $5a
    nop                                           ; $6fbe: $00
    ld bc, $0002                                  ; $6fbf: $01 $02 $00
    ld [bc], a                                    ; $6fc2: $02
    ld bc, $000f                                  ; $6fc3: $01 $0f $00
    add c                                         ; $6fc6: $81
    ld [$0003], sp                                ; $6fc7: $08 $03 $00
    ld [bc], a                                    ; $6fca: $02
    add b                                         ; $6fcb: $80
    add l                                         ; $6fcc: $85
    ret nz                                        ; $6fcd: $c0

    ld h, b                                       ; $6fce: $60
    ret nc                                        ; $6fcf: $d0

    sub b                                         ; $6fd0: $90
    ldh [rSC], a                                  ; $6fd1: $e0 $02
    add b                                         ; $6fd3: $80
    ld a, [bc]                                    ; $6fd4: $0a
    nop                                           ; $6fd5: $00
    add c                                         ; $6fd6: $81
    inc b                                         ; $6fd7: $04
    inc bc                                        ; $6fd8: $03
    ld [$0010], sp                                ; $6fd9: $08 $10 $00
    add l                                         ; $6fdc: $85
    ret nc                                        ; $6fdd: $d0

    ld h, d                                       ; $6fde: $62
    ld b, d                                       ; $6fdf: $42
    xor h                                         ; $6fe0: $ac
    or b                                          ; $6fe1: $b0
    ld [bc], a                                    ; $6fe2: $02
    ld c, b                                       ; $6fe3: $48
    adc a                                         ; $6fe4: $8f
    ld sp, hl                                     ; $6fe5: $f9
    ld a, c                                       ; $6fe6: $79
    ld a, [$7132]                                 ; $6fe7: $fa $32 $71
    ret nc                                        ; $6fea: $d0

    di                                            ; $6feb: $f3
    ld b, h                                       ; $6fec: $44
    ld h, e                                       ; $6fed: $63
    ld b, h                                       ; $6fee: $44
    ld h, a                                       ; $6fef: $67
    ld h, h                                       ; $6ff0: $64
    ld h, a                                       ; $6ff1: $67
    inc b                                         ; $6ff2: $04
    ld b, $0c                                     ; $6ff3: $06 $0c
    nop                                           ; $6ff5: $00
    adc [hl]                                      ; $6ff6: $8e
    dec b                                         ; $6ff7: $05
    ld [bc], a                                    ; $6ff8: $02
    nop                                           ; $6ff9: $00
    inc d                                         ; $6ffa: $14
    ld a, [hl-]                                   ; $6ffb: $3a
    rst $08                                       ; $6ffc: $cf
    ld b, c                                       ; $6ffd: $41
    ld l, [hl]                                    ; $6ffe: $6e
    ld b, a                                       ; $6fff: $47
    adc a                                         ; $7000: $8f
    ld c, a                                       ; $7001: $4f
    rst $08                                       ; $7002: $cf
    pop af                                        ; $7003: $f1
    di                                            ; $7004: $f3
    ld [bc], a                                    ; $7005: $02
    pop hl                                        ; $7006: $e1
    ld [bc], a                                    ; $7007: $02
    ldh [rSC], a                                  ; $7008: $e0 $02
    jr nz, jr_0f5_701c                            ; $700a: $20 $10

    nop                                           ; $700c: $00
    ld [bc], a                                    ; $700d: $02
    db $10                                        ; $700e: $10
    add c                                         ; $700f: $81
    nop                                           ; $7010: $00
    dec b                                         ; $7011: $05
    db $10                                        ; $7012: $10
    add d                                         ; $7013: $82
    ld a, [de]                                    ; $7014: $1a
    dec de                                        ; $7015: $1b
    ld [bc], a                                    ; $7016: $02
    inc c                                         ; $7017: $0c
    ld c, $00                                     ; $7018: $0e $00
    rst $38                                       ; $701a: $ff
    dec d                                         ; $701b: $15

jr_0f5_701c:
    ld [$07fa], sp                                ; $701c: $08 $fa $07
    db $fd                                        ; $701f: $fd
    ld a, [bc]                                    ; $7020: $0a
    db $fd                                        ; $7021: $fd

jr_0f5_7022:
    ldh a, [$fd]                                  ; $7022: $f0 $fd
    di                                            ; $7024: $f3
    db $fd                                        ; $7025: $fd
    db $fc                                        ; $7026: $fc
    db $fd                                        ; $7027: $fd
    ld a, [bc]                                    ; $7028: $0a
    inc bc                                        ; $7029: $03
    rrca                                          ; $702a: $0f
    dec c                                         ; $702b: $0d
    ldh a, [$0d]                                  ; $702c: $f0 $0d
    push af                                       ; $702e: $f5
    dec c                                         ; $702f: $0d
    ld [bc], a                                    ; $7030: $02
    add c                                         ; $7031: $81
    nop                                           ; $7032: $00
    ld [bc], a                                    ; $7033: $02
    ld bc, $0082                                  ; $7034: $01 $82 $00
    ld bc, $0007                                  ; $7037: $01 $07 $00
    adc b                                         ; $703a: $88
    jr c, jr_0f5_70b5                             ; $703b: $38 $78

    ld e, d                                       ; $703d: $5a
    xor $66                                       ; $703e: $ee $66
    ld a, [$6044]                                 ; $7040: $fa $44 $60
    ld a, [bc]                                    ; $7043: $0a
    nop                                           ; $7044: $00
    add l                                         ; $7045: $85
    jr z, jr_0f5_70c0                             ; $7046: $28 $78

    nop                                           ; $7048: $00
    inc b                                         ; $7049: $04
    dec b                                         ; $704a: $05
    ld [bc], a                                    ; $704b: $02
    inc bc                                        ; $704c: $03
    add e                                         ; $704d: $83
    dec b                                         ; $704e: $05
    ld [bc], a                                    ; $704f: $02
    ld bc, $0019                                  ; $7050: $01 $19 $00
    add e                                         ; $7053: $83
    inc bc                                        ; $7054: $03
    ld bc, $1c06                                  ; $7055: $01 $06 $1c
    nop                                           ; $7058: $00

jr_0f5_7059:
    adc b                                         ; $7059: $88
    db $10                                        ; $705a: $10
    jr nc, @+$52                                  ; $705b: $30 $50

    ldh [$60], a                                  ; $705d: $e0 $60
    sub b                                         ; $705f: $90
    and b                                         ; $7060: $a0
    ld d, b                                       ; $7061: $50
    rlca                                          ; $7062: $07
    nop                                           ; $7063: $00
    ld [bc], a                                    ; $7064: $02
    ld bc, $0381                                  ; $7065: $01 $81 $03
    ld [bc], a                                    ; $7068: $02
    ld bc, $0281                                  ; $7069: $01 $81 $02
    inc c                                         ; $706c: $0c
    nop                                           ; $706d: $00
    adc c                                         ; $706e: $89
    db $10                                        ; $706f: $10
    ld [bc], a                                    ; $7070: $02
    ld e, $1c                                     ; $7071: $1e $1c
    ld [bc], a                                    ; $7073: $02
    db $10                                        ; $7074: $10
    dec bc                                        ; $7075: $0b
    nop                                           ; $7076: $00
    ld [$000a], sp                                ; $7077: $08 $0a $00
    adc d                                         ; $707a: $8a
    ld h, b                                       ; $707b: $60
    ldh [rSVBK], a                                ; $707c: $e0 $70
    sub b                                         ; $707e: $90
    jr z, jr_0f5_7059                             ; $707f: $28 $d8

    jr c, jr_0f5_70cb                             ; $7081: $38 $48

    nop                                           ; $7083: $00
    jr jr_0f5_7088                                ; $7084: $18 $02

    nop                                           ; $7086: $00
    adc b                                         ; $7087: $88

jr_0f5_7088:
    jr c, jr_0f5_70f2                             ; $7088: $38 $68

    ld [hl], b                                    ; $708a: $70
    adc b                                         ; $708b: $88
    ld b, b                                       ; $708c: $40
    ret nz                                        ; $708d: $c0

    add b                                         ; $708e: $80
    ld b, b                                       ; $708f: $40
    ld e, $00                                     ; $7090: $1e $00
    adc c                                         ; $7092: $89
    ld bc, $0503                                  ; $7093: $01 $03 $05
    rlca                                          ; $7096: $07
    dec bc                                        ; $7097: $0b
    dec c                                         ; $7098: $0d
    ld a, [bc]                                    ; $7099: $0a
    inc e                                         ; $709a: $1c
    ld c, $02                                     ; $709b: $0e $02
    jr jr_0f5_7022                                ; $709d: $18 $83

    ld [$0810], sp                                ; $709f: $08 $10 $08
    ld [de], a                                    ; $70a2: $12
    nop                                           ; $70a3: $00
    adc [hl]                                      ; $70a4: $8e
    inc b                                         ; $70a5: $04
    inc c                                         ; $70a6: $0c
    ld a, [bc]                                    ; $70a7: $0a
    ld b, $0a                                     ; $70a8: $06 $0a
    ld d, $0c                                     ; $70aa: $16 $0c
    ld e, $15                                     ; $70ac: $1e $15
    dec bc                                        ; $70ae: $0b
    ld bc, $0203                                  ; $70af: $01 $03 $02
    ld bc, $000c                                  ; $70b2: $01 $0c $00

jr_0f5_70b5:
    rst $38                                       ; $70b5: $ff
    add hl, bc                                    ; $70b6: $09
    ld [bc], a                                    ; $70b7: $02
    ld a, [$f606]                                 ; $70b8: $fa $06 $f6
    inc bc                                        ; $70bb: $03
    ldh a, [rTIMA]                                ; $70bc: $f0 $05
    ldh a, [$08]                                  ; $70be: $f0 $08

jr_0f5_70c0:
    ld [bc], a                                    ; $70c0: $02
    ld c, $96                                     ; $70c1: $0e $96
    ld sp, $623f                                  ; $70c3: $31 $3f $62
    ld a, l                                       ; $70c6: $7d
    ld e, l                                       ; $70c7: $5d
    ld a, [hl]                                    ; $70c8: $7e
    add d                                         ; $70c9: $82
    rst $38                                       ; $70ca: $ff

jr_0f5_70cb:
    xor c                                         ; $70cb: $a9
    rst $10                                       ; $70cc: $d7
    sub l                                         ; $70cd: $95
    db $eb                                        ; $70ce: $eb
    xor h                                         ; $70cf: $ac
    db $d3                                        ; $70d0: $d3
    sbc d                                         ; $70d1: $9a
    push hl                                       ; $70d2: $e5
    ld c, l                                       ; $70d3: $4d
    ld [hl], d                                    ; $70d4: $72
    ld h, b                                       ; $70d5: $60
    ld a, a                                       ; $70d6: $7f
    ld sp, $023f                                  ; $70d7: $31 $3f $02
    ld c, $08                                     ; $70da: $0e $08
    nop                                           ; $70dc: $00
    ld [bc], a                                    ; $70dd: $02
    inc b                                         ; $70de: $04
    adc c                                         ; $70df: $89
    ld [bc], a                                    ; $70e0: $02
    ld b, $02                                     ; $70e1: $06 $02
    ld b, $05                                     ; $70e3: $06 $05
    inc bc                                        ; $70e5: $03
    ld bc, $0107                                  ; $70e6: $01 $07 $01
    inc bc                                        ; $70e9: $03
    rlca                                          ; $70ea: $07
    add e                                         ; $70eb: $83
    ld bc, $0207                                  ; $70ec: $01 $07 $02
    inc bc                                        ; $70ef: $03
    ld b, $02                                     ; $70f0: $06 $02

jr_0f5_70f2:
    inc b                                         ; $70f2: $04
    ld [$ff00], sp                                ; $70f3: $08 $00 $ff
    add hl, bc                                    ; $70f6: $09
    ld [bc], a                                    ; $70f7: $02
    ld a, [$f606]                                 ; $70f8: $fa $06 $f6
    inc bc                                        ; $70fb: $03
    ldh a, [rDIV]                                 ; $70fc: $f0 $04
    ldh a, [$09]                                  ; $70fe: $f0 $09
    ld [bc], a                                    ; $7100: $02
    rrca                                          ; $7101: $0f
    sub c                                         ; $7102: $91
    jr nc, jr_0f5_7144                            ; $7103: $30 $3f

    ld h, l                                       ; $7105: $65
    ld a, d                                       ; $7106: $7a
    ld b, d                                       ; $7107: $42
    ld a, l                                       ; $7108: $7d
    cp b                                          ; $7109: $b8
    rst $38                                       ; $710a: $ff
    add [hl]                                      ; $710b: $86
    rst $38                                       ; $710c: $ff
    sub c                                         ; $710d: $91
    rst $28                                       ; $710e: $ef
    cp c                                          ; $710f: $b9
    rst $00                                       ; $7110: $c7
    xor h                                         ; $7111: $ac
    db $d3                                        ; $7112: $d3
    ld d, l                                       ; $7113: $55
    ld [bc], a                                    ; $7114: $02
    ld l, d                                       ; $7115: $6a
    add e                                         ; $7116: $83
    ld [hl], l                                    ; $7117: $75
    jr nc, jr_0f5_7159                            ; $7118: $30 $3f

    ld [bc], a                                    ; $711a: $02
    rrca                                          ; $711b: $0f
    ld b, $00                                     ; $711c: $06 $00
    ld [bc], a                                    ; $711e: $02
    db $10                                        ; $711f: $10
    sub [hl]                                      ; $7120: $96
    inc c                                         ; $7121: $0c
    inc e                                         ; $7122: $1c
    ld b, $1e                                     ; $7123: $06 $1e
    ld [de], a                                    ; $7125: $12
    ld c, $09                                     ; $7126: $0e $09
    rla                                           ; $7128: $17
    dec d                                         ; $7129: $15
    dec bc                                        ; $712a: $0b
    add hl, bc                                    ; $712b: $09
    rla                                           ; $712c: $17
    ld bc, $111f                                  ; $712d: $01 $1f $11
    rra                                           ; $7130: $1f
    ld c, $1e                                     ; $7131: $0e $1e
    ld b, $1e                                     ; $7133: $06 $1e
    inc c                                         ; $7135: $0c
    inc e                                         ; $7136: $1c
    ld [bc], a                                    ; $7137: $02
    db $10                                        ; $7138: $10
    ld b, $00                                     ; $7139: $06 $00
    rst $38                                       ; $713b: $ff
    add hl, bc                                    ; $713c: $09
    ld [bc], a                                    ; $713d: $02
    ld a, [$f606]                                 ; $713e: $fa $06 $f6
    inc bc                                        ; $7141: $03
    pop af                                        ; $7142: $f1
    inc b                                         ; $7143: $04

jr_0f5_7144:
    pop af                                        ; $7144: $f1
    add hl, bc                                    ; $7145: $09
    ld [bc], a                                    ; $7146: $02
    rrca                                          ; $7147: $0f
    sub d                                         ; $7148: $92
    jr nc, jr_0f5_718a                            ; $7149: $30 $3f

    ld b, d                                       ; $714b: $42
    ld a, l                                       ; $714c: $7d
    ld c, l                                       ; $714d: $4d
    ld [hl], d                                    ; $714e: $72
    sub a                                         ; $714f: $97
    add sp, -$3f                                  ; $7150: $e8 $c1
    cp $bc                                        ; $7152: $fe $bc
    rst $38                                       ; $7154: $ff
    ld b, e                                       ; $7155: $43
    ld a, a                                       ; $7156: $7f
    ld c, h                                       ; $7157: $4c
    ld [hl], e                                    ; $7158: $73

jr_0f5_7159:
    jr nc, jr_0f5_719a                            ; $7159: $30 $3f

    ld [bc], a                                    ; $715b: $02
    rrca                                          ; $715c: $0f
    ld a, [bc]                                    ; $715d: $0a
    nop                                           ; $715e: $00
    ld [bc], a                                    ; $715f: $02
    db $10                                        ; $7160: $10
    sub d                                         ; $7161: $92
    inc c                                         ; $7162: $0c
    inc e                                         ; $7163: $1c
    ld [bc], a                                    ; $7164: $02
    ld e, $0a                                     ; $7165: $1e $0a
    ld d, $15                                     ; $7167: $16 $15
    dec bc                                        ; $7169: $0b
    add hl, bc                                    ; $716a: $09
    rla                                           ; $716b: $17
    add hl, bc                                    ; $716c: $09
    rla                                           ; $716d: $17
    ld [bc], a                                    ; $716e: $02
    ld e, $12                                     ; $716f: $1e $12
    ld e, $0c                                     ; $7171: $1e $0c
    inc e                                         ; $7173: $1c
    ld [bc], a                                    ; $7174: $02
    db $10                                        ; $7175: $10
    ld a, [bc]                                    ; $7176: $0a
    nop                                           ; $7177: $00
    rst $38                                       ; $7178: $ff
    add hl, bc                                    ; $7179: $09
    ld [bc], a                                    ; $717a: $02
    ld a, [$f606]                                 ; $717b: $fa $06 $f6
    inc bc                                        ; $717e: $03
    ldh a, [rDIV]                                 ; $717f: $f0 $04
    ldh a, [$09]                                  ; $7181: $f0 $09
    ld [bc], a                                    ; $7183: $02
    rrca                                          ; $7184: $0f
    sub [hl]                                      ; $7185: $96
    jr nc, @+$41                                  ; $7186: $30 $3f

    ld h, b                                       ; $7188: $60
    ld a, a                                       ; $7189: $7f

jr_0f5_718a:
    ld c, d                                       ; $718a: $4a
    ld [hl], l                                    ; $718b: $75
    sub l                                         ; $718c: $95
    ld [$f48b], a                                 ; $718d: $ea $8b $f4
    sub l                                         ; $7190: $95
    ld [$f788], a                                 ; $7191: $ea $88 $f7
    pop bc                                        ; $7194: $c1
    cp $78                                        ; $7195: $fe $78
    ld a, a                                       ; $7197: $7f
    ld h, a                                       ; $7198: $67
    ld a, a                                       ; $7199: $7f

jr_0f5_719a:
    jr nc, @+$41                                  ; $719a: $30 $3f

    ld [bc], a                                    ; $719c: $02
    rrca                                          ; $719d: $0f
    ld b, $00                                     ; $719e: $06 $00
    ld [bc], a                                    ; $71a0: $02
    db $10                                        ; $71a1: $10
    sub [hl]                                      ; $71a2: $96
    inc c                                         ; $71a3: $0c
    inc e                                         ; $71a4: $1c
    ld b, $1e                                     ; $71a5: $06 $1e
    ld [de], a                                    ; $71a7: $12
    ld c, $19                                     ; $71a8: $0e $19
    rlca                                          ; $71aa: $07
    dec d                                         ; $71ab: $15
    dec bc                                        ; $71ac: $0b
    add hl, bc                                    ; $71ad: $09
    rla                                           ; $71ae: $17
    dec d                                         ; $71af: $15
    dec bc                                        ; $71b0: $0b
    ld bc, $021f                                  ; $71b1: $01 $1f $02
    ld e, $16                                     ; $71b4: $1e $16
    ld e, $0c                                     ; $71b6: $1e $0c
    inc e                                         ; $71b8: $1c
    ld [bc], a                                    ; $71b9: $02
    db $10                                        ; $71ba: $10
    ld b, $00                                     ; $71bb: $06 $00
    rst $38                                       ; $71bd: $ff
    add hl, bc                                    ; $71be: $09
    ld [bc], a                                    ; $71bf: $02
    ld a, [$f606]                                 ; $71c0: $fa $06 $f6
    inc bc                                        ; $71c3: $03
    ldh a, [rTIMA]                                ; $71c4: $f0 $05
    ldh a, [$08]                                  ; $71c6: $f0 $08
    ld [bc], a                                    ; $71c8: $02
    ld c, $96                                     ; $71c9: $0e $96
    ld sp, $6e3f                                  ; $71cb: $31 $3f $6e
    ld a, a                                       ; $71ce: $7f
    ld b, c                                       ; $71cf: $41
    ld a, a                                       ; $71d0: $7f
    sub h                                         ; $71d1: $94
    db $eb                                        ; $71d2: $eb
    adc d                                         ; $71d3: $8a
    push af                                       ; $71d4: $f5
    sbc l                                         ; $71d5: $9d
    ld [c], a                                     ; $71d6: $e2
    xor d                                         ; $71d7: $aa
    push de                                       ; $71d8: $d5
    add l                                         ; $71d9: $85
    ld a, [$754a]                                 ; $71da: $fa $4a $75
    ld h, b                                       ; $71dd: $60
    ld a, a                                       ; $71de: $7f
    ld sp, $023f                                  ; $71df: $31 $3f $02
    ld c, $08                                     ; $71e2: $0e $08
    nop                                           ; $71e4: $00
    ld [bc], a                                    ; $71e5: $02
    inc b                                         ; $71e6: $04
    add c                                         ; $71e7: $81
    ld [bc], a                                    ; $71e8: $02
    inc bc                                        ; $71e9: $03
    ld b, $8b                                     ; $71ea: $06 $8b
    ld bc, $0107                                  ; $71ec: $01 $07 $01
    rlca                                          ; $71ef: $07
    ld bc, $0107                                  ; $71f0: $01 $07 $01
    rlca                                          ; $71f3: $07
    ld bc, $0207                                  ; $71f4: $01 $07 $02
    inc bc                                        ; $71f7: $03
    ld b, $02                                     ; $71f8: $06 $02
    inc b                                         ; $71fa: $04
    ld [$ff00], sp                                ; $71fb: $08 $00 $ff
    add hl, bc                                    ; $71fe: $09
    ld [bc], a                                    ; $71ff: $02
    ld a, [$f606]                                 ; $7200: $fa $06 $f6
    inc bc                                        ; $7203: $03
    or $fe                                        ; $7204: $f6 $fe
    or $02                                        ; $7206: $f6 $02
    ld [bc], a                                    ; $7208: $02
    ld e, $94                                     ; $7209: $1e $94
    ld hl, $5c3f                                  ; $720b: $21 $3f $5c
    ld a, a                                       ; $720e: $7f
    ld b, e                                       ; $720f: $43
    ld a, a                                       ; $7210: $7f
    add b                                         ; $7211: $80
    rst $38                                       ; $7212: $ff
    sub h                                         ; $7213: $94
    db $eb                                        ; $7214: $eb
    xor l                                         ; $7215: $ad
    jp nc, $e996                                  ; $7216: $d2 $96 $e9

    ld c, e                                       ; $7219: $4b
    ld [hl], h                                    ; $721a: $74
    ld b, h                                       ; $721b: $44
    ld a, e                                       ; $721c: $7b
    jr nc, jr_0f5_725e                            ; $721d: $30 $3f

    ld [bc], a                                    ; $721f: $02
    rrca                                          ; $7220: $0f
    ld a, [bc]                                    ; $7221: $0a
    nop                                           ; $7222: $00
    ld [bc], a                                    ; $7223: $02
    ld [$0490], sp                                ; $7224: $08 $90 $04
    inc c                                         ; $7227: $0c
    ld [bc], a                                    ; $7228: $02
    ld c, $0a                                     ; $7229: $0e $0a
    ld c, $05                                     ; $722b: $0e $05
    rrca                                          ; $722d: $0f
    dec b                                         ; $722e: $05
    rrca                                          ; $722f: $0f
    dec b                                         ; $7230: $05
    rrca                                          ; $7231: $0f
    dec b                                         ; $7232: $05
    rrca                                          ; $7233: $0f
    ld [bc], a                                    ; $7234: $02
    ld c, $02                                     ; $7235: $0e $02
    inc c                                         ; $7237: $0c
    ld a, [bc]                                    ; $7238: $0a
    nop                                           ; $7239: $00
    rst $38                                       ; $723a: $ff
    add hl, bc                                    ; $723b: $09
    ld [bc], a                                    ; $723c: $02
    ld a, [$f606]                                 ; $723d: $fa $06 $f6
    inc bc                                        ; $7240: $03
    ld a, [$fafc]                                 ; $7241: $fa $fc $fa
    ld bc, $0e02                                  ; $7244: $01 $02 $0e

jr_0f5_7247:
    adc [hl]                                      ; $7247: $8e
    ld [hl], c                                    ; $7248: $71
    ld a, a                                       ; $7249: $7f
    and d                                         ; $724a: $a2
    db $fd                                        ; $724b: $fd
    and l                                         ; $724c: $a5
    ld a, [$fc93]                                 ; $724d: $fa $93 $fc
    xor b                                         ; $7250: $a8
    rst $18                                       ; $7251: $df
    ld b, [hl]                                    ; $7252: $46
    ld a, a                                       ; $7253: $7f
    ld sp, $023f                                  ; $7254: $31 $3f $02
    rrca                                          ; $7257: $0f
    stop                                          ; $7258: $10 $00
    ld [bc], a                                    ; $725a: $02
    db $10                                        ; $725b: $10
    adc h                                         ; $725c: $8c
    inc c                                         ; $725d: $0c

jr_0f5_725e:
    inc e                                         ; $725e: $1c
    ld [bc], a                                    ; $725f: $02
    ld e, $13                                     ; $7260: $1e $13
    rrca                                          ; $7262: $0f
    ld [de], a                                    ; $7263: $12
    ld c, $06                                     ; $7264: $0e $06
    ld e, $0c                                     ; $7266: $1e $0c
    inc e                                         ; $7268: $1c
    ld [bc], a                                    ; $7269: $02
    db $10                                        ; $726a: $10
    ld c, $00                                     ; $726b: $0e $00
    rst $38                                       ; $726d: $ff
    add hl, bc                                    ; $726e: $09
    ld [bc], a                                    ; $726f: $02
    ld a, [$f606]                                 ; $7270: $fa $06 $f6
    inc bc                                        ; $7273: $03
    cp $fa                                        ; $7274: $fe $fa
    cp $ff                                        ; $7276: $fe $ff
    ld [bc], a                                    ; $7278: $02
    rrca                                          ; $7279: $0f
    adc b                                         ; $727a: $88
    ld [hl], b                                    ; $727b: $70
    ld a, a                                       ; $727c: $7f
    sub e                                         ; $727d: $93
    db $fc                                        ; $727e: $fc
    call z, Call_000_32ff                         ; $727f: $cc $ff $32
    ccf                                           ; $7282: $3f
    ld [bc], a                                    ; $7283: $02
    rrca                                          ; $7284: $0f
    inc d                                         ; $7285: $14
    nop                                           ; $7286: $00
    ld [bc], a                                    ; $7287: $02
    db $10                                        ; $7288: $10
    adc b                                         ; $7289: $88
    ld c, $1e                                     ; $728a: $0e $1e
    ld bc, $131f                                  ; $728c: $01 $1f $13
    rrca                                          ; $728f: $0f
    inc c                                         ; $7290: $0c
    inc e                                         ; $7291: $1c
    ld [bc], a                                    ; $7292: $02
    db $10                                        ; $7293: $10
    inc d                                         ; $7294: $14
    nop                                           ; $7295: $00
    rst $38                                       ; $7296: $ff
    add hl, bc                                    ; $7297: $09
    ld [bc], a                                    ; $7298: $02
    ld a, [$f606]                                 ; $7299: $fa $06 $f6
    inc bc                                        ; $729c: $03
    ld a, [$faf9]                                 ; $729d: $fa $f9 $fa
    cp $02                                        ; $72a0: $fe $02
    rrca                                          ; $72a2: $0f
    adc [hl]                                      ; $72a3: $8e
    jr nc, jr_0f5_72e5                            ; $72a4: $30 $3f

    ld b, l                                       ; $72a6: $45
    ld a, d                                       ; $72a7: $7a
    adc a                                         ; $72a8: $8f
    ldh a, [$95]                                  ; $72a9: $f0 $95
    ld [$f788], a                                 ; $72ab: $ea $88 $f7
    ld b, e                                       ; $72ae: $43
    ld a, a                                       ; $72af: $7f
    inc a                                         ; $72b0: $3c
    ccf                                           ; $72b1: $3f
    ld [bc], a                                    ; $72b2: $02
    rrca                                          ; $72b3: $0f
    ld c, $00                                     ; $72b4: $0e $00
    ld [bc], a                                    ; $72b6: $02
    jr jr_0f5_7247                                ; $72b7: $18 $8e

    ld b, $1e                                     ; $72b9: $06 $1e
    ld de, $150f                                  ; $72bb: $11 $0f $15
    rrca                                          ; $72be: $0f
    dec b                                         ; $72bf: $05
    rra                                           ; $72c0: $1f
    add hl, de                                    ; $72c1: $19
    rra                                           ; $72c2: $1f
    ld [bc], a                                    ; $72c3: $02
    ld e, $0c                                     ; $72c4: $1e $0c
    inc e                                         ; $72c6: $1c
    ld [bc], a                                    ; $72c7: $02
    db $10                                        ; $72c8: $10
    ld c, $00                                     ; $72c9: $0e $00
    rst $38                                       ; $72cb: $ff
    add hl, bc                                    ; $72cc: $09
    ld [bc], a                                    ; $72cd: $02
    ld a, [$f606]                                 ; $72ce: $fa $06 $f6
    inc bc                                        ; $72d1: $03
    or $f7                                        ; $72d2: $f6 $f7
    or $fb                                        ; $72d4: $f6 $fb
    ld [bc], a                                    ; $72d6: $02
    rlca                                          ; $72d7: $07
    sub h                                         ; $72d8: $94
    jr @+$21                                      ; $72d9: $18 $1f

    ld [hl+], a                                   ; $72db: $22
    dec a                                         ; $72dc: $3d
    ld b, l                                       ; $72dd: $45
    ld a, d                                       ; $72de: $7a
    ld c, d                                       ; $72df: $4a
    ld [hl], l                                    ; $72e0: $75
    sub l                                         ; $72e1: $95
    ld [$d5aa], a                                 ; $72e2: $ea $aa $d5

jr_0f5_72e5:
    sub [hl]                                      ; $72e5: $96
    jp hl                                         ; $72e6: $e9


    add c                                         ; $72e7: $81
    rst $38                                       ; $72e8: $ff
    ld c, [hl]                                    ; $72e9: $4e
    ld a, a                                       ; $72ea: $7f
    jr nc, jr_0f5_732c                            ; $72eb: $30 $3f

    ld [bc], a                                    ; $72ed: $02
    rrca                                          ; $72ee: $0f
    ld [$0200], sp                                ; $72ef: $08 $00 $02
    ld [$0492], sp                                ; $72f2: $08 $92 $04
    inc c                                         ; $72f5: $0c
    ld [bc], a                                    ; $72f6: $02
    ld c, $02                                     ; $72f7: $0e $02
    ld c, $05                                     ; $72f9: $0e $05
    rrca                                          ; $72fb: $0f
    dec b                                         ; $72fc: $05
    rrca                                          ; $72fd: $0f
    add hl, bc                                    ; $72fe: $09
    rrca                                          ; $72ff: $0f
    add hl, bc                                    ; $7300: $09
    rrca                                          ; $7301: $0f
    ld [bc], a                                    ; $7302: $02
    ld c, $02                                     ; $7303: $0e $02
    ld c, $02                                     ; $7305: $0e $02
    inc c                                         ; $7307: $0c
    ld a, [bc]                                    ; $7308: $0a
    nop                                           ; $7309: $00
    rst $38                                       ; $730a: $ff
    add hl, bc                                    ; $730b: $09
    ld [bc], a                                    ; $730c: $02
    ld a, [$f606]                                 ; $730d: $fa $06 $f6
    inc bc                                        ; $7310: $03
    ld a, [c]                                     ; $7311: $f2
    ldh a, [$f2]                                  ; $7312: $f0 $f2
    push af                                       ; $7314: $f5
    ld [bc], a                                    ; $7315: $02
    rrca                                          ; $7316: $0f
    sub [hl]                                      ; $7317: $96
    jr nc, jr_0f5_7359                            ; $7318: $30 $3f

    ld h, l                                       ; $731a: $65
    ld a, d                                       ; $731b: $7a
    ld c, d                                       ; $731c: $4a
    ld [hl], l                                    ; $731d: $75
    sbc l                                         ; $731e: $9d
    ld [c], a                                     ; $731f: $e2
    adc [hl]                                      ; $7320: $8e
    pop af                                        ; $7321: $f1
    sub h                                         ; $7322: $94
    db $eb                                        ; $7323: $eb
    adc d                                         ; $7324: $8a
    push af                                       ; $7325: $f5
    sub l                                         ; $7326: $95
    ld [$754a], a                                 ; $7327: $ea $4a $75
    ld h, b                                       ; $732a: $60
    ld a, a                                       ; $732b: $7f

jr_0f5_732c:
    jr nc, jr_0f5_736d                            ; $732c: $30 $3f

    ld [bc], a                                    ; $732e: $02
    rrca                                          ; $732f: $0f
    ld b, $00                                     ; $7330: $06 $00
    ld [bc], a                                    ; $7332: $02
    db $10                                        ; $7333: $10
    sub h                                         ; $7334: $94
    inc c                                         ; $7335: $0c
    inc e                                         ; $7336: $1c
    ld b, $1e                                     ; $7337: $06 $1e
    ld [bc], a                                    ; $7339: $02
    ld e, $05                                     ; $733a: $1e $05
    rra                                           ; $733c: $1f
    dec d                                         ; $733d: $15
    rrca                                          ; $733e: $0f
    dec b                                         ; $733f: $05
    rra                                           ; $7340: $1f
    dec b                                         ; $7341: $05
    rra                                           ; $7342: $1f
    add hl, bc                                    ; $7343: $09
    rra                                           ; $7344: $1f
    ld a, [bc]                                    ; $7345: $0a
    ld e, $16                                     ; $7346: $1e $16
    ld e, $02                                     ; $7348: $1e $02
    inc e                                         ; $734a: $1c
    ld [bc], a                                    ; $734b: $02
    db $10                                        ; $734c: $10
    ld b, $00                                     ; $734d: $06 $00
    rst $38                                       ; $734f: $ff
    add hl, bc                                    ; $7350: $09
    ld [bc], a                                    ; $7351: $02
    ld a, [$f606]                                 ; $7352: $fa $06 $f6
    inc bc                                        ; $7355: $03
    ld a, [c]                                     ; $7356: $f2
    pop af                                        ; $7357: $f1
    ld a, [c]                                     ; $7358: $f2

jr_0f5_7359:
    db $f4                                        ; $7359: $f4
    ld [bc], a                                    ; $735a: $02
    ld c, $96                                     ; $735b: $0e $96
    ld sp, $483f                                  ; $735d: $31 $3f $48
    ld [hl], a                                    ; $7360: $77
    ld d, [hl]                                    ; $7361: $56
    ld l, c                                       ; $7362: $69
    adc b                                         ; $7363: $88
    rst $30                                       ; $7364: $f7
    sbc l                                         ; $7365: $9d
    db $e3                                        ; $7366: $e3
    xor c                                         ; $7367: $a9
    rst $10                                       ; $7368: $d7
    sbc d                                         ; $7369: $9a
    rst $20                                       ; $736a: $e7
    sub d                                         ; $736b: $92
    rst $28                                       ; $736c: $ef

jr_0f5_736d:
    ld c, d                                       ; $736d: $4a
    ld [hl], a                                    ; $736e: $77
    ld b, d                                       ; $736f: $42
    ld a, a                                       ; $7370: $7f
    dec [hl]                                      ; $7371: $35
    ccf                                           ; $7372: $3f
    ld [bc], a                                    ; $7373: $02
    ld c, $08                                     ; $7374: $0e $08
    nop                                           ; $7376: $00
    ld [bc], a                                    ; $7377: $02
    inc b                                         ; $7378: $04
    sub d                                         ; $7379: $92
    ld [bc], a                                    ; $737a: $02
    ld b, $02                                     ; $737b: $06 $02
    ld b, $05                                     ; $737d: $06 $05
    rlca                                          ; $737f: $07
    ld bc, $0107                                  ; $7380: $01 $07 $01
    rlca                                          ; $7383: $07
    dec b                                         ; $7384: $05
    inc bc                                        ; $7385: $03
    dec b                                         ; $7386: $05
    inc bc                                        ; $7387: $03
    ld [bc], a                                    ; $7388: $02
    ld b, $02                                     ; $7389: $06 $02
    ld b, $02                                     ; $738b: $06 $02
    inc b                                         ; $738d: $04
    ld [$ff00], sp                                ; $738e: $08 $00 $ff
    add hl, bc                                    ; $7391: $09
    ld [bc], a                                    ; $7392: $02
    ld a, [$f606]                                 ; $7393: $fa $06 $f6
    inc bc                                        ; $7396: $03
    ld a, [c]                                     ; $7397: $f2
    ldh a, [$f2]                                  ; $7398: $f0 $f2
    push af                                       ; $739a: $f5
    ld [bc], a                                    ; $739b: $02
    rrca                                          ; $739c: $0f
    sub [hl]                                      ; $739d: $96
    jr nc, @+$41                                  ; $739e: $30 $3f

    ld h, h                                       ; $73a0: $64
    ld a, e                                       ; $73a1: $7b
    ld c, d                                       ; $73a2: $4a
    ld [hl], l                                    ; $73a3: $75
    sub h                                         ; $73a4: $94
    db $eb                                        ; $73a5: $eb
    and e                                         ; $73a6: $a3
    rst $18                                       ; $73a7: $df
    sub h                                         ; $73a8: $94
    rst $28                                       ; $73a9: $ef
    and h                                         ; $73aa: $a4
    rst $18                                       ; $73ab: $df
    adc c                                         ; $73ac: $89
    cp $4b                                        ; $73ad: $fe $4b
    ld a, h                                       ; $73af: $7c
    ld l, c                                       ; $73b0: $69
    ld a, [hl]                                    ; $73b1: $7e
    jr nc, jr_0f5_73f3                            ; $73b2: $30 $3f

    ld [bc], a                                    ; $73b4: $02
    rrca                                          ; $73b5: $0f
    ld b, $00                                     ; $73b6: $06 $00
    ld [bc], a                                    ; $73b8: $02
    db $10                                        ; $73b9: $10
    sub c                                         ; $73ba: $91
    inc c                                         ; $73bb: $0c
    inc e                                         ; $73bc: $1c
    ld c, $1e                                     ; $73bd: $0e $1e
    ld a, [bc]                                    ; $73bf: $0a
    ld e, $11                                     ; $73c0: $1e $11
    rra                                           ; $73c2: $1f
    add hl, bc                                    ; $73c3: $09
    rla                                           ; $73c4: $17
    dec b                                         ; $73c5: $05
    dec de                                        ; $73c6: $1b
    add hl, de                                    ; $73c7: $19
    rlca                                          ; $73c8: $07
    dec d                                         ; $73c9: $15
    dec bc                                        ; $73ca: $0b
    ld a, [bc]                                    ; $73cb: $0a
    ld [bc], a                                    ; $73cc: $02
    ld d, $83                                     ; $73cd: $16 $83
    ld c, $0c                                     ; $73cf: $0e $0c
    inc e                                         ; $73d1: $1c
    ld [bc], a                                    ; $73d2: $02
    db $10                                        ; $73d3: $10
    ld b, $00                                     ; $73d4: $06 $00
    rst $38                                       ; $73d6: $ff
    add hl, bc                                    ; $73d7: $09
    ld [bc], a                                    ; $73d8: $02
    ld a, [$f606]                                 ; $73d9: $fa $06 $f6
    inc bc                                        ; $73dc: $03
    di                                            ; $73dd: $f3
    ldh a, [$f3]                                  ; $73de: $f0 $f3
    push af                                       ; $73e0: $f5
    ld [bc], a                                    ; $73e1: $02
    rrca                                          ; $73e2: $0f
    sub d                                         ; $73e3: $92
    ld sp, $493f                                  ; $73e4: $31 $3f $49
    ld [hl], a                                    ; $73e7: $77
    ld d, [hl]                                    ; $73e8: $56
    ld l, a                                       ; $73e9: $6f
    xor b                                         ; $73ea: $a8
    rst $18                                       ; $73eb: $df
    sub e                                         ; $73ec: $93
    db $fc                                        ; $73ed: $fc
    sub l                                         ; $73ee: $95
    ld a, [$7d52]                                 ; $73ef: $fa $52 $7d
    ld h, l                                       ; $73f2: $65

jr_0f5_73f3:
    ld a, d                                       ; $73f3: $7a
    jr nc, jr_0f5_7435                            ; $73f4: $30 $3f

    ld [bc], a                                    ; $73f6: $02
    rrca                                          ; $73f7: $0f
    ld a, [bc]                                    ; $73f8: $0a
    nop                                           ; $73f9: $00
    ld [bc], a                                    ; $73fa: $02
    db $10                                        ; $73fb: $10
    sub d                                         ; $73fc: $92
    inc c                                         ; $73fd: $0c
    inc e                                         ; $73fe: $1c
    ld b, $1e                                     ; $73ff: $06 $1e
    ld a, [bc]                                    ; $7401: $0a
    ld d, $11                                     ; $7402: $16 $11
    rrca                                          ; $7404: $0f
    add hl, bc                                    ; $7405: $09
    rla                                           ; $7406: $17
    add hl, de                                    ; $7407: $19
    rlca                                          ; $7408: $07
    ld [de], a                                    ; $7409: $12
    ld c, $06                                     ; $740a: $0e $06
    ld e, $0c                                     ; $740c: $1e $0c
    inc e                                         ; $740e: $1c
    ld [bc], a                                    ; $740f: $02
    db $10                                        ; $7410: $10
    ld a, [bc]                                    ; $7411: $0a
    nop                                           ; $7412: $00
    rst $38                                       ; $7413: $ff
    rlca                                          ; $7414: $07
    ld bc, $06fc                                  ; $7415: $01 $fc $06
    db $fc                                        ; $7418: $fc
    dec b                                         ; $7419: $05
    cp $fb                                        ; $741a: $fe $fb
    adc b                                         ; $741c: $88
    ld [bc], a                                    ; $741d: $02
    ld b, $05                                     ; $741e: $06 $05
    dec bc                                        ; $7420: $0b
    ld b, $09                                     ; $7421: $06 $09
    nop                                           ; $7423: $00
    ld b, $18                                     ; $7424: $06 $18
    nop                                           ; $7426: $00
    rst $38                                       ; $7427: $ff
    rlca                                          ; $7428: $07
    ld bc, $06fc                                  ; $7429: $01 $fc $06
    db $fc                                        ; $742c: $fc
    dec b                                         ; $742d: $05
    db $fd                                        ; $742e: $fd
    db $fc                                        ; $742f: $fc
    adc b                                         ; $7430: $88
    ld [bc], a                                    ; $7431: $02
    ld b, $05                                     ; $7432: $06 $05
    dec bc                                        ; $7434: $0b

jr_0f5_7435:
    ld b, $09                                     ; $7435: $06 $09
    nop                                           ; $7437: $00
    ld b, $18                                     ; $7438: $06 $18
    nop                                           ; $743a: $00
    rst $38                                       ; $743b: $ff
    rlca                                          ; $743c: $07
    ld bc, $06fc                                  ; $743d: $01 $fc $06
    db $fc                                        ; $7440: $fc
    dec b                                         ; $7441: $05
    cp $fd                                        ; $7442: $fe $fd
    adc b                                         ; $7444: $88
    ld [bc], a                                    ; $7445: $02
    ld b, $05                                     ; $7446: $06 $05
    dec bc                                        ; $7448: $0b
    ld b, $09                                     ; $7449: $06 $09
    nop                                           ; $744b: $00
    ld b, $18                                     ; $744c: $06 $18
    nop                                           ; $744e: $00
    rst $38                                       ; $744f: $ff
    rlca                                          ; $7450: $07
    ld bc, $06fc                                  ; $7451: $01 $fc $06
    db $fc                                        ; $7454: $fc
    dec b                                         ; $7455: $05
    rst $38                                       ; $7456: $ff
    db $fc                                        ; $7457: $fc
    adc b                                         ; $7458: $88
    ld [bc], a                                    ; $7459: $02
    ld b, $05                                     ; $745a: $06 $05
    dec bc                                        ; $745c: $0b
    ld b, $09                                     ; $745d: $06 $09
    nop                                           ; $745f: $00
    ld b, $18                                     ; $7460: $06 $18
    nop                                           ; $7462: $00
    rst $38                                       ; $7463: $ff
    rlca                                          ; $7464: $07
    ld bc, $06fc                                  ; $7465: $01 $fc $06
    db $fc                                        ; $7468: $fc
    dec b                                         ; $7469: $05
    ld bc, $88f6                                  ; $746a: $01 $f6 $88
    ld [bc], a                                    ; $746d: $02
    ld b, $05                                     ; $746e: $06 $05
    dec bc                                        ; $7470: $0b
    ld b, $09                                     ; $7471: $06 $09
    nop                                           ; $7473: $00
    ld b, $18                                     ; $7474: $06 $18
    nop                                           ; $7476: $00
    rst $38                                       ; $7477: $ff
    rlca                                          ; $7478: $07
    ld bc, $06fc                                  ; $7479: $01 $fc $06
    db $fc                                        ; $747c: $fc
    dec b                                         ; $747d: $05
    inc bc                                        ; $747e: $03
    ldh a, [$88]                                  ; $747f: $f0 $88
    ld [bc], a                                    ; $7481: $02
    ld b, $05                                     ; $7482: $06 $05
    dec bc                                        ; $7484: $0b
    ld b, $09                                     ; $7485: $06 $09
    nop                                           ; $7487: $00
    ld b, $18                                     ; $7488: $06 $18
    nop                                           ; $748a: $00
    rst $38                                       ; $748b: $ff
    rlca                                          ; $748c: $07
    ld bc, $06fc                                  ; $748d: $01 $fc $06
    db $fc                                        ; $7490: $fc
    dec b                                         ; $7491: $05
    dec b                                         ; $7492: $05
    ld [$0288], a                                 ; $7493: $ea $88 $02
    ld b, $05                                     ; $7496: $06 $05
    dec bc                                        ; $7498: $0b
    ld b, $09                                     ; $7499: $06 $09
    nop                                           ; $749b: $00
    ld b, $18                                     ; $749c: $06 $18
    nop                                           ; $749e: $00
    rst $38                                       ; $749f: $ff
    rlca                                          ; $74a0: $07
    ld bc, $06fc                                  ; $74a1: $01 $fc $06
    db $fc                                        ; $74a4: $fc
    dec b                                         ; $74a5: $05
    rlca                                          ; $74a6: $07
    db $e4                                        ; $74a7: $e4
    adc b                                         ; $74a8: $88
    ld [bc], a                                    ; $74a9: $02
    ld b, $05                                     ; $74aa: $06 $05
    dec bc                                        ; $74ac: $0b
    ld b, $09                                     ; $74ad: $06 $09
    nop                                           ; $74af: $00
    ld b, $18                                     ; $74b0: $06 $18
    nop                                           ; $74b2: $00
    rst $38                                       ; $74b3: $ff
    rlca                                          ; $74b4: $07
    ld bc, $06fc                                  ; $74b5: $01 $fc $06
    db $fc                                        ; $74b8: $fc
    dec b                                         ; $74b9: $05
    add hl, bc                                    ; $74ba: $09
    sbc $88                                       ; $74bb: $de $88
    ld [bc], a                                    ; $74bd: $02
    ld b, $05                                     ; $74be: $06 $05
    dec bc                                        ; $74c0: $0b
    ld b, $09                                     ; $74c1: $06 $09
    nop                                           ; $74c3: $00
    ld b, $18                                     ; $74c4: $06 $18
    nop                                           ; $74c6: $00
    rst $38                                       ; $74c7: $ff
    rlca                                          ; $74c8: $07
    ld bc, $06fc                                  ; $74c9: $01 $fc $06
    db $fc                                        ; $74cc: $fc
    dec b                                         ; $74cd: $05
    ld b, $d8                                     ; $74ce: $06 $d8
    adc b                                         ; $74d0: $88
    ld [bc], a                                    ; $74d1: $02
    ld b, $05                                     ; $74d2: $06 $05
    dec bc                                        ; $74d4: $0b
    ld b, $09                                     ; $74d5: $06 $09
    nop                                           ; $74d7: $00
    ld b, $18                                     ; $74d8: $06 $18
    nop                                           ; $74da: $00
    rst $38                                       ; $74db: $ff
    rlca                                          ; $74dc: $07
    ld bc, $06fc                                  ; $74dd: $01 $fc $06
    db $fc                                        ; $74e0: $fc
    dec b                                         ; $74e1: $05
    nop                                           ; $74e2: $00
    sub $88                                       ; $74e3: $d6 $88
    ld [bc], a                                    ; $74e5: $02
    ld b, $05                                     ; $74e6: $06 $05
    dec bc                                        ; $74e8: $0b
    ld b, $09                                     ; $74e9: $06 $09
    nop                                           ; $74eb: $00
    ld b, $18                                     ; $74ec: $06 $18
    nop                                           ; $74ee: $00
    rst $38                                       ; $74ef: $ff
    rlca                                          ; $74f0: $07
    ld bc, $06fc                                  ; $74f1: $01 $fc $06
    db $fc                                        ; $74f4: $fc
    dec b                                         ; $74f5: $05
    ld a, [$88d8]                                 ; $74f6: $fa $d8 $88
    ld [bc], a                                    ; $74f9: $02
    ld b, $05                                     ; $74fa: $06 $05
    dec bc                                        ; $74fc: $0b
    ld b, $09                                     ; $74fd: $06 $09
    nop                                           ; $74ff: $00
    ld b, $18                                     ; $7500: $06 $18
    nop                                           ; $7502: $00
    rst $38                                       ; $7503: $ff
    rlca                                          ; $7504: $07
    ld bc, $06fc                                  ; $7505: $01 $fc $06
    db $fc                                        ; $7508: $fc
    dec b                                         ; $7509: $05
    push af                                       ; $750a: $f5
    call c, Call_000_0288                         ; $750b: $dc $88 $02
    ld b, $05                                     ; $750e: $06 $05
    dec bc                                        ; $7510: $0b
    ld b, $09                                     ; $7511: $06 $09
    nop                                           ; $7513: $00
    ld b, $18                                     ; $7514: $06 $18
    nop                                           ; $7516: $00
    rst $38                                       ; $7517: $ff
    rlca                                          ; $7518: $07
    ld bc, $06fc                                  ; $7519: $01 $fc $06
    db $fc                                        ; $751c: $fc
    dec b                                         ; $751d: $05
    ld a, [c]                                     ; $751e: $f2
    pop hl                                        ; $751f: $e1
    adc b                                         ; $7520: $88
    ld [bc], a                                    ; $7521: $02
    ld b, $05                                     ; $7522: $06 $05
    dec bc                                        ; $7524: $0b
    ld b, $09                                     ; $7525: $06 $09
    nop                                           ; $7527: $00
    ld b, $18                                     ; $7528: $06 $18
    nop                                           ; $752a: $00
    rst $38                                       ; $752b: $ff
    rlca                                          ; $752c: $07
    ld bc, $06fc                                  ; $752d: $01 $fc $06
    db $fc                                        ; $7530: $fc
    dec b                                         ; $7531: $05
    ld a, [c]                                     ; $7532: $f2
    and $88                                       ; $7533: $e6 $88
    ld [bc], a                                    ; $7535: $02
    ld b, $05                                     ; $7536: $06 $05
    dec bc                                        ; $7538: $0b
    ld b, $09                                     ; $7539: $06 $09
    nop                                           ; $753b: $00
    ld b, $18                                     ; $753c: $06 $18
    nop                                           ; $753e: $00
    rst $38                                       ; $753f: $ff
    rlca                                          ; $7540: $07
    ld bc, $06fc                                  ; $7541: $01 $fc $06
    db $fc                                        ; $7544: $fc
    dec b                                         ; $7545: $05
    push af                                       ; $7546: $f5
    db $ec                                        ; $7547: $ec
    adc b                                         ; $7548: $88
    ld [bc], a                                    ; $7549: $02
    ld b, $05                                     ; $754a: $06 $05
    dec bc                                        ; $754c: $0b
    ld b, $09                                     ; $754d: $06 $09
    nop                                           ; $754f: $00
    ld b, $18                                     ; $7550: $06 $18
    nop                                           ; $7552: $00
    rst $38                                       ; $7553: $ff
    rlca                                          ; $7554: $07
    ld bc, $06fc                                  ; $7555: $01 $fc $06
    db $fc                                        ; $7558: $fc
    dec b                                         ; $7559: $05
    ld sp, hl                                     ; $755a: $f9
    ldh a, [$88]                                  ; $755b: $f0 $88
    ld [bc], a                                    ; $755d: $02
    ld b, $05                                     ; $755e: $06 $05
    dec bc                                        ; $7560: $0b
    ld b, $09                                     ; $7561: $06 $09
    nop                                           ; $7563: $00
    ld b, $18                                     ; $7564: $06 $18
    nop                                           ; $7566: $00
    rst $38                                       ; $7567: $ff
    rlca                                          ; $7568: $07
    ld bc, $06fc                                  ; $7569: $01 $fc $06
    db $fc                                        ; $756c: $fc
    dec b                                         ; $756d: $05
    cp $f0                                        ; $756e: $fe $f0
    adc b                                         ; $7570: $88
    ld [bc], a                                    ; $7571: $02
    ld b, $05                                     ; $7572: $06 $05
    dec bc                                        ; $7574: $0b
    ld b, $09                                     ; $7575: $06 $09
    nop                                           ; $7577: $00
    ld b, $18                                     ; $7578: $06 $18
    nop                                           ; $757a: $00
    rst $38                                       ; $757b: $ff
    rlca                                          ; $757c: $07
    ld bc, $06fc                                  ; $757d: $01 $fc $06
    db $fc                                        ; $7580: $fc
    dec b                                         ; $7581: $05
    ld [bc], a                                    ; $7582: $02
    db $ed                                        ; $7583: $ed
    adc b                                         ; $7584: $88
    ld [bc], a                                    ; $7585: $02
    ld b, $05                                     ; $7586: $06 $05
    dec bc                                        ; $7588: $0b
    ld b, $09                                     ; $7589: $06 $09
    nop                                           ; $758b: $00
    ld b, $18                                     ; $758c: $06 $18
    nop                                           ; $758e: $00
    rst $38                                       ; $758f: $ff
    rlca                                          ; $7590: $07
    ld bc, $06fc                                  ; $7591: $01 $fc $06
    db $fc                                        ; $7594: $fc
    dec b                                         ; $7595: $05
    dec b                                         ; $7596: $05
    add sp, -$78                                  ; $7597: $e8 $88
    ld [bc], a                                    ; $7599: $02
    ld b, $05                                     ; $759a: $06 $05
    dec bc                                        ; $759c: $0b
    ld b, $09                                     ; $759d: $06 $09
    nop                                           ; $759f: $00
    ld b, $18                                     ; $75a0: $06 $18
    nop                                           ; $75a2: $00
    rst $38                                       ; $75a3: $ff
    rlca                                          ; $75a4: $07
    ld bc, $06fc                                  ; $75a5: $01 $fc $06
    db $fc                                        ; $75a8: $fc
    dec b                                         ; $75a9: $05
    ld b, $e2                                     ; $75aa: $06 $e2
    adc b                                         ; $75ac: $88
    ld [bc], a                                    ; $75ad: $02
    ld b, $05                                     ; $75ae: $06 $05
    dec bc                                        ; $75b0: $0b
    ld b, $09                                     ; $75b1: $06 $09
    nop                                           ; $75b3: $00
    ld b, $18                                     ; $75b4: $06 $18
    nop                                           ; $75b6: $00
    rst $38                                       ; $75b7: $ff
    rlca                                          ; $75b8: $07
    ld bc, $06fc                                  ; $75b9: $01 $fc $06
    db $fc                                        ; $75bc: $fc
    dec b                                         ; $75bd: $05
    add hl, bc                                    ; $75be: $09
    call c, Call_000_0288                         ; $75bf: $dc $88 $02
    ld b, $05                                     ; $75c2: $06 $05
    dec bc                                        ; $75c4: $0b
    ld b, $09                                     ; $75c5: $06 $09
    nop                                           ; $75c7: $00
    ld b, $18                                     ; $75c8: $06 $18
    nop                                           ; $75ca: $00
    rst $38                                       ; $75cb: $ff
    rlca                                          ; $75cc: $07
    ld bc, $06fc                                  ; $75cd: $01 $fc $06
    db $fc                                        ; $75d0: $fc
    dec b                                         ; $75d1: $05
    ld c, $d9                                     ; $75d2: $0e $d9
    adc b                                         ; $75d4: $88
    ld [bc], a                                    ; $75d5: $02
    ld b, $05                                     ; $75d6: $06 $05
    dec bc                                        ; $75d8: $0b
    ld b, $09                                     ; $75d9: $06 $09
    nop                                           ; $75db: $00
    ld b, $18                                     ; $75dc: $06 $18
    nop                                           ; $75de: $00
    rst $38                                       ; $75df: $ff
    rlca                                          ; $75e0: $07
    ld bc, $06fc                                  ; $75e1: $01 $fc $06
    db $fc                                        ; $75e4: $fc
    dec b                                         ; $75e5: $05
    ld [de], a                                    ; $75e6: $12
    db $dd                                        ; $75e7: $dd
    adc b                                         ; $75e8: $88
    ld [bc], a                                    ; $75e9: $02
    ld b, $05                                     ; $75ea: $06 $05
    dec bc                                        ; $75ec: $0b
    ld b, $09                                     ; $75ed: $06 $09
    nop                                           ; $75ef: $00
    ld b, $18                                     ; $75f0: $06 $18
    nop                                           ; $75f2: $00
    rst $38                                       ; $75f3: $ff
    rlca                                          ; $75f4: $07
    ld bc, $06fc                                  ; $75f5: $01 $fc $06
    db $fc                                        ; $75f8: $fc
    dec b                                         ; $75f9: $05
    ld [de], a                                    ; $75fa: $12
    db $e3                                        ; $75fb: $e3
    adc b                                         ; $75fc: $88
    ld [bc], a                                    ; $75fd: $02
    ld b, $05                                     ; $75fe: $06 $05
    dec bc                                        ; $7600: $0b
    ld b, $09                                     ; $7601: $06 $09
    nop                                           ; $7603: $00
    ld b, $18                                     ; $7604: $06 $18
    nop                                           ; $7606: $00
    rst $38                                       ; $7607: $ff
    add hl, bc                                    ; $7608: $09
    ld [bc], a                                    ; $7609: $02
    db $fc                                        ; $760a: $fc
    ld b, $fc                                     ; $760b: $06 $fc
    dec b                                         ; $760d: $05
    ld de, $11df                                  ; $760e: $11 $df $11
    rst $20                                       ; $7611: $e7
    add d                                         ; $7612: $82
    nop                                           ; $7613: $00
    ld [$0102], sp                                ; $7614: $08 $02 $01
    add [hl]                                      ; $7617: $86
    jr nz, jr_0f5_763b                            ; $7618: $20 $21

    jr nz, jr_0f5_7630                            ; $761a: $20 $14

    ld hl, $0211                                  ; $761c: $21 $11 $02
    jr nz, @-$78                                  ; $761f: $20 $86

    add b                                         ; $7621: $80
    adc d                                         ; $7622: $8a
    ld bc, $1883                                  ; $7623: $01 $83 $18
    jr c, @+$10                                   ; $7626: $38 $0e

    nop                                           ; $7628: $00
    ld [bc], a                                    ; $7629: $02
    add b                                         ; $762a: $80
    add e                                         ; $762b: $83
    nop                                           ; $762c: $00
    and b                                         ; $762d: $a0
    add b                                         ; $762e: $80
    ld [bc], a                                    ; $762f: $02

jr_0f5_7630:
    nop                                           ; $7630: $00
    add a                                         ; $7631: $87
    ld [$a8b0], sp                                ; $7632: $08 $b0 $a8
    ld bc, $0999                                  ; $7635: $01 $99 $09
    dec bc                                        ; $7638: $0b
    ld [bc], a                                    ; $7639: $02
    nop                                           ; $763a: $00

jr_0f5_763b:
    add d                                         ; $763b: $82
    add l                                         ; $763c: $85
    push bc                                       ; $763d: $c5
    ld c, $00                                     ; $763e: $0e $00
    rst $38                                       ; $7640: $ff
    add hl, bc                                    ; $7641: $09
    ld [bc], a                                    ; $7642: $02
    db $fc                                        ; $7643: $fc
    ld b, $fc                                     ; $7644: $06 $fc
    dec b                                         ; $7646: $05
    ld c, $df                                     ; $7647: $0e $df
    ld c, $e7                                     ; $7649: $0e $e7
    add d                                         ; $764b: $82
    nop                                           ; $764c: $00
    ld [$0002], sp                                ; $764d: $08 $02 $00
    ld [bc], a                                    ; $7650: $02
    ld bc, $2084                                  ; $7651: $01 $84 $20
    inc h                                         ; $7654: $24
    jr nz, jr_0f5_7667                            ; $7655: $20 $10

    inc b                                         ; $7657: $04
    nop                                           ; $7658: $00
    add [hl]                                      ; $7659: $86
    add b                                         ; $765a: $80
    sbc d                                         ; $765b: $9a
    ld bc, $0093                                  ; $765c: $01 $93 $00
    jr nz, @+$10                                  ; $765f: $20 $0e

    nop                                           ; $7661: $00
    ld [bc], a                                    ; $7662: $02
    add b                                         ; $7663: $80
    add d                                         ; $7664: $82
    nop                                           ; $7665: $00
    and b                                         ; $7666: $a0

jr_0f5_7667:
    inc bc                                        ; $7667: $03
    nop                                           ; $7668: $00
    add a                                         ; $7669: $87
    adc b                                         ; $766a: $88
    nop                                           ; $766b: $00
    add b                                         ; $766c: $80
    ld sp, $0129                                  ; $766d: $31 $29 $01
    dec de                                        ; $7670: $1b
    inc bc                                        ; $7671: $03
    nop                                           ; $7672: $00
    add c                                         ; $7673: $81
    db $10                                        ; $7674: $10
    inc c                                         ; $7675: $0c
    nop                                           ; $7676: $00
    rst $38                                       ; $7677: $ff
    add hl, bc                                    ; $7678: $09
    ld [bc], a                                    ; $7679: $02
    db $fc                                        ; $767a: $fc
    ld b, $fc                                     ; $767b: $06 $fc
    dec b                                         ; $767d: $05
    dec c                                         ; $767e: $0d
    rst $18                                       ; $767f: $df
    dec c                                         ; $7680: $0d
    and $03                                       ; $7681: $e6 $03
    nop                                           ; $7683: $00
    add a                                         ; $7684: $87
    inc b                                         ; $7685: $04
    nop                                           ; $7686: $00
    inc h                                         ; $7687: $24
    nop                                           ; $7688: $00
    jr nz, jr_0f5_768b                            ; $7689: $20 $00

jr_0f5_768b:
    ld [de], a                                    ; $768b: $12
    inc bc                                        ; $768c: $03
    nop                                           ; $768d: $00
    add e                                         ; $768e: $83
    inc b                                         ; $768f: $04
    nop                                           ; $7690: $00
    add b                                         ; $7691: $80
    ld de, $8100                                  ; $7692: $11 $00 $81
    db $10                                        ; $7695: $10
    inc bc                                        ; $7696: $03
    nop                                           ; $7697: $00
    add l                                         ; $7698: $85
    inc b                                         ; $7699: $04
    nop                                           ; $769a: $00
    ld b, h                                       ; $769b: $44
    nop                                           ; $769c: $00
    ld b, b                                       ; $769d: $40
    inc bc                                        ; $769e: $03
    nop                                           ; $769f: $00
    add c                                         ; $76a0: $81
    dec b                                         ; $76a1: $05
    inc bc                                        ; $76a2: $03
    nop                                           ; $76a3: $00
    add c                                         ; $76a4: $81
    jr nz, jr_0f5_76b5                            ; $76a5: $20 $0e

    nop                                           ; $76a7: $00
    rst $38                                       ; $76a8: $ff
    dec b                                         ; $76a9: $05
    ld [bc], a                                    ; $76aa: $02
    ld b, $e5                                     ; $76ab: $06 $e5
    ld b, $e8                                     ; $76ad: $06 $e8
    inc bc                                        ; $76af: $03
    nop                                           ; $76b0: $00
    add l                                         ; $76b1: $85
    sub b                                         ; $76b2: $90
    nop                                           ; $76b3: $00
    add d                                         ; $76b4: $82

jr_0f5_76b5:
    nop                                           ; $76b5: $00
    ld [bc], a                                    ; $76b6: $02
    inc bc                                        ; $76b7: $03
    nop                                           ; $76b8: $00
    add c                                         ; $76b9: $81
    ld b, b                                       ; $76ba: $40
    dec d                                         ; $76bb: $15
    nop                                           ; $76bc: $00
    add c                                         ; $76bd: $81
    inc b                                         ; $76be: $04
    dec b                                         ; $76bf: $05
    nop                                           ; $76c0: $00
    add c                                         ; $76c1: $81
    ld bc, $0018                                  ; $76c2: $01 $18 $00
    rst $38                                       ; $76c5: $ff
    dec c                                         ; $76c6: $0d
    inc b                                         ; $76c7: $04
    ld a, [$f306]                                 ; $76c8: $fa $06 $f3
    ld a, [bc]                                    ; $76cb: $0a
    di                                            ; $76cc: $f3
    ld a, [$fdf5]                                 ; $76cd: $fa $f5 $fd
    inc bc                                        ; $76d0: $03
    db $fc                                        ; $76d1: $fc
    inc bc                                        ; $76d2: $03
    cp $af                                        ; $76d3: $fe $af
    nop                                           ; $76d5: $00
    inc de                                        ; $76d6: $13
    ld [bc], a                                    ; $76d7: $02
    ccf                                           ; $76d8: $3f
    jr nc, @+$01                                  ; $76d9: $30 $ff

    nop                                           ; $76db: $00
    ld a, a                                       ; $76dc: $7f
    ld de, $2c2f                                  ; $76dd: $11 $2f $2c
    ld d, e                                       ; $76e0: $53
    inc d                                         ; $76e1: $14
    cpl                                           ; $76e2: $2f
    ld d, $69                                     ; $76e3: $16 $69
    dec h                                         ; $76e5: $25
    ld e, d                                       ; $76e6: $5a
    ld e, $21                                     ; $76e7: $1e $21
    inc c                                         ; $76e9: $0c
    inc de                                        ; $76ea: $13
    ld [bc], a                                    ; $76eb: $02
    rrca                                          ; $76ec: $0f
    dec b                                         ; $76ed: $05
    rra                                           ; $76ee: $1f
    add hl, bc                                    ; $76ef: $09
    rra                                           ; $76f0: $1f
    dec b                                         ; $76f1: $05
    rra                                           ; $76f2: $1f
    add hl, bc                                    ; $76f3: $09
    rra                                           ; $76f4: $1f
    nop                                           ; $76f5: $00
    ld b, $04                                     ; $76f6: $06 $04
    ld b, $00                                     ; $76f8: $06 $00
    rlca                                          ; $76fa: $07
    nop                                           ; $76fb: $00
    rlca                                          ; $76fc: $07
    nop                                           ; $76fd: $00
    ld b, $00                                     ; $76fe: $06 $00
    ld b, $00                                     ; $7700: $06 $00
    inc b                                         ; $7702: $04
    nop                                           ; $7703: $00
    ld [bc], a                                    ; $7704: $02
    inc b                                         ; $7705: $04
    adc b                                         ; $7706: $88
    ld b, $02                                     ; $7707: $06 $02
    rlca                                          ; $7709: $07
    nop                                           ; $770a: $00
    rlca                                          ; $770b: $07
    nop                                           ; $770c: $00
    ld b, $00                                     ; $770d: $06 $00
    ld [bc], a                                    ; $770f: $02
    inc b                                         ; $7710: $04
    add l                                         ; $7711: $85
    ld b, $4c                                     ; $7712: $06 $4c
    cp $18                                        ; $7714: $fe $18
    and $04                                       ; $7716: $e6 $04
    nop                                           ; $7718: $00
    adc h                                         ; $7719: $8c
    ld l, d                                       ; $771a: $6a
    sub l                                         ; $771b: $95
    db $10                                        ; $771c: $10
    ld a, a                                       ; $771d: $7f
    ld [$007f], sp                                ; $771e: $08 $7f $00
    ld a, a                                       ; $7721: $7f
    add hl, sp                                    ; $7722: $39
    rst $38                                       ; $7723: $ff
    nop                                           ; $7724: $00
    ld a, a                                       ; $7725: $7f
    dec d                                         ; $7726: $15
    nop                                           ; $7727: $00
    adc c                                         ; $7728: $89
    ld [bc], a                                    ; $7729: $02
    nop                                           ; $772a: $00
    ld [bc], a                                    ; $772b: $02
    nop                                           ; $772c: $00
    inc bc                                        ; $772d: $03
    ld [bc], a                                    ; $772e: $02
    inc bc                                        ; $772f: $03
    nop                                           ; $7730: $00
    ld [bc], a                                    ; $7731: $02
    ld [de], a                                    ; $7732: $12
    nop                                           ; $7733: $00
    rst $38                                       ; $7734: $ff
    rlca                                          ; $7735: $07
    ld bc, $06fa                                  ; $7736: $01 $fa $06
    di                                            ; $7739: $f3
    ld a, [bc]                                    ; $773a: $0a
    ld bc, $02f9                                  ; $773b: $01 $f9 $02
    ld [bc], a                                    ; $773e: $02
    ld [bc], a                                    ; $773f: $02
    rlca                                          ; $7740: $07
    ld [bc], a                                    ; $7741: $02
    inc bc                                        ; $7742: $03
    add d                                         ; $7743: $82
    ld b, $04                                     ; $7744: $06 $04
    ld [bc], a                                    ; $7746: $02
    ld [bc], a                                    ; $7747: $02
    ld [bc], a                                    ; $7748: $02
    rlca                                          ; $7749: $07
    ld [bc], a                                    ; $774a: $02
    inc bc                                        ; $774b: $03
    ld [bc], a                                    ; $774c: $02
    ld bc, $0002                                  ; $774d: $01 $02 $00
    ld [bc], a                                    ; $7750: $02
    ld [bc], a                                    ; $7751: $02
    inc c                                         ; $7752: $0c
    nop                                           ; $7753: $00
    rst $38                                       ; $7754: $ff
    rlca                                          ; $7755: $07
    ld bc, $06fa                                  ; $7756: $01 $fa $06
    di                                            ; $7759: $f3
    ld a, [bc]                                    ; $775a: $0a
    rst $38                                       ; $775b: $ff
    ld sp, hl                                     ; $775c: $f9
    ld [bc], a                                    ; $775d: $02
    rlca                                          ; $775e: $07
    ld [bc], a                                    ; $775f: $02
    ld [bc], a                                    ; $7760: $02
    add d                                         ; $7761: $82
    rlca                                          ; $7762: $07
    dec b                                         ; $7763: $05
    ld [bc], a                                    ; $7764: $02
    ld [bc], a                                    ; $7765: $02
    add d                                         ; $7766: $82
    rlca                                          ; $7767: $07
    dec b                                         ; $7768: $05
    inc b                                         ; $7769: $04
    ld b, $02                                     ; $776a: $06 $02
    dec b                                         ; $776c: $05
    ld [bc], a                                    ; $776d: $02
    inc bc                                        ; $776e: $03
    ld [bc], a                                    ; $776f: $02
    nop                                           ; $7770: $00
    ld [bc], a                                    ; $7771: $02
    ld [bc], a                                    ; $7772: $02
    ld a, [bc]                                    ; $7773: $0a
    nop                                           ; $7774: $00
    rst $38                                       ; $7775: $ff
    add hl, bc                                    ; $7776: $09
    ld [bc], a                                    ; $7777: $02
    ld a, [$f306]                                 ; $7778: $fa $06 $f3
    ld a, [bc]                                    ; $777b: $0a
    pop af                                        ; $777c: $f1
    ld a, [$fa01]                                 ; $777d: $fa $01 $fa
    ld [bc], a                                    ; $7780: $02
    inc b                                         ; $7781: $04
    inc b                                         ; $7782: $04
    inc c                                         ; $7783: $0c
    add d                                         ; $7784: $82
    ld b, $02                                     ; $7785: $06 $02
    ld [bc], a                                    ; $7787: $02
    inc c                                         ; $7788: $0c
    add d                                         ; $7789: $82
    ld e, $1a                                     ; $778a: $1e $1a
    ld [bc], a                                    ; $778c: $02
    dec d                                         ; $778d: $15
    ld [bc], a                                    ; $778e: $02
    inc c                                         ; $778f: $0c
    ld [bc], a                                    ; $7790: $02
    ld b, $82                                     ; $7791: $06 $82
    rra                                           ; $7793: $1f
    dec de                                        ; $7794: $1b
    ld [bc], a                                    ; $7795: $02
    ld b, $02                                     ; $7796: $06 $02
    inc c                                         ; $7798: $0c
    ld [bc], a                                    ; $7799: $02
    dec c                                         ; $779a: $0d
    add [hl]                                      ; $779b: $86
    rrca                                          ; $779c: $0f
    dec bc                                        ; $779d: $0b
    rra                                           ; $779e: $1f
    dec de                                        ; $779f: $1b
    ld c, $0a                                     ; $77a0: $0e $0a
    ld [bc], a                                    ; $77a2: $02
    inc b                                         ; $77a3: $04
    inc b                                         ; $77a4: $04
    ld b, $06                                     ; $77a5: $06 $06
    inc b                                         ; $77a7: $04
    inc d                                         ; $77a8: $14
    nop                                           ; $77a9: $00
    rst $38                                       ; $77aa: $ff
    add hl, bc                                    ; $77ab: $09
    ld [bc], a                                    ; $77ac: $02
    ld a, [$f306]                                 ; $77ad: $fa $06 $f3
    ld a, [bc]                                    ; $77b0: $0a
    db $ed                                        ; $77b1: $ed
    ld a, [$fafd]                                 ; $77b2: $fa $fd $fa
    ld [bc], a                                    ; $77b5: $02
    inc b                                         ; $77b6: $04
    inc b                                         ; $77b7: $04
    ld b, $02                                     ; $77b8: $06 $02
    inc c                                         ; $77ba: $0c
    add d                                         ; $77bb: $82
    ld b, $02                                     ; $77bc: $06 $02
    ld [bc], a                                    ; $77be: $02
    dec c                                         ; $77bf: $0d
    add d                                         ; $77c0: $82
    rla                                           ; $77c1: $17
    inc de                                        ; $77c2: $13
    ld [bc], a                                    ; $77c3: $02

jr_0f5_77c4:
    ld b, $02                                     ; $77c4: $06 $02
    inc c                                         ; $77c6: $0c
    add d                                         ; $77c7: $82
    rra                                           ; $77c8: $1f
    dec de                                        ; $77c9: $1b
    ld [bc], a                                    ; $77ca: $02
    inc c                                         ; $77cb: $0c
    ld [bc], a                                    ; $77cc: $02
    ld b, $02                                     ; $77cd: $06 $02
    ld d, $86                                     ; $77cf: $16 $86
    ld e, $1a                                     ; $77d1: $1e $1a
    rra                                           ; $77d3: $1f
    dec de                                        ; $77d4: $1b
    ld c, $0a                                     ; $77d5: $0e $0a
    ld [bc], a                                    ; $77d7: $02
    inc b                                         ; $77d8: $04
    inc b                                         ; $77d9: $04
    inc c                                         ; $77da: $0c
    inc b                                         ; $77db: $04
    inc b                                         ; $77dc: $04
    ld [bc], a                                    ; $77dd: $02
    nop                                           ; $77de: $00
    ld [bc], a                                    ; $77df: $02
    inc b                                         ; $77e0: $04
    ld [de], a                                    ; $77e1: $12
    nop                                           ; $77e2: $00
    rst $38                                       ; $77e3: $ff
    add hl, bc                                    ; $77e4: $09
    ld [bc], a                                    ; $77e5: $02
    ld a, [$f306]                                 ; $77e6: $fa $06 $f3
    ld a, [bc]                                    ; $77e9: $0a
    and $fa                                       ; $77ea: $e6 $fa
    or $fa                                        ; $77ec: $f6 $fa
    ld [bc], a                                    ; $77ee: $02
    inc b                                         ; $77ef: $04
    ld [bc], a                                    ; $77f0: $02
    inc c                                         ; $77f1: $0c
    ld [bc], a                                    ; $77f2: $02
    inc b                                         ; $77f3: $04
    add d                                         ; $77f4: $82
    ld e, $1a                                     ; $77f5: $1e $1a
    ld [bc], a                                    ; $77f7: $02
    inc c                                         ; $77f8: $0c
    add d                                         ; $77f9: $82
    ld c, $0a                                     ; $77fa: $0e $0a
    ld [bc], a                                    ; $77fc: $02
    inc e                                         ; $77fd: $1c
    ld [bc], a                                    ; $77fe: $02
    inc c                                         ; $77ff: $0c
    ld [bc], a                                    ; $7800: $02
    inc d                                         ; $7801: $14
    ld [bc], a                                    ; $7802: $02
    inc e                                         ; $7803: $1c

jr_0f5_7804:
    add d                                         ; $7804: $82
    ld c, $0a                                     ; $7805: $0e $0a
    ld [bc], a                                    ; $7807: $02
    inc b                                         ; $7808: $04
    ld [bc], a                                    ; $7809: $02
    dec c                                         ; $780a: $0d
    add d                                         ; $780b: $82
    rra                                           ; $780c: $1f
    dec de                                        ; $780d: $1b
    ld [bc], a                                    ; $780e: $02
    dec d                                         ; $780f: $15
    ld [bc], a                                    ; $7810: $02
    inc b                                         ; $7811: $04
    ld [bc], a                                    ; $7812: $02
    ld b, $82                                     ; $7813: $06 $82
    ld c, $0a                                     ; $7815: $0e $0a
    inc b                                         ; $7817: $04
    inc c                                         ; $7818: $0c
    ld [bc], a                                    ; $7819: $02
    inc b                                         ; $781a: $04
    ld [bc], a                                    ; $781b: $02
    inc c                                         ; $781c: $0c
    ld [bc], a                                    ; $781d: $02
    inc b                                         ; $781e: $04
    ld [bc], a                                    ; $781f: $02
    inc c                                         ; $7820: $0c
    ld [bc], a                                    ; $7821: $02
    ld [$0402], sp                                ; $7822: $08 $02 $04
    inc c                                         ; $7825: $0c
    nop                                           ; $7826: $00
    rst $38                                       ; $7827: $ff
    add hl, bc                                    ; $7828: $09
    ld [bc], a                                    ; $7829: $02
    ld a, [$f306]                                 ; $782a: $fa $06 $f3
    ld a, [bc]                                    ; $782d: $0a
    ld [c], a                                     ; $782e: $e2
    ld a, [$faf2]                                 ; $782f: $fa $f2 $fa
    ld [bc], a                                    ; $7832: $02
    inc b                                         ; $7833: $04
    ld [bc], a                                    ; $7834: $02
    inc c                                         ; $7835: $0c
    add d                                         ; $7836: $82
    inc b                                         ; $7837: $04
    nop                                           ; $7838: $00
    ld [bc], a                                    ; $7839: $02
    ld a, [de]                                    ; $783a: $1a
    ld [bc], a                                    ; $783b: $02

jr_0f5_783c:
    inc c                                         ; $783c: $0c
    ld [bc], a                                    ; $783d: $02
    ld b, $02                                     ; $783e: $06 $02
    jr jr_0f5_77c4                                ; $7840: $18 $82

    ld c, $0a                                     ; $7842: $0e $0a
    ld [bc], a                                    ; $7844: $02
    ld [de], a                                    ; $7845: $12
    ld [bc], a                                    ; $7846: $02
    dec c                                         ; $7847: $0d
    ld [bc], a                                    ; $7848: $02
    ld b, $02                                     ; $7849: $06 $02
    inc e                                         ; $784b: $1c
    ld [bc], a                                    ; $784c: $02
    dec c                                         ; $784d: $0d
    add d                                         ; $784e: $82
    rra                                           ; $784f: $1f
    dec de                                        ; $7850: $1b
    ld [bc], a                                    ; $7851: $02
    inc b                                         ; $7852: $04
    ld [bc], a                                    ; $7853: $02
    inc c                                         ; $7854: $0c
    add d                                         ; $7855: $82
    ld c, $0a                                     ; $7856: $0e $0a
    ld [bc], a                                    ; $7858: $02
    inc b                                         ; $7859: $04
    add d                                         ; $785a: $82
    ld c, $0a                                     ; $785b: $0e $0a
    ld [bc], a                                    ; $785d: $02
    inc b                                         ; $785e: $04
    inc b                                         ; $785f: $04
    ld b, $02                                     ; $7860: $06 $02
    ld [$0402], sp                                ; $7862: $08 $02 $04
    stop                                          ; $7865: $10 $00
    rst $38                                       ; $7867: $ff
    add hl, bc                                    ; $7868: $09
    ld [bc], a                                    ; $7869: $02
    ld a, [$f306]                                 ; $786a: $fa $06 $f3
    ld a, [bc]                                    ; $786d: $0a

jr_0f5_786e:
    rst $18                                       ; $786e: $df
    ld a, [$faef]                                 ; $786f: $fa $ef $fa
    ld [bc], a                                    ; $7872: $02
    inc b                                         ; $7873: $04
    ld [bc], a                                    ; $7874: $02
    inc c                                         ; $7875: $0c
    add d                                         ; $7876: $82
    inc b                                         ; $7877: $04
    nop                                           ; $7878: $00
    ld [bc], a                                    ; $7879: $02
    ld a, [de]                                    ; $787a: $1a
    ld [bc], a                                    ; $787b: $02
    inc c                                         ; $787c: $0c
    ld [bc], a                                    ; $787d: $02
    ld b, $02                                     ; $787e: $06 $02
    jr jr_0f5_7804                                ; $7880: $18 $82

    ld c, $0a                                     ; $7882: $0e $0a
    ld [bc], a                                    ; $7884: $02
    db $10                                        ; $7885: $10
    ld [bc], a                                    ; $7886: $02
    add hl, bc                                    ; $7887: $09
    ld [bc], a                                    ; $7888: $02
    inc b                                         ; $7889: $04
    ld [bc], a                                    ; $788a: $02
    db $10                                        ; $788b: $10
    ld [bc], a                                    ; $788c: $02
    add hl, bc                                    ; $788d: $09
    add d                                         ; $788e: $82
    inc c                                         ; $788f: $0c
    ld [$0004], sp                                ; $7890: $08 $04 $00
    add d                                         ; $7893: $82
    ld b, $02                                     ; $7894: $06 $02
    ld [bc], a                                    ; $7896: $02
    nop                                           ; $7897: $00
    add d                                         ; $7898: $82
    inc c                                         ; $7899: $0c
    ld [$001a], sp                                ; $789a: $08 $1a $00
    rst $38                                       ; $789d: $ff
    add hl, bc                                    ; $789e: $09
    ld [bc], a                                    ; $789f: $02
    ld a, [$f306]                                 ; $78a0: $fa $06 $f3
    ld a, [bc]                                    ; $78a3: $0a
    db $db                                        ; $78a4: $db
    ld a, [$faeb]                                 ; $78a5: $fa $eb $fa
    ld [bc], a                                    ; $78a8: $02
    inc b                                         ; $78a9: $04
    ld [bc], a                                    ; $78aa: $02
    inc c                                         ; $78ab: $0c
    add d                                         ; $78ac: $82
    inc b                                         ; $78ad: $04
    nop                                           ; $78ae: $00
    ld [bc], a                                    ; $78af: $02
    ld a, [de]                                    ; $78b0: $1a
    ld [bc], a                                    ; $78b1: $02
    nop                                           ; $78b2: $00
    ld [bc], a                                    ; $78b3: $02
    inc c                                         ; $78b4: $0c
    ld [bc], a                                    ; $78b5: $02
    ld [bc], a                                    ; $78b6: $02
    ld [bc], a                                    ; $78b7: $02
    jr jr_0f5_783c                                ; $78b8: $18 $82

    ld b, $02                                     ; $78ba: $06 $02
    ld [bc], a                                    ; $78bc: $02
    nop                                           ; $78bd: $00
    ld [bc], a                                    ; $78be: $02
    add hl, bc                                    ; $78bf: $09
    ld [bc], a                                    ; $78c0: $02
    inc b                                         ; $78c1: $04
    ld [bc], a                                    ; $78c2: $02
    nop                                           ; $78c3: $00
    ld [bc], a                                    ; $78c4: $02
    add hl, bc                                    ; $78c5: $09
    add d                                         ; $78c6: $82
    inc c                                         ; $78c7: $0c
    ld [$0004], sp                                ; $78c8: $08 $04 $00
    add c                                         ; $78cb: $81
    inc b                                         ; $78cc: $04
    dec e                                         ; $78cd: $1d
    nop                                           ; $78ce: $00
    rst $38                                       ; $78cf: $ff
    add hl, bc                                    ; $78d0: $09
    ld [bc], a                                    ; $78d1: $02
    ld a, [$f306]                                 ; $78d2: $fa $06 $f3
    ld a, [bc]                                    ; $78d5: $0a
    reti                                          ; $78d6: $d9


    ld a, [$fae9]                                 ; $78d7: $fa $e9 $fa
    ld [bc], a                                    ; $78da: $02
    inc b                                         ; $78db: $04
    ld [bc], a                                    ; $78dc: $02
    inc c                                         ; $78dd: $0c
    add d                                         ; $78de: $82
    inc b                                         ; $78df: $04
    nop                                           ; $78e0: $00
    ld [bc], a                                    ; $78e1: $02
    ld a, [de]                                    ; $78e2: $1a
    ld [bc], a                                    ; $78e3: $02
    nop                                           ; $78e4: $00
    ld [bc], a                                    ; $78e5: $02
    inc c                                         ; $78e6: $0c
    ld [bc], a                                    ; $78e7: $02
    ld [bc], a                                    ; $78e8: $02
    ld [bc], a                                    ; $78e9: $02
    jr jr_0f5_786e                                ; $78ea: $18 $82

    ld b, $02                                     ; $78ec: $06 $02
    ld [bc], a                                    ; $78ee: $02
    nop                                           ; $78ef: $00
    ld [bc], a                                    ; $78f0: $02
    add hl, bc                                    ; $78f1: $09
    ld [bc], a                                    ; $78f2: $02
    inc b                                         ; $78f3: $04
    ld [bc], a                                    ; $78f4: $02
    nop                                           ; $78f5: $00
    ld [bc], a                                    ; $78f6: $02
    add hl, bc                                    ; $78f7: $09
    add d                                         ; $78f8: $82
    inc c                                         ; $78f9: $0c
    ld [$0004], sp                                ; $78fa: $08 $04 $00
    add c                                         ; $78fd: $81
    inc b                                         ; $78fe: $04
    dec e                                         ; $78ff: $1d
    nop                                           ; $7900: $00
    rst $38                                       ; $7901: $ff
    dec bc                                        ; $7902: $0b
    inc bc                                        ; $7903: $03
    ld a, [$fa06]                                 ; $7904: $fa $06 $fa
    ld b, $e6                                     ; $7907: $06 $e6
    db $fc                                        ; $7909: $fc
    or $fc                                        ; $790a: $f6 $fc
    or $fd                                        ; $790c: $f6 $fd
    xor [hl]                                      ; $790e: $ae
    ld [$0800], sp                                ; $790f: $08 $00 $08
    nop                                           ; $7912: $00
    ld [$1400], sp                                ; $7913: $08 $00 $14
    ld [$0814], sp                                ; $7916: $08 $14 $08
    inc d                                         ; $7919: $14
    ld [$0814], sp                                ; $791a: $08 $14 $08
    inc e                                         ; $791d: $1c
    ld [$1c22], sp                                ; $791e: $08 $22 $1c
    ld a, [hl+]                                   ; $7921: $2a
    inc e                                         ; $7922: $1c
    ld l, $18                                     ; $7923: $2e $18
    ld a, [hl-]                                   ; $7925: $3a
    inc c                                         ; $7926: $0c
    ld a, [hl+]                                   ; $7927: $2a
    inc e                                         ; $7928: $1c
    ld c, l                                       ; $7929: $4d
    ld a, $59                                     ; $792a: $3e $59
    ld a, $6d                                     ; $792c: $3e $6d
    ld e, $5b                                     ; $792e: $1e $5b
    inc a                                         ; $7930: $3c
    ld e, l                                       ; $7931: $5d
    ld a, $49                                     ; $7932: $3e $49
    ld a, $bc                                     ; $7934: $3e $bc
    ld a, a                                       ; $7936: $7f
    adc [hl]                                      ; $7937: $8e
    ld a, l                                       ; $7938: $7d
    ld d, c                                       ; $7939: $51
    ld l, $2a                                     ; $793a: $2e $2a
    inc d                                         ; $793c: $14
    jr jr_0f5_793f                                ; $793d: $18 $00

jr_0f5_793f:
    add e                                         ; $793f: $83
    ld bc, $0100                                  ; $7940: $01 $00 $01
    rla                                           ; $7943: $17
    nop                                           ; $7944: $00
    rst $38                                       ; $7945: $ff
    rrca                                          ; $7946: $0f
    dec b                                         ; $7947: $05
    ld a, [$fa06]                                 ; $7948: $fa $06 $fa
    ld b, $e6                                     ; $794b: $06 $e6
    db $fc                                        ; $794d: $fc
    or $fa                                        ; $794e: $f6 $fa
    or $ff                                        ; $7950: $f6 $ff
    ld b, $f9                                     ; $7952: $06 $f9
    ld b, $00                                     ; $7954: $06 $00
    xor $08                                       ; $7956: $ee $08
    nop                                           ; $7958: $00
    ld [$0800], sp                                ; $7959: $08 $00 $08
    nop                                           ; $795c: $00
    inc d                                         ; $795d: $14
    ld [$0814], sp                                ; $795e: $08 $14 $08
    inc d                                         ; $7961: $14
    ld [$0814], sp                                ; $7962: $08 $14 $08
    inc e                                         ; $7965: $1c
    ld [$1c22], sp                                ; $7966: $08 $22 $1c
    ld a, [hl+]                                   ; $7969: $2a
    inc e                                         ; $796a: $1c
    ld l, $18                                     ; $796b: $2e $18
    ld a, [hl-]                                   ; $796d: $3a
    inc c                                         ; $796e: $0c
    ld a, [hl+]                                   ; $796f: $2a
    inc e                                         ; $7970: $1c
    ld c, l                                       ; $7971: $4d
    ld a, $59                                     ; $7972: $3e $59
    ld a, $6d                                     ; $7974: $3e $6d
    ld e, $16                                     ; $7976: $1e $16
    rrca                                          ; $7978: $0f
    ld d, $0f                                     ; $7979: $16 $0f
    inc de                                        ; $797b: $13
    rrca                                          ; $797c: $0f
    daa                                           ; $797d: $27
    rra                                           ; $797e: $1f
    ld [hl-], a                                   ; $797f: $32
    rrca                                          ; $7980: $0f
    ld h, $1f                                     ; $7981: $26 $1f
    cpl                                           ; $7983: $2f
    rra                                           ; $7984: $1f
    ld [hl-], a                                   ; $7985: $32
    rrca                                          ; $7986: $0f
    ld [hl], $0f                                  ; $7987: $36 $0f
    ld h, e                                       ; $7989: $63
    rra                                           ; $798a: $1f
    ld [hl], a                                    ; $798b: $77
    rrca                                          ; $798c: $0f
    ld h, [hl]                                    ; $798d: $66
    rra                                           ; $798e: $1f
    ld c, [hl]                                    ; $798f: $4e
    ccf                                           ; $7990: $3f
    rst $20                                       ; $7991: $e7
    rra                                           ; $7992: $1f
    rst $08                                       ; $7993: $cf
    ccf                                           ; $7994: $3f
    and $1f                                       ; $7995: $e6 $1f
    jr jr_0f5_7999                                ; $7997: $18 $00

jr_0f5_7999:
    ld [$0810], sp                                ; $7999: $08 $10 $08
    db $10                                        ; $799c: $10
    inc b                                         ; $799d: $04
    jr @+$0e                                      ; $799e: $18 $0c

    db $10                                        ; $79a0: $10
    inc e                                         ; $79a1: $1c
    nop                                           ; $79a2: $00
    inc c                                         ; $79a3: $0c
    db $10                                        ; $79a4: $10
    inc c                                         ; $79a5: $0c
    db $10                                        ; $79a6: $10
    inc c                                         ; $79a7: $0c
    db $10                                        ; $79a8: $10
    ld b, $18                                     ; $79a9: $06 $18
    ld c, $10                                     ; $79ab: $0e $10
    ld b, $18                                     ; $79ad: $06 $18
    ld c, $10                                     ; $79af: $0e $10
    rlca                                          ; $79b1: $07
    jr jr_0f5_79b7                                ; $79b2: $18 $03

    inc e                                         ; $79b4: $1c
    inc de                                        ; $79b5: $13
    inc e                                         ; $79b6: $1c

jr_0f5_79b7:
    ld h, a                                       ; $79b7: $67
    rra                                           ; $79b8: $1f
    ld c, e                                       ; $79b9: $4b
    ccf                                           ; $79ba: $3f
    db $e3                                        ; $79bb: $e3
    rra                                           ; $79bc: $1f
    rst $10                                       ; $79bd: $d7
    cpl                                           ; $79be: $2f
    ld b, e                                       ; $79bf: $43
    ccf                                           ; $79c0: $3f
    nop                                           ; $79c1: $00
    rra                                           ; $79c2: $1f
    nop                                           ; $79c3: $00
    rlca                                          ; $79c4: $07
    ld [de], a                                    ; $79c5: $12
    nop                                           ; $79c6: $00
    adc [hl]                                      ; $79c7: $8e
    ld l, d                                       ; $79c8: $6a
    ld [hl], h                                    ; $79c9: $74
    ld b, $78                                     ; $79ca: $06 $78
    ld h, a                                       ; $79cc: $67
    ld a, b                                       ; $79cd: $78
    ld l, e                                       ; $79ce: $6b
    ld [hl], h                                    ; $79cf: $74
    nop                                           ; $79d0: $00
    ld a, [hl]                                    ; $79d1: $7e
    nop                                           ; $79d2: $00
    ld a, h                                       ; $79d3: $7c
    nop                                           ; $79d4: $00
    ld [hl], b                                    ; $79d5: $70
    ld [de], a                                    ; $79d6: $12
    nop                                           ; $79d7: $00
    rst $38                                       ; $79d8: $ff
    dec d                                         ; $79d9: $15
    ld [$06fa], sp                                ; $79da: $08 $fa $06
    ld a, [$f706]                                 ; $79dd: $fa $06 $f7
    push af                                       ; $79e0: $f5
    rlca                                          ; $79e1: $07
    push af                                       ; $79e2: $f5
    push hl                                       ; $79e3: $e5
    db $fd                                        ; $79e4: $fd
    push af                                       ; $79e5: $f5
    db $fd                                        ; $79e6: $fd
    dec b                                         ; $79e7: $05

jr_0f5_79e8:
    db $fd                                        ; $79e8: $fd
    dec d                                         ; $79e9: $15
    db $fd                                        ; $79ea: $fd
    db $fc                                        ; $79eb: $fc
    dec b                                         ; $79ec: $05
    inc c                                         ; $79ed: $0c
    dec b                                         ; $79ee: $05
    cp $01                                        ; $79ef: $fe $01
    nop                                           ; $79f1: $00
    ld bc, $0100                                  ; $79f2: $01 $00 $01
    nop                                           ; $79f5: $00
    ld bc, $0100                                  ; $79f6: $01 $00 $01
    nop                                           ; $79f9: $00
    inc bc                                        ; $79fa: $03
    nop                                           ; $79fb: $00
    inc bc                                        ; $79fc: $03
    nop                                           ; $79fd: $00
    inc bc                                        ; $79fe: $03
    nop                                           ; $79ff: $00
    ld [bc], a                                    ; $7a00: $02
    ld bc, $0007                                  ; $7a01: $01 $07 $00
    ld b, $01                                     ; $7a04: $06 $01
    rlca                                          ; $7a06: $07
    nop                                           ; $7a07: $00
    ld b, $01                                     ; $7a08: $06 $01
    inc b                                         ; $7a0a: $04
    inc bc                                        ; $7a0b: $03
    ld c, $01                                     ; $7a0c: $0e $01
    dec c                                         ; $7a0e: $0d
    ld [bc], a                                    ; $7a0f: $02
    inc c                                         ; $7a10: $0c
    inc bc                                        ; $7a11: $03
    inc c                                         ; $7a12: $0c
    inc bc                                        ; $7a13: $03
    ld c, $01                                     ; $7a14: $0e $01
    ld [$1807], sp                                ; $7a16: $08 $07 $18
    rlca                                          ; $7a19: $07
    inc e                                         ; $7a1a: $1c
    inc bc                                        ; $7a1b: $03
    jr jr_0f5_7a25                                ; $7a1c: $18 $07

    inc d                                         ; $7a1e: $14
    dec bc                                        ; $7a1f: $0b
    db $10                                        ; $7a20: $10
    rrca                                          ; $7a21: $0f
    jr @+$09                                      ; $7a22: $18 $07

    add hl, sp                                    ; $7a24: $39

jr_0f5_7a25:
    rlca                                          ; $7a25: $07
    jr nc, @+$11                                  ; $7a26: $30 $0f

    add hl, sp                                    ; $7a28: $39
    rlca                                          ; $7a29: $07
    jr nc, @+$11                                  ; $7a2a: $30 $0f

    ld a, [de]                                    ; $7a2c: $1a
    dec b                                         ; $7a2d: $05
    rlca                                          ; $7a2e: $07
    nop                                           ; $7a2f: $00
    stop                                          ; $7a30: $10 $00
    stop                                          ; $7a32: $10 $00
    stop                                          ; $7a34: $10 $00
    stop                                          ; $7a36: $10 $00
    jr z, jr_0f5_7a4a                             ; $7a38: $28 $10

    jr z, jr_0f5_7a4c                             ; $7a3a: $28 $10

    jr z, jr_0f5_7a4e                             ; $7a3c: $28 $10

    jr z, jr_0f5_7a50                             ; $7a3e: $28 $10

    ld e, h                                       ; $7a40: $5c
    jr nc, jr_0f5_7aa7                            ; $7a41: $30 $64

    jr jr_0f5_7a91                                ; $7a43: $18 $4c

    jr nc, jr_0f5_7a9b                            ; $7a45: $30 $54

    jr c, jr_0f5_7ab5                             ; $7a47: $38 $6c

    db $10                                        ; $7a49: $10

jr_0f5_7a4a:
    sub $38                                       ; $7a4a: $d6 $38

jr_0f5_7a4c:
    add $38                                       ; $7a4c: $c6 $38

jr_0f5_7a4e:
    sub [hl]                                      ; $7a4e: $96
    ld a, b                                       ; $7a4f: $78

jr_0f5_7a50:
    jp nc, $d63c                                  ; $7a50: $d2 $3c $d6

    jr c, jr_0f5_79e8                             ; $7a53: $38 $93

    ld a, h                                       ; $7a55: $7c
    and e                                         ; $7a56: $a3
    ld a, h                                       ; $7a57: $7c
    rla                                           ; $7a58: $17
    ld hl, sp-$6d                                 ; $7a59: $f8 $93
    ld a, h                                       ; $7a5b: $7c
    or e                                          ; $7a5c: $b3
    ld a, h                                       ; $7a5d: $7c
    add hl, de                                    ; $7a5e: $19
    cp $bb                                        ; $7a5f: $fe $bb
    ld a, h                                       ; $7a61: $7c
    ld sp, $73fe                                  ; $7a62: $31 $fe $73
    db $fc                                        ; $7a65: $fc
    add hl, sp                                    ; $7a66: $39
    cp $78                                        ; $7a67: $fe $78
    rst $38                                       ; $7a69: $ff
    dec [hl]                                      ; $7a6a: $35
    cp $7c                                        ; $7a6b: $fe $7c
    rst $38                                       ; $7a6d: $ff
    and a                                         ; $7a6e: $a7
    or b                                          ; $7a6f: $b0
    rst $38                                       ; $7a70: $ff
    inc a                                         ; $7a71: $3c
    rst $38                                       ; $7a72: $ff
    ld a, h                                       ; $7a73: $7c
    rst $38                                       ; $7a74: $ff
    jr nc, @+$01                                  ; $7a75: $30 $ff

jr_0f5_7a77:
    ld a, h                                       ; $7a77: $7c
    rst $38                                       ; $7a78: $ff
    ld a, [c]                                     ; $7a79: $f2
    rst $38                                       ; $7a7a: $ff
    jr c, @+$01                                   ; $7a7b: $38 $ff

    ld a, h                                       ; $7a7d: $7c
    rst $38                                       ; $7a7e: $ff
    cp b                                          ; $7a7f: $b8
    rst $38                                       ; $7a80: $ff
    jr c, @+$01                                   ; $7a81: $38 $ff

    db $fc                                        ; $7a83: $fc
    rst $38                                       ; $7a84: $ff
    ld a, h                                       ; $7a85: $7c
    rst $38                                       ; $7a86: $ff

jr_0f5_7a87:
    jr c, @+$01                                   ; $7a87: $38 $ff

    ld a, h                                       ; $7a89: $7c
    rst $38                                       ; $7a8a: $ff

jr_0f5_7a8b:
    ld hl, sp-$01                                 ; $7a8b: $f8 $ff
    ld [hl], $ff                                  ; $7a8d: $36 $ff
    ld l, b                                       ; $7a8f: $68
    rst $38                                       ; $7a90: $ff

jr_0f5_7a91:
    ld bc, $57fe                                  ; $7a91: $01 $fe $57
    xor b                                         ; $7a94: $a8
    cp $1b                                        ; $7a95: $fe $1b
    nop                                           ; $7a97: $00
    or l                                          ; $7a98: $b5
    add b                                         ; $7a99: $80
    nop                                           ; $7a9a: $00

jr_0f5_7a9b:
    add b                                         ; $7a9b: $80
    nop                                           ; $7a9c: $00
    add b                                         ; $7a9d: $80
    nop                                           ; $7a9e: $00
    add b                                         ; $7a9f: $80
    nop                                           ; $7aa0: $00
    ret nz                                        ; $7aa1: $c0

    nop                                           ; $7aa2: $00
    ret nz                                        ; $7aa3: $c0

    nop                                           ; $7aa4: $00
    ret nz                                        ; $7aa5: $c0

    nop                                           ; $7aa6: $00

jr_0f5_7aa7:
    ld b, b                                       ; $7aa7: $40
    add b                                         ; $7aa8: $80
    ret nz                                        ; $7aa9: $c0

    nop                                           ; $7aaa: $00
    ld h, b                                       ; $7aab: $60
    add b                                         ; $7aac: $80
    ld h, b                                       ; $7aad: $60
    add b                                         ; $7aae: $80
    and b                                         ; $7aaf: $a0
    ld b, b                                       ; $7ab0: $40
    ld h, b                                       ; $7ab1: $60
    add b                                         ; $7ab2: $80
    ldh [rP1], a                                  ; $7ab3: $e0 $00

jr_0f5_7ab5:
    jr nz, jr_0f5_7a77                            ; $7ab5: $20 $c0

    ld [hl], b                                    ; $7ab7: $70
    add b                                         ; $7ab8: $80
    or b                                          ; $7ab9: $b0
    ld b, b                                       ; $7aba: $40
    db $10                                        ; $7abb: $10
    ldh [$30], a                                  ; $7abc: $e0 $30
    ret nz                                        ; $7abe: $c0

    ld [hl], b                                    ; $7abf: $70
    add b                                         ; $7ac0: $80
    db $10                                        ; $7ac1: $10
    ldh [$58], a                                  ; $7ac2: $e0 $58
    and b                                         ; $7ac4: $a0
    jr c, jr_0f5_7a87                             ; $7ac5: $38 $c0

    ld e, b                                       ; $7ac7: $58
    and b                                         ; $7ac8: $a0
    jr c, jr_0f5_7a8b                             ; $7ac9: $38 $c0

    ld [hl], b                                    ; $7acb: $70
    add b                                         ; $7acc: $80
    ret nz                                        ; $7acd: $c0

    dec bc                                        ; $7ace: $0b
    nop                                           ; $7acf: $00
    rst $38                                       ; $7ad0: $ff
    dec d                                         ; $7ad1: $15
    ld [$06fa], sp                                ; $7ad2: $08 $fa $06
    ld a, [$f706]                                 ; $7ad5: $fa $06 $f7
    push af                                       ; $7ad8: $f5
    rlca                                          ; $7ad9: $07
    push af                                       ; $7ada: $f5
    push hl                                       ; $7adb: $e5
    db $fd                                        ; $7adc: $fd
    push af                                       ; $7add: $f5
    db $fd                                        ; $7ade: $fd
    dec b                                         ; $7adf: $05
    db $fd                                        ; $7ae0: $fd
    dec d                                         ; $7ae1: $15
    db $fd                                        ; $7ae2: $fd
    db $fc                                        ; $7ae3: $fc
    dec b                                         ; $7ae4: $05
    inc c                                         ; $7ae5: $0c
    dec b                                         ; $7ae6: $05
    cp $01                                        ; $7ae7: $fe $01
    nop                                           ; $7ae9: $00
    ld bc, $0100                                  ; $7aea: $01 $00 $01
    nop                                           ; $7aed: $00
    ld bc, $0100                                  ; $7aee: $01 $00 $01
    nop                                           ; $7af1: $00
    inc bc                                        ; $7af2: $03
    nop                                           ; $7af3: $00
    ld [bc], a                                    ; $7af4: $02
    ld bc, $0003                                  ; $7af5: $01 $03 $00
    ld [bc], a                                    ; $7af8: $02
    ld bc, $0106                                  ; $7af9: $01 $06 $01
    inc b                                         ; $7afc: $04
    inc bc                                        ; $7afd: $03
    ld b, $01                                     ; $7afe: $06 $01
    inc b                                         ; $7b00: $04
    inc bc                                        ; $7b01: $03
    dec b                                         ; $7b02: $05
    inc bc                                        ; $7b03: $03
    ld [$0c07], sp                                ; $7b04: $08 $07 $0c
    inc bc                                        ; $7b07: $03
    ld [$0d07], sp                                ; $7b08: $08 $07 $0d
    inc bc                                        ; $7b0b: $03
    dec bc                                        ; $7b0c: $0b
    rlca                                          ; $7b0d: $07
    ld [$1907], sp                                ; $7b0e: $08 $07 $19
    rlca                                          ; $7b11: $07
    ld [de], a                                    ; $7b12: $12
    rrca                                          ; $7b13: $0f
    jr jr_0f5_7b1d                                ; $7b14: $18 $07

    inc de                                        ; $7b16: $13
    rrca                                          ; $7b17: $0f
    ld de, $180f                                  ; $7b18: $11 $0f $18
    rlca                                          ; $7b1b: $07
    dec [hl]                                      ; $7b1c: $35

jr_0f5_7b1d:
    rrca                                          ; $7b1d: $0f
    inc hl                                        ; $7b1e: $23
    rra                                           ; $7b1f: $1f
    inc a                                         ; $7b20: $3c
    rlca                                          ; $7b21: $07
    ld sp, $1a0f                                  ; $7b22: $31 $0f $1a
    dec b                                         ; $7b25: $05
    rlca                                          ; $7b26: $07
    nop                                           ; $7b27: $00
    stop                                          ; $7b28: $10 $00
    stop                                          ; $7b2a: $10 $00
    stop                                          ; $7b2c: $10 $00
    stop                                          ; $7b2e: $10 $00
    jr z, jr_0f5_7b42                             ; $7b30: $28 $10

    jr z, jr_0f5_7b44                             ; $7b32: $28 $10

    jr z, jr_0f5_7b46                             ; $7b34: $28 $10

    jr z, jr_0f5_7b48                             ; $7b36: $28 $10

    ld e, h                                       ; $7b38: $5c
    jr nc, jr_0f5_7b9f                            ; $7b39: $30 $64

    jr jr_0f5_7b99                                ; $7b3b: $18 $5c

    jr nc, jr_0f5_7b83                            ; $7b3d: $30 $44

    jr c, jr_0f5_7bad                             ; $7b3f: $38 $6c

    db $10                                        ; $7b41: $10

jr_0f5_7b42:
    sub $38                                       ; $7b42: $d6 $38

jr_0f5_7b44:
    sub $38                                       ; $7b44: $d6 $38

jr_0f5_7b46:
    sub [hl]                                      ; $7b46: $96
    ld a, b                                       ; $7b47: $78

jr_0f5_7b48:
    and d                                         ; $7b48: $a2
    ld a, h                                       ; $7b49: $7c
    sub $38                                       ; $7b4a: $d6 $38
    sub a                                         ; $7b4c: $97
    ld a, b                                       ; $7b4d: $78
    inc hl                                        ; $7b4e: $23
    db $fc                                        ; $7b4f: $fc
    daa                                           ; $7b50: $27
    ld hl, sp-$49                                 ; $7b51: $f8 $b7
    ld a, b                                       ; $7b53: $78
    ld h, e                                       ; $7b54: $63
    db $fc                                        ; $7b55: $fc
    scf                                           ; $7b56: $37
    ld hl, sp+$73                                 ; $7b57: $f8 $73
    db $fc                                        ; $7b59: $fc
    ld l, c                                       ; $7b5a: $69
    cp $e3                                        ; $7b5b: $fe $e3
    db $fc                                        ; $7b5d: $fc
    ld [hl], c                                    ; $7b5e: $71
    cp $f0                                        ; $7b5f: $fe $f0
    rst $38                                       ; $7b61: $ff
    ld l, e                                       ; $7b62: $6b
    db $fc                                        ; $7b63: $fc
    ld sp, hl                                     ; $7b64: $f9
    cp $a7                                        ; $7b65: $fe $a7
    ld h, b                                       ; $7b67: $60
    rst $38                                       ; $7b68: $ff
    ld a, c                                       ; $7b69: $79
    cp $f3                                        ; $7b6a: $fe $f3
    db $fc                                        ; $7b6c: $fc
    ld h, b                                       ; $7b6d: $60
    rst $38                                       ; $7b6e: $ff
    pop af                                        ; $7b6f: $f1
    cp $c9                                        ; $7b70: $fe $c9
    cp $e2                                        ; $7b72: $fe $e2
    db $fd                                        ; $7b74: $fd
    pop af                                        ; $7b75: $f1
    cp $e0                                        ; $7b76: $fe $e0
    rst $38                                       ; $7b78: $ff
    ldh [rIE], a                                  ; $7b79: $e0 $ff

jr_0f5_7b7b:
    pop af                                        ; $7b7b: $f1
    cp $f0                                        ; $7b7c: $fe $f0
    rst $38                                       ; $7b7e: $ff
    pop hl                                        ; $7b7f: $e1
    cp $f0                                        ; $7b80: $fe $f0
    rst $38                                       ; $7b82: $ff

jr_0f5_7b83:
    ldh [rIE], a                                  ; $7b83: $e0 $ff
    reti                                          ; $7b85: $d9


    cp $a0                                        ; $7b86: $fe $a0
    rst $38                                       ; $7b88: $ff
    inc bc                                        ; $7b89: $03
    db $fc                                        ; $7b8a: $fc
    ld e, a                                       ; $7b8b: $5f
    and b                                         ; $7b8c: $a0
    cp $1b                                        ; $7b8d: $fe $1b
    nop                                           ; $7b8f: $00
    or l                                          ; $7b90: $b5
    add b                                         ; $7b91: $80
    nop                                           ; $7b92: $00
    add b                                         ; $7b93: $80
    nop                                           ; $7b94: $00
    add b                                         ; $7b95: $80
    nop                                           ; $7b96: $00
    add b                                         ; $7b97: $80
    nop                                           ; $7b98: $00

jr_0f5_7b99:
    ret nz                                        ; $7b99: $c0

    nop                                           ; $7b9a: $00
    ret nz                                        ; $7b9b: $c0

    nop                                           ; $7b9c: $00
    ret nz                                        ; $7b9d: $c0

    nop                                           ; $7b9e: $00

jr_0f5_7b9f:
    ret nz                                        ; $7b9f: $c0

    nop                                           ; $7ba0: $00
    ret nz                                        ; $7ba1: $c0

    nop                                           ; $7ba2: $00
    ldh [rP1], a                                  ; $7ba3: $e0 $00
    ldh [rP1], a                                  ; $7ba5: $e0 $00
    ldh [rP1], a                                  ; $7ba7: $e0 $00
    ldh [rP1], a                                  ; $7ba9: $e0 $00
    ldh [rP1], a                                  ; $7bab: $e0 $00

jr_0f5_7bad:
    ld h, b                                       ; $7bad: $60
    add b                                         ; $7bae: $80
    ldh a, [rP1]                                  ; $7baf: $f0 $00
    ldh a, [rP1]                                  ; $7bb1: $f0 $00
    ld [hl], b                                    ; $7bb3: $70
    add b                                         ; $7bb4: $80
    ldh a, [rP1]                                  ; $7bb5: $f0 $00
    ldh a, [rP1]                                  ; $7bb7: $f0 $00
    jr nc, jr_0f5_7b7b                            ; $7bb9: $30 $c0

    ld a, b                                       ; $7bbb: $78
    add b                                         ; $7bbc: $80
    ld hl, sp+$00                                 ; $7bbd: $f8 $00
    jr c, @-$3e                                   ; $7bbf: $38 $c0

    ld hl, sp+$00                                 ; $7bc1: $f8 $00
    ldh a, [rP1]                                  ; $7bc3: $f0 $00
    ret nz                                        ; $7bc5: $c0

    dec bc                                        ; $7bc6: $0b
    nop                                           ; $7bc7: $00
    rst $38                                       ; $7bc8: $ff
    dec d                                         ; $7bc9: $15
    ld [$06fa], sp                                ; $7bca: $08 $fa $06
    ld a, [$f706]                                 ; $7bcd: $fa $06 $f7
    push af                                       ; $7bd0: $f5
    rlca                                          ; $7bd1: $07
    push af                                       ; $7bd2: $f5
    push hl                                       ; $7bd3: $e5
    db $fd                                        ; $7bd4: $fd
    push af                                       ; $7bd5: $f5
    db $fd                                        ; $7bd6: $fd
    dec b                                         ; $7bd7: $05
    db $fd                                        ; $7bd8: $fd
    dec d                                         ; $7bd9: $15
    db $fd                                        ; $7bda: $fd
    db $fc                                        ; $7bdb: $fc
    dec b                                         ; $7bdc: $05
    inc c                                         ; $7bdd: $0c
    dec b                                         ; $7bde: $05
    cp $01                                        ; $7bdf: $fe $01
    nop                                           ; $7be1: $00
    ld bc, $0100                                  ; $7be2: $01 $00 $01
    nop                                           ; $7be5: $00
    ld bc, $0100                                  ; $7be6: $01 $00 $01

jr_0f5_7be9:
    nop                                           ; $7be9: $00
    ld [bc], a                                    ; $7bea: $02
    ld bc, $0103                                  ; $7beb: $01 $03 $01
    inc bc                                        ; $7bee: $03
    ld bc, $0103                                  ; $7bef: $01 $03 $01
    dec b                                         ; $7bf2: $05
    inc bc                                        ; $7bf3: $03
    rlca                                          ; $7bf4: $07
    inc bc                                        ; $7bf5: $03
    dec b                                         ; $7bf6: $05
    inc bc                                        ; $7bf7: $03
    rlca                                          ; $7bf8: $07
    inc bc                                        ; $7bf9: $03
    rlca                                          ; $7bfa: $07
    inc bc                                        ; $7bfb: $03
    add hl, bc                                    ; $7bfc: $09
    rlca                                          ; $7bfd: $07
    rrca                                          ; $7bfe: $0f
    rlca                                          ; $7bff: $07
    add hl, bc                                    ; $7c00: $09
    rlca                                          ; $7c01: $07
    rrca                                          ; $7c02: $0f
    rlca                                          ; $7c03: $07
    rrca                                          ; $7c04: $0f
    rlca                                          ; $7c05: $07
    dec bc                                        ; $7c06: $0b
    rlca                                          ; $7c07: $07
    rra                                           ; $7c08: $1f
    rlca                                          ; $7c09: $07
    inc de                                        ; $7c0a: $13
    rrca                                          ; $7c0b: $0f
    rla                                           ; $7c0c: $17
    rrca                                          ; $7c0d: $0f
    rra                                           ; $7c0e: $1f
    rrca                                          ; $7c0f: $0f
    rla                                           ; $7c10: $17
    rrca                                          ; $7c11: $0f
    inc de                                        ; $7c12: $13
    rrca                                          ; $7c13: $0f
    scf                                           ; $7c14: $37
    rra                                           ; $7c15: $1f
    cpl                                           ; $7c16: $2f
    rra                                           ; $7c17: $1f
    dec hl                                        ; $7c18: $2b
    rla                                           ; $7c19: $17
    ld [hl], $0f                                  ; $7c1a: $36 $0f
    ld a, [de]                                    ; $7c1c: $1a
    dec b                                         ; $7c1d: $05
    rlca                                          ; $7c1e: $07
    nop                                           ; $7c1f: $00
    stop                                          ; $7c20: $10 $00
    stop                                          ; $7c22: $10 $00
    stop                                          ; $7c24: $10 $00
    stop                                          ; $7c26: $10 $00
    jr z, @+$12                                   ; $7c28: $28 $10

    jr z, jr_0f5_7c3c                             ; $7c2a: $28 $10

    jr z, jr_0f5_7c3e                             ; $7c2c: $28 $10

    jr z, jr_0f5_7c40                             ; $7c2e: $28 $10

    ld l, h                                       ; $7c30: $6c
    jr nc, @+$46                                  ; $7c31: $30 $44

    jr c, jr_0f5_7ca1                             ; $7c33: $38 $6c

    jr nc, jr_0f5_7c9b                            ; $7c35: $30 $64

    jr c, jr_0f5_7c85                             ; $7c37: $38 $4c

    jr nc, jr_0f5_7be9                            ; $7c39: $30 $ae

    ld [hl], b                                    ; $7c3b: $70

jr_0f5_7c3c:
    xor [hl]                                      ; $7c3c: $ae
    ld [hl], b                                    ; $7c3d: $70

jr_0f5_7c3e:
    add $78                                       ; $7c3e: $c6 $78

jr_0f5_7c40:
    xor [hl]                                      ; $7c40: $ae
    ld [hl], b                                    ; $7c41: $70
    add $78                                       ; $7c42: $c6 $78
    ld h, e                                       ; $7c44: $63
    db $fc                                        ; $7c45: $fc
    rst $00                                       ; $7c46: $c7
    ld hl, sp-$71                                 ; $7c47: $f8 $8f
    ldh a, [$cb]                                  ; $7c49: $f0 $cb
    db $f4                                        ; $7c4b: $f4
    add a                                         ; $7c4c: $87
    ld hl, sp-$31                                 ; $7c4d: $f8 $cf
    ldh a, [$c7]                                  ; $7c4f: $f0 $c7
    ld hl, sp-$5d                                 ; $7c51: $f8 $a3
    db $fc                                        ; $7c53: $fc
    add a                                         ; $7c54: $87
    ld hl, sp-$3d                                 ; $7c55: $f8 $c3
    db $fc                                        ; $7c57: $fc
    pop bc                                        ; $7c58: $c1
    cp $a7                                        ; $7c59: $fe $a7
    ld hl, sp-$1d                                 ; $7c5b: $f8 $e3
    db $fc                                        ; $7c5d: $fc
    and a                                         ; $7c5e: $a7
    add c                                         ; $7c5f: $81
    cp $e3                                        ; $7c60: $fe $e3
    db $fc                                        ; $7c62: $fc
    add $f9                                       ; $7c63: $c6 $f9
    add c                                         ; $7c65: $81
    cp $c3                                        ; $7c66: $fe $c3
    db $fc                                        ; $7c68: $fc
    ld hl, $87fe                                  ; $7c69: $21 $fe $87
    ld hl, sp-$37                                 ; $7c6c: $f8 $c9
    or $87                                        ; $7c6e: $f6 $87
    ld hl, sp-$7e                                 ; $7c70: $f8 $82
    db $fd                                        ; $7c72: $fd
    pop bc                                        ; $7c73: $c1
    cp $47                                        ; $7c74: $fe $47
    ld hl, sp-$7d                                 ; $7c76: $f8 $83
    db $fc                                        ; $7c78: $fc
    call nz, $81fb                                ; $7c79: $c4 $fb $81
    cp $63                                        ; $7c7c: $fe $63
    db $fc                                        ; $7c7e: $fc
    add h                                         ; $7c7f: $84
    ei                                            ; $7c80: $fb
    inc bc                                        ; $7c81: $03
    db $fc                                        ; $7c82: $fc
    ld a, a                                       ; $7c83: $7f
    add b                                         ; $7c84: $80

jr_0f5_7c85:
    cp $1b                                        ; $7c85: $fe $1b
    nop                                           ; $7c87: $00
    or l                                          ; $7c88: $b5
    add b                                         ; $7c89: $80
    nop                                           ; $7c8a: $00
    add b                                         ; $7c8b: $80
    nop                                           ; $7c8c: $00
    add b                                         ; $7c8d: $80
    nop                                           ; $7c8e: $00
    add b                                         ; $7c8f: $80
    nop                                           ; $7c90: $00
    ret nz                                        ; $7c91: $c0

    nop                                           ; $7c92: $00
    ret nz                                        ; $7c93: $c0

    nop                                           ; $7c94: $00
    ret nz                                        ; $7c95: $c0

    nop                                           ; $7c96: $00
    ret nz                                        ; $7c97: $c0

    nop                                           ; $7c98: $00
    ret nz                                        ; $7c99: $c0

    nop                                           ; $7c9a: $00

jr_0f5_7c9b:
    ldh [rP1], a                                  ; $7c9b: $e0 $00
    ldh [rP1], a                                  ; $7c9d: $e0 $00
    ldh [rP1], a                                  ; $7c9f: $e0 $00

jr_0f5_7ca1:
    ldh [rP1], a                                  ; $7ca1: $e0 $00
    ldh [rP1], a                                  ; $7ca3: $e0 $00
    ldh [rP1], a                                  ; $7ca5: $e0 $00
    ldh a, [rP1]                                  ; $7ca7: $f0 $00
    ldh a, [rP1]                                  ; $7ca9: $f0 $00
    ldh a, [rP1]                                  ; $7cab: $f0 $00
    ldh a, [rP1]                                  ; $7cad: $f0 $00
    ldh a, [rP1]                                  ; $7caf: $f0 $00
    ldh a, [rP1]                                  ; $7cb1: $f0 $00
    ld hl, sp+$00                                 ; $7cb3: $f8 $00
    ld hl, sp+$00                                 ; $7cb5: $f8 $00
    ld a, b                                       ; $7cb7: $78
    add b                                         ; $7cb8: $80
    ld hl, sp+$00                                 ; $7cb9: $f8 $00
    ldh a, [rP1]                                  ; $7cbb: $f0 $00
    ret nz                                        ; $7cbd: $c0

    dec bc                                        ; $7cbe: $0b
    nop                                           ; $7cbf: $00
    rst $38                                       ; $7cc0: $ff
    dec d                                         ; $7cc1: $15
    ld [$06fa], sp                                ; $7cc2: $08 $fa $06
    ld a, [$f706]                                 ; $7cc5: $fa $06 $f7
    push af                                       ; $7cc8: $f5
    rlca                                          ; $7cc9: $07
    push af                                       ; $7cca: $f5
    push hl                                       ; $7ccb: $e5
    db $fd                                        ; $7ccc: $fd
    push af                                       ; $7ccd: $f5
    db $fd                                        ; $7cce: $fd
    dec b                                         ; $7ccf: $05
    db $fd                                        ; $7cd0: $fd
    dec d                                         ; $7cd1: $15
    db $fd                                        ; $7cd2: $fd
    db $fc                                        ; $7cd3: $fc
    dec b                                         ; $7cd4: $05
    inc c                                         ; $7cd5: $0c
    dec b                                         ; $7cd6: $05
    cp $01                                        ; $7cd7: $fe $01
    nop                                           ; $7cd9: $00
    ld bc, $0100                                  ; $7cda: $01 $00 $01

jr_0f5_7cdd:
    nop                                           ; $7cdd: $00
    ld bc, $0100                                  ; $7cde: $01 $00 $01
    nop                                           ; $7ce1: $00
    inc bc                                        ; $7ce2: $03
    ld bc, $0103                                  ; $7ce3: $01 $03 $01
    inc bc                                        ; $7ce6: $03
    ld bc, $0103                                  ; $7ce7: $01 $03 $01
    ld b, $03                                     ; $7cea: $06 $03
    rlca                                          ; $7cec: $07
    inc bc                                        ; $7ced: $03
    ld b, $03                                     ; $7cee: $06 $03
    ld b, $03                                     ; $7cf0: $06 $03
    dec b                                         ; $7cf2: $05
    inc bc                                        ; $7cf3: $03
    ld c, $07                                     ; $7cf4: $0e $07
    inc c                                         ; $7cf6: $0c
    rlca                                          ; $7cf7: $07
    ld c, $07                                     ; $7cf8: $0e $07
    inc c                                         ; $7cfa: $0c
    rlca                                          ; $7cfb: $07
    inc c                                         ; $7cfc: $0c
    rlca                                          ; $7cfd: $07
    ld c, $07                                     ; $7cfe: $0e $07
    inc e                                         ; $7d00: $1c
    rlca                                          ; $7d01: $07
    inc e                                         ; $7d02: $1c
    rrca                                          ; $7d03: $0f
    ld e, $0f                                     ; $7d04: $1e $0f
    jr jr_0f5_7d17                                ; $7d06: $18 $0f

    inc d                                         ; $7d08: $14
    rrca                                          ; $7d09: $0f
    jr @+$11                                      ; $7d0a: $18 $0f

    jr nc, jr_0f5_7d2d                            ; $7d0c: $30 $1f

    inc a                                         ; $7d0e: $3c
    rra                                           ; $7d0f: $1f
    jr z, jr_0f5_7d31                             ; $7d10: $28 $1f

    jr nc, @+$11                                  ; $7d12: $30 $0f

    ld a, [de]                                    ; $7d14: $1a
    dec b                                         ; $7d15: $05
    rlca                                          ; $7d16: $07

jr_0f5_7d17:
    nop                                           ; $7d17: $00
    stop                                          ; $7d18: $10 $00
    stop                                          ; $7d1a: $10 $00
    stop                                          ; $7d1c: $10 $00
    stop                                          ; $7d1e: $10 $00
    jr z, @+$12                                   ; $7d20: $28 $10

    jr z, jr_0f5_7d34                             ; $7d22: $28 $10

    jr z, jr_0f5_7d36                             ; $7d24: $28 $10

    jr z, @+$12                                   ; $7d26: $28 $10

    ld l, h                                       ; $7d28: $6c
    jr nc, @+$46                                  ; $7d29: $30 $44

    jr c, jr_0f5_7d91                             ; $7d2b: $38 $64

jr_0f5_7d2d:
    jr c, jr_0f5_7d93                             ; $7d2d: $38 $64

    jr c, jr_0f5_7d7d                             ; $7d2f: $38 $4c

jr_0f5_7d31:
    jr nc, jr_0f5_7cdd                            ; $7d31: $30 $aa

    ld [hl], h                                    ; $7d33: $74

jr_0f5_7d34:
    adc $70                                       ; $7d34: $ce $70

jr_0f5_7d36:
    jp nz, $8a7c                                  ; $7d36: $c2 $7c $8a

    ld [hl], h                                    ; $7d39: $74
    add $78                                       ; $7d3a: $c6 $78
    ld c, a                                       ; $7d3c: $4f
    ldh a, [$85]                                  ; $7d3d: $f0 $85
    ld a, [$f08f]                                 ; $7d3f: $fa $8f $f0
    push de                                       ; $7d42: $d5
    ld [$e09f], a                                 ; $7d43: $ea $9f $e0
    adc a                                         ; $7d46: $8f
    ldh a, [rNR21]                                ; $7d47: $f0 $16
    jp hl                                         ; $7d49: $e9


    adc l                                         ; $7d4a: $8d
    di                                            ; $7d4b: $f3
    rla                                           ; $7d4c: $17
    add sp, $2f                                   ; $7d4d: $e8 $2f
    ret nc                                        ; $7d4f: $d0

    rla                                           ; $7d50: $17
    add sp, $0f                                   ; $7d51: $e8 $0f
    ldh a, [$3e]                                  ; $7d53: $f0 $3e
    pop bc                                        ; $7d55: $c1

jr_0f5_7d56:
    and a                                         ; $7d56: $a7
    rla                                           ; $7d57: $17
    add sp, $0f                                   ; $7d58: $e8 $0f
    ldh a, [$1f]                                  ; $7d5a: $f0 $1f
    ldh [$37], a                                  ; $7d5c: $e0 $37
    ret z                                         ; $7d5e: $c8

    rrca                                          ; $7d5f: $0f
    ldh a, [rNR31]                                ; $7d60: $f0 $1b
    db $e4                                        ; $7d62: $e4
    rrca                                          ; $7d63: $0f
    ldh a, [$37]                                  ; $7d64: $f0 $37
    ret z                                         ; $7d66: $c8

    ld c, a                                       ; $7d67: $4f
    or b                                          ; $7d68: $b0
    dec sp                                        ; $7d69: $3b
    call nz, $e817                                ; $7d6a: $c4 $17 $e8
    rrca                                          ; $7d6d: $0f
    ldh a, [$37]                                  ; $7d6e: $f0 $37
    ret z                                         ; $7d70: $c8

    dec de                                        ; $7d71: $1b
    db $e4                                        ; $7d72: $e4
    daa                                           ; $7d73: $27
    ret c                                         ; $7d74: $d8

    rrca                                          ; $7d75: $0f

jr_0f5_7d76:
    ldh a, [rNR31]                                ; $7d76: $f0 $1b
    db $e4                                        ; $7d78: $e4
    daa                                           ; $7d79: $27
    ret c                                         ; $7d7a: $d8

    ld e, a                                       ; $7d7b: $5f
    and b                                         ; $7d7c: $a0

jr_0f5_7d7d:
    cp $1b                                        ; $7d7d: $fe $1b
    nop                                           ; $7d7f: $00
    or l                                          ; $7d80: $b5
    add b                                         ; $7d81: $80
    nop                                           ; $7d82: $00
    add b                                         ; $7d83: $80

jr_0f5_7d84:
    nop                                           ; $7d84: $00
    add b                                         ; $7d85: $80
    nop                                           ; $7d86: $00
    add b                                         ; $7d87: $80
    nop                                           ; $7d88: $00
    ld b, b                                       ; $7d89: $40
    add b                                         ; $7d8a: $80
    ret nz                                        ; $7d8b: $c0

    nop                                           ; $7d8c: $00
    ld b, b                                       ; $7d8d: $40
    add b                                         ; $7d8e: $80
    ret nz                                        ; $7d8f: $c0

    add b                                         ; $7d90: $80

jr_0f5_7d91:
    ret nz                                        ; $7d91: $c0

    nop                                           ; $7d92: $00

jr_0f5_7d93:
    ldh [rP1], a                                  ; $7d93: $e0 $00
    and b                                         ; $7d95: $a0
    ld b, b                                       ; $7d96: $40
    ld h, b                                       ; $7d97: $60
    ret nz                                        ; $7d98: $c0

    ld h, b                                       ; $7d99: $60
    ret nz                                        ; $7d9a: $c0

    ldh [rP1], a                                  ; $7d9b: $e0 $00
    and b                                         ; $7d9d: $a0
    ld b, b                                       ; $7d9e: $40
    ldh a, [rP1]                                  ; $7d9f: $f0 $00
    or b                                          ; $7da1: $b0
    ld h, b                                       ; $7da2: $60
    ret nc                                        ; $7da3: $d0

jr_0f5_7da4:
    jr nz, jr_0f5_7d56                            ; $7da4: $20 $b0

    ld h, b                                       ; $7da6: $60
    ldh a, [rP1]                                  ; $7da7: $f0 $00
    ret nc                                        ; $7da9: $d0

    jr nz, jr_0f5_7da4                            ; $7daa: $20 $f8

    nop                                           ; $7dac: $00
    add sp, $10                                   ; $7dad: $e8 $10
    ld hl, sp+$10                                 ; $7daf: $f8 $10
    ret c                                         ; $7db1: $d8

    jr nc, jr_0f5_7d84                            ; $7db2: $30 $d0

    jr nz, jr_0f5_7d76                            ; $7db4: $20 $c0

    dec bc                                        ; $7db6: $0b
    nop                                           ; $7db7: $00
    rst $38                                       ; $7db8: $ff
    dec d                                         ; $7db9: $15
    ld [$06fa], sp                                ; $7dba: $08 $fa $06
    ld a, [$f706]                                 ; $7dbd: $fa $06 $f7
    push af                                       ; $7dc0: $f5
    rlca                                          ; $7dc1: $07
    push af                                       ; $7dc2: $f5
    push hl                                       ; $7dc3: $e5
    db $fd                                        ; $7dc4: $fd
    push af                                       ; $7dc5: $f5
    db $fd                                        ; $7dc6: $fd
    dec b                                         ; $7dc7: $05
    db $fd                                        ; $7dc8: $fd
    dec d                                         ; $7dc9: $15
    db $fd                                        ; $7dca: $fd
    db $fc                                        ; $7dcb: $fc
    dec b                                         ; $7dcc: $05
    inc c                                         ; $7dcd: $0c
    dec b                                         ; $7dce: $05
    cp $01                                        ; $7dcf: $fe $01
    nop                                           ; $7dd1: $00
    ld bc, $0100                                  ; $7dd2: $01 $00 $01

jr_0f5_7dd5:
    nop                                           ; $7dd5: $00
    ld bc, $0100                                  ; $7dd6: $01 $00 $01
    nop                                           ; $7dd9: $00
    inc bc                                        ; $7dda: $03
    nop                                           ; $7ddb: $00
    inc bc                                        ; $7ddc: $03
    ld bc, $0102                                  ; $7ddd: $01 $02 $01
    inc bc                                        ; $7de0: $03
    nop                                           ; $7de1: $00
    dec b                                         ; $7de2: $05
    ld [bc], a                                    ; $7de3: $02
    rlca                                          ; $7de4: $07
    nop                                           ; $7de5: $00
    dec b                                         ; $7de6: $05
    ld [bc], a                                    ; $7de7: $02
    dec b                                         ; $7de8: $05
    ld [bc], a                                    ; $7de9: $02
    rlca                                          ; $7dea: $07
    nop                                           ; $7deb: $00
    rrca                                          ; $7dec: $0f
    nop                                           ; $7ded: $00
    dec bc                                        ; $7dee: $0b
    inc b                                         ; $7def: $04
    rrca                                          ; $7df0: $0f
    inc b                                         ; $7df1: $04
    dec bc                                        ; $7df2: $0b
    inc b                                         ; $7df3: $04
    rrca                                          ; $7df4: $0f
    nop                                           ; $7df5: $00
    dec bc                                        ; $7df6: $0b
    inc b                                         ; $7df7: $04
    rra                                           ; $7df8: $1f
    nop                                           ; $7df9: $00
    rla                                           ; $7dfa: $17
    ld [$081f], sp                                ; $7dfb: $08 $1f $08
    rla                                           ; $7dfe: $17
    ld [$001f], sp                                ; $7dff: $08 $1f $00
    rla                                           ; $7e02: $17
    ld [$003f], sp                                ; $7e03: $08 $3f $00
    cpl                                           ; $7e06: $2f
    db $10                                        ; $7e07: $10
    ccf                                           ; $7e08: $3f
    db $10                                        ; $7e09: $10
    cpl                                           ; $7e0a: $2f
    db $10                                        ; $7e0b: $10
    rla                                           ; $7e0c: $17
    ld [$0007], sp                                ; $7e0d: $08 $07 $00
    stop                                          ; $7e10: $10 $00
    stop                                          ; $7e12: $10 $00
    stop                                          ; $7e14: $10 $00
    stop                                          ; $7e16: $10 $00
    jr z, @+$12                                   ; $7e18: $28 $10

    jr z, jr_0f5_7e2c                             ; $7e1a: $28 $10

    jr z, jr_0f5_7e2e                             ; $7e1c: $28 $10

    jr z, jr_0f5_7e30                             ; $7e1e: $28 $10

    ld l, h                                       ; $7e20: $6c
    jr jr_0f5_7e67                                ; $7e21: $18 $44

    jr c, jr_0f5_7e71                             ; $7e23: $38 $4c

    jr c, jr_0f5_7e73                             ; $7e25: $38 $4c

    jr c, jr_0f5_7e8d                             ; $7e27: $38 $64

    jr jr_0f5_7dd5                                ; $7e29: $18 $aa

    ld e, h                                       ; $7e2b: $5c

jr_0f5_7e2c:
    and $1c                                       ; $7e2c: $e6 $1c

jr_0f5_7e2e:
    add [hl]                                      ; $7e2e: $86
    ld a, h                                       ; $7e2f: $7c

jr_0f5_7e30:
    and d                                         ; $7e30: $a2
    ld e, h                                       ; $7e31: $5c
    add $3c                                       ; $7e32: $c6 $3c
    push hl                                       ; $7e34: $e5
    ld e, $43                                     ; $7e35: $1e $43
    cp [hl]                                       ; $7e37: $be
    db $e3                                        ; $7e38: $e3
    ld e, $57                                     ; $7e39: $1e $57
    xor [hl]                                      ; $7e3b: $ae
    di                                            ; $7e3c: $f3
    ld c, $e3                                     ; $7e3d: $0e $e3
    rra                                           ; $7e3f: $1f
    pop de                                        ; $7e40: $d1
    cpl                                           ; $7e41: $2f
    db $e3                                        ; $7e42: $e3
    rra                                           ; $7e43: $1f
    pop de                                        ; $7e44: $d1
    cpl                                           ; $7e45: $2f
    add sp, $17                                   ; $7e46: $e8 $17
    pop de                                        ; $7e48: $d1
    cpl                                           ; $7e49: $2f
    ldh [$1f], a                                  ; $7e4a: $e0 $1f
    ld hl, sp+$07                                 ; $7e4c: $f8 $07
    and a                                         ; $7e4e: $a7
    pop de                                        ; $7e4f: $d1
    cpl                                           ; $7e50: $2f
    ldh [$1f], a                                  ; $7e51: $e0 $1f
    ldh a, [rIF]                                  ; $7e53: $f0 $0f
    ret c                                         ; $7e55: $d8

    daa                                           ; $7e56: $27
    ldh [$1f], a                                  ; $7e57: $e0 $1f
    or b                                          ; $7e59: $b0
    ld c, a                                       ; $7e5a: $4f
    ldh [$1f], a                                  ; $7e5b: $e0 $1f
    ret c                                         ; $7e5d: $d8

    daa                                           ; $7e5e: $27
    db $e4                                        ; $7e5f: $e4
    dec de                                        ; $7e60: $1b
    cp b                                          ; $7e61: $b8
    ld b, a                                       ; $7e62: $47
    ret nc                                        ; $7e63: $d0

    cpl                                           ; $7e64: $2f
    ldh [$1f], a                                  ; $7e65: $e0 $1f

jr_0f5_7e67:
    ret c                                         ; $7e67: $d8

    daa                                           ; $7e68: $27
    or b                                          ; $7e69: $b0
    ld c, a                                       ; $7e6a: $4f
    ret z                                         ; $7e6b: $c8

    scf                                           ; $7e6c: $37
    ldh [$1f], a                                  ; $7e6d: $e0 $1f
    or b                                          ; $7e6f: $b0
    ld c, a                                       ; $7e70: $4f

jr_0f5_7e71:
    ret z                                         ; $7e71: $c8

    scf                                           ; $7e72: $37

jr_0f5_7e73:
    push af                                       ; $7e73: $f5
    ld a, [bc]                                    ; $7e74: $0a
    cp $1b                                        ; $7e75: $fe $1b
    nop                                           ; $7e77: $00
    or l                                          ; $7e78: $b5
    add b                                         ; $7e79: $80
    nop                                           ; $7e7a: $00
    add b                                         ; $7e7b: $80
    nop                                           ; $7e7c: $00
    add b                                         ; $7e7d: $80
    nop                                           ; $7e7e: $00
    add b                                         ; $7e7f: $80
    nop                                           ; $7e80: $00
    ret nz                                        ; $7e81: $c0

    add b                                         ; $7e82: $80
    ret nz                                        ; $7e83: $c0

    add b                                         ; $7e84: $80
    ret nz                                        ; $7e85: $c0

    add b                                         ; $7e86: $80
    ret nz                                        ; $7e87: $c0

    add b                                         ; $7e88: $80
    ld b, b                                       ; $7e89: $40
    add b                                         ; $7e8a: $80
    ldh [$c0], a                                  ; $7e8b: $e0 $c0

jr_0f5_7e8d:
    ld h, b                                       ; $7e8d: $60
    ret nz                                        ; $7e8e: $c0

    ldh [$c0], a                                  ; $7e8f: $e0 $c0
    ld h, b                                       ; $7e91: $60
    ret nz                                        ; $7e92: $c0

    ld h, b                                       ; $7e93: $60
    ret nz                                        ; $7e94: $c0

    ldh [$c0], a                                  ; $7e95: $e0 $c0
    ld [hl], b                                    ; $7e97: $70
    ret nz                                        ; $7e98: $c0

    ld [hl], b                                    ; $7e99: $70
    ldh [$f0], a                                  ; $7e9a: $e0 $f0
    ldh [$30], a                                  ; $7e9c: $e0 $30
    ldh [$50], a                                  ; $7e9e: $e0 $50
    ldh [$30], a                                  ; $7ea0: $e0 $30
    ldh [rNR23], a                                ; $7ea2: $e0 $18
    ldh a, [$78]                                  ; $7ea4: $f0 $78
    ldh a, [$28]                                  ; $7ea6: $f0 $28
    ldh a, [rNR23]                                ; $7ea8: $f0 $18
    ldh [$b0], a                                  ; $7eaa: $e0 $b0
    ld b, b                                       ; $7eac: $40
    ret nz                                        ; $7ead: $c0

    dec bc                                        ; $7eae: $0b
    nop                                           ; $7eaf: $00
    rst $38                                       ; $7eb0: $ff
    dec d                                         ; $7eb1: $15
    ld [$06fa], sp                                ; $7eb2: $08 $fa $06
    ld a, [$f706]                                 ; $7eb5: $fa $06 $f7
    push af                                       ; $7eb8: $f5
    rlca                                          ; $7eb9: $07
    push af                                       ; $7eba: $f5
    push hl                                       ; $7ebb: $e5
    db $fd                                        ; $7ebc: $fd
    push af                                       ; $7ebd: $f5
    db $fd                                        ; $7ebe: $fd
    dec b                                         ; $7ebf: $05
    db $fd                                        ; $7ec0: $fd
    dec d                                         ; $7ec1: $15
    db $fd                                        ; $7ec2: $fd
    db $fc                                        ; $7ec3: $fc
    dec b                                         ; $7ec4: $05
    inc c                                         ; $7ec5: $0c
    dec b                                         ; $7ec6: $05
    cp $01                                        ; $7ec7: $fe $01
    nop                                           ; $7ec9: $00
    ld bc, $0100                                  ; $7eca: $01 $00 $01
    nop                                           ; $7ecd: $00
    ld bc, $0100                                  ; $7ece: $01 $00 $01
    nop                                           ; $7ed1: $00
    inc bc                                        ; $7ed2: $03
    nop                                           ; $7ed3: $00
    inc bc                                        ; $7ed4: $03
    nop                                           ; $7ed5: $00
    inc bc                                        ; $7ed6: $03
    nop                                           ; $7ed7: $00
    inc bc                                        ; $7ed8: $03
    nop                                           ; $7ed9: $00
    rlca                                          ; $7eda: $07
    nop                                           ; $7edb: $00
    rlca                                          ; $7edc: $07
    nop                                           ; $7edd: $00
    rlca                                          ; $7ede: $07
    nop                                           ; $7edf: $00
    rlca                                          ; $7ee0: $07
    nop                                           ; $7ee1: $00
    rlca                                          ; $7ee2: $07
    nop                                           ; $7ee3: $00
    rrca                                          ; $7ee4: $0f
    nop                                           ; $7ee5: $00
    ld c, $01                                     ; $7ee6: $0e $01
    rrca                                          ; $7ee8: $0f
    nop                                           ; $7ee9: $00
    rrca                                          ; $7eea: $0f
    nop                                           ; $7eeb: $00
    rrca                                          ; $7eec: $0f
    nop                                           ; $7eed: $00
    rrca                                          ; $7eee: $0f
    nop                                           ; $7eef: $00
    rra                                           ; $7ef0: $1f
    nop                                           ; $7ef1: $00
    rra                                           ; $7ef2: $1f
    nop                                           ; $7ef3: $00
    ld e, $01                                     ; $7ef4: $1e $01
    rra                                           ; $7ef6: $1f
    nop                                           ; $7ef7: $00
    rra                                           ; $7ef8: $1f
    nop                                           ; $7ef9: $00
    rra                                           ; $7efa: $1f
    nop                                           ; $7efb: $00
    ld a, $01                                     ; $7efc: $3e $01
    ccf                                           ; $7efe: $3f
    nop                                           ; $7eff: $00
    dec a                                         ; $7f00: $3d
    ld [bc], a                                    ; $7f01: $02
    ld a, $01                                     ; $7f02: $3e $01
    rra                                           ; $7f04: $1f
    nop                                           ; $7f05: $00
    rlca                                          ; $7f06: $07
    nop                                           ; $7f07: $00
    stop                                          ; $7f08: $10 $00
    stop                                          ; $7f0a: $10 $00
    stop                                          ; $7f0c: $10 $00
    stop                                          ; $7f0e: $10 $00
    jr z, @+$12                                   ; $7f10: $28 $10

    jr z, jr_0f5_7f24                             ; $7f12: $28 $10

    jr z, @+$12                                   ; $7f14: $28 $10

    jr z, jr_0f5_7f28                             ; $7f16: $28 $10

    ld l, h                                       ; $7f18: $6c
    jr jr_0f5_7f5f                                ; $7f19: $18 $44

    jr c, jr_0f5_7f89                             ; $7f1b: $38 $6c

    jr jr_0f5_7f6b                                ; $7f1d: $18 $4c

    jr c, jr_0f5_7f85                             ; $7f1f: $38 $64

    jr @-$14                                      ; $7f21: $18 $ea

    inc e                                         ; $7f23: $1c

jr_0f5_7f24:
    ld [$c61c], a                                 ; $7f24: $ea $1c $c6
    inc a                                         ; $7f27: $3c

jr_0f5_7f28:
    ld [$c61c], a                                 ; $7f28: $ea $1c $c6
    inc a                                         ; $7f2b: $3c
    adc l                                         ; $7f2c: $8d
    ld a, [hl]                                    ; $7f2d: $7e
    rst $00                                       ; $7f2e: $c7
    ld a, $e3                                     ; $7f2f: $3e $e3
    ld e, $a7                                     ; $7f31: $1e $a7
    ld e, [hl]                                    ; $7f33: $5e
    jp $e63e                                      ; $7f34: $c3 $3e $e6


    rra                                           ; $7f37: $1f
    rst $00                                       ; $7f38: $c7
    ccf                                           ; $7f39: $3f
    adc e                                         ; $7f3a: $8b
    ld a, a                                       ; $7f3b: $7f
    jp $873f                                      ; $7f3c: $c3 $3f $87


    ld a, a                                       ; $7f3f: $7f
    rlca                                          ; $7f40: $07
    rst $38                                       ; $7f41: $ff
    srl a                                         ; $7f42: $cb $3f
    adc a                                         ; $7f44: $8f

jr_0f5_7f45:
    ld a, a                                       ; $7f45: $7f
    and a                                         ; $7f46: $a7
    inc bc                                        ; $7f47: $03
    rst $38                                       ; $7f48: $ff

jr_0f5_7f49:
    adc a                                         ; $7f49: $8f
    ld a, a                                       ; $7f4a: $7f
    rst $00                                       ; $7f4b: $c7
    ccf                                           ; $7f4c: $3f
    inc bc                                        ; $7f4d: $03
    rst $38                                       ; $7f4e: $ff
    add a                                         ; $7f4f: $87
    ld a, a                                       ; $7f50: $7f
    add hl, bc                                    ; $7f51: $09
    rst $38                                       ; $7f52: $ff
    jp $273f                                      ; $7f53: $c3 $3f $27


    rst $18                                       ; $7f56: $df
    jp $833f                                      ; $7f57: $c3 $3f $83


    ld a, a                                       ; $7f5a: $7f
    rlca                                          ; $7f5b: $07
    rst $38                                       ; $7f5c: $ff
    push bc                                       ; $7f5d: $c5
    ccf                                           ; $7f5e: $3f

jr_0f5_7f5f:
    add e                                         ; $7f5f: $83
    ld a, a                                       ; $7f60: $7f
    ld b, a                                       ; $7f61: $47
    cp a                                          ; $7f62: $bf
    inc bc                                        ; $7f63: $03
    rst $38                                       ; $7f64: $ff
    adc l                                         ; $7f65: $8d
    ld a, a                                       ; $7f66: $7f
    ld b, d                                       ; $7f67: $42
    cp a                                          ; $7f68: $bf
    add b                                         ; $7f69: $80
    ld a, a                                       ; $7f6a: $7f

jr_0f5_7f6b:
    db $fd                                        ; $7f6b: $fd
    ld [bc], a                                    ; $7f6c: $02
    cp $1b                                        ; $7f6d: $fe $1b
    nop                                           ; $7f6f: $00
    or l                                          ; $7f70: $b5
    add b                                         ; $7f71: $80
    nop                                           ; $7f72: $00
    add b                                         ; $7f73: $80
    nop                                           ; $7f74: $00
    add b                                         ; $7f75: $80
    nop                                           ; $7f76: $00
    add b                                         ; $7f77: $80
    nop                                           ; $7f78: $00
    ld b, b                                       ; $7f79: $40
    add b                                         ; $7f7a: $80
    ret nz                                        ; $7f7b: $c0

    add b                                         ; $7f7c: $80
    ld b, b                                       ; $7f7d: $40
    add b                                         ; $7f7e: $80
    ret nz                                        ; $7f7f: $c0

    add b                                         ; $7f80: $80
    ret nz                                        ; $7f81: $c0

    add b                                         ; $7f82: $80
    jr nz, jr_0f5_7f45                            ; $7f83: $20 $c0

jr_0f5_7f85:
    ldh [$c0], a                                  ; $7f85: $e0 $c0
    jr nz, jr_0f5_7f49                            ; $7f87: $20 $c0

jr_0f5_7f89:
    ldh [$c0], a                                  ; $7f89: $e0 $c0
    ldh [$c0], a                                  ; $7f8b: $e0 $c0
    and b                                         ; $7f8d: $a0
    ret nz                                        ; $7f8e: $c0

    ldh a, [$c0]                                  ; $7f8f: $f0 $c0
    sub b                                         ; $7f91: $90
    ldh [$d0], a                                  ; $7f92: $e0 $d0
    ldh [$f0], a                                  ; $7f94: $e0 $f0
    ldh [$d0], a                                  ; $7f96: $e0 $d0
    ldh [$90], a                                  ; $7f98: $e0 $90
    ldh [$d8], a                                  ; $7f9a: $e0 $d8
    ldh a, [$e8]                                  ; $7f9c: $f0 $e8
    ldh a, [$a8]                                  ; $7f9e: $f0 $a8
    ret nc                                        ; $7fa0: $d0

    ret c                                         ; $7fa1: $d8

    ldh [$b0], a                                  ; $7fa2: $e0 $b0
    ld b, b                                       ; $7fa4: $40
    ret nz                                        ; $7fa5: $c0

    dec bc                                        ; $7fa6: $0b
    nop                                           ; $7fa7: $00
    rst $38                                       ; $7fa8: $ff
    rlca                                          ; $7fa9: $07
    ld bc, $06fa                                  ; $7faa: $01 $fa $06
    ld a, [$fd06]                                 ; $7fad: $fa $06 $fd
    ei                                            ; $7fb0: $fb
    add c                                         ; $7fb1: $81
    inc b                                         ; $7fb2: $04
    ld [bc], a                                    ; $7fb3: $02
    nop                                           ; $7fb4: $00
    add h                                         ; $7fb5: $84
    inc b                                         ; $7fb6: $04
    dec d                                         ; $7fb7: $15
    ld c, $00                                     ; $7fb8: $0e $00
    ld [bc], a                                    ; $7fba: $02
    inc b                                         ; $7fbb: $04
    rla                                           ; $7fbc: $17
    nop                                           ; $7fbd: $00
    rst $38                                       ; $7fbe: $ff
    rlca                                          ; $7fbf: $07
    ld bc, $06fa                                  ; $7fc0: $01 $fa $06
    ld a, [$fb06]                                 ; $7fc3: $fa $06 $fb
    ei                                            ; $7fc6: $fb
    add c                                         ; $7fc7: $81
    inc b                                         ; $7fc8: $04
    ld [bc], a                                    ; $7fc9: $02
    nop                                           ; $7fca: $00
    add l                                         ; $7fcb: $85
    inc b                                         ; $7fcc: $04
    ld [$0100], sp                                ; $7fcd: $08 $00 $01
    ld a, [bc]                                    ; $7fd0: $0a
    ld [bc], a                                    ; $7fd1: $02
    inc b                                         ; $7fd2: $04
    add e                                         ; $7fd3: $83
    db $10                                        ; $7fd4: $10
    ld a, [bc]                                    ; $7fd5: $0a
    ld [bc], a                                    ; $7fd6: $02
    inc de                                        ; $7fd7: $13
    nop                                           ; $7fd8: $00
    rst $38                                       ; $7fd9: $ff
    rlca                                          ; $7fda: $07
    ld bc, $06fa                                  ; $7fdb: $01 $fa $06
    ld a, [$fa06]                                 ; $7fde: $fa $06 $fa
    ei                                            ; $7fe1: $fb
    add c                                         ; $7fe2: $81
    inc b                                         ; $7fe3: $04
    ld [bc], a                                    ; $7fe4: $02
    nop                                           ; $7fe5: $00
    adc d                                         ; $7fe6: $8a
    inc b                                         ; $7fe7: $04
    ld de, $0400                                  ; $7fe8: $11 $00 $04
    ld de, $0400                                  ; $7feb: $11 $00 $04
    dec d                                         ; $7fee: $15
    ld c, $00                                     ; $7fef: $0e $00
    ld [bc], a                                    ; $7ff1: $02
    inc b                                         ; $7ff2: $04
    ld de, $ff00                                  ; $7ff3: $11 $00 $ff
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
