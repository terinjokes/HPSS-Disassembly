; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0cc", ROMX[$4000], BANK[$cc]

    db $cc

Call_0cc_4001:
    jr nz, jr_0cc_4004                            ; $4001: $20 $01

    sbc h                                         ; $4003: $9c

jr_0cc_4004:
    nop                                           ; $4004: $00
    ld b, b                                       ; $4005: $40
    rst $38                                       ; $4006: $ff
    ld bc, $fd90                                  ; $4007: $01 $90 $fd
    rst $38                                       ; $400a: $ff
    rst $30                                       ; $400b: $f7
    ld hl, sp-$02                                 ; $400c: $f8 $fe
    db $f4                                        ; $400e: $f4
    ld [$f0ec], sp                                ; $400f: $08 $ec $f0
    cp $e4                                        ; $4012: $fe $e4
    jr nz, @+$1a                                  ; $4014: $20 $18

    rst $18                                       ; $4016: $df
    ld a, a                                       ; $4017: $7f
    ld [hl], a                                    ; $4018: $77
    ld bc, $7f1f                                  ; $4019: $01 $1f $7f
    daa                                           ; $401c: $27
    xor e                                         ; $401d: $ab
    rlca                                          ; $401e: $07
    rra                                           ; $401f: $1f
    rlca                                          ; $4020: $07
    jr nc, jr_0cc_4073                            ; $4021: $30 $50

    db $10                                        ; $4023: $10
    cp $fd                                        ; $4024: $fe $fd
    cp $40                                        ; $4026: $fe $40
    jr c, jr_0cc_40a9                             ; $4028: $38 $7f

    rst $38                                       ; $402a: $ff
    rst $38                                       ; $402b: $ff
    ccf                                           ; $402c: $3f
    jr nz, jr_0cc_406e                            ; $402d: $20 $3f

    rra                                           ; $402f: $1f
    inc a                                         ; $4030: $3c
    ld [$fcf3], sp                                ; $4031: $08 $f3 $fc
    cp $f8                                        ; $4034: $fe $f8
    db $db                                        ; $4036: $db

Jump_0cc_4037:
    ld bc, $dde0                                  ; $4037: $01 $e0 $dd
    add sp, -$06                                  ; $403a: $e8 $fa
    ret nz                                        ; $403c: $c0

    xor h                                         ; $403d: $ac
    ret nz                                        ; $403e: $c0

    dec d                                         ; $403f: $15
    nop                                           ; $4040: $00
    nop                                           ; $4041: $00
    rst $38                                       ; $4042: $ff
    rst $10                                       ; $4043: $d7
    cp a                                          ; $4044: $bf
    db $db                                        ; $4045: $db
    rlca                                          ; $4046: $07
    ld e, a                                       ; $4047: $5f
    add hl, bc                                    ; $4048: $09
    dec l                                         ; $4049: $2d
    inc bc                                        ; $404a: $03
    inc bc                                        ; $404b: $03
    rla                                           ; $404c: $17
    nop                                           ; $404d: $00
    ld l, $05                                     ; $404e: $2e $05

jr_0cc_4050:
    nop                                           ; $4050: $00
    ld bc, $8060                                  ; $4051: $01 $60 $80
    jr nz, jr_0cc_405a                            ; $4054: $20 $04

    rst $30                                       ; $4056: $f7
    rst $30                                       ; $4057: $f7

jr_0cc_4058:
    db $e3                                        ; $4058: $e3
    rst $38                                       ; $4059: $ff

jr_0cc_405a:
    rst $30                                       ; $405a: $f7
    ld a, d                                       ; $405b: $7a
    db $10                                        ; $405c: $10
    ldh a, [$ea]                                  ; $405d: $f0 $ea
    ld [bc], a                                    ; $405f: $02
    ldh a, [rIE]                                  ; $4060: $f0 $ff
    ld a, [c]                                     ; $4062: $f2
    rst $30                                       ; $4063: $f7
    db $fc                                        ; $4064: $fc
    db $fd                                        ; $4065: $fd
    sbc c                                         ; $4066: $99
    jr nz, @+$41                                  ; $4067: $20 $3f

    nop                                           ; $4069: $00
    inc de                                        ; $406a: $13
    ld e, e                                       ; $406b: $5b
    rlca                                          ; $406c: $07
    ccf                                           ; $406d: $3f

jr_0cc_406e:
    rla                                           ; $406e: $17
    ld [hl], a                                    ; $406f: $77
    rrca                                          ; $4070: $0f
    rst $18                                       ; $4071: $df
    ret z                                         ; $4072: $c8

jr_0cc_4073:
    ld e, a                                       ; $4073: $5f
    nop                                           ; $4074: $00
    ld [hl], e                                    ; $4075: $73
    db $10                                        ; $4076: $10
    db $fc                                        ; $4077: $fc
    rst $38                                       ; $4078: $ff
    ld [hl], h                                    ; $4079: $74
    ld b, b                                       ; $407a: $40
    rst $38                                       ; $407b: $ff
    rst $38                                       ; $407c: $ff
    ld e, a                                       ; $407d: $5f
    jr jr_0cc_40bf                                ; $407e: $18 $3f

    rst $38                                       ; $4080: $ff
    ccf                                           ; $4081: $3f
    dec de                                        ; $4082: $1b
    jr nz, jr_0cc_4050                            ; $4083: $20 $cb

    db $10                                        ; $4085: $10
    ld a, [$bcc0]                                 ; $4086: $fa $c0 $bc
    nop                                           ; $4089: $00
    ret nc                                        ; $408a: $d0

    reti                                          ; $408b: $d9


    ldh [$fe], a                                  ; $408c: $e0 $fe
    ldh a, [$ef]                                  ; $408e: $f0 $ef
    db $f4                                        ; $4090: $f4
    ld sp, hl                                     ; $4091: $f9
    ld b, b                                       ; $4092: $40
    or $c7                                        ; $4093: $f6 $c7
    nop                                           ; $4095: $00
    rst $38                                       ; $4096: $ff
    dec b                                         ; $4097: $05
    inc bc                                        ; $4098: $03
    ld a, [hl+]                                   ; $4099: $2a
    ld bc, $005f                                  ; $409a: $01 $5f $00
    ld bc, $0fd9                                  ; $409d: $01 $d9 $0f
    cp a                                          ; $40a0: $bf
    rlca                                          ; $40a1: $07
    rst $30                                       ; $40a2: $f7
    ld c, a                                       ; $40a3: $4f
    ld e, a                                       ; $40a4: $5f
    ld b, b                                       ; $40a5: $40
    cp a                                          ; $40a6: $bf
    xor $18                                       ; $40a7: $ee $18

jr_0cc_40a9:
    ei                                            ; $40a9: $fb
    rst $30                                       ; $40aa: $f7
    rst $10                                       ; $40ab: $d7
    pop hl                                        ; $40ac: $e1
    pop hl                                        ; $40ad: $e1
    jp $d708                                      ; $40ae: $c3 $08 $d7


    pop hl                                        ; $40b1: $e1
    ei                                            ; $40b2: $fb
    rst $28                                       ; $40b3: $ef
    ld a, e                                       ; $40b4: $7b
    db $10                                        ; $40b5: $10
    ei                                            ; $40b6: $fb

jr_0cc_40b7:
    db $fd                                        ; $40b7: $fd
    db $d3                                        ; $40b8: $d3
    nop                                           ; $40b9: $00
    xor e                                         ; $40ba: $ab
    pop bc                                        ; $40bb: $c1
    ld a, [c]                                     ; $40bc: $f2
    pop bc                                        ; $40bd: $c1
    rst $20                                       ; $40be: $e7

jr_0cc_40bf:
    and e                                         ; $40bf: $a3
    rst $18                                       ; $40c0: $df
    pop af                                        ; $40c1: $f1
    jr nc, jr_0cc_40b7                            ; $40c2: $30 $f3

    rst $28                                       ; $40c4: $ef
    ld d, b                                       ; $40c5: $50
    jr nz, jr_0cc_4058                            ; $40c6: $20 $90

    jr nc, @+$62                                  ; $40c8: $30 $60

    inc bc                                        ; $40ca: $03
    jp c, Jump_0cc_5001                           ; $40cb: $da $01 $50

    rst $38                                       ; $40ce: $ff
    ld bc, $fe90                                  ; $40cf: $01 $90 $fe
    ld [bc], a                                    ; $40d2: $02
    nop                                           ; $40d3: $00
    db $fd                                        ; $40d4: $fd
    rst $38                                       ; $40d5: $ff
    ld a, [$18ff]                                 ; $40d6: $fa $ff $18
    add sp, -$01                                  ; $40d9: $e8 $ff
    nop                                           ; $40db: $00
    ld [bc], a                                    ; $40dc: $02
    ld h, b                                       ; $40dd: $60
    inc h                                         ; $40de: $24
    ld c, b                                       ; $40df: $48
    cp c                                          ; $40e0: $b9
    rst $38                                       ; $40e1: $ff
    ld a, [hl+]                                   ; $40e2: $2a
    add b                                         ; $40e3: $80
    ccf                                           ; $40e4: $3f
    nop                                           ; $40e5: $00

jr_0cc_40e6:
    ld sp, hl                                     ; $40e6: $f9
    rst $38                                       ; $40e7: $ff
    and h                                         ; $40e8: $a4
    rst $38                                       ; $40e9: $ff
    adc b                                         ; $40ea: $88
    rst $38                                       ; $40eb: $ff
    ld b, b                                       ; $40ec: $40
    add b                                         ; $40ed: $80
    jr nz, jr_0cc_4130                            ; $40ee: $20 $40

    ccf                                           ; $40f0: $3f
    rst $38                                       ; $40f1: $ff
    ld b, a                                       ; $40f2: $47
    rst $38                                       ; $40f3: $ff
    rrca                                          ; $40f4: $0f
    rst $38                                       ; $40f5: $ff
    inc bc                                        ; $40f6: $03
    jr nz, @+$01                                  ; $40f7: $20 $ff

    dec b                                         ; $40f9: $05
    ld a, $40                                     ; $40fa: $3e $40
    ld bc, $07ff                                  ; $40fc: $01 $ff $07
    db $fc                                        ; $40ff: $fc
    rrca                                          ; $4100: $0f
    nop                                           ; $4101: $00
    ld hl, sp+$3f                                 ; $4102: $f8 $3f
    ldh [rP1], a                                  ; $4104: $e0 $00
    rst $38                                       ; $4106: $ff
    ld [hl-], a                                   ; $4107: $32
    rst $38                                       ; $4108: $ff
    ld c, a                                       ; $4109: $4f
    nop                                           ; $410a: $00
    ld hl, sp-$01                                 ; $410b: $f8 $ff
    ret nz                                        ; $410d: $c0

    rst $38                                       ; $410e: $ff
    add b                                         ; $410f: $80
    rst $38                                       ; $4110: $ff
    nop                                           ; $4111: $00
    push af                                       ; $4112: $f5
    nop                                           ; $4113: $00
    nop                                           ; $4114: $00
    ld [$6800], a                                 ; $4115: $ea $00 $68
    sbc a                                         ; $4118: $9f
    ld hl, sp+$07                                 ; $4119: $f8 $07
    db $fc                                        ; $411b: $fc
    ld b, b                                       ; $411c: $40
    rlca                                          ; $411d: $07
    inc b                                         ; $411e: $04
    ld [$07fc], sp                                ; $411f: $08 $fc $07
    db $fd                                        ; $4122: $fd
    inc bc                                        ; $4123: $03
    rst $38                                       ; $4124: $ff
    nop                                           ; $4125: $00
    add c                                         ; $4126: $81
    ld [hl], b                                    ; $4127: $70
    ld [$ff10], sp                                ; $4128: $08 $10 $ff
    inc e                                         ; $412b: $1c
    rst $20                                       ; $412c: $e7
    ccf                                           ; $412d: $3f
    db $e3                                        ; $412e: $e3
    inc h                                         ; $412f: $24

jr_0cc_4130:
    nop                                           ; $4130: $00
    add b                                         ; $4131: $80
    ld a, l                                       ; $4132: $7d
    nop                                           ; $4133: $00
    adc e                                         ; $4134: $8b
    halt                                          ; $4135: $76
    dec hl                                        ; $4136: $2b
    call nc, Call_0cc_7e81                        ; $4137: $d4 $81 $7e
    inc bc                                        ; $413a: $03
    inc b                                         ; $413b: $04
    cp $07                                        ; $413c: $fe $07
    db $fc                                        ; $413e: $fc
    cpl                                           ; $413f: $2f
    ld hl, sp-$73                                 ; $4140: $f8 $8d
    ld [$f01f], sp                                ; $4142: $08 $1f $f0
    jr nc, jr_0cc_40e6                            ; $4145: $30 $9f

    ldh [$95], a                                  ; $4147: $e0 $95
    ld [hl], b                                    ; $4149: $70

jr_0cc_414a:
    db $10                                        ; $414a: $10

jr_0cc_414b:
    ld a, b                                       ; $414b: $78
    inc bc                                        ; $414c: $03
    ld hl, sp+$0f                                 ; $414d: $f8 $0f
    ldh a, [rP1]                                  ; $414f: $f0 $00
    rra                                           ; $4151: $1f
    ret nz                                        ; $4152: $c0

    ccf                                           ; $4153: $3f
    ldh [$3f], a                                  ; $4154: $e0 $3f
    nop                                           ; $4156: $00
    rst $38                                       ; $4157: $ff
    dec [hl]                                      ; $4158: $35
    jr nc, jr_0cc_414a                            ; $4159: $30 $ef

    ccf                                           ; $415b: $3f
    ld l, [hl]                                    ; $415c: $6e
    db $10                                        ; $415d: $10
    rr b                                          ; $415e: $cb $18
    inc d                                         ; $4160: $14
    db $eb                                        ; $4161: $eb
    adc b                                         ; $4162: $88
    rst $30                                       ; $4163: $f7
    inc bc                                        ; $4164: $03
    ret nz                                        ; $4165: $c0

    ld a, a                                       ; $4166: $7f
    pop hl                                        ; $4167: $e1
    ccf                                           ; $4168: $3f
    rst $28                                       ; $4169: $ef
    inc a                                         ; $416a: $3c
    ld h, a                                       ; $416b: $67

jr_0cc_416c:
    nop                                           ; $416c: $00
    db $dd                                        ; $416d: $dd
    nop                                           ; $416e: $00
    nop                                           ; $416f: $00
    sub d                                         ; $4170: $92
    ld l, l                                       ; $4171: $6d
    jr z, jr_0cc_414b                             ; $4172: $28 $d7

    dec d                                         ; $4174: $15
    ld [$ff00], a                                 ; $4175: $ea $00 $ff
    inc bc                                        ; $4178: $03
    ldh [$bf], a                                  ; $4179: $e0 $bf
    db $fc                                        ; $417b: $fc
    rlca                                          ; $417c: $07
    cp $03                                        ; $417d: $fe $03
    and a                                         ; $417f: $a7
    nop                                           ; $4180: $00
    pop af                                        ; $4181: $f1
    nop                                           ; $4182: $00
    ld b, b                                       ; $4183: $40
    cp $9a                                        ; $4184: $fe $9a
    nop                                           ; $4186: $00
    ld a, [$f400]                                 ; $4187: $fa $00 $f4
    nop                                           ; $418a: $00
    add sp, $00                                   ; $418b: $e8 $00
    db $10                                        ; $418d: $10
    ldh a, [rP1]                                  ; $418e: $f0 $00
    db $fd                                        ; $4190: $fd
    ld a, [bc]                                    ; $4191: $0a
    nop                                           ; $4192: $00
    db $ec                                        ; $4193: $ec
    nop                                           ; $4194: $00
    or b                                          ; $4195: $b0
    nop                                           ; $4196: $00
    ld [$0040], sp                                ; $4197: $08 $40 $00
    add b                                         ; $419a: $80
    nop                                           ; $419b: $00
    ld bc, $7f08                                  ; $419c: $01 $08 $7f
    nop                                           ; $419f: $00
    push de                                       ; $41a0: $d5
    inc c                                         ; $41a1: $0c
    nop                                           ; $41a2: $00
    ld l, $00                                     ; $41a3: $2e $00
    ld bc, $100c                                  ; $41a5: $01 $0c $10
    ld de, $e008                                  ; $41a8: $11 $08 $e0
    ccf                                           ; $41ab: $3f
    add b                                         ; $41ac: $80
    ld h, [hl]                                    ; $41ad: $66
    ld [$1fe0], sp                                ; $41ae: $08 $e0 $1f
    ldh a, [$1f]                                  ; $41b1: $f0 $1f
    ld a, [$1f0f]                                 ; $41b3: $fa $0f $1f
    jr nz, jr_0cc_41b8                            ; $41b6: $20 $00

jr_0cc_41b8:
    rrca                                          ; $41b8: $0f
    cpl                                           ; $41b9: $2f
    ld hl, $00b6                                  ; $41ba: $21 $b6 $00
    db $eb                                        ; $41bd: $eb
    nop                                           ; $41be: $00
    ld d, l                                       ; $41bf: $55
    jr nc, jr_0cc_41c2                            ; $41c0: $30 $00

jr_0cc_41c2:
    ld [c], a                                     ; $41c2: $e2
    ld [hl], $00                                  ; $41c3: $36 $00
    ld c, [hl]                                    ; $41c5: $4e
    ld [$00bb], sp                                ; $41c6: $08 $bb $00
    ld d, [hl]                                    ; $41c9: $56
    nop                                           ; $41ca: $00
    ld h, b                                       ; $41cb: $60
    xor h                                         ; $41cc: $ac
    ld b, d                                       ; $41cd: $42
    jr nz, @+$53                                  ; $41ce: $20 $51

    add hl, bc                                    ; $41d0: $09
    ld a, [$ad00]                                 ; $41d1: $fa $00 $ad
    nop                                           ; $41d4: $00
    db $d3                                        ; $41d5: $d3
    ld [bc], a                                    ; $41d6: $02
    nop                                           ; $41d7: $00
    pop hl                                        ; $41d8: $e1
    nop                                           ; $41d9: $00
    and b                                         ; $41da: $a0
    nop                                           ; $41db: $00
    ret nz                                        ; $41dc: $c0

    ld d, h                                       ; $41dd: $54
    nop                                           ; $41de: $00
    ret nz                                        ; $41df: $c0

    ld [hl+], a                                   ; $41e0: $22
    nop                                           ; $41e1: $00
    ldh [rSC], a                                  ; $41e2: $e0 $02
    nop                                           ; $41e4: $00
    ldh a, [rP1]                                  ; $41e5: $f0 $00
    ld hl, sp+$6e                                 ; $41e7: $f8 $6e
    nop                                           ; $41e9: $00
    jr nc, jr_0cc_416c                            ; $41ea: $30 $80

    ld e, b                                       ; $41ec: $58
    jr nc, jr_0cc_41ef                            ; $41ed: $30 $00

jr_0cc_41ef:
    nop                                           ; $41ef: $00
    jr jr_0cc_41f2                                ; $41f0: $18 $00

jr_0cc_41f2:
    ld [hl], $00                                  ; $41f2: $36 $00
    ld l, e                                       ; $41f4: $6b
    jr nc, jr_0cc_41f7                            ; $41f5: $30 $00

jr_0cc_41f7:
    ld b, $6c                                     ; $41f7: $06 $6c
    nop                                           ; $41f9: $00
    ld [bc], a                                    ; $41fa: $02
    ld [$0002], sp                                ; $41fb: $08 $02 $00
    rra                                           ; $41fe: $1f
    nop                                           ; $41ff: $00

Jump_0cc_4200:
    inc b                                         ; $4200: $04
    dec hl                                        ; $4201: $2b
    nop                                           ; $4202: $00
    ld e, a                                       ; $4203: $5f
    nop                                           ; $4204: $00
    cpl                                           ; $4205: $2f
    ld [$1500], sp                                ; $4206: $08 $00 $15
    nop                                           ; $4209: $00
    nop                                           ; $420a: $00
    dec bc                                        ; $420b: $0b
    nop                                           ; $420c: $00
    rlca                                          ; $420d: $07
    nop                                           ; $420e: $00
    dec b                                         ; $420f: $05
    nop                                           ; $4210: $00
    adc e                                         ; $4211: $8b
    nop                                           ; $4212: $00
    ld l, b                                       ; $4213: $68
    or l                                          ; $4214: $b5
    jr nc, jr_0cc_4257                            ; $4215: $30 $40

    dec bc                                        ; $4217: $0b
    ld a, b                                       ; $4218: $78
    ld bc, $0068                                  ; $4219: $01 $68 $00
    xor a                                         ; $421c: $af
    nop                                           ; $421d: $00
    sub a                                         ; $421e: $97
    xor h                                         ; $421f: $ac
    jr c, jr_0cc_4222                             ; $4220: $38 $00

jr_0cc_4222:
    sub a                                         ; $4222: $97
    jr c, jr_0cc_4225                             ; $4223: $38 $00

jr_0cc_4225:
    rla                                           ; $4225: $17
    ld [hl], $10                                  ; $4226: $36 $10
    cp d                                          ; $4228: $ba
    ld [$0080], sp                                ; $4229: $08 $80 $00
    ld d, l                                       ; $422c: $55
    ld h, b                                       ; $422d: $60
    ld [hl], h                                    ; $422e: $74
    nop                                           ; $422f: $00
    db $d3                                        ; $4230: $d3
    add [hl]                                      ; $4231: $86
    nop                                           ; $4232: $00
    ld a, [$104a]                                 ; $4233: $fa $4a $10
    ld [bc], a                                    ; $4236: $02
    ld c, h                                       ; $4237: $4c
    jr nz, jr_0cc_427a                            ; $4238: $20 $40

    db $eb                                        ; $423a: $eb
    jr nz, jr_0cc_424e                            ; $423b: $20 $11

    ld a, [hl+]                                   ; $423d: $2a
    push de                                       ; $423e: $d5
    add l                                         ; $423f: $85
    ld a, [$7dc2]                                 ; $4240: $fa $c2 $7d
    nop                                           ; $4243: $00
    push bc                                       ; $4244: $c5
    ld a, [hl-]                                   ; $4245: $3a
    ld a, [c]                                     ; $4246: $f2
    dec e                                         ; $4247: $1d
    pop af                                        ; $4248: $f1
    ld e, $f0                                     ; $4249: $1e $f0
    rra                                           ; $424b: $1f
    ld a, [hl-]                                   ; $424c: $3a
    db $f4                                        ; $424d: $f4

jr_0cc_424e:
    rrca                                          ; $424e: $0f
    sub [hl]                                      ; $424f: $96
    add hl, bc                                    ; $4250: $09
    jp c, Jump_000_0208                           ; $4251: $da $08 $02

    ld [$a007], sp                                ; $4254: $08 $07 $a0

jr_0cc_4257:
    ld de, $0480                                  ; $4257: $11 $80 $04
    rst $38                                       ; $425a: $ff
    add b                                         ; $425b: $80
    ld a, a                                       ; $425c: $7f
    db $f4                                        ; $425d: $f4
    ccf                                           ; $425e: $3f
    pop hl                                        ; $425f: $e1
    ld bc, $4700                                  ; $4260: $01 $00 $47
    add d                                         ; $4263: $82
    or b                                          ; $4264: $b0
    ld bc, $ff01                                  ; $4265: $01 $01 $ff
    inc b                                         ; $4268: $04
    rst $38                                       ; $4269: $ff
    rrca                                          ; $426a: $0f
    call c, Call_000_1f01                         ; $426b: $dc $01 $1f
    inc c                                         ; $426e: $0c
    ldh a, [$5f]                                  ; $426f: $f0 $5f
    ldh [$bf], a                                  ; $4271: $e0 $bf
    pop de                                        ; $4273: $d1
    nop                                           ; $4274: $00
    jr z, jr_0cc_4280                             ; $4275: $28 $09

    ld bc, $0500                                  ; $4277: $01 $00 $05

jr_0cc_427a:
    add [hl]                                      ; $427a: $86
    nop                                           ; $427b: $00
    ld e, e                                       ; $427c: $5b
    nop                                           ; $427d: $00
    xor [hl]                                      ; $427e: $ae
    dec a                                         ; $427f: $3d

jr_0cc_4280:
    ld [bc], a                                    ; $4280: $02
    inc bc                                        ; $4281: $03
    inc l                                         ; $4282: $2c
    ld sp, $9010                                  ; $4283: $31 $10 $90
    nop                                           ; $4286: $00
    ld l, b                                       ; $4287: $68
    ld a, [c]                                     ; $4288: $f2
    ld bc, $032e                                  ; $4289: $01 $2e $03
    inc d                                         ; $428c: $14
    inc bc                                        ; $428d: $03
    dec d                                         ; $428e: $15
    rrca                                          ; $428f: $0f
    ld bc, $ce0b                                  ; $4290: $01 $0b $ce
    nop                                           ; $4293: $00
    dec b                                         ; $4294: $05
    inc e                                         ; $4295: $1c
    nop                                           ; $4296: $00
    inc bc                                        ; $4297: $03
    ldh a, [rSB]                                  ; $4298: $f0 $01
    ld bc, $ff0b                                  ; $429a: $01 $0b $ff
    ccf                                           ; $429d: $3f
    ldh [rIE], a                                  ; $429e: $e0 $ff
    add b                                         ; $42a0: $80
    ei                                            ; $42a1: $fb
    ld [hl], b                                    ; $42a2: $70
    ld bc, $b81d                                  ; $42a3: $01 $1d $b8
    nop                                           ; $42a6: $00
    ld d, b                                       ; $42a7: $50
    ld a, b                                       ; $42a8: $78
    ld bc, $0916                                  ; $42a9: $01 $16 $09
    ld l, [hl]                                    ; $42ac: $6e
    add hl, bc                                    ; $42ad: $09
    ld b, $e2                                     ; $42ae: $06 $e2
    nop                                           ; $42b0: $00
    nop                                           ; $42b1: $00
    dec bc                                        ; $42b2: $0b
    nop                                           ; $42b3: $00
    ei                                            ; $42b4: $fb
    rlca                                          ; $42b5: $07
    rst $30                                       ; $42b6: $f7
    rrca                                          ; $42b7: $0f
    ld d, [hl]                                    ; $42b8: $56
    xor a                                         ; $42b9: $af
    nop                                           ; $42ba: $00
    inc e                                         ; $42bb: $1c
    rst $38                                       ; $42bc: $ff

Jump_0cc_42bd:
    ldh [rIE], a                                  ; $42bd: $e0 $ff
    or l                                          ; $42bf: $b5
    rst $38                                       ; $42c0: $ff
    ld c, $ff                                     ; $42c1: $0e $ff
    ld d, b                                       ; $42c3: $50
    cp l                                          ; $42c4: $bd
    xor a                                         ; $42c5: $af
    ld [bc], a                                    ; $42c6: $02
    ld [hl], e                                    ; $42c7: $73
    sub h                                         ; $42c8: $94
    ld [bc], a                                    ; $42c9: $02
    ld e, b                                       ; $42ca: $58
    rst $38                                       ; $42cb: $ff
    ld a, [c]                                     ; $42cc: $f2
    rst $38                                       ; $42cd: $ff
    ld b, b                                       ; $42ce: $40
    and [hl]                                      ; $42cf: $a6
    and [hl]                                      ; $42d0: $a6
    ld [bc], a                                    ; $42d1: $02
    rst $10                                       ; $42d2: $d7
    rst $38                                       ; $42d3: $ff
    xor a                                         ; $42d4: $af
    ret nc                                        ; $42d5: $d0

    rst $08                                       ; $42d6: $cf
    ldh a, [rP1]                                  ; $42d7: $f0 $00
    rst $10                                       ; $42d9: $d7
    add sp, -$05                                  ; $42da: $e8 $fb
    db $f4                                        ; $42dc: $f4
    cp a                                          ; $42dd: $bf
    ld hl, sp+$19                                 ; $42de: $f8 $19
    cp $00                                        ; $42e0: $fe $00
    ld l, [hl]                                    ; $42e2: $6e
    db $fd                                        ; $42e3: $fd
    xor l                                         ; $42e4: $ad
    cp $ff                                        ; $42e5: $fe $ff
    rst $38                                       ; $42e7: $ff
    ld c, c                                       ; $42e8: $49
    rst $38                                       ; $42e9: $ff
    nop                                           ; $42ea: $00
    or b                                          ; $42eb: $b0
    rst $38                                       ; $42ec: $ff
    adc l                                         ; $42ed: $8d
    rst $38                                       ; $42ee: $ff
    ld e, c                                       ; $42ef: $59
    rst $38                                       ; $42f0: $ff
    ei                                            ; $42f1: $fb
    rst $38                                       ; $42f2: $ff
    ld b, l                                       ; $42f3: $45
    rst $30                                       ; $42f4: $f7
    ret z                                         ; $42f5: $c8

    ld [bc], a                                    ; $42f6: $02
    rst $28                                       ; $42f7: $ef
    rst $38                                       ; $42f8: $ff
    ld e, a                                       ; $42f9: $5f
    db $e3                                        ; $42fa: $e3
    ld [bc], a                                    ; $42fb: $02
    cp a                                          ; $42fc: $bf
    rst $20                                       ; $42fd: $e7
    ld [hl-], a                                   ; $42fe: $32
    ld b, a                                       ; $42ff: $47
    ld a, [hl]                                    ; $4300: $7e
    pop af                                        ; $4301: $f1
    ld [hl], d                                    ; $4302: $72
    db $d3                                        ; $4303: $d3
    rst $38                                       ; $4304: $ff
    cp h                                          ; $4305: $bc
    inc l                                         ; $4306: $2c
    nop                                           ; $4307: $00
    ld [$502b], sp                                ; $4308: $08 $2b $50
    jr jr_0cc_4365                                ; $430b: $18 $58

    ld a, e                                       ; $430d: $7b
    ld d, b                                       ; $430e: $50
    ld b, b                                       ; $430f: $40
    db $d3                                        ; $4310: $d3
    ld a, $40                                     ; $4311: $3e $40
    jr nz, jr_0cc_433d                            ; $4313: $20 $28

    ei                                            ; $4315: $fb
    db $f4                                        ; $4316: $f4
    rst $38                                       ; $4317: $ff
    nop                                           ; $4318: $00
    ld hl, sp-$07                                 ; $4319: $f8 $f9
    cp $fe                                        ; $431b: $fe $fe
    db $fd                                        ; $431d: $fd
    db $fd                                        ; $431e: $fd
    cp $bf                                        ; $431f: $fe $bf
    ld [bc], a                                    ; $4321: $02

jr_0cc_4322:
    ld a, a                                       ; $4322: $7f
    rst $38                                       ; $4323: $ff
    ccf                                           ; $4324: $3f

Jump_0cc_4325:
    cp a                                          ; $4325: $bf
    ld a, a                                       ; $4326: $7f
    rst $18                                       ; $4327: $df
    inc b                                         ; $4328: $04
    nop                                           ; $4329: $00
    rst $38                                       ; $432a: $ff
    ld b, b                                       ; $432b: $40
    ld a, a                                       ; $432c: $7f
    ld c, h                                       ; $432d: $4c
    dec bc                                        ; $432e: $0b
    rst $18                                       ; $432f: $df
    ldh [$ef], a                                  ; $4330: $e0 $ef
    ldh a, [$ea]                                  ; $4332: $f0 $ea
    push af                                       ; $4334: $f5
    ld b, b                                       ; $4335: $40
    ld hl, sp+$57                                 ; $4336: $f8 $57
    inc sp                                        ; $4338: $33
    ld d, b                                       ; $4339: $50
    ld bc, $0096                                  ; $433a: $01 $96 $00

jr_0cc_433d:
    ld d, l                                       ; $433d: $55
    rst $38                                       ; $433e: $ff
    ld bc, $fd40                                  ; $433f: $01 $40 $fd
    dec c                                         ; $4342: $0d
    jr nz, jr_0cc_4322                            ; $4343: $20 $dd

    dec d                                         ; $4345: $15
    nop                                           ; $4346: $00
    ld [hl], a                                    ; $4347: $77
    ld [$a820], sp                                ; $4348: $08 $20 $a8
    jr nz, jr_0cc_4375                            ; $434b: $20 $28

    ld a, a                                       ; $434d: $7f
    add hl, hl                                    ; $434e: $29
    nop                                           ; $434f: $00
    rst $18                                       ; $4350: $df
    dec l                                         ; $4351: $2d
    nop                                           ; $4352: $00
    ld [hl+], a                                   ; $4353: $22
    db $dd                                        ; $4354: $dd
    adc b                                         ; $4355: $88
    nop                                           ; $4356: $00
    ld [hl], a                                    ; $4357: $77
    ld d, l                                       ; $4358: $55
    xor d                                         ; $4359: $aa
    xor d                                         ; $435a: $aa
    ld d, l                                       ; $435b: $55
    ld d, l                                       ; $435c: $55
    xor d                                         ; $435d: $aa
    cp e                                          ; $435e: $bb
    nop                                           ; $435f: $00
    ld b, h                                       ; $4360: $44
    xor $11                                       ; $4361: $ee $11
    rst $38                                       ; $4363: $ff
    nop                                           ; $4364: $00

jr_0cc_4365:
    rst $38                                       ; $4365: $ff
    nop                                           ; $4366: $00
    ld [hl], a                                    ; $4367: $77
    nop                                           ; $4368: $00
    adc b                                         ; $4369: $88
    db $dd                                        ; $436a: $dd
    ld [hl+], a                                   ; $436b: $22
    xor d                                         ; $436c: $aa
    ld d, l                                       ; $436d: $55
    ld d, h                                       ; $436e: $54

jr_0cc_436f:
    xor e                                         ; $436f: $ab
    xor e                                         ; $4370: $ab
    ld b, $55                                     ; $4371: $06 $55

jr_0cc_4373:
    db $10                                        ; $4373: $10
    rst $28                                       ; $4374: $ef

jr_0cc_4375:
    ld b, h                                       ; $4375: $44
    cp e                                          ; $4376: $bb
    ld d, b                                       ; $4377: $50
    ld c, b                                       ; $4378: $48
    ld e, h                                       ; $4379: $5c
    jr jr_0cc_4373                                ; $437a: $18 $f7

    adc b                                         ; $437c: $88
    ld d, b                                       ; $437d: $50
    nop                                           ; $437e: $00
    xor d                                         ; $437f: $aa
    rst $38                                       ; $4380: $ff
    ld d, l                                       ; $4381: $55
    inc b                                         ; $4382: $04
    nop                                           ; $4383: $00
    ld b, h                                       ; $4384: $44
    rst $38                                       ; $4385: $ff
    sub b                                         ; $4386: $90
    ld [bc], a                                    ; $4387: $02
    rst $38                                       ; $4388: $ff
    ei                                            ; $4389: $fb
    rst $38                                       ; $438a: $ff
    xor $ff                                       ; $438b: $ee $ff
    cp e                                          ; $438d: $bb
    ld c, $10                                     ; $438e: $0e $10
    ld d, l                                       ; $4390: $55
    nop                                           ; $4391: $00
    rst $38                                       ; $4392: $ff
    ld [hl+], a                                   ; $4393: $22
    rst $38                                       ; $4394: $ff
    ld [$ffff], sp                                ; $4395: $08 $ff $ff
    nop                                           ; $4398: $00
    rst $30                                       ; $4399: $f7
    nop                                           ; $439a: $00
    nop                                           ; $439b: $00
    ld [$c000], a                                 ; $439c: $ea $00 $c0
    nop                                           ; $439f: $00
    ldh [rP1], a                                  ; $43a0: $e0 $00
    push de                                       ; $43a2: $d5
    ret nz                                        ; $43a3: $c0

    ld c, h                                       ; $43a4: $4c
    nop                                           ; $43a5: $00
    ld d, b                                       ; $43a6: $50
    ld [$00fd], sp                                ; $43a7: $08 $fd $00
    xor d                                         ; $43aa: $aa
    nop                                           ; $43ab: $00
    nop                                           ; $43ac: $00
    nop                                           ; $43ad: $00
    inc d                                         ; $43ae: $14
    ld a, [bc]                                    ; $43af: $0a
    nop                                           ; $43b0: $00
    ld e, l                                       ; $43b1: $5d
    db $10                                        ; $43b2: $10
    jr nz, @+$01                                  ; $43b3: $20 $ff

    stop                                          ; $43b5: $10 $00
    stop                                          ; $43b7: $10 $00
    db $10                                        ; $43b9: $10
    ld [bc], a                                    ; $43ba: $02
    nop                                           ; $43bb: $00
    ld [hl], l                                    ; $43bc: $75
    db $10                                        ; $43bd: $10
    jr nc, jr_0cc_436f                            ; $43be: $30 $af

    nop                                           ; $43c0: $00
    ld b, a                                       ; $43c1: $47
    nop                                           ; $43c2: $00
    add hl, de                                    ; $43c3: $19
    dec bc                                        ; $43c4: $0b
    nop                                           ; $43c5: $00
    ld d, a                                       ; $43c6: $57
    jr nc, @+$22                                  ; $43c7: $30 $20

    add b                                         ; $43c9: $80

jr_0cc_43ca:
    ld [$54ab], sp                                ; $43ca: $08 $ab $54
    sub h                                         ; $43cd: $94
    ld [$1145], sp                                ; $43ce: $08 $45 $11
    add b                                         ; $43d1: $80
    nop                                           ; $43d2: $00
    ld de, $45ff                                  ; $43d3: $11 $ff $45
    ld l, [hl]                                    ; $43d6: $6e
    db $10                                        ; $43d7: $10
    xor e                                         ; $43d8: $ab
    add $00                                       ; $43d9: $c6 $00
    ld b, b                                       ; $43db: $40
    halt                                          ; $43dc: $76
    or d                                          ; $43dd: $b2
    nop                                           ; $43de: $00
    cp $01                                        ; $43df: $fe $01
    rst $38                                       ; $43e1: $ff
    nop                                           ; $43e2: $00
    xor [hl]                                      ; $43e3: $ae
    ld bc, $4638                                  ; $43e4: $01 $38 $46
    ld bc, $0830                                  ; $43e7: $01 $30 $08
    inc c                                         ; $43ea: $0c
    ld [$48c0], sp                                ; $43eb: $08 $c0 $48
    ld l, [hl]                                    ; $43ee: $6e
    sub c                                         ; $43ef: $91
    ld a, a                                       ; $43f0: $7f
    scf                                           ; $43f1: $37
    add b                                         ; $43f2: $80
    rst $38                                       ; $43f3: $ff
    sub d                                         ; $43f4: $92
    nop                                           ; $43f5: $00
    nop                                           ; $43f6: $00
    ld c, c                                       ; $43f7: $49
    rst $30                                       ; $43f8: $f7
    ld [$0000], a                                 ; $43f9: $ea $00 $00
    ld c, c                                       ; $43fc: $49
    ld [$1c68], sp                                ; $43fd: $08 $68 $1c
    rst $38                                       ; $4400: $ff
    rst $38                                       ; $4401: $ff
    cp a                                          ; $4402: $bf
    db $10                                        ; $4403: $10
    ld d, c                                       ; $4404: $51
    and h                                         ; $4405: $a4
    jr z, @-$52                                   ; $4406: $28 $ac

Jump_0cc_4408:
    db $28                                        ; $4408: $28

    db $c0, $03, $57, $01, $58, $ff, $01, $50, $df, $0f, $58, $0e, $70, $bf, $ff, $cf
    db $00, $ff, $f7, $cf, $eb, $c7, $e5, $c3, $e8, $00, $c9, $fc, $dc, $d4, $f4, $e8
    db $f9, $ff, $00, $ff, $fe, $ff, $fd, $fe, $fa, $fc, $f4, $00, $fc, $6e, $fe, $9a
    db $6a, $6c, $f4, $3f, $08, $ff, $ff, $3f, $7f, $02, $20, $3f, $7f, $7f, $84, $5d
    db $50, $ef, $ef, $f5, $f4, $70, $58, $6a, $f2, $c1, $5d, $48, $2f, $50, $df, $ef
    db $cf, $eb, $eb, $30, $58, $2e, $9d, $fd, $30, $40, $bf, $66, $00, $5f, $38, $2e
    db $00, $ef, $09, $cf, $ca, $ea, $e5, $60, $50, $95, $65, $60, $30, $e1, $2e, $08
    db $90, $10, $c0, $28, $e4, $c5, $ee, $ce, $30, $18, $85, $c0, $18, $f2, $fa, $67
    db $f7, $30, $08, $df, $e2, $30, $03, $e2, $c3, $e7, $c7, $c5, $e5, $20, $09, $e2
    db $18, $00, $f1, $f9, $63, $f3, $92, $62, $bf, $ff, $82, $e2, $38, $ff, $bf, $bf
    db $ff, $f1, $32, $61, $f8, $e4, $42, $61, $21, $01, $63, $51, $e3, $f2, $32, $58
    db $69, $f1, $e0, $32, $58, $32, $51, $9d, $01, $f3, $ff, $e1, $f3, $fa, $08, $f3
    db $fe, $fb, $fc, $a9, $21, $e7, $ff, $c3, $02, $e7, $af, $e7, $bf, $ef, $9f, $b9
    db $49, $f7, $70, $ff, $20, $30, $10, $20, $20, $40, $e7, $f7, $ff, $f7, $f5, $40
    db $38, $52, $00, $10, $00, $40, $48, $ef, $40, $60, $fb, $40, $60, $83, $22, $1a
    db $fd, $fc, $e9, $ef, $77, $75, $30, $f4, $09, $40, $fe, $3b, $22, $8f, $ff, $77
    db $9f, $bb, $3f, $01, $39, $3b, $29, $eb, $dd, $f3, $e3, $e2, $08, $00, $ff, $dd
    db $f3, $ba, $f9, $39, $b8, $28, $0f, $af, $77, $9f, $8f, $d8, $a8, $1d, $02, $30
    db $28, $62, $11, $1c, $fd, $f9, $f8, $30, $58, $57, $02, $18, $59, $7f, $2f, $12
    db $ef, $dd, $f3, $ae, $5a, $fe, $ff, $16, $19, $fc, $00, $ff, $f4, $ff, $eb, $f4
    db $e3, $d3, $57, $10, $e7, $2f, $cf, $a6, $1a, $0f, $ff, $ab, $5f, $02, $f7, $cb
    db $ea, $e7, $74, $73, $20, $38, $e2, $04, $d0, $51, $e1, $23, $c3, $20, $40, $fb
    db $fa, $31, $ff, $dc, $f1, $12, $40, $18, $ef, $df, $5f, $dc, $09, $80, $40, $30
    db $57, $0b, $8a, $87, $c4, $c3, $fa, $02, $f5, $35, $3b, $73, $7f, $cf, $1a, $20
    db $ff, $00, $ff, $5e, $ae, $bf, $cf, $c7, $f7, $f3, $80, $7a, $20, $ff, $ff, $3a
    db $35, $75, $7b, $f3, $40, $ef, $20, $38, $53, $a3, $a3, $c3, $c1, $f1, $20, $f3
    db $fc, $b0, $29, $8e, $8d, $dd, $df, $f3, $c0, $36, $03, $40, $28, $7b, $bb, $b1
    db $f1, $cb, $fb, $80, $40, $38, $ca, $c5, $d5, $cb, $b3, $8f, $cf, $5e, $3f, $60
    db $28, $7f, $64, $13, $60, $38, $5e, $03, $04, $02, $cf, $c2, $6d, $02, $aa, $1b
    db $5f, $af, $ae, $ce, $20, $48

    ldh a, [$03]                                  ; $45df: $f0 $03
    inc [hl]                                      ; $45e1: $34
    inc bc                                        ; $45e2: $03
    ld [hl], $00                                  ; $45e3: $36 $00
    rst $38                                       ; $45e5: $ff
    ld [bc], a                                    ; $45e6: $02
    ld e, b                                       ; $45e7: $58
    ld bc, $f768                                  ; $45e8: $01 $68 $f7
    inc b                                         ; $45eb: $04
    db $10                                        ; $45ec: $10
    ld b, $08                                     ; $45ed: $06 $08
    cp a                                          ; $45ef: $bf
    jr c, @+$01                                   ; $45f0: $38 $ff

    or a                                          ; $45f2: $b7
    ld c, $08                                     ; $45f3: $0e $08
    ld sp, $1c60                                  ; $45f5: $31 $60 $1c
    ld [$f7eb], sp                                ; $45f8: $08 $eb $f7
    di                                            ; $45fb: $f3
    ld [bc], a                                    ; $45fc: $02
    rst $38                                       ; $45fd: $ff
    ei                                            ; $45fe: $fb
    rst $30                                       ; $45ff: $f7
    db $eb                                        ; $4600: $eb
    rst $30                                       ; $4601: $f7
    rst $20                                       ; $4602: $e7
    ld l, $00                                     ; $4603: $2e $00
    rst $00                                       ; $4605: $c7
    nop                                           ; $4606: $00
    rst $38                                       ; $4607: $ff
    ret                                           ; $4608: $c9


    rst $30                                       ; $4609: $f7
    reti                                          ; $460a: $d9


    rst $20                                       ; $460b: $e7
    db $e3                                        ; $460c: $e3
    rst $18                                       ; $460d: $df
    jp $ff00                                      ; $460e: $c3 $00 $ff


    xor a                                         ; $4611: $af
    rst $10                                       ; $4612: $d7
    and a                                         ; $4613: $a7
    rst $18                                       ; $4614: $df
    adc e                                         ; $4615: $8b
    rst $30                                       ; $4616: $f7
    rst $30                                       ; $4617: $f7
    or b                                          ; $4618: $b0
    ld [hl], $00                                  ; $4619: $36 $00
    cp e                                          ; $461b: $bb
    ld a, [de]                                    ; $461c: $1a
    nop                                           ; $461d: $00
    inc e                                         ; $461e: $1c
    nop                                           ; $461f: $00
    rst $28                                       ; $4620: $ef
    push hl                                       ; $4621: $e5
    rst $38                                       ; $4622: $ff
    push de                                       ; $4623: $d5
    nop                                           ; $4624: $00
    rst $28                                       ; $4625: $ef
    rst $00                                       ; $4626: $c7
    rst $38                                       ; $4627: $ff
    db $db                                        ; $4628: $db
    rst $20                                       ; $4629: $e7
    db $db                                        ; $462a: $db
    rst $20                                       ; $462b: $e7
    db $eb                                        ; $462c: $eb
    nop                                           ; $462d: $00
    rst $00                                       ; $462e: $c7
    db $db                                        ; $462f: $db
    rst $20                                       ; $4630: $e7
    and a                                         ; $4631: $a7
    rst $08                                       ; $4632: $cf
    xor a                                         ; $4633: $af
    rst $00                                       ; $4634: $c7
    rst $00                                       ; $4635: $c7
    add b                                         ; $4636: $80
    ld [hl], b                                    ; $4637: $70
    nop                                           ; $4638: $00
    rst $18                                       ; $4639: $df
    rst $38                                       ; $463a: $ff
    db $db                                        ; $463b: $db
    rst $38                                       ; $463c: $ff
    db $eb                                        ; $463d: $eb
    rst $18                                       ; $463e: $df
    rst $28                                       ; $463f: $ef
    adc b                                         ; $4640: $88
    ld [bc], a                                    ; $4641: $02
    nop                                           ; $4642: $00
    rst $08                                       ; $4643: $cf
    rst $38                                       ; $4644: $ff
    db $dd                                        ; $4645: $dd
    ld [hl+], a                                   ; $4646: $22
    nop                                           ; $4647: $00
    push bc                                       ; $4648: $c5
    rst $38                                       ; $4649: $ff
    ret nc                                        ; $464a: $d0

    nop                                           ; $464b: $00
    rst $28                                       ; $464c: $ef
    jp c, $aae5                                   ; $464d: $da $e5 $aa

    push bc                                       ; $4650: $c5
    xor h                                         ; $4651: $ac
    jp Jump_000_00a9                              ; $4652: $c3 $a9 $00


    rst $00                                       ; $4655: $c7
    sbc e                                         ; $4656: $9b
    rst $20                                       ; $4657: $e7
    db $f4                                        ; $4658: $f4
    db $e3                                        ; $4659: $e3
    call nc, $aee3                                ; $465a: $d4 $e3 $ae
    nop                                           ; $465d: $00
    pop de                                        ; $465e: $d1
    rst $00                                       ; $465f: $c7
    ld hl, sp-$24                                 ; $4660: $f8 $dc
    db $e3                                        ; $4662: $e3
    sub l                                         ; $4663: $95
    ld [c], a                                     ; $4664: $e2
    and $08                                       ; $4665: $e6 $08
    pop bc                                        ; $4667: $c1
    sbc [hl]                                      ; $4668: $9e
    pop hl                                        ; $4669: $e1
    cp a                                          ; $466a: $bf
    and d                                         ; $466b: $a2
    nop                                           ; $466c: $00
    ld a, a                                       ; $466d: $7f
    rst $38                                       ; $466e: $ff
    ld l, a                                       ; $466f: $6f
    and b                                         ; $4670: $a0
    ld [bc], a                                    ; $4671: $02
    nop                                           ; $4672: $00
    ld a, a                                       ; $4673: $7f
    xor h                                         ; $4674: $ac
    db $10                                        ; $4675: $10
    push hl                                       ; $4676: $e5
    di                                            ; $4677: $f3
    or l                                          ; $4678: $b5
    db $e3                                        ; $4679: $e3
    xor l                                         ; $467a: $ad
    nop                                           ; $467b: $00
    di                                            ; $467c: $f3
    inc bc                                        ; $467d: $03
    rst $38                                       ; $467e: $ff
    cp e                                          ; $467f: $bb
    rst $00                                       ; $4680: $c7
    sub b                                         ; $4681: $90
    rst $08                                       ; $4682: $cf
    cp h                                          ; $4683: $bc
    nop                                           ; $4684: $00
    jp $c3a4                                      ; $4685: $c3 $a4 $c3


    ldh [$c7], a                                  ; $4688: $e0 $c7
    jp c, $dce5                                   ; $468a: $da $e5 $dc

    nop                                           ; $468d: $00
    db $e3                                        ; $468e: $e3
    ld sp, hl                                     ; $468f: $f9
    rst $20                                       ; $4690: $e7
    or e                                          ; $4691: $b3
    rst $08                                       ; $4692: $cf
    ld c, e                                       ; $4693: $4b
    add a                                         ; $4694: $87
    xor e                                         ; $4695: $ab
    nop                                           ; $4696: $00
    rst $00                                       ; $4697: $c7
    or e                                          ; $4698: $b3
    rst $08                                       ; $4699: $cf
    rst $38                                       ; $469a: $ff
    rst $38                                       ; $469b: $ff
    cp $ff                                        ; $469c: $fe $ff
    db $fc                                        ; $469e: $fc
    adc b                                         ; $469f: $88
    sub $00                                       ; $46a0: $d6 $00
    xor $ff                                       ; $46a2: $ee $ff
    db $ed                                        ; $46a4: $ed
    call c, $2010                                 ; $46a5: $dc $10 $20
    rst $08                                       ; $46a8: $cf
    ld e, b                                       ; $46a9: $58
    nop                                           ; $46aa: $00
    add a                                         ; $46ab: $87
    xor [hl]                                      ; $46ac: $ae
    ld b, c                                       ; $46ad: $41
    ld c, b                                       ; $46ae: $48
    add a                                         ; $46af: $87
    inc l                                         ; $46b0: $2c
    jp $0566                                      ; $46b1: $c3 $66 $05


    add c                                         ; $46b4: $81
    dec d                                         ; $46b5: $15
    ld [c], a                                     ; $46b6: $e2
    ld b, [hl]                                    ; $46b7: $46
    or c                                          ; $46b8: $b1
    pop af                                        ; $46b9: $f1
    ld [$f6b7], sp                                ; $46ba: $08 $b7 $f6
    nop                                           ; $46bd: $00
    ld bc, $ff77                                  ; $46be: $01 $77 $ff
    ld a, e                                       ; $46c1: $7b
    rst $30                                       ; $46c2: $f7
    dec sp                                        ; $46c3: $3b
    rst $30                                       ; $46c4: $f7
    scf                                           ; $46c5: $37
    nop                                           ; $46c6: $00
    ld bc, $ef40                                  ; $46c7: $01 $40 $ef
    ld a, [hl+]                                   ; $46ca: $2a
    nop                                           ; $46cb: $00
    cp $ef                                        ; $46cc: $fe $ef
    call z, $d5ff                                 ; $46ce: $cc $ff $d5
    xor $00                                       ; $46d1: $ee $00
    xor h                                         ; $46d3: $ac
    rst $18                                       ; $46d4: $df
    db $ed                                        ; $46d5: $ed
    sbc $a3                                       ; $46d6: $de $a3
    ret nz                                        ; $46d8: $c0

    ld [hl], c                                    ; $46d9: $71
    add b                                         ; $46da: $80
    nop                                           ; $46db: $00
    adc d                                         ; $46dc: $8a
    ld de, $8679                                  ; $46dd: $11 $79 $86
    xor $11                                       ; $46e0: $ee $11
    adc d                                         ; $46e2: $8a
    ld sp, $a500                                  ; $46e3: $31 $00 $a5
    ld [bc], a                                    ; $46e6: $02
    add h                                         ; $46e7: $84
    inc bc                                        ; $46e8: $03
    cp a                                          ; $46e9: $bf
    ld a, a                                       ; $46ea: $7f
    sbc a                                         ; $46eb: $9f
    ld a, a                                       ; $46ec: $7f
    nop                                           ; $46ed: $00
    ld e, a                                       ; $46ee: $5f
    cp a                                          ; $46ef: $bf
    ld e, a                                       ; $46f0: $5f
    cp a                                          ; $46f1: $bf
    sbc a                                         ; $46f2: $9f
    ld a, a                                       ; $46f3: $7f
    ccf                                           ; $46f4: $3f
    rst $38                                       ; $46f5: $ff
    ld d, [hl]                                    ; $46f6: $56
    ccf                                           ; $46f7: $3f
    adc d                                         ; $46f8: $8a
    nop                                           ; $46f9: $00
    db $fd                                        ; $46fa: $fd
    ld [bc], a                                    ; $46fb: $02
    nop                                           ; $46fc: $00
    rst $38                                       ; $46fd: $ff
    ld h, d                                       ; $46fe: $62
    nop                                           ; $46ff: $00
    ld h, [hl]                                    ; $4700: $66
    ld [$80f6], sp                                ; $4701: $08 $f6 $80
    ld l, d                                       ; $4704: $6a

jr_0cc_4705:
    nop                                           ; $4705: $00
    ldh a, [$cf]                                  ; $4706: $f0 $cf
    ld [de], a                                    ; $4708: $12
    call $8a55                                    ; $4709: $cd $55 $8a
    xor a                                         ; $470c: $af
    nop                                           ; $470d: $00
    ld b, b                                       ; $470e: $40
    ld e, d                                       ; $470f: $5a
    and c                                         ; $4710: $a1
    daa                                           ; $4711: $27
    ret nz                                        ; $4712: $c0

    ld [$2c05], a                                 ; $4713: $ea $05 $2c
    nop                                           ; $4716: $00
    jp $01ce                                      ; $4717: $c3 $ce $01


    xor c                                         ; $471a: $a9

jr_0cc_471b:
    ld b, $5b                                     ; $471b: $06 $5b
    jr nz, jr_0cc_4705                            ; $471d: $20 $e6

    nop                                           ; $471f: $00
    add hl, de                                    ; $4720: $19
    call Call_0cc_6a32                            ; $4721: $cd $32 $6a
    sub c                                         ; $4724: $91
    ld e, c                                       ; $4725: $59
    add b                                         ; $4726: $80
    sbc d                                         ; $4727: $9a
    ld [hl+], a                                   ; $4728: $22
    ld bc, $be7f                                  ; $4729: $01 $7f $be
    nop                                           ; $472c: $00
    ld e, a                                       ; $472d: $5f
    rst $38                                       ; $472e: $ff
    ld d, a                                       ; $472f: $57
    inc a                                         ; $4730: $3c
    nop                                           ; $4731: $00
    ld [hl], a                                    ; $4732: $77
    ld [hl+], a                                   ; $4733: $22
    rst $38                                       ; $4734: $ff
    or a                                          ; $4735: $b7
    ld b, h                                       ; $4736: $44
    nop                                           ; $4737: $00
    db $fd                                        ; $4738: $fd
    cp $fc                                        ; $4739: $fe $fc
    ld b, h                                       ; $473b: $44
    nop                                           ; $473c: $00
    cp $a0                                        ; $473d: $fe $a0
    ld b, $01                                     ; $473f: $06 $01
    rst $18                                       ; $4741: $df
    ld c, d                                       ; $4742: $4a
    db $10                                        ; $4743: $10
    ld c, h                                       ; $4744: $4c
    add e                                         ; $4745: $83
    rst $10                                       ; $4746: $d7
    nop                                           ; $4747: $00
    ld c, e                                       ; $4748: $4b
    nop                                           ; $4749: $00
    sub b                                         ; $474a: $90
    ld a, [hl-]                                   ; $474b: $3a
    pop bc                                        ; $474c: $c1
    ld [hl], h                                    ; $474d: $74
    adc e                                         ; $474e: $8b
    ld h, a                                       ; $474f: $67
    sbc b                                         ; $4750: $98
    di                                            ; $4751: $f3
    nop                                           ; $4752: $00
    inc c                                         ; $4753: $0c
    ld [hl], d                                    ; $4754: $72
    adc h                                         ; $4755: $8c
    dec [hl]                                      ; $4756: $35

jr_0cc_4757:
    ret z                                         ; $4757: $c8

    db $dd                                        ; $4758: $dd
    nop                                           ; $4759: $00
    and [hl]                                      ; $475a: $a6
    nop                                           ; $475b: $00
    ld e, c                                       ; $475c: $59
    rst $00                                       ; $475d: $c7
    jr c, jr_0cc_471b                             ; $475e: $38 $bb

    inc b                                         ; $4760: $04
    ld c, e                                       ; $4761: $4b
    add h                                         ; $4762: $84
    ld c, [hl]                                    ; $4763: $4e
    ld [bc], a                                    ; $4764: $02
    add b                                         ; $4765: $80
    or $00                                        ; $4766: $f6 $00
    ccf                                           ; $4768: $3f
    rst $38                                       ; $4769: $ff
    xor a                                         ; $476a: $af
    ld a, d                                       ; $476b: $7a
    nop                                           ; $476c: $00
    cpl                                           ; $476d: $2f
    nop                                           ; $476e: $00
    rst $38                                       ; $476f: $ff
    xor e                                         ; $4770: $ab
    ld a, a                                       ; $4771: $7f
    xor e                                         ; $4772: $ab
    ld a, a                                       ; $4773: $7f
    srl a                                         ; $4774: $cb $3f
    db $db                                        ; $4776: $db
    nop                                           ; $4777: $00
    cpl                                           ; $4778: $2f
    call nc, $e4ff                                ; $4779: $d4 $ff $e4
    rst $38                                       ; $477c: $ff

jr_0cc_477d:
    rst $28                                       ; $477d: $ef
    db $f4                                        ; $477e: $f4
    ld l, c                                       ; $477f: $69
    nop                                           ; $4780: $00
    or $7b                                        ; $4781: $f6 $7b
    db $e4                                        ; $4783: $e4
    sub [hl]                                      ; $4784: $96

jr_0cc_4785:
    pop hl                                        ; $4785: $e1
    ld e, c                                       ; $4786: $59
    and b                                         ; $4787: $a0
    call nz, $b800                                ; $4788: $c4 $00 $b8
    ld e, d                                       ; $478b: $5a
    add h                                         ; $478c: $84
    adc $00                                       ; $478d: $ce $00
    adc e                                         ; $478f: $8b
    inc b                                         ; $4790: $04
    rlc b                                         ; $4791: $cb $00
    inc b                                         ; $4793: $04
    xor a                                         ; $4794: $af
    nop                                           ; $4795: $00
    ret                                           ; $4796: $c9


    nop                                           ; $4797: $00
    and l                                         ; $4798: $a5
    nop                                           ; $4799: $00
    rst $28                                       ; $479a: $ef
    nop                                           ; $479b: $00
    nop                                           ; $479c: $00
    sub b                                         ; $479d: $90
    cpl                                           ; $479e: $2f
    ld a, [hl-]                                   ; $479f: $3a
    dec b                                         ; $47a0: $05
    ld l, $11                                     ; $47a1: $2e $11
    xor e                                         ; $47a3: $ab
    nop                                           ; $47a4: $00
    db $10                                        ; $47a5: $10
    swap b                                        ; $47a6: $cb $30
    ld h, h                                       ; $47a8: $64
    jr jr_0cc_4757                                ; $47a9: $18 $ac

    db $10                                        ; $47ab: $10
    sbc c                                         ; $47ac: $99
    ld [hl+], a                                   ; $47ad: $22
    nop                                           ; $47ae: $00
    ld [hl], a                                    ; $47af: $77
    ld [c], a                                     ; $47b0: $e2
    ld bc, $ff7d                                  ; $47b1: $01 $7d $ff
    ld a, c                                       ; $47b4: $79
    ld [bc], a                                    ; $47b5: $02
    nop                                           ; $47b6: $00
    ld l, h                                       ; $47b7: $6c
    jr nz, @+$01                                  ; $47b8: $20 $ff

    ld h, h                                       ; $47ba: $64
    inc b                                         ; $47bb: $04
    nop                                           ; $47bc: $00
    cp a                                          ; $47bd: $bf
    rst $38                                       ; $47be: $ff
    ld a, [$a8ff]                                 ; $47bf: $fa $ff $a8
    nop                                           ; $47c2: $00
    rst $38                                       ; $47c3: $ff
    xor l                                         ; $47c4: $ad
    ld a, [$fca3]                                 ; $47c5: $fa $a3 $fc
    add hl, hl                                    ; $47c8: $29
    or $ad                                        ; $47c9: $f6 $ad
    nop                                           ; $47cb: $00
    ld [hl], d                                    ; $47cc: $72
    adc l                                         ; $47cd: $8d
    ld [hl], d                                    ; $47ce: $72
    ld b, [hl]                                    ; $47cf: $46
    or c                                          ; $47d0: $b1
    ld l, l                                       ; $47d1: $6d
    sub b                                         ; $47d2: $90
    push hl                                       ; $47d3: $e5
    nop                                           ; $47d4: $00
    jr jr_0cc_477d                                ; $47d5: $18 $a6

    ld e, c                                       ; $47d7: $59
    rst $20                                       ; $47d8: $e7
    jr jr_0cc_4785                                ; $47d9: $18 $aa

    ld d, c                                       ; $47db: $51
    xor d                                         ; $47dc: $aa
    nop                                           ; $47dd: $00
    ld d, c                                       ; $47de: $51
    adc a                                         ; $47df: $8f
    ld [hl], b                                    ; $47e0: $70
    adc e                                         ; $47e1: $8b
    nop                                           ; $47e2: $00
    ld a, [hl+]                                   ; $47e3: $2a
    nop                                           ; $47e4: $00
    xor b                                         ; $47e5: $a8
    nop                                           ; $47e6: $00
    nop                                           ; $47e7: $00
    db $db                                        ; $47e8: $db
    jr nz, @-$1f                                  ; $47e9: $20 $df

    jr nz, @-$25                                  ; $47eb: $20 $d9

    ld [hl+], a                                   ; $47ed: $22
    ld c, a                                       ; $47ee: $4f
    nop                                           ; $47ef: $00
    or b                                          ; $47f0: $b0
    call Call_0cc_6432                            ; $47f1: $cd $32 $64
    inc de                                        ; $47f4: $13
    db $fd                                        ; $47f5: $fd
    ld [bc], a                                    ; $47f6: $02
    or [hl]                                       ; $47f7: $b6
    nop                                           ; $47f8: $00
    add hl, bc                                    ; $47f9: $09
    dec hl                                        ; $47fa: $2b
    db $10                                        ; $47fb: $10
    ld h, h                                       ; $47fc: $64
    jr jr_0cc_4834                                ; $47fd: $18 $35

    ld [$007c], sp                                ; $47ff: $08 $7c $00
    nop                                           ; $4802: $00
    db $ec                                        ; $4803: $ec
    nop                                           ; $4804: $00
    ld d, e                                       ; $4805: $53
    inc c                                         ; $4806: $0c
    and d                                         ; $4807: $a2
    ld e, l                                       ; $4808: $5d
    sub l                                         ; $4809: $95
    nop                                           ; $480a: $00
    ld c, b                                       ; $480b: $48
    ld d, d                                       ; $480c: $52
    adc c                                         ; $480d: $89
    ld h, h                                       ; $480e: $64
    sbc e                                         ; $480f: $9b
    ld a, [hl+]                                   ; $4810: $2a
    pop de                                        ; $4811: $d1
    add [hl]                                      ; $4812: $86
    nop                                           ; $4813: $00
    ld a, c                                       ; $4814: $79
    add h                                         ; $4815: $84
    ld a, e                                       ; $4816: $7b
    xor l                                         ; $4817: $ad
    ld [hl], d                                    ; $4818: $72
    ld e, l                                       ; $4819: $5d
    ld [hl+], a                                   ; $481a: $22
    rst $30                                       ; $481b: $f7
    nop                                           ; $481c: $00
    nop                                           ; $481d: $00
    ld b, c                                       ; $481e: $41
    add b                                         ; $481f: $80
    ld h, d                                       ; $4820: $62
    add c                                         ; $4821: $81
    ld h, e                                       ; $4822: $63
    add b                                         ; $4823: $80
    adc $00                                       ; $4824: $ce $00
    ld bc, $01fa                                  ; $4826: $01 $fa $01
    ld c, l                                       ; $4829: $4d
    ld [hl-], a                                   ; $482a: $32
    ld c, c                                       ; $482b: $49
    ld [hl-], a                                   ; $482c: $32
    xor h                                         ; $482d: $ac
    nop                                           ; $482e: $00
    inc de                                        ; $482f: $13
    xor h                                         ; $4830: $ac
    inc de                                        ; $4831: $13
    ld l, d                                       ; $4832: $6a

jr_0cc_4833:
    sub c                                         ; $4833: $91

jr_0cc_4834:
    ld l, d                                       ; $4834: $6a
    sub c                                         ; $4835: $91
    sub [hl]                                      ; $4836: $96
    nop                                           ; $4837: $00
    add hl, bc                                    ; $4838: $09
    ld h, [hl]                                    ; $4839: $66
    sbc c                                         ; $483a: $99
    ld l, e                                       ; $483b: $6b
    inc b                                         ; $483c: $04
    ld [$5704], a                                 ; $483d: $ea $04 $57
    nop                                           ; $4840: $00
    jr nz, @-$41                                  ; $4841: $20 $bd

    ld b, d                                       ; $4843: $42
    or l                                          ; $4844: $b5
    ld c, b                                       ; $4845: $48
    or l                                          ; $4846: $b5
    ld c, b                                       ; $4847: $48
    dec h                                         ; $4848: $25
    nop                                           ; $4849: $00
    ld e, b                                       ; $484a: $58
    ld l, e                                       ; $484b: $6b
    inc d                                         ; $484c: $14
    cp l                                          ; $484d: $bd
    ld b, b                                       ; $484e: $40
    inc l                                         ; $484f: $2c

jr_0cc_4850:
    ld b, c                                       ; $4850: $41
    ld [$0400], a                                 ; $4851: $ea $00 $04
    cp [hl]                                       ; $4854: $be
    ld b, b                                       ; $4855: $40
    ld [$9b14], a                                 ; $4856: $ea $14 $9b
    ld h, h                                       ; $4859: $64
    ld e, c                                       ; $485a: $59
    nop                                           ; $485b: $00
    ld h, $51                                     ; $485c: $26 $51
    ld h, $40                                     ; $485e: $26 $40
    cp a                                          ; $4860: $bf
    db $10                                        ; $4861: $10
    rst $28                                       ; $4862: $ef

jr_0cc_4863:
    ld e, b                                       ; $4863: $58
    nop                                           ; $4864: $00
    and a                                         ; $4865: $a7
    sbc c                                         ; $4866: $99
    rst $20                                       ; $4867: $e7
    xor c                                         ; $4868: $a9
    rst $00                                       ; $4869: $c7
    jr z, jr_0cc_4833                             ; $486a: $28 $c7

    ld [de], a                                    ; $486c: $12
    nop                                           ; $486d: $00
    db $ed                                        ; $486e: $ed
    jr nz, jr_0cc_4850                            ; $486f: $20 $df

    or d                                          ; $4871: $b2
    ld c, l                                       ; $4872: $4d
    or b                                          ; $4873: $b0
    ld c, a                                       ; $4874: $4f
    ld [hl+], a                                   ; $4875: $22
    nop                                           ; $4876: $00
    db $dd                                        ; $4877: $dd
    db $10                                        ; $4878: $10
    rst $28                                       ; $4879: $ef
    ld sp, $31cf                                  ; $487a: $31 $cf $31
    rst $08                                       ; $487d: $cf
    ld b, h                                       ; $487e: $44
    nop                                           ; $487f: $00
    cp e                                          ; $4880: $bb
    ld b, b                                       ; $4881: $40
    cp a                                          ; $4882: $bf
    nop                                           ; $4883: $00
    rst $38                                       ; $4884: $ff
    ld b, [hl]                                    ; $4885: $46
    cp c                                          ; $4886: $b9
    inc b                                         ; $4887: $04
    nop                                           ; $4888: $00
    ei                                            ; $4889: $fb
    ld d, [hl]                                    ; $488a: $56
    xor c                                         ; $488b: $a9
    ld b, d                                       ; $488c: $42
    cp l                                          ; $488d: $bd
    ld [de], a                                    ; $488e: $12
    db $ed                                        ; $488f: $ed
    jr nc, @+$22                                  ; $4890: $30 $20

    rst $08                                       ; $4892: $cf
    jr nc, jr_0cc_4863                            ; $4893: $30 $ce

    ld bc, $9f60                                  ; $4895: $01 $60 $9f
    ld h, h                                       ; $4898: $64
    sbc e                                         ; $4899: $9b
    ld d, b                                       ; $489a: $50
    nop                                           ; $489b: $00
    adc a                                         ; $489c: $8f
    ld [hl], h                                    ; $489d: $74
    adc e                                         ; $489e: $8b
    ld d, h                                       ; $489f: $54
    xor e                                         ; $48a0: $ab
    nop                                           ; $48a1: $00
    rst $38                                       ; $48a2: $ff
    ld d, d                                       ; $48a3: $52
    nop                                           ; $48a4: $00
    xor a                                         ; $48a5: $af
    nop                                           ; $48a6: $00
    rst $38                                       ; $48a7: $ff
    ld d, h                                       ; $48a8: $54
    xor e                                         ; $48a9: $ab
    ld h, b                                       ; $48aa: $60
    sbc a                                         ; $48ab: $9f
    ld b, h                                       ; $48ac: $44
    nop                                           ; $48ad: $00
    sbc e                                         ; $48ae: $9b
    inc h                                         ; $48af: $24
    db $db                                        ; $48b0: $db
    ld b, $f9                                     ; $48b1: $06 $f9
    ld h, $d9                                     ; $48b3: $26 $d9
    ld c, d                                       ; $48b5: $4a
    nop                                           ; $48b6: $00
    pop af                                        ; $48b7: $f1
    ld [hl-], a                                   ; $48b8: $32
    call $c936                                    ; $48b9: $cd $36 $c9
    ld d, $e9                                     ; $48bc: $16 $e9
    ld e, d                                       ; $48be: $5a
    nop                                           ; $48bf: $00
    db $ed                                        ; $48c0: $ed
    ld c, d                                       ; $48c1: $4a
    db $fd                                        ; $48c2: $fd
    ld h, b                                       ; $48c3: $60
    rst $38                                       ; $48c4: $ff
    ld l, b                                       ; $48c5: $68
    rst $38                                       ; $48c6: $ff
    ld l, d                                       ; $48c7: $6a
    nop                                           ; $48c8: $00
    rst $38                                       ; $48c9: $ff
    add b                                         ; $48ca: $80
    rst $38                                       ; $48cb: $ff
    and d                                         ; $48cc: $a2
    db $dd                                        ; $48cd: $dd
    add hl, hl                                    ; $48ce: $29
    sbc $43                                       ; $48cf: $de $43
    nop                                           ; $48d1: $00
    db $fc                                        ; $48d2: $fc
    ld l, c                                       ; $48d3: $69
    cp $49                                        ; $48d4: $fe $49
    cp $9d                                        ; $48d6: $fe $9d
    ld a, [hl]                                    ; $48d8: $7e
    ld e, c                                       ; $48d9: $59
    nop                                           ; $48da: $00
    cp $15                                        ; $48db: $fe $15
    xor $21                                       ; $48dd: $ee $21
    cp $a4                                        ; $48df: $fe $a4
    ld a, a                                       ; $48e1: $7f
    or b                                          ; $48e2: $b0
    nop                                           ; $48e3: $00
    ld a, a                                       ; $48e4: $7f
    or l                                          ; $48e5: $b5
    ld a, a                                       ; $48e6: $7f
    jr nc, @+$01                                  ; $48e7: $30 $ff

    ld h, l                                       ; $48e9: $65
    cp $65                                        ; $48ea: $fe $65
    ld b, h                                       ; $48ec: $44
    cp $24                                        ; $48ed: $fe $24
    ld [$ffea], sp                                ; $48ef: $08 $ea $ff
    call z, Call_000_022e                         ; $48f2: $cc $2e $02
    db $ed                                        ; $48f5: $ed
    rst $38                                       ; $48f6: $ff
    nop                                           ; $48f7: $00
    ld c, a                                       ; $48f8: $4f
    rst $38                                       ; $48f9: $ff
    ld h, a                                       ; $48fa: $67
    rst $38                                       ; $48fb: $ff
    ld e, b                                       ; $48fc: $58
    rst $38                                       ; $48fd: $ff
    ld [hl], d                                    ; $48fe: $72
    db $fd                                        ; $48ff: $fd

Call_0cc_4900:
    nop                                           ; $4900: $00
    scf                                           ; $4901: $37
    db $fc                                        ; $4902: $fc
    cp l                                          ; $4903: $bd
    ld a, [hl]                                    ; $4904: $7e
    ld e, l                                       ; $4905: $5d
    cp $58                                        ; $4906: $fe $58
    rst $38                                       ; $4908: $ff
    inc b                                         ; $4909: $04
    sbc c                                         ; $490a: $99
    ld a, [hl]                                    ; $490b: $7e
    ld e, e                                       ; $490c: $5b
    db $fc                                        ; $490d: $fc
    ld h, [hl]                                    ; $490e: $66
    ld a, [hl+]                                   ; $490f: $2a
    ld [bc], a                                    ; $4910: $02
    ld a, a                                       ; $4911: $7f
    rst $38                                       ; $4912: $ff
    nop                                           ; $4913: $00
    ld a, h                                       ; $4914: $7c
    rst $38                                       ; $4915: $ff
    ld e, [hl]                                    ; $4916: $5e
    rst $38                                       ; $4917: $ff
    ld e, d                                       ; $4918: $5a
    rst $38                                       ; $4919: $ff
    ld a, [hl]                                    ; $491a: $7e
    rst $38                                       ; $491b: $ff
    nop                                           ; $491c: $00
    ld a, $ff                                     ; $491d: $3e $ff
    ld h, [hl]                                    ; $491f: $66
    rst $38                                       ; $4920: $ff
    ld h, $ff                                     ; $4921: $26 $ff
    ld [hl], $ff                                  ; $4923: $36 $ff
    inc b                                         ; $4925: $04
    ld [hl], d                                    ; $4926: $72
    rst $38                                       ; $4927: $ff
    ld e, c                                       ; $4928: $59
    cp $3a                                        ; $4929: $fe $3a
    jr nz, jr_0cc_492d                            ; $492b: $20 $00

jr_0cc_492d:
    dec a                                         ; $492d: $3d
    cp $00                                        ; $492e: $fe $00
    inc l                                         ; $4930: $2c
    rst $38                                       ; $4931: $ff
    xor h                                         ; $4932: $ac
    rst $38                                       ; $4933: $ff
    dec e                                         ; $4934: $1d
    rst $38                                       ; $4935: $ff
    ld e, c                                       ; $4936: $59
    rst $38                                       ; $4937: $ff
    nop                                           ; $4938: $00
    cp e                                          ; $4939: $bb
    ld a, a                                       ; $493a: $7f
    dec sp                                        ; $493b: $3b
    rst $38                                       ; $493c: $ff
    ld a, d                                       ; $493d: $7a
    rst $38                                       ; $493e: $ff
    sbc b                                         ; $493f: $98
    ld a, a                                       ; $4940: $7f
    ld d, b                                       ; $4941: $50
    jr jr_0cc_4950                                ; $4942: $18 $0c

    nop                                           ; $4944: $00
    ld e, h                                       ; $4945: $5c
    ld a, [hl+]                                   ; $4946: $2a
    nop                                           ; $4947: $00
    ld a, b                                       ; $4948: $78
    rst $38                                       ; $4949: $ff
    reti                                          ; $494a: $d9


    cp $40                                        ; $494b: $fe $40
    ld a, h                                       ; $494d: $7c
    ld [hl-], a                                   ; $494e: $32
    nop                                           ; $494f: $00

jr_0cc_4950:
    ld sp, hl                                     ; $4950: $f9
    rst $38                                       ; $4951: $ff
    reti                                          ; $4952: $d9


    rst $38                                       ; $4953: $ff
    ld [hl], l                                    ; $4954: $75
    rst $38                                       ; $4955: $ff
    ld d, h                                       ; $4956: $54
    ld e, l                                       ; $4957: $5d
    ld [$5902], a                                 ; $4958: $ea $02 $59
    xor $02                                       ; $495b: $ee $02
    rst $38                                       ; $495d: $ff
    ld e, [hl]                                    ; $495e: $5e
    nop                                           ; $495f: $00
    cp b                                          ; $4960: $b8
    ld a, a                                       ; $4961: $7f
    nop                                           ; $4962: $00
    cp d                                          ; $4963: $ba
    ld a, a                                       ; $4964: $7f
    ld a, d                                       ; $4965: $7a
    rst $38                                       ; $4966: $ff
    cp d                                          ; $4967: $ba
    ld a, a                                       ; $4968: $7f
    cp h                                          ; $4969: $bc
    ld a, a                                       ; $496a: $7f
    xor [hl]                                      ; $496b: $ae
    jr nz, jr_0cc_4976                            ; $496c: $20 $08

    db $fd                                        ; $496e: $fd
    db $10                                        ; $496f: $10
    inc bc                                        ; $4970: $03
    db $dd                                        ; $4971: $dd
    ld h, $00                                     ; $4972: $26 $00
    ld d, [hl]                                    ; $4974: $56
    ld a, [bc]                                    ; $4975: $0a

jr_0cc_4976:
    ld e, d                                       ; $4976: $5a
    ld a, [bc]                                    ; $4977: $0a
    ld e, d                                       ; $4978: $5a
    and d                                         ; $4979: $a2
    ld b, [hl]                                    ; $497a: $46
    nop                                           ; $497b: $00
    ld e, [hl]                                    ; $497c: $5e
    ld a, [c]                                     ; $497d: $f2
    ld [bc], a                                    ; $497e: $02
    or $ff                                        ; $497f: $f6 $ff
    halt                                          ; $4981: $76
    ld l, h                                       ; $4982: $6c
    nop                                           ; $4983: $00
    ld l, [hl]                                    ; $4984: $6e
    xor b                                         ; $4985: $a8
    inc a                                         ; $4986: $3c
    nop                                           ; $4987: $00
    ld d, l                                       ; $4988: $55
    ld [bc], a                                    ; $4989: $02
    nop                                           ; $498a: $00
    ldh a, [rSCY]                                 ; $498b: $f0 $42
    ld [bc], a                                    ; $498d: $02
    jp $d3ff                                      ; $498e: $c3 $ff $d3


    add c                                         ; $4991: $81
    ld l, [hl]                                    ; $4992: $6e
    inc bc                                        ; $4993: $03
    db $fc                                        ; $4994: $fc
    rst $38                                       ; $4995: $ff
    ld a, [$fafd]                                 ; $4996: $fa $fd $fa
    db $fd                                        ; $4999: $fd
    jr nc, jr_0cc_49a4                            ; $499a: $30 $08

    ld b, b                                       ; $499c: $40
    ld sp, hl                                     ; $499d: $f9
    add sp, $02                                   ; $499e: $e8 $02
    db $fc                                        ; $49a0: $fc
    rst $38                                       ; $49a1: $ff
    ld e, e                                       ; $49a2: $5b
    rst $20                                       ; $49a3: $e7

jr_0cc_49a4:
    push de                                       ; $49a4: $d5
    rst $28                                       ; $49a5: $ef
    ld b, b                                       ; $49a6: $40
    ld h, l                                       ; $49a7: $65
    cp b                                          ; $49a8: $b8
    nop                                           ; $49a9: $00
    ld b, l                                       ; $49aa: $45
    rst $38                                       ; $49ab: $ff
    rst $10                                       ; $49ac: $d7
    rst $38                                       ; $49ad: $ff
    di                                            ; $49ae: $f3
    rst $38                                       ; $49af: $ff
    ld b, c                                       ; $49b0: $41
    db $e3                                        ; $49b1: $e3
    ld a, b                                       ; $49b2: $78
    inc bc                                        ; $49b3: $03
    xor e                                         ; $49b4: $ab
    rst $30                                       ; $49b5: $f7
    and a                                         ; $49b6: $a7
    rst $38                                       ; $49b7: $ff
    and a                                         ; $49b8: $a7
    and h                                         ; $49b9: $a4
    inc bc                                        ; $49ba: $03
    ld b, b                                       ; $49bb: $40

jr_0cc_49bc:
    xor e                                         ; $49bc: $ab
    and [hl]                                      ; $49bd: $a6
    inc bc                                        ; $49be: $03
    rst $20                                       ; $49bf: $e7
    rst $38                                       ; $49c0: $ff
    or b                                          ; $49c1: $b0
    inc bc                                        ; $49c2: $03
    sub b                                         ; $49c3: $90
    ld [bc], a                                    ; $49c4: $02
    ld b, b                                       ; $49c5: $40
    rst $38                                       ; $49c6: $ff
    ld bc, $f770                                  ; $49c7: $01 $70 $f7
    rst $30                                       ; $49ca: $f7
    cp $fe                                        ; $49cb: $fe $fe
    rst $38                                       ; $49cd: $ff
    rst $38                                       ; $49ce: $ff
    ld [$fbfb], sp                                ; $49cf: $08 $fb $fb
    rst $38                                       ; $49d2: $ff
    rst $38                                       ; $49d3: $ff
    ld [$0d08], sp                                ; $49d4: $08 $08 $0d
    dec c                                         ; $49d7: $0d
    add b                                         ; $49d8: $80
    nop                                           ; $49d9: $00
    add b                                         ; $49da: $80
    pop hl                                        ; $49db: $e1
    pop hl                                        ; $49dc: $e1
    or b                                          ; $49dd: $b0
    or b                                          ; $49de: $b0
    ld bc, $a101                                  ; $49df: $01 $01 $a1
    nop                                           ; $49e2: $00
    and c                                         ; $49e3: $a1
    ret nz                                        ; $49e4: $c0

    ret nz                                        ; $49e5: $c0

    db $ed                                        ; $49e6: $ed
    db $ed                                        ; $49e7: $ed
    and b                                         ; $49e8: $a0
    cp a                                          ; $49e9: $bf
    ld e, e                                       ; $49ea: $5b
    nop                                           ; $49eb: $00
    ld e, h                                       ; $49ec: $5c
    ld h, b                                       ; $49ed: $60
    ld a, a                                       ; $49ee: $7f
    set 6, h                                      ; $49ef: $cb $f4
    sub b                                         ; $49f1: $90
    sbc a                                         ; $49f2: $9f
    ld h, c                                       ; $49f3: $61
    nop                                           ; $49f4: $00
    ld a, [hl]                                    ; $49f5: $7e
    dec bc                                        ; $49f6: $0b
    inc [hl]                                      ; $49f7: $34
    ld [hl], b                                    ; $49f8: $70
    ld a, a                                       ; $49f9: $7f
    jr nc, jr_0cc_49bc                            ; $49fa: $30 $c0

    ldh a, [rP1]                                  ; $49fc: $f0 $00
    nop                                           ; $49fe: $00
    ld a, b                                       ; $49ff: $78
    add b                                         ; $4a00: $80
    ldh [rP1], a                                  ; $4a01: $e0 $00
    ld h, b                                       ; $4a03: $60
    add b                                         ; $4a04: $80
    cp $01                                        ; $4a05: $fe $01
    nop                                           ; $4a07: $00
    ret nz                                        ; $4a08: $c0

    nop                                           ; $4a09: $00
    ld hl, sp+$00                                 ; $4a0a: $f8 $00

jr_0cc_4a0c:
    inc c                                         ; $4a0c: $0c
    nop                                           ; $4a0d: $00
    ld bc, $1118                                  ; $4a0e: $01 $18 $11
    ld b, $00                                     ; $4a11: $06 $00
    ld c, $0a                                     ; $4a13: $0e $0a
    db $10                                        ; $4a15: $10
    rra                                           ; $4a16: $1f
    nop                                           ; $4a17: $00
    inc bc                                        ; $4a18: $03
    ld [bc], a                                    ; $4a19: $02
    nop                                           ; $4a1a: $00
    ld b, b                                       ; $4a1b: $40
    adc a                                         ; $4a1c: $8f
    ld [bc], a                                    ; $4a1d: $02
    nop                                           ; $4a1e: $00
    rlca                                          ; $4a1f: $07
    nop                                           ; $4a20: $00
    rrca                                          ; $4a21: $0f
    nop                                           ; $4a22: $00
    ccf                                           ; $4a23: $3f
    nop                                           ; $4a24: $00
    inc b                                         ; $4a25: $04
    rst $38                                       ; $4a26: $ff
    nop                                           ; $4a27: $00
    cp $01                                        ; $4a28: $fe $01
    rst $28                                       ; $4a2a: $ef
    ld b, $00                                     ; $4a2b: $06 $00
    inc a                                         ; $4a2d: $3c
    inc bc                                        ; $4a2e: $03
    nop                                           ; $4a2f: $00
    inc a                                         ; $4a30: $3c
    inc bc                                        ; $4a31: $03
    rst $38                                       ; $4a32: $ff
    nop                                           ; $4a33: $00
    rst $30                                       ; $4a34: $f7
    ld [$06f9], sp                                ; $4a35: $08 $f9 $06
    ld [$30cf], sp                                ; $4a38: $08 $cf $30
    rst $08                                       ; $4a3b: $cf
    jr nc, @+$18                                  ; $4a3c: $30 $16

    ld [$19e6], sp                                ; $4a3e: $08 $e6 $19
    rst $20                                       ; $4a41: $e7
    nop                                           ; $4a42: $00
    jr @+$01                                      ; $4a43: $18 $ff

    nop                                           ; $4a45: $00
    ret nz                                        ; $4a46: $c0

    ccf                                           ; $4a47: $3f
    ldh [$1f], a                                  ; $4a48: $e0 $1f
    ldh a, [rP1]                                  ; $4a4a: $f0 $00
    rrca                                          ; $4a4c: $0f
    inc a                                         ; $4a4d: $3c
    jp $e31c                                      ; $4a4e: $c3 $1c $e3


    jr @-$17                                      ; $4a51: $18 $e7

    ld hl, sp+$00                                 ; $4a53: $f8 $00
    rlca                                          ; $4a55: $07
    ldh a, [rIF]                                  ; $4a56: $f0 $0f
    rst $38                                       ; $4a58: $ff
    nop                                           ; $4a59: $00
    xor a                                         ; $4a5a: $af
    ld d, b                                       ; $4a5b: $50
    ld e, e                                       ; $4a5c: $5b
    nop                                           ; $4a5d: $00
    and h                                         ; $4a5e: $a4
    rst $00                                       ; $4a5f: $c7
    jr c, jr_0cc_4a0c                             ; $4a60: $38 $aa

    ld d, l                                       ; $4a62: $55
    push de                                       ; $4a63: $d5
    ld a, [hl+]                                   ; $4a64: $2a
    xor d                                         ; $4a65: $aa
    nop                                           ; $4a66: $00

jr_0cc_4a67:
    ld d, l                                       ; $4a67: $55
    rst $18                                       ; $4a68: $df
    jr nz, jr_0cc_4a67                            ; $4a69: $20 $fc

    dec b                                         ; $4a6b: $05
    db $fc                                        ; $4a6c: $fc
    inc b                                         ; $4a6d: $04
    cp $43                                        ; $4a6e: $fe $43

jr_0cc_4a70:
    ld [bc], a                                    ; $4a70: $02
    ld [bc], a                                    ; $4a71: $02
    jr jr_0cc_4a70                                ; $4a72: $18 $fc

    inc b                                         ; $4a74: $04
    db $fc                                        ; $4a75: $fc
    inc b                                         ; $4a76: $04
    ld d, c                                       ; $4a77: $51
    nop                                           ; $4a78: $00
    ld [bc], a                                    ; $4a79: $02
    nop                                           ; $4a7a: $00
    nop                                           ; $4a7b: $00
    add b                                         ; $4a7c: $80
    rst $38                                       ; $4a7d: $ff
    nop                                           ; $4a7e: $00
    ld a, a                                       ; $4a7f: $7f
    ld h, b                                       ; $4a80: $60
    ld a, a                                       ; $4a81: $7f
    cpl                                           ; $4a82: $2f
    cpl                                           ; $4a83: $2f
    jr nz, jr_0cc_4a88                            ; $4a84: $20 $02

    ld [bc], a                                    ; $4a86: $02
    db $10                                        ; $4a87: $10

jr_0cc_4a88:
    ld [$ff03], sp                                ; $4a88: $08 $03 $ff
    ld b, $fe                                     ; $4a8b: $06 $fe
    ld a, [bc]                                    ; $4a8d: $0a
    nop                                           ; $4a8e: $00
    ld a, [$f030]                                 ; $4a8f: $fa $30 $f0
    ret nz                                        ; $4a92: $c0

    ret nz                                        ; $4a93: $c0

    nop                                           ; $4a94: $00
    nop                                           ; $4a95: $00
    ccf                                           ; $4a96: $3f
    nop                                           ; $4a97: $00
    ldh a, [$df]                                  ; $4a98: $f0 $df
    ret nc                                        ; $4a9a: $d0

    rra                                           ; $4a9b: $1f
    db $10                                        ; $4a9c: $10
    cpl                                           ; $4a9d: $2f
    inc l                                         ; $4a9e: $2c
    inc b                                         ; $4a9f: $04
    ld [bc], a                                    ; $4aa0: $02
    rlca                                          ; $4aa1: $07
    ld [$180f], sp                                ; $4aa2: $08 $0f $18
    rra                                           ; $4aa5: $1f
    ld [$0050], sp                                ; $4aa6: $08 $50 $00
    ldh a, [rP1]                                  ; $4aa9: $f0 $00
    rrca                                          ; $4aab: $0f

jr_0cc_4aac:
    add b                                         ; $4aac: $80
    ld a, a                                       ; $4aad: $7f
    inc d                                         ; $4aae: $14
    rst $38                                       ; $4aaf: $ff
    xor c                                         ; $4ab0: $a9
    rst $38                                       ; $4ab1: $ff
    ld e, h                                       ; $4ab2: $5c
    nop                                           ; $4ab3: $00
    rst $38                                       ; $4ab4: $ff
    cp d                                          ; $4ab5: $ba
    rst $38                                       ; $4ab6: $ff
    ld e, a                                       ; $4ab7: $5f
    rst $38                                       ; $4ab8: $ff
    ldh [rP1], a                                  ; $4ab9: $e0 $00
    add b                                         ; $4abb: $80
    add d                                         ; $4abc: $82
    or [hl]                                       ; $4abd: $b6
    nop                                           ; $4abe: $00
    ldh a, [rP1]                                  ; $4abf: $f0 $00
    db $10                                        ; $4ac1: $10
    ldh [$fe], a                                  ; $4ac2: $e0 $fe
    inc b                                         ; $4ac4: $04
    nop                                           ; $4ac5: $00
    db $fc                                        ; $4ac6: $fc
    ret nz                                        ; $4ac7: $c0

    cp [hl]                                       ; $4ac8: $be
    jr nz, jr_0cc_4ad2                            ; $4ac9: $20 $07

    jr c, jr_0cc_4aac                             ; $4acb: $38 $df

    jr nz, jr_0cc_4b4e                            ; $4acd: $20 $7f

    nop                                           ; $4acf: $00
    ld a, a                                       ; $4ad0: $7f
    nop                                           ; $4ad1: $00

jr_0cc_4ad2:
    ld bc, $18e7                                  ; $4ad2: $01 $e7 $18
    and $19                                       ; $4ad5: $e6 $19
    cp $01                                        ; $4ad7: $fe $01
    rst $18                                       ; $4ad9: $df
    ld l, l                                       ; $4ada: $6d
    jr jr_0cc_4add                                ; $4adb: $18 $00

jr_0cc_4add:
    nop                                           ; $4add: $00
    db $fc                                        ; $4ade: $fc
    inc bc                                        ; $4adf: $03
    call z, $ff33                                 ; $4ae0: $cc $33 $ff
    nop                                           ; $4ae3: $00
    ccf                                           ; $4ae4: $3f
    nop                                           ; $4ae5: $00
    ret nz                                        ; $4ae6: $c0

    inc a                                         ; $4ae7: $3c
    jp Jump_000_03fc                              ; $4ae8: $c3 $fc $03


    db $fc                                        ; $4aeb: $fc
    inc bc                                        ; $4aec: $03
    ret z                                         ; $4aed: $c8

    nop                                           ; $4aee: $00
    scf                                           ; $4aef: $37
    ret z                                         ; $4af0: $c8

    scf                                           ; $4af1: $37
    db $fc                                        ; $4af2: $fc
    inc bc                                        ; $4af3: $03
    ld hl, sp+$07                                 ; $4af4: $f8 $07
    or b                                          ; $4af6: $b0
    nop                                           ; $4af7: $00
    ld c, a                                       ; $4af8: $4f
    ldh a, [rIF]                                  ; $4af9: $f0 $0f
    ret c                                         ; $4afb: $d8

    daa                                           ; $4afc: $27
    ld bc, $0500                                  ; $4afd: $01 $00 $05
    adc d                                         ; $4b00: $8a
    ld [bc], a                                    ; $4b01: $02
    ld de, $0001                                  ; $4b02: $11 $01 $00
    jr jr_0cc_4b09                                ; $4b05: $18 $02

    nop                                           ; $4b07: $00
    nop                                           ; $4b08: $00

jr_0cc_4b09:
    ld a, [$8d00]                                 ; $4b09: $fa $00 $8d
    add $fa                                       ; $4b0c: $c6 $fa
    nop                                           ; $4b0e: $00
    db $fc                                        ; $4b0f: $fc
    ld [$003c], sp                                ; $4b10: $08 $3c $00
    inc h                                         ; $4b13: $24
    inc b                                         ; $4b14: $04
    ld bc, $08af                                  ; $4b15: $01 $af $08
    di                                            ; $4b18: $f3
    rlca                                          ; $4b19: $07
    inc c                                         ; $4b1a: $0c
    di                                            ; $4b1b: $f3
    inc c                                         ; $4b1c: $0c
    cp a                                          ; $4b1d: $bf
    ld b, b                                       ; $4b1e: $40
    ld c, h                                       ; $4b1f: $4c
    jr jr_0cc_4b70                                ; $4b20: $18 $4e

    jr @+$04                                      ; $4b22: $18 $02

jr_0cc_4b24:
    add hl, bc                                    ; $4b24: $09
    jr nz, jr_0cc_4b24                            ; $4b25: $20 $fd

    ld [bc], a                                    ; $4b27: $02
    ld a, [bc]                                    ; $4b28: $0a
    add hl, bc                                    ; $4b29: $09
    adc b                                         ; $4b2a: $88
    ld [hl], a                                    ; $4b2b: $77
    adc h                                         ; $4b2c: $8c
    ld [hl], e                                    ; $4b2d: $73
    db $ec                                        ; $4b2e: $ec
    nop                                           ; $4b2f: $00
    inc de                                        ; $4b30: $13
    ld a, h                                       ; $4b31: $7c
    add e                                         ; $4b32: $83
    ldh [$1f], a                                  ; $4b33: $e0 $1f
    ldh [$1f], a                                  ; $4b35: $e0 $1f
    jr c, jr_0cc_4b39                             ; $4b37: $38 $00

jr_0cc_4b39:
    rst $00                                       ; $4b39: $c7
    jr c, @-$37                                   ; $4b3a: $38 $c7

    rst $38                                       ; $4b3c: $ff
    nop                                           ; $4b3d: $00
    cp a                                          ; $4b3e: $bf
    ld b, b                                       ; $4b3f: $40
    rst $10                                       ; $4b40: $d7
    nop                                           ; $4b41: $00
    jr z, jr_0cc_4bae                             ; $4b42: $28 $6a

    sub l                                         ; $4b44: $95
    and l                                         ; $4b45: $a5
    ld e, d                                       ; $4b46: $5a
    ld c, e                                       ; $4b47: $4b
    or h                                          ; $4b48: $b4
    sub l                                         ; $4b49: $95
    ld bc, $6a6a                                  ; $4b4a: $01 $6a $6a
    sub l                                         ; $4b4d: $95

jr_0cc_4b4e:
    ld hl, sp+$03                                 ; $4b4e: $f8 $03
    ldh a, [rIF]                                  ; $4b50: $f0 $0f
    ld [bc], a                                    ; $4b52: $02

jr_0cc_4b53:
    ld [$f820], sp                                ; $4b53: $08 $20 $f8
    rlca                                          ; $4b56: $07
    ld [bc], a                                    ; $4b57: $02
    jr jr_0cc_4b6b                                ; $4b58: $18 $11

    rst $38                                       ; $4b5a: $ff
    inc b                                         ; $4b5b: $04
    rst $38                                       ; $4b5c: $ff
    ld de, $ff02                                  ; $4b5d: $11 $02 $ff
    ld c, d                                       ; $4b60: $4a
    rst $38                                       ; $4b61: $ff
    dec d                                         ; $4b62: $15
    rst $38                                       ; $4b63: $ff
    ld [de], a                                    ; $4b64: $12
    ld a, [bc]                                    ; $4b65: $0a
    nop                                           ; $4b66: $00
    ld hl, $ff08                                  ; $4b67: $21 $08 $ff
    ld d, b                                       ; $4b6a: $50

jr_0cc_4b6b:
    rst $38                                       ; $4b6b: $ff
    xor b                                         ; $4b6c: $a8
    inc b                                         ; $4b6d: $04
    db $10                                        ; $4b6e: $10
    ld d, l                                       ; $4b6f: $55

jr_0cc_4b70:
    rst $38                                       ; $4b70: $ff
    and b                                         ; $4b71: $a0
    nop                                           ; $4b72: $00
    rst $38                                       ; $4b73: $ff
    ld d, d                                       ; $4b74: $52
    rst $38                                       ; $4b75: $ff
    adc b                                         ; $4b76: $88

jr_0cc_4b77:
    rst $38                                       ; $4b77: $ff
    rrca                                          ; $4b78: $0f
    ret z                                         ; $4b79: $c8

    cpl                                           ; $4b7a: $2f
    nop                                           ; $4b7b: $00
    add sp, $0f                                   ; $4b7c: $e8 $0f
    ret z                                         ; $4b7e: $c8

    ld h, a                                       ; $4b7f: $67
    db $e4                                        ; $4b80: $e4
    ld h, e                                       ; $4b81: $63
    db $e3                                        ; $4b82: $e3
    jr c, jr_0cc_4b89                             ; $4b83: $38 $04

    ld hl, sp+$3c                                 ; $4b85: $f8 $3c
    db $e4                                        ; $4b87: $e4
    ld a, [hl]                                    ; $4b88: $7e

jr_0cc_4b89:
    add d                                         ; $4b89: $82
    halt                                          ; $4b8a: $76
    jr z, @+$01                                   ; $4b8b: $28 $ff

    ldh [rNR14], a                                ; $4b8d: $e0 $14
    rra                                           ; $4b8f: $1f
    ld de, $a30e                                  ; $4b90: $11 $0e $a3
    ld bc, $9639                                  ; $4b93: $01 $39 $96
    ld bc, $0007                                  ; $4b96: $01 $07 $00
    ld b, l                                       ; $4b99: $45
    ld b, [hl]                                    ; $4b9a: $46
    sbc h                                         ; $4b9b: $9c
    ld bc, $0009                                  ; $4b9c: $01 $09 $00
    add hl, de                                    ; $4b9f: $19
    xor [hl]                                      ; $4ba0: $ae
    ld bc, $d2dc                                  ; $4ba1: $01 $dc $d2
    nop                                           ; $4ba4: $00
    ret nz                                        ; $4ba5: $c0

    and d                                         ; $4ba6: $a2
    jr jr_0cc_4c23                                ; $4ba7: $18 $7a

    ld [$00ff], sp                                ; $4ba9: $08 $ff $00
    and b                                         ; $4bac: $a0
    ld e, a                                       ; $4bad: $5f

jr_0cc_4bae:
    jr c, jr_0cc_4b77                             ; $4bae: $38 $c7

    nop                                           ; $4bb0: $00
    ld hl, sp+$07                                 ; $4bb1: $f8 $07
    db $f4                                        ; $4bb3: $f4
    dec bc                                        ; $4bb4: $0b

jr_0cc_4bb5:
    inc [hl]                                      ; $4bb5: $34
    rr h                                          ; $4bb6: $cb $1c
    db $e3                                        ; $4bb8: $e3
    jr nc, jr_0cc_4b53                            ; $4bb9: $30 $98

    ld h, a                                       ; $4bbb: $67
    halt                                          ; $4bbc: $76
    jr jr_0cc_4bb5                                ; $4bbd: $18 $f6

    ld [$03ff], sp                                ; $4bbf: $08 $ff $03
    db $fc                                        ; $4bc2: $fc
    inc b                                         ; $4bc3: $04
    ld [$18f8], sp                                ; $4bc4: $08 $f8 $18
    ldh [$e0], a                                  ; $4bc7: $e0 $e0
    ld c, a                                       ; $4bc9: $4f
    jr z, @-$7e                                   ; $4bca: $28 $80

    rst $38                                       ; $4bcc: $ff
    ldh [rP1], a                                  ; $4bcd: $e0 $00
    rst $38                                       ; $4bcf: $ff
    cp b                                          ; $4bd0: $b8
    cp a                                          ; $4bd1: $bf
    rla                                           ; $4bd2: $17
    rla                                           ; $4bd3: $17
    inc bc                                        ; $4bd4: $03
    db $fc                                        ; $4bd5: $fc
    add a                                         ; $4bd6: $87
    ld bc, $1ff8                                  ; $4bd7: $01 $f8 $1f
    ldh [$3f], a                                  ; $4bda: $e0 $3f
    ret nz                                        ; $4bdc: $c0

    ld a, a                                       ; $4bdd: $7f
    add b                                         ; $4bde: $80
    ld [bc], a                                    ; $4bdf: $02
    ld [$ff40], sp                                ; $4be0: $08 $40 $ff
    ld c, $12                                     ; $4be3: $0e $12
    and b                                         ; $4be5: $a0
    and b                                         ; $4be6: $a0
    ret nc                                        ; $4be7: $d0

    ld d, b                                       ; $4be8: $50
    db $fd                                        ; $4be9: $fd
    dec a                                         ; $4bea: $3d
    nop                                           ; $4beb: $00
    cp $02                                        ; $4bec: $fe $02
    rst $38                                       ; $4bee: $ff
    ld bc, $01ff                                  ; $4bef: $01 $ff $01
    ld hl, sp+$08                                 ; $4bf2: $f8 $08
    nop                                           ; $4bf4: $00
    ldh a, [$30]                                  ; $4bf5: $f0 $30
    ret nz                                        ; $4bf7: $c0

    ld b, b                                       ; $4bf8: $40
    call nz, $1ec4                                ; $4bf9: $c4 $c4 $1e
    ld e, $10                                     ; $4bfc: $1e $10
    ld hl, $403f                                  ; $4bfe: $21 $3f $40
    ld hl, $1f00                                  ; $4c01: $21 $00 $1f
    ld e, $ff                                     ; $4c04: $1e $ff
    ldh [rSC], a                                  ; $4c06: $e0 $02
    ccf                                           ; $4c08: $3f
    jr nz, @+$81                                  ; $4c09: $20 $7f

    ld b, b                                       ; $4c0b: $40
    ld a, a                                       ; $4c0c: $7f
    ld b, b                                       ; $4c0d: $40
    ld b, $00                                     ; $4c0e: $06 $00
    ld h, b                                       ; $4c10: $60
    nop                                           ; $4c11: $00
    ld e, a                                       ; $4c12: $5f
    ld d, b                                       ; $4c13: $50
    push de                                       ; $4c14: $d5
    ld a, [hl+]                                   ; $4c15: $2a
    cp d                                          ; $4c16: $ba
    ld b, l                                       ; $4c17: $45
    push de                                       ; $4c18: $d5
    ld a, [hl+]                                   ; $4c19: $2a
    ld hl, $946b                                  ; $4c1a: $21 $6b $94
    ldh a, [rNR23]                                ; $4c1d: $f0 $18
    xor e                                         ; $4c1f: $ab
    ld d, h                                       ; $4c20: $54
    adc a                                         ; $4c21: $8f
    ld [hl], b                                    ; $4c22: $70

jr_0cc_4c23:
    ld e, $0a                                     ; $4c23: $1e $0a
    ld [bc], a                                    ; $4c25: $02
    di                                            ; $4c26: $f3
    inc c                                         ; $4c27: $0c
    inc sp                                        ; $4c28: $33
    call z, $c03f                                 ; $4c29: $cc $3f $c0
    ld a, [hl+]                                   ; $4c2c: $2a
    ld a, [bc]                                    ; $4c2d: $0a
    inc d                                         ; $4c2e: $14
    ld bc, $aaff                                  ; $4c2f: $01 $ff $aa
    rst $38                                       ; $4c32: $ff
    ld d, l                                       ; $4c33: $55
    cp $21                                        ; $4c34: $fe $21
    cp $34                                        ; $4c36: $fe $34

jr_0cc_4c38:
    ld a, [bc]                                    ; $4c38: $0a
    ret nc                                        ; $4c39: $d0

    ei                                            ; $4c3a: $fb
    add hl, bc                                    ; $4c3b: $09
    ld [hl], l                                    ; $4c3c: $75
    ld [bc], a                                    ; $4c3d: $02
    ret nz                                        ; $4c3e: $c0

    jp Jump_000_0001                              ; $4c3f: $c3 $01 $00


    ldh [$e0], a                                  ; $4c42: $e0 $e0
    ldh [rTIMA], a                                ; $4c44: $e0 $05
    jr nz, jr_0cc_4c38                            ; $4c46: $20 $f0

    db $10                                        ; $4c48: $10
    ldh [rNR41], a                                ; $4c49: $e0 $20
    pop bc                                        ; $4c4b: $c1
    ld d, c                                       ; $4c4c: $51
    rlca                                          ; $4c4d: $07
    ld [hl], c                                    ; $4c4e: $71
    ld [bc], a                                    ; $4c4f: $02
    add c                                         ; $4c50: $81
    sub b                                         ; $4c51: $90
    ld [de], a                                    ; $4c52: $12
    jr nc, @+$32                                  ; $4c53: $30 $30

    ld c, b                                       ; $4c55: $48
    ld a, h                                       ; $4c56: $7c
    add d                                         ; $4c57: $82
    cp $7f                                        ; $4c58: $fe $7f
    nop                                           ; $4c5a: $00
    ld h, b                                       ; $4c5b: $60
    rst $38                                       ; $4c5c: $ff
    add [hl]                                      ; $4c5d: $86
    ld a, [bc]                                    ; $4c5e: $0a
    ld [bc], a                                    ; $4c5f: $02
    ld [$021d], sp                                ; $4c60: $08 $1d $02
    ld c, $01                                     ; $4c63: $0e $01
    rra                                           ; $4c65: $1f
    add b                                         ; $4c66: $80
    sub d                                         ; $4c67: $92
    ld [bc], a                                    ; $4c68: $02
    ei                                            ; $4c69: $fb
    nop                                           ; $4c6a: $00
    ld hl, sp+$07                                 ; $4c6b: $f8 $07
    ld a, [$f805]                                 ; $4c6d: $fa $05 $f8
    db $10                                        ; $4c70: $10
    rlca                                          ; $4c71: $07
    db $fd                                        ; $4c72: $fd
    ld [bc], a                                    ; $4c73: $02
    ld hl, sp+$08                                 ; $4c74: $f8 $08
    cp $01                                        ; $4c76: $fe $01
    ccf                                           ; $4c78: $3f
    jr nz, jr_0cc_4c7e                            ; $4c79: $20 $03

    rra                                           ; $4c7b: $1f
    ld a, [de]                                    ; $4c7c: $1a
    dec c                                         ; $4c7d: $0d

jr_0cc_4c7e:
    dec c                                         ; $4c7e: $0d
    inc b                                         ; $4c7f: $04
    inc b                                         ; $4c80: $04
    add hl, bc                                    ; $4c81: $09
    ld a, [hl+]                                   ; $4c82: $2a
    and [hl]                                      ; $4c83: $a6
    ld hl, $e104                                  ; $4c84: $21 $04 $e1
    ld a, $3e                                     ; $4c87: $3e $3e
    ld [$db08], sp                                ; $4c89: $08 $08 $db
    ld a, [bc]                                    ; $4c8c: $0a
    cp $01                                        ; $4c8d: $fe $01
    ld a, [hl+]                                   ; $4c8f: $2a
    cp $01                                        ; $4c90: $fe $01
    ld [hl+], a                                   ; $4c92: $22
    ld bc, $8401                                  ; $4c93: $01 $01 $84
    ld [bc], a                                    ; $4c96: $02
    ld b, $00                                     ; $4c97: $06 $00
    ld bc, $84a0                                  ; $4c99: $01 $a0 $84
    ld a, [hl]                                    ; $4c9c: $7e
    ld a, [de]                                    ; $4c9d: $1a
    ld h, b                                       ; $4c9e: $60
    ld a, a                                       ; $4c9f: $7f
    ld e, e                                       ; $4ca0: $5b
    ld e, a                                       ; $4ca1: $5f
    inc [hl]                                      ; $4ca2: $34
    jr @+$43                                      ; $4ca3: $18 $41

    cp $00                                        ; $4ca5: $fe $00
    rlca                                          ; $4ca7: $07
    ld hl, sp-$71                                 ; $4ca8: $f8 $8f
    ldh a, [$3f]                                  ; $4caa: $f0 $3f
    ret nz                                        ; $4cac: $c0

    ccf                                           ; $4cad: $3f
    ld b, b                                       ; $4cae: $40
    ld b, b                                       ; $4caf: $40
    ccf                                           ; $4cb0: $3f
    xor $02                                       ; $4cb1: $ee $02
    ld a, a                                       ; $4cb3: $7f
    nop                                           ; $4cb4: $00
    ldh [rP1], a                                  ; $4cb5: $e0 $00
    ret nc                                        ; $4cb7: $d0

    nop                                           ; $4cb8: $00
    ld b, h                                       ; $4cb9: $44
    add sp, $06                                   ; $4cba: $e8 $06
    nop                                           ; $4cbc: $00
    ld hl, sp+$00                                 ; $4cbd: $f8 $00

Jump_0cc_4cbf:
    cp $02                                        ; $4cbf: $fe $02
    nop                                           ; $4cc1: $00
    rst $38                                       ; $4cc2: $ff
    nop                                           ; $4cc3: $00
    nop                                           ; $4cc4: $00
    or $36                                        ; $4cc5: $f6 $36
    ret nz                                        ; $4cc7: $c0

    ld b, b                                       ; $4cc8: $40
    add b                                         ; $4cc9: $80
    add b                                         ; $4cca: $80
    inc c                                         ; $4ccb: $0c
    inc c                                         ; $4ccc: $0c
    jr nz, jr_0cc_4d0d                            ; $4ccd: $20 $3e

    ld a, $00                                     ; $4ccf: $3e $00
    add hl, de                                    ; $4cd1: $19
    ld bc, $0301                                  ; $4cd2: $01 $01 $03
    ld [bc], a                                    ; $4cd5: $02
    rlca                                          ; $4cd6: $07
    ld b, l                                       ; $4cd7: $45
    inc b                                         ; $4cd8: $04
    inc e                                         ; $4cd9: $1c
    inc bc                                        ; $4cda: $03
    ld [$080f], sp                                ; $4cdb: $08 $0f $08
    ld [$0600], sp                                ; $4cde: $08 $00 $06
    ccf                                           ; $4ce1: $3f
    dec bc                                        ; $4ce2: $0b
    ld d, c                                       ; $4ce3: $51
    add b                                         ; $4ce4: $80
    ld [hl], $00                                  ; $4ce5: $36 $00
    ldh [$94], a                                  ; $4ce7: $e0 $94
    ld [bc], a                                    ; $4ce9: $02
    jp hl                                         ; $4cea: $e9


    ld bc, $34fc                                  ; $4ceb: $01 $fc $34
    inc bc                                        ; $4cee: $03
    inc d                                         ; $4cef: $14
    ld a, [hl-]                                   ; $4cf0: $3a
    nop                                           ; $4cf1: $00
    ld a, $a4                                     ; $4cf2: $3e $a4
    ld de, $5c47                                  ; $4cf4: $11 $47 $5c
    inc bc                                        ; $4cf7: $03
    inc e                                         ; $4cf8: $1c
    nop                                           ; $4cf9: $00
    ldh a, [$03]                                  ; $4cfa: $f0 $03
    rrca                                          ; $4cfc: $0f
    inc bc                                        ; $4cfd: $03
    inc a                                         ; $4cfe: $3c
    nop                                           ; $4cff: $00
    rst $38                                       ; $4d00: $ff
    ld [bc], a                                    ; $4d01: $02
    ld e, b                                       ; $4d02: $58
    rrca                                          ; $4d03: $0f
    ld h, b                                       ; $4d04: $60
    ld de, $0200                                  ; $4d05: $11 $00 $02
    ld e, b                                       ; $4d08: $58
    rst $20                                       ; $4d09: $e7
    rst $20                                       ; $4d0a: $e7
    nop                                           ; $4d0b: $00
    add l                                         ; $4d0c: $85

jr_0cc_4d0d:
    add l                                         ; $4d0d: $85
    add a                                         ; $4d0e: $87
    add a                                         ; $4d0f: $87
    jp $93c3                                      ; $4d10: $c3 $c3 $93


    sub e                                         ; $4d13: $93
    ld [$9f9f], sp                                ; $4d14: $08 $9f $9f
    rst $30                                       ; $4d17: $f7
    rst $30                                       ; $4d18: $f7
    ld e, $18                                     ; $4d19: $1e $18
    rst $18                                       ; $4d1b: $df
    rst $18                                       ; $4d1c: $df
    db $fc                                        ; $4d1d: $fc
    nop                                           ; $4d1e: $00
    db $fc                                        ; $4d1f: $fc
    adc [hl]                                      ; $4d20: $8e
    adc [hl]                                      ; $4d21: $8e
    daa                                           ; $4d22: $27
    daa                                           ; $4d23: $27
    rst $08                                       ; $4d24: $cf
    rst $08                                       ; $4d25: $cf
    add [hl]                                      ; $4d26: $86
    nop                                           ; $4d27: $00
    add [hl]                                      ; $4d28: $86
    ld sp, hl                                     ; $4d29: $f9
    ld sp, hl                                     ; $4d2a: $f9
    db $ec                                        ; $4d2b: $ec
    db $ec                                        ; $4d2c: $ec
    sub c                                         ; $4d2d: $91
    sub c                                         ; $4d2e: $91
    ld b, h                                       ; $4d2f: $44
    nop                                           ; $4d30: $00
    ld b, h                                       ; $4d31: $44
    ld sp, $fc31                                  ; $4d32: $31 $31 $fc
    db $fc                                        ; $4d35: $fc
    inc c                                         ; $4d36: $0c
    inc c                                         ; $4d37: $0c
    ld c, b                                       ; $4d38: $48
    nop                                           ; $4d39: $00
    ld c, b                                       ; $4d3a: $48
    rst $20                                       ; $4d3b: $e7
    rst $20                                       ; $4d3c: $e7
    db $e3                                        ; $4d3d: $e3
    db $e3                                        ; $4d3e: $e3
    pop af                                        ; $4d3f: $f1
    pop af                                        ; $4d40: $f1
    ld sp, hl                                     ; $4d41: $f9
    nop                                           ; $4d42: $00
    ld sp, hl                                     ; $4d43: $f9
    pop af                                        ; $4d44: $f1
    pop af                                        ; $4d45: $f1
    ld a, c                                       ; $4d46: $79
    ld a, c                                       ; $4d47: $79
    scf                                           ; $4d48: $37
    scf                                           ; $4d49: $37
    ld a, a                                       ; $4d4a: $7f
    nop                                           ; $4d4b: $00
    ld a, a                                       ; $4d4c: $7f
    or $f6                                        ; $4d4d: $f6 $f6
    db $ed                                        ; $4d4f: $ed
    db $ed                                        ; $4d50: $ed
    db $fc                                        ; $4d51: $fc
    db $fc                                        ; $4d52: $fc
    cp a                                          ; $4d53: $bf
    nop                                           ; $4d54: $00
    cp a                                          ; $4d55: $bf
    or $f6                                        ; $4d56: $f6 $f6
    ld a, l                                       ; $4d58: $7d
    ld a, l                                       ; $4d59: $7d
    ld d, a                                       ; $4d5a: $57
    ld d, a                                       ; $4d5b: $57
    dec b                                         ; $4d5c: $05
    nop                                           ; $4d5d: $00
    dec b                                         ; $4d5e: $05
    db $fc                                        ; $4d5f: $fc
    db $fc                                        ; $4d60: $fc
    cp [hl]                                       ; $4d61: $be
    cp [hl]                                       ; $4d62: $be
    dec e                                         ; $4d63: $1d
    dec e                                         ; $4d64: $1d
    adc h                                         ; $4d65: $8c
    nop                                           ; $4d66: $00
    adc h                                         ; $4d67: $8c
    inc l                                         ; $4d68: $2c
    inc l                                         ; $4d69: $2c
    adc d                                         ; $4d6a: $8a
    adc d                                         ; $4d6b: $8a
    add b                                         ; $4d6c: $80
    add b                                         ; $4d6d: $80
    nop                                           ; $4d6e: $00
    nop                                           ; $4d6f: $00
    nop                                           ; $4d70: $00
    add h                                         ; $4d71: $84
    add h                                         ; $4d72: $84
    ld hl, $0221                                  ; $4d73: $21 $21 $02
    ld [bc], a                                    ; $4d76: $02
    ld b, b                                       ; $4d77: $40
    nop                                           ; $4d78: $00
    ld b, b                                       ; $4d79: $40
    ld [de], a                                    ; $4d7a: $12
    nop                                           ; $4d7b: $00
    nop                                           ; $4d7c: $00
    nop                                           ; $4d7d: $00
    ld c, b                                       ; $4d7e: $48
    nop                                           ; $4d7f: $00
    call c, RST_00                                ; $4d80: $dc $00 $00
    ld bc, $0001                                  ; $4d83: $01 $01 $00
    nop                                           ; $4d86: $00
    ld b, d                                       ; $4d87: $42
    nop                                           ; $4d88: $00
    ld a, [bc]                                    ; $4d89: $0a
    nop                                           ; $4d8a: $00
    nop                                           ; $4d8b: $00
    jr z, jr_0cc_4d8e                             ; $4d8c: $28 $00

jr_0cc_4d8e:
    dec e                                         ; $4d8e: $1d
    nop                                           ; $4d8f: $00
    adc h                                         ; $4d90: $8c
    nop                                           ; $4d91: $00
    cp a                                          ; $4d92: $bf
    add h                                         ; $4d93: $84
    and c                                         ; $4d94: $a1
    nop                                           ; $4d95: $00
    ld h, l                                       ; $4d96: $65
    ld h, l                                       ; $4d97: $65
    ld l, h                                       ; $4d98: $6c
    ld l, h                                       ; $4d99: $6c
    dec e                                         ; $4d9a: $1d
    nop                                           ; $4d9b: $00
    nop                                           ; $4d9c: $00
    adc b                                         ; $4d9d: $88
    add b                                         ; $4d9e: $80
    stop                                          ; $4d9f: $10 $00
    add b                                         ; $4da1: $80
    nop                                           ; $4da2: $00
    dec hl                                        ; $4da3: $2b
    dec hl                                        ; $4da4: $2b
    pop bc                                        ; $4da5: $c1
    pop bc                                        ; $4da6: $c1
    ret nc                                        ; $4da7: $d0

    nop                                           ; $4da8: $00
    ret nc                                        ; $4da9: $d0

    add l                                         ; $4daa: $85
    add c                                         ; $4dab: $81
    call nz, $a0c0                                ; $4dac: $c4 $c0 $a0
    add b                                         ; $4daf: $80
    inc c                                         ; $4db0: $0c
    jr z, jr_0cc_4db3                             ; $4db1: $28 $00

jr_0cc_4db3:
    sub e                                         ; $4db3: $93
    ld b, d                                       ; $4db4: $42
    nop                                           ; $4db5: $00
    ld c, b                                       ; $4db6: $48
    ld a, [hl-]                                   ; $4db7: $3a
    nop                                           ; $4db8: $00
    ld c, c                                       ; $4db9: $49
    nop                                           ; $4dba: $00
    adc l                                         ; $4dbb: $8d
    nop                                           ; $4dbc: $00
    nop                                           ; $4dbd: $00
    rst $08                                       ; $4dbe: $cf
    nop                                           ; $4dbf: $00
    ld a, d                                       ; $4dc0: $7a
    add l                                         ; $4dc1: $85
    or a                                          ; $4dc2: $b7
    ld c, b                                       ; $4dc3: $48
    ccf                                           ; $4dc4: $3f
    add b                                         ; $4dc5: $80
    inc [hl]                                      ; $4dc6: $34
    nop                                           ; $4dc7: $00
    xor l                                         ; $4dc8: $ad
    ld [de], a                                    ; $4dc9: $12
    db $fc                                        ; $4dca: $fc
    inc bc                                        ; $4dcb: $03
    rst $30                                       ; $4dcc: $f7
    ld [$0053], sp                                ; $4dcd: $08 $53 $00
    xor h                                         ; $4dd0: $ac
    or $09                                        ; $4dd1: $f6 $09
    inc sp                                        ; $4dd3: $33
    call z, Call_000_00ff                         ; $4dd4: $cc $ff $00
    rst $28                                       ; $4dd7: $ef
    nop                                           ; $4dd8: $00
    db $10                                        ; $4dd9: $10
    ld a, a                                       ; $4dda: $7f
    add b                                         ; $4ddb: $80
    ei                                            ; $4ddc: $fb
    inc b                                         ; $4ddd: $04
    dec [hl]                                      ; $4dde: $35
    jp z, Jump_000_00a3                           ; $4ddf: $ca $a3 $00

    ld e, h                                       ; $4de2: $5c
    ld sp, $85ce                                  ; $4de3: $31 $ce $85
    ld a, d                                       ; $4de6: $7a
    ld b, b                                       ; $4de7: $40
    nop                                           ; $4de8: $00
    ld b, h                                       ; $4de9: $44
    nop                                           ; $4dea: $00
    nop                                           ; $4deb: $00
    sub b                                         ; $4dec: $90
    nop                                           ; $4ded: $00
    jp nz, $5000                                  ; $4dee: $c2 $00 $50

    add b                                         ; $4df1: $80
    push af                                       ; $4df2: $f5
    nop                                           ; $4df3: $00
    nop                                           ; $4df4: $00
    ld e, h                                       ; $4df5: $5c
    and b                                         ; $4df6: $a0
    rst $08                                       ; $4df7: $cf
    jr nc, jr_0cc_4dfc                            ; $4df8: $30 $02

    nop                                           ; $4dfa: $00
    daa                                           ; $4dfb: $27

jr_0cc_4dfc:
    nop                                           ; $4dfc: $00
    nop                                           ; $4dfd: $00
    inc bc                                        ; $4dfe: $03
    nop                                           ; $4dff: $00
    ld d, [hl]                                    ; $4e00: $56
    nop                                           ; $4e01: $00
    push af                                       ; $4e02: $f5
    ld [bc], a                                    ; $4e03: $02
    ld a, a                                       ; $4e04: $7f
    nop                                           ; $4e05: $00
    nop                                           ; $4e06: $00
    ld a, c                                       ; $4e07: $79
    ld b, $ed                                     ; $4e08: $06 $ed
    ld [de], a                                    ; $4e0a: $12
    add c                                         ; $4e0b: $81
    add c                                         ; $4e0c: $81
    ld c, b                                       ; $4e0d: $48
    nop                                           ; $4e0e: $00
    nop                                           ; $4e0f: $00
    inc d                                         ; $4e10: $14
    nop                                           ; $4e11: $00
    or c                                          ; $4e12: $b1
    nop                                           ; $4e13: $00
    ld d, h                                       ; $4e14: $54
    nop                                           ; $4e15: $00
    ld e, b                                       ; $4e16: $58
    nop                                           ; $4e17: $00
    nop                                           ; $4e18: $00
    db $eb                                        ; $4e19: $eb
    nop                                           ; $4e1a: $00
    jr c, jr_0cc_4e1d                             ; $4e1b: $38 $00

jr_0cc_4e1d:
    ei                                            ; $4e1d: $fb
    inc b                                         ; $4e1e: $04
    ei                                            ; $4e1f: $fb
    nop                                           ; $4e20: $00
    inc b                                         ; $4e21: $04
    ld sp, hl                                     ; $4e22: $f9
    ld b, $d3                                     ; $4e23: $06 $d3
    inc l                                         ; $4e25: $2c
    add e                                         ; $4e26: $83
    ld a, h                                       ; $4e27: $7c
    rlca                                          ; $4e28: $07
    nop                                           ; $4e29: $00
    ld hl, sp+$07                                 ; $4e2a: $f8 $07
    ld hl, sp+$03                                 ; $4e2c: $f8 $03
    db $fc                                        ; $4e2e: $fc
    ld sp, $31ce                                  ; $4e2f: $31 $ce $31
    nop                                           ; $4e32: $00
    adc $80                                       ; $4e33: $ce $80
    ld a, a                                       ; $4e35: $7f
    jp $c33c                                      ; $4e36: $c3 $3c $c3


    inc a                                         ; $4e39: $3c
    db $e3                                        ; $4e3a: $e3
    nop                                           ; $4e3b: $00
    inc e                                         ; $4e3c: $1c
    ldh [$1f], a                                  ; $4e3d: $e0 $1f
    ldh [$1f], a                                  ; $4e3f: $e0 $1f
    add c                                         ; $4e41: $81
    ld a, [hl]                                    ; $4e42: $7e
    add e                                         ; $4e43: $83
    nop                                           ; $4e44: $00

jr_0cc_4e45:
    ld a, h                                       ; $4e45: $7c
    ret                                           ; $4e46: $c9


    ld [hl], $c1                                  ; $4e47: $36 $c1
    ld a, $c0                                     ; $4e49: $3e $c0
    ccf                                           ; $4e4b: $3f
    ldh a, [rDIV]                                 ; $4e4c: $f0 $04
    rrca                                          ; $4e4e: $0f
    ld hl, sp+$07                                 ; $4e4f: $f8 $07
    ldh a, [rIF]                                  ; $4e51: $f0 $0f
    ld e, a                                       ; $4e53: $5f
    add hl, de                                    ; $4e54: $19
    sbc a                                         ; $4e55: $9f
    ld h, b                                       ; $4e56: $60

jr_0cc_4e57:
    ld [bc], a                                    ; $4e57: $02
    rra                                           ; $4e58: $1f
    ldh [rTMA], a                                 ; $4e59: $e0 $06
    ld sp, hl                                     ; $4e5b: $f9
    jr jr_0cc_4e45                                ; $4e5c: $18 $e7

    ld h, b                                       ; $4e5e: $60
    add hl, bc                                    ; $4e5f: $09
    adc e                                         ; $4e60: $8b
    nop                                           ; $4e61: $00
    ld [hl], h                                    ; $4e62: $74
    adc e                                         ; $4e63: $8b
    ld [hl], h                                    ; $4e64: $74
    pop bc                                        ; $4e65: $c1
    ld a, $cb                                     ; $4e66: $3e $cb
    inc [hl]                                      ; $4e68: $34
    inc bc                                        ; $4e69: $03
    ld [bc], a                                    ; $4e6a: $02
    db $fc                                        ; $4e6b: $fc
    inc bc                                        ; $4e6c: $03
    db $fc                                        ; $4e6d: $fc
    jr jr_0cc_4e57                                ; $4e6e: $18 $e7

    dec bc                                        ; $4e70: $0b
    ld [hl], b                                    ; $4e71: $70
    nop                                           ; $4e72: $00
    adc l                                         ; $4e73: $8d
    nop                                           ; $4e74: $00
    ld [bc], a                                    ; $4e75: $02
    rst $38                                       ; $4e76: $ff
    nop                                           ; $4e77: $00
    ld l, $d1                                     ; $4e78: $2e $d1
    and $19                                       ; $4e7a: $e6 $19
    ld a, h                                       ; $4e7c: $7c
    db $10                                        ; $4e7d: $10
    add e                                         ; $4e7e: $83
    xor $11                                       ; $4e7f: $ee $11
    adc a                                         ; $4e81: $8f
    add hl, bc                                    ; $4e82: $09
    xor $01                                       ; $4e83: $ee $01
    dec a                                         ; $4e85: $3d
    jp nz, $f600                                  ; $4e86: $c2 $00 $f6

    add hl, bc                                    ; $4e89: $09
    cp a                                          ; $4e8a: $bf
    ld b, b                                       ; $4e8b: $40
    inc l                                         ; $4e8c: $2c
    db $d3                                        ; $4e8d: $d3
    ld a, b                                       ; $4e8e: $78
    add a                                         ; $4e8f: $87
    inc b                                         ; $4e90: $04
    ld a, [bc]                                    ; $4e91: $0a
    nop                                           ; $4e92: $00
    sbc b                                         ; $4e93: $98
    nop                                           ; $4e94: $00
    db $fc                                        ; $4e95: $fc
    and l                                         ; $4e96: $a5
    ld de, $20df                                  ; $4e97: $11 $df $20
    nop                                           ; $4e9a: $00
    rst $38                                       ; $4e9b: $ff
    nop                                           ; $4e9c: $00
    adc a                                         ; $4e9d: $8f
    ld [hl], b                                    ; $4e9e: $70
    ld c, h                                       ; $4e9f: $4c
    nop                                           ; $4ea0: $00
    ret nz                                        ; $4ea1: $c0

    nop                                           ; $4ea2: $00
    nop                                           ; $4ea3: $00
    ld h, d                                       ; $4ea4: $62
    add b                                         ; $4ea5: $80
    di                                            ; $4ea6: $f3
    nop                                           ; $4ea7: $00
    ccf                                           ; $4ea8: $3f
    ret nz                                        ; $4ea9: $c0

    rst $38                                       ; $4eaa: $ff
    nop                                           ; $4eab: $00
    nop                                           ; $4eac: $00
    reti                                          ; $4ead: $d9


    ld h, $cf                                     ; $4eae: $26 $cf
    jr nc, @+$7a                                  ; $4eb0: $30 $78

    add a                                         ; $4eb2: $87
    inc a                                         ; $4eb3: $3c
    jp $1800                                      ; $4eb4: $c3 $00 $18


    rst $20                                       ; $4eb7: $e7
    jr nz, @-$1f                                  ; $4eb8: $20 $df

    ld b, $f9                                     ; $4eba: $06 $f9
    rrca                                          ; $4ebc: $0f
    ldh a, [rP1]                                  ; $4ebd: $f0 $00
    ld e, $e1                                     ; $4ebf: $1e $e1
    inc c                                         ; $4ec1: $0c
    di                                            ; $4ec2: $f3
    sub l                                         ; $4ec3: $95
    nop                                           ; $4ec4: $00
    ld e, l                                       ; $4ec5: $5d
    nop                                           ; $4ec6: $00
    ld b, b                                       ; $4ec7: $40
    cp $e4                                        ; $4ec8: $fe $e4
    nop                                           ; $4eca: $00
    rst $28                                       ; $4ecb: $ef
    db $10                                        ; $4ecc: $10
    ld a, d                                       ; $4ecd: $7a
    add l                                         ; $4ece: $85
    ccf                                           ; $4ecf: $3f
    ret nz                                        ; $4ed0: $c0

    dec c                                         ; $4ed1: $0d
    ret                                           ; $4ed2: $c9


    ld [hl], $88                                  ; $4ed3: $36 $88
    adc b                                         ; $4ed5: $88
    ld b, c                                       ; $4ed6: $41
    ld bc, $2002                                  ; $4ed7: $01 $02 $20
    ld bc, $0002                                  ; $4eda: $01 $02 $00
    nop                                           ; $4edd: $00
    ld l, b                                       ; $4ede: $68
    ld h, b                                       ; $4edf: $60
    inc d                                         ; $4ee0: $14
    nop                                           ; $4ee1: $00
    ld b, b                                       ; $4ee2: $40
    nop                                           ; $4ee3: $00
    jr nz, jr_0cc_4ee6                            ; $4ee4: $20 $00

jr_0cc_4ee6:
    db $10                                        ; $4ee6: $10
    add hl, sp                                    ; $4ee7: $39
    nop                                           ; $4ee8: $00
    ld e, [hl]                                    ; $4ee9: $5e
    ei                                            ; $4eea: $fb
    ld de, $ff08                                  ; $4eeb: $11 $08 $ff
    inc e                                         ; $4eee: $1c
    rst $38                                       ; $4eef: $ff
    ld bc, $ff48                                  ; $4ef0: $01 $48 $ff
    ldh a, [rIE]                                  ; $4ef3: $f0 $ff
    ld a, b                                       ; $4ef5: $78
    rst $38                                       ; $4ef6: $ff
    sub b                                         ; $4ef7: $90
    ld a, [bc]                                    ; $4ef8: $0a
    ld [bc], a                                    ; $4ef9: $02
    nop                                           ; $4efa: $00
    ld b, b                                       ; $4efb: $40
    rst $38                                       ; $4efc: $ff
    ld h, l                                       ; $4efd: $65
    sbc d                                         ; $4efe: $9a
    ld bc, $0dfe                                  ; $4eff: $01 $fe $0d
    ld a, [c]                                     ; $4f02: $f2

jr_0cc_4f03:
    ld [$7f80], sp                                ; $4f03: $08 $80 $7f
    and d                                         ; $4f06: $a2
    ld e, l                                       ; $4f07: $5d
    ld a, [de]                                    ; $4f08: $1a
    ld a, [de]                                    ; $4f09: $1a
    ldh a, [rIF]                                  ; $4f0a: $f0 $0f
    pop af                                        ; $4f0c: $f1
    nop                                           ; $4f0d: $00
    ld c, $e1                                     ; $4f0e: $0e $e1
    ld e, $e1                                     ; $4f10: $1e $e1
    ld e, $c0                                     ; $4f12: $1e $c0
    ccf                                           ; $4f14: $3f
    nop                                           ; $4f15: $00
    ld c, b                                       ; $4f16: $48
    rst $38                                       ; $4f17: $ff
    inc l                                         ; $4f18: $2c
    ld [$0ff0], sp                                ; $4f19: $08 $f0 $0f
    or a                                          ; $4f1c: $b7
    nop                                           ; $4f1d: $00
    inc bc                                        ; $4f1e: $03
    db $ec                                        ; $4f1f: $ec
    inc de                                        ; $4f20: $13
    jr z, jr_0cc_4f03                             ; $4f21: $28 $e0

    rra                                           ; $4f23: $1f
    ld a, [hl-]                                   ; $4f24: $3a
    ld a, [bc]                                    ; $4f25: $0a
    inc h                                         ; $4f26: $24
    jr nc, jr_0cc_4f2b                            ; $4f27: $30 $02

    adc $31                                       ; $4f29: $ce $31

jr_0cc_4f2b:
    pop bc                                        ; $4f2b: $c1
    ld bc, $f13e                                  ; $4f2c: $01 $3e $f1
    ld c, $70                                     ; $4f2f: $0e $70
    adc a                                         ; $4f31: $8f
    ld b, [hl]                                    ; $4f32: $46
    cp c                                          ; $4f33: $b9
    ld [de], a                                    ; $4f34: $12
    add hl, bc                                    ; $4f35: $09
    nop                                           ; $4f36: $00
    jr c, @-$37                                   ; $4f37: $38 $c7

    inc a                                         ; $4f39: $3c
    jp $e31c                                      ; $4f3a: $c3 $1c $e3


    sbc b                                         ; $4f3d: $98
    ld h, a                                       ; $4f3e: $67
    nop                                           ; $4f3f: $00
    inc d                                         ; $4f40: $14
    db $eb                                        ; $4f41: $eb
    nop                                           ; $4f42: $00
    rst $38                                       ; $4f43: $ff
    add e                                         ; $4f44: $83
    ld a, h                                       ; $4f45: $7c
    add d                                         ; $4f46: $82
    ld a, l                                       ; $4f47: $7d
    add b                                         ; $4f48: $80
    adc d                                         ; $4f49: $8a
    ld [$807f], sp                                ; $4f4a: $08 $7f $80
    ld a, a                                       ; $4f4d: $7f
    add b                                         ; $4f4e: $80
    rla                                           ; $4f4f: $17
    add sp, $07                                   ; $4f50: $e8 $07
    ld bc, $0ff8                                  ; $4f52: $01 $f8 $0f
    ldh a, [rNR31]                                ; $4f55: $f0 $1b
    db $e4                                        ; $4f57: $e4
    ldh [$1f], a                                  ; $4f58: $e0 $1f
    ld c, d                                       ; $4f5a: $4a
    ld [$0c02], sp                                ; $4f5b: $08 $02 $0c
    di                                            ; $4f5e: $f3

jr_0cc_4f5f:
    rra                                           ; $4f5f: $1f
    ldh [$3e], a                                  ; $4f60: $e0 $3e
    pop bc                                        ; $4f62: $c1
    ld a, [hl+]                                   ; $4f63: $2a
    ld [$007c], sp                                ; $4f64: $08 $7c $00
    add e                                         ; $4f67: $83
    inc a                                         ; $4f68: $3c
    jp Jump_0cc_659a                              ; $4f69: $c3 $9a $65


    ld b, b                                       ; $4f6c: $40
    cp a                                          ; $4f6d: $bf
    ld h, d                                       ; $4f6e: $62
    nop                                           ; $4f6f: $00
    sbc l                                         ; $4f70: $9d
    inc b                                         ; $4f71: $04
    ei                                            ; $4f72: $fb
    jr nz, @-$1f                                  ; $4f73: $20 $df

    nop                                           ; $4f75: $00
    rst $38                                       ; $4f76: $ff
    ld c, h                                       ; $4f77: $4c
    nop                                           ; $4f78: $00
    rst $38                                       ; $4f79: $ff
    db $fc                                        ; $4f7a: $fc
    rst $38                                       ; $4f7b: $ff
    ld e, b                                       ; $4f7c: $58
    rst $38                                       ; $4f7d: $ff
    inc a                                         ; $4f7e: $3c
    rst $38                                       ; $4f7f: $ff
    rra                                           ; $4f80: $1f
    nop                                           ; $4f81: $00
    rst $38                                       ; $4f82: $ff
    rla                                           ; $4f83: $17
    rst $38                                       ; $4f84: $ff
    add hl, sp                                    ; $4f85: $39
    rst $38                                       ; $4f86: $ff
    db $10                                        ; $4f87: $10
    rst $38                                       ; $4f88: $ff
    adc b                                         ; $4f89: $88
    nop                                           ; $4f8a: $00
    ld a, a                                       ; $4f8b: $7f
    db $10                                        ; $4f8c: $10
    rst $28                                       ; $4f8d: $ef
    jr nc, jr_0cc_4f5f                            ; $4f8e: $30 $cf

    inc bc                                        ; $4f90: $03
    db $fc                                        ; $4f91: $fc

jr_0cc_4f92:
    rrca                                          ; $4f92: $0f
    nop                                           ; $4f93: $00
    ldh a, [$8f]                                  ; $4f94: $f0 $8f
    ldh a, [rVBK]                                 ; $4f96: $f0 $4f
    ldh a, [$e6]                                  ; $4f98: $f0 $e6
    ld sp, hl                                     ; $4f9a: $f9
    cp $2c                                        ; $4f9b: $fe $2c
    rst $38                                       ; $4f9d: $ff
    db $e4                                        ; $4f9e: $e4
    xor [hl]                                      ; $4f9f: $ae
    db $10                                        ; $4fa0: $10
    db $fc                                        ; $4fa1: $fc
    or [hl]                                       ; $4fa2: $b6
    nop                                           ; $4fa3: $00
    cp h                                          ; $4fa4: $bc
    ld a, [de]                                    ; $4fa5: $1a
    ld b, b                                       ; $4fa6: $40
    cp a                                          ; $4fa7: $bf
    nop                                           ; $4fa8: $00
    jr jr_0cc_4f92                                ; $4fa9: $18 $e7

    inc a                                         ; $4fab: $3c
    jp $c03f                                      ; $4fac: $c3 $3f $c0


    ccf                                           ; $4faf: $3f
    ret nz                                        ; $4fb0: $c0

    nop                                           ; $4fb1: $00
    rra                                           ; $4fb2: $1f
    ldh [rNR34], a                                ; $4fb3: $e0 $1e
    pop hl                                        ; $4fb5: $e1
    dec e                                         ; $4fb6: $1d
    ld [c], a                                     ; $4fb7: $e2
    db $10                                        ; $4fb8: $10
    rst $28                                       ; $4fb9: $ef
    nop                                           ; $4fba: $00
    ld h, [hl]                                    ; $4fbb: $66
    sbc c                                         ; $4fbc: $99
    ld a, a                                       ; $4fbd: $7f
    add b                                         ; $4fbe: $80

jr_0cc_4fbf:
    ccf                                           ; $4fbf: $3f
    ret nz                                        ; $4fc0: $c0

    ld l, $d1                                     ; $4fc1: $2e $d1
    ld [$e21d], sp                                ; $4fc3: $08 $1d $e2
    inc c                                         ; $4fc6: $0c
    di                                            ; $4fc7: $f3
    ret nc                                        ; $4fc8: $d0

    ld c, b                                       ; $4fc9: $48
    inc h                                         ; $4fca: $24
    rst $38                                       ; $4fcb: $ff
    ld a, a                                       ; $4fcc: $7f
    jr nz, @+$01                                  ; $4fcd: $20 $ff

    add b                                         ; $4fcf: $80
    ld d, b                                       ; $4fd0: $50
    jr nz, @+$51                                  ; $4fd1: $20 $4f

    ldh a, [$ef]                                  ; $4fd3: $f0 $ef
    ldh a, [$cf]                                  ; $4fd5: $f0 $cf
    ld [bc], a                                    ; $4fd7: $02
    ldh a, [$c6]                                  ; $4fd8: $f0 $c6
    ld sp, hl                                     ; $4fda: $f9
    nop                                           ; $4fdb: $00
    rst $38                                       ; $4fdc: $ff
    add b                                         ; $4fdd: $80
    ld [bc], a                                    ; $4fde: $02
    inc bc                                        ; $4fdf: $03
    jr nz, jr_0cc_5002                            ; $4fe0: $20 $20

    rst $38                                       ; $4fe2: $ff
    ld [hl], b                                    ; $4fe3: $70
    inc b                                         ; $4fe4: $04
    jr nz, jr_0cc_4fbf                            ; $4fe5: $20 $d8

    daa                                           ; $4fe7: $27
    ret c                                         ; $4fe8: $d8

    daa                                           ; $4fe9: $27
    jr c, jr_0cc_504d                             ; $4fea: $38 $61

jr_0cc_4fec:
    rst $00                                       ; $4fec: $c7
    xor d                                         ; $4fed: $aa
    add hl, bc                                    ; $4fee: $09
    ld a, [de]                                    ; $4fef: $1a
    dec de                                        ; $4ff0: $1b
    ld h, b                                       ; $4ff1: $60
    sbc a                                         ; $4ff2: $9f
    ldh a, [rIF]                                  ; $4ff3: $f0 $0f
    ld [bc], a                                    ; $4ff5: $02
    ld [$c000], sp                                ; $4ff6: $08 $00 $c0
    ccf                                           ; $4ff9: $3f
    inc c                                         ; $4ffa: $0c
    di                                            ; $4ffb: $f3
    ld [$01f7], sp                                ; $4ffc: $08 $f7 $01
    cp $80                                        ; $4fff: $fe $80

Jump_0cc_5001:
    ld [hl], d                                    ; $5001: $72

jr_0cc_5002:
    jr jr_0cc_4fec                                ; $5002: $18 $e8

    rla                                           ; $5004: $17
    db $ec                                        ; $5005: $ec
    inc de                                        ; $5006: $13
    cp $01                                        ; $5007: $fe $01
    db $fc                                        ; $5009: $fc
    nop                                           ; $500a: $00
    inc bc                                        ; $500b: $03
    db $f4                                        ; $500c: $f4
    dec bc                                        ; $500d: $0b
    ldh [rIE], a                                  ; $500e: $e0 $ff

jr_0cc_5010:
    ld b, h                                       ; $5010: $44
    rst $38                                       ; $5011: $ff
    ld c, $06                                     ; $5012: $0e $06
    rst $38                                       ; $5014: $ff
    ld e, $ff                                     ; $5015: $1e $ff
    rrca                                          ; $5017: $0f
    rst $38                                       ; $5018: $ff
    push bc                                       ; $5019: $c5
    ld bc, $034c                                  ; $501a: $01 $4c $03
    dec h                                         ; $501d: $25
    add b                                         ; $501e: $80
    ld d, b                                       ; $501f: $50

jr_0cc_5020:
    inc bc                                        ; $5020: $03
    ld bc, $a2ff                                  ; $5021: $01 $ff $a2
    ld e, l                                       ; $5024: $5d
    add b                                         ; $5025: $80
    ld a, a                                       ; $5026: $7f
    dec c                                         ; $5027: $0d
    nop                                           ; $5028: $00
    ld a, [c]                                     ; $5029: $f2
    ld bc, $65fe                                  ; $502a: $01 $fe $65
    sbc d                                         ; $502d: $9a
    ret nc                                        ; $502e: $d0

    rst $38                                       ; $502f: $ff
    cp b                                          ; $5030: $b8
    dec c                                         ; $5031: $0d
    rst $38                                       ; $5032: $ff
    ret nc                                        ; $5033: $d0

    rst $38                                       ; $5034: $ff
    and b                                         ; $5035: $a0
    ld h, b                                       ; $5036: $60
    db $10                                        ; $5037: $10
    ld l, h                                       ; $5038: $6c
    dec bc                                        ; $5039: $0b
    jr c, jr_0cc_5010                             ; $503a: $38 $d4

    nop                                           ; $503c: $00
    ld d, b                                       ; $503d: $50
    ld b, $2e                                     ; $503e: $06 $2e
    nop                                           ; $5040: $00
    ld b, $78                                     ; $5041: $06 $78
    inc hl                                        ; $5043: $23
    cpl                                           ; $5044: $2f
    rst $38                                       ; $5045: $ff
    ld [hl], a                                    ; $5046: $77
    rst $38                                       ; $5047: $ff
    ld [$ff22], sp                                ; $5048: $08 $22 $ff
    ret nz                                        ; $504b: $c0

    ccf                                           ; $504c: $3f

jr_0cc_504d:
    ld h, h                                       ; $504d: $64
    add hl, bc                                    ; $504e: $09
    pop af                                        ; $504f: $f1
    ld c, $f0                                     ; $5050: $0e $f0
    ld d, b                                       ; $5052: $50
    rrca                                          ; $5053: $0f
    sub b                                         ; $5054: $90
    ld [$90e0], sp                                ; $5055: $08 $e0 $90
    ld bc, $ff70                                  ; $5058: $01 $70 $ff
    ld hl, sp-$01                                 ; $505b: $f8 $ff
    ld b, b                                       ; $505d: $40
    ld d, b                                       ; $505e: $50
    sbc h                                         ; $505f: $9c
    inc bc                                        ; $5060: $03
    ld a, $c1                                     ; $5061: $3e $c1
    ld e, $e1                                     ; $5063: $1e $e1
    nop                                           ; $5065: $00
    rst $38                                       ; $5066: $ff
    ret nz                                        ; $5067: $c0

    rst $08                                       ; $5068: $cf
    ld bc, $0106                                  ; $5069: $01 $06 $01
    add hl, de                                    ; $506c: $19
    and $99                                       ; $506d: $e6 $99
    ld h, [hl]                                    ; $506f: $66

jr_0cc_5070:
    sub $29                                       ; $5070: $d6 $29
    nop                                           ; $5072: $00
    inc a                                         ; $5073: $3c
    jp $d32c                                      ; $5074: $c3 $2c $d3


    db $fd                                        ; $5077: $fd
    ld [bc], a                                    ; $5078: $02
    adc $31                                       ; $5079: $ce $31
    nop                                           ; $507b: $00
    rrca                                          ; $507c: $0f
    ldh a, [rNR24]                                ; $507d: $f0 $19
    and $0e                                       ; $507f: $e6 $0e
    pop af                                        ; $5081: $f1
    jp $00c3                                      ; $5082: $c3 $c3 $00


    ld c, e                                       ; $5085: $4b
    ld c, e                                       ; $5086: $4b
    jp nz, $c7c2                                  ; $5087: $c2 $c2 $c7

    rst $00                                       ; $508a: $c7
    db $e3                                        ; $508b: $e3
    db $e3                                        ; $508c: $e3
    ld [bc], a                                    ; $508d: $02
    ld a, a                                       ; $508e: $7f
    ld a, a                                       ; $508f: $7f
    ld a, c                                       ; $5090: $79
    ld a, c                                       ; $5091: $79
    ld l, a                                       ; $5092: $6f
    ld l, a                                       ; $5093: $6f
    ld a, [de]                                    ; $5094: $1a
    dec bc                                        ; $5095: $0b
    jr nz, jr_0cc_5020                            ; $5096: $20 $88

    ldh [rSB], a                                  ; $5098: $e0 $01
    nop                                           ; $509a: $00
    nop                                           ; $509b: $00
    ld b, $01                                     ; $509c: $06 $01
    nop                                           ; $509e: $00
    rlca                                          ; $509f: $07
    rlca                                          ; $50a0: $07
    call z, $cc02                                 ; $50a1: $cc $02 $cc
    call nz, $e4c4                                ; $50a4: $c4 $c4 $e4
    db $e4                                        ; $50a7: $e4
    adc $01                                       ; $50a8: $ce $01
    jr nc, jr_0cc_50dc                            ; $50aa: $30 $30

    inc bc                                        ; $50ac: $03

jr_0cc_50ad:
    or d                                          ; $50ad: $b2
    nop                                           ; $50ae: $00
    ld b, e                                       ; $50af: $43
    nop                                           ; $50b0: $00
    ld bc, $0610                                  ; $50b1: $01 $10 $06
    ld b, $06                                     ; $50b4: $06 $06
    ld [bc], a                                    ; $50b6: $02
    ld a, [bc]                                    ; $50b7: $0a
    jr jr_0cc_50c0                                ; $50b8: $18 $06

    ret c                                         ; $50ba: $d8

    jr nz, jr_0cc_511d                            ; $50bb: $20 $60

    ld h, b                                       ; $50bd: $60
    ld h, $28                                     ; $50be: $26 $28

jr_0cc_50c0:
    inc bc                                        ; $50c0: $03
    inc bc                                        ; $50c1: $03
    inc bc                                        ; $50c2: $03
    dec b                                         ; $50c3: $05
    inc b                                         ; $50c4: $04

jr_0cc_50c5:
    db $10                                        ; $50c5: $10
    ld a, [bc]                                    ; $50c6: $0a
    nop                                           ; $50c7: $00
    inc c                                         ; $50c8: $0c
    ld [hl], $48                                  ; $50c9: $36 $48
    inc c                                         ; $50cb: $0c
    inc c                                         ; $50cc: $0c
    inc e                                         ; $50cd: $1c
    inc d                                         ; $50ce: $14
    add h                                         ; $50cf: $84
    ld d, b                                       ; $50d0: $50
    ld [$1818], sp                                ; $50d1: $08 $18 $18
    jr jr_0cc_50de                                ; $50d4: $18 $08

    ld [hl-], a                                   ; $50d6: $32
    jr c, @+$62                                   ; $50d7: $38 $60

    and b                                         ; $50d9: $a0
    inc l                                         ; $50da: $2c
    add b                                         ; $50db: $80

jr_0cc_50dc:
    ld b, b                                       ; $50dc: $40
    ld b, d                                       ; $50dd: $42

jr_0cc_50de:
    ld b, b                                       ; $50de: $40
    jr nz, jr_0cc_5123                            ; $50df: $20 $42

    ld d, b                                       ; $50e1: $50
    halt                                          ; $50e2: $76
    db $10                                        ; $50e3: $10
    inc c                                         ; $50e4: $0c
    inc c                                         ; $50e5: $0c
    ld [bc], a                                    ; $50e6: $02
    inc c                                         ; $50e7: $0c
    inc d                                         ; $50e8: $14
    db $10                                        ; $50e9: $10
    jr z, jr_0cc_50ec                             ; $50ea: $28 $00

jr_0cc_50ec:
    jr nc, jr_0cc_5070                            ; $50ec: $30 $82

    ld b, b                                       ; $50ee: $40
    ld bc, $02c1                                  ; $50ef: $01 $c1 $02
    nop                                           ; $50f2: $00

jr_0cc_50f3:
    sbc e                                         ; $50f3: $9b
    db $10                                        ; $50f4: $10
    jr c, jr_0cc_511f                             ; $50f5: $38 $28

    jr nc, jr_0cc_5149                            ; $50f7: $30 $50

    ld b, b                                       ; $50f9: $40
    ld b, d                                       ; $50fa: $42
    ld [$8050], sp                                ; $50fb: $08 $50 $80
    and b                                         ; $50fe: $a0
    adc b                                         ; $50ff: $88
    inc c                                         ; $5100: $0c
    add b                                         ; $5101: $80
    jr nz, @+$03                                  ; $5102: $20 $01

    ld bc, $0201                                  ; $5104: $01 $01 $02
    ld b, b                                       ; $5107: $40
    ld [bc], a                                    ; $5108: $02
    sub b                                         ; $5109: $90
    jr nz, jr_0cc_516c                            ; $510a: $20 $60

    ld h, b                                       ; $510c: $60
    ldh [$a0], a                                  ; $510d: $e0 $a0
    ret nz                                        ; $510f: $c0

    ld b, b                                       ; $5110: $40
    ld b, e                                       ; $5111: $43
    add b                                         ; $5112: $80
    jr nc, jr_0cc_5185                            ; $5113: $30 $70

    db $10                                        ; $5115: $10
    jr nc, jr_0cc_5138                            ; $5116: $30 $20

    db $10                                        ; $5118: $10
    and h                                         ; $5119: $a4
    nop                                           ; $511a: $00
    ld l, d                                       ; $511b: $6a
    ld l, b                                       ; $511c: $68

jr_0cc_511d:
    di                                            ; $511d: $f3
    rst $30                                       ; $511e: $f7

jr_0cc_511f:
    jr nc, jr_0cc_50f3                            ; $511f: $30 $d2

    nop                                           ; $5121: $00
    ld [hl], h                                    ; $5122: $74

jr_0cc_5123:
    jr nz, jr_0cc_50c5                            ; $5123: $20 $a0

    ld l, b                                       ; $5125: $68
    jr nc, @+$32                                  ; $5126: $30 $30

    add h                                         ; $5128: $84
    nop                                           ; $5129: $00
    cp b                                          ; $512a: $b8
    jr nc, jr_0cc_50ad                            ; $512b: $30 $80

    ld [hl-], a                                   ; $512d: $32
    add hl, de                                    ; $512e: $19
    jr jr_0cc_5149                                ; $512f: $18 $18

    jr c, @+$2a                                   ; $5131: $38 $28

    ld [hl], b                                    ; $5133: $70
    ld d, b                                       ; $5134: $50
    ld h, b                                       ; $5135: $60
    ld b, b                                       ; $5136: $40
    and b                                         ; $5137: $a0

jr_0cc_5138:
    ld [hl], $29                                  ; $5138: $36 $29
    ld b, $06                                     ; $513a: $06 $06
    ld c, $0a                                     ; $513c: $0e $0a
    inc e                                         ; $513e: $1c
    inc d                                         ; $513f: $14
    inc hl                                        ; $5140: $23
    jr jr_0cc_516b                                ; $5141: $18 $28

    adc e                                         ; $5143: $8b
    nop                                           ; $5144: $00
    ld [bc], a                                    ; $5145: $02
    nop                                           ; $5146: $00
    inc bc                                        ; $5147: $03
    ld c, h                                       ; $5148: $4c

jr_0cc_5149:
    add hl, sp                                    ; $5149: $39
    cp d                                          ; $514a: $ba
    ld l, b                                       ; $514b: $68
    ld c, a                                       ; $514c: $4f
    jr nz, jr_0cc_511d                            ; $514d: $20 $ce

    nop                                           ; $514f: $00
    nop                                           ; $5150: $00
    ret nz                                        ; $5151: $c0

    ld l, h                                       ; $5152: $6c
    ld l, c                                       ; $5153: $69
    ld h, d                                       ; $5154: $62
    adc b                                         ; $5155: $88
    ld [$5821], sp                                ; $5156: $08 $21 $58
    ld hl, $08c0                                  ; $5159: $21 $c0 $08
    ld sp, $91ae                                  ; $515c: $31 $ae $91
    ld bc, $0301                                  ; $515f: $01 $01 $03
    ld [bc], a                                    ; $5162: $02
    rlca                                          ; $5163: $07
    dec b                                         ; $5164: $05
    rra                                           ; $5165: $1f
    ld b, $0a                                     ; $5166: $06 $0a
    ld [$1180], sp                                ; $5168: $08 $80 $11

jr_0cc_516b:
    halt                                          ; $516b: $76

jr_0cc_516c:
    nop                                           ; $516c: $00
    ld bc, $f600                                  ; $516d: $01 $00 $f6
    jr nz, @-$10                                  ; $5170: $20 $ee

    and b                                         ; $5172: $a0
    pop hl                                        ; $5173: $e1
    jr c, jr_0cc_519f                             ; $5174: $38 $29

    adc b                                         ; $5176: $88
    ld c, c                                       ; $5177: $49
    ld [bc], a                                    ; $5178: $02
    ld e, d                                       ; $5179: $5a
    inc b                                         ; $517a: $04
    inc c                                         ; $517b: $0c
    ld [$e804], sp                                ; $517c: $08 $04 $e8
    ld bc, $58ff                                  ; $517f: $01 $ff $58
    jr nz, jr_0cc_51ba                            ; $5182: $20 $36

    adc c                                         ; $5184: $89

jr_0cc_5185:
    jr jr_0cc_5188                                ; $5185: $18 $01

    ld d, d                                       ; $5187: $52

jr_0cc_5188:
    ld bc, $49fe                                  ; $5188: $01 $fe $49
    xor [hl]                                      ; $518b: $ae
    add hl, de                                    ; $518c: $19
    ldh [$78], a                                  ; $518d: $e0 $78
    ld e, h                                       ; $518f: $5c
    ld a, [hl+]                                   ; $5190: $2a
    ld a, a                                       ; $5191: $7f
    ld b, b                                       ; $5192: $40
    ld a, [$de18]                                 ; $5193: $fa $18 $de
    ld sp, $015c                                  ; $5196: $31 $5c $01
    sbc $c1                                       ; $5199: $de $c1
    sbc a                                         ; $519b: $9f
    db $10                                        ; $519c: $10
    sub a                                         ; $519d: $97
    ld b, d                                       ; $519e: $42

jr_0cc_519f:
    call nc, Call_0cc_7301                        ; $519f: $d4 $01 $73
    add b                                         ; $51a2: $80
    ld c, h                                       ; $51a3: $4c
    ld c, d                                       ; $51a4: $4a
    add hl, hl                                    ; $51a5: $29
    ld [de], a                                    ; $51a6: $12
    ld hl, sp+$01                                 ; $51a7: $f8 $01
    nop                                           ; $51a9: $00
    ld b, $ce                                     ; $51aa: $06 $ce
    ld sp, hl                                     ; $51ac: $f9
    ld [hl+], a                                   ; $51ad: $22
    ld [hl-], a                                   ; $51ae: $32
    rst $00                                       ; $51af: $c7
    add $12                                       ; $51b0: $c6 $12
    ld [hl+], a                                   ; $51b2: $22
    adc d                                         ; $51b3: $8a
    ld [$1018], sp                                ; $51b4: $08 $18 $10
    or [hl]                                       ; $51b7: $b6
    ld [de], a                                    ; $51b8: $12
    adc [hl]                                      ; $51b9: $8e

jr_0cc_51ba:
    ld [bc], a                                    ; $51ba: $02
    ld hl, sp+$00                                 ; $51bb: $f8 $00

jr_0cc_51bd:
    ret nz                                        ; $51bd: $c0

    push de                                       ; $51be: $d5
    ld a, [hl-]                                   ; $51bf: $3a
    jr jr_0cc_521d                                ; $51c0: $18 $5b

    ret nc                                        ; $51c2: $d0

    inc bc                                        ; $51c3: $03

jr_0cc_51c4:
    pop bc                                        ; $51c4: $c1
    ld [bc], a                                    ; $51c5: $02
    ld e, b                                       ; $51c6: $58
    nop                                           ; $51c7: $00
    ld bc, $ff60                                  ; $51c8: $01 $60 $ff
    ld [bc], a                                    ; $51cb: $02
    ld h, b                                       ; $51cc: $60
    jr nz, jr_0cc_51df                            ; $51cd: $20 $10

    ld bc, $0200                                  ; $51cf: $01 $00 $02
    jr nz, jr_0cc_51d4                            ; $51d2: $20 $00

jr_0cc_51d4:
    dec b                                         ; $51d4: $05
    inc b                                         ; $51d5: $04
    ld [$0201], sp                                ; $51d6: $08 $01 $02
    rlca                                          ; $51d9: $07
    ld de, $0007                                  ; $51da: $11 $07 $00
    xor c                                         ; $51dd: $a9
    rlca                                          ; $51de: $07

jr_0cc_51df:
    ld d, c                                       ; $51df: $51
    rra                                           ; $51e0: $1f
    and b                                         ; $51e1: $a0
    ccf                                           ; $51e2: $3f
    ld b, c                                       ; $51e3: $41
    ld a, a                                       ; $51e4: $7f
    nop                                           ; $51e5: $00
    sbc c                                         ; $51e6: $99
    rst $38                                       ; $51e7: $ff
    dec a                                         ; $51e8: $3d
    rst $38                                       ; $51e9: $ff
    ld a, l                                       ; $51ea: $7d
    rra                                           ; $51eb: $1f
    rra                                           ; $51ec: $1f
    sbc h                                         ; $51ed: $9c
    nop                                           ; $51ee: $00
    sbc a                                         ; $51ef: $9f
    sbc $df                                       ; $51f0: $de $df
    cp $ff                                        ; $51f2: $fe $ff
    cp a                                          ; $51f4: $bf
    rst $38                                       ; $51f5: $ff
    inc hl                                        ; $51f6: $23
    nop                                           ; $51f7: $00
    rst $38                                       ; $51f8: $ff
    adc c                                         ; $51f9: $89
    rst $30                                       ; $51fa: $f7
    jr c, jr_0cc_51c4                             ; $51fb: $38 $c7

    rst $08                                       ; $51fd: $cf
    ccf                                           ; $51fe: $3f
    rst $00                                       ; $51ff: $c7
    nop                                           ; $5200: $00
    ccf                                           ; $5201: $3f
    db $eb                                        ; $5202: $eb
    rra                                           ; $5203: $1f
    rst $10                                       ; $5204: $d7
    cpl                                           ; $5205: $2f
    and $1f                                       ; $5206: $e6 $1f
    push af                                       ; $5208: $f5
    nop                                           ; $5209: $00
    rrca                                          ; $520a: $0f
    ldh a, [rIF]                                  ; $520b: $f0 $0f
    ld a, b                                       ; $520d: $78
    add a                                         ; $520e: $87
    ld c, e                                       ; $520f: $4b
    cp a                                          ; $5210: $bf
    ld h, [hl]                                    ; $5211: $66
    nop                                           ; $5212: $00
    sbc [hl]                                      ; $5213: $9e
    ld d, [hl]                                    ; $5214: $56
    xor [hl]                                      ; $5215: $ae
    di                                            ; $5216: $f3
    adc a                                         ; $5217: $8f
    and a                                         ; $5218: $a7
    rst $18                                       ; $5219: $df
    push hl                                       ; $521a: $e5
    nop                                           ; $521b: $00
    sbc a                                         ; $521c: $9f

jr_0cc_521d:
    ld h, e                                       ; $521d: $63
    sbc a                                         ; $521e: $9f
    add hl, de                                    ; $521f: $19
    rst $20                                       ; $5220: $e7
    add h                                         ; $5221: $84
    ld d, c                                       ; $5222: $51
    ld c, $00                                     ; $5223: $0e $00
    and b                                         ; $5225: $a0
    rra                                           ; $5226: $1f
    ld b, h                                       ; $5227: $44
    ccf                                           ; $5228: $3f
    adc [hl]                                      ; $5229: $8e
    rst $38                                       ; $522a: $ff
    ld e, $ff                                     ; $522b: $1e $ff
    nop                                           ; $522d: $00
    ld e, $bf                                     ; $522e: $1e $bf
    ld c, h                                       ; $5230: $4c
    sbc [hl]                                      ; $5231: $9e
    jr nz, jr_0cc_5234                            ; $5232: $20 $00

jr_0cc_5234:
    ld b, b                                       ; $5234: $40
    nop                                           ; $5235: $00
    nop                                           ; $5236: $00
    and b                                         ; $5237: $a0
    nop                                           ; $5238: $00
    ld b, b                                       ; $5239: $40
    add b                                         ; $523a: $80
    jr nz, jr_0cc_51bd                            ; $523b: $20 $80

    ld d, b                                       ; $523d: $50
    add b                                         ; $523e: $80
    add b                                         ; $523f: $80
    inc c                                         ; $5240: $0c
    db $10                                        ; $5241: $10
    db $f4                                        ; $5242: $f4
    nop                                           ; $5243: $00
    jp hl                                         ; $5244: $e9


    nop                                           ; $5245: $00
    db $f4                                        ; $5246: $f4
    nop                                           ; $5247: $00
    ld a, [$04c0]                                 ; $5248: $fa $c0 $04
    nop                                           ; $524b: $00
    ld [$ff18], sp                                ; $524c: $08 $18 $ff
    ld a, c                                       ; $524f: $79
    rst $38                                       ; $5250: $ff
    jr nc, @+$7d                                  ; $5251: $30 $7b

    inc b                                         ; $5253: $04
    nop                                           ; $5254: $00
    inc sp                                        ; $5255: $33
    adc b                                         ; $5256: $88
    inc bc                                        ; $5257: $03
    ld d, h                                       ; $5258: $54
    inc bc                                        ; $5259: $03
    xor b                                         ; $525a: $a8
    ld bc, $0054                                  ; $525b: $01 $54 $00
    ld bc, $8f0a                                  ; $525e: $01 $0a $8f
    ldh a, [$83]                                  ; $5261: $f0 $83
    db $fc                                        ; $5263: $fc
    or e                                          ; $5264: $b3
    db $fc                                        ; $5265: $fc
    nop                                           ; $5266: $00
    ld sp, hl                                     ; $5267: $f9
    cp $f9                                        ; $5268: $fe $f9
    cp $0d                                        ; $526a: $fe $0d
    ld c, $0d                                     ; $526c: $0e $0d
    ld c, $00                                     ; $526e: $0e $00
    add hl, sp                                    ; $5270: $39
    ld a, $fc                                     ; $5271: $3e $fc
    jp $25da                                      ; $5273: $c3 $da $25


    db $fd                                        ; $5276: $fd
    ld [bc], a                                    ; $5277: $02
    nop                                           ; $5278: $00
    db $dd                                        ; $5279: $dd
    ld [hl+], a                                   ; $527a: $22
    ei                                            ; $527b: $fb
    inc b                                         ; $527c: $04
    reti                                          ; $527d: $d9


    ld h, $e1                                     ; $527e: $26 $e1
    ld e, $00                                     ; $5280: $1e $00
    db $e3                                        ; $5282: $e3
    inc e                                         ; $5283: $1c
    adc $31                                       ; $5284: $ce $31
    db $fc                                        ; $5286: $fc
    inc bc                                        ; $5287: $03
    db $fd                                        ; $5288: $fd
    inc bc                                        ; $5289: $03
    nop                                           ; $528a: $00
    ld a, c                                       ; $528b: $79
    add a                                         ; $528c: $87
    inc e                                         ; $528d: $1c
    db $e3                                        ; $528e: $e3
    xor c                                         ; $528f: $a9
    rst $10                                       ; $5290: $d7
    db $dd                                        ; $5291: $dd
    db $e3                                        ; $5292: $e3
    nop                                           ; $5293: $00
    sub e                                         ; $5294: $93
    rst $28                                       ; $5295: $ef
    adc h                                         ; $5296: $8c
    ld d, c                                       ; $5297: $51
    add b                                         ; $5298: $80
    ld a, [hl+]                                   ; $5299: $2a
    add b                                         ; $529a: $80
    ld d, l                                       ; $529b: $55
    nop                                           ; $529c: $00
    add b                                         ; $529d: $80
    ld a, [hl+]                                   ; $529e: $2a
    ldh [$15], a                                  ; $529f: $e0 $15
    ldh a, [$8a]                                  ; $52a1: $f0 $8a
    ld hl, sp-$1b                                 ; $52a3: $f8 $e5
    inc [hl]                                      ; $52a5: $34
    db $fc                                        ; $52a6: $fc
    ld a, [c]                                     ; $52a7: $f2
    ldh a, [rLCDC]                                ; $52a8: $f0 $40
    call nc, Call_000_0a08                        ; $52aa: $d4 $08 $0a
    ret c                                         ; $52ad: $d8

    ld [$1401], sp                                ; $52ae: $08 $01 $14
    nop                                           ; $52b1: $00
    inc bc                                        ; $52b2: $03
    jr z, jr_0cc_52bc                             ; $52b3: $28 $07

    ld d, c                                       ; $52b5: $51
    rrca                                          ; $52b6: $0f
    and e                                         ; $52b7: $a3
    rrca                                          ; $52b8: $0f
    ld d, e                                       ; $52b9: $53
    nop                                           ; $52ba: $00
    sbc a                                         ; $52bb: $9f

jr_0cc_52bc:
    daa                                           ; $52bc: $27
    inc bc                                        ; $52bd: $03
    inc d                                         ; $52be: $14
    rlca                                          ; $52bf: $07
    add hl, hl                                    ; $52c0: $29
    rrca                                          ; $52c1: $0f
    ld d, e                                       ; $52c2: $53
    nop                                           ; $52c3: $00
    rrca                                          ; $52c4: $0f
    inc hl                                        ; $52c5: $23
    rrca                                          ; $52c6: $0f
    ld d, e                                       ; $52c7: $53
    rlca                                          ; $52c8: $07
    add hl, hl                                    ; $52c9: $29
    inc bc                                        ; $52ca: $03
    inc d                                         ; $52cb: $14
    nop                                           ; $52cc: $00
    ld bc, $df0a                                  ; $52cd: $01 $0a $df
    rlca                                          ; $52d0: $07
    rst $38                                       ; $52d1: $ff
    add l                                         ; $52d2: $85

jr_0cc_52d3:
    rst $38                                       ; $52d3: $ff
    jp $ff00                                      ; $52d4: $c3 $00 $ff


    jp $83ef                                      ; $52d7: $c3 $ef $83


    rst $00                                       ; $52da: $c7
    ld de, $2883                                  ; $52db: $11 $83 $28
    nop                                           ; $52de: $00
    ld bc, $9754                                  ; $52df: $01 $54 $97
    add sp, -$31                                  ; $52e2: $e8 $cf
    ldh a, [rWX]                                  ; $52e4: $f0 $4b
    db $f4                                        ; $52e6: $f4
    nop                                           ; $52e7: $00
    add l                                         ; $52e8: $85
    ld a, [$fea1]                                 ; $52e9: $fa $a1 $fe
    ei                                            ; $52ec: $fb
    db $fc                                        ; $52ed: $fc
    ld a, c                                       ; $52ee: $79
    ld a, [hl]                                    ; $52ef: $7e
    nop                                           ; $52f0: $00
    dec a                                         ; $52f1: $3d
    ld a, $da                                     ; $52f2: $3e $da
    dec h                                         ; $52f4: $25
    db $fc                                        ; $52f5: $fc
    inc bc                                        ; $52f6: $03
    call c, Call_000_0023                         ; $52f7: $dc $23 $00
    ld hl, sp+$07                                 ; $52fa: $f8 $07

jr_0cc_52fc:
    reti                                          ; $52fc: $d9


    daa                                           ; $52fd: $27
    pop hl                                        ; $52fe: $e1
    rra                                           ; $52ff: $1f
    ld [c], a                                     ; $5300: $e2
    rra                                           ; $5301: $1f
    jr nc, jr_0cc_52d3                            ; $5302: $30 $cf

    ccf                                           ; $5304: $3f
    ld b, c                                       ; $5305: $41
    sub c                                         ; $5306: $91
    ld b, b                                       ; $5307: $40
    add hl, hl                                    ; $5308: $29
    ld d, l                                       ; $5309: $55
    nop                                           ; $530a: $00
    xor d                                         ; $530b: $aa
    ld bc, $0010                                  ; $530c: $01 $10 $00
    nop                                           ; $530f: $00
    xor d                                         ; $5310: $aa
    ld [$1f08], sp                                ; $5311: $08 $08 $1f
    ld b, b                                       ; $5314: $40
    ld a, a                                       ; $5315: $7f
    add b                                         ; $5316: $80
    nop                                           ; $5317: $00
    rst $38                                       ; $5318: $ff
    dec de                                        ; $5319: $1b
    rst $38                                       ; $531a: $ff
    ld a, a                                       ; $531b: $7f
    ld h, e                                       ; $531c: $63
    ld a, h                                       ; $531d: $7c
    ld sp, $003e                                  ; $531e: $31 $3e $00
    inc a                                         ; $5321: $3c
    ccf                                           ; $5322: $3f
    rra                                           ; $5323: $1f
    rra                                           ; $5324: $1f
    rlca                                          ; $5325: $07
    rlca                                          ; $5326: $07
    nop                                           ; $5327: $00
    nop                                           ; $5328: $00
    nop                                           ; $5329: $00
    ldh [$e0], a                                  ; $532a: $e0 $e0
    db $fc                                        ; $532c: $fc
    db $fc                                        ; $532d: $fc
    sub e                                         ; $532e: $93
    rst $28                                       ; $532f: $ef
    ld [hl], l                                    ; $5330: $75
    adc e                                         ; $5331: $8b
    nop                                           ; $5332: $00
    jr c, jr_0cc_52fc                             ; $5333: $38 $c7

    ld [hl], h                                    ; $5335: $74
    adc e                                         ; $5336: $8b
    db $fd                                        ; $5337: $fd
    inc bc                                        ; $5338: $03
    ld h, [hl]                                    ; $5339: $66
    sbc c                                         ; $533a: $99
    nop                                           ; $533b: $00
    xor [hl]                                      ; $533c: $ae
    pop de                                        ; $533d: $d1
    rst $10                                       ; $533e: $d7
    jp hl                                         ; $533f: $e9


    ld e, a                                       ; $5340: $5f
    rst $38                                       ; $5341: $ff
    add a                                         ; $5342: $87
    ld a, a                                       ; $5343: $7f
    nop                                           ; $5344: $00
    ld l, e                                       ; $5345: $6b
    sub a                                         ; $5346: $97
    add hl, de                                    ; $5347: $19
    rst $20                                       ; $5348: $e7
    ld a, e                                       ; $5349: $7b
    add a                                         ; $534a: $87
    sub h                                         ; $534b: $94
    db $eb                                        ; $534c: $eb
    nop                                           ; $534d: $00
    push bc                                       ; $534e: $c5
    ei                                            ; $534f: $fb
    jp z, $e0f5                                   ; $5350: $ca $f5 $e0

    sub l                                         ; $5353: $95
    ldh a, [$ca]                                  ; $5354: $f0 $ca
    add l                                         ; $5356: $85
    ret z                                         ; $5357: $c8

    ld [$f3fc], sp                                ; $5358: $08 $fc $f3
    cp $e8                                        ; $535b: $fe $e8
    dec b                                         ; $535d: $05
    ld bc, $29f8                                  ; $535e: $01 $f8 $29
    ld sp, $39d4                                  ; $5361: $31 $d4 $39
    add hl, hl                                    ; $5364: $29
    call nc, $0a18                                ; $5365: $d4 $18 $0a
    call nc, $0800                                ; $5368: $d4 $00 $08
    ret nz                                        ; $536b: $c0

    ld [$5401], sp                                ; $536c: $08 $01 $54
    nop                                           ; $536f: $00
    dec sp                                        ; $5370: $3b
    add b                                         ; $5371: $80
    ccf                                           ; $5372: $3f
    ld b, c                                       ; $5373: $41
    rst $38                                       ; $5374: $ff
    dec sp                                        ; $5375: $3b
    rst $38                                       ; $5376: $ff
    ld a, a                                       ; $5377: $7f
    ld b, b                                       ; $5378: $40
    rst $38                                       ; $5379: $ff
    ld bc, $7f08                                  ; $537a: $01 $08 $7f
    pop hl                                        ; $537d: $e1
    rst $38                                       ; $537e: $ff
    and $f9                                       ; $537f: $e6 $f9
    or $00                                        ; $5381: $f6 $00
    ld sp, hl                                     ; $5383: $f9
    rst $00                                       ; $5384: $c7
    ld hl, sp+$1a                                 ; $5385: $f8 $1a
    push hl                                       ; $5387: $e5
    xor b                                         ; $5388: $a8
    rst $10                                       ; $5389: $d7
    ld h, l                                       ; $538a: $65
    nop                                           ; $538b: $00
    sbc a                                         ; $538c: $9f
    ld h, a                                       ; $538d: $67
    sbc a                                         ; $538e: $9f
    rst $18                                       ; $538f: $df
    rst $38                                       ; $5390: $ff
    ld b, a                                       ; $5391: $47
    rst $38                                       ; $5392: $ff
    ld d, a                                       ; $5393: $57
    nop                                           ; $5394: $00
    rst $28                                       ; $5395: $ef
    sbc d                                         ; $5396: $9a
    ld h, a                                       ; $5397: $67
    ld sp, hl                                     ; $5398: $f9
    ld b, $40                                     ; $5399: $06 $40
    cp a                                          ; $539b: $bf
    sbc [hl]                                      ; $539c: $9e
    add b                                         ; $539d: $80

jr_0cc_539e:
    inc hl                                        ; $539e: $23
    nop                                           ; $539f: $00
    ld [hl+], a                                   ; $53a0: $22
    rst $18                                       ; $53a1: $df
    pop af                                        ; $53a2: $f1
    rrca                                          ; $53a3: $0f
    jp hl                                         ; $53a4: $e9


    rla                                           ; $53a5: $17
    inc bc                                        ; $53a6: $03
    add b                                         ; $53a7: $80
    dec l                                         ; $53a8: $2d
    nop                                           ; $53a9: $00
    db $fc                                        ; $53aa: $fc
    db $fc                                        ; $53ab: $fc
    jr nc, jr_0cc_539e                            ; $53ac: $30 $f0

    ldh a, [$f0]                                  ; $53ae: $f0 $f0
    cp $00                                        ; $53b0: $fe $00
    add sp, -$04                                  ; $53b2: $e8 $fc
    pop af                                        ; $53b4: $f1
    db $fc                                        ; $53b5: $fc
    jp nz, $c5f0                                  ; $53b6: $c2 $f0 $c5

    ldh a, [rSB]                                  ; $53b9: $f0 $01
    ld c, d                                       ; $53bb: $4a
    ldh [$95], a                                  ; $53bc: $e0 $95
    ret nz                                        ; $53be: $c0

    ld a, [hl+]                                   ; $53bf: $2a
    add b                                         ; $53c0: $80
    ld d, h                                       ; $53c1: $54
    ld b, [hl]                                    ; $53c2: $46
    db $10                                        ; $53c3: $10
    sbc b                                         ; $53c4: $98
    dec b                                         ; $53c5: $05
    ld b, b                                       ; $53c6: $40
    nop                                           ; $53c7: $00
    dec d                                         ; $53c8: $15
    ld b, h                                       ; $53c9: $44
    add hl, de                                    ; $53ca: $19
    ld b, b                                       ; $53cb: $40
    ld [hl-], a                                   ; $53cc: $32
    dec de                                        ; $53cd: $1b
    ld a, a                                       ; $53ce: $7f
    add e                                         ; $53cf: $83
    jr c, jr_0cc_53f1                             ; $53d0: $38 $1f

    ld b, e                                       ; $53d2: $43
    ld c, h                                       ; $53d3: $4c
    add hl, bc                                    ; $53d4: $09
    ld b, b                                       ; $53d5: $40
    ld bc, $00f0                                  ; $53d6: $01 $f0 $00

jr_0cc_53d9:
    rst $38                                       ; $53d9: $ff
    ld [hl], h                                    ; $53da: $74
    rst $38                                       ; $53db: $ff
    inc b                                         ; $53dc: $04
    nop                                           ; $53dd: $00
    ld a, b                                       ; $53de: $78
    add l                                         ; $53df: $85
    ret nz                                        ; $53e0: $c0

    ld a, [hl+]                                   ; $53e1: $2a
    cp b                                          ; $53e2: $b8
    jr z, jr_0cc_53d9                             ; $53e3: $28 $f4

    db $f4                                        ; $53e5: $f4
    ld [bc], a                                    ; $53e6: $02
    add sp, -$18                                  ; $53e7: $e8 $e8
    db $f4                                        ; $53e9: $f4
    db $f4                                        ; $53ea: $f4
    ld a, [$08fa]                                 ; $53eb: $fa $fa $08
    jr z, jr_0cc_53f3                             ; $53ee: $28 $03

    nop                                           ; $53f0: $00

jr_0cc_53f1:
    ld d, h                                       ; $53f1: $54
    rrca                                          ; $53f2: $0f

jr_0cc_53f3:
    and b                                         ; $53f3: $a0
    rra                                           ; $53f4: $1f
    ld b, e                                       ; $53f5: $43
    rra                                           ; $53f6: $1f
    and a                                         ; $53f7: $a7
    rra                                           ; $53f8: $1f
    dec d                                         ; $53f9: $15
    ld b, a                                       ; $53fa: $47
    rra                                           ; $53fb: $1f
    and a                                         ; $53fc: $a7
    ld a, b                                       ; $53fd: $78
    ld bc, $a820                                  ; $53fe: $01 $20 $a8
    nop                                           ; $5401: $00
    rra                                           ; $5402: $1f
    xor d                                         ; $5403: $aa
    stop                                          ; $5404: $10 $00
    sbc a                                         ; $5406: $9f
    rst $38                                       ; $5407: $ff
    dec de                                        ; $5408: $1b
    cp a                                          ; $5409: $bf
    ld b, c                                       ; $540a: $41
    sbc a                                         ; $540b: $9f
    ld hl, $0058                                  ; $540c: $21 $58 $00
    ld hl, sp+$0c                                 ; $540f: $f8 $0c
    db $fc                                        ; $5411: $fc
    sbc h                                         ; $5412: $9c
    ld a, h                                       ; $5413: $7c
    ld [hl], $fe                                  ; $5414: $36 $fe
    ld l, [hl]                                    ; $5416: $6e
    ld bc, $04fe                                  ; $5417: $01 $fe $04
    db $fc                                        ; $541a: $fc
    call z, $c63c                                 ; $541b: $cc $3c $c6
    ld a, $30                                     ; $541e: $3e $30
    ld a, [de]                                    ; $5420: $1a
    add b                                         ; $5421: $80
    ld b, h                                       ; $5422: $44
    add hl, bc                                    ; $5423: $09
    add b                                         ; $5424: $80
    ld a, [hl+]                                   ; $5425: $2a
    adc h                                         ; $5426: $8c
    ld d, c                                       ; $5427: $51
    sbc [hl]                                      ; $5428: $9e
    jr nz, jr_0cc_5432                            ; $5429: $20 $07

    ld e, $50                                     ; $542b: $1e $50
    nop                                           ; $542d: $00
    ld a, [hl+]                                   ; $542e: $2a
    add h                                         ; $542f: $84
    nop                                           ; $5430: $00
    and b                                         ; $5431: $a0

jr_0cc_5432:
    ld a, [de]                                    ; $5432: $1a
    xor b                                         ; $5433: $a8
    ld [bc], a                                    ; $5434: $02
    ld c, b                                       ; $5435: $48
    ld [$001f], sp                                ; $5436: $08 $1f $00
    ld b, a                                       ; $5439: $47
    ccf                                           ; $543a: $3f
    adc a                                         ; $543b: $8f
    ccf                                           ; $543c: $3f
    ld c, a                                       ; $543d: $4f
    ccf                                           ; $543e: $3f
    adc a                                         ; $543f: $8f
    ld a, a                                       ; $5440: $7f
    nop                                           ; $5441: $00
    rra                                           ; $5442: $1f
    ld a, a                                       ; $5443: $7f

jr_0cc_5444:
    sbc a                                         ; $5444: $9f
    sub $2e                                       ; $5445: $d6 $2e
    and d                                         ; $5447: $a2
    ld e, [hl]                                    ; $5448: $5e
    or e                                          ; $5449: $b3
    nop                                           ; $544a: $00
    ld c, a                                       ; $544b: $4f
    rst $30                                       ; $544c: $f7
    rrca                                          ; $544d: $0f
    or $0f                                        ; $544e: $f6 $0f
    ld [hl], b                                    ; $5450: $70
    adc a                                         ; $5451: $8f
    ld e, c                                       ; $5452: $59
    inc b                                         ; $5453: $04
    and a                                         ; $5454: $a7
    cp l                                          ; $5455: $bd
    jp Jump_0cc_4cbf                              ; $5456: $c3 $bf $4c


    ld a, d                                       ; $5459: $7a
    ld a, [bc]                                    ; $545a: $0a
    rst $38                                       ; $545b: $ff
    adc h                                         ; $545c: $8c
    ld [$81fe], sp                                ; $545d: $08 $fe $81
    db $fc                                        ; $5460: $fc
    or d                                          ; $5461: $b2
    ld b, b                                       ; $5462: $40
    add hl, bc                                    ; $5463: $09
    ret nz                                        ; $5464: $c0

    db $10                                        ; $5465: $10
    add b                                         ; $5466: $80
    jr jr_0cc_5491                                ; $5467: $18 $28

    add b                                         ; $5469: $80
    ld d, b                                       ; $546a: $50
    add h                                         ; $546b: $84
    ld [bc], a                                    ; $546c: $02
    inc b                                         ; $546d: $04
    ld [$0000], sp                                ; $546e: $08 $00 $00
    add b                                         ; $5471: $80
    nop                                           ; $5472: $00
    cp $c1                                        ; $5473: $fe $c1
    db $fc                                        ; $5475: $fc
    and d                                         ; $5476: $a2
    db $fc                                        ; $5477: $fc
    pop hl                                        ; $5478: $e1
    cp $e0                                        ; $5479: $fe $e0
    nop                                           ; $547b: $00
    cp $d1                                        ; $547c: $fe $d1
    rst $38                                       ; $547e: $ff
    db $f4                                        ; $547f: $f4
    rst $38                                       ; $5480: $ff
    db $fc                                        ; $5481: $fc
    rst $38                                       ; $5482: $ff
    cp $b0                                        ; $5483: $fe $b0
    and b                                         ; $5485: $a0
    ld [bc], a                                    ; $5486: $02
    add b                                         ; $5487: $80
    ld [hl], h                                    ; $5488: $74
    jr nz, jr_0cc_54af                            ; $5489: $20 $24

    nop                                           ; $548b: $00
    add b                                         ; $548c: $80
    jr nz, @+$21                                  ; $548d: $20 $1f

    ld c, a                                       ; $548f: $4f
    ret nc                                        ; $5490: $d0

jr_0cc_5491:
    xor h                                         ; $5491: $ac
    jr jr_0cc_5444                                ; $5492: $18 $b0

    nop                                           ; $5494: $00
    and e                                         ; $5495: $a3
    or h                                          ; $5496: $b4
    nop                                           ; $5497: $00
    daa                                           ; $5498: $27
    ld a, $fe                                     ; $5499: $3e $fe
    rst $18                                       ; $549b: $df
    add b                                         ; $549c: $80
    ld l, c                                       ; $549d: $69
    nop                                           ; $549e: $00
    rst $00                                       ; $549f: $c7
    ccf                                           ; $54a0: $3f
    xor a                                         ; $54a1: $af
    ld e, a                                       ; $54a2: $5f
    adc $3e                                       ; $54a3: $ce $3e
    sbc a                                         ; $54a5: $9f
    nop                                           ; $54a6: $00
    ld a, a                                       ; $54a7: $7f
    ld a, a                                       ; $54a8: $7f
    rst $38                                       ; $54a9: $ff
    add b                                         ; $54aa: $80
    ld d, b                                       ; $54ab: $50
    ret nz                                        ; $54ac: $c0

    jr z, @-$3e                                   ; $54ad: $28 $c0

jr_0cc_54af:
    ld [hl], c                                    ; $54af: $71
    db $10                                        ; $54b0: $10
    inc b                                         ; $54b1: $04
    jr c, @+$3e                                   ; $54b2: $38 $3c

    inc hl                                        ; $54b4: $23
    sub b                                         ; $54b5: $90
    ld bc, $2a01                                  ; $54b6: $01 $01 $2a
    inc bc                                        ; $54b9: $03
    ld l, b                                       ; $54ba: $68
    ld [bc], a                                    ; $54bb: $02
    nop                                           ; $54bc: $00
    rra                                           ; $54bd: $1f
    ld b, l                                       ; $54be: $45
    ccf                                           ; $54bf: $3f
    add a                                         ; $54c0: $87
    ld a, a                                       ; $54c1: $7f
    rrca                                          ; $54c2: $0f
    rst $38                                       ; $54c3: $ff
    rla                                           ; $54c4: $17
    ld [$3fff], sp                                ; $54c5: $08 $ff $3f
    rst $38                                       ; $54c8: $ff
    ld e, a                                       ; $54c9: $5f
    sub h                                         ; $54ca: $94
    ld hl, $fffe                                  ; $54cb: $21 $fe $ff
    ld a, [$ff02]                                 ; $54ce: $fa $02 $ff
    db $fc                                        ; $54d1: $fc
    cp $d9                                        ; $54d2: $fe $d9
    ld hl, sp-$1e                                 ; $54d4: $f8 $e2
    ld h, d                                       ; $54d6: $62
    add hl, bc                                    ; $54d7: $09
    ret nc                                        ; $54d8: $d0

    nop                                           ; $54d9: $00
    rst $28                                       ; $54da: $ef
    or [hl]                                       ; $54db: $b6
    ret                                           ; $54dc: $c9


    ld a, a                                       ; $54dd: $7f
    add b                                         ; $54de: $80
    ccf                                           ; $54df: $3f
    ret nz                                        ; $54e0: $c0

    xor [hl]                                      ; $54e1: $ae
    nop                                           ; $54e2: $00
    pop de                                        ; $54e3: $d1
    inc bc                                        ; $54e4: $03
    db $fc                                        ; $54e5: $fc
    and c                                         ; $54e6: $a1
    cp $f8                                        ; $54e7: $fe $f8
    rst $38                                       ; $54e9: $ff
    cp $00                                        ; $54ea: $fe $00
    ld a, $cc                                     ; $54ec: $3e $cc
    inc a                                         ; $54ee: $3c
    call z, $dc3c                                 ; $54ef: $cc $3c $dc
    inc a                                         ; $54f2: $3c
    adc $00                                       ; $54f3: $ce $00
    ld a, $c6                                     ; $54f5: $3e $c6
    ld a, $f2                                     ; $54f7: $3e $f2
    ld c, $e2                                     ; $54f9: $0e $e2
    ld e, $fc                                     ; $54fb: $1e $fc
    db $10                                        ; $54fd: $10
    pop af                                        ; $54fe: $f1
    cp $f8                                        ; $54ff: $fe $f8
    db $fd                                        ; $5501: $fd
    ld [bc], a                                    ; $5502: $02
    add sp, -$04                                  ; $5503: $e8 $fc
    di                                            ; $5505: $f3
    db $fc                                        ; $5506: $fc
    inc b                                         ; $5507: $04
    ld a, [c]                                     ; $5508: $f2
    ld hl, sp-$1b                                 ; $5509: $f8 $e5
    ldh a, [$ca]                                  ; $550b: $f0 $ca
    sub [hl]                                      ; $550d: $96
    ld bc, $c0aa                                  ; $550e: $01 $aa $c0
    ld bc, $e014                                  ; $5511: $01 $14 $e0
    ld a, [bc]                                    ; $5514: $0a
    ldh a, [$85]                                  ; $5515: $f0 $85
    ld hl, sp-$1e                                 ; $5517: $f8 $e2
    xor d                                         ; $5519: $aa
    ld bc, $f200                                  ; $551a: $01 $00 $f2
    sub b                                         ; $551d: $90
    ld [bc], a                                    ; $551e: $02
    jr nc, @+$03                                  ; $551f: $30 $01

    jr nz, jr_0cc_5523                            ; $5521: $20 $00

jr_0cc_5523:
    rst $38                                       ; $5523: $ff
    ld [bc], a                                    ; $5524: $02
    ld h, b                                       ; $5525: $60
    or b                                          ; $5526: $b0
    nop                                           ; $5527: $00
    ret nc                                        ; $5528: $d0

    nop                                           ; $5529: $00
    jp RST_00                                     ; $552a: $c3 $00 $00


    ld b, e                                       ; $552d: $43
    nop                                           ; $552e: $00
    ld [$a000], sp                                ; $552f: $08 $00 $a0
    nop                                           ; $5532: $00

jr_0cc_5533:
    nop                                           ; $5533: $00
    jr nz, jr_0cc_5536                            ; $5534: $20 $00

jr_0cc_5536:
    ret nz                                        ; $5536: $c0

    inc b                                         ; $5537: $04
    nop                                           ; $5538: $00
    stop                                          ; $5539: $10 $00
    ld [bc], a                                    ; $553b: $02
    nop                                           ; $553c: $00
    ld a, [de]                                    ; $553d: $1a
    ld a, [bc]                                    ; $553e: $0a
    nop                                           ; $553f: $00
    dec de                                        ; $5540: $1b
    nop                                           ; $5541: $00
    ld bc, $0010                                  ; $5542: $01 $10 $00
    ld [bc], a                                    ; $5545: $02
    jr nc, jr_0cc_5548                            ; $5546: $30 $00

jr_0cc_5548:
    ld a, a                                       ; $5548: $7f
    ld [bc], a                                    ; $5549: $02
    nop                                           ; $554a: $00
    ld l, a                                       ; $554b: $6f
    nop                                           ; $554c: $00
    rlca                                          ; $554d: $07
    nop                                           ; $554e: $00
    rrca                                          ; $554f: $0f
    ld b, $00                                     ; $5550: $06 $00
    ld h, a                                       ; $5552: $67
    ld [hl+], a                                   ; $5553: $22
    nop                                           ; $5554: $00
    inc bc                                        ; $5555: $03
    inc h                                         ; $5556: $24
    nop                                           ; $5557: $00

jr_0cc_5558:
    jr nc, jr_0cc_555a                            ; $5558: $30 $00

jr_0cc_555a:
    jr nz, jr_0cc_5586                            ; $555a: $20 $2a

    nop                                           ; $555c: $00
    inc c                                         ; $555d: $0c
    ld a, [bc]                                    ; $555e: $0a
    nop                                           ; $555f: $00
    add h                                         ; $5560: $84
    nop                                           ; $5561: $00
    inc d                                         ; $5562: $14
    ld [hl-], a                                   ; $5563: $32
    nop                                           ; $5564: $00
    rst $38                                       ; $5565: $ff
    ld a, [de]                                    ; $5566: $1a
    nop                                           ; $5567: $00
    sbc a                                         ; $5568: $9f
    nop                                           ; $5569: $00
    nop                                           ; $556a: $00
    cp a                                          ; $556b: $bf
    nop                                           ; $556c: $00
    di                                            ; $556d: $f3
    nop                                           ; $556e: $00
    ld a, e                                       ; $556f: $7b
    nop                                           ; $5570: $00
    ld l, e                                       ; $5571: $6b
    adc d                                         ; $5572: $8a
    inc l                                         ; $5573: $2c
    nop                                           ; $5574: $00
    rst $38                                       ; $5575: $ff
    nop                                           ; $5576: $00
    db $eb                                        ; $5577: $eb
    ld a, [bc]                                    ; $5578: $0a
    nop                                           ; $5579: $00
    di                                            ; $557a: $f3
    ld l, b                                       ; $557b: $68
    nop                                           ; $557c: $00
    rst $18                                       ; $557d: $df
    ld [hl], $00                                  ; $557e: $36 $00
    rst $08                                       ; $5580: $cf
    ld l, [hl]                                    ; $5581: $6e
    nop                                           ; $5582: $00
    ld bc, $0620                                  ; $5583: $01 $20 $06

jr_0cc_5586:
    ld [bc], a                                    ; $5586: $02
    nop                                           ; $5587: $00
    inc c                                         ; $5588: $0c
    ld [$88cc], sp                                ; $5589: $08 $cc $88
    ld l, c                                       ; $558c: $69
    nop                                           ; $558d: $00
    add hl, de                                    ; $558e: $19
    nop                                           ; $558f: $00
    bit 6, e                                      ; $5590: $cb $73
    nop                                           ; $5592: $00
    ld a, a                                       ; $5593: $7f
    nop                                           ; $5594: $00
    dec bc                                        ; $5595: $0b
    and b                                         ; $5596: $a0
    adc l                                         ; $5597: $8d
    db $10                                        ; $5598: $10
    sub a                                         ; $5599: $97
    sub e                                         ; $559a: $93
    ld [$ff01], sp                                ; $559b: $08 $01 $ff
    ld [bc], a                                    ; $559e: $02
    rst $38                                       ; $559f: $ff
    dec b                                         ; $55a0: $05
    ld [$0aff], sp                                ; $55a1: $08 $ff $0a
    cp $15                                        ; $55a4: $fe $15
    sbc a                                         ; $55a6: $9f
    jr nz, jr_0cc_55fe                            ; $55a7: $20 $55

    rst $38                                       ; $55a9: $ff
    xor d                                         ; $55aa: $aa
    sub b                                         ; $55ab: $90
    inc b                                         ; $55ac: $04
    ld [$55aa], sp                                ; $55ad: $08 $aa $55
    xor a                                         ; $55b0: $af
    jr nc, jr_0cc_5533                            ; $55b1: $30 $80

    rst $38                                       ; $55b3: $ff
    ld b, b                                       ; $55b4: $40
    rst $38                                       ; $55b5: $ff
    jr jr_0cc_5558                                ; $55b6: $18 $a0

    rst $38                                       ; $55b8: $ff
    ld d, b                                       ; $55b9: $50
    ld d, b                                       ; $55ba: $50
    jr z, jr_0cc_55c5                             ; $55bb: $28 $08

    jr nc, @-$32                                  ; $55bd: $30 $cc

    nop                                           ; $55bf: $00
    dec c                                         ; $55c0: $0d
    add b                                         ; $55c1: $80
    or [hl]                                       ; $55c2: $b6
    nop                                           ; $55c3: $00
    ret nz                                        ; $55c4: $c0

jr_0cc_55c5:
    nop                                           ; $55c5: $00
    ldh a, [rP1]                                  ; $55c6: $f0 $00
    db $f4                                        ; $55c8: $f4
    nop                                           ; $55c9: $00
    ld h, b                                       ; $55ca: $60
    ld h, d                                       ; $55cb: $62
    nop                                           ; $55cc: $00
    inc bc                                        ; $55cd: $03
    nop                                           ; $55ce: $00
    ld l, d                                       ; $55cf: $6a
    ld [$0060], sp                                ; $55d0: $08 $60 $00
    ld b, c                                       ; $55d3: $41
    and c                                         ; $55d4: $a1
    nop                                           ; $55d5: $00
    ld l, h                                       ; $55d6: $6c
    jp $0811                                      ; $55d7: $c3 $11 $08


    add c                                         ; $55da: $81
    jr jr_0cc_5645                                ; $55db: $18 $68

    nop                                           ; $55dd: $00
    ld h, b                                       ; $55de: $60
    inc bc                                        ; $55df: $03
    cp l                                          ; $55e0: $bd
    db $10                                        ; $55e1: $10
    ret nc                                        ; $55e2: $d0

    db $10                                        ; $55e3: $10
    ld [c], a                                     ; $55e4: $e2
    and [hl]                                      ; $55e5: $a6
    ld [$2908], sp                                ; $55e6: $08 $08 $29
    ld sp, $e708                                  ; $55e9: $31 $08 $e7
    nop                                           ; $55ec: $00
    db $e3                                        ; $55ed: $e3
    sub $00                                       ; $55ee: $d6 $00
    ld [hl], $05                                  ; $55f0: $36 $05
    nop                                           ; $55f2: $00
    and $00                                       ; $55f3: $e6 $00
    ldh [rNR51], a                                ; $55f5: $e0 $25
    dec c                                         ; $55f7: $0d
    nop                                           ; $55f8: $00
    add hl, de                                    ; $55f9: $19
    inc bc                                        ; $55fa: $03
    ld bc, $9318                                  ; $55fb: $01 $18 $93

jr_0cc_55fe:
    nop                                           ; $55fe: $00
    rra                                           ; $55ff: $1f
    pop de                                        ; $5600: $d1
    nop                                           ; $5601: $00
    dec l                                         ; $5602: $2d
    add hl, de                                    ; $5603: $19
    rla                                           ; $5604: $17
    nop                                           ; $5605: $00
    ld a, a                                       ; $5606: $7f
    add b                                         ; $5607: $80

jr_0cc_5608:
    and b                                         ; $5608: $a0
    jr nc, jr_0cc_5608                            ; $5609: $30 $fd

    ld a, [hl+]                                   ; $560b: $2a
    ld a, [$f555]                                 ; $560c: $fa $55 $f5
    xor e                                         ; $560f: $ab
    ld [$5700], a                                 ; $5610: $ea $00 $57
    call nc, $a8af                                ; $5613: $d4 $af $a8
    ld e, a                                       ; $5616: $5f
    ld d, b                                       ; $5617: $50
    cp [hl]                                       ; $5618: $be
    and b                                         ; $5619: $a0
    ld c, $7c                                     ; $561a: $0e $7c
    ld d, l                                       ; $561c: $55
    xor d                                         ; $561d: $aa
    xor d                                         ; $561e: $aa
    cp l                                          ; $561f: $bd
    nop                                           ; $5620: $00
    ld d, [hl]                                    ; $5621: $56
    ld hl, $0141                                  ; $5622: $21 $41 $01
    ld a, a                                       ; $5625: $7f
    nop                                           ; $5626: $00
    xor b                                         ; $5627: $a8
    cp a                                          ; $5628: $bf
    ld d, h                                       ; $5629: $54
    ld e, a                                       ; $562a: $5f

jr_0cc_562b:
    xor d                                         ; $562b: $aa
    xor a                                         ; $562c: $af
    push de                                       ; $562d: $d5
    ld d, a                                       ; $562e: $57
    nop                                           ; $562f: $00
    ld [$f52b], a                                 ; $5630: $ea $2b $f5
    dec d                                         ; $5633: $15
    ld a, [$7d0a]                                 ; $5634: $fa $0a $7d
    ldh [$28], a                                  ; $5637: $e0 $28
    nop                                           ; $5639: $00
    inc e                                         ; $563a: $1c
    sbc l                                         ; $563b: $9d
    db $10                                        ; $563c: $10
    jr nc, @+$04                                  ; $563d: $30 $02

    ld bc, $00e6                                  ; $563f: $01 $e6 $00
    ld hl, sp+$00                                 ; $5642: $f8 $00
    nop                                           ; $5644: $00

jr_0cc_5645:
    ld [hl], a                                    ; $5645: $77
    nop                                           ; $5646: $00
    db $e4                                        ; $5647: $e4
    nop                                           ; $5648: $00
    inc h                                         ; $5649: $24
    nop                                           ; $564a: $00
    ccf                                           ; $564b: $3f
    and d                                         ; $564c: $a2
    cpl                                           ; $564d: $2f
    ld bc, $5330                                  ; $564e: $01 $30 $53
    ld bc, $00cf                                  ; $5651: $01 $cf $00
    cp $75                                        ; $5654: $fe $75
    nop                                           ; $5656: $00
    or a                                          ; $5657: $b7
    adc a                                         ; $5658: $8f
    ccf                                           ; $5659: $3f
    ld bc, $00fd                                  ; $565a: $01 $fd $00
    db $dd                                        ; $565d: $dd
    ld b, e                                       ; $565e: $43
    jr jr_0cc_56d7                                ; $565f: $18 $76

    add hl, bc                                    ; $5661: $09
    push hl                                       ; $5662: $e5
    ld c, b                                       ; $5663: $48
    ld c, b                                       ; $5664: $48
    add hl, bc                                    ; $5665: $09
    ld l, l                                       ; $5666: $6d
    ld d, $3d                                     ; $5667: $16 $3d
    ld hl, $094d                                  ; $5669: $21 $4d $09
    rst $18                                       ; $566c: $df
    ld d, c                                       ; $566d: $51
    nop                                           ; $566e: $00
    add b                                         ; $566f: $80
    add hl, bc                                    ; $5670: $09
    ld h, b                                       ; $5671: $60
    db $dd                                        ; $5672: $dd
    jr nz, jr_0cc_56ca                            ; $5673: $20 $55

    rst $38                                       ; $5675: $ff
    ld h, [hl]                                    ; $5676: $66
    ld bc, $d6df                                  ; $5677: $01 $df $d6
    ld bc, $a8f3                                  ; $567a: $01 $f3 $a8
    ld bc, $deeb                                  ; $567d: $01 $eb $de
    ld bc, $6276                                  ; $5680: $01 $76 $62
    sbc [hl]                                      ; $5683: $9e
    ld bc, $296d                                  ; $5684: $01 $6d $29
    ld a, l                                       ; $5687: $7d
    add hl, de                                    ; $5688: $19
    jr jr_0cc_568d                                ; $5689: $18 $02

    nop                                           ; $568b: $00
    ld c, a                                       ; $568c: $4f

jr_0cc_568d:
    ld b, b                                       ; $568d: $40
    rst $38                                       ; $568e: $ff
    ret nz                                        ; $568f: $c0

    jp c, $7000                                   ; $5690: $da $00 $70

    add hl, sp                                    ; $5693: $39
    ld b, b                                       ; $5694: $40
    ld hl, sp-$80                                 ; $5695: $f8 $80
    ldh a, [rP1]                                  ; $5697: $f0 $00
    pop hl                                        ; $5699: $e1
    add b                                         ; $569a: $80
    ld [bc], a                                    ; $569b: $02
    ld [bc], a                                    ; $569c: $02
    add a                                         ; $569d: $87
    ld bc, $020f                                  ; $569e: $01 $0f $02
    rra                                           ; $56a1: $1f
    dec b                                         ; $56a2: $05
    ld a, $dc                                     ; $56a3: $3e $dc
    dec h                                         ; $56a5: $25

jr_0cc_56a6:
    jr nc, jr_0cc_562b                            ; $56a6: $30 $83

    add hl, de                                    ; $56a8: $19
    xor d                                         ; $56a9: $aa
    cpl                                           ; $56aa: $2f
    ld [hl+], a                                   ; $56ab: $22
    and b                                         ; $56ac: $a0
    ld b, c                                       ; $56ad: $41
    rst $18                                       ; $56ae: $df
    ld e, c                                       ; $56af: $59
    xor d                                         ; $56b0: $aa
    ld d, l                                       ; $56b1: $55
    ld [c], a                                     ; $56b2: $e2
    inc h                                         ; $56b3: $24
    nop                                           ; $56b4: $00
    xor [hl]                                      ; $56b5: $ae
    add hl, bc                                    ; $56b6: $09
    dec b                                         ; $56b7: $05
    ld sp, $00d7                                  ; $56b8: $31 $d7 $00
    sbc $f9                                       ; $56bb: $de $f9
    add hl, bc                                    ; $56bd: $09
    add b                                         ; $56be: $80
    dec e                                         ; $56bf: $1d
    ei                                            ; $56c0: $fb
    ld b, b                                       ; $56c1: $40
    di                                            ; $56c2: $f3
    or b                                          ; $56c3: $b0
    ld bc, $6a6f                                  ; $56c4: $01 $6f $6a
    xor a                                         ; $56c7: $af
    jr c, @-$43                                   ; $56c8: $38 $bb

jr_0cc_56ca:
    xor a                                         ; $56ca: $af
    db $10                                        ; $56cb: $10
    ret nc                                        ; $56cc: $d0

    ld bc, $00ea                                  ; $56cd: $01 $ea $00
    ld [hl+], a                                   ; $56d0: $22
    nop                                           ; $56d1: $00
    rst $38                                       ; $56d2: $ff
    ld [bc], a                                    ; $56d3: $02
    ld [hl], b                                    ; $56d4: $70
    di                                            ; $56d5: $f3
    nop                                           ; $56d6: $00

jr_0cc_56d7:
    ei                                            ; $56d7: $fb
    ld d, $00                                     ; $56d8: $16 $00
    rst $08                                       ; $56da: $cf
    ld [$de00], sp                                ; $56db: $08 $00 $de
    nop                                           ; $56de: $00
    rst $10                                       ; $56df: $d7
    ld e, $10                                     ; $56e0: $1e $10
    ei                                            ; $56e2: $fb
    nop                                           ; $56e3: $00
    ld l, b                                       ; $56e4: $68
    stop                                          ; $56e5: $10 $00
    ld h, b                                       ; $56e7: $60
    nop                                           ; $56e8: $00
    ld bc, $2520                                  ; $56e9: $01 $20 $25
    nop                                           ; $56ec: $00
    rst $20                                       ; $56ed: $e7
    nop                                           ; $56ee: $00
    nop                                           ; $56ef: $00
    add hl, de                                    ; $56f0: $19
    nop                                           ; $56f1: $00
    stop                                          ; $56f2: $10 $00
    sub e                                         ; $56f4: $93
    nop                                           ; $56f5: $00
    rra                                           ; $56f6: $1f
    nop                                           ; $56f7: $00
    ld c, h                                       ; $56f8: $4c
    ld a, e                                       ; $56f9: $7b
    dec a                                         ; $56fa: $3d
    nop                                           ; $56fb: $00
    nop                                           ; $56fc: $00
    add b                                         ; $56fd: $80
    ld a, [de]                                    ; $56fe: $1a
    jr z, jr_0cc_5723                             ; $56ff: $28 $22

jr_0cc_5701:
    jr jr_0cc_5701                                ; $5701: $18 $fe

    nop                                           ; $5703: $00
    nop                                           ; $5704: $00
    and $00                                       ; $5705: $e6 $00
    or a                                          ; $5707: $b7
    nop                                           ; $5708: $00
    cp a                                          ; $5709: $bf
    nop                                           ; $570a: $00
    db $fd                                        ; $570b: $fd
    nop                                           ; $570c: $00
    ld b, b                                       ; $570d: $40
    db $dd                                        ; $570e: $dd
    ld e, e                                       ; $570f: $5b
    stop                                          ; $5710: $10 $00
    call z, $0d00                                 ; $5712: $cc $00 $0d
    nop                                           ; $5715: $00
    ret nz                                        ; $5716: $c0

    adc b                                         ; $5717: $88
    ld [bc], a                                    ; $5718: $02
    nop                                           ; $5719: $00
    ldh a, [rP1]                                  ; $571a: $f0 $00
    db $f4                                        ; $571c: $f4
    ld b, [hl]                                    ; $571d: $46
    jr nz, jr_0cc_5750                            ; $571e: $20 $30

    nop                                           ; $5720: $00
    jr nz, jr_0cc_56a6                            ; $5721: $20 $83

jr_0cc_5723:
    ld c, [hl]                                    ; $5723: $4e
    nop                                           ; $5724: $00
    inc c                                         ; $5725: $0c
    nop                                           ; $5726: $00
    add h                                         ; $5727: $84
    nop                                           ; $5728: $00
    inc d                                         ; $5729: $14
    ld d, [hl]                                    ; $572a: $56
    nop                                           ; $572b: $00
    ld l, d                                       ; $572c: $6a
    ld [$df44], sp                                ; $572d: $08 $44 $df
    halt                                          ; $5730: $76
    db $10                                        ; $5731: $10
    ld a, a                                       ; $5732: $7f
    nop                                           ; $5733: $00
    db $eb                                        ; $5734: $eb
    adc [hl]                                      ; $5735: $8e
    nop                                           ; $5736: $00
    rlca                                          ; $5737: $07
    nop                                           ; $5738: $00
    inc d                                         ; $5739: $14
    ld h, a                                       ; $573a: $67
    nop                                           ; $573b: $00
    ld l, h                                       ; $573c: $6c
    ld e, $00                                     ; $573d: $1e $00
    rst $00                                       ; $573f: $c7
    ld l, c                                       ; $5740: $69
    nop                                           ; $5741: $00
    ld h, b                                       ; $5742: $60
    nop                                           ; $5743: $00
    ld d, [hl]                                    ; $5744: $56
    ld b, $1c                                     ; $5745: $06 $1c
    nop                                           ; $5747: $00
    inc e                                         ; $5748: $1c
    jr nc, jr_0cc_575b                            ; $5749: $30 $10

    ld h, b                                       ; $574b: $60
    add h                                         ; $574c: $84
    jr c, jr_0cc_57c1                             ; $574d: $38 $72

    ld c, b                                       ; $574f: $48

jr_0cc_5750:
    rst $38                                       ; $5750: $ff
    or a                                          ; $5751: $b7
    and l                                         ; $5752: $a5
    nop                                           ; $5753: $00
    sbc $ad                                       ; $5754: $de $ad
    nop                                           ; $5756: $00
    and a                                         ; $5757: $a7
    ld [$90f3], sp                                ; $5758: $08 $f3 $90

jr_0cc_575b:
    ld [$18a9], sp                                ; $575b: $08 $a9 $18
    or d                                          ; $575e: $b2
    nop                                           ; $575f: $00
    dec d                                         ; $5760: $15
    inc bc                                        ; $5761: $03
    nop                                           ; $5762: $00
    inc bc                                        ; $5763: $03
    or l                                          ; $5764: $b5
    ld [$6e62], sp                                ; $5765: $08 $62 $6e
    nop                                           ; $5768: $00
    ld b, $48                                     ; $5769: $06 $48
    nop                                           ; $576b: $00
    adc d                                         ; $576c: $8a
    pop bc                                        ; $576d: $c1
    jr nz, jr_0cc_5777                            ; $576e: $20 $07

    nop                                           ; $5770: $00
    jr c, @+$1a                                   ; $5771: $38 $18

    nop                                           ; $5773: $00
    rrca                                          ; $5774: $0f
    ld a, a                                       ; $5775: $7f
    nop                                           ; $5776: $00

jr_0cc_5777:
    ld h, b                                       ; $5777: $60
    and b                                         ; $5778: $a0
    ld l, c                                       ; $5779: $69
    nop                                           ; $577a: $00
    rra                                           ; $577b: $1f
    rst $38                                       ; $577c: $ff
    jr z, jr_0cc_5780                             ; $577d: $28 $01

    rst $38                                       ; $577f: $ff

jr_0cc_5780:
    ld [bc], a                                    ; $5780: $02
    rst $38                                       ; $5781: $ff
    dec b                                         ; $5782: $05
    ld [$0aff], sp                                ; $5783: $08 $ff $0a
    cp $15                                        ; $5786: $fe $15
    rrca                                          ; $5788: $0f
    ld sp, $ff80                                  ; $5789: $31 $80 $ff
    ld b, b                                       ; $578c: $40
    inc b                                         ; $578d: $04
    rst $38                                       ; $578e: $ff
    and b                                         ; $578f: $a0
    rst $38                                       ; $5790: $ff
    ld d, b                                       ; $5791: $50
    inc sp                                        ; $5792: $33
    db $ec                                        ; $5793: $ec
    nop                                           ; $5794: $00
    sbc b                                         ; $5795: $98
    nop                                           ; $5796: $00
    dec d                                         ; $5797: $15
    db $d3                                        ; $5798: $d3
    nop                                           ; $5799: $00
    jp Jump_000_00da                              ; $579a: $c3 $da $00


    ret nc                                        ; $579d: $d0

    ld h, b                                       ; $579e: $60
    jr jr_0cc_57b9                                ; $579f: $18 $18

    ld [bc], a                                    ; $57a1: $02
    nop                                           ; $57a2: $00
    add b                                         ; $57a3: $80

jr_0cc_57a4:
    push af                                       ; $57a4: $f5
    jr nc, jr_0cc_57a4                            ; $57a5: $30 $fd

    ld a, [hl+]                                   ; $57a7: $2a
    ld a, [$f555]                                 ; $57a8: $fa $55 $f5
    xor e                                         ; $57ab: $ab
    ld [$5700], a                                 ; $57ac: $ea $00 $57
    call nc, $a8af                                ; $57af: $d4 $af $a8
    ld e, a                                       ; $57b2: $5f
    ld d, b                                       ; $57b3: $50
    cp [hl]                                       ; $57b4: $be
    and b                                         ; $57b5: $a0
    nop                                           ; $57b6: $00
    ld a, h                                       ; $57b7: $7c
    ld a, a                                       ; $57b8: $7f

jr_0cc_57b9:
    xor b                                         ; $57b9: $a8
    cp a                                          ; $57ba: $bf
    ld d, h                                       ; $57bb: $54
    ld e, a                                       ; $57bc: $5f
    xor d                                         ; $57bd: $aa
    xor a                                         ; $57be: $af
    nop                                           ; $57bf: $00
    push de                                       ; $57c0: $d5

jr_0cc_57c1:
    ld d, a                                       ; $57c1: $57
    ld [$f52b], a                                 ; $57c2: $ea $2b $f5
    dec d                                         ; $57c5: $15
    ld a, [$400a]                                 ; $57c6: $fa $0a $40
    ld a, l                                       ; $57c9: $7d
    ld e, a                                       ; $57ca: $5f
    ld l, c                                       ; $57cb: $69
    xor $00                                       ; $57cc: $ee $00
    daa                                           ; $57ce: $27
    nop                                           ; $57cf: $00
    inc h                                         ; $57d0: $24
    nop                                           ; $57d1: $00
    ld d, b                                       ; $57d2: $50
    db $fc                                        ; $57d3: $fc
    ld e, a                                       ; $57d4: $5f
    ld bc, $130c                                  ; $57d5: $01 $0c $13
    ld bc, $00f3                                  ; $57d8: $01 $f3 $00
    ld b, b                                       ; $57db: $40
    ld hl, sp+$08                                 ; $57dc: $f8 $08
    add b                                         ; $57de: $80
    ldh a, [rP1]                                  ; $57df: $f0 $00
    pop hl                                        ; $57e1: $e1
    ld e, a                                       ; $57e2: $5f
    nop                                           ; $57e3: $00
    add a                                         ; $57e4: $87
    ld bc, $0a0f                                  ; $57e5: $01 $0f $0a
    ld [bc], a                                    ; $57e8: $02
    rra                                           ; $57e9: $1f
    dec b                                         ; $57ea: $05
    ld a, $d0                                     ; $57eb: $3e $d0
    ld [$d0dd], sp                                ; $57ed: $08 $dd $d0
    ld e, b                                       ; $57f0: $58
    ld [$0002], sp                                ; $57f1: $08 $02 $00
    ld b, b                                       ; $57f4: $40
    nop                                           ; $57f5: $00
    ld e, b                                       ; $57f6: $58
    nop                                           ; $57f7: $00
    ret c                                         ; $57f8: $d8

    ld l, d                                       ; $57f9: $6a
    ld de, $5640                                  ; $57fa: $11 $40 $56
    ld h, b                                       ; $57fd: $60
    dec e                                         ; $57fe: $1d

Call_0cc_57ff:
    ld de, $1b41                                  ; $57ff: $11 $41 $1b
    ld de, $9706                                  ; $5802: $11 $06 $97
    add hl, bc                                    ; $5805: $09
    ret nz                                        ; $5806: $c0

    add hl, sp                                    ; $5807: $39
    ld a, a                                       ; $5808: $7f
    add b                                         ; $5809: $80
    ld b, d                                       ; $580a: $42
    ld bc, $10ff                                  ; $580b: $01 $ff $10
    inc b                                         ; $580e: $04
    add a                                         ; $580f: $87
    ld bc, $ff20                                  ; $5810: $01 $20 $ff
    nop                                           ; $5813: $00
    ld [bc], a                                    ; $5814: $02
    jr @+$81                                      ; $5815: $18 $7f

    nop                                           ; $5817: $00
    ccf                                           ; $5818: $3f
    add b                                         ; $5819: $80
    rra                                           ; $581a: $1f
    nop                                           ; $581b: $00
    ret nz                                        ; $581c: $c0

    rrca                                          ; $581d: $0f
    ldh [$e3], a                                  ; $581e: $e0 $e3
    nop                                           ; $5820: $00
    pop bc                                        ; $5821: $c1
    nop                                           ; $5822: $00
    call z, RST_00                                ; $5823: $cc $00 $00
    rst $20                                       ; $5826: $e7
    nop                                           ; $5827: $00

jr_0cc_5828:
    pop hl                                        ; $5828: $e1
    nop                                           ; $5829: $00
    ldh [rP1], a                                  ; $582a: $e0 $00
    ld a, [c]                                     ; $582c: $f2
    jr nc, jr_0cc_582f                            ; $582d: $30 $00

jr_0cc_582f:
    pop af                                        ; $582f: $f1
    ld e, $20                                     ; $5830: $1e $20
    ld b, $68                                     ; $5832: $06 $68
    cp $00                                        ; $5834: $fe $00
    ld hl, sp+$01                                 ; $5836: $f8 $01
    nop                                           ; $5838: $00
    ldh [rTAC], a                                 ; $5839: $e0 $07
    ret nz                                        ; $583b: $c0

    rra                                           ; $583c: $1f
    nop                                           ; $583d: $00
    ccf                                           ; $583e: $3f
    cp $00                                        ; $583f: $fe $00
    inc bc                                        ; $5841: $03
    ldh a, [rSB]                                  ; $5842: $f0 $01
    ret nz                                        ; $5844: $c0

    rrca                                          ; $5845: $0f
    nop                                           ; $5846: $00
    ccf                                           ; $5847: $3f
    add hl, hl                                    ; $5848: $29
    jr nc, jr_0cc_5855                            ; $5849: $30 $0a

    jr c, jr_0cc_584d                             ; $584b: $38 $00

jr_0cc_584d:
    rst $38                                       ; $584d: $ff
    nop                                           ; $584e: $00
    ld hl, sp+$00                                 ; $584f: $f8 $00
    rst $00                                       ; $5851: $c7
    xor a                                         ; $5852: $af
    rst $38                                       ; $5853: $ff
    ld e, a                                       ; $5854: $5f

jr_0cc_5855:
    add hl, bc                                    ; $5855: $09
    rst $38                                       ; $5856: $ff
    xor a                                         ; $5857: $af
    rst $38                                       ; $5858: $ff
    ld e, e                                       ; $5859: $5b
    inc b                                         ; $585a: $04
    nop                                           ; $585b: $00
    nop                                           ; $585c: $00
    nop                                           ; $585d: $00

jr_0cc_585e:
    ld [$a008], sp                                ; $585e: $08 $08 $a0
    ld d, c                                       ; $5861: $51
    ld b, b                                       ; $5862: $40
    nop                                           ; $5863: $00
    ld a, e                                       ; $5864: $7b
    ld [$ff1c], sp                                ; $5865: $08 $1c $ff
    ld a, $ff                                     ; $5868: $3e $ff
    ld [hl], e                                    ; $586a: $73
    nop                                           ; $586b: $00
    ld a, a                                       ; $586c: $7f
    jr c, @+$01                                   ; $586d: $38 $ff

    ld e, $ff                                     ; $586f: $1e $ff
    rra                                           ; $5871: $1f
    rst $38                                       ; $5872: $ff
    dec c                                         ; $5873: $0d
    ld a, [hl+]                                   ; $5874: $2a
    rst $38                                       ; $5875: $ff
    inc c                                         ; $5876: $0c
    ld l, a                                       ; $5877: $6f
    ld e, b                                       ; $5878: $58
    rlca                                          ; $5879: $07
    ld b, d                                       ; $587a: $42
    nop                                           ; $587b: $00
    ld sp, hl                                     ; $587c: $f9
    ld [bc], a                                    ; $587d: $02
    nop                                           ; $587e: $00
    ret nz                                        ; $587f: $c0

    jr nz, jr_0cc_5882                            ; $5880: $20 $00

jr_0cc_5882:
    add b                                         ; $5882: $80
    ld l, $00                                     ; $5883: $2e $00
    nop                                           ; $5885: $00
    nop                                           ; $5886: $00
    ld bc, $c300                                  ; $5887: $01 $00 $c3
    add a                                         ; $588a: $87
    ld h, e                                       ; $588b: $63
    jr jr_0cc_5895                                ; $588c: $18 $07

    ret nz                                        ; $588e: $c0

    ld bc, $85f0                                  ; $588f: $01 $f0 $85
    nop                                           ; $5892: $00
    cp l                                          ; $5893: $bd
    nop                                           ; $5894: $00

jr_0cc_5895:
    ld bc, $0868                                  ; $5895: $01 $68 $08
    nop                                           ; $5898: $00
    di                                            ; $5899: $f3
    nop                                           ; $589a: $00
    db $fc                                        ; $589b: $fc

jr_0cc_589c:
    db $d3                                        ; $589c: $d3
    jr nc, jr_0cc_585e                            ; $589d: $30 $bf

    nop                                           ; $589f: $00
    rst $08                                       ; $58a0: $cf
    ret c                                         ; $58a1: $d8

    ccf                                           ; $58a2: $3f
    jr @+$03                                      ; $58a3: $18 $01

    jr nz, jr_0cc_5828                            ; $58a5: $20 $81

    ld b, b                                       ; $58a7: $40
    jr jr_0cc_589c                                ; $58a8: $18 $f2

    jr z, jr_0cc_58b3                             ; $58aa: $28 $07

    add b                                         ; $58ac: $80
    ld bc, $f840                                  ; $58ad: $01 $40 $f8
    nop                                           ; $58b0: $00
    add hl, hl                                    ; $58b1: $29
    db $fc                                        ; $58b2: $fc

jr_0cc_58b3:
    nop                                           ; $58b3: $00
    ldh [$03], a                                  ; $58b4: $e0 $03
    nop                                           ; $58b6: $00
    rra                                           ; $58b7: $1f
    nop                                           ; $58b8: $00
    nop                                           ; $58b9: $00
    rst $38                                       ; $58ba: $ff
    db $fc                                        ; $58bb: $fc
    nop                                           ; $58bc: $00
    ld hl, sp+$03                                 ; $58bd: $f8 $03
    ldh [rTAC], a                                 ; $58bf: $e0 $07
    nop                                           ; $58c1: $00
    sub b                                         ; $58c2: $90
    rra                                           ; $58c3: $1f
    ld h, b                                       ; $58c4: $60
    ld a, a                                       ; $58c5: $7f
    ret nc                                        ; $58c6: $d0

    rst $38                                       ; $58c7: $ff
    ld h, b                                       ; $58c8: $60
    rst $38                                       ; $58c9: $ff
    ld b, l                                       ; $58ca: $45
    ret nc                                        ; $58cb: $d0

    db $eb                                        ; $58cc: $eb
    ld [$00f1], sp                                ; $58cd: $08 $f1 $00
    rst $08                                       ; $58d0: $cf
    ldh [$38], a                                  ; $58d1: $e0 $38
    ld b, $02                                     ; $58d3: $06 $02
    nop                                           ; $58d5: $00
    ld de, $ff3f                                  ; $58d6: $11 $3f $ff
    ld a, a                                       ; $58d9: $7f
    ld a, b                                       ; $58da: $78
    db $10                                        ; $58db: $10
    cp $ff                                        ; $58dc: $fe $ff
    inc a                                         ; $58de: $3c
    rra                                           ; $58df: $1f
    ld sp, $fd00                                  ; $58e0: $31 $00 $fd
    rst $38                                       ; $58e3: $ff
    ld a, [$05ff]                                 ; $58e4: $fa $ff $05
    rlca                                          ; $58e7: $07
    ld hl, sp-$08                                 ; $58e8: $f8 $f8
    or b                                          ; $58ea: $b0
    inc b                                         ; $58eb: $04
    ld hl, $3bc7                                  ; $58ec: $21 $c7 $3b
    ld bc, $10a0                                  ; $58ef: $01 $a0 $10
    dec b                                         ; $58f2: $05
    rst $38                                       ; $58f3: $ff
    ld [de], a                                    ; $58f4: $12
    rst $38                                       ; $58f5: $ff
    nop                                           ; $58f6: $00
    dec b                                         ; $58f7: $05
    ld a, a                                       ; $58f8: $7f
    ld a, [bc]                                    ; $58f9: $0a
    adc a                                         ; $58fa: $8f
    ld bc, $00e3                                  ; $58fb: $01 $e3 $00
    db $fc                                        ; $58fe: $fc
    inc bc                                        ; $58ff: $03
    dec b                                         ; $5900: $05
    rst $38                                       ; $5901: $ff
    ld [bc], a                                    ; $5902: $02
    rst $38                                       ; $5903: $ff
    rra                                           ; $5904: $1f
    nop                                           ; $5905: $00
    ld e, c                                       ; $5906: $59
    ld bc, $4155                                  ; $5907: $01 $55 $41
    db $fd                                        ; $590a: $fd

jr_0cc_590b:
    add hl, bc                                    ; $590b: $09
    add hl, de                                    ; $590c: $19
    db $10                                        ; $590d: $10
    ld e, b                                       ; $590e: $58
    ld [de], a                                    ; $590f: $12
    ld c, b                                       ; $5910: $48
    sub b                                         ; $5911: $90
    add hl, de                                    ; $5912: $19
    inc l                                         ; $5913: $2c
    ld bc, $1991                                  ; $5914: $01 $91 $19
    di                                            ; $5917: $f3
    dec sp                                        ; $5918: $3b
    add hl, hl                                    ; $5919: $29
    ld e, b                                       ; $591a: $58
    xor b                                         ; $591b: $a8
    sbc h                                         ; $591c: $9c
    nop                                           ; $591d: $00
    ld l, b                                       ; $591e: $68
    and b                                         ; $591f: $a0
    nop                                           ; $5920: $00
    ret nz                                        ; $5921: $c0

    add hl, bc                                    ; $5922: $09
    ldh a, [rP1]                                  ; $5923: $f0 $00
    nop                                           ; $5925: $00
    ld c, h                                       ; $5926: $4c
    rrca                                          ; $5927: $0f
    ld d, b                                       ; $5928: $50
    jr c, jr_0cc_590b                             ; $5929: $38 $e0

jr_0cc_592b:
    nop                                           ; $592b: $00
    ret z                                         ; $592c: $c8

jr_0cc_592d:
    ld [$29b9], sp                                ; $592d: $08 $b9 $29
    add b                                         ; $5930: $80
    ld bc, $0020                                  ; $5931: $01 $20 $00
    ld a, c                                       ; $5934: $79
    ld b, b                                       ; $5935: $40
    ld sp, $0080                                  ; $5936: $31 $80 $00
    pop bc                                        ; $5939: $c1
    ldh [$fc], a                                  ; $593a: $e0 $fc
    ld [bc], a                                    ; $593c: $02
    ret nc                                        ; $593d: $d0

    ei                                            ; $593e: $fb
    ld h, b                                       ; $593f: $60
    rst $20                                       ; $5940: $e7
    sub b                                         ; $5941: $90
    sbc a                                         ; $5942: $9f
    ldh [$28], a                                  ; $5943: $e0 $28
    and e                                         ; $5945: $a3

jr_0cc_5946:
    nop                                           ; $5946: $00
    db $e3                                        ; $5947: $e3
    ld b, c                                       ; $5948: $41
    pop bc                                        ; $5949: $c1
    adc h                                         ; $594a: $8c
    call z, $e743                                 ; $594b: $cc $43 $e7
    and c                                         ; $594e: $a1
    ld bc, $40e1                                  ; $594f: $01 $e1 $40
    ldh [rSC], a                                  ; $5952: $e0 $02
    ld [bc], a                                    ; $5954: $02
    and b                                         ; $5955: $a0
    ldh a, [$c8]                                  ; $5956: $f0 $c8
    ld [$04ed], sp                                ; $5958: $08 $ed $04
    jr z, jr_0cc_592d                             ; $595b: $28 $d0

    db $10                                        ; $595d: $10
    ld de, $0c0a                                  ; $595e: $11 $0a $0c
    ret nc                                        ; $5961: $d0

    nop                                           ; $5962: $00
    add b                                         ; $5963: $80
    jr nz, jr_0cc_5977                            ; $5964: $20 $11

    call nz, $1f00                                ; $5966: $c4 $00 $1f
    dec b                                         ; $5969: $05
    ld a, a                                       ; $596a: $7f
    ld [bc], a                                    ; $596b: $02
    ret nc                                        ; $596c: $d0

jr_0cc_596d:
    jr nc, @-$32                                  ; $596d: $30 $cc

    ld c, c                                       ; $596f: $49
    ld c, e                                       ; $5970: $4b
    ld a, [bc]                                    ; $5971: $0a
    sbc b                                         ; $5972: $98
    jr @-$5e                                      ; $5973: $18 $a0

    jr c, jr_0cc_592b                             ; $5975: $38 $b4

jr_0cc_5977:
    ld e, a                                       ; $5977: $5f
    ld [de], a                                    ; $5978: $12
    ldh a, [$a0]                                  ; $5979: $f0 $a0
    jr c, jr_0cc_59ec                             ; $597b: $38 $6f

    ld [bc], a                                    ; $597d: $02
    ldh [$a0], a                                  ; $597e: $e0 $a0
    ld c, b                                       ; $5980: $48
    nop                                           ; $5981: $00
    add a                                         ; $5982: $87
    db $eb                                        ; $5983: $eb
    ld a, e                                       ; $5984: $7b
    ld [bc], a                                    ; $5985: $02
    ld [hl-], a                                   ; $5986: $32
    ld c, d                                       ; $5987: $4a
    ld h, c                                       ; $5988: $61
    ld a, [hl+]                                   ; $5989: $2a
    ld sp, hl                                     ; $598a: $f9
    add l                                         ; $598b: $85
    ld [bc], a                                    ; $598c: $02
    rst $18                                       ; $598d: $df
    ld e, b                                       ; $598e: $58
    ld [bc], a                                    ; $598f: $02
    ld d, b                                       ; $5990: $50
    ld d, d                                       ; $5991: $52
    nop                                           ; $5992: $00
    rlca                                          ; $5993: $07
    ret nz                                        ; $5994: $c0

    ld d, c                                       ; $5995: $51
    ld sp, hl                                     ; $5996: $f9
    and c                                         ; $5997: $a1
    ld sp, hl                                     ; $5998: $f9
    ld b, b                                       ; $5999: $40
    ret nz                                        ; $599a: $c0

    ld l, d                                       ; $599b: $6a
    add b                                         ; $599c: $80
    db $10                                        ; $599d: $10
    ld [de], a                                    ; $599e: $12
    rrca                                          ; $599f: $0f

jr_0cc_59a0:
    ld [bc], a                                    ; $59a0: $02
    nop                                           ; $59a1: $00
    or b                                          ; $59a2: $b0
    jr c, jr_0cc_59a0                             ; $59a3: $38 $fb

    add b                                         ; $59a5: $80
    add hl, bc                                    ; $59a6: $09
    nop                                           ; $59a7: $00
    sbc b                                         ; $59a8: $98
    nop                                           ; $59a9: $00
    ld c, d                                       ; $59aa: $4a
    add b                                         ; $59ab: $80

Jump_0cc_59ac:
    ccf                                           ; $59ac: $3f
    sbc d                                         ; $59ad: $9a
    ld [bc], a                                    ; $59ae: $02
    or c                                          ; $59af: $b1
    ld [hl+], a                                   ; $59b0: $22
    ld bc, $07f8                                  ; $59b1: $01 $f8 $07
    ld bc, $1fe0                                  ; $59b4: $01 $e0 $1f
    ret nz                                        ; $59b7: $c0

    ccf                                           ; $59b8: $3f
    nop                                           ; $59b9: $00
    ldh a, [$03]                                  ; $59ba: $f0 $03
    rra                                           ; $59bc: $1f
    ld a, [hl+]                                   ; $59bd: $2a
    call nz, $1afa                                ; $59be: $c4 $fa $1a
    ret nc                                        ; $59c1: $d0

    jr jr_0cc_5946                                ; $59c2: $18 $82

    rrca                                          ; $59c4: $0f
    pop hl                                        ; $59c5: $e1
    jr jr_0cc_59e8                                ; $59c6: $18 $20

    ldh [$fc], a                                  ; $59c8: $e0 $fc
    inc bc                                        ; $59ca: $03
    db $d3                                        ; $59cb: $d3
    ld hl, sp+$67                                 ; $59cc: $f8 $67
    ldh [$9f], a                                  ; $59ce: $e0 $9f
    add b                                         ; $59d0: $80
    sub l                                         ; $59d1: $95
    jr z, jr_0cc_59d9                             ; $59d2: $28 $05

    jr c, @-$01                                   ; $59d4: $38 $fd

    db $10                                        ; $59d6: $10
    ld b, b                                       ; $59d7: $40
    ld [de], a                                    ; $59d8: $12

jr_0cc_59d9:
    ld b, b                                       ; $59d9: $40
    ldh a, [$28]                                  ; $59da: $f0 $28
    push de                                       ; $59dc: $d5
    ld [hl-], a                                   ; $59dd: $32
    or b                                          ; $59de: $b0
    ld b, d                                       ; $59df: $42
    and b                                         ; $59e0: $a0

jr_0cc_59e1:
    ld [$4a07], sp                                ; $59e1: $08 $07 $4a
    jr nc, jr_0cc_596d                            ; $59e4: $30 $87

    ld c, d                                       ; $59e6: $4a
    ld a, e                                       ; $59e7: $7b

jr_0cc_59e8:
    ld hl, sp+$00                                 ; $59e8: $f8 $00
    ret nz                                        ; $59ea: $c0

    rlca                                          ; $59eb: $07

jr_0cc_59ec:
    rrca                                          ; $59ec: $0f
    ld c, e                                       ; $59ed: $4b
    jr z, jr_0cc_59fb                             ; $59ee: $28 $0b

    and b                                         ; $59f0: $a0
    ld c, d                                       ; $59f1: $4a
    nop                                           ; $59f2: $00
    add a                                         ; $59f3: $87
    add b                                         ; $59f4: $80
    ld sp, hl                                     ; $59f5: $f9
    ld hl, sp-$01                                 ; $59f6: $f8 $ff
    rst $38                                       ; $59f8: $ff
    ld hl, sp-$08                                 ; $59f9: $f8 $f8

jr_0cc_59fb:
    ld [$c7c7], sp                                ; $59fb: $08 $c7 $c7
    ccf                                           ; $59fe: $3f
    ccf                                           ; $59ff: $3f
    jp hl                                         ; $5a00: $e9


    ld c, d                                       ; $5a01: $4a
    ccf                                           ; $5a02: $3f
    ccf                                           ; $5a03: $3f
    rst $00                                       ; $5a04: $c7
    inc b                                         ; $5a05: $04
    rst $00                                       ; $5a06: $c7
    ld sp, hl                                     ; $5a07: $f9
    ld sp, hl                                     ; $5a08: $f9
    cp $fe                                        ; $5a09: $fe $fe
    db $fd                                        ; $5a0b: $fd
    ld a, [hl-]                                   ; $5a0c: $3a
    cp $fe                                        ; $5a0d: $fe $fe
    ld [bc], a                                    ; $5a0f: $02
    ld sp, hl                                     ; $5a10: $f9
    ld sp, hl                                     ; $5a11: $f9
    rst $20                                       ; $5a12: $e7
    rst $20                                       ; $5a13: $e7
    rst $18                                       ; $5a14: $df
    rst $18                                       ; $5a15: $df
    jr z, jr_0cc_5a60                             ; $5a16: $28 $48

    ld hl, sp+$10                                 ; $5a18: $f8 $10
    ld hl, sp+$07                                 ; $5a1a: $f8 $07
    rlca                                          ; $5a1c: $07
    rra                                           ; $5a1d: $1f
    dec bc                                        ; $5a1e: $0b
    ld a, a                                       ; $5a1f: $7f
    ld a, a                                       ; $5a20: $7f
    add b                                         ; $5a21: $80
    add b                                         ; $5a22: $80
    jp nz, $7326                                  ; $5a23: $c2 $26 $73

    add hl, sp                                    ; $5a26: $39
    ld d, e                                       ; $5a27: $53
    ldh a, [$f0]                                  ; $5a28: $f0 $f0
    rrca                                          ; $5a2a: $0f
    rrca                                          ; $5a2b: $0f
    ld c, c                                       ; $5a2c: $49
    dec hl                                        ; $5a2d: $2b
    nop                                           ; $5a2e: $00
    inc b                                         ; $5a2f: $04
    sub c                                         ; $5a30: $91
    inc bc                                        ; $5a31: $03
    ld b, b                                       ; $5a32: $40
    rst $38                                       ; $5a33: $ff
    ld bc, $1960                                  ; $5a34: $01 $60 $19
    ldh [$ee], a                                  ; $5a37: $e0 $ee
    ldh a, [$e4]                                  ; $5a39: $f0 $e4
    ld sp, hl                                     ; $5a3b: $f9
    ld b, b                                       ; $5a3c: $40
    pop af                                        ; $5a3d: $f1
    rla                                           ; $5a3e: $17
    jr nc, jr_0cc_59e1                            ; $5a3f: $30 $a0

    nop                                           ; $5a41: $00
    ld b, h                                       ; $5a42: $44
    nop                                           ; $5a43: $00
    xor h                                         ; $5a44: $ac
    nop                                           ; $5a45: $00
    nop                                           ; $5a46: $00
    ld d, b                                       ; $5a47: $50
    nop                                           ; $5a48: $00
    xor d                                         ; $5a49: $aa
    nop                                           ; $5a4a: $00
    ret nc                                        ; $5a4b: $d0

    nop                                           ; $5a4c: $00
    xor b                                         ; $5a4d: $a8
    inc bc                                        ; $5a4e: $03
    nop                                           ; $5a4f: $00
    ld bc, $17ff                                  ; $5a50: $01 $ff $17

jr_0cc_5a53:
    add sp, $03                                   ; $5a53: $e8 $03
    inc a                                         ; $5a55: $3c
    ld [bc], a                                    ; $5a56: $02
    dec e                                         ; $5a57: $1d
    nop                                           ; $5a58: $00
    ld b, b                                       ; $5a59: $40
    sbc a                                         ; $5a5a: $9f

jr_0cc_5a5b:
    and b                                         ; $5a5b: $a0
    rst $08                                       ; $5a5c: $cf
    ld h, e                                       ; $5a5d: $63
    rst $08                                       ; $5a5e: $cf
    and l                                         ; $5a5f: $a5

jr_0cc_5a60:
    rst $08                                       ; $5a60: $cf
    nop                                           ; $5a61: $00
    and d                                         ; $5a62: $a2
    ld c, a                                       ; $5a63: $4f
    rst $38                                       ; $5a64: $ff
    rst $38                                       ; $5a65: $ff
    db $fd                                        ; $5a66: $fd
    cp $f8                                        ; $5a67: $fe $f8
    rst $38                                       ; $5a69: $ff
    nop                                           ; $5a6a: $00
    xor $e1                                       ; $5a6b: $ee $e1
    db $d3                                        ; $5a6d: $d3
    call nz, $cad5                                ; $5a6e: $c4 $d5 $ca
    jp nz, Jump_000_00dd                          ; $5a71: $c2 $dd $00

    push de                                       ; $5a74: $d5
    jp z, $ffff                                   ; $5a75: $ca $ff $ff

    sbc h                                         ; $5a78: $9c
    ld bc, $9866                                  ; $5a79: $01 $66 $98
    nop                                           ; $5a7c: $00
    nop                                           ; $5a7d: $00
    rst $38                                       ; $5a7e: $ff
    adc b                                         ; $5a7f: $88
    ld [hl], a                                    ; $5a80: $77
    ld b, b                                       ; $5a81: $40
    cp a                                          ; $5a82: $bf
    xor b                                         ; $5a83: $a8
    ld d, a                                       ; $5a84: $57
    jr nz, jr_0cc_5a5b                            ; $5a85: $20 $d4

    dec hl                                        ; $5a87: $2b
    ld h, b                                       ; $5a88: $60
    ld [$3f1f], sp                                ; $5a89: $08 $1f $3f
    add a                                         ; $5a8c: $87
    ld e, a                                       ; $5a8d: $5f
    ld h, c                                       ; $5a8e: $61
    nop                                           ; $5a8f: $00
    add e                                         ; $5a90: $83
    jr z, jr_0cc_5a53                             ; $5a91: $28 $c0

    ld d, [hl]                                    ; $5a93: $56
    xor b                                         ; $5a94: $a8
    ld a, [bc]                                    ; $5a95: $0a
    db $f4                                        ; $5a96: $f4
    ld b, b                                       ; $5a97: $40
    nop                                           ; $5a98: $00
    nop                                           ; $5a99: $00
    sbc $00                                       ; $5a9a: $de $00
    rlca                                          ; $5a9c: $07
    nop                                           ; $5a9d: $00
    inc bc                                        ; $5a9e: $03
    nop                                           ; $5a9f: $00
    sub a                                         ; $5aa0: $97
    nop                                           ; $5aa1: $00
    ld bc, $030e                                  ; $5aa2: $01 $0e $03
    rla                                           ; $5aa5: $17
    inc bc                                        ; $5aa6: $03
    ld l, [hl]                                    ; $5aa7: $6e
    inc bc                                        ; $5aa8: $03
    add a                                         ; $5aa9: $87
    nop                                           ; $5aaa: $00
    jr c, jr_0cc_5acc                             ; $5aab: $38 $1f

    ld h, b                                       ; $5aad: $60
    ld a, $c0                                     ; $5aae: $3e $c0
    rlca                                          ; $5ab0: $07
    ld hl, sp-$05                                 ; $5ab1: $f8 $fb
    nop                                           ; $5ab3: $00
    inc b                                         ; $5ab4: $04
    ld a, c                                       ; $5ab5: $79
    add [hl]                                      ; $5ab6: $86
    ld a, c                                       ; $5ab7: $79
    add [hl]                                      ; $5ab8: $86
    ld [c], a                                     ; $5ab9: $e2
    dec e                                         ; $5aba: $1d
    ld a, [bc]                                    ; $5abb: $0a
    nop                                           ; $5abc: $00
    jr nc, jr_0cc_5ac4                            ; $5abd: $30 $05

    jr jr_0cc_5ac1                                ; $5abf: $18 $00

jr_0cc_5ac1:
    ld c, $01                                     ; $5ac1: $0e $01
    rlca                                          ; $5ac3: $07

jr_0cc_5ac4:
    add [hl]                                      ; $5ac4: $86
    inc c                                         ; $5ac5: $0c
    inc bc                                        ; $5ac6: $03
    ld b, e                                       ; $5ac7: $43
    ld bc, $74a1                                  ; $5ac8: $01 $a1 $74
    nop                                           ; $5acb: $00

jr_0cc_5acc:
    and b                                         ; $5acc: $a0
    ld l, b                                       ; $5acd: $68
    inc b                                         ; $5ace: $04
    ld bc, $a000                                  ; $5acf: $01 $00 $a0
    ld bc, $0042                                  ; $5ad2: $01 $42 $00
    and b                                         ; $5ad5: $a0
    nop                                           ; $5ad6: $00
    pop de                                        ; $5ad7: $d1
    nop                                           ; $5ad8: $00
    nop                                           ; $5ad9: $00
    add sp, $00                                   ; $5ada: $e8 $00
    push af                                       ; $5adc: $f5
    nop                                           ; $5add: $00
    db $fd                                        ; $5ade: $fd
    nop                                           ; $5adf: $00
    cp d                                          ; $5ae0: $ba
    adc a                                         ; $5ae1: $8f
    nop                                           ; $5ae2: $00
    ld [hl], b                                    ; $5ae3: $70
    nop                                           ; $5ae4: $00
    adc [hl]                                      ; $5ae5: $8e
    ld [hl], b                                    ; $5ae6: $70
    ret nz                                        ; $5ae7: $c0

    ccf                                           ; $5ae8: $3f
    xor b                                         ; $5ae9: $a8
    ld a, a                                       ; $5aea: $7f

jr_0cc_5aeb:
    nop                                           ; $5aeb: $00
    call nc, $f87f                                ; $5aec: $d4 $7f $f8
    ld a, c                                       ; $5aef: $79

jr_0cc_5af0:
    ld c, h                                       ; $5af0: $4c
    sbc b                                         ; $5af1: $98
    ld a, [$00ff]                                 ; $5af2: $fa $ff $00
    dec e                                         ; $5af5: $1d
    ccf                                           ; $5af6: $3f
    ld c, [hl]                                    ; $5af7: $4e
    rra                                           ; $5af8: $1f
    daa                                           ; $5af9: $27
    rst $08                                       ; $5afa: $cf
    ld sp, $00c7                                  ; $5afb: $31 $c7 $00
    db $10                                        ; $5afe: $10
    pop hl                                        ; $5aff: $e1
    ld [$86f0], sp                                ; $5b00: $08 $f0 $86
    ld a, b                                       ; $5b03: $78
    inc l                                         ; $5b04: $2c
    db $d3                                        ; $5b05: $d3
    nop                                           ; $5b06: $00
    rla                                           ; $5b07: $17
    add sp, -$75                                  ; $5b08: $e8 $8b
    db $f4                                        ; $5b0a: $f4
    ld b, a                                       ; $5b0b: $47
    ld hl, sp-$3e                                 ; $5b0c: $f8 $c2
    db $fd                                        ; $5b0e: $fd
    nop                                           ; $5b0f: $00
    and c                                         ; $5b10: $a1
    cp $70                                        ; $5b11: $fe $70
    rst $38                                       ; $5b13: $ff
    jr z, jr_0cc_5b95                             ; $5b14: $28 $7f

    pop hl                                        ; $5b16: $e1
    inc bc                                        ; $5b17: $03
    nop                                           ; $5b18: $00
    inc [hl]                                      ; $5b19: $34
    pop bc                                        ; $5b1a: $c1
    sbc $21                                       ; $5b1b: $de $21
    and c                                         ; $5b1d: $a1
    ld c, $d0                                     ; $5b1e: $0e $d0
    rlca                                          ; $5b20: $07
    nop                                           ; $5b21: $00
    ld l, d                                       ; $5b22: $6a
    add c                                         ; $5b23: $81
    ld a, c                                       ; $5b24: $79
    add [hl]                                      ; $5b25: $86
    and c                                         ; $5b26: $a1
    ld e, [hl]                                    ; $5b27: $5e
    db $fc                                        ; $5b28: $fc
    rst $38                                       ; $5b29: $ff
    nop                                           ; $5b2a: $00
    db $fc                                        ; $5b2b: $fc
    rst $38                                       ; $5b2c: $ff
    inc a                                         ; $5b2d: $3c
    rst $38                                       ; $5b2e: $ff
    sbc h                                         ; $5b2f: $9c
    ld a, a                                       ; $5b30: $7f
    ld c, h                                       ; $5b31: $4c
    cp a                                          ; $5b32: $bf
    nop                                           ; $5b33: $00
    ld [$68ff], sp                                ; $5b34: $08 $ff $68
    sbc a                                         ; $5b37: $9f
    ld d, b                                       ; $5b38: $50
    xor [hl]                                      ; $5b39: $ae
    xor b                                         ; $5b3a: $a8
    nop                                           ; $5b3b: $00
    ld b, l                                       ; $5b3c: $45
    push de                                       ; $5b3d: $d5
    db $ec                                        ; $5b3e: $ec
    nop                                           ; $5b3f: $00
    ld d, h                                       ; $5b40: $54
    nop                                           ; $5b41: $00
    xor b                                         ; $5b42: $a8
    inc b                                         ; $5b43: $04
    nop                                           ; $5b44: $00
    and b                                         ; $5b45: $a0
    ld hl, sp+$00                                 ; $5b46: $f8 $00
    ld [$453a], sp                                ; $5b48: $08 $3a $45
    ld d, l                                       ; $5b4b: $55

jr_0cc_5b4c:
    xor d                                         ; $5b4c: $aa
    inc h                                         ; $5b4d: $24
    ld c, c                                       ; $5b4e: $49
    db $fd                                        ; $5b4f: $fd
    cp $fe                                        ; $5b50: $fe $fe
    nop                                           ; $5b52: $00
    db $fd                                        ; $5b53: $fd
    db $fc                                        ; $5b54: $fc
    rst $38                                       ; $5b55: $ff
    ld hl, sp-$09                                 ; $5b56: $f8 $f7
    db $fc                                        ; $5b58: $fc
    db $e3                                        ; $5b59: $e3
    ldh a, [rP1]                                  ; $5b5a: $f0 $00
    rst $08                                       ; $5b5c: $cf
    add sp, -$29                                  ; $5b5d: $e8 $d7
    db $f4                                        ; $5b5f: $f4
    res 3, e                                      ; $5b60: $cb $9b
    inc a                                         ; $5b62: $3c
    sub h                                         ; $5b63: $94
    nop                                           ; $5b64: $00
    jr c, jr_0cc_5af0                             ; $5b65: $38 $89

    jr nc, jr_0cc_5aeb                            ; $5b67: $30 $82

    ld sp, $21d6                                  ; $5b69: $31 $d6 $21
    xor c                                         ; $5b6c: $a9
    nop                                           ; $5b6d: $00
    ld b, [hl]                                    ; $5b6e: $46
    ld [hl], d                                    ; $5b6f: $72
    adc l                                         ; $5b70: $8d
    ldh [$9f], a                                  ; $5b71: $e0 $9f
    ld c, [hl]                                    ; $5b73: $4e
    adc b                                         ; $5b74: $88
    dec l                                         ; $5b75: $2d
    nop                                           ; $5b76: $00
    ld [$4006], sp                                ; $5b77: $08 $06 $40
    ld d, b                                       ; $5b7a: $50
    xor a                                         ; $5b7b: $af
    xor d                                         ; $5b7c: $aa
    ld d, l                                       ; $5b7d: $55
    ld d, l                                       ; $5b7e: $55
    nop                                           ; $5b7f: $00
    xor d                                         ; $5b80: $aa
    add b                                         ; $5b81: $80
    ld a, a                                       ; $5b82: $7f
    inc e                                         ; $5b83: $1c
    rst $38                                       ; $5b84: $ff
    ld [bc], a                                    ; $5b85: $02
    inc e                                         ; $5b86: $1c
    ld c, c                                       ; $5b87: $49
    nop                                           ; $5b88: $00
    ld b, $a0                                     ; $5b89: $06 $a0
    ld bc, $00d6                                  ; $5b8b: $01 $d6 $00
    ld a, a                                       ; $5b8e: $7f
    add b                                         ; $5b8f: $80
    ld a, l                                       ; $5b90: $7d
    nop                                           ; $5b91: $00
    add d                                         ; $5b92: $82
    ld h, h                                       ; $5b93: $64
    sbc b                                         ; $5b94: $98

jr_0cc_5b95:
    or l                                          ; $5b95: $b5
    ldh [rNR10], a                                ; $5b96: $e0 $10
    ccf                                           ; $5b98: $3f
    sbc h                                         ; $5b99: $9c
    nop                                           ; $5b9a: $00
    rra                                           ; $5b9b: $1f
    add b                                         ; $5b9c: $80
    inc c                                         ; $5b9d: $0c
    ret nz                                        ; $5b9e: $c0

    jr nc, jr_0cc_5ba1                            ; $5b9f: $30 $00

jr_0cc_5ba1:
    ret nz                                        ; $5ba1: $c0

    dec d                                         ; $5ba2: $15
    add b                                         ; $5ba3: $80
    ld d, h                                       ; $5ba4: $54
    ld bc, $005d                                  ; $5ba5: $01 $5d $00
    db $10                                        ; $5ba8: $10
    db $ec                                        ; $5ba9: $ec
    ld b, $98                                     ; $5baa: $06 $98
    ld c, $00                                     ; $5bac: $0e $00
    db $10                                        ; $5bae: $10
    ld e, h                                       ; $5baf: $5c
    jr nz, jr_0cc_5b4c                            ; $5bb0: $20 $9a

    ld h, b                                       ; $5bb2: $60
    sbc l                                         ; $5bb3: $9d
    ld h, b                                       ; $5bb4: $60
    sbc d                                         ; $5bb5: $9a
    nop                                           ; $5bb6: $00
    ld h, b                                       ; $5bb7: $60
    inc e                                         ; $5bb8: $1c
    ldh [$63], a                                  ; $5bb9: $e0 $63
    ld hl, sp+$77                                 ; $5bbb: $f8 $77
    ld hl, sp+$20                                 ; $5bbd: $f8 $20
    nop                                           ; $5bbf: $00
    ld a, a                                       ; $5bc0: $7f
    scf                                           ; $5bc1: $37
    ld a, b                                       ; $5bc2: $78
    inc hl                                        ; $5bc3: $23
    ld a, h                                       ; $5bc4: $7c
    inc sp                                        ; $5bc5: $33
    ld a, h                                       ; $5bc6: $7c
    dec hl                                        ; $5bc7: $2b
    nop                                           ; $5bc8: $00
    ld a, h                                       ; $5bc9: $7c
    ld [de], a                                    ; $5bca: $12
    ld a, h                                       ; $5bcb: $7c
    pop af                                        ; $5bcc: $f1
    ld a, [hl]                                    ; $5bcd: $7e
    pop de                                        ; $5bce: $d1
    cp $e3                                        ; $5bcf: $fe $e3
    nop                                           ; $5bd1: $00
    db $fc                                        ; $5bd2: $fc
    jp $cbfc                                      ; $5bd3: $c3 $fc $cb


    db $f4                                        ; $5bd6: $f4
    adc a                                         ; $5bd7: $8f
    ldh a, [rTMA]                                 ; $5bd8: $f0 $06
    nop                                           ; $5bda: $00
    ld hl, sp+$0d                                 ; $5bdb: $f8 $0d
    ldh a, [$0b]                                  ; $5bdd: $f0 $0b
    nop                                           ; $5bdf: $00
    rla                                           ; $5be0: $17
    nop                                           ; $5be1: $00
    rrca                                          ; $5be2: $0f
    add b                                         ; $5be3: $80
    ld a, $01                                     ; $5be4: $3e $01
    adc l                                         ; $5be6: $8d
    inc bc                                        ; $5be7: $03
    cpl                                           ; $5be8: $2f
    inc bc                                        ; $5be9: $03
    ld e, $07                                     ; $5bea: $1e $07
    cp l                                          ; $5bec: $bd
    nop                                           ; $5bed: $00
    rlca                                          ; $5bee: $07
    ld a, [$f5e5]                                 ; $5bef: $fa $e5 $f5
    ld [$f6f9], a                                 ; $5bf2: $ea $f9 $f6
    db $fc                                        ; $5bf5: $fc
    nop                                           ; $5bf6: $00
    di                                            ; $5bf7: $f3
    add sp, -$09                                  ; $5bf8: $e8 $f7
    call $98e2                                    ; $5bfa: $cd $e2 $98
    rst $00                                       ; $5bfd: $c7
    dec a                                         ; $5bfe: $3d
    nop                                           ; $5bff: $00
    add d                                         ; $5c00: $82
    ret nz                                        ; $5c01: $c0

    ccf                                           ; $5c02: $3f
    add b                                         ; $5c03: $80
    ld a, a                                       ; $5c04: $7f
    nop                                           ; $5c05: $00
    rst $38                                       ; $5c06: $ff
    nop                                           ; $5c07: $00
    nop                                           ; $5c08: $00
    rst $38                                       ; $5c09: $ff
    add c                                         ; $5c0a: $81
    rst $38                                       ; $5c0b: $ff
    dec b                                         ; $5c0c: $05
    rst $38                                       ; $5c0d: $ff
    adc e                                         ; $5c0e: $8b
    cp $55                                        ; $5c0f: $fe $55
    nop                                           ; $5c11: $00
    cp $30                                        ; $5c12: $fe $30
    ldh [rSVBK], a                                ; $5c14: $e0 $70
    ret nz                                        ; $5c16: $c0

    ld l, b                                       ; $5c17: $68
    ret nz                                        ; $5c18: $c0

    ret nc                                        ; $5c19: $d0

    ld [$6080], sp                                ; $5c1a: $08 $80 $60
    add b                                         ; $5c1d: $80
    and h                                         ; $5c1e: $a4
    add $01                                       ; $5c1f: $c6 $01
    and b                                         ; $5c21: $a0
    nop                                           ; $5c22: $00
    ld [$0000], a                                 ; $5c23: $ea $00 $00
    ld [hl], a                                    ; $5c26: $77
    add b                                         ; $5c27: $80
    ld e, a                                       ; $5c28: $5f
    jr nz, jr_0cc_5c35                            ; $5c29: $20 $0a

    rla                                           ; $5c2b: $17
    dec l                                         ; $5c2c: $2d
    nop                                           ; $5c2d: $00
    rra                                           ; $5c2e: $1f
    ld a, [de]                                    ; $5c2f: $1a
    ccf                                           ; $5c30: $3f
    dec e                                         ; $5c31: $1d
    ld a, a                                       ; $5c32: $7f
    sbc [hl]                                      ; $5c33: $9e
    ld a, a                                       ; $5c34: $7f

jr_0cc_5c35:
    push af                                       ; $5c35: $f5
    nop                                           ; $5c36: $00
    nop                                           ; $5c37: $00
    jp c, Jump_0cc_7d00                           ; $5c38: $da $00 $7d

    add b                                         ; $5c3b: $80
    ccf                                           ; $5c3c: $3f
    ret nz                                        ; $5c3d: $c0

    ld c, $00                                     ; $5c3e: $0e $00
    ld [hl], b                                    ; $5c40: $70
    add a                                         ; $5c41: $87
    jr jr_0cc_5ca5                                ; $5c42: $18 $61

    add [hl]                                      ; $5c44: $86
    jr nc, jr_0cc_5c88                            ; $5c45: $30 $41

    and b                                         ; $5c47: $a0
    nop                                           ; $5c48: $00
    rst $38                                       ; $5c49: $ff
    nop                                           ; $5c4a: $00
    db $fc                                        ; $5c4b: $fc
    ld bc, $03f8                                  ; $5c4c: $01 $f8 $03
    ldh a, [rNR21]                                ; $5c4f: $f0 $16
    nop                                           ; $5c51: $00
    ldh [rNR42], a                                ; $5c52: $e0 $21
    ret nz                                        ; $5c54: $c0

    ld b, b                                       ; $5c55: $40
    add b                                         ; $5c56: $80
    ld [bc], a                                    ; $5c57: $02
    add b                                         ; $5c58: $80
    ld c, d                                       ; $5c59: $4a
    nop                                           ; $5c5a: $00
    cp h                                          ; $5c5b: $bc
    ld bc, $090e                                  ; $5c5c: $01 $0e $09
    ld e, $05                                     ; $5c5f: $1e $05
    ld e, $04                                     ; $5c61: $1e $04
    nop                                           ; $5c63: $00
    rlca                                          ; $5c64: $07
    inc b                                         ; $5c65: $04
    rrca                                          ; $5c66: $0f
    ld [bc], a                                    ; $5c67: $02
    rrca                                          ; $5c68: $0f
    ld [bc], a                                    ; $5c69: $02
    ccf                                           ; $5c6a: $3f
    rst $28                                       ; $5c6b: $ef
    ld [bc], a                                    ; $5c6c: $02
    rra                                           ; $5c6d: $1f
    rst $18                                       ; $5c6e: $df
    ccf                                           ; $5c6f: $3f
    cp a                                          ; $5c70: $bf
    ld a, a                                       ; $5c71: $7f
    rst $38                                       ; $5c72: $ff
    ld [bc], a                                    ; $5c73: $02
    nop                                           ; $5c74: $00
    cp a                                          ; $5c75: $bf
    jr nz, jr_0cc_5cf7                            ; $5c76: $20 $7f

    ld a, a                                       ; $5c78: $7f
    dec a                                         ; $5c79: $3d
    ld [bc], a                                    ; $5c7a: $02
    db $fc                                        ; $5c7b: $fc
    nop                                           ; $5c7c: $00
    cp $00                                        ; $5c7d: $fe $00
    ld b, b                                       ; $5c7f: $40
    nop                                           ; $5c80: $00
    cp a                                          ; $5c81: $bf
    rlca                                          ; $5c82: $07
    ret z                                         ; $5c83: $c8

    add e                                         ; $5c84: $83
    inc b                                         ; $5c85: $04
    ld b, e                                       ; $5c86: $43
    nop                                           ; $5c87: $00

jr_0cc_5c88:
    add c                                         ; $5c88: $81
    nop                                           ; $5c89: $00
    ld [bc], a                                    ; $5c8a: $02
    ld d, b                                       ; $5c8b: $50
    ld bc, $0ff7                                  ; $5c8c: $01 $f7 $0f
    ld [hl], a                                    ; $5c8f: $77
    adc a                                         ; $5c90: $8f
    cpl                                           ; $5c91: $2f
    ld [bc], a                                    ; $5c92: $02
    ld e, a                                       ; $5c93: $5f
    cpl                                           ; $5c94: $2f
    rra                                           ; $5c95: $1f
    rrca                                          ; $5c96: $0f
    ccf                                           ; $5c97: $3f
    rra                                           ; $5c98: $1f
    dec h                                         ; $5c99: $25
    nop                                           ; $5c9a: $00
    rst $38                                       ; $5c9b: $ff
    nop                                           ; $5c9c: $00
    rst $38                                       ; $5c9d: $ff
    inc c                                         ; $5c9e: $0c

jr_0cc_5c9f:
    inc sp                                        ; $5c9f: $33
    dec c                                         ; $5ca0: $0d
    ld b, d                                       ; $5ca1: $42
    inc e                                         ; $5ca2: $1c
    add e                                         ; $5ca3: $83
    dec a                                         ; $5ca4: $3d

jr_0cc_5ca5:
    nop                                           ; $5ca5: $00
    add d                                         ; $5ca6: $82
    dec l                                         ; $5ca7: $2d
    add d                                         ; $5ca8: $82
    jp c, $8c85                                   ; $5ca9: $da $85 $8c

    jp Jump_000_00de                              ; $5cac: $c3 $de $00


    pop hl                                        ; $5caf: $e1
    xor a                                         ; $5cb0: $af
    db $fc                                        ; $5cb1: $fc
    ld d, a                                       ; $5cb2: $57
    db $fc                                        ; $5cb3: $fc
    xor a                                         ; $5cb4: $af
    ld hl, sp+$7e                                 ; $5cb5: $f8 $7e
    nop                                           ; $5cb7: $00
    pop af                                        ; $5cb8: $f1
    xor $f1                                       ; $5cb9: $ee $f1

jr_0cc_5cbb:
    db $fd                                        ; $5cbb: $fd
    ld [c], a                                     ; $5cbc: $e2
    ld a, [$b4c5]                                 ; $5cbd: $fa $c5 $b4
    nop                                           ; $5cc0: $00
    bit 3, b                                      ; $5cc1: $cb $58
    nop                                           ; $5cc3: $00
    ld [c], a                                     ; $5cc4: $e2
    ld bc, $c330                                  ; $5cc5: $01 $30 $c3

jr_0cc_5cc8:
    jr jr_0cc_5ccc                                ; $5cc8: $18 $02

    cp $2c                                        ; $5cca: $fe $2c

jr_0cc_5ccc:
    db $fc                                        ; $5ccc: $fc

jr_0cc_5ccd:
    add hl, de                                    ; $5ccd: $19
    db $fc                                        ; $5cce: $fc
    cpl                                           ; $5ccf: $2f
    inc b                                         ; $5cd0: $04
    nop                                           ; $5cd1: $00
    ld c, a                                       ; $5cd2: $4f
    nop                                           ; $5cd3: $00
    cp a                                          ; $5cd4: $bf
    adc $30                                       ; $5cd5: $ce $30
    ld l, e                                       ; $5cd7: $6b
    jr nc, jr_0cc_5cc8                            ; $5cd8: $30 $ee

    jr nc, jr_0cc_5cbb                            ; $5cda: $30 $df

    nop                                           ; $5cdc: $00
    jr nz, jr_0cc_5ccd                            ; $5cdd: $20 $ee

    ld [hl], b                                    ; $5cdf: $70
    rst $08                                       ; $5ce0: $cf
    ld [hl], b                                    ; $5ce1: $70
    xor a                                         ; $5ce2: $af
    ldh a, [$f7]                                  ; $5ce3: $f0 $f7
    ld [bc], a                                    ; $5ce5: $02
    cp $bf                                        ; $5ce6: $fe $bf
    inc e                                         ; $5ce8: $1c
    ld d, b                                       ; $5ce9: $50
    inc bc                                        ; $5cea: $03
    xor b                                         ; $5ceb: $a8
    add d                                         ; $5cec: $82
    ld [bc], a                                    ; $5ced: $02
    xor b                                         ; $5cee: $a8
    jr nz, jr_0cc_5cf1                            ; $5cef: $20 $00

jr_0cc_5cf1:
    ld d, c                                       ; $5cf1: $51
    db $f4                                        ; $5cf2: $f4
    ld bc, $00a8                                  ; $5cf3: $01 $a8 $00
    ld [hl], h                                    ; $5cf6: $74

jr_0cc_5cf7:
    nop                                           ; $5cf7: $00
    ld a, [$f880]                                 ; $5cf8: $fa $80 $f8
    ld bc, $807e                                  ; $5cfb: $01 $7e $80
    dec e                                         ; $5cfe: $1d
    jr nz, jr_0cc_5c9f                            ; $5cff: $20 $9e

    nop                                           ; $5d01: $00
    ld c, a                                       ; $5d02: $4f
    db $10                                        ; $5d03: $10
    db $10                                        ; $5d04: $10
    ld b, c                                       ; $5d05: $41
    add l                                         ; $5d06: $85
    inc l                                         ; $5d07: $2c
    ld [bc], a                                    ; $5d08: $02
    rlca                                          ; $5d09: $07
    ld e, h                                       ; $5d0a: $5c
    rra                                           ; $5d0b: $1f
    xor b                                         ; $5d0c: $a8
    nop                                           ; $5d0d: $00
    ccf                                           ; $5d0e: $3f
    ret nc                                        ; $5d0f: $d0

    ld a, a                                       ; $5d10: $7f
    ldh [rIE], a                                  ; $5d11: $e0 $ff
    ld d, b                                       ; $5d13: $50
    rst $38                                       ; $5d14: $ff
    ld e, d                                       ; $5d15: $5a
    nop                                           ; $5d16: $00
    and b                                         ; $5d17: $a0
    dec a                                         ; $5d18: $3d
    ret nz                                        ; $5d19: $c0

    ld a, d                                       ; $5d1a: $7a
    add b                                         ; $5d1b: $80
    ld a, l                                       ; $5d1c: $7d
    add b                                         ; $5d1d: $80
    ld a, d                                       ; $5d1e: $7a
    ld a, [hl+]                                   ; $5d1f: $2a
    add b                                         ; $5d20: $80
    push af                                       ; $5d21: $f5
    jr z, jr_0cc_5d24                             ; $5d22: $28 $00

jr_0cc_5d24:
    push de                                       ; $5d24: $d5
    ld a, [hl+]                                   ; $5d25: $2a
    ld [bc], a                                    ; $5d26: $02
    ret nc                                        ; $5d27: $d0

    ld a, [hl+]                                   ; $5d28: $2a
    ld [bc], a                                    ; $5d29: $02
    db $f4                                        ; $5d2a: $f4
    add b                                         ; $5d2b: $80
    ld l, $02                                     ; $5d2c: $2e $02
    db $fc                                        ; $5d2e: $fc
    nop                                           ; $5d2f: $00
    call z, $ec00                                 ; $5d30: $cc $00 $ec
    nop                                           ; $5d33: $00
    and c                                         ; $5d34: $a1
    nop                                           ; $5d35: $00
    nop                                           ; $5d36: $00
    ld b, e                                       ; $5d37: $43
    nop                                           ; $5d38: $00
    add d                                         ; $5d39: $82
    nop                                           ; $5d3a: $00
    inc c                                         ; $5d3b: $0c
    ld bc, $0019                                  ; $5d3c: $01 $19 $00
    inc bc                                        ; $5d3f: $03
    inc sp                                        ; $5d40: $33
    rlca                                          ; $5d41: $07
    add $0f                                       ; $5d42: $c6 $0f
    adc l                                         ; $5d44: $8d
    ccf                                           ; $5d45: $3f
    adc $00                                       ; $5d46: $ce $00
    pop hl                                        ; $5d48: $e1
    rst $18                                       ; $5d49: $df
    ldh [$ec], a                                  ; $5d4a: $e0 $ec
    ld a, [c]                                     ; $5d4c: $f2
    db $ed                                        ; $5d4d: $ed
    ld a, [c]                                     ; $5d4e: $f2
    pop af                                        ; $5d4f: $f1
    nop                                           ; $5d50: $00
    db $fc                                        ; $5d51: $fc
    di                                            ; $5d52: $f3
    db $fc                                        ; $5d53: $fc
    ld a, [c]                                     ; $5d54: $f2
    ld sp, hl                                     ; $5d55: $f9
    ld a, [c]                                     ; $5d56: $f2
    jp hl                                         ; $5d57: $e9


    ld [$9500], a                                 ; $5d58: $ea $00 $95
    ld [hl], b                                    ; $5d5b: $70
    rrca                                          ; $5d5c: $0f
    add sp, $17                                   ; $5d5d: $e8 $17
    ret nc                                        ; $5d5f: $d0

    cpl                                           ; $5d60: $2f
    xor b                                         ; $5d61: $a8
    nop                                           ; $5d62: $00
    ld d, a                                       ; $5d63: $57
    db $10                                        ; $5d64: $10
    rst $28                                       ; $5d65: $ef
    ld bc, $8aff                                  ; $5d66: $01 $ff $8a
    rst $38                                       ; $5d69: $ff
    dec hl                                        ; $5d6a: $2b
    ld [bc], a                                    ; $5d6b: $02
    db $fc                                        ; $5d6c: $fc
    dec bc                                        ; $5d6d: $0b
    db $fc                                        ; $5d6e: $fc
    rla                                           ; $5d6f: $17
    ld sp, hl                                     ; $5d70: $f9
    rlca                                          ; $5d71: $07
    ld [bc], a                                    ; $5d72: $02
    ld [$00fb], sp                                ; $5d73: $08 $fb $00
    ld d, a                                       ; $5d76: $57
    db $eb                                        ; $5d77: $eb
    or [hl]                                       ; $5d78: $b6
    set 1, e                                      ; $5d79: $cb $cb
    db $f4                                        ; $5d7b: $f4
    add a                                         ; $5d7c: $87
    ld hl, sp+$00                                 ; $5d7d: $f8 $00
    ld c, e                                       ; $5d7f: $4b
    db $f4                                        ; $5d80: $f4
    sub a                                         ; $5d81: $97
    add sp, $4b                                   ; $5d82: $e8 $4b
    db $f4                                        ; $5d84: $f4
    add l                                         ; $5d85: $85
    ld a, [$4a06]                                 ; $5d86: $fa $06 $4a
    push af                                       ; $5d89: $f5
    add l                                         ; $5d8a: $85
    ld a, [$8ef4]                                 ; $5d8b: $fa $f4 $8e
    nop                                           ; $5d8e: $00
    ld b, h                                       ; $5d8f: $44
    add hl, bc                                    ; $5d90: $09
    db $fd                                        ; $5d91: $fd
    add b                                         ; $5d92: $80
    ld [hl], l                                    ; $5d93: $75
    add hl, bc                                    ; $5d94: $09
    nop                                           ; $5d95: $00
    cp a                                          ; $5d96: $bf
    nop                                           ; $5d97: $00
    ld b, c                                       ; $5d98: $41
    ld bc, $0121                                  ; $5d99: $01 $21 $01
    nop                                           ; $5d9c: $00
    jr z, @+$03                                   ; $5d9d: $28 $01

    ld bc, $4001                                  ; $5d9f: $01 $01 $40
    ld bc, $030a                                  ; $5da2: $01 $0a $03
    nop                                           ; $5da5: $00
    ld b, b                                       ; $5da6: $40
    inc bc                                        ; $5da7: $03
    jp nz, $bd03                                  ; $5da8: $c2 $03 $bd

    rlca                                          ; $5dab: $07
    ld d, [hl]                                    ; $5dac: $56
    rrca                                          ; $5dad: $0f
    nop                                           ; $5dae: $00
    cp h                                          ; $5daf: $bc
    rrca                                          ; $5db0: $0f
    ld a, d                                       ; $5db1: $7a
    rra                                           ; $5db2: $1f
    db $f4                                        ; $5db3: $f4
    rra                                           ; $5db4: $1f
    add sp, $3f                                   ; $5db5: $e8 $3f
    nop                                           ; $5db7: $00
    or h                                          ; $5db8: $b4
    ld a, a                                       ; $5db9: $7f
    jp hl                                         ; $5dba: $e9


    ld a, [hl]                                    ; $5dbb: $7e
    ld a, d                                       ; $5dbc: $7a
    nop                                           ; $5dbd: $00
    ld e, l                                       ; $5dbe: $5d
    jr nz, jr_0cc_5dc1                            ; $5dbf: $20 $00

jr_0cc_5dc1:
    rlca                                          ; $5dc1: $07
    jr jr_0cc_5dcb                                ; $5dc2: $18 $07

    jr @+$05                                      ; $5dc4: $18 $03

    inc c                                         ; $5dc6: $0c
    ld bc, $800e                                  ; $5dc7: $01 $0e $80
    add hl, bc                                    ; $5dca: $09

jr_0cc_5dcb:
    dec bc                                        ; $5dcb: $0b
    rst $20                                       ; $5dcc: $e7
    ld a, b                                       ; $5dcd: $78
    rra                                           ; $5dce: $1f
    ldh [$87], a                                  ; $5dcf: $e0 $87
    ld hl, sp-$7f                                 ; $5dd1: $f8 $81
    nop                                           ; $5dd3: $00
    or $40                                        ; $5dd4: $f6 $40
    pop af                                        ; $5dd6: $f1
    adc d                                         ; $5dd7: $8a
    ldh [$1f], a                                  ; $5dd8: $e0 $1f
    ldh [$9d], a                                  ; $5dda: $e0 $9d
    nop                                           ; $5ddc: $00
    ldh [$8e], a                                  ; $5ddd: $e0 $8e
    ldh a, [$0d]                                  ; $5ddf: $f0 $0d
    ldh a, [rNR30]                                ; $5de1: $f0 $1a
    ldh [rNR33], a                                ; $5de3: $e0 $1d
    ld [bc], a                                    ; $5de5: $02
    ldh [$38], a                                  ; $5de6: $e0 $38
    ret nz                                        ; $5de8: $c0

    inc [hl]                                      ; $5de9: $34
    ret nz                                        ; $5dea: $c0

    ld hl, sp-$20                                 ; $5deb: $f8 $e0
    ld [bc], a                                    ; $5ded: $02
    push af                                       ; $5dee: $f5
    nop                                           ; $5def: $00
    ld [c], a                                     ; $5df0: $e2
    db $fc                                        ; $5df1: $fc
    db $e3                                        ; $5df2: $e3
    ld sp, hl                                     ; $5df3: $f9
    and $dc                                       ; $5df4: $e6 $dc
    jp Jump_000_00f7                              ; $5df6: $c3 $f7 $00


    ret z                                         ; $5df9: $c8

    db $ed                                        ; $5dfa: $ed
    sub d                                         ; $5dfb: $92
    ldh a, [$8f]                                  ; $5dfc: $f0 $8f
    ret nc                                        ; $5dfe: $d0

    xor a                                         ; $5dff: $af
    ld d, l                                       ; $5e00: $55
    ld [bc], a                                    ; $5e01: $02
    rst $38                                       ; $5e02: $ff
    xor c                                         ; $5e03: $a9
    cp $53                                        ; $5e04: $fe $53
    db $fc                                        ; $5e06: $fc
    and a                                         ; $5e07: $a7
    ld a, [bc]                                    ; $5e08: $0a
    ld [bc], a                                    ; $5e09: $02
    sbc $00                                       ; $5e0a: $de $00
    jr nz, @+$7a                                  ; $5e0c: $20 $78

    add b                                         ; $5e0e: $80
    add hl, sp                                    ; $5e0f: $39
    pop bc                                        ; $5e10: $c1
    ld l, a                                       ; $5e11: $6f
    sub e                                         ; $5e12: $93
    xor $00                                       ; $5e13: $ee $00
    rla                                           ; $5e15: $17
    xor [hl]                                      ; $5e16: $ae
    rla                                           ; $5e17: $17
    adc a                                         ; $5e18: $8f
    rla                                           ; $5e19: $17
    ld c, $3f                                     ; $5e1a: $0e $3f
    inc [hl]                                      ; $5e1c: $34
    jr nz, jr_0cc_5e5e                            ; $5e1d: $20 $3f

    add sp, $00                                   ; $5e1f: $e8 $00
    ld bc, $f50a                                  ; $5e21: $01 $0a $f5
    or b                                          ; $5e24: $b0
    rst $38                                       ; $5e25: $ff
    jp nz, $fd00                                  ; $5e26: $c2 $00 $fd

    nop                                           ; $5e29: $00
    ldh a, [rP1]                                  ; $5e2a: $f0 $00
    ldh a, [rTIMA]                                ; $5e2c: $f0 $05
    ldh [rNR24], a                                ; $5e2e: $e0 $19
    nop                                           ; $5e30: $00
    ret nz                                        ; $5e31: $c0

    ld de, $df80                                  ; $5e32: $11 $80 $df
    nop                                           ; $5e35: $00
    xor l                                         ; $5e36: $ad
    nop                                           ; $5e37: $00
    sub $00                                       ; $5e38: $d6 $00
    nop                                           ; $5e3a: $00
    ld l, c                                       ; $5e3b: $69
    add b                                         ; $5e3c: $80
    ld d, h                                       ; $5e3d: $54
    add b                                         ; $5e3e: $80
    xor b                                         ; $5e3f: $a8
    pop bc                                        ; $5e40: $c1
    push af                                       ; $5e41: $f5
    nop                                           ; $5e42: $00
    add d                                         ; $5e43: $82
    ei                                            ; $5e44: $fb
    ld b, h                                       ; $5e45: $44
    sub [hl]                                      ; $5e46: $96
    inc bc                                        ; $5e47: $03
    ld b, $03                                     ; $5e48: $06 $03
    adc c                                         ; $5e4a: $89
    nop                                           ; $5e4b: $00
    rlca                                          ; $5e4c: $07
    ld c, [hl]                                    ; $5e4d: $4e
    ld de, $201b                                  ; $5e4e: $11 $1b $20
    inc [hl]                                      ; $5e51: $34
    ret nz                                        ; $5e52: $c0

    ld [$d880], a                                 ; $5e53: $ea $80 $d8
    inc bc                                        ; $5e56: $03
    ret nz                                        ; $5e57: $c0

    inc bc                                        ; $5e58: $03
    ld b, [hl]                                    ; $5e59: $46
    ld [bc], a                                    ; $5e5a: $02
    jr nz, jr_0cc_5e5d                            ; $5e5b: $20 $00

jr_0cc_5e5d:
    rst $38                                       ; $5e5d: $ff

jr_0cc_5e5e:
    ld [bc], a                                    ; $5e5e: $02
    or b                                          ; $5e5f: $b0
    cp $01                                        ; $5e60: $fe $01
    db $fd                                        ; $5e62: $fd
    dec d                                         ; $5e63: $15
    push bc                                       ; $5e64: $c5
    nop                                           ; $5e65: $00
    nop                                           ; $5e66: $00
    rst $38                                       ; $5e67: $ff
    ld [bc], a                                    ; $5e68: $02
    rst $38                                       ; $5e69: $ff
    rrca                                          ; $5e6a: $0f
    rst $38                                       ; $5e6b: $ff
    rra                                           ; $5e6c: $1f
    rst $18                                       ; $5e6d: $df
    nop                                           ; $5e6e: $00
    ld a, $fe                                     ; $5e6f: $3e $fe
    ccf                                           ; $5e71: $3f
    ccf                                           ; $5e72: $3f
    ld [$8bea], a                                 ; $5e73: $ea $ea $8b
    adc e                                         ; $5e76: $8b
    add b                                         ; $5e77: $80
    jr nc, jr_0cc_5e9a                            ; $5e78: $30 $20

    ret nz                                        ; $5e7a: $c0

    add hl, de                                    ; $5e7b: $19
    add hl, de                                    ; $5e7c: $19
    ccf                                           ; $5e7d: $3f
    ccf                                           ; $5e7e: $3f
    rst $18                                       ; $5e7f: $df
    rst $18                                       ; $5e80: $df
    jr nz, @-$0c                                  ; $5e81: $20 $f2

    ld a, [c]                                     ; $5e83: $f2
    ld b, b                                       ; $5e84: $40
    jr nz, jr_0cc_5ec3                            ; $5e85: $20 $3c

    nop                                           ; $5e87: $00
    inc e                                         ; $5e88: $1c
    ret nz                                        ; $5e89: $c0

    ret nz                                        ; $5e8a: $c0

    ld [$ffff], sp                                ; $5e8b: $08 $ff $ff
    push hl                                       ; $5e8e: $e5
    push hl                                       ; $5e8f: $e5
    ld d, b                                       ; $5e90: $50
    jr nz, @-$6f                                  ; $5e91: $20 $8f

    ld b, b                                       ; $5e93: $40
    ld c, a                                       ; $5e94: $4f
    ld [bc], a                                    ; $5e95: $02
    ldh [$e2], a                                  ; $5e96: $e0 $e2
    ei                                            ; $5e98: $fb
    ei                                            ; $5e99: $fb

jr_0cc_5e9a:
    rra                                           ; $5e9a: $1f
    rra                                           ; $5e9b: $1f
    ld h, b                                       ; $5e9c: $60
    nop                                           ; $5e9d: $00
    rrca                                          ; $5e9e: $0f
    nop                                           ; $5e9f: $00
    pop af                                        ; $5ea0: $f1
    rst $30                                       ; $5ea1: $f7
    db $fc                                        ; $5ea2: $fc
    db $fc                                        ; $5ea3: $fc
    db $dd                                        ; $5ea4: $dd
    db $dd                                        ; $5ea5: $dd
    push hl                                       ; $5ea6: $e5
    push hl                                       ; $5ea7: $e5
    nop                                           ; $5ea8: $00
    ld c, b                                       ; $5ea9: $48
    ld b, b                                       ; $5eaa: $40
    ld e, l                                       ; $5eab: $5d
    ld b, b                                       ; $5eac: $40
    nop                                           ; $5ead: $00
    sbc a                                         ; $5eae: $9f
    ld h, c                                       ; $5eaf: $61
    ld l, a                                       ; $5eb0: $6f
    nop                                           ; $5eb1: $00
    cp $fe                                        ; $5eb2: $fe $fe
    call c, Call_000_3cdc                         ; $5eb4: $dc $dc $3c
    inc a                                         ; $5eb7: $3c
    inc [hl]                                      ; $5eb8: $34
    inc [hl]                                      ; $5eb9: $34
    nop                                           ; $5eba: $00
    ld [hl], c                                    ; $5ebb: $71
    ld [hl], b                                    ; $5ebc: $70
    jr z, jr_0cc_5ee7                             ; $5ebd: $28 $28

    ldh [$ee], a                                  ; $5ebf: $e0 $ee
    di                                            ; $5ec1: $f3
    rst $30                                       ; $5ec2: $f7

jr_0cc_5ec3:
    nop                                           ; $5ec3: $00
    ld a, a                                       ; $5ec4: $7f
    ld a, a                                       ; $5ec5: $7f
    or a                                          ; $5ec6: $b7
    or a                                          ; $5ec7: $b7
    rrca                                          ; $5ec8: $0f
    rrca                                          ; $5ec9: $0f
    ld b, d                                       ; $5eca: $42
    ld [bc], a                                    ; $5ecb: $02
    nop                                           ; $5ecc: $00
    ret                                           ; $5ecd: $c9


    add hl, bc                                    ; $5ece: $09
    add b                                         ; $5ecf: $80
    nop                                           ; $5ed0: $00
    add b                                         ; $5ed1: $80
    sbc a                                         ; $5ed2: $9f
    ldh [$ef], a                                  ; $5ed3: $e0 $ef
    nop                                           ; $5ed5: $00
    ld hl, sp-$05                                 ; $5ed6: $f8 $fb
    sbc h                                         ; $5ed8: $9c
    sbc l                                         ; $5ed9: $9d
    adc $cf                                       ; $5eda: $ce $cf
    ld c, a                                       ; $5edc: $4f
    ld c, a                                       ; $5edd: $4f
    ld [$1a1a], sp                                ; $5ede: $08 $1a $1a
    inc [hl]                                      ; $5ee1: $34
    inc [hl]                                      ; $5ee2: $34
    and b                                         ; $5ee3: $a0
    ld [$fb03], sp                                ; $5ee4: $08 $03 $fb

jr_0cc_5ee7:
    dec de                                        ; $5ee7: $1b
    nop                                           ; $5ee8: $00
    ei                                            ; $5ee9: $fb
    cp a                                          ; $5eea: $bf
    rst $38                                       ; $5eeb: $ff
    ld h, h                                       ; $5eec: $64
    ld h, h                                       ; $5eed: $64
    ld l, $2e                                     ; $5eee: $2e $2e
    add [hl]                                      ; $5ef0: $86
    nop                                           ; $5ef1: $00
    ld b, $00                                     ; $5ef2: $06 $00
    rst $38                                       ; $5ef4: $ff
    ret nz                                        ; $5ef5: $c0

    rst $10                                       ; $5ef6: $d7
    ld hl, sp-$05                                 ; $5ef7: $f8 $fb
    cp h                                          ; $5ef9: $bc
    nop                                           ; $5efa: $00
    cp l                                          ; $5efb: $bd
    ld a, $3e                                     ; $5efc: $3e $3e
    and $e6                                       ; $5efe: $e6 $e6
    cpl                                           ; $5f00: $2f
    cpl                                           ; $5f01: $2f
    sbc l                                         ; $5f02: $9d
    ld b, b                                       ; $5f03: $40
    sbc l                                         ; $5f04: $9d
    ret nz                                        ; $5f05: $c0

    ld c, b                                       ; $5f06: $48
    ld b, b                                       ; $5f07: $40
    ld a, a                                       ; $5f08: $7f
    and b                                         ; $5f09: $a0
    cp a                                          ; $5f0a: $bf
    ld a, a                                       ; $5f0b: $7f
    sbc a                                         ; $5f0c: $9f
    nop                                           ; $5f0d: $00
    rst $38                                       ; $5f0e: $ff
    ccf                                           ; $5f0f: $3f
    ldh a, [$30]                                  ; $5f10: $f0 $30
    ld a, [$981a]                                 ; $5f12: $fa $1a $98
    nop                                           ; $5f15: $00
    nop                                           ; $5f16: $00
    dec e                                         ; $5f17: $1d
    ldh [$03], a                                  ; $5f18: $e0 $03
    ld hl, sp+$00                                 ; $5f1a: $f8 $00
    rst $38                                       ; $5f1c: $ff
    ccf                                           ; $5f1d: $3f
    ccf                                           ; $5f1e: $3f
    nop                                           ; $5f1f: $00
    ld c, a                                       ; $5f20: $4f
    ld c, a                                       ; $5f21: $4f
    ld [bc], a                                    ; $5f22: $02
    ld [bc], a                                    ; $5f23: $02
    ld d, l                                       ; $5f24: $55
    nop                                           ; $5f25: $00
    db $fd                                        ; $5f26: $fd
    nop                                           ; $5f27: $00
    ld [$007f], sp                                ; $5f28: $08 $7f $00
    nop                                           ; $5f2b: $00
    inc e                                         ; $5f2c: $1c
    db $10                                        ; $5f2d: $10
    ld [$7e7e], sp                                ; $5f2e: $08 $7e $7e
    adc h                                         ; $5f31: $8c
    ld [$e00c], sp                                ; $5f32: $08 $0c $e0
    nop                                           ; $5f35: $00
    ld [hl], a                                    ; $5f36: $77
    ld sp, hl                                     ; $5f37: $f9
    nop                                           ; $5f38: $00
    jr nc, @+$08                                  ; $5f39: $30 $06

    nop                                           ; $5f3b: $00
    nop                                           ; $5f3c: $00
    rst $08                                       ; $5f3d: $cf
    ld b, h                                       ; $5f3e: $44
    inc b                                         ; $5f3f: $04
    jr c, jr_0cc_5f42                             ; $5f40: $38 $00

jr_0cc_5f42:
    ld [$bd00], a                                 ; $5f42: $ea $00 $bd
    nop                                           ; $5f45: $00
    nop                                           ; $5f46: $00
    or $00                                        ; $5f47: $f6 $00
    add sp, $00                                   ; $5f49: $e8 $00
    ld hl, sp+$07                                 ; $5f4b: $f8 $07
    ret nz                                        ; $5f4d: $c0

    ld [$912f], sp                                ; $5f4e: $08 $2f $91
    sub c                                         ; $5f51: $91
    ld l, b                                       ; $5f52: $68
    inc e                                         ; $5f53: $1c
    db $10                                        ; $5f54: $10
    ccf                                           ; $5f55: $3f
    nop                                           ; $5f56: $00
    ld [bc], a                                    ; $5f57: $02
    nop                                           ; $5f58: $00
    ld h, b                                       ; $5f59: $60
    nop                                           ; $5f5a: $00
    ld sp, hl                                     ; $5f5b: $f9
    nop                                           ; $5f5c: $00
    rst $38                                       ; $5f5d: $ff
    ld a, [hl]                                    ; $5f5e: $7e
    ld a, a                                       ; $5f5f: $7f
    add hl, bc                                    ; $5f60: $09
    ld bc, $b209                                  ; $5f61: $01 $09 $b2
    nop                                           ; $5f64: $00
    db $fc                                        ; $5f65: $fc
    nop                                           ; $5f66: $00
    add b                                         ; $5f67: $80
    inc de                                        ; $5f68: $13
    ld b, c                                       ; $5f69: $41
    nop                                           ; $5f6a: $00
    adc b                                         ; $5f6b: $88
    inc l                                         ; $5f6c: $2c
    ld bc, $8028                                  ; $5f6d: $01 $28 $80
    jr nc, jr_0cc_5f8e                            ; $5f70: $30 $1c

    nop                                           ; $5f72: $00
    rla                                           ; $5f73: $17
    add b                                         ; $5f74: $80
    nop                                           ; $5f75: $00
    nop                                           ; $5f76: $00
    ldh [rP1], a                                  ; $5f77: $e0 $00
    ld hl, sp+$00                                 ; $5f79: $f8 $00
    cp $00                                        ; $5f7b: $fe $00
    rst $38                                       ; $5f7d: $ff
    ld bc, $0100                                  ; $5f7e: $01 $00 $01
    jp nc, Jump_0cc_7400                          ; $5f81: $d2 $00 $74

    nop                                           ; $5f84: $00
    ei                                            ; $5f85: $fb
    nop                                           ; $5f86: $00
    cp a                                          ; $5f87: $bf
    nop                                           ; $5f88: $00
    nop                                           ; $5f89: $00
    dec c                                         ; $5f8a: $0d
    sub b                                         ; $5f8b: $90
    nop                                           ; $5f8c: $00
    ld a, c                                       ; $5f8d: $79

jr_0cc_5f8e:
    nop                                           ; $5f8e: $00
    rst $38                                       ; $5f8f: $ff
    add a                                         ; $5f90: $87
    ld [$9f80], sp                                ; $5f91: $08 $80 $9f
    add b                                         ; $5f94: $80
    dec l                                         ; $5f95: $2d
    ld l, h                                       ; $5f96: $6c
    nop                                           ; $5f97: $00
    rst $18                                       ; $5f98: $df
    nop                                           ; $5f99: $00
    ld a, [c]                                     ; $5f9a: $f2
    nop                                           ; $5f9b: $00
    nop                                           ; $5f9c: $00
    ret nz                                        ; $5f9d: $c0

    rrca                                          ; $5f9e: $0f
    nop                                           ; $5f9f: $00
    ccf                                           ; $5fa0: $3f
    inc b                                         ; $5fa1: $04
    nop                                           ; $5fa2: $00
    adc b                                         ; $5fa3: $88
    jr nz, jr_0cc_5fa6                            ; $5fa4: $20 $00

jr_0cc_5fa6:
    db $e3                                        ; $5fa6: $e3
    ld b, b                                       ; $5fa7: $40
    nop                                           ; $5fa8: $00
    ld [$3700], a                                 ; $5fa9: $ea $00 $37
    ld b, b                                       ; $5fac: $40
    ld [hl], $00                                  ; $5fad: $36 $00
    ret nz                                        ; $5faf: $c0

    inc b                                         ; $5fb0: $04
    ldh [$d3], a                                  ; $5fb1: $e0 $d3
    nop                                           ; $5fb3: $00
    ld a, [$7500]                                 ; $5fb4: $fa $00 $75
    and b                                         ; $5fb7: $a0
    inc b                                         ; $5fb8: $04
    nop                                           ; $5fb9: $00
    cp a                                          ; $5fba: $bf
    ld a, c                                       ; $5fbb: $79
    ld bc, $041a                                  ; $5fbc: $01 $1a $04
    ld b, e                                       ; $5fbf: $43
    cp h                                          ; $5fc0: $bc
    ld bc, $0020                                  ; $5fc1: $01 $20 $00
    db $10                                        ; $5fc4: $10
    ld a, $00                                     ; $5fc5: $3e $00
    ld d, a                                       ; $5fc7: $57
    nop                                           ; $5fc8: $00
    dec a                                         ; $5fc9: $3d
    nop                                           ; $5fca: $00
    ld l, a                                       ; $5fcb: $6f
    sub b                                         ; $5fcc: $90
    ld b, h                                       ; $5fcd: $44
    nop                                           ; $5fce: $00
    ld a, [$9000]                                 ; $5fcf: $fa $00 $90
    ld b, c                                       ; $5fd2: $41
    db $fc                                        ; $5fd3: $fc
    ld bc, $0ff9                                  ; $5fd4: $01 $f9 $0f
    ld d, $c7                                     ; $5fd7: $16 $c7
    ld [$a2f1], sp                                ; $5fd9: $08 $f1 $a2
    ld e, c                                       ; $5fdc: $59
    ld bc, $0074                                  ; $5fdd: $01 $74 $00
    or h                                          ; $5fe0: $b4
    ld c, c                                       ; $5fe1: $49
    cp h                                          ; $5fe2: $bc
    inc e                                         ; $5fe3: $1c
    nop                                           ; $5fe4: $00
    add b                                         ; $5fe5: $80
    ld hl, $51c4                                  ; $5fe6: $21 $c4 $51
    and [hl]                                      ; $5fe9: $a6
    db $10                                        ; $5fea: $10
    sub $81                                       ; $5feb: $d6 $81
    rrca                                          ; $5fed: $0f
    db $10                                        ; $5fee: $10
    inc b                                         ; $5fef: $04
    rla                                           ; $5ff0: $17
    ld hl, sp-$15                                 ; $5ff1: $f8 $eb

jr_0cc_5ff3:
    ld hl, sp-$48                                 ; $5ff3: $f8 $b8
    ldh a, [$61]                                  ; $5ff5: $f0 $61
    inc bc                                        ; $5ff7: $03
    ld a, a                                       ; $5ff8: $7f
    nop                                           ; $5ff9: $00
    rra                                           ; $5ffa: $1f
    sbc $06                                       ; $5ffb: $de $06
    cp $1e                                        ; $5ffd: $fe $1e
    ld e, h                                       ; $5fff: $5c
    ld [$001f], sp                                ; $6000: $08 $1f $00
    nop                                           ; $6003: $00
    db $dd                                        ; $6004: $dd
    ld [bc], a                                    ; $6005: $02
    ret nc                                        ; $6006: $d0

    ld c, $20                                     ; $6007: $0e $20
    rra                                           ; $6009: $1f
    ld d, l                                       ; $600a: $55
    ld bc, $aaaa                                  ; $600b: $01 $aa $aa
    ld d, l                                       ; $600e: $55
    db $dd                                        ; $600f: $dd
    ld [hl+], a                                   ; $6010: $22
    ld [hl], a                                    ; $6011: $77
    adc b                                         ; $6012: $88
    rla                                           ; $6013: $17
    ld a, [hl+]                                   ; $6014: $2a
    nop                                           ; $6015: $00
    ei                                            ; $6016: $fb
    ei                                            ; $6017: $fb
    cp e                                          ; $6018: $bb
    dec sp                                        ; $6019: $3b
    inc l                                         ; $601a: $2c
    inc b                                         ; $601b: $04
    nop                                           ; $601c: $00
    nop                                           ; $601d: $00
    ld b, b                                       ; $601e: $40
    add b                                         ; $601f: $80
    rst $28                                       ; $6020: $ef
    nop                                           ; $6021: $00
    ld a, [hl]                                    ; $6022: $7e
    nop                                           ; $6023: $00
    nop                                           ; $6024: $00
    jp $f1fe                                      ; $6025: $c3 $fe $f1


    nop                                           ; $6028: $00
    cp [hl]                                       ; $6029: $be
    xor c                                         ; $602a: $a9
    ld a, $39                                     ; $602b: $3e $39
    inc a                                         ; $602d: $3c
    ld bc, $0360                                  ; $602e: $01 $60 $03
    jr z, jr_0cc_5ff3                             ; $6031: $28 $c0

    rra                                           ; $6033: $1f
    dec h                                         ; $6034: $25
    ld bc, $30ff                                  ; $6035: $01 $ff $30

jr_0cc_6038:
    jr c, jr_0cc_6038                             ; $6038: $38 $fe

    nop                                           ; $603a: $00
    db $fd                                        ; $603b: $fd
    db $10                                        ; $603c: $10
    ld bc, $05d5                                  ; $603d: $01 $d5 $05
    ld b, b                                       ; $6040: $40
    nop                                           ; $6041: $00
    ld d, a                                       ; $6042: $57
    rst $18                                       ; $6043: $df
    cpl                                           ; $6044: $2f

jr_0cc_6045:
    ld e, a                                       ; $6045: $5f
    jr @-$5f                                      ; $6046: $18 $9f

    cp $3e                                        ; $6048: $fe $3e
    jr nc, jr_0cc_6066                            ; $604a: $30 $1a

    ld d, b                                       ; $604c: $50

jr_0cc_604d:
    jr z, jr_0cc_605e                             ; $604d: $28 $0f

    nop                                           ; $604f: $00
    rla                                           ; $6050: $17
    ld [$eb10], sp                                ; $6051: $08 $10 $eb
    add sp, -$48                                  ; $6054: $e8 $b8
    add b                                         ; $6056: $80
    ld [$03fc], sp                                ; $6057: $08 $fc $03
    db $e3                                        ; $605a: $e3
    inc b                                         ; $605b: $04
    ld e, h                                       ; $605c: $5c
    sbc h                                         ; $605d: $9c

jr_0cc_605e:
    ld l, l                                       ; $605e: $6d
    nop                                           ; $605f: $00
    jr @-$5e                                      ; $6060: $18 $a0

    ld bc, $fc03                                  ; $6062: $01 $03 $fc
    add b                                         ; $6065: $80

jr_0cc_6066:
    add b                                         ; $6066: $80
    ld [bc], a                                    ; $6067: $02
    call c, $2723                                 ; $6068: $dc $23 $27
    ld h, b                                       ; $606b: $60
    ld h, b                                       ; $606c: $60
    rra                                           ; $606d: $1f
    nop                                           ; $606e: $00
    ld [$007d], sp                                ; $606f: $08 $7d $00
    ret nz                                        ; $6072: $c0

    ld e, $8e                                     ; $6073: $1e $8e
    ld [de], a                                    ; $6075: $12
    ld [hl], e                                    ; $6076: $73
    inc d                                         ; $6077: $14
    ld d, l                                       ; $6078: $55
    nop                                           ; $6079: $00
    dec e                                         ; $607a: $1d
    ld de, $00fe                                  ; $607b: $11 $fe $00
    ei                                            ; $607e: $fb
    inc b                                         ; $607f: $04
    sub b                                         ; $6080: $90
    ld b, [hl]                                    ; $6081: $46
    jr nz, jr_0cc_6094                            ; $6082: $20 $10

    rst $08                                       ; $6084: $cf
    ld c, [hl]                                    ; $6085: $4e
    ld a, [de]                                    ; $6086: $1a
    add b                                         ; $6087: $80
    add c                                         ; $6088: $81
    inc a                                         ; $6089: $3c
    inc bc                                        ; $608a: $03
    ldh [rSTAT], a                                ; $608b: $e0 $41
    rla                                           ; $608d: $17
    ld [hl], b                                    ; $608e: $70
    ld [$00aa], sp                                ; $608f: $08 $aa $00
    ld d, l                                       ; $6092: $55
    nop                                           ; $6093: $00

jr_0cc_6094:
    ld [hl+], a                                   ; $6094: $22
    ld d, h                                       ; $6095: $54
    ld bc, $0180                                  ; $6096: $01 $80 $01
    jr z, jr_0cc_6045                             ; $6099: $28 $aa

    ld d, l                                       ; $609b: $55
    ld d, l                                       ; $609c: $55
    xor d                                         ; $609d: $aa
    ld [hl+], a                                   ; $609e: $22
    db $dd                                        ; $609f: $dd
    adc b                                         ; $60a0: $88
    ret nz                                        ; $60a1: $c0

    rst $08                                       ; $60a2: $cf
    add hl, bc                                    ; $60a3: $09
    or b                                          ; $60a4: $b0
    ld [de], a                                    ; $60a5: $12
    xor d                                         ; $60a6: $aa
    ld d, l                                       ; $60a7: $55
    ld d, a                                       ; $60a8: $57
    xor d                                         ; $60a9: $aa
    cpl                                           ; $60aa: $2f
    rst $18                                       ; $60ab: $df
    jr nz, jr_0cc_604d                            ; $60ac: $20 $9f

    ld e, a                                       ; $60ae: $5f
    or b                                          ; $60af: $b0
    ld a, [hl+]                                   ; $60b0: $2a
    xor d                                         ; $60b1: $aa
    ld d, l                                       ; $60b2: $55
    dec b                                         ; $60b3: $05
    ld a, [bc]                                    ; $60b4: $0a
    di                                            ; $60b5: $f3
    ld e, b                                       ; $60b6: $58
    push af                                       ; $60b7: $f5
    add b                                         ; $60b8: $80
    ld a, [de]                                    ; $60b9: $1a
    ld b, b                                       ; $60ba: $40
    ld bc, $3000                                  ; $60bb: $01 $00 $30
    db $10                                        ; $60be: $10
    call c, $3408                                 ; $60bf: $dc $08 $34
    add h                                         ; $60c2: $84
    or b                                          ; $60c3: $b0
    ld a, [hl+]                                   ; $60c4: $2a
    ld [$f7e4], a                                 ; $60c5: $ea $e4 $f7
    di                                            ; $60c8: $f3
    add b                                         ; $60c9: $80
    ld a, [de]                                    ; $60ca: $1a
    ld [bc], a                                    ; $60cb: $02
    ld [bc], a                                    ; $60cc: $02
    nop                                           ; $60cd: $00
    add hl, bc                                    ; $60ce: $09
    add hl, bc                                    ; $60cf: $09
    nop                                           ; $60d0: $00
    nop                                           ; $60d1: $00
    adc d                                         ; $60d2: $8a
    sub l                                         ; $60d3: $95
    push hl                                       ; $60d4: $e5
    ld [$80c2], a                                 ; $60d5: $ea $c2 $80
    ld c, d                                       ; $60d8: $4a
    ld h, b                                       ; $60d9: $60
    ld [$7b83], sp                                ; $60da: $08 $83 $7b
    dec sp                                        ; $60dd: $3b
    db $db                                        ; $60de: $db
    add b                                         ; $60df: $80
    ld a, [de]                                    ; $60e0: $1a
    ld b, $01                                     ; $60e1: $06 $01
    ld b, $aa                                     ; $60e3: $06 $aa
    ld d, l                                       ; $60e5: $55
    push de                                       ; $60e6: $d5
    jp nz, $f9fa                                  ; $60e7: $c2 $fa $f9

    add b                                         ; $60ea: $80
    ld a, [hl-]                                   ; $60eb: $3a
    db $ec                                        ; $60ec: $ec
    add b                                         ; $60ed: $80
    ld b, b                                       ; $60ee: $40
    add b                                         ; $60ef: $80
    ld [de], a                                    ; $60f0: $12
    ld b, b                                       ; $60f1: $40
    add hl, bc                                    ; $60f2: $09
    rst $38                                       ; $60f3: $ff
    ld e, [hl]                                    ; $60f4: $5e
    ld [de], a                                    ; $60f5: $12
    db $10                                        ; $60f6: $10
    add hl, sp                                    ; $60f7: $39
    rst $38                                       ; $60f8: $ff
    rrca                                          ; $60f9: $0f
    ld hl, $1fdf                                  ; $60fa: $21 $df $1f
    db $10                                        ; $60fd: $10
    add hl, sp                                    ; $60fe: $39
    ld a, [bc]                                    ; $60ff: $0a
    dec b                                         ; $6100: $05
    push af                                       ; $6101: $f5
    di                                            ; $6102: $f3
    db $10                                        ; $6103: $10
    dec sp                                        ; $6104: $3b
    add c                                         ; $6105: $81
    ld [hl], b                                    ; $6106: $70
    add hl, bc                                    ; $6107: $09
    db $db                                        ; $6108: $db
    inc hl                                        ; $6109: $23
    ld a, e                                       ; $610a: $7b
    sbc e                                         ; $610b: $9b
    rst $38                                       ; $610c: $ff
    cp a                                          ; $610d: $bf
    ldh [rNR30], a                                ; $610e: $e0 $1a
    nop                                           ; $6110: $00
    ld d, l                                       ; $6111: $55
    xor d                                         ; $6112: $aa
    jp nz, $f9d5                                  ; $6113: $c2 $d5 $f9

    ld a, [$bcbd]                                 ; $6116: $fa $bd $bc
    jp nz, $2ae0                                  ; $6119: $c2 $e0 $2a

    sub b                                         ; $611c: $90
    ld c, c                                       ; $611d: $49
    ld a, a                                       ; $611e: $7f
    ld b, b                                       ; $611f: $40
    cp a                                          ; $6120: $bf
    and b                                         ; $6121: $a0
    rst $28                                       ; $6122: $ef
    nop                                           ; $6123: $00
    xor d                                         ; $6124: $aa
    inc b                                         ; $6125: $04
    db $dd                                        ; $6126: $dd
    db $dd                                        ; $6127: $dd
    ld [hl], a                                    ; $6128: $77
    ld [hl], a                                    ; $6129: $77
    rst $38                                       ; $612a: $ff
    ld bc, $0020                                  ; $612b: $01 $20 $00
    inc b                                         ; $612e: $04
    add sp, $02                                   ; $612f: $e8 $02
    ld d, b                                       ; $6131: $50
    rst $38                                       ; $6132: $ff
    ld bc, $f780                                  ; $6133: $01 $80 $f7
    dec d                                         ; $6136: $15
    nop                                           ; $6137: $00
    cp $ff                                        ; $6138: $fe $ff
    rst $18                                       ; $613a: $df
    rst $38                                       ; $613b: $ff
    dec d                                         ; $613c: $15
    ld a, e                                       ; $613d: $7b
    rst $38                                       ; $613e: $ff
    call nz, $001f                                ; $613f: $c4 $1f $00
    rst $28                                       ; $6142: $ef
    ld [de], a                                    ; $6143: $12
    db $10                                        ; $6144: $10
    sbc h                                         ; $6145: $9c
    ld d, $00                                     ; $6146: $16 $00
    inc d                                         ; $6148: $14
    set 6, a                                      ; $6149: $cb $f7
    inc a                                         ; $614b: $3c
    cpl                                           ; $614c: $2f
    jr nz, @-$03                                  ; $614d: $20 $fb

    scf                                           ; $614f: $37
    nop                                           ; $6150: $00
    xor a                                         ; $6151: $af
    rst $38                                       ; $6152: $ff
    nop                                           ; $6153: $00
    ld a, a                                       ; $6154: $7f
    cp a                                          ; $6155: $bf
    dec de                                        ; $6156: $1b
    rst $38                                       ; $6157: $ff
    ld e, l                                       ; $6158: $5d
    rst $38                                       ; $6159: $ff
    ld de, $10ff                                  ; $615a: $11 $ff $10
    cp a                                          ; $615d: $bf
    rst $38                                       ; $615e: $ff
    ld h, h                                       ; $615f: $64
    inc d                                         ; $6160: $14
    jr nz, @+$01                                  ; $6161: $20 $ff

    rst $38                                       ; $6163: $ff
    inc l                                         ; $6164: $2c
    rst $30                                       ; $6165: $f7
    nop                                           ; $6166: $00
    xor d                                         ; $6167: $aa
    rst $10                                       ; $6168: $d7
    rst $30                                       ; $6169: $f7
    db $db                                        ; $616a: $db
    sbc b                                         ; $616b: $98
    rst $38                                       ; $616c: $ff
    push bc                                       ; $616d: $c5
    rst $38                                       ; $616e: $ff
    inc b                                         ; $616f: $04
    ld d, l                                       ; $6170: $55
    rst $38                                       ; $6171: $ff
    call nz, $f5fb                                ; $6172: $c4 $fb $f5
    add hl, hl                                    ; $6175: $29
    nop                                           ; $6176: $00
    ld [c], a                                     ; $6177: $e2
    rst $38                                       ; $6178: $ff
    dec b                                         ; $6179: $05
    push af                                       ; $617a: $f5
    ei                                            ; $617b: $fb
    xor l                                         ; $617c: $ad
    or $f2                                        ; $617d: $f6 $f2
    ld l, c                                       ; $617f: $69
    nop                                           ; $6180: $00
    add sp, $38                                   ; $6181: $e8 $38
    nop                                           ; $6183: $00
    db $10                                        ; $6184: $10
    xor $f7                                       ; $6185: $ee $f7
    cp d                                          ; $6187: $ba
    jr nz, jr_0cc_619a                            ; $6188: $20 $10

    call Call_0cc_57ff                            ; $618a: $cd $ff $57
    rst $38                                       ; $618d: $ff
    ld b, b                                       ; $618e: $40
    call nc, Call_000_1020                        ; $618f: $d4 $20 $10
    ld [$14ff], a                                 ; $6192: $ea $ff $14
    db $eb                                        ; $6195: $eb
    or a                                          ; $6196: $b7
    dec de                                        ; $6197: $1b
    nop                                           ; $6198: $00
    xor d                                         ; $6199: $aa

jr_0cc_619a:
    ld e, l                                       ; $619a: $5d
    ld e, a                                       ; $619b: $5f
    db $fc                                        ; $619c: $fc
    or b                                          ; $619d: $b0
    ld e, a                                       ; $619e: $5f
    xor [hl]                                      ; $619f: $ae
    ld a, a                                       ; $61a0: $7f
    ld b, l                                       ; $61a1: $45
    db $fd                                        ; $61a2: $fd
    ld a, [hl]                                    ; $61a3: $7e
    nop                                           ; $61a4: $00
    db $fd                                        ; $61a5: $fd
    cp $d4                                        ; $61a6: $fe $d4
    ld l, $10                                     ; $61a8: $2e $10
    db $fd                                        ; $61aa: $fd
    add [hl]                                      ; $61ab: $86
    nop                                           ; $61ac: $00
    nop                                           ; $61ad: $00
    ld c, c                                       ; $61ae: $49
    cp a                                          ; $61af: $bf
    ei                                            ; $61b0: $fb
    cpl                                           ; $61b1: $2f
    cp c                                          ; $61b2: $b9
    rst $28                                       ; $61b3: $ef
    ld a, [c]                                     ; $61b4: $f2
    rst $38                                       ; $61b5: $ff
    inc b                                         ; $61b6: $04
    ld l, e                                       ; $61b7: $6b
    rst $38                                       ; $61b8: $ff
    sbc $ff                                       ; $61b9: $de $ff
    db $db                                        ; $61bb: $db
    ld l, d                                       ; $61bc: $6a
    nop                                           ; $61bd: $00
    ccf                                           ; $61be: $3f
    rst $38                                       ; $61bf: $ff
    ld e, b                                       ; $61c0: $58
    rst $00                                       ; $61c1: $c7
    or e                                          ; $61c2: $b3
    nop                                           ; $61c3: $00
    ld a, a                                       ; $61c4: $7f
    sub [hl]                                      ; $61c5: $96
    db $10                                        ; $61c6: $10
    cp h                                          ; $61c7: $bc
    ld [$fbf5], sp                                ; $61c8: $08 $f5 $fb
    db $d3                                        ; $61cb: $d3
    nop                                           ; $61cc: $00
    rst $38                                       ; $61cd: $ff
    ld d, a                                       ; $61ce: $57
    ei                                            ; $61cf: $fb
    db $dd                                        ; $61d0: $dd
    ld a, [c]                                     ; $61d1: $f2
    ld d, a                                       ; $61d2: $57
    ld a, [$005a]                                 ; $61d3: $fa $5a $00
    rst $38                                       ; $61d6: $ff
    db $eb                                        ; $61d7: $eb
    db $fd                                        ; $61d8: $fd
    ld h, l                                       ; $61d9: $65
    cp $52                                        ; $61da: $fe $52
    rst $38                                       ; $61dc: $ff
    ld c, d                                       ; $61dd: $4a
    nop                                           ; $61de: $00
    rst $30                                       ; $61df: $f7
    ld e, c                                       ; $61e0: $59
    rst $30                                       ; $61e1: $f7
    ld h, h                                       ; $61e2: $64
    db $db                                        ; $61e3: $db
    ld c, [hl]                                    ; $61e4: $4e
    ld sp, hl                                     ; $61e5: $f9
    xor e                                         ; $61e6: $ab
    inc b                                         ; $61e7: $04
    db $fc                                        ; $61e8: $fc
    or [hl]                                       ; $61e9: $b6
    ret                                           ; $61ea: $c9


    rst $10                                       ; $61eb: $d7
    db $eb                                        ; $61ec: $eb
    ld h, $20                                     ; $61ed: $26 $20
    rst $38                                       ; $61ef: $ff
    ld sp, hl                                     ; $61f0: $f9
    add b                                         ; $61f1: $80
    or b                                          ; $61f2: $b0
    nop                                           ; $61f3: $00
    rst $20                                       ; $61f4: $e7
    rst $38                                       ; $61f5: $ff
    adc a                                         ; $61f6: $8f
    rst $38                                       ; $61f7: $ff
    sbc a                                         ; $61f8: $9f
    rst $38                                       ; $61f9: $ff
    ld b, l                                       ; $61fa: $45
    dec hl                                        ; $61fb: $2b
    rst $38                                       ; $61fc: $ff
    ld e, a                                       ; $61fd: $5f
    call c, $5700                                 ; $61fe: $dc $00 $57
    ld a, [bc]                                    ; $6201: $0a
    nop                                           ; $6202: $00
    cp a                                          ; $6203: $bf
    db $e4                                        ; $6204: $e4
    nop                                           ; $6205: $00
    nop                                           ; $6206: $00
    add hl, bc                                    ; $6207: $09
    ld b, b                                       ; $6208: $40
    db $fd                                        ; $6209: $fd
    ld l, d                                       ; $620a: $6a
    nop                                           ; $620b: $00
    db $f4                                        ; $620c: $f4
    rst $38                                       ; $620d: $ff
    ret nc                                        ; $620e: $d0

    rst $38                                       ; $620f: $ff
    add e                                         ; $6210: $83
    db $fc                                        ; $6211: $fc
    ld b, b                                       ; $6212: $40
    add b                                         ; $6213: $80
    or $00                                        ; $6214: $f6 $00
    cp a                                          ; $6216: $bf
    rst $38                                       ; $6217: $ff
    sbc l                                         ; $6218: $9d
    rst $38                                       ; $6219: $ff
    add hl, bc                                    ; $621a: $09
    rst $38                                       ; $621b: $ff
    nop                                           ; $621c: $00
    add b                                         ; $621d: $80
    rst $38                                       ; $621e: $ff
    ld l, h                                       ; $621f: $6c
    sub e                                         ; $6220: $93
    ld l, e                                       ; $6221: $6b
    sub h                                         ; $6222: $94
    cp d                                          ; $6223: $ba
    ld b, l                                       ; $6224: $45
    and b                                         ; $6225: $a0
    jr nz, jr_0cc_6231                            ; $6226: $20 $09

    ld a, a                                       ; $6228: $7f
    ld [c], a                                     ; $6229: $e2
    nop                                           ; $622a: $00
    rra                                           ; $622b: $1f
    rst $38                                       ; $622c: $ff
    dec bc                                        ; $622d: $0b
    rst $38                                       ; $622e: $ff
    ld d, e                                       ; $622f: $53
    nop                                           ; $6230: $00

jr_0cc_6231:
    xor a                                         ; $6231: $af
    cp c                                          ; $6232: $b9
    ld b, a                                       ; $6233: $47
    ld sp, hl                                     ; $6234: $f9
    rst $38                                       ; $6235: $ff
    and [hl]                                      ; $6236: $a6
    ld sp, hl                                     ; $6237: $f9
    inc d                                         ; $6238: $14
    nop                                           ; $6239: $00
    rst $28                                       ; $623a: $ef
    jp z, Jump_000_2307                           ; $623b: $ca $07 $23

    ret nz                                        ; $623e: $c0

    cp l                                          ; $623f: $bd
    ld [c], a                                     ; $6240: $e2
    call nc, $ef00                                ; $6241: $d4 $00 $ef
    rst $08                                       ; $6244: $cf
    rst $30                                       ; $6245: $f7
    pop hl                                        ; $6246: $e1
    rst $38                                       ; $6247: $ff
    sub [hl]                                      ; $6248: $96
    rst $38                                       ; $6249: $ff
    ld l, c                                       ; $624a: $69
    nop                                           ; $624b: $00
    sub [hl]                                      ; $624c: $96
    push de                                       ; $624d: $d5
    ld [bc], a                                    ; $624e: $02
    ld [bc], a                                    ; $624f: $02
    nop                                           ; $6250: $00
    ld e, a                                       ; $6251: $5f
    add b                                         ; $6252: $80
    and h                                         ; $6253: $a4
    nop                                           ; $6254: $00
    rst $18                                       ; $6255: $df
    sbc e                                         ; $6256: $9b
    db $fd                                        ; $6257: $fd
    ld d, $e9                                     ; $6258: $16 $e9
    ld e, l                                       ; $625a: $5d
    and b                                         ; $625b: $a0
    ld l, e                                       ; $625c: $6b
    nop                                           ; $625d: $00
    add b                                         ; $625e: $80
    ld b, l                                       ; $625f: $45
    add b                                         ; $6260: $80
    ldh [$80], a                                  ; $6261: $e0 $80
    or e                                          ; $6263: $b3
    ret nz                                        ; $6264: $c0

    adc $00                                       ; $6265: $ce $00
    di                                            ; $6267: $f3
    di                                            ; $6268: $f3
    rst $38                                       ; $6269: $ff
    rst $28                                       ; $626a: $ef
    db $10                                        ; $626b: $10
    db $dd                                        ; $626c: $dd
    nop                                           ; $626d: $00
    ld [hl], $00                                  ; $626e: $36 $00
    nop                                           ; $6270: $00
    xor a                                         ; $6271: $af
    nop                                           ; $6272: $00
    ld [de], a                                    ; $6273: $12
    nop                                           ; $6274: $00
    nop                                           ; $6275: $00
    nop                                           ; $6276: $00
    jp hl                                         ; $6277: $e9


    nop                                           ; $6278: $00
    inc b                                         ; $6279: $04
    inc de                                        ; $627a: $13
    ld h, b                                       ; $627b: $60
    rst $38                                       ; $627c: $ff

jr_0cc_627d:
    nop                                           ; $627d: $00
    ld e, e                                       ; $627e: $5b
    nop                                           ; $627f: $00
    db $eb                                        ; $6280: $eb
    nop                                           ; $6281: $00
    nop                                           ; $6282: $00
    ld b, l                                       ; $6283: $45
    nop                                           ; $6284: $00
    jr c, jr_0cc_6287                             ; $6285: $38 $00

jr_0cc_6287:
    inc c                                         ; $6287: $0c
    nop                                           ; $6288: $00
    ld [hl], d                                    ; $6289: $72
    nop                                           ; $628a: $00
    ld [$8007], sp                                ; $628b: $08 $07 $80
    ld [hl], h                                    ; $628e: $74
    adc e                                         ; $628f: $8b
    xor $11                                       ; $6290: $ee $11
    ld e, b                                       ; $6292: $58
    nop                                           ; $6293: $00
    ld bc, $01b2                                  ; $6294: $01 $b2 $01
    ld d, d                                       ; $6297: $52
    ld bc, $0b45                                  ; $6298: $01 $45 $0b
    cpl                                           ; $629b: $2f
    add b                                         ; $629c: $80
    adc a                                         ; $629d: $8f
    nop                                           ; $629e: $00

jr_0cc_629f:
    ld [hl], l                                    ; $629f: $75
    add b                                         ; $62a0: $80
    adc d                                         ; $62a1: $8a
    ldh [$85], a                                  ; $62a2: $e0 $85
    ld a, [$08aa]                                 ; $62a4: $fa $aa $08
    push af                                       ; $62a7: $f5
    jp nc, $f4fd                                  ; $62a8: $d2 $fd $f4

    nop                                           ; $62ab: $00
    ld bc, $ffff                                  ; $62ac: $01 $ff $ff
    db $ed                                        ; $62af: $ed
    nop                                           ; $62b0: $00
    nop                                           ; $62b1: $00
    add h                                         ; $62b2: $84
    nop                                           ; $62b3: $00
    ld a, d                                       ; $62b4: $7a
    add b                                         ; $62b5: $80
    db $10                                        ; $62b6: $10
    db $ed                                        ; $62b7: $ed
    xor [hl]                                      ; $62b8: $ae
    ld bc, $d341                                  ; $62b9: $01 $41 $d3
    inc h                                         ; $62bc: $24
    ld [hl-], a                                   ; $62bd: $32
    push hl                                       ; $62be: $e5
    add d                                         ; $62bf: $82
    push af                                       ; $62c0: $f5
    db $10                                        ; $62c1: $10
    ld [$6200], sp                                ; $62c2: $08 $00 $62
    sbc b                                         ; $62c5: $98
    inc d                                         ; $62c6: $14
    jp hl                                         ; $62c7: $e9


    ld b, $d9                                     ; $62c8: $06 $d9
    jr z, jr_0cc_629f                             ; $62ca: $28 $d3

    nop                                           ; $62cc: $00
    inc d                                         ; $62cd: $14
    db $e3                                        ; $62ce: $e3
    inc l                                         ; $62cf: $2c
    db $d3                                        ; $62d0: $d3
    db $d3                                        ; $62d1: $d3
    nop                                           ; $62d2: $00
    inc l                                         ; $62d3: $2c
    nop                                           ; $62d4: $00
    nop                                           ; $62d5: $00
    adc d                                         ; $62d6: $8a
    jr nz, jr_0cc_632d                            ; $62d7: $20 $54

    xor e                                         ; $62d9: $ab
    or d                                          ; $62da: $b2
    inc bc                                        ; $62db: $03
    ld c, d                                       ; $62dc: $4a
    daa                                           ; $62dd: $27
    nop                                           ; $62de: $00
    ld l, c                                       ; $62df: $69
    inc de                                        ; $62e0: $13
    add c                                         ; $62e1: $81
    ld [hl], a                                    ; $62e2: $77
    or [hl]                                       ; $62e3: $b6
    ld bc, $2749                                  ; $62e4: $01 $49 $27
    dec b                                         ; $62e7: $05
    and l                                         ; $62e8: $a5
    ld e, a                                       ; $62e9: $5f
    sub l                                         ; $62ea: $95
    ld a, a                                       ; $62eb: $7f
    scf                                           ; $62ec: $37
    ld [hl+], a                                   ; $62ed: $22
    ld hl, $5035                                  ; $62ee: $21 $35 $50
    db $10                                        ; $62f1: $10
    ld e, b                                       ; $62f2: $58
    xor b                                         ; $62f3: $a8
    ld d, b                                       ; $62f4: $50
    db $10                                        ; $62f5: $10
    db $fc                                        ; $62f6: $fc
    sub $01                                       ; $62f7: $d6 $01
    ld b, b                                       ; $62f9: $40
    jr z, jr_0cc_627d                             ; $62fa: $28 $81

    cp $a9                                        ; $62fc: $fe $a9
    inc b                                         ; $62fe: $04
    jp nc, $f502                                  ; $62ff: $d2 $02 $f5

    dec hl                                        ; $6302: $2b
    call nc, $1830                                ; $6303: $d4 $30 $18
    push de                                       ; $6306: $d5
    ccf                                           ; $6307: $3f
    ld b, $37                                     ; $6308: $06 $37
    rst $38                                       ; $630a: $ff
    ld l, a                                       ; $630b: $6f
    cp a                                          ; $630c: $bf
    ccf                                           ; $630d: $3f
    ld e, b                                       ; $630e: $58
    ld bc, $0a10                                  ; $630f: $01 $10 $0a
    rst $18                                       ; $6312: $df
    and b                                         ; $6313: $a0
    db $f4                                        ; $6314: $f4
    ld bc, $7e26                                  ; $6315: $01 $26 $7e
    ld bc, $ff80                                  ; $6318: $01 $80 $ff
    ld a, [hl-]                                   ; $631b: $3a
    rst $38                                       ; $631c: $ff
    ld [hl], d                                    ; $631d: $72
    nop                                           ; $631e: $00
    db $fd                                        ; $631f: $fd
    sub l                                         ; $6320: $95
    cp $2a                                        ; $6321: $fe $2a
    push de                                       ; $6323: $d5
    and [hl]                                      ; $6324: $a6
    db $dd                                        ; $6325: $dd
    add c                                         ; $6326: $81
    nop                                           ; $6327: $00
    cp $e8                                        ; $6328: $fe $e8
    rst $30                                       ; $632a: $f7
    sub d                                         ; $632b: $92
    db $fd                                        ; $632c: $fd

jr_0cc_632d:
    xor d                                         ; $632d: $aa
    rst $30                                       ; $632e: $f7
    ld c, c                                       ; $632f: $49
    nop                                           ; $6330: $00
    and h                                         ; $6331: $a4
    inc b                                         ; $6332: $04
    and b                                         ; $6333: $a0
    ld b, d                                       ; $6334: $42
    cp b                                          ; $6335: $b8
    inc d                                         ; $6336: $14
    jp hl                                         ; $6337: $e9


    ld d, d                                       ; $6338: $52
    nop                                           ; $6339: $00
    xor l                                         ; $633a: $ad
    ld c, h                                       ; $633b: $4c
    or e                                          ; $633c: $b3
    dec bc                                        ; $633d: $0b
    db $f4                                        ; $633e: $f4
    ld d, l                                       ; $633f: $55
    and [hl]                                      ; $6340: $a6
    ld de, $6702                                  ; $6341: $11 $02 $67
    add hl, hl                                    ; $6344: $29
    ld b, a                                       ; $6345: $47
    adc e                                         ; $6346: $8b
    ld b, a                                       ; $6347: $47
    inc de                                        ; $6348: $13
    ld [bc], a                                    ; $6349: $02
    ld [$004f], sp                                ; $634a: $08 $4f $00
    xor a                                         ; $634d: $af
    ld c, a                                       ; $634e: $4f
    xor e                                         ; $634f: $ab
    rrca                                          ; $6350: $0f
    db $fd                                        ; $6351: $fd
    cp $f9                                        ; $6352: $fe $f9
    cp $10                                        ; $6354: $fe $10
    db $f4                                        ; $6356: $f4
    rst $38                                       ; $6357: $ff
    pop af                                        ; $6358: $f1
    ld b, $00                                     ; $6359: $06 $00
    db $fc                                        ; $635b: $fc
    rst $38                                       ; $635c: $ff
    or $ff                                        ; $635d: $f6 $ff
    nop                                           ; $635f: $00
    ldh a, [rIE]                                  ; $6360: $f0 $ff
    ld b, e                                       ; $6362: $43
    or b                                          ; $6363: $b0
    ld c, h                                       ; $6364: $4c
    or d                                          ; $6365: $b2
    ld b, b                                       ; $6366: $40
    cp [hl]                                       ; $6367: $be
    nop                                           ; $6368: $00
    cp c                                          ; $6369: $b9
    ld b, $22                                     ; $636a: $06 $22
    inc e                                         ; $636c: $1c
    adc d                                         ; $636d: $8a
    inc [hl]                                      ; $636e: $34
    ld b, h                                       ; $636f: $44
    cp b                                          ; $6370: $b8
    nop                                           ; $6371: $00
    ld [hl], d                                    ; $6372: $72
    adc h                                         ; $6373: $8c
    cp a                                          ; $6374: $bf
    ld a, a                                       ; $6375: $7f

jr_0cc_6376:
    ccf                                           ; $6376: $3f
    rst $38                                       ; $6377: $ff
    cp a                                          ; $6378: $bf
    ld a, a                                       ; $6379: $7f
    ld a, [de]                                    ; $637a: $1a
    cp a                                          ; $637b: $bf
    ld a, a                                       ; $637c: $7f
    rst $18                                       ; $637d: $df
    ld l, l                                       ; $637e: $6d
    nop                                           ; $637f: $00
    ld [hl], b                                    ; $6380: $70
    ld [$6052], sp                                ; $6381: $08 $52 $60
    nop                                           ; $6384: $00
    add hl, hl                                    ; $6385: $29
    nop                                           ; $6386: $00
    sub $aa                                       ; $6387: $d6 $aa
    push de                                       ; $6389: $d5
    add c                                         ; $638a: $81
    cp $ea                                        ; $638b: $fe $ea
    rst $30                                       ; $638d: $f7

jr_0cc_638e:
    add [hl]                                      ; $638e: $86
    ld [bc], a                                    ; $638f: $02
    rst $38                                       ; $6390: $ff
    xor d                                         ; $6391: $aa
    rst $30                                       ; $6392: $f7
    db $ed                                        ; $6393: $ed
    nop                                           ; $6394: $00
    call nz, $20e0                                ; $6395: $c4 $e0 $20
    xor b                                         ; $6398: $a8
    nop                                           ; $6399: $00
    ld d, e                                       ; $639a: $53
    sub l                                         ; $639b: $95
    ld h, d                                       ; $639c: $62
    jr z, jr_0cc_6376                             ; $639d: $28 $d7

    ld e, e                                       ; $639f: $5b
    ld e, e                                       ; $63a0: $5b
    dec bc                                        ; $63a1: $0b
    nop                                           ; $63a2: $00
    dec bc                                        ; $63a3: $0b
    dec d                                         ; $63a4: $15
    ld d, a                                       ; $63a5: $57
    add l                                         ; $63a6: $85
    xor a                                         ; $63a7: $af
    ld [$0c37], sp                                ; $63a8: $08 $37 $0c
    inc b                                         ; $63ab: $04
    or e                                          ; $63ac: $b3
    daa                                           ; $63ad: $27
    ld e, b                                       ; $63ae: $58
    inc l                                         ; $63af: $2c
    ld d, e                                       ; $63b0: $53
    sbc [hl]                                      ; $63b1: $9e
    ld [$ffbf], sp                                ; $63b2: $08 $bf $ff
    nop                                           ; $63b5: $00
    dec de                                        ; $63b6: $1b
    rst $38                                       ; $63b7: $ff
    ld bc, $c0ff                                  ; $63b8: $01 $ff $c0
    ccf                                           ; $63bb: $3f
    ld l, d                                       ; $63bc: $6a
    sub l                                         ; $63bd: $95
    nop                                           ; $63be: $00
    rst $30                                       ; $63bf: $f7
    ld [$ffda], sp                                ; $63c0: $08 $da $ff
    cp h                                          ; $63c3: $bc
    rst $38                                       ; $63c4: $ff
    adc l                                         ; $63c5: $8d
    rst $38                                       ; $63c6: $ff
    ld [$df24], sp                                ; $63c7: $08 $24 $df
    and b                                         ; $63ca: $a0
    rst $18                                       ; $63cb: $df
    or b                                          ; $63cc: $b0
    add hl, de                                    ; $63cd: $19
    db $fd                                        ; $63ce: $fd
    rst $38                                       ; $63cf: $ff
    cp c                                          ; $63d0: $b9
    nop                                           ; $63d1: $00
    rst $38                                       ; $63d2: $ff
    jp c, $8efd                                   ; $63d3: $da $fd $8e

    ld sp, hl                                     ; $63d6: $f9
    inc h                                         ; $63d7: $24
    db $db                                        ; $63d8: $db
    ld l, l                                       ; $63d9: $6d
    ld b, b                                       ; $63da: $40
    sub d                                         ; $63db: $92
    ret nz                                        ; $63dc: $c0

    add hl, bc                                    ; $63dd: $09
    ret                                           ; $63de: $c9


    or $c9                                        ; $63df: $f6 $c9
    or $d2                                        ; $63e1: $f6 $d2
    rst $38                                       ; $63e3: $ff
    ld bc, $f6e9                                  ; $63e4: $01 $e9 $f6
    jp nc, $fafc                                  ; $63e7: $d2 $fc $fa

    db $fc                                        ; $63ea: $fc
    add sp, $72                                   ; $63eb: $e8 $72
    ld [bc], a                                    ; $63ed: $02
    nop                                           ; $63ee: $00
    sub d                                         ; $63ef: $92
    dec h                                         ; $63f0: $25
    jr nz, jr_0cc_63f8                            ; $63f1: $20 $05

    ld b, d                                       ; $63f3: $42
    dec e                                         ; $63f4: $1d
    jr z, jr_0cc_638e                             ; $63f5: $28 $97

    nop                                           ; $63f7: $00

jr_0cc_63f8:
    ld c, d                                       ; $63f8: $4a
    or l                                          ; $63f9: $b5
    ld sp, $e0cc                                  ; $63fa: $31 $cc $e0
    dec c                                         ; $63fd: $0d
    xor d                                         ; $63fe: $aa
    ld b, l                                       ; $63ff: $45
    nop                                           ; $6400: $00
    jp nc, $d2fd                                  ; $6401: $d2 $fd $d2

    db $fd                                        ; $6404: $fd
    jp hl                                         ; $6405: $e9


    db $fc                                        ; $6406: $fc
    jp c, Jump_000_00fd                           ; $6407: $da $fd $00

    add sp, -$01                                  ; $640a: $e8 $ff
    db $f4                                        ; $640c: $f4
    ei                                            ; $640d: $fb
    ldh [rIE], a                                  ; $640e: $e0 $ff
    jp hl                                         ; $6410: $e9


    cp $00                                        ; $6411: $fe $00
    inc d                                         ; $6413: $14
    pop hl                                        ; $6414: $e1
    and d                                         ; $6415: $a2
    ld [hl], l                                    ; $6416: $75
    xor b                                         ; $6417: $a8
    ld [hl], l                                    ; $6418: $75
    dec b                                         ; $6419: $05
    ldh a, [rP1]                                  ; $641a: $f0 $00
    xor d                                         ; $641c: $aa
    ld d, h                                       ; $641d: $54
    cp b                                          ; $641e: $b8
    ld b, h                                       ; $641f: $44
    dec b                                         ; $6420: $05
    ldh a, [rOBP0]                                ; $6421: $f0 $48
    or h                                          ; $6423: $b4
    add b                                         ; $6424: $80
    ld b, b                                       ; $6425: $40
    ld bc, $8560                                  ; $6426: $01 $60 $85
    ld a, d                                       ; $6429: $7a
    jr z, jr_0cc_64a1                             ; $642a: $28 $75

    ld [de], a                                    ; $642c: $12
    ld a, l                                       ; $642d: $7d
    ld a, [de]                                    ; $642e: $1a
    or h                                          ; $642f: $b4
    ld a, a                                       ; $6430: $7f
    dec a                                         ; $6431: $3d

Call_0cc_6432:
    cp d                                          ; $6432: $ba
    nop                                           ; $6433: $00
    ld [hl], b                                    ; $6434: $70
    add hl, hl                                    ; $6435: $29
    or [hl]                                       ; $6436: $b6
    ld [hl], b                                    ; $6437: $70
    ld bc, $106d                                  ; $6438: $01 $6d $10
    inc de                                        ; $643b: $13
    adc c                                         ; $643c: $89
    ld [hl], a                                    ; $643d: $77
    sub b                                         ; $643e: $90
    add hl, hl                                    ; $643f: $29
    rlca                                          ; $6440: $07
    ret c                                         ; $6441: $d8

    add hl, hl                                    ; $6442: $29
    jp nc, $160c                                  ; $6443: $d2 $0c $16

    pop hl                                        ; $6446: $e1
    cpl                                           ; $6447: $2f
    ret nc                                        ; $6448: $d0

    ld d, b                                       ; $6449: $50
    ld c, c                                       ; $644a: $49
    ld e, h                                       ; $644b: $5c
    dec bc                                        ; $644c: $0b
    ccf                                           ; $644d: $3f
    ccf                                           ; $644e: $3f
    xor b                                         ; $644f: $a8
    ldh a, [$08]                                  ; $6450: $f0 $08
    ccf                                           ; $6452: $3f
    ld b, b                                       ; $6453: $40
    ld [bc], a                                    ; $6454: $02
    ld a, a                                       ; $6455: $7f
    cp h                                          ; $6456: $bc
    ld [bc], a                                    ; $6457: $02
    ld a, a                                       ; $6458: $7f
    rst $38                                       ; $6459: $ff
    pop af                                        ; $645a: $f1
    adc d                                         ; $645b: $8a
    inc a                                         ; $645c: $3c
    inc bc                                        ; $645d: $03
    db $f4                                        ; $645e: $f4
    rst $38                                       ; $645f: $ff
    push af                                       ; $6460: $f5
    jr nz, jr_0cc_6474                            ; $6461: $20 $11

    db $f4                                        ; $6463: $f4
    jr nz, @+$03                                  ; $6464: $20 $01

    jp c, $ff02                                   ; $6466: $da $02 $ff

    or b                                          ; $6469: $b0
    rst $38                                       ; $646a: $ff
    adc h                                         ; $646b: $8c
    rst $38                                       ; $646c: $ff
    nop                                           ; $646d: $00
    ld [hl], b                                    ; $646e: $70
    ld [hl-], a                                   ; $646f: $32
    dec sp                                        ; $6470: $3b
    jr z, @+$01                                   ; $6471: $28 $ff

    ld a, l                                       ; $6473: $7d

jr_0cc_6474:
    jp nz, Jump_000_1000                          ; $6474: $c2 $00 $10

    ldh [rP1], a                                  ; $6477: $e0 $00
    ld [hl], $c9                                  ; $6479: $36 $c9
    sub $00                                       ; $647b: $d6 $00
    add hl, hl                                    ; $647d: $29
    ld e, l                                       ; $647e: $5d
    and d                                         ; $647f: $a2
    ld bc, $89f6                                  ; $6480: $01 $f6 $89
    or $80                                        ; $6483: $f6 $80
    ld bc, $49ff                                  ; $6485: $01 $ff $49
    or $e2                                        ; $6488: $f6 $e2
    db $fd                                        ; $648a: $fd
    sub [hl]                                      ; $648b: $96
    db $fd                                        ; $648c: $fd
    ret nz                                        ; $648d: $c0

    add hl, bc                                    ; $648e: $09
    nop                                           ; $648f: $00
    or a                                          ; $6490: $b7
    nop                                           ; $6491: $00
    ld hl, $4400                                  ; $6492: $21 $00 $44
    dec de                                        ; $6495: $1b
    ld a, [hl+]                                   ; $6496: $2a
    sub a                                         ; $6497: $97
    inc b                                         ; $6498: $04
    ld l, e                                       ; $6499: $6b
    sbc e                                         ; $649a: $9b
    rra                                           ; $649b: $1f
    rst $28                                       ; $649c: $ef
    ld e, a                                       ; $649d: $5f
    ld [$bb03], sp                                ; $649e: $08 $03 $bb

jr_0cc_64a1:
    rst $38                                       ; $64a1: $ff
    ld b, $bf                                     ; $64a2: $06 $bf
    rst $18                                       ; $64a4: $df
    add hl, de                                    ; $64a5: $19
    rst $38                                       ; $64a6: $ff
    sub b                                         ; $64a7: $90
    jr nc, jr_0cc_64da                            ; $64a8: $30 $30

    add b                                         ; $64aa: $80
    add hl, bc                                    ; $64ab: $09
    db $fc                                        ; $64ac: $fc
    xor l                                         ; $64ad: $ad
    ld b, d                                       ; $64ae: $42
    inc bc                                        ; $64af: $03
    db $fd                                        ; $64b0: $fd
    add b                                         ; $64b1: $80
    ld bc, $f2fe                                  ; $64b2: $01 $fe $f2
    ld bc, $1970                                  ; $64b5: $01 $70 $19
    ccf                                           ; $64b8: $3f
    ld a, h                                       ; $64b9: $7c
    db $10                                        ; $64ba: $10
    or l                                          ; $64bb: $b5
    sbc $09                                       ; $64bc: $de $09
    xor a                                         ; $64be: $af
    cp b                                          ; $64bf: $b8
    inc bc                                        ; $64c0: $03
    ld hl, sp+$0a                                 ; $64c1: $f8 $0a
    adc a                                         ; $64c3: $8f
    or [hl]                                       ; $64c4: $b6
    inc bc                                        ; $64c5: $03
    rst $38                                       ; $64c6: $ff
    cp d                                          ; $64c7: $ba
    inc bc                                        ; $64c8: $03
    ret nc                                        ; $64c9: $d0

    inc bc                                        ; $64ca: $03
    ret                                           ; $64cb: $c9


    ld bc, $0058                                  ; $64cc: $01 $58 $00
    ld bc, $ff68                                  ; $64cf: $01 $68 $ff
    ld [bc], a                                    ; $64d2: $02
    ld e, b                                       ; $64d3: $58
    ld bc, $e780                                  ; $64d4: $01 $80 $e7
    rst $10                                       ; $64d7: $d7
    db $e3                                        ; $64d8: $e3
    nop                                           ; $64d9: $00

jr_0cc_64da:
    and e                                         ; $64da: $a3
    pop bc                                        ; $64db: $c1

jr_0cc_64dc:
    sub l                                         ; $64dc: $95
    db $e3                                        ; $64dd: $e3
    xor e                                         ; $64de: $ab
    rst $10                                       ; $64df: $d7
    jp $44ff                                      ; $64e0: $c3 $ff $44


    rst $20                                       ; $64e3: $e7
    jr nz, jr_0cc_64e6                            ; $64e4: $20 $00

jr_0cc_64e6:
    cp a                                          ; $64e6: $bf
    rst $38                                       ; $64e7: $ff
    db $ed                                        ; $64e8: $ed
    ld h, $00                                     ; $64e9: $26 $00
    ld e, d                                       ; $64eb: $5a

jr_0cc_64ec:
    rst $38                                       ; $64ec: $ff
    nop                                           ; $64ed: $00
    xor a                                         ; $64ee: $af
    rst $38                                       ; $64ef: $ff
    jp c, $a9ff                                   ; $64f0: $da $ff $a9

    rst $38                                       ; $64f3: $ff
    ld h, h                                       ; $64f4: $64
    rst $38                                       ; $64f5: $ff
    inc b                                         ; $64f6: $04
    sbc c                                         ; $64f7: $99
    rst $38                                       ; $64f8: $ff
    ld b, h                                       ; $64f9: $44
    rst $38                                       ; $64fa: $ff
    ld de, $0004                                  ; $64fb: $11 $04 $00
    nop                                           ; $64fe: $00
    rst $38                                       ; $64ff: $ff
    ld l, h                                       ; $6500: $6c
    db $10                                        ; $6501: $10
    ld b, b                                       ; $6502: $40
    jr jr_0cc_6535                                ; $6503: $18 $30

    jr z, jr_0cc_64dc                             ; $6505: $28 $d5

    jr nc, jr_0cc_6511                            ; $6507: $30 $08

    ld h, b                                       ; $6509: $60
    ld l, b                                       ; $650a: $68
    nop                                           ; $650b: $00
    rst $38                                       ; $650c: $ff
    nop                                           ; $650d: $00
    ld b, b                                       ; $650e: $40
    cp a                                          ; $650f: $bf
    ld [de], a                                    ; $6510: $12

jr_0cc_6511:
    db $ed                                        ; $6511: $ed
    nop                                           ; $6512: $00
    rst $38                                       ; $6513: $ff
    and l                                         ; $6514: $a5
    ld e, d                                       ; $6515: $5a
    nop                                           ; $6516: $00
    ld d, b                                       ; $6517: $50
    xor a                                         ; $6518: $af
    dec h                                         ; $6519: $25
    jp c, $a956                                   ; $651a: $da $56 $a9

    sbc e                                         ; $651d: $9b
    ld h, h                                       ; $651e: $64
    ld bc, $9966                                  ; $651f: $01 $66 $99
    cp e                                          ; $6522: $bb
    ld b, h                                       ; $6523: $44
    xor $11                                       ; $6524: $ee $11
    cp e                                          ; $6526: $bb
    ld b, c                                       ; $6527: $41
    nop                                           ; $6528: $00
    ld h, h                                       ; $6529: $64
    rst $28                                       ; $652a: $ef
    ld b, c                                       ; $652b: $41
    ld [$7031], sp                                ; $652c: $08 $31 $70
    cp a                                          ; $652f: $bf
    nop                                           ; $6530: $00
    cpl                                           ; $6531: $2f
    nop                                           ; $6532: $00
    nop                                           ; $6533: $00
    ld e, d                                       ; $6534: $5a

jr_0cc_6535:
    ld [bc], a                                    ; $6535: $02
    nop                                           ; $6536: $00
    xor a                                         ; $6537: $af
    nop                                           ; $6538: $00
    jp c, $a900                                   ; $6539: $da $00 $a9

    and c                                         ; $653c: $a1
    ld [$20c7], sp                                ; $653d: $08 $c7 $20
    rst $10                                       ; $6540: $d7
    and c                                         ; $6541: $a1
    ld h, b                                       ; $6542: $60
    jr c, jr_0cc_65a9                             ; $6543: $38 $64

    nop                                           ; $6545: $00
    sbc c                                         ; $6546: $99
    nop                                           ; $6547: $00
    ld b, h                                       ; $6548: $44
    inc hl                                        ; $6549: $23
    nop                                           ; $654a: $00
    ld de, $0004                                  ; $654b: $11 $04 $00
    nop                                           ; $654e: $00
    nop                                           ; $654f: $00
    db $10                                        ; $6550: $10
    rst $08                                       ; $6551: $cf
    ld [$0820], sp                                ; $6552: $08 $20 $08
    ld c, [hl]                                    ; $6555: $4e
    and e                                         ; $6556: $a3
    or b                                          ; $6557: $b0
    ld c, b                                       ; $6558: $48
    rst $38                                       ; $6559: $ff
    jp $2030                                      ; $655a: $c3 $30 $20


    db $10                                        ; $655d: $10
    jr z, @-$1a                                   ; $655e: $28 $e4

    nop                                           ; $6560: $00
    cp $00                                        ; $6561: $fe $00
    rst $38                                       ; $6563: $ff
    ld bc, $7efe                                  ; $6564: $01 $fe $7e
    nop                                           ; $6567: $00
    jr nc, jr_0cc_656a                            ; $6568: $30 $00

jr_0cc_656a:
    jr jr_0cc_64ec                                ; $656a: $18 $80

    pop af                                        ; $656c: $f1
    ld [$14e7], sp                                ; $656d: $08 $e7 $14
    db $e3                                        ; $6570: $e3
    and e                                         ; $6571: $a3
    ld b, b                                       ; $6572: $40
    sub l                                         ; $6573: $95
    ld h, d                                       ; $6574: $62
    ld [bc], a                                    ; $6575: $02
    xor e                                         ; $6576: $ab
    ld d, h                                       ; $6577: $54
    ld b, b                                       ; $6578: $40
    inc a                                         ; $6579: $3c
    ld h, e                                       ; $657a: $63
    jr jr_0cc_657e                                ; $657b: $18 $01

    add hl, bc                                    ; $657d: $09

jr_0cc_657e:
    rlca                                          ; $657e: $07
    ld [bc], a                                    ; $657f: $02
    rst $38                                       ; $6580: $ff
    ld hl, sp+$07                                 ; $6581: $f8 $07
    xor a                                         ; $6583: $af
    nop                                           ; $6584: $00
    ld b, l                                       ; $6585: $45
    dec hl                                        ; $6586: $2b
    ld bc, $80aa                                  ; $6587: $01 $aa $80
    ld de, $3f21                                  ; $658a: $11 $21 $3f
    rst $38                                       ; $658d: $ff
    ret nz                                        ; $658e: $c0

    ccf                                           ; $658f: $3f
    rst $38                                       ; $6590: $ff
    nop                                           ; $6591: $00
    ld h, b                                       ; $6592: $60
    jr nz, jr_0cc_6595                            ; $6593: $20 $00

jr_0cc_6595:
    ld hl, $3121                                  ; $6595: $21 $21 $31

jr_0cc_6598:
    rra                                           ; $6598: $1f
    rst $38                                       ; $6599: $ff

Jump_0cc_659a:
    ld h, b                                       ; $659a: $60
    rra                                           ; $659b: $1f
    ccf                                           ; $659c: $3f
    inc sp                                        ; $659d: $33
    nop                                           ; $659e: $00
    rlca                                          ; $659f: $07
    ld sp, $3a31                                  ; $65a0: $31 $31 $3a
    ld bc, $ef00                                  ; $65a3: $01 $00 $ef
    ld [bc], a                                    ; $65a6: $02
    nop                                           ; $65a7: $00
    ld b, c                                       ; $65a8: $41

jr_0cc_65a9:
    add hl, hl                                    ; $65a9: $29
    ld b, $0f                                     ; $65aa: $06 $0f
    rst $38                                       ; $65ac: $ff
    ldh a, [rIF]                                  ; $65ad: $f0 $0f
    ld e, a                                       ; $65af: $5f
    or [hl]                                       ; $65b0: $b6
    nop                                           ; $65b1: $00
    ld d, c                                       ; $65b2: $51
    add hl, hl                                    ; $65b3: $29
    ret nz                                        ; $65b4: $c0

    ld [$3fff], sp                                ; $65b5: $08 $ff $3f
    ret nz                                        ; $65b8: $c0

    ldh [rLCDC], a                                ; $65b9: $e0 $40
    ld d, b                                       ; $65bb: $50
    ld h, e                                       ; $65bc: $63
    rra                                           ; $65bd: $1f
    inc a                                         ; $65be: $3c
    ld b, d                                       ; $65bf: $42
    inc bc                                        ; $65c0: $03
    ld b, b                                       ; $65c1: $40
    jr jr_0cc_6598                                ; $65c2: $18 $d4

    db $e3                                        ; $65c4: $e3
    inc hl                                        ; $65c5: $23
    ret nz                                        ; $65c6: $c0

    add b                                         ; $65c7: $80

jr_0cc_65c8:
    ld [$c142], sp                                ; $65c8: $08 $42 $c1
    add b                                         ; $65cb: $80
    jr nz, @-$79                                  ; $65cc: $20 $85

    add hl, de                                    ; $65ce: $19
    ldh a, [rIE]                                  ; $65cf: $f0 $ff
    rrca                                          ; $65d1: $0f
    ldh a, [$0a]                                  ; $65d2: $f0 $0a
    ld h, b                                       ; $65d4: $60
    ld b, b                                       ; $65d5: $40
    jr nz, jr_0cc_6657                            ; $65d6: $20 $7f

    add b                                         ; $65d8: $80
    ld b, b                                       ; $65d9: $40
    ld c, b                                       ; $65da: $48
    db $fc                                        ; $65db: $fc
    rst $38                                       ; $65dc: $ff
    jp Jump_000_2ffc                              ; $65dd: $c3 $fc $2f


    jr nz, @-$3e                                  ; $65e0: $20 $c0

    ret nz                                        ; $65e2: $c0

    or c                                          ; $65e3: $b1
    ld de, $ff1f                                  ; $65e4: $11 $1f $ff
    db $e3                                        ; $65e7: $e3

jr_0cc_65e8:
    rra                                           ; $65e8: $1f
    db $fc                                        ; $65e9: $fc
    jr nz, jr_0cc_65ef                            ; $65ea: $20 $03

    inc sp                                        ; $65ec: $33
    and b                                         ; $65ed: $a0
    ld b, b                                       ; $65ee: $40

jr_0cc_65ef:
    cp $ff                                        ; $65ef: $fe $ff
    db $fd                                        ; $65f1: $fd
    cp $03                                        ; $65f2: $fe $03
    ld sp, $fdfc                                  ; $65f4: $31 $fc $fd
    or d                                          ; $65f7: $b2
    nop                                           ; $65f8: $00
    ld c, d                                       ; $65f9: $4a

jr_0cc_65fa:
    jr z, jr_0cc_65fa                             ; $65fa: $28 $fe

    nop                                           ; $65fc: $00
    push de                                       ; $65fd: $d5
    ei                                            ; $65fe: $fb
    ld bc, $2440                                  ; $65ff: $01 $40 $24
    jr nc, jr_0cc_6624                            ; $6602: $30 $20

    ldh [$1f], a                                  ; $6604: $e0 $1f
    cp a                                          ; $6606: $bf
    nop                                           ; $6607: $00
    rla                                           ; $6608: $17
    nop                                           ; $6609: $00
    ld h, b                                       ; $660a: $60
    ld bc, $20e0                                  ; $660b: $01 $e0 $20
    db $10                                        ; $660e: $10
    ld [$009d], sp                                ; $660f: $08 $9d $00
    ld [$8000], sp                                ; $6612: $08 $00 $80
    sub b                                         ; $6615: $90
    ldh [rNR23], a                                ; $6616: $e0 $18
    rst $20                                       ; $6618: $e7
    ld d, h                                       ; $6619: $54
    db $10                                        ; $661a: $10
    ld hl, $3cc3                                  ; $661b: $21 $c3 $3c
    rst $20                                       ; $661e: $e7
    jr jr_0cc_65c8                                ; $661f: $18 $a7

    inc a                                         ; $6621: $3c
    jr c, @+$04                                   ; $6622: $38 $02

jr_0cc_6624:
    ld l, b                                       ; $6624: $68

jr_0cc_6625:
    ld bc, $0024                                  ; $6625: $01 $24 $00
    inc a                                         ; $6628: $3c
    jr c, jr_0cc_6675                             ; $6629: $38 $4a

    ld a, [bc]                                    ; $662b: $0a
    jr nz, jr_0cc_6647                            ; $662c: $20 $19

    ld b, $00                                     ; $662e: $06 $00
    rst $38                                       ; $6630: $ff
    cp $00                                        ; $6631: $fe $00
    add h                                         ; $6633: $84
    add b                                         ; $6634: $80
    ld de, $1920                                  ; $6635: $11 $20 $19
    nop                                           ; $6638: $00
    ld a, [bc]                                    ; $6639: $0a
    rst $38                                       ; $663a: $ff
    rst $18                                       ; $663b: $df
    nop                                           ; $663c: $00
    adc h                                         ; $663d: $8c
    ld l, c                                       ; $663e: $69
    ld [bc], a                                    ; $663f: $02
    sub c                                         ; $6640: $91
    ld h, b                                       ; $6641: $60
    ld bc, $00fe                                  ; $6642: $01 $fe $00
    rst $38                                       ; $6645: $ff
    pop bc                                        ; $6646: $c1

jr_0cc_6647:
    cp $3f                                        ; $6647: $fe $3f
    ret nz                                        ; $6649: $c0

    ld a, [$2000]                                 ; $664a: $fa $00 $20
    ret nz                                        ; $664d: $c0

    ld a, c                                       ; $664e: $79
    ld [bc], a                                    ; $664f: $02
    ld b, b                                       ; $6650: $40
    ld [$ff03], sp                                ; $6651: $08 $03 $ff
    db $fc                                        ; $6654: $fc
    inc bc                                        ; $6655: $03
    rst $10                                       ; $6656: $d7

jr_0cc_6657:
    nop                                           ; $6657: $00
    ld d, b                                       ; $6658: $50
    and d                                         ; $6659: $a2
    add a                                         ; $665a: $87
    ld [bc], a                                    ; $665b: $02
    ld b, b                                       ; $665c: $40
    ld h, b                                       ; $665d: $60
    ld hl, $ff38                                  ; $665e: $21 $38 $ff
    rst $10                                       ; $6661: $d7
    jr nz, jr_0cc_6625                            ; $6662: $20 $c1

    ld [hl], b                                    ; $6664: $70
    jr c, jr_0cc_65e8                             ; $6665: $38 $81

    ld a, [bc]                                    ; $6667: $0a
    ld a, a                                       ; $6668: $7f
    rst $38                                       ; $6669: $ff
    add b                                         ; $666a: $80
    ld a, a                                       ; $666b: $7f
    cp a                                          ; $666c: $bf
    sbc h                                         ; $666d: $9c
    ld bc, $40d3                                  ; $666e: $01 $d3 $40
    ld [$193a], sp                                ; $6671: $08 $3a $19
    ei                                            ; $6674: $fb

jr_0cc_6675:
    ld b, b                                       ; $6675: $40
    jr nc, @+$01                                  ; $6676: $30 $ff

    rst $38                                       ; $6678: $ff
    ld b, d                                       ; $6679: $42
    ld c, b                                       ; $667a: $48
    ret nz                                        ; $667b: $c0

    jr c, jr_0cc_66d2                             ; $667c: $38 $54

    rst $38                                       ; $667e: $ff
    adc $01                                       ; $667f: $ce $01
    nop                                           ; $6681: $00
    and b                                         ; $6682: $a0
    ld bc, $d6aa                                  ; $6683: $01 $aa $d6
    nop                                           ; $6686: $00
    cp e                                          ; $6687: $bb
    nop                                           ; $6688: $00
    nop                                           ; $6689: $00
    ld c, a                                       ; $668a: $4f
    nop                                           ; $668b: $00
    db $e3                                        ; $668c: $e3
    nop                                           ; $668d: $00
    rst $30                                       ; $668e: $f7
    nop                                           ; $668f: $00
    ld a, [hl]                                    ; $6690: $7e
    add c                                         ; $6691: $81
    ld bc, $c837                                  ; $6692: $01 $37 $c8
    jr nz, jr_0cc_6697                            ; $6695: $20 $00

jr_0cc_6697:
    ld b, a                                       ; $6697: $47
    nop                                           ; $6698: $00
    db $d3                                        ; $6699: $d3
    jr nz, jr_0cc_669e                            ; $669a: $20 $02

    ld b, b                                       ; $669c: $40
    cp a                                          ; $669d: $bf

jr_0cc_669e:
    jp hl                                         ; $669e: $e9


    ld [bc], a                                    ; $669f: $02
    rst $28                                       ; $66a0: $ef
    db $10                                        ; $66a1: $10
    push bc                                       ; $66a2: $c5
    ld a, [hl-]                                   ; $66a3: $3a
    ld d, [hl]                                    ; $66a4: $56
    nop                                           ; $66a5: $00
    inc b                                         ; $66a6: $04
    rst $20                                       ; $66a7: $e7
    nop                                           ; $66a8: $00
    ld [hl], a                                    ; $66a9: $77
    nop                                           ; $66aa: $00
    sbc $f7                                       ; $66ab: $de $f7
    ld [bc], a                                    ; $66ad: $02
    db $fd                                        ; $66ae: $fd
    ld [bc], a                                    ; $66af: $02
    nop                                           ; $66b0: $00
    cp b                                          ; $66b1: $b8
    ld b, a                                       ; $66b2: $47
    db $ed                                        ; $66b3: $ed
    ld [de], a                                    ; $66b4: $12
    sub c                                         ; $66b5: $91
    nop                                           ; $66b6: $00
    sub e                                         ; $66b7: $93
    nop                                           ; $66b8: $00
    inc b                                         ; $66b9: $04
    ei                                            ; $66ba: $fb
    nop                                           ; $66bb: $00
    adc [hl]                                      ; $66bc: $8e

jr_0cc_66bd:
    nop                                           ; $66bd: $00
    rst $18                                       ; $66be: $df
    add hl, bc                                    ; $66bf: $09
    inc bc                                        ; $66c0: $03
    ei                                            ; $66c1: $fb
    inc b                                         ; $66c2: $04
    dec de                                        ; $66c3: $1b
    cp [hl]                                       ; $66c4: $be
    ld b, c                                       ; $66c5: $41
    or a                                          ; $66c6: $b7
    ld c, h                                       ; $66c7: $4c
    ld [bc], a                                    ; $66c8: $02
    ld b, b                                       ; $66c9: $40
    ld c, b                                       ; $66ca: $48
    jp nz, Jump_000_01e4                          ; $66cb: $c2 $e4 $01

    ld b, b                                       ; $66ce: $40
    ld c, b                                       ; $66cf: $48
    ld d, b                                       ; $66d0: $50
    add [hl]                                      ; $66d1: $86

jr_0cc_66d2:
    ld b, b                                       ; $66d2: $40
    ld h, b                                       ; $66d3: $60
    ld b, $50                                     ; $66d4: $06 $50
    ld h, b                                       ; $66d6: $60
    ld h, e                                       ; $66d7: $63
    sbc h                                         ; $66d8: $9c
    sub $29                                       ; $66d9: $d6 $29
    nop                                           ; $66db: $00
    dec bc                                        ; $66dc: $0b
    db $f4                                        ; $66dd: $f4
    and b                                         ; $66de: $a0
    ld e, a                                       ; $66df: $5f
    add b                                         ; $66e0: $80
    ld a, a                                       ; $66e1: $7f
    ld d, b                                       ; $66e2: $50
    xor a                                         ; $66e3: $af
    add h                                         ; $66e4: $84

jr_0cc_66e5:
    add sp, $0a                                   ; $66e5: $e8 $0a
    ld l, b                                       ; $66e7: $68
    sub a                                         ; $66e8: $97
    inc e                                         ; $66e9: $1c
    db $e3                                        ; $66ea: $e3
    db $10                                        ; $66eb: $10
    ld [$7e81], sp                                ; $66ec: $08 $81 $7e
    jr @+$54                                      ; $66ef: $18 $52

jr_0cc_66f1:
    xor l                                         ; $66f1: $ad
    db $10                                        ; $66f2: $10
    rra                                           ; $66f3: $1f
    ld [bc], a                                    ; $66f4: $02
    jr nz, @+$2a                                  ; $66f5: $20 $28

    add c                                         ; $66f7: $81
    ld a, [hl]                                    ; $66f8: $7e
    ld d, b                                       ; $66f9: $50
    ld h, c                                       ; $66fa: $61
    xor a                                         ; $66fb: $af
    db $10                                        ; $66fc: $10
    ld [$2820], sp                                ; $66fd: $08 $20 $28
    add l                                         ; $6700: $85
    ld a, d                                       ; $6701: $7a
    ld d, d                                       ; $6702: $52
    xor l                                         ; $6703: $ad
    jr jr_0cc_6711                                ; $6704: $18 $0b

jr_0cc_6706:
    nop                                           ; $6706: $00
    rst $20                                       ; $6707: $e7
    jr jr_0cc_66e5                                ; $6708: $18 $db

    jr nz, jr_0cc_66bd                            ; $670a: $20 $b1

    ld b, b                                       ; $670c: $40
    ld de, $00e0                                  ; $670d: $11 $e0 $00
    dec sp                                        ; $6710: $3b

jr_0cc_6711:
    ret nz                                        ; $6711: $c0

    adc a                                         ; $6712: $8f
    ld [hl], b                                    ; $6713: $70
    rst $20                                       ; $6714: $e7
    jr jr_0cc_6706                                ; $6715: $18 $ef

    stop                                          ; $6717: $10 $00
    db $eb                                        ; $6719: $eb
    db $10                                        ; $671a: $10
    jp hl                                         ; $671b: $e9


    db $10                                        ; $671c: $10
    reti                                          ; $671d: $d9


    jr nz, jr_0cc_66f1                            ; $671e: $20 $d1

    jr nz, jr_0cc_6723                            ; $6720: $20 $01

    sub e                                         ; $6722: $93

jr_0cc_6723:
    ld h, b                                       ; $6723: $60
    sbc e                                         ; $6724: $9b
    ld h, b                                       ; $6725: $60
    or a                                          ; $6726: $b7
    ld b, b                                       ; $6727: $40
    rst $08                                       ; $6728: $cf
    push hl                                       ; $6729: $e5
    ld [$c380], sp                                ; $672a: $08 $80 $c3
    ld d, e                                       ; $672d: $53
    ldh a, [$03]                                  ; $672e: $f0 $03
    sbc b                                         ; $6730: $98
    ld [bc], a                                    ; $6731: $02
    ld a, [bc]                                    ; $6732: $0a
    xor d                                         ; $6733: $aa
    ld d, l                                       ; $6734: $55
    ld d, l                                       ; $6735: $55
    xor d                                         ; $6736: $aa
    inc b                                         ; $6737: $04
    ld c, b                                       ; $6738: $48
    rst $38                                       ; $6739: $ff
    ld bc, $fd70                                  ; $673a: $01 $70 $fd
    inc b                                         ; $673d: $04
    db $fd                                        ; $673e: $fd
    ld a, [$f6f8]                                 ; $673f: $fa $f8 $f6
    ldh a, [rSC]                                  ; $6742: $f0 $02
    ld [$f2f4], sp                                ; $6744: $08 $f4 $f2
    jr z, @-$18                                   ; $6747: $28 $e6

jr_0cc_6749:
    ldh [rNR41], a                                ; $6749: $e0 $20

jr_0cc_674b:
    jr jr_0cc_674b                                ; $674b: $18 $fe

    ld bc, $fd00                                  ; $674d: $01 $00 $fd
    db $fc                                        ; $6750: $fc
    db $fc                                        ; $6751: $fc
    nop                                           ; $6752: $00
    db $fc                                        ; $6753: $fc
    ld sp, hl                                     ; $6754: $f9
    ld hl, sp-$01                                 ; $6755: $f8 $ff
    rst $38                                       ; $6757: $ff
    cp a                                          ; $6758: $bf
    cp a                                          ; $6759: $bf
    ld e, a                                       ; $675a: $5f
    jr nz, jr_0cc_677c                            ; $675b: $20 $1f

    rst $18                                       ; $675d: $df
    ld [bc], a                                    ; $675e: $02
    jr nc, jr_0cc_6749                            ; $675f: $30 $e8

    ld [c], a                                     ; $6761: $e2
    push hl                                       ; $6762: $e5
    ld [c], a                                     ; $6763: $e2
    db $ed                                        ; $6764: $ed
    nop                                           ; $6765: $00
    ld [c], a                                     ; $6766: $e2
    push af                                       ; $6767: $f5
    ld a, [c]                                     ; $6768: $f2
    db $f4                                        ; $6769: $f4
    di                                            ; $676a: $f3
    di                                            ; $676b: $f3
    ldh a, [$f6]                                  ; $676c: $f0 $f6
    ld [bc], a                                    ; $676e: $02
    pop af                                        ; $676f: $f1
    ldh a, [$f2]                                  ; $6770: $f0 $f2
    rst $38                                       ; $6772: $ff
    rst $38                                       ; $6773: $ff

jr_0cc_6774:
    ld a, a                                       ; $6774: $7f
    ld bc, $bf30                                  ; $6775: $01 $30 $bf
    nop                                           ; $6778: $00
    ccf                                           ; $6779: $3f
    ld e, a                                       ; $677a: $5f
    sbc a                                         ; $677b: $9f

jr_0cc_677c:
    ei                                            ; $677c: $fb
    ld hl, sp-$06                                 ; $677d: $f8 $fa
    ld sp, hl                                     ; $677f: $f9
    ld sp, hl                                     ; $6780: $f9
    nop                                           ; $6781: $00
    ld hl, sp-$05                                 ; $6782: $f8 $fb
    ld hl, sp-$03                                 ; $6784: $f8 $fd
    db $fc                                        ; $6786: $fc
    db $fd                                        ; $6787: $fd
    db $fc                                        ; $6788: $fc
    cp $00                                        ; $6789: $fe $00
    cp $ff                                        ; $678b: $fe $ff
    rst $38                                       ; $678d: $ff
    ld e, a                                       ; $678e: $5f
    sbc a                                         ; $678f: $9f
    ld l, a                                       ; $6790: $6f
    adc a                                         ; $6791: $8f
    ld h, a                                       ; $6792: $67
    nop                                           ; $6793: $00
    add a                                         ; $6794: $87
    cp e                                          ; $6795: $bb
    ld b, e                                       ; $6796: $43
    dec de                                        ; $6797: $1b
    db $e3                                        ; $6798: $e3
    call Call_0cc_6d31                            ; $6799: $cd $31 $6d
    inc bc                                        ; $679c: $03
    ld de, $0836                                  ; $679d: $11 $36 $08
    push af                                       ; $67a0: $f5
    ldh a, [$fa]                                  ; $67a1: $f0 $fa
    ld e, $20                                     ; $67a3: $1e $20
    jr nz, jr_0cc_67af                            ; $67a5: $20 $08

    nop                                           ; $67a7: $00
    cp $fe                                        ; $67a8: $fe $fe
    ld e, a                                       ; $67aa: $5f
    rra                                           ; $67ab: $1f
    ld l, a                                       ; $67ac: $6f

jr_0cc_67ad:
    adc a                                         ; $67ad: $8f
    scf                                           ; $67ae: $37

jr_0cc_67af:
    rst $00                                       ; $67af: $c7
    nop                                           ; $67b0: $00
    ld e, e                                       ; $67b1: $5b
    and e                                         ; $67b2: $a3
    adc l                                         ; $67b3: $8d
    ld [hl], c                                    ; $67b4: $71
    sbc l                                         ; $67b5: $9d
    ld h, c                                       ; $67b6: $61
    push bc                                       ; $67b7: $c5
    add hl, sp                                    ; $67b8: $39
    nop                                           ; $67b9: $00
    ld b, [hl]                                    ; $67ba: $46
    jr c, jr_0cc_6774                             ; $67bb: $38 $b7

    adc b                                         ; $67bd: $88
    adc c                                         ; $67be: $89
    add [hl]                                      ; $67bf: $86
    reti                                          ; $67c0: $d9


    add $00                                       ; $67c1: $c6 $00
    call $d6c2                                    ; $67c3: $cd $c2 $d6
    pop bc                                        ; $67c6: $c1
    call nz, $cec3                                ; $67c7: $c4 $c3 $ce
    pop bc                                        ; $67ca: $c1
    ld hl, $c0df                                  ; $67cb: $21 $df $c0
    ld e, b                                       ; $67ce: $58
    jr jr_0cc_6810                                ; $67cf: $18 $3f

    ccf                                           ; $67d1: $3f
    cp a                                          ; $67d2: $bf
    ccf                                           ; $67d3: $3f

jr_0cc_67d4:
    add h                                         ; $67d4: $84
    ld [$9f38], sp                                ; $67d5: $08 $38 $9f
    rra                                           ; $67d8: $1f
    sbc d                                         ; $67d9: $9a
    ld [$0858], sp                                ; $67da: $08 $58 $08
    ld [$fe18], sp                                ; $67dd: $08 $18 $fe
    cp $b2                                        ; $67e0: $fe $b2
    nop                                           ; $67e2: $00
    inc c                                         ; $67e3: $0c
    ld h, [hl]                                    ; $67e4: $66
    jr jr_0cc_67ad                                ; $67e5: $18 $c6

    jr c, jr_0cc_683b                             ; $67e7: $38 $52

    inc l                                         ; $67e9: $2c
    ld [hl+], a                                   ; $67ea: $22
    ld bc, $061c                                  ; $67eb: $01 $1c $06
    jr c, jr_0cc_6832                             ; $67ee: $38 $42

    inc e                                         ; $67f0: $1c
    ld l, $00                                     ; $67f1: $2e $00
    ldh [$38], a                                  ; $67f3: $e0 $38

jr_0cc_67f5:
    jr nz, jr_0cc_67f5                            ; $67f5: $20 $fe

    cp $c0                                        ; $67f7: $fe $c0
    ld [$8089], sp                                ; $67f9: $08 $89 $80
    sbc h                                         ; $67fc: $9c
    add e                                         ; $67fd: $83
    xor b                                         ; $67fe: $a8
    nop                                           ; $67ff: $00
    add a                                         ; $6800: $87
    add hl, de                                    ; $6801: $19
    ld b, $32                                     ; $6802: $06 $32
    dec c                                         ; $6804: $0d
    ld h, b                                       ; $6805: $60
    rra                                           ; $6806: $1f
    ld b, c                                       ; $6807: $41
    inc bc                                        ; $6808: $03
    ld c, $b0                                     ; $6809: $0e $b0
    rlca                                          ; $680b: $07
    rst $18                                       ; $680c: $df
    rra                                           ; $680d: $1f
    cp a                                          ; $680e: $bf
    ld c, h                                       ; $680f: $4c

jr_0cc_6810:
    nop                                           ; $6810: $00
    inc b                                         ; $6811: $04
    jr jr_0cc_67d4                                ; $6812: $18 $c0

    cp d                                          ; $6814: $ba
    ld [$08e6], sp                                ; $6815: $08 $e6 $08
    ei                                            ; $6818: $fb
    ld hl, sp-$10                                 ; $6819: $f8 $f0
    pop af                                        ; $681b: $f1
    pop af                                        ; $681c: $f1
    ldh a, [rP1]                                  ; $681d: $f0 $00
    jp hl                                         ; $681f: $e9


    ldh [$e6], a                                  ; $6820: $e0 $e6
    ldh [$c2], a                                  ; $6822: $e0 $c2
    call nz, $19c5                                ; $6824: $c4 $c5 $19
    nop                                           ; $6827: $00
    ld b, l                                       ; $6828: $45
    cp c                                          ; $6829: $b9
    adc l                                         ; $682a: $8d
    ld [hl], c                                    ; $682b: $71
    ld e, l                                       ; $682c: $5d
    and c                                         ; $682d: $a1
    dec bc                                        ; $682e: $0b
    di                                            ; $682f: $f3
    nop                                           ; $6830: $00
    sbc e                                         ; $6831: $9b

jr_0cc_6832:
    ld h, e                                       ; $6832: $63
    scf                                           ; $6833: $37
    rst $00                                       ; $6834: $c7
    rla                                           ; $6835: $17
    rst $20                                       ; $6836: $e7
    di                                            ; $6837: $f3
    ldh a, [rP1]                                  ; $6838: $f0 $00
    push af                                       ; $683a: $f5

jr_0cc_683b:
    ldh a, [$f3]                                  ; $683b: $f0 $f3
    ldh a, [$e6]                                  ; $683d: $f0 $e6
    pop hl                                        ; $683f: $e1
    call c, $00c3                                 ; $6840: $dc $c3 $00
    call z, $d7c3                                 ; $6843: $cc $c3 $d7
    ret z                                         ; $6846: $c8

    cp l                                          ; $6847: $bd
    add d                                         ; $6848: $82
    or [hl]                                       ; $6849: $b6
    nop                                           ; $684a: $00
    nop                                           ; $684b: $00
    inc b                                         ; $684c: $04
    ret z                                         ; $684d: $c8

    adc $30                                       ; $684e: $ce $30
    sub l                                         ; $6850: $95
    ld l, c                                       ; $6851: $69
    dec l                                         ; $6852: $2d
    pop de                                        ; $6853: $d1
    inc bc                                        ; $6854: $03
    dec de                                        ; $6855: $1b
    db $e3                                        ; $6856: $e3
    dec de                                        ; $6857: $1b
    db $e3                                        ; $6858: $e3
    ei                                            ; $6859: $fb
    inc bc                                        ; $685a: $03
    ld l, [hl]                                    ; $685b: $6e
    jr c, jr_0cc_68ce                             ; $685c: $38 $70

    ld [$fc00], sp                                ; $685e: $08 $00 $fc
    db $fc                                        ; $6861: $fc
    ld d, a                                       ; $6862: $57
    and a                                         ; $6863: $a7
    cpl                                           ; $6864: $2f
    rst $08                                       ; $6865: $cf
    rst $28                                       ; $6866: $ef
    rrca                                          ; $6867: $0f
    jr nc, jr_0cc_68d9                            ; $6868: $30 $6f

    adc a                                         ; $686a: $8f
    ld [hl-], a                                   ; $686b: $32
    add hl, bc                                    ; $686c: $09
    ld l, d                                       ; $686d: $6a
    ld [$81ae], sp                                ; $686e: $08 $ae $81
    xor l                                         ; $6871: $ad
    add d                                         ; $6872: $82
    nop                                           ; $6873: $00
    sbc d                                         ; $6874: $9a
    add l                                         ; $6875: $85
    adc h                                         ; $6876: $8c
    add e                                         ; $6877: $83
    xor h                                         ; $6878: $ac
    add e                                         ; $6879: $83
    cp e                                          ; $687a: $bb
    add b                                         ; $687b: $80
    ld [$c2d5], sp                                ; $687c: $08 $d5 $c2
    adc $c1                                       ; $687f: $ce $c1
    db $ec                                        ; $6881: $ec
    ld [$e11d], sp                                ; $6882: $08 $1d $e1
    ld c, c                                       ; $6885: $49
    nop                                           ; $6886: $00
    or c                                          ; $6887: $b1
    ld l, $d0                                     ; $6888: $2e $d0
    ld d, h                                       ; $688a: $54
    adc b                                         ; $688b: $88
    cpl                                           ; $688c: $2f
    add b                                         ; $688d: $80
    ld b, a                                       ; $688e: $47
    ld a, b                                       ; $688f: $78
    sbc b                                         ; $6890: $98
    sub b                                         ; $6891: $90
    ld c, c                                       ; $6892: $49
    ld b, d                                       ; $6893: $42
    add hl, bc                                    ; $6894: $09
    ld b, h                                       ; $6895: $44
    ld [$3804], sp                                ; $6896: $08 $04 $38
    db $fd                                        ; $6899: $fd
    db $fc                                        ; $689a: $fc
    sub d                                         ; $689b: $92
    nop                                           ; $689c: $00
    dec h                                         ; $689d: $25
    ld c, b                                       ; $689e: $48
    rlca                                          ; $689f: $07
    ret nc                                        ; $68a0: $d0

    cpl                                           ; $68a1: $2f
    add [hl]                                      ; $68a2: $86
    ld a, c                                       ; $68a3: $79
    ld h, c                                       ; $68a4: $61
    ld bc, $6a1e                                  ; $68a5: $01 $1e $6a
    dec d                                         ; $68a8: $15
    ld [hl-], a                                   ; $68a9: $32
    dec c                                         ; $68aa: $0d
    cp c                                          ; $68ab: $b9
    ld b, $be                                     ; $68ac: $06 $be
    jr c, jr_0cc_68d0                             ; $68ae: $38 $20

    rst $18                                       ; $68b0: $df
    rra                                           ; $68b1: $1f
    ld l, b                                       ; $68b2: $68
    ld [$c2d5], sp                                ; $68b3: $08 $d5 $c2
    jp $d2c0                                      ; $68b6: $c3 $c0 $d2


    ld c, $c1                                     ; $68b9: $0e $c1
    db $eb                                        ; $68bb: $eb
    ldh [$f7], a                                  ; $68bc: $e0 $f7
    xor b                                         ; $68be: $a8
    nop                                           ; $68bf: $00
    ld a, b                                       ; $68c0: $78
    add hl, bc                                    ; $68c1: $09
    ld d, $08                                     ; $68c2: $16 $08
    xor a                                         ; $68c4: $af
    nop                                           ; $68c5: $00
    ld c, a                                       ; $68c6: $4f
    rst $30                                       ; $68c7: $f7
    rlca                                          ; $68c8: $07
    scf                                           ; $68c9: $37
    rst $00                                       ; $68ca: $c7
    sbc e                                         ; $68cb: $9b
    ld h, e                                       ; $68cc: $63
    xor l                                         ; $68cd: $ad

jr_0cc_68ce:
    inc e                                         ; $68ce: $1c
    ld d, c                                       ; $68cf: $51

jr_0cc_68d0:
    ld a, l                                       ; $68d0: $7d
    add c                                         ; $68d1: $81
    add $09                                       ; $68d2: $c6 $09
    ld [hl-], a                                   ; $68d4: $32
    add hl, de                                    ; $68d5: $19
    ld a, [$b419]                                 ; $68d6: $fa $19 $b4

jr_0cc_68d9:
    dec bc                                        ; $68d9: $0b
    nop                                           ; $68da: $00
    ld l, d                                       ; $68db: $6a
    dec d                                         ; $68dc: $15
    jr nc, jr_0cc_68e8                            ; $68dd: $30 $09

    ld [hl], $00                                  ; $68df: $36 $00
    ld [hl-], a                                   ; $68e1: $32
    inc b                                         ; $68e2: $04
    ld [bc], a                                    ; $68e3: $02
    jr jr_0cc_68e7                                ; $68e4: $18 $01

    ld l, a                                       ; $68e6: $6f

jr_0cc_68e7:
    nop                                           ; $68e7: $00

jr_0cc_68e8:
    adc b                                         ; $68e8: $88
    add a                                         ; $68e9: $87
    sub b                                         ; $68ea: $90
    jr jr_0cc_693a                                ; $68eb: $18 $4d

    or c                                          ; $68ed: $b1
    sub b                                         ; $68ee: $90
    nop                                           ; $68ef: $00
    ld d, a                                       ; $68f0: $57
    sub b                                         ; $68f1: $90
    ld h, b                                       ; $68f2: $60
    jp nc, $f919                                  ; $68f3: $d2 $19 $f9

    ld hl, sp-$06                                 ; $68f6: $f8 $fa
    call z, $c001                                 ; $68f8: $cc $01 $c0
    adc d                                         ; $68fb: $8a
    ld [$088e], sp                                ; $68fc: $08 $8e $08
    ld a, [$03f8]                                 ; $68ff: $fa $f8 $03
    db $fc                                        ; $6902: $fc
    ld b, $f9                                     ; $6903: $06 $f9
    nop                                           ; $6905: $00
    and e                                         ; $6906: $a3
    ld e, h                                       ; $6907: $5c
    push de                                       ; $6908: $d5
    ld a, [hl+]                                   ; $6909: $2a
    adc b                                         ; $690a: $88
    ld [hl], a                                    ; $690b: $77
    ld d, l                                       ; $690c: $55
    and d                                         ; $690d: $a2
    nop                                           ; $690e: $00
    dec bc                                        ; $690f: $0b
    ldh [rTAC], a                                 ; $6910: $e0 $07
    ldh a, [rSC]                                  ; $6912: $f0 $02
    db $fc                                        ; $6914: $fc
    ld b, $f8                                     ; $6915: $06 $f8
    nop                                           ; $6917: $00
    and d                                         ; $6918: $a2
    ld e, h                                       ; $6919: $5c
    call nc, $8a28                                ; $691a: $d4 $28 $8a
    ld [hl], h                                    ; $691d: $74
    ld d, [hl]                                    ; $691e: $56
    and b                                         ; $691f: $a0
    nop                                           ; $6920: $00
    ld a, [bc]                                    ; $6921: $0a
    ldh [rTMA], a                                 ; $6922: $e0 $06
    ldh a, [$86]                                  ; $6924: $f0 $86
    add c                                         ; $6926: $81
    add a                                         ; $6927: $87
    add b                                         ; $6928: $80
    nop                                           ; $6929: $00
    adc c                                         ; $692a: $89
    add b                                         ; $692b: $80
    add [hl]                                      ; $692c: $86
    add b                                         ; $692d: $80
    sub d                                         ; $692e: $92
    add h                                         ; $692f: $84
    sbc c                                         ; $6930: $99
    add b                                         ; $6931: $80
    db $e4                                        ; $6932: $e4
    inc c                                         ; $6933: $0c
    ld [$6830], sp                                ; $6934: $08 $30 $68
    ret z                                         ; $6937: $c8

    add hl, de                                    ; $6938: $19
    ld e, a                                       ; $6939: $5f

jr_0cc_693a:
    sbc a                                         ; $693a: $9f
    ld b, $18                                     ; $693b: $06 $18
    rst $28                                       ; $693d: $ef
    rrca                                          ; $693e: $0f
    and d                                         ; $693f: $a2
    or b                                          ; $6940: $b0
    ld c, c                                       ; $6941: $49
    db $fd                                        ; $6942: $fd
    adc d                                         ; $6943: $8a
    ld bc, $f8fb                                  ; $6944: $01 $fb $f8
    di                                            ; $6947: $f3
    ld [hl], b                                    ; $6948: $70
    ld de, $0081                                  ; $6949: $11 $81 $00
    add d                                         ; $694c: $82
    ld e, l                                       ; $694d: $5d
    ld [bc], a                                    ; $694e: $02
    ld d, [hl]                                    ; $694f: $56
    nop                                           ; $6950: $00
    ld e, a                                       ; $6951: $5f
    nop                                           ; $6952: $00
    adc l                                         ; $6953: $8d
    nop                                           ; $6954: $00
    ld [hl], d                                    ; $6955: $72
    ld a, [de]                                    ; $6956: $1a
    push hl                                       ; $6957: $e5
    sub b                                         ; $6958: $90
    ld l, a                                       ; $6959: $6f
    adc b                                         ; $695a: $88
    ld [hl], a                                    ; $695b: $77
    ld d, [hl]                                    ; $695c: $56
    nop                                           ; $695d: $00
    xor c                                         ; $695e: $a9
    jr z, jr_0cc_69b8                             ; $695f: $28 $57

    and [hl]                                      ; $6961: $a6
    add hl, de                                    ; $6962: $19
    dec de                                        ; $6963: $1b
    ld h, h                                       ; $6964: $64
    cp h                                          ; $6965: $bc
    nop                                           ; $6966: $00
    ld b, b                                       ; $6967: $40
    inc e                                         ; $6968: $1c
    ldh [$36], a                                  ; $6969: $e0 $36
    ret z                                         ; $696b: $c8

    ld h, d                                       ; $696c: $62
    sbc h                                         ; $696d: $9c
    dec [hl]                                      ; $696e: $35
    ld bc, $1dc9                                  ; $696f: $01 $c9 $1d
    pop hl                                        ; $6972: $e1
    dec e                                         ; $6973: $1d
    pop hl                                        ; $6974: $e1
    or e                                          ; $6975: $b3
    ld b, e                                       ; $6976: $43
    add b                                         ; $6977: $80
    ld c, c                                       ; $6978: $49
    add b                                         ; $6979: $80
    or d                                          ; $697a: $b2
    ld a, [bc]                                    ; $697b: $0a
    xor [hl]                                      ; $697c: $ae
    add c                                         ; $697d: $81
    ld d, h                                       ; $697e: $54
    inc bc                                        ; $697f: $03
    inc c                                         ; $6980: $0c
    inc bc                                        ; $6981: $03
    jr jr_0cc_6984                                ; $6982: $18 $00

jr_0cc_6984:
    rlca                                          ; $6984: $07
    ld e, l                                       ; $6985: $5d
    ld [bc], a                                    ; $6986: $02
    cp d                                          ; $6987: $ba
    dec b                                         ; $6988: $05
    inc l                                         ; $6989: $2c
    ld [de], a                                    ; $698a: $12
    cp b                                          ; $698b: $b8
    nop                                           ; $698c: $00
    rlca                                          ; $698d: $07
    adc l                                         ; $698e: $8d
    ld [hl], d                                    ; $698f: $72
    dec de                                        ; $6990: $1b
    db $e4                                        ; $6991: $e4
    sub c                                         ; $6992: $91
    ld l, [hl]                                    ; $6993: $6e
    adc e                                         ; $6994: $8b
    nop                                           ; $6995: $00
    ld [hl], h                                    ; $6996: $74
    ld d, a                                       ; $6997: $57
    xor b                                         ; $6998: $a8
    ld a, [hl+]                                   ; $6999: $2a
    ld d, l                                       ; $699a: $55
    and a                                         ; $699b: $a7
    jr @+$1d                                      ; $699c: $18 $1b

    ld b, e                                       ; $699e: $43
    ld h, h                                       ; $699f: $64
    ld e, $09                                     ; $69a0: $1e $09
    ld l, a                                       ; $69a2: $6f
    adc a                                         ; $69a3: $8f
    rst $28                                       ; $69a4: $ef
    rrca                                          ; $69a5: $0f
    ld a, h                                       ; $69a6: $7c
    ld [$09a6], sp                                ; $69a7: $08 $a6 $09
    ld b, b                                       ; $69aa: $40
    ld hl, sp+$72                                 ; $69ab: $f8 $72
    db $10                                        ; $69ad: $10
    ret z                                         ; $69ae: $c8

    ret nz                                        ; $69af: $c0

    xor e                                         ; $69b0: $ab
    add b                                         ; $69b1: $80
    add a                                         ; $69b2: $87
    add b                                         ; $69b3: $80
    nop                                           ; $69b4: $00
    and a                                         ; $69b5: $a7
    add b                                         ; $69b6: $80
    ld e, [hl]                                    ; $69b7: $5e

jr_0cc_69b8:
    ld bc, $1be4                                  ; $69b8: $01 $e4 $1b
    ld a, d                                       ; $69bb: $7a
    dec b                                         ; $69bc: $05
    nop                                           ; $69bd: $00
    ld h, c                                       ; $69be: $61
    ld e, $f4                                     ; $69bf: $1e $f4
    dec bc                                        ; $69c1: $0b
    pop de                                        ; $69c2: $d1
    ld l, $19                                     ; $69c3: $2e $19
    and $00                                       ; $69c5: $e6 $00
    ld b, b                                       ; $69c7: $40
    cp a                                          ; $69c8: $bf
    ld de, $63ee                                  ; $69c9: $11 $ee $63
    sbc h                                         ; $69cc: $9c
    call nc, $002b                                ; $69cd: $d4 $2b $00
    rla                                           ; $69d0: $17
    add sp, $29                                   ; $69d1: $e8 $29
    sub $e3                                       ; $69d3: $d6 $e3
    inc e                                         ; $69d5: $1c
    and e                                         ; $69d6: $a3
    inc e                                         ; $69d7: $1c
    nop                                           ; $69d8: $00
    ld d, h                                       ; $69d9: $54
    dec bc                                        ; $69da: $0b
    ld hl, $7b9e                                  ; $69db: $21 $9e $7b
    add e                                         ; $69de: $83
    scf                                           ; $69df: $37
    rst $00                                       ; $69e0: $c7
    inc b                                         ; $69e1: $04
    ld [hl], a                                    ; $69e2: $77
    add a                                         ; $69e3: $87
    rst $08                                       ; $69e4: $cf
    rrca                                          ; $69e5: $0f
    sbc a                                         ; $69e6: $9f
    ldh [rNR42], a                                ; $69e7: $e0 $21
    ld h, e                                       ; $69e9: $63
    sbc h                                         ; $69ea: $9c
    inc a                                         ; $69eb: $3c
    push de                                       ; $69ec: $d5
    ld a, [hl+]                                   ; $69ed: $2a
    jr nz, jr_0cc_6a38                            ; $69ee: $20 $48

    ld a, [hl+]                                   ; $69f0: $2a
    dec de                                        ; $69f1: $1b
    and b                                         ; $69f2: $a0
    add hl, de                                    ; $69f3: $19
    and d                                         ; $69f4: $a2
    add hl, bc                                    ; $69f5: $09
    dec e                                         ; $69f6: $1d
    ld [bc], a                                    ; $69f7: $02
    nop                                           ; $69f8: $00
    inc l                                         ; $69f9: $2c
    inc bc                                        ; $69fa: $03
    rra                                           ; $69fb: $1f
    nop                                           ; $69fc: $00
    ld l, [hl]                                    ; $69fd: $6e
    ld bc, $026d                                  ; $69fe: $01 $6d $02
    nop                                           ; $6a01: $00
    ld e, $01                                     ; $6a02: $1e $01
    ld e, h                                       ; $6a04: $5c
    inc bc                                        ; $6a05: $03
    halt                                          ; $6a06: $76
    add hl, bc                                    ; $6a07: $09
    or b                                          ; $6a08: $b0
    ld c, a                                       ; $6a09: $4f
    nop                                           ; $6a0a: $00
    add sp, $17                                   ; $6a0b: $e8 $17
    sub b                                         ; $6a0d: $90
    rrca                                          ; $6a0e: $0f
    ld l, d                                       ; $6a0f: $6a
    dec b                                         ; $6a10: $05
    dec h                                         ; $6a11: $25
    ld c, d                                       ; $6a12: $4a
    nop                                           ; $6a13: $00
    add d                                         ; $6a14: $82
    dec e                                         ; $6a15: $1d
    ld [hl], h                                    ; $6a16: $74
    adc e                                         ; $6a17: $8b
    cp $01                                        ; $6a18: $fe $01
    inc sp                                        ; $6a1a: $33
    call z, Call_0cc_4900                         ; $6a1b: $cc $00 $49
    or [hl]                                       ; $6a1e: $b6
    add d                                         ; $6a1f: $82
    ld a, l                                       ; $6a20: $7d
    call nz, $203b                                ; $6a21: $c4 $3b $20
    dec e                                         ; $6a24: $1d
    inc bc                                        ; $6a25: $03
    jp nc, Jump_0cc_4408                          ; $6a26: $d2 $08 $44

    sbc c                                         ; $6a29: $99
    dec hl                                        ; $6a2a: $2b
    inc d                                         ; $6a2b: $14
    db $e4                                        ; $6a2c: $e4
    ld a, [bc]                                    ; $6a2d: $0a
    jp c, Jump_000_0009                           ; $6a2e: $da $09 $00

    ld [hl], e                                    ; $6a31: $73

Call_0cc_6a32:
    add e                                         ; $6a32: $83
    dec [hl]                                      ; $6a33: $35
    pop bc                                        ; $6a34: $c1
    ld e, $e0                                     ; $6a35: $1e $e0
    rra                                           ; $6a37: $1f

jr_0cc_6a38:
    ldh [$90], a                                  ; $6a38: $e0 $90
    ld b, b                                       ; $6a3a: $40
    ld e, b                                       ; $6a3b: $58
    or $09                                        ; $6a3c: $f6 $09
    jr nc, jr_0cc_6a48                            ; $6a3e: $30 $08

    add e                                         ; $6a40: $83
    ld a, h                                       ; $6a41: $7c
    push bc                                       ; $6a42: $c5
    ld a, [hl-]                                   ; $6a43: $3a
    nop                                           ; $6a44: $00
    ld hl, $d21c                                  ; $6a45: $21 $1c $d2

jr_0cc_6a48:
    ld [$9845], sp                                ; $6a48: $08 $45 $98
    dec hl                                        ; $6a4b: $2b
    inc d                                         ; $6a4c: $14
    nop                                           ; $6a4d: $00
    ld l, a                                       ; $6a4e: $6f
    adc a                                         ; $6a4f: $8f
    xor a                                         ; $6a50: $af
    ld c, a                                       ; $6a51: $4f
    rla                                           ; $6a52: $17
    rst $20                                       ; $6a53: $e7
    cp c                                          ; $6a54: $b9
    ld b, c                                       ; $6a55: $41
    nop                                           ; $6a56: $00
    cp $00                                        ; $6a57: $fe $00
    xor a                                         ; $6a59: $af
    ld d, b                                       ; $6a5a: $50
    rra                                           ; $6a5b: $1f
    ldh [$bf], a                                  ; $6a5c: $e0 $bf
    ld b, b                                       ; $6a5e: $40
    sub b                                         ; $6a5f: $90
    inc bc                                        ; $6a60: $03
    db $dd                                        ; $6a61: $dd
    ld [bc], a                                    ; $6a62: $02
    nop                                           ; $6a63: $00
    ld c, l                                       ; $6a64: $4d
    nop                                           ; $6a65: $00
    and d                                         ; $6a66: $a2
    nop                                           ; $6a67: $00
    dec de                                        ; $6a68: $1b
    nop                                           ; $6a69: $00
    ld a, d                                       ; $6a6a: $7a
    nop                                           ; $6a6b: $00
    inc b                                         ; $6a6c: $04
    inc d                                         ; $6a6d: $14
    nop                                           ; $6a6e: $00
    pop hl                                        ; $6a6f: $e1
    nop                                           ; $6a70: $00
    ld d, [hl]                                    ; $6a71: $56
    ld b, $00                                     ; $6a72: $06 $00
    reti                                          ; $6a74: $d9


    nop                                           ; $6a75: $00
    nop                                           ; $6a76: $00
    dec [hl]                                      ; $6a77: $35
    nop                                           ; $6a78: $00
    ld c, h                                       ; $6a79: $4c
    nop                                           ; $6a7a: $00
    dec h                                         ; $6a7b: $25
    nop                                           ; $6a7c: $00
    add b                                         ; $6a7d: $80
    nop                                           ; $6a7e: $00
    nop                                           ; $6a7f: $00
    ld l, c                                       ; $6a80: $69
    nop                                           ; $6a81: $00
    sub [hl]                                      ; $6a82: $96
    nop                                           ; $6a83: $00
    ld c, l                                       ; $6a84: $4d
    nop                                           ; $6a85: $00
    ld h, $20                                     ; $6a86: $26 $20
    nop                                           ; $6a88: $00
    ret z                                         ; $6a89: $c8

    ret nz                                        ; $6a8a: $c0

    add c                                         ; $6a8b: $81
    add c                                         ; $6a8c: $81
    ld d, e                                       ; $6a8d: $53
    inc bc                                        ; $6a8e: $03
    rlca                                          ; $6a8f: $07
    rlca                                          ; $6a90: $07
    nop                                           ; $6a91: $00
    ld c, $0e                                     ; $6a92: $0e $0e
    inc e                                         ; $6a94: $1c
    inc e                                         ; $6a95: $1c
    jr c, jr_0cc_6ad0                             ; $6a96: $38 $38

    ldh a, [$f0]                                  ; $6a98: $f0 $f0
    nop                                           ; $6a9a: $00
    pop hl                                        ; $6a9b: $e1
    pop hl                                        ; $6a9c: $e1
    jp $87c3                                      ; $6a9d: $c3 $c3 $87


    add a                                         ; $6aa0: $87
    adc a                                         ; $6aa1: $8f
    adc a                                         ; $6aa2: $8f
    nop                                           ; $6aa3: $00
    ld e, $1e                                     ; $6aa4: $1e $1e
    inc a                                         ; $6aa6: $3c
    inc a                                         ; $6aa7: $3c
    ld hl, sp-$08                                 ; $6aa8: $f8 $f8
    ld [hl], b                                    ; $6aaa: $70
    ld [hl], b                                    ; $6aab: $70
    ld [bc], a                                    ; $6aac: $02
    ldh [$e0], a                                  ; $6aad: $e0 $e0
    pop bc                                        ; $6aaf: $c1
    pop bc                                        ; $6ab0: $c1
    add e                                         ; $6ab1: $83
    add e                                         ; $6ab2: $83
    ld e, $18                                     ; $6ab3: $1e $18
    ld [hl], b                                    ; $6ab5: $70
    jr nz, jr_0cc_6b28                            ; $6ab6: $20 $70

    ret nc                                        ; $6ab8: $d0

    jr nz, jr_0cc_6abb                            ; $6ab9: $20 $00

jr_0cc_6abb:
    add d                                         ; $6abb: $82
    jp $8782                                      ; $6abc: $c3 $82 $87


    add b                                         ; $6abf: $80
    nop                                           ; $6ac0: $00
    adc a                                         ; $6ac1: $8f
    ld b, $1e                                     ; $6ac2: $06 $1e
    nop                                           ; $6ac4: $00
    inc a                                         ; $6ac5: $3c
    ld h, b                                       ; $6ac6: $60
    ld hl, sp-$10                                 ; $6ac7: $f8 $f0
    nop                                           ; $6ac9: $00
    ldh a, [$a0]                                  ; $6aca: $f0 $a0
    pop hl                                        ; $6acc: $e1
    jp nz, $00c3                                  ; $6acd: $c2 $c3 $00

jr_0cc_6ad0:
    add a                                         ; $6ad0: $87
    ld [bc], a                                    ; $6ad1: $02
    nop                                           ; $6ad2: $00
    rrca                                          ; $6ad3: $0f
    nop                                           ; $6ad4: $00
    rra                                           ; $6ad5: $1f
    nop                                           ; $6ad6: $00
    ld a, $48                                     ; $6ad7: $3e $48
    ld a, h                                       ; $6ad9: $7c
    ld h, b                                       ; $6ada: $60
    nop                                           ; $6adb: $00
    ld [hl], b                                    ; $6adc: $70
    and b                                         ; $6add: $a0
    ldh [rSTAT], a                                ; $6ade: $e0 $41
    pop bc                                        ; $6ae0: $c1
    ld [bc], a                                    ; $6ae1: $02
    add e                                         ; $6ae2: $83
    ld a, [bc]                                    ; $6ae3: $0a
    jr nz, jr_0cc_6af5                            ; $6ae4: $20 $0f

    ld [de], a                                    ; $6ae6: $12
    jr nz, jr_0cc_6ae9                            ; $6ae7: $20 $00

jr_0cc_6ae9:
    nop                                           ; $6ae9: $00
    ld a, b                                       ; $6aea: $78
    jr nc, @+$72                                  ; $6aeb: $30 $70

    and b                                         ; $6aed: $a0
    nop                                           ; $6aee: $00
    pop hl                                        ; $6aef: $e1
    add e                                         ; $6af0: $83
    jp $8707                                      ; $6af1: $c3 $07 $87


    inc b                                         ; $6af4: $04

jr_0cc_6af5:
    rrca                                          ; $6af5: $0f
    inc bc                                        ; $6af6: $03
    nop                                           ; $6af7: $00
    rra                                           ; $6af8: $1f
    ld a, [bc]                                    ; $6af9: $0a
    ld a, $74                                     ; $6afa: $3e $74
    ld a, h                                       ; $6afc: $7c
    adc b                                         ; $6afd: $88
    ld sp, hl                                     ; $6afe: $f9
    nop                                           ; $6aff: $00
    nop                                           ; $6b00: $00
    di                                            ; $6b01: $f3
    nop                                           ; $6b02: $00
    rst $20                                       ; $6b03: $e7
    nop                                           ; $6b04: $00
    rst $08                                       ; $6b05: $cf
    nop                                           ; $6b06: $00
    sbc a                                         ; $6b07: $9f
    nop                                           ; $6b08: $00
    ld bc, $003f                                  ; $6b09: $01 $3f $00
    ld a, [hl]                                    ; $6b0c: $7e
    nop                                           ; $6b0d: $00
    db $fc                                        ; $6b0e: $fc
    add b                                         ; $6b0f: $80
    ldh a, [$99]                                  ; $6b10: $f0 $99
    nop                                           ; $6b12: $00
    and b                                         ; $6b13: $a0
    ld b, b                                       ; $6b14: $40
    nop                                           ; $6b15: $00
    nop                                           ; $6b16: $00
    ld b, b                                       ; $6b17: $40
    stop                                          ; $6b18: $10 $00
    ld a, h                                       ; $6b1a: $7c
    reti                                          ; $6b1b: $d9


    ld sp, hl                                     ; $6b1c: $f9
    add b                                         ; $6b1d: $80
    nop                                           ; $6b1e: $00
    di                                            ; $6b1f: $f3
    ret nz                                        ; $6b20: $c0

    rst $20                                       ; $6b21: $e7
    ld b, h                                       ; $6b22: $44
    rst $08                                       ; $6b23: $cf
    ld bc, $019f                                  ; $6b24: $01 $9f $01
    add b                                         ; $6b27: $80

jr_0cc_6b28:
    jr nz, jr_0cc_6b3a                            ; $6b28: $20 $10

    reti                                          ; $6b2a: $d9


    ld sp, hl                                     ; $6b2b: $f9
    pop af                                        ; $6b2c: $f1
    di                                            ; $6b2d: $f3
    and d                                         ; $6b2e: $a2
    rst $20                                       ; $6b2f: $e7
    add d                                         ; $6b30: $82
    nop                                           ; $6b31: $00
    rst $08                                       ; $6b32: $cf
    add b                                         ; $6b33: $80
    sbc a                                         ; $6b34: $9f
    ld b, $3f                                     ; $6b35: $06 $3f
    ld b, d                                       ; $6b37: $42
    ld a, [hl]                                    ; $6b38: $7e
    ld h, h                                       ; $6b39: $64

jr_0cc_6b3a:
    nop                                           ; $6b3a: $00
    db $fc                                        ; $6b3b: $fc
    ld sp, hl                                     ; $6b3c: $f9
    ld sp, hl                                     ; $6b3d: $f9
    or d                                          ; $6b3e: $b2
    di                                            ; $6b3f: $f3
    ld [c], a                                     ; $6b40: $e2
    rst $20                                       ; $6b41: $e7
    ld b, b                                       ; $6b42: $40
    add hl, bc                                    ; $6b43: $09
    rst $08                                       ; $6b44: $cf
    ld [de], a                                    ; $6b45: $12
    sbc a                                         ; $6b46: $9f
    jr nz, @+$42                                  ; $6b47: $20 $40

    nop                                           ; $6b49: $00
    ret z                                         ; $6b4a: $c8

    db $fc                                        ; $6b4b: $fc
    or b                                          ; $6b4c: $b0
    nop                                           ; $6b4d: $00
    nop                                           ; $6b4e: $00
    ldh [$c3], a                                  ; $6b4f: $e0 $c3
    ret nz                                        ; $6b51: $c0

    add a                                         ; $6b52: $87
    add c                                         ; $6b53: $81
    rrca                                          ; $6b54: $0f
    inc bc                                        ; $6b55: $03
    ld e, $00                                     ; $6b56: $1e $00
    ld b, $3c                                     ; $6b58: $06 $3c
    inc c                                         ; $6b5a: $0c
    ld a, b                                       ; $6b5b: $78
    jr jr_0cc_6b6e                                ; $6b5c: $18 $10

    ld sp, hl                                     ; $6b5e: $f9
    jr nz, jr_0cc_6b91                            ; $6b5f: $20 $30

    di                                            ; $6b61: $f3
    jr nz, jr_0cc_6b84                            ; $6b62: $20 $20

    nop                                           ; $6b64: $00
    ld h, b                                       ; $6b65: $60
    nop                                           ; $6b66: $00
    rst $38                                       ; $6b67: $ff
    nop                                           ; $6b68: $00
    cp $00                                        ; $6b69: $fe $00
    nop                                           ; $6b6b: $00
    db $fc                                        ; $6b6c: $fc
    ret nc                                        ; $6b6d: $d0

jr_0cc_6b6e:
    ldh a, [$80]                                  ; $6b6e: $f0 $80
    pop hl                                        ; $6b70: $e1
    ret nz                                        ; $6b71: $c0

    jp $0504                                      ; $6b72: $c3 $04 $05


    add a                                         ; $6b75: $87
    ld bc, $018f                                  ; $6b76: $01 $8f $01
    rra                                           ; $6b79: $1f
    ld [hl], d                                    ; $6b7a: $72
    nop                                           ; $6b7b: $00
    rst $38                                       ; $6b7c: $ff
    ld [bc], a                                    ; $6b7d: $02
    jr z, jr_0cc_6b95                             ; $6b7e: $28 $15

    ld b, b                                       ; $6b80: $40
    rst $38                                       ; $6b81: $ff
    jr nz, jr_0cc_6b86                            ; $6b82: $20 $02

jr_0cc_6b84:
    nop                                           ; $6b84: $00
    inc d                                         ; $6b85: $14

jr_0cc_6b86:
    db $10                                        ; $6b86: $10
    db $10                                        ; $6b87: $10
    ld bc, $0002                                  ; $6b88: $01 $02 $00
    nop                                           ; $6b8b: $00

jr_0cc_6b8c:
    ld b, h                                       ; $6b8c: $44
    rst $38                                       ; $6b8d: $ff
    ret nz                                        ; $6b8e: $c0

    rst $38                                       ; $6b8f: $ff
    adc b                                         ; $6b90: $88

jr_0cc_6b91:
    rst $38                                       ; $6b91: $ff
    db $dd                                        ; $6b92: $dd
    rst $38                                       ; $6b93: $ff
    nop                                           ; $6b94: $00

jr_0cc_6b95:
    nop                                           ; $6b95: $00
    ld sp, hl                                     ; $6b96: $f9
    ld bc, $03f2                                  ; $6b97: $01 $f2 $03

jr_0cc_6b9a:
    db $e4                                        ; $6b9a: $e4
    ld b, $c9                                     ; $6b9b: $06 $c9
    ld bc, $930c                                  ; $6b9d: $01 $0c $93
    jr c, @+$29                                   ; $6ba0: $38 $27

    jr nc, jr_0cc_6bf3                            ; $6ba2: $30 $4f

    ld [hl], h                                    ; $6ba4: $74
    ld b, [hl]                                    ; $6ba5: $46
    nop                                           ; $6ba6: $00
    nop                                           ; $6ba7: $00
    ld bc, $03fe                                  ; $6ba8: $01 $fe $03
    db $fc                                        ; $6bab: $fc
    ld b, $f9                                     ; $6bac: $06 $f9
    inc c                                         ; $6bae: $0c
    di                                            ; $6baf: $f3
    nop                                           ; $6bb0: $00
    jr jr_0cc_6b9a                                ; $6bb1: $18 $e7

    jr c, jr_0cc_6b84                             ; $6bb3: $38 $cf

    add sp, -$61                                  ; $6bb5: $e8 $9f
    ld sp, hl                                     ; $6bb7: $f9
    ld sp, hl                                     ; $6bb8: $f9
    ld bc, $f2b3                                  ; $6bb9: $01 $b3 $f2
    db $e3                                        ; $6bbc: $e3
    db $e4                                        ; $6bbd: $e4
    ld b, [hl]                                    ; $6bbe: $46
    ret                                           ; $6bbf: $c9


    ld e, $20                                     ; $6bc0: $1e $20
    nop                                           ; $6bc2: $00
    nop                                           ; $6bc3: $00
    ld sp, $e94f                                  ; $6bc4: $31 $4f $e9
    sbc a                                         ; $6bc7: $9f
    add sp, -$07                                  ; $6bc8: $e8 $f9
    or e                                          ; $6bca: $b3
    ldh a, [rP1]                                  ; $6bcb: $f0 $00
    ld h, a                                       ; $6bcd: $67
    ldh [$0e], a                                  ; $6bce: $e0 $0e
    pop bc                                        ; $6bd0: $c1
    ld e, $81                                     ; $6bd1: $1e $81
    ccf                                           ; $6bd3: $3f
    inc bc                                        ; $6bd4: $03
    nop                                           ; $6bd5: $00
    ld a, d                                       ; $6bd6: $7a
    ld b, $f0                                     ; $6bd7: $06 $f0
    inc c                                         ; $6bd9: $0c

jr_0cc_6bda:
    ldh a, [$30]                                  ; $6bda: $f0 $30
    and e                                         ; $6bdc: $a3
    ld h, b                                       ; $6bdd: $60
    ld [$c087], sp                                ; $6bde: $08 $87 $c0
    rrca                                          ; $6be1: $0f
    add c                                         ; $6be2: $81
    db $10                                        ; $6be3: $10
    jr jr_0cc_6bda                                ; $6be4: $18 $f4

    inc c                                         ; $6be6: $0c
    ldh [rP1], a                                  ; $6be7: $e0 $00
    jr nc, jr_0cc_6b8c                            ; $6be9: $30 $a1

    ld h, b                                       ; $6beb: $60
    ld b, e                                       ; $6bec: $43
    ret nz                                        ; $6bed: $c0

    ld b, $81                                     ; $6bee: $06 $81
    ld c, $00                                     ; $6bf0: $0e $00
    add e                                         ; $6bf2: $83

jr_0cc_6bf3:
    ld a, [de]                                    ; $6bf3: $1a
    ld b, $30                                     ; $6bf4: $06 $30
    inc c                                         ; $6bf6: $0c
    ld h, b                                       ; $6bf7: $60
    sbc b                                         ; $6bf8: $98
    nop                                           ; $6bf9: $00
    ld [$01f0], sp                                ; $6bfa: $08 $f0 $01
    ldh [$83], a                                  ; $6bfd: $e0 $83
    stop                                          ; $6bff: $10 $00
    inc c                                         ; $6c01: $0c
    inc bc                                        ; $6c02: $03
    jr @-$62                                      ; $6c03: $18 $9c

    db $10                                        ; $6c05: $10
    ld [$0018], sp                                ; $6c06: $08 $18 $00
    db $10                                        ; $6c09: $10
    ld sp, $2090                                  ; $6c0a: $31 $90 $20
    jr nz, @+$03                                  ; $6c0d: $20 $01

    ld bc, $10e7                                  ; $6c0f: $01 $e7 $10
    ld bc, $04cf                                  ; $6c12: $01 $cf $04
    jr nz, @+$03                                  ; $6c15: $20 $01

    ld [$dd7f], sp                                ; $6c17: $08 $7f $dd
    rst $38                                       ; $6c1a: $ff
    inc b                                         ; $6c1b: $04
    ld h, h                                       ; $6c1c: $64
    rst $38                                       ; $6c1d: $ff
    ld b, d                                       ; $6c1e: $42
    rst $38                                       ; $6c1f: $ff
    ld b, $9c                                     ; $6c20: $06 $9c
    nop                                           ; $6c22: $00
    sub d                                         ; $6c23: $92
    rst $38                                       ; $6c24: $ff
    ld bc, $ffba                                  ; $6c25: $01 $ba $ff
    db $fd                                        ; $6c28: $fd
    rst $38                                       ; $6c29: $ff
    rst $18                                       ; $6c2a: $df
    rst $38                                       ; $6c2b: $ff
    ret                                           ; $6c2c: $c9


    xor [hl]                                      ; $6c2d: $ae
    nop                                           ; $6c2e: $00
    db $10                                        ; $6c2f: $10

jr_0cc_6c30:
    jr nz, @+$01                                  ; $6c30: $20 $ff

    ld [hl], d                                    ; $6c32: $72
    ret nz                                        ; $6c33: $c0

    nop                                           ; $6c34: $00
    ld a, [c]                                     ; $6c35: $f2
    rst $38                                       ; $6c36: $ff
    or [hl]                                       ; $6c37: $b6
    rst $38                                       ; $6c38: $ff
    nop                                           ; $6c39: $00
    rst $38                                       ; $6c3a: $ff
    rst $38                                       ; $6c3b: $ff
    ret nz                                        ; $6c3c: $c0

    ccf                                           ; $6c3d: $3f
    add e                                         ; $6c3e: $83
    ld a, [hl]                                    ; $6c3f: $7e
    inc de                                        ; $6c40: $13
    db $fc                                        ; $6c41: $fc
    nop                                           ; $6c42: $00
    ld l, $f9                                     ; $6c43: $2e $f9
    ld l, $f3                                     ; $6c45: $2e $f3
    ld a, e                                       ; $6c47: $7b
    rst $20                                       ; $6c48: $e7
    cp e                                          ; $6c49: $bb
    rst $08                                       ; $6c4a: $cf
    inc b                                         ; $6c4b: $04
    xor $9f                                       ; $6c4c: $ee $9f
    halt                                          ; $6c4e: $76
    rst $38                                       ; $6c4f: $ff
    ld c, e                                       ; $6c50: $4b
    or b                                          ; $6c51: $b0
    db $10                                        ; $6c52: $10
    ld l, a                                       ; $6c53: $6f
    di                                            ; $6c54: $f3
    rlca                                          ; $6c55: $07
    cp a                                          ; $6c56: $bf
    rst $20                                       ; $6c57: $e7
    cp [hl]                                       ; $6c58: $be
    rst $08                                       ; $6c59: $cf
    rst $30                                       ; $6c5a: $f7
    ld b, $09                                     ; $6c5b: $06 $09
    db $f4                                        ; $6c5d: $f4
    nop                                           ; $6c5e: $00
    ret nz                                        ; $6c5f: $c0

    ld [$9804], sp                                ; $6c60: $08 $04 $98
    rst $20                                       ; $6c63: $e7
    inc [hl]                                      ; $6c64: $34
    rst $08                                       ; $6c65: $cf
    ld h, h                                       ; $6c66: $64
    ld d, $01                                     ; $6c67: $16 $01
    inc bc                                        ; $6c69: $03
    db $fc                                        ; $6c6a: $fc
    nop                                           ; $6c6b: $00
    rlca                                          ; $6c6c: $07
    ld hl, sp+$0f                                 ; $6c6d: $f8 $0f
    pop af                                        ; $6c6f: $f1
    ld e, [hl]                                    ; $6c70: $5e
    pop hl                                        ; $6c71: $e1
    db $fc                                        ; $6c72: $fc
    jp $f801                                      ; $6c73: $c3 $01 $f8


    add a                                         ; $6c76: $87
    db $fd                                        ; $6c77: $fd
    rrca                                          ; $6c78: $0f
    ld h, h                                       ; $6c79: $64
    rst $38                                       ; $6c7a: $ff

jr_0cc_6c7b:
    ld b, e                                       ; $6c7b: $43
    stop                                          ; $6c7c: $10 $00
    nop                                           ; $6c7e: $00

jr_0cc_6c7f:
    adc $f1                                       ; $6c7f: $ce $f1
    sbc [hl]                                      ; $6c81: $9e
    pop hl                                        ; $6c82: $e1
    cp [hl]                                       ; $6c83: $be
    jp $87fd                                      ; $6c84: $c3 $fd $87


    jr nz, @+$01                                  ; $6c87: $20 $ff

    rrca                                          ; $6c89: $0f
    ld h, b                                       ; $6c8a: $60
    nop                                           ; $6c8b: $00
    cp $23                                        ; $6c8c: $fe $23
    db $fc                                        ; $6c8e: $fc
    halt                                          ; $6c8f: $76
    ld sp, hl                                     ; $6c90: $f9
    ld bc, $f34c                                  ; $6c91: $01 $4c $f3
    ld a, [$b6e7]                                 ; $6c94: $fa $e7 $b6
    rst $08                                       ; $6c97: $cf
    rst $38                                       ; $6c98: $ff
    ld b, [hl]                                    ; $6c99: $46
    ld bc, $8300                                  ; $6c9a: $01 $00 $83
    db $fc                                        ; $6c9d: $fc
    rla                                           ; $6c9e: $17
    ld hl, sp+$2e                                 ; $6c9f: $f8 $2e
    pop af                                        ; $6ca1: $f1
    ld a, $e1                                     ; $6ca2: $3e $e1
    nop                                           ; $6ca4: $00
    ld a, a                                       ; $6ca5: $7f
    jp $87fb                                      ; $6ca6: $c3 $fb $87


    cp $0f                                        ; $6ca9: $fe $0f
    ret nz                                        ; $6cab: $c0

    ccf                                           ; $6cac: $3f
    jr nc, jr_0cc_6c30                            ; $6cad: $30 $81

    ld a, [hl]                                    ; $6caf: $7e
    ld b, d                                       ; $6cb0: $42
    nop                                           ; $6cb1: $00
    jr nz, jr_0cc_6cb4                            ; $6cb2: $20 $00

jr_0cc_6cb4:
    ret c                                         ; $6cb4: $d8

    rst $20                                       ; $6cb5: $e7
    cp b                                          ; $6cb6: $b8
    rst $08                                       ; $6cb7: $cf

jr_0cc_6cb8:
    ld b, b                                       ; $6cb8: $40
    db $fd                                        ; $6cb9: $fd
    ld d, b                                       ; $6cba: $50
    jr nz, jr_0cc_6ccb                            ; $6cbb: $20 $0e

    pop af                                        ; $6cbd: $f1
    ld e, $e1                                     ; $6cbe: $1e $e1
    inc a                                         ; $6cc0: $3c
    jp Jump_0cc_7800                              ; $6cc1: $c3 $00 $78


jr_0cc_6cc4:
    add a                                         ; $6cc4: $87
    ldh a, [rIF]                                  ; $6cc5: $f0 $0f
    ret                                           ; $6cc7: $c9


    ld a, $8b                                     ; $6cc8: $3e $8b
    ld a, h                                       ; $6cca: $7c

jr_0cc_6ccb:
    ld [$f817], sp                                ; $6ccb: $08 $17 $f8
    rrca                                          ; $6cce: $0f
    ldh a, [rNR10]                                ; $6ccf: $f0 $10
    jr z, jr_0cc_6cc4                             ; $6cd1: $28 $f1

    jr jr_0cc_6cb8                                ; $6cd3: $18 $e3

    nop                                           ; $6cd5: $00
    jr nc, jr_0cc_6c7f                            ; $6cd6: $30 $a7

    ld h, b                                       ; $6cd8: $60
    ld c, a                                       ; $6cd9: $4f
    ret nz                                        ; $6cda: $c0

    ld e, $81                                     ; $6cdb: $1e $81
    inc a                                         ; $6cdd: $3c
    nop                                           ; $6cde: $00
    inc bc                                        ; $6cdf: $03
    ld a, b                                       ; $6ce0: $78
    rlca                                          ; $6ce1: $07
    ldh a, [rIF]                                  ; $6ce2: $f0 $0f
    ld sp, hl                                     ; $6ce4: $f9
    add hl, de                                    ; $6ce5: $19
    jp Jump_000_3000                              ; $6ce6: $c3 $00 $30


    rst $00                                       ; $6ce9: $c7
    ld h, b                                       ; $6cea: $60
    ld c, [hl]                                    ; $6ceb: $4e
    pop bc                                        ; $6cec: $c1
    rra                                           ; $6ced: $1f
    add c                                         ; $6cee: $81
    dec a                                         ; $6cef: $3d
    ld [hl+], a                                   ; $6cf0: $22
    inc bc                                        ; $6cf1: $03
    ld a, b                                       ; $6cf2: $78
    jr nc, jr_0cc_6cf6                            ; $6cf3: $30 $01

    ret nz                                        ; $6cf5: $c0

jr_0cc_6cf6:
    jr nc, jr_0cc_6c7b                            ; $6cf6: $30 $83

    jr nc, @+$03                                  ; $6cf8: $30 $01

    ld c, $e2                                     ; $6cfa: $0e $e2
    jr nc, @+$03                                  ; $6cfc: $30 $01

    jr nz, jr_0cc_6d00                            ; $6cfe: $20 $00

jr_0cc_6d00:
    db $10                                        ; $6d00: $10
    db $10                                        ; $6d01: $10
    add c                                         ; $6d02: $81
    ld h, b                                       ; $6d03: $60
    inc bc                                        ; $6d04: $03
    jr nz, jr_0cc_6d10                            ; $6d05: $20 $09

    add e                                         ; $6d07: $83
    inc b                                         ; $6d08: $04
    jr jr_0cc_6d12                                ; $6d09: $18 $07

    inc [hl]                                      ; $6d0b: $34
    rrca                                          ; $6d0c: $0f
    ld h, h                                       ; $6d0d: $64
    ret nc                                        ; $6d0e: $d0

    nop                                           ; $6d0f: $00

jr_0cc_6d10:
    ld c, d                                       ; $6d10: $4a
    rst $38                                       ; $6d11: $ff

jr_0cc_6d12:
    nop                                           ; $6d12: $00
    inc bc                                        ; $6d13: $03
    rst $38                                       ; $6d14: $ff
    inc b                                         ; $6d15: $04
    rst $38                                       ; $6d16: $ff
    ld h, a                                       ; $6d17: $67
    rst $38                                       ; $6d18: $ff
    or a                                          ; $6d19: $b7
    rst $38                                       ; $6d1a: $ff
    ld b, b                                       ; $6d1b: $40
    cp [hl]                                       ; $6d1c: $be
    inc b                                         ; $6d1d: $04
    nop                                           ; $6d1e: $00
    rst $38                                       ; $6d1f: $ff
    ccf                                           ; $6d20: $3f
    rst $38                                       ; $6d21: $ff
    ld a, [hl]                                    ; $6d22: $7e
    rst $38                                       ; $6d23: $ff
    db $fc                                        ; $6d24: $fc
    ld bc, $f9ff                                  ; $6d25: $01 $ff $f9
    rst $38                                       ; $6d28: $ff
    di                                            ; $6d29: $f3
    rst $38                                       ; $6d2a: $ff
    rst $20                                       ; $6d2b: $e7
    rst $38                                       ; $6d2c: $ff
    and b                                         ; $6d2d: $a0
    nop                                           ; $6d2e: $00

jr_0cc_6d2f:
    add b                                         ; $6d2f: $80
    inc bc                                        ; $6d30: $03

Call_0cc_6d31:
    ld bc, $fffc                                  ; $6d31: $01 $fc $ff
    ld hl, sp-$01                                 ; $6d34: $f8 $ff
    pop af                                        ; $6d36: $f1
    rst $38                                       ; $6d37: $ff
    pop hl                                        ; $6d38: $e1
    db $10                                        ; $6d39: $10
    rst $38                                       ; $6d3a: $ff
    jp $c0ff                                      ; $6d3b: $c3 $ff $c0


    nop                                           ; $6d3e: $00

jr_0cc_6d3f:
    rst $38                                       ; $6d3f: $ff
    ld e, $ff                                     ; $6d40: $1e $ff
    inc a                                         ; $6d42: $3c
    ld [$78ff], sp                                ; $6d43: $08 $ff $78
    rst $38                                       ; $6d46: $ff
    ldh a, [rNR10]                                ; $6d47: $f0 $10
    jr z, jr_0cc_6d2f                             ; $6d49: $28 $e4

    ccf                                           ; $6d4b: $3f
    jp nz, Jump_0cc_7f00                          ; $6d4c: $c2 $00 $7f

    ld b, $ff                                     ; $6d4f: $06 $ff
    add $f9                                       ; $6d51: $c6 $f9
    sbc [hl]                                      ; $6d53: $9e
    di                                            ; $6d54: $f3
    cp d                                          ; $6d55: $ba
    jr nz, jr_0cc_6d3f                            ; $6d56: $20 $e7

    db $fd                                        ; $6d58: $fd
    ret nc                                        ; $6d59: $d0

    nop                                           ; $6d5a: $00
    ret                                           ; $6d5b: $c9


    ccf                                           ; $6d5c: $3f
    add e                                         ; $6d5d: $83
    ld a, h                                       ; $6d5e: $7c
    daa                                           ; $6d5f: $27
    ld [hl+], a                                   ; $6d60: $22
    ld hl, sp+$7e                                 ; $6d61: $f8 $7e
    nop                                           ; $6d63: $00
    ld bc, $c3fe                                  ; $6d64: $01 $fe $c3
    cp $f0                                        ; $6d67: $fe $f0
    nop                                           ; $6d69: $00
    pop hl                                        ; $6d6a: $e1
    ld bc, $c31e                                  ; $6d6b: $01 $1e $c3
    inc a                                         ; $6d6e: $3c
    sub a                                         ; $6d6f: $97
    ld a, b                                       ; $6d70: $78
    cpl                                           ; $6d71: $2f
    ldh a, [$e0]                                  ; $6d72: $f0 $e0
    jr z, jr_0cc_6d7e                             ; $6d74: $28 $08

    rst $30                                       ; $6d76: $f7
    ld a, $cb                                     ; $6d77: $3e $cb
    ld a, h                                       ; $6d79: $7c
    jr nz, @+$03                                  ; $6d7a: $20 $01

    ldh a, [$7f]                                  ; $6d7c: $f0 $7f

jr_0cc_6d7e:
    pop hl                                        ; $6d7e: $e1
    ld c, b                                       ; $6d7f: $48
    cp a                                          ; $6d80: $bf
    jr nz, jr_0cc_6d83                            ; $6d81: $20 $00

jr_0cc_6d83:
    rst $30                                       ; $6d83: $f7
    ld c, $20                                     ; $6d84: $0e $20
    ld [$7887], sp                                ; $6d86: $08 $87 $78
    rrca                                          ; $6d89: $0f
    nop                                           ; $6d8a: $00
    ldh a, [$3e]                                  ; $6d8b: $f0 $3e

jr_0cc_6d8d:
    pop bc                                        ; $6d8d: $c1
    db $fc                                        ; $6d8e: $fc
    add e                                         ; $6d8f: $83
    db $fc                                        ; $6d90: $fc
    rlca                                          ; $6d91: $07
    push af                                       ; $6d92: $f5
    nop                                           ; $6d93: $00
    ld c, $ff                                     ; $6d94: $0e $ff
    inc e                                         ; $6d96: $1c
    rst $38                                       ; $6d97: $ff
    jr c, @+$01                                   ; $6d98: $38 $ff

    ld [hl], b                                    ; $6d9a: $70
    rst $38                                       ; $6d9b: $ff
    nop                                           ; $6d9c: $00
    ldh [$fb], a                                  ; $6d9d: $e0 $fb
    ret nz                                        ; $6d9f: $c0

    rst $28                                       ; $6da0: $ef
    add c                                         ; $6da1: $81
    rst $30                                       ; $6da2: $f7
    inc bc                                        ; $6da3: $03
    rst $18                                       ; $6da4: $df
    nop                                           ; $6da5: $00
    ld b, $f7                                     ; $6da6: $06 $f7
    inc c                                         ; $6da8: $0c
    rst $20                                       ; $6da9: $e7
    jr @-$2f                                      ; $6daa: $18 $cf

    jr nc, jr_0cc_6d8d                            ; $6dac: $30 $df

    ld bc, $bf60                                  ; $6dae: $01 $60 $bf
    ret nz                                        ; $6db1: $c0

    cp $81                                        ; $6db2: $fe $81
    db $fd                                        ; $6db4: $fd
    inc bc                                        ; $6db5: $03
    ld l, c                                       ; $6db6: $69
    ld bc, $0e08                                  ; $6db7: $01 $08 $0e
    db $e3                                        ; $6dba: $e3
    inc e                                         ; $6dbb: $1c
    rst $20                                       ; $6dbc: $e7
    ld [hl+], a                                   ; $6dbd: $22
    nop                                           ; $6dbe: $00
    ld a, [hl]                                    ; $6dbf: $7e
    pop bc                                        ; $6dc0: $c1
    cp $00                                        ; $6dc1: $fe $00
    add e                                         ; $6dc3: $83
    cp $07                                        ; $6dc4: $fe $07

jr_0cc_6dc6:
    rst $38                                       ; $6dc6: $ff
    ld c, $9f                                     ; $6dc7: $0e $9f
    inc c                                         ; $6dc9: $0c
    ld a, [hl]                                    ; $6dca: $7e
    nop                                           ; $6dcb: $00
    jr @-$04                                      ; $6dcc: $18 $fa

    jr nc, jr_0cc_6e47                            ; $6dce: $30 $77

    jr nz, jr_0cc_6dc6                            ; $6dd0: $20 $f4

    ld b, b                                       ; $6dd2: $40
    rst $00                                       ; $6dd3: $c7
    nop                                           ; $6dd4: $00
    add b                                         ; $6dd5: $80
    sub d                                         ; $6dd6: $92
    nop                                           ; $6dd7: $00
    xor l                                         ; $6dd8: $ad
    nop                                           ; $6dd9: $00
    add b                                         ; $6dda: $80
    inc bc                                        ; $6ddb: $03
    or $01                                        ; $6ddc: $f6 $01
    ld b, b                                       ; $6dde: $40
    rst $38                                       ; $6ddf: $ff
    ld bc, $df10                                  ; $6de0: $01 $10 $df
    ld a, a                                       ; $6de3: $7f
    ld [hl], a                                    ; $6de4: $77
    rra                                           ; $6de5: $1f
    ld a, a                                       ; $6de6: $7f
    daa                                           ; $6de7: $27
    inc c                                         ; $6de8: $0c
    xor e                                         ; $6de9: $ab
    rlca                                          ; $6dea: $07
    rra                                           ; $6deb: $1f
    rlca                                          ; $6dec: $07
    db $10                                        ; $6ded: $10
    jr jr_0cc_6df6                                ; $6dee: $18 $06

    ld c, b                                       ; $6df0: $48
    db $fd                                        ; $6df1: $fd
    rst $38                                       ; $6df2: $ff
    nop                                           ; $6df3: $00
    di                                            ; $6df4: $f3
    db $fc                                        ; $6df5: $fc

jr_0cc_6df6:
    cp $f8                                        ; $6df6: $fe $f8
    db $db                                        ; $6df8: $db
    ldh [$dd], a                                  ; $6df9: $e0 $dd
    add sp, $00                                   ; $6dfb: $e8 $00
    ld a, [$acc0]                                 ; $6dfd: $fa $c0 $ac
    ret nz                                        ; $6e00: $c0

    rst $38                                       ; $6e01: $ff
    rst $38                                       ; $6e02: $ff
    ccf                                           ; $6e03: $3f
    rst $38                                       ; $6e04: $ff
    nop                                           ; $6e05: $00
    rst $10                                       ; $6e06: $d7
    cp a                                          ; $6e07: $bf
    db $db                                        ; $6e08: $db

jr_0cc_6e09:
    rlca                                          ; $6e09: $07
    ld e, a                                       ; $6e0a: $5f
    add hl, bc                                    ; $6e0b: $09
    dec l                                         ; $6e0c: $2d
    inc bc                                        ; $6e0d: $03
    ld [$0017], sp                                ; $6e0e: $08 $17 $00
    ld l, $05                                     ; $6e11: $2e $05
    jr nc, jr_0cc_6e4d                            ; $6e13: $30 $38

    cp $ff                                        ; $6e15: $fe $ff
    rst $38                                       ; $6e17: $ff
    db $10                                        ; $6e18: $10
    db $fc                                        ; $6e19: $fc
    ld a, [$34fc]                                 ; $6e1a: $fa $fc $34
    jr z, @-$07                                   ; $6e1d: $28 $f7

    ld hl, sp-$02                                 ; $6e1f: $f8 $fe
    db $f4                                        ; $6e21: $f4
    nop                                           ; $6e22: $00

jr_0cc_6e23:
    db $ec                                        ; $6e23: $ec
    ldh a, [$fe]                                  ; $6e24: $f0 $fe
    db $e4                                        ; $6e26: $e4
    ccf                                           ; $6e27: $3f
    inc de                                        ; $6e28: $13
    ld e, e                                       ; $6e29: $5b
    rlca                                          ; $6e2a: $07
    ld [bc], a                                    ; $6e2b: $02
    ccf                                           ; $6e2c: $3f
    rla                                           ; $6e2d: $17
    ld [hl], a                                    ; $6e2e: $77

jr_0cc_6e2f:
    rrca                                          ; $6e2f: $0f
    rst $18                                       ; $6e30: $df
    ld a, a                                       ; $6e31: $7f
    ld l, d                                       ; $6e32: $6a
    jr jr_0cc_6e2f                                ; $6e33: $18 $fa

    nop                                           ; $6e35: $00
    ret nz                                        ; $6e36: $c0

    cp h                                          ; $6e37: $bc
    ret nc                                        ; $6e38: $d0

    reti                                          ; $6e39: $d9


    ldh [$fe], a                                  ; $6e3a: $e0 $fe
    ldh a, [$ef]                                  ; $6e3c: $f0 $ef
    db $10                                        ; $6e3e: $10
    db $f4                                        ; $6e3f: $f4
    ld sp, hl                                     ; $6e40: $f9
    or $5b                                        ; $6e41: $f6 $5b
    nop                                           ; $6e43: $00
    rst $38                                       ; $6e44: $ff
    dec b                                         ; $6e45: $05
    inc bc                                        ; $6e46: $03

jr_0cc_6e47:
    ld a, [hl+]                                   ; $6e47: $2a
    nop                                           ; $6e48: $00
    ld bc, $015f                                  ; $6e49: $01 $5f $01
    reti                                          ; $6e4c: $d9


jr_0cc_6e4d:
    rrca                                          ; $6e4d: $0f
    cp a                                          ; $6e4e: $bf

jr_0cc_6e4f:
    rlca                                          ; $6e4f: $07
    rst $30                                       ; $6e50: $f7
    db $10                                        ; $6e51: $10
    ld c, a                                       ; $6e52: $4f
    ld e, a                                       ; $6e53: $5f
    cp a                                          ; $6e54: $bf
    ld l, [hl]                                    ; $6e55: $6e
    nop                                           ; $6e56: $00
    ldh a, [$ea]                                  ; $6e57: $f0 $ea
    ldh a, [rIE]                                  ; $6e59: $f0 $ff
    jr jr_0cc_6e4f                                ; $6e5b: $18 $f2

    rst $30                                       ; $6e5d: $f7
    db $fc                                        ; $6e5e: $fc
    dec de                                        ; $6e5f: $1b
    nop                                           ; $6e60: $00
    adc e                                         ; $6e61: $8b
    jr nz, jr_0cc_6e23                            ; $6e62: $20 $bf

    rst $38                                       ; $6e64: $ff
    db $ed                                        ; $6e65: $ed
    add b                                         ; $6e66: $80
    and l                                         ; $6e67: $a5
    nop                                           ; $6e68: $00
    ld e, d                                       ; $6e69: $5a
    rst $38                                       ; $6e6a: $ff
    xor a                                         ; $6e6b: $af
    rst $38                                       ; $6e6c: $ff
    jp c, $a9ff                                   ; $6e6d: $da $ff $a9

    nop                                           ; $6e70: $00
    rst $38                                       ; $6e71: $ff
    ld h, h                                       ; $6e72: $64
    rst $38                                       ; $6e73: $ff
    sbc c                                         ; $6e74: $99
    rst $38                                       ; $6e75: $ff
    ld b, h                                       ; $6e76: $44
    rst $38                                       ; $6e77: $ff
    ld de, $0488                                  ; $6e78: $11 $88 $04
    nop                                           ; $6e7b: $00
    nop                                           ; $6e7c: $00
    rst $38                                       ; $6e7d: $ff
    db $10                                        ; $6e7e: $10
    inc b                                         ; $6e7f: $04
    nop                                           ; $6e80: $00
    ld e, a                                       ; $6e81: $5f
    ccf                                           ; $6e82: $3f
    rst $38                                       ; $6e83: $ff
    ld h, b                                       ; $6e84: $60

jr_0cc_6e85:
    ccf                                           ; $6e85: $3f
    ld e, e                                       ; $6e86: $5b
    jr jr_0cc_6e09                                ; $6e87: $18 $80

    jr jr_0cc_6e85                                ; $6e89: $18 $fa

    db $fc                                        ; $6e8b: $fc
    ccf                                           ; $6e8c: $3f
    db $fc                                        ; $6e8d: $fc
    add $b0                                       ; $6e8e: $c6 $b0
    and b                                         ; $6e90: $a0
    ld b, b                                       ; $6e91: $40
    nop                                           ; $6e92: $00
    jr z, jr_0cc_6e95                             ; $6e93: $28 $00

jr_0cc_6e95:
    inc b                                         ; $6e95: $04
    ld c, b                                       ; $6e96: $48
    ld [$1cf7], sp                                ; $6e97: $08 $f7 $1c
    db $e3                                        ; $6e9a: $e3
    nop                                           ; $6e9b: $00
    add hl, bc                                    ; $6e9c: $09
    or $a1                                        ; $6e9d: $f6 $a1
    ld e, [hl]                                    ; $6e9f: $5e
    inc b                                         ; $6ea0: $04
    ei                                            ; $6ea1: $fb
    ld [hl], b                                    ; $6ea2: $70
    adc a                                         ; $6ea3: $8f
    jr nz, jr_0cc_6ec6                            ; $6ea4: $20 $20

    rst $18                                       ; $6ea6: $df
    ld e, $08                                     ; $6ea7: $1e $08
    ld b, b                                       ; $6ea9: $40
    cp a                                          ; $6eaa: $bf
    ld [de], a                                    ; $6eab: $12
    db $ed                                        ; $6eac: $ed
    nop                                           ; $6ead: $00
    nop                                           ; $6eae: $00
    rst $38                                       ; $6eaf: $ff
    and l                                         ; $6eb0: $a5
    ld e, d                                       ; $6eb1: $5a
    ld d, b                                       ; $6eb2: $50
    xor a                                         ; $6eb3: $af
    dec h                                         ; $6eb4: $25
    jp c, $0056                                   ; $6eb5: $da $56 $00

    xor c                                         ; $6eb8: $a9
    sbc e                                         ; $6eb9: $9b
    ld h, h                                       ; $6eba: $64
    ld h, [hl]                                    ; $6ebb: $66
    sbc c                                         ; $6ebc: $99
    cp e                                          ; $6ebd: $bb
    ld b, h                                       ; $6ebe: $44
    xor $2c                                       ; $6ebf: $ee $2c
    ld de, $61bb                                  ; $6ec1: $11 $bb $61
    nop                                           ; $6ec4: $00
    rst $28                                       ; $6ec5: $ef

jr_0cc_6ec6:
    ld h, c                                       ; $6ec6: $61
    ld [$7002], sp                                ; $6ec7: $08 $02 $70
    cp a                                          ; $6eca: $bf
    nop                                           ; $6ecb: $00
    add b                                         ; $6ecc: $80
    cpl                                           ; $6ecd: $2f
    nop                                           ; $6ece: $00
    nop                                           ; $6ecf: $00
    ld e, d                                       ; $6ed0: $5a
    nop                                           ; $6ed1: $00
    xor a                                         ; $6ed2: $af
    nop                                           ; $6ed3: $00
    jp c, RST_00                                  ; $6ed4: $da $00 $00

    xor c                                         ; $6ed7: $a9
    nop                                           ; $6ed8: $00
    ld h, h                                       ; $6ed9: $64
    nop                                           ; $6eda: $00
    sbc c                                         ; $6edb: $99
    nop                                           ; $6edc: $00
    ld b, h                                       ; $6edd: $44
    nop                                           ; $6ede: $00
    ld b, [hl]                                    ; $6edf: $46
    ld de, $0004                                  ; $6ee0: $11 $04 $00
    nop                                           ; $6ee3: $00
    nop                                           ; $6ee4: $00
    db $10                                        ; $6ee5: $10
    inc b                                         ; $6ee6: $04
    nop                                           ; $6ee7: $00
    inc c                                         ; $6ee8: $0c
    add hl, hl                                    ; $6ee9: $29
    ld bc, $fe02                                  ; $6eea: $01 $02 $fe
    ld a, [hl]                                    ; $6eed: $7e
    nop                                           ; $6eee: $00
    jr nc, jr_0cc_6ef1                            ; $6eef: $30 $00

jr_0cc_6ef1:
    jr jr_0cc_6f03                                ; $6ef1: $18 $10

    db $10                                        ; $6ef3: $10
    add b                                         ; $6ef4: $80
    nop                                           ; $6ef5: $00
    rst $38                                       ; $6ef6: $ff
    ld a, a                                       ; $6ef7: $7f
    add b                                         ; $6ef8: $80
    call $e700                                    ; $6ef9: $cd $00 $e7
    nop                                           ; $6efc: $00
    ld a, h                                       ; $6efd: $7c
    jr nz, jr_0cc_6f00                            ; $6efe: $20 $00

jr_0cc_6f00:
    ld a, e                                       ; $6f00: $7b
    jr nz, jr_0cc_6f13                            ; $6f01: $20 $10

jr_0cc_6f03:
    rlca                                          ; $6f03: $07
    rst $38                                       ; $6f04: $ff
    ld hl, sp+$07                                 ; $6f05: $f8 $07
    xor a                                         ; $6f07: $af
    jr z, jr_0cc_6f0a                             ; $6f08: $28 $00

jr_0cc_6f0a:
    ld b, l                                       ; $6f0a: $45
    ld [hl-], a                                   ; $6f0b: $32
    nop                                           ; $6f0c: $00
    xor d                                         ; $6f0d: $aa
    jr nc, jr_0cc_6f30                            ; $6f0e: $30 $20

    ccf                                           ; $6f10: $3f
    rst $38                                       ; $6f11: $ff
    ret nz                                        ; $6f12: $c0

jr_0cc_6f13:
    ld [bc], a                                    ; $6f13: $02
    ccf                                           ; $6f14: $3f
    rst $38                                       ; $6f15: $ff

jr_0cc_6f16:
    nop                                           ; $6f16: $00
    ld h, b                                       ; $6f17: $60
    nop                                           ; $6f18: $00
    ld hl, $2040                                  ; $6f19: $21 $40 $20
    rst $38                                       ; $6f1c: $ff
    nop                                           ; $6f1d: $00
    rst $38                                       ; $6f1e: $ff
    rra                                           ; $6f1f: $1f
    rst $38                                       ; $6f20: $ff
    ld h, e                                       ; $6f21: $63
    rra                                           ; $6f22: $1f
    inc a                                         ; $6f23: $3c
    inc bc                                        ; $6f24: $03

jr_0cc_6f25:
    rlca                                          ; $6f25: $07
    call z, Call_000_3010                         ; $6f26: $cc $10 $30
    ld e, c                                       ; $6f29: $59
    nop                                           ; $6f2a: $00
    nop                                           ; $6f2b: $00
    rst $28                                       ; $6f2c: $ef
    ld [bc], a                                    ; $6f2d: $02
    nop                                           ; $6f2e: $00
    and b                                         ; $6f2f: $a0

jr_0cc_6f30:
    add hl, hl                                    ; $6f30: $29
    rrca                                          ; $6f31: $0f
    rst $38                                       ; $6f32: $ff
    jr jr_0cc_6f25                                ; $6f33: $18 $f0

    rrca                                          ; $6f35: $0f
    ld e, a                                       ; $6f36: $5f
    add [hl]                                      ; $6f37: $86
    nop                                           ; $6f38: $00
    jr nz, jr_0cc_6f73                            ; $6f39: $20 $38

    ld a, a                                       ; $6f3b: $7f

jr_0cc_6f3c:
    add b                                         ; $6f3c: $80
    ldh [$c8], a                                  ; $6f3d: $e0 $c8
    ld b, b                                       ; $6f3f: $40
    ld b, b                                       ; $6f40: $40
    inc [hl]                                      ; $6f41: $34
    jr @+$69                                      ; $6f42: $18 $67

    jr jr_0cc_6f16                                ; $6f44: $18 $d0

    add hl, sp                                    ; $6f46: $39
    ldh a, [rIE]                                  ; $6f47: $f0 $ff
    rrca                                          ; $6f49: $0f
    jr nz, jr_0cc_6f3c                            ; $6f4a: $20 $f0

jr_0cc_6f4c:
    ld a, [bc]                                    ; $6f4c: $0a
    ld h, b                                       ; $6f4d: $60
    jr nc, jr_0cc_6f4c                            ; $6f4e: $30 $fc

    rst $38                                       ; $6f50: $ff
    jp Jump_000_2ffc                              ; $6f51: $c3 $fc $2f


    jr nz, jr_0cc_6f16                            ; $6f54: $20 $c0

    ret nz                                        ; $6f56: $c0

    or b                                          ; $6f57: $b0
    db $10                                        ; $6f58: $10
    ret nz                                        ; $6f59: $c0

    rst $38                                       ; $6f5a: $ff
    ccf                                           ; $6f5b: $3f
    ret nz                                        ; $6f5c: $c0

    db $e3                                        ; $6f5d: $e3
    ld [$c700], sp                                ; $6f5e: $08 $00 $c7
    nop                                           ; $6f61: $00
    ld l, [hl]                                    ; $6f62: $6e
    and b                                         ; $6f63: $a0
    jr nz, @+$21                                  ; $6f64: $20 $1f

    rst $38                                       ; $6f66: $ff
    db $e3                                        ; $6f67: $e3
    ld [$fc1f], sp                                ; $6f68: $08 $1f $fc
    inc bc                                        ; $6f6b: $03
    inc sp                                        ; $6f6c: $33

jr_0cc_6f6d:
    sub b                                         ; $6f6d: $90
    ld b, b                                       ; $6f6e: $40
    cp $ff                                        ; $6f6f: $fe $ff
    db $fd                                        ; $6f71: $fd
    inc c                                         ; $6f72: $0c

jr_0cc_6f73:
    cp $03                                        ; $6f73: $fe $03
    db $fc                                        ; $6f75: $fc
    db $fd                                        ; $6f76: $fd
    and d                                         ; $6f77: $a2
    nop                                           ; $6f78: $00
    ld c, d                                       ; $6f79: $4a

jr_0cc_6f7a:
    jr z, jr_0cc_6f7a                             ; $6f7a: $28 $fe

    nop                                           ; $6f7c: $00
    ld d, b                                       ; $6f7d: $50
    push de                                       ; $6f7e: $d5
    ld a, [c]                                     ; $6f7f: $f2
    nop                                           ; $6f80: $00
    inc h                                         ; $6f81: $24
    jr nc, jr_0cc_6fa4                            ; $6f82: $30 $20

    ldh [$1f], a                                  ; $6f84: $e0 $1f
    cp a                                          ; $6f86: $bf
    nop                                           ; $6f87: $00
    jr jr_0cc_6fa1                                ; $6f88: $18 $17

    nop                                           ; $6f8a: $00
    ld bc, $20d0                                  ; $6f8b: $01 $d0 $20
    db $10                                        ; $6f8e: $10
    ld [$009d], sp                                ; $6f8f: $08 $9d $00
    ld [$0030], sp                                ; $6f92: $08 $30 $00
    add b                                         ; $6f95: $80
    ret nc                                        ; $6f96: $d0

    jr nz, @-$42                                  ; $6f97: $20 $bc

    ld [$0085], sp                                ; $6f99: $08 $85 $00
    adc e                                         ; $6f9c: $8b
    nop                                           ; $6f9d: $00
    ld l, c                                       ; $6f9e: $69
    xor e                                         ; $6f9f: $ab
    adc l                                         ; $6fa0: $8d

jr_0cc_6fa1:
    ld bc, $383c                                  ; $6fa1: $01 $3c $38

jr_0cc_6fa4:
    ld [bc], a                                    ; $6fa4: $02
    jr c, jr_0cc_6fa8                             ; $6fa5: $38 $01

    inc h                                         ; $6fa7: $24

jr_0cc_6fa8:
    nop                                           ; $6fa8: $00
    inc a                                         ; $6fa9: $3c
    jr c, jr_0cc_6f6d                             ; $6faa: $38 $c1

    ld bc, $1008                                  ; $6fac: $01 $08 $10
    add hl, de                                    ; $6faf: $19
    nop                                           ; $6fb0: $00
    rst $38                                       ; $6fb1: $ff
    cp $00                                        ; $6fb2: $fe $00
    add h                                         ; $6fb4: $84
    ld d, b                                       ; $6fb5: $50
    ld de, $408b                                  ; $6fb6: $11 $8b $40
    jr z, @-$1f                                   ; $6fb9: $28 $df

    nop                                           ; $6fbb: $00
    adc h                                         ; $6fbc: $8c
    ld h, b                                       ; $6fbd: $60
    ld bc, $5091                                  ; $6fbe: $01 $91 $50

jr_0cc_6fc1:
    ld de, $08ae                                  ; $6fc1: $11 $ae $08
    jr jr_0cc_6fc1                                ; $6fc4: $18 $fb

    nop                                           ; $6fc6: $00
    jr nz, jr_0cc_7039                            ; $6fc7: $20 $70

    ld bc, $0840                                  ; $6fc9: $01 $40 $08
    inc bc                                        ; $6fcc: $03
    rst $38                                       ; $6fcd: $ff
    db $fc                                        ; $6fce: $fc
    ld a, [bc]                                    ; $6fcf: $0a
    inc bc                                        ; $6fd0: $03
    rst $10                                       ; $6fd1: $d7
    nop                                           ; $6fd2: $00
    and d                                         ; $6fd3: $a2
    ld a, [hl]                                    ; $6fd4: $7e
    ld bc, $5040                                  ; $6fd5: $01 $40 $50
    ld hl, $0838                                  ; $6fd8: $21 $38 $08
    rst $38                                       ; $6fdb: $ff

jr_0cc_6fdc:
    rst $00                                       ; $6fdc: $c7
    jr c, jr_0cc_6fdc                             ; $6fdd: $38 $fd

    ld [hl], b                                    ; $6fdf: $70
    nop                                           ; $6fe0: $00
    ld c, h                                       ; $6fe1: $4c
    nop                                           ; $6fe2: $00
    pop af                                        ; $6fe3: $f1
    jr nz, jr_0cc_6fe6                            ; $6fe4: $20 $00

jr_0cc_6fe6:
    sbc a                                         ; $6fe6: $9f
    sub b                                         ; $6fe7: $90
    ld de, $ff7f                                  ; $6fe8: $11 $7f $ff
    add b                                         ; $6feb: $80
    ld a, a                                       ; $6fec: $7f
    cp a                                          ; $6fed: $bf
    push af                                       ; $6fee: $f5
    adc h                                         ; $6fef: $8c
    ld bc, $1840                                  ; $6ff0: $01 $40 $18
    ld [hl-], a                                   ; $6ff3: $32
    ld c, b                                       ; $6ff4: $48
    or b                                          ; $6ff5: $b0
    jr c, @+$01                                   ; $6ff6: $38 $ff

    xor [hl]                                      ; $6ff8: $ae
    ld bc, $8000                                  ; $6ff9: $01 $00 $80
    ld bc, $b740                                  ; $6ffc: $01 $40 $b7
    call z, $bb01                                 ; $6fff: $cc $01 $bb
    nop                                           ; $7002: $00
    ld c, a                                       ; $7003: $4f
    nop                                           ; $7004: $00
    db $e3                                        ; $7005: $e3
    nop                                           ; $7006: $00
    nop                                           ; $7007: $00
    rst $30                                       ; $7008: $f7
    nop                                           ; $7009: $00
    ld a, [hl]                                    ; $700a: $7e
    add c                                         ; $700b: $81
    scf                                           ; $700c: $37
    ret z                                         ; $700d: $c8

    jr nz, jr_0cc_7010                            ; $700e: $20 $00

jr_0cc_7010:
    inc d                                         ; $7010: $14
    ld b, a                                       ; $7011: $47
    nop                                           ; $7012: $00
    db $d3                                        ; $7013: $d3
    ldh [rSB], a                                  ; $7014: $e0 $01
    cp a                                          ; $7016: $bf
    ld c, c                                       ; $7017: $49
    ld [bc], a                                    ; $7018: $02
    rst $28                                       ; $7019: $ef
    db $10                                        ; $701a: $10

jr_0cc_701b:
    ld de, $3ac5                                  ; $701b: $11 $c5 $3a
    ld b, $c8                                     ; $701e: $06 $c8
    ld bc, $0077                                  ; $7020: $01 $77 $00
    sbc $57                                       ; $7023: $de $57
    ld [bc], a                                    ; $7025: $02
    nop                                           ; $7026: $00
    db $fd                                        ; $7027: $fd
    ld [bc], a                                    ; $7028: $02
    cp b                                          ; $7029: $b8
    ld b, a                                       ; $702a: $47
    db $ed                                        ; $702b: $ed
    ld [de], a                                    ; $702c: $12
    sub c                                         ; $702d: $91
    nop                                           ; $702e: $00
    ld [bc], a                                    ; $702f: $02
    sub e                                         ; $7030: $93
    nop                                           ; $7031: $00
    ei                                            ; $7032: $fb
    nop                                           ; $7033: $00
    adc [hl]                                      ; $7034: $8e
    nop                                           ; $7035: $00
    ld c, e                                       ; $7036: $4b
    ld a, [bc]                                    ; $7037: $0a
    ei                                            ; $7038: $fb

jr_0cc_7039:
    ld [bc], a                                    ; $7039: $02
    inc b                                         ; $703a: $04
    cp [hl]                                       ; $703b: $be
    ld b, c                                       ; $703c: $41
    jp c, $0700                                   ; $703d: $da $00 $07

    jr nc, jr_0cc_7052                            ; $7040: $30 $10

    cp e                                          ; $7042: $bb
    add b                                         ; $7043: $80
    jr nc, jr_0cc_7066                            ; $7044: $30 $20

    rst $38                                       ; $7046: $ff
    nop                                           ; $7047: $00
    ld e, h                                       ; $7048: $5c
    and e                                         ; $7049: $a3
    ld c, a                                       ; $704a: $4f
    or b                                          ; $704b: $b0
    cp $00                                        ; $704c: $fe $00
    ld bc, $ce31                                  ; $704e: $01 $31 $ce
    ld [hl], e                                    ; $7051: $73

jr_0cc_7052:
    adc h                                         ; $7052: $8c
    sbc a                                         ; $7053: $9f
    ld h, b                                       ; $7054: $60
    xor h                                         ; $7055: $ac
    nop                                           ; $7056: $00
    ld d, e                                       ; $7057: $53
    ld l, b                                       ; $7058: $68
    sub a                                         ; $7059: $97
    inc e                                         ; $705a: $1c
    db $e3                                        ; $705b: $e3
    dec bc                                        ; $705c: $0b
    db $f4                                        ; $705d: $f4
    and b                                         ; $705e: $a0
    inc b                                         ; $705f: $04
    ld e, a                                       ; $7060: $5f
    add l                                         ; $7061: $85
    ld a, d                                       ; $7062: $7a
    ld d, d                                       ; $7063: $52
    xor l                                         ; $7064: $ad
    ld a, b                                       ; $7065: $78

jr_0cc_7066:
    ld a, [bc]                                    ; $7066: $0a
    db $10                                        ; $7067: $10
    ld [bc], a                                    ; $7068: $02
    jp c, Jump_0cc_4200                           ; $7069: $da $00 $42

    nop                                           ; $706c: $00
    ld bc, $8000                                  ; $706d: $01 $00 $80
    add b                                         ; $7070: $80
    ld [$0808], sp                                ; $7071: $08 $08 $08
    ld [$1300], sp                                ; $7074: $08 $00 $13
    nop                                           ; $7077: $00
    jr nz, @+$22                                  ; $7078: $20 $20

    db $10                                        ; $707a: $10
    ld [$0202], sp                                ; $707b: $08 $02 $02
    ld c, $18                                     ; $707e: $0e $18
    ld b, $38                                     ; $7080: $06 $38
    ld [hl], b                                    ; $7082: $70
    db $10                                        ; $7083: $10
    ld de, $2c68                                  ; $7084: $11 $68 $2c
    jr nc, @+$1e                                  ; $7087: $30 $1c

    nop                                           ; $7089: $00
    stop                                          ; $708a: $10 $00
    db $10                                        ; $708c: $10
    ld d, h                                       ; $708d: $54
    ld a, h                                       ; $708e: $7c
    ld l, h                                       ; $708f: $6c
    rlca                                          ; $7090: $07
    nop                                           ; $7091: $00
    dec h                                         ; $7092: $25
    adc b                                         ; $7093: $88
    ld b, d                                       ; $7094: $42
    jr c, jr_0cc_70da                             ; $7095: $38 $43

    jr nc, jr_0cc_7105                            ; $7097: $30 $6c

    jr z, jr_0cc_701b                             ; $7099: $28 $80

    add b                                         ; $709b: $80
    inc a                                         ; $709c: $3c
    inc b                                         ; $709d: $04
    inc b                                         ; $709e: $04
    ld l, b                                       ; $709f: $68
    ld e, b                                       ; $70a0: $58
    add [hl]                                      ; $70a1: $86
    jr z, jr_0cc_70c9                             ; $70a2: $28 $25

    ld [$483a], sp                                ; $70a4: $08 $3a $48
    db $10                                        ; $70a7: $10
    db $10                                        ; $70a8: $10
    ld [bc], a                                    ; $70a9: $02
    jr z, @+$3a                                   ; $70aa: $28 $38

    sub $ee                                       ; $70ac: $d6 $ee
    jr z, jr_0cc_70e8                             ; $70ae: $28 $38

    ld a, [bc]                                    ; $70b0: $0a
    ld [$0400], sp                                ; $70b1: $08 $00 $04
    nop                                           ; $70b4: $00
    ld b, b                                       ; $70b5: $40
    ld b, b                                       ; $70b6: $40
    nop                                           ; $70b7: $00
    nop                                           ; $70b8: $00
    ld a, [hl-]                                   ; $70b9: $3a
    ld l, b                                       ; $70ba: $68
    add b                                         ; $70bb: $80
    add b                                         ; $70bc: $80
    add b                                         ; $70bd: $80
    ld e, [hl]                                    ; $70be: $5e
    jr c, jr_0cc_70e3                             ; $70bf: $38 $22

    ld a, [hl+]                                   ; $70c1: $2a
    inc e                                         ; $70c2: $1c
    inc d                                         ; $70c3: $14
    ld e, l                                       ; $70c4: $5d
    ld h, e                                       ; $70c5: $63
    inc e                                         ; $70c6: $1c
    rra                                           ; $70c7: $1f
    inc d                                         ; $70c8: $14

jr_0cc_70c9:
    ld [hl+], a                                   ; $70c9: $22
    ld a, [hl+]                                   ; $70ca: $2a
    ld d, b                                       ; $70cb: $50
    jr c, @+$36                                   ; $70cc: $38 $34

jr_0cc_70ce:
    ld [$18e2], sp                                ; $70ce: $08 $e2 $18
    call c, Call_000_1c78                         ; $70d1: $dc $78 $1c
    jr c, @-$3e                                   ; $70d4: $38 $c0

    add h                                         ; $70d6: $84
    ld h, b                                       ; $70d7: $60
    dec b                                         ; $70d8: $05
    ld b, c                                       ; $70d9: $41

jr_0cc_70da:
    rlca                                          ; $70da: $07
    rlca                                          ; $70db: $07
    inc c                                         ; $70dc: $0c
    rrca                                          ; $70dd: $0f
    inc d                                         ; $70de: $14
    rra                                           ; $70df: $1f
    ld [$1f18], sp                                ; $70e0: $08 $18 $1f

jr_0cc_70e3:
    ld d, $1f                                     ; $70e3: $16 $1f
    jr nc, jr_0cc_70f0                            ; $70e5: $30 $09

    inc b                                         ; $70e7: $04

jr_0cc_70e8:
    nop                                           ; $70e8: $00
    db $fc                                        ; $70e9: $fc
    nop                                           ; $70ea: $00
    ret nz                                        ; $70eb: $c0

    jr c, jr_0cc_70ce                             ; $70ec: $38 $e0

    jr @-$1e                                      ; $70ee: $18 $e0

jr_0cc_70f0:
    jr nc, @-$3e                                  ; $70f0: $30 $c0

    ldh a, [$80]                                  ; $70f2: $f0 $80
    cp [hl]                                       ; $70f4: $be
    ld [hl], b                                    ; $70f5: $70
    dec e                                         ; $70f6: $1d
    ld e, $1f                                     ; $70f7: $1e $1f
    ld [$003f], sp                                ; $70f9: $08 $3f $00
    ld a, $20                                     ; $70fc: $3e $20
    inc bc                                        ; $70fe: $03
    ld [hl], b                                    ; $70ff: $70
    ld b, e                                       ; $7100: $43
    ld hl, $10f0                                  ; $7101: $21 $f0 $10
    sub b                                         ; $7104: $90

jr_0cc_7105:
    ld [hl], b                                    ; $7105: $70
    ldh [rNR23], a                                ; $7106: $e0 $18
    ldh [$c0], a                                  ; $7108: $e0 $c0
    ret nz                                        ; $710a: $c0

    ld d, d                                       ; $710b: $52
    add hl, sp                                    ; $710c: $39
    ld e, l                                       ; $710d: $5d
    add hl, bc                                    ; $710e: $09
    ld [bc], a                                    ; $710f: $02
    nop                                           ; $7110: $00
    inc de                                        ; $7111: $13
    nop                                           ; $7112: $00
    inc c                                         ; $7113: $0c
    inc c                                         ; $7114: $0c
    inc bc                                        ; $7115: $03
    ld [hl+], a                                   ; $7116: $22
    ld bc, $0106                                  ; $7117: $01 $06 $01
    add hl, de                                    ; $711a: $19
    nop                                           ; $711b: $00
    nop                                           ; $711c: $00
    add $00                                       ; $711d: $c6 $00
    add hl, hl                                    ; $711f: $29
    ld b, [hl]                                    ; $7120: $46
    ld b, d                                       ; $7121: $42
    ccf                                           ; $7122: $3f
    sub h                                         ; $7123: $94
    nop                                           ; $7124: $00
    ld a, a                                       ; $7125: $7f
    ld a, [hl]                                    ; $7126: $7e
    rst $38                                       ; $7127: $ff
    cp a                                          ; $7128: $bf
    rst $38                                       ; $7129: $ff
    ld c, [hl]                                    ; $712a: $4e
    cp a                                          ; $712b: $bf
    ld b, b                                       ; $712c: $40
    nop                                           ; $712d: $00
    nop                                           ; $712e: $00
    jr nz, jr_0cc_7131                            ; $712f: $20 $00

jr_0cc_7131:
    sub b                                         ; $7131: $90
    nop                                           ; $7132: $00
    ld e, d                                       ; $7133: $5a
    add b                                         ; $7134: $80
    and c                                         ; $7135: $a1
    ld bc, $5840                                  ; $7136: $01 $40 $58
    and b                                         ; $7139: $a0
    adc e                                         ; $713a: $8b
    ldh a, [rNR52]                                ; $713b: $f0 $26
    ret c                                         ; $713d: $d8

    inc h                                         ; $713e: $24
    add hl, hl                                    ; $713f: $29
    ld [hl+], a                                   ; $7140: $22
    ld b, b                                       ; $7141: $40
    ld b, b                                       ; $7142: $40
    sub [hl]                                      ; $7143: $96
    add hl, de                                    ; $7144: $19
    inc b                                         ; $7145: $04
    ld [bc], a                                    ; $7146: $02
    add hl, bc                                    ; $7147: $09
    or e                                          ; $7148: $b3
    ld bc, $8001                                  ; $7149: $01 $01 $80
    and c                                         ; $714c: $a1
    ld sp, $2f52                                  ; $714d: $31 $52 $2f
    ld l, b                                       ; $7150: $68
    add a                                         ; $7151: $87
    add h                                         ; $7152: $84
    ld [bc], a                                    ; $7153: $02
    adc l                                         ; $7154: $8d
    ld a, [bc]                                    ; $7155: $0a
    ld [bc], a                                    ; $7156: $02
    add d                                         ; $7157: $82
    nop                                           ; $7158: $00
    ld hl, $11c3                                  ; $7159: $21 $c3 $11
    ld e, b                                       ; $715c: $58
    dec bc                                        ; $715d: $0b
    ld bc, $35e2                                  ; $715e: $01 $e2 $35
    nop                                           ; $7161: $00
    inc e                                         ; $7162: $1c
    sub $09                                       ; $7163: $d6 $09
    push bc                                       ; $7165: $c5
    ld sp, $e522                                  ; $7166: $31 $22 $e5
    ld bc, $0688                                  ; $7169: $01 $88 $06
    nop                                           ; $716c: $00
    inc b                                         ; $716d: $04
    ld d, l                                       ; $716e: $55
    nop                                           ; $716f: $00
    xor d                                         ; $7170: $aa
    nop                                           ; $7171: $00
    rst $38                                       ; $7172: $ff
    ld [bc], a                                    ; $7173: $02
    nop                                           ; $7174: $00
    db $dd                                        ; $7175: $dd
    ld [hl+], a                                   ; $7176: $22
    nop                                           ; $7177: $00
    rst $38                                       ; $7178: $ff
    nop                                           ; $7179: $00
    ld [hl], a                                    ; $717a: $77
    adc b                                         ; $717b: $88
    db $dd                                        ; $717c: $dd
    ld [hl+], a                                   ; $717d: $22
    xor d                                         ; $717e: $aa
    ld d, l                                       ; $717f: $55
    ld h, h                                       ; $7180: $64
    ld d, l                                       ; $7181: $55
    ld de, $0f10                                  ; $7182: $11 $10 $0f
    nop                                           ; $7185: $00
    rst $38                                       ; $7186: $ff
    adc b                                         ; $7187: $88

jr_0cc_7188:
    ld b, $00                                     ; $7188: $06 $00
    ld d, l                                       ; $718a: $55
    rst $38                                       ; $718b: $ff
    nop                                           ; $718c: $00
    xor d                                         ; $718d: $aa
    rst $38                                       ; $718e: $ff
    nop                                           ; $718f: $00
    inc b                                         ; $7190: $04
    ret nc                                        ; $7191: $d0

    ld [bc], a                                    ; $7192: $02
    nop                                           ; $7193: $00
    dec b                                         ; $7194: $05
    ld [bc], a                                    ; $7195: $02
    rra                                           ; $7196: $1f
    nop                                           ; $7197: $00
    ld a, a                                       ; $7198: $7f
    nop                                           ; $7199: $00
    ld b, $01                                     ; $719a: $06 $01
    inc b                                         ; $719c: $04
    rrca                                          ; $719d: $0f
    nop                                           ; $719e: $00
    rra                                           ; $719f: $1f
    nop                                           ; $71a0: $00
    inc bc                                        ; $71a1: $03
    inc b                                         ; $71a2: $04
    ld [$ccff], sp                                ; $71a3: $08 $ff $cc
    nop                                           ; $71a6: $00
    ccf                                           ; $71a7: $3f
    inc bc                                        ; $71a8: $03
    rst $38                                       ; $71a9: $ff
    ld bc, $e0ff                                  ; $71aa: $01 $ff $e0
    rra                                           ; $71ad: $1f
    inc bc                                        ; $71ae: $03
    nop                                           ; $71af: $00
    rst $38                                       ; $71b0: $ff
    nop                                           ; $71b1: $00
    rst $38                                       ; $71b2: $ff
    pop bc                                        ; $71b3: $c1
    ccf                                           ; $71b4: $3f
    add e                                         ; $71b5: $83
    db $fc                                        ; $71b6: $fc
    pop af                                        ; $71b7: $f1
    nop                                           ; $71b8: $00
    cp $c0                                        ; $71b9: $fe $c0
    rst $38                                       ; $71bb: $ff
    ld hl, sp-$01                                 ; $71bc: $f8 $ff
    ret nz                                        ; $71be: $c0

    rst $38                                       ; $71bf: $ff
    pop af                                        ; $71c0: $f1

jr_0cc_71c1:
    jr nz, jr_0cc_71c1                            ; $71c1: $20 $fe

    ldh [$08], a                                  ; $71c3: $e0 $08
    nop                                           ; $71c5: $00
    jr nc, jr_0cc_7188                            ; $71c6: $30 $c0

    ld hl, sp+$00                                 ; $71c8: $f8 $00
    ld h, b                                       ; $71ca: $60
    nop                                           ; $71cb: $00
    add b                                         ; $71cc: $80
    ldh [rP1], a                                  ; $71cd: $e0 $00
    ld l, b                                       ; $71cf: $68
    sub b                                         ; $71d0: $90
    call z, Call_000_3020                         ; $71d1: $cc $20 $30
    nop                                           ; $71d4: $00
    ret nz                                        ; $71d5: $c0

    ld a, b                                       ; $71d6: $78
    add b                                         ; $71d7: $80
    inc c                                         ; $71d8: $0c
    inc bc                                        ; $71d9: $03
    rrca                                          ; $71da: $0f
    nop                                           ; $71db: $00
    ld e, $28                                     ; $71dc: $1e $28
    ld bc, $4207                                  ; $71de: $01 $07 $42
    nop                                           ; $71e1: $00
    ld a, a                                       ; $71e2: $7f
    ld b, b                                       ; $71e3: $40
    db $10                                        ; $71e4: $10
    ld b, $ff                                     ; $71e5: $06 $ff
    rst $18                                       ; $71e7: $df
    nop                                           ; $71e8: $00
    ccf                                           ; $71e9: $3f
    rlca                                          ; $71ea: $07
    rst $38                                       ; $71eb: $ff
    db $d3                                        ; $71ec: $d3
    cpl                                           ; $71ed: $2f
    rrca                                          ; $71ee: $0f
    rst $38                                       ; $71ef: $ff
    add a                                         ; $71f0: $87
    ld b, b                                       ; $71f1: $40
    ld a, a                                       ; $71f2: $7f
    ld b, $08                                     ; $71f3: $06 $08
    rrca                                          ; $71f5: $0f
    ldh a, [$be]                                  ; $71f6: $f0 $be
    ret nz                                        ; $71f8: $c0

    rlca                                          ; $71f9: $07
    ld hl, sp+$00                                 ; $71fa: $f8 $00
    ldh [rIE], a                                  ; $71fc: $e0 $ff
    sbc a                                         ; $71fe: $9f
    ldh [rSB], a                                  ; $71ff: $e0 $01
    cp $ef                                        ; $7201: $fe $ef
    ldh a, [rSB]                                  ; $7203: $f0 $01
    pop bc                                        ; $7205: $c1
    cp $f8                                        ; $7206: $fe $f8
    nop                                           ; $7208: $00
    add b                                         ; $7209: $80
    nop                                           ; $720a: $00
    ldh a, [rDIV]                                 ; $720b: $f0 $04
    nop                                           ; $720d: $00
    nop                                           ; $720e: $00
    ld hl, sp+$00                                 ; $720f: $f8 $00
    ld b, b                                       ; $7211: $40
    add b                                         ; $7212: $80
    ldh a, [rP1]                                  ; $7213: $f0 $00
    db $fc                                        ; $7215: $fc
    nop                                           ; $7216: $00
    nop                                           ; $7217: $00
    ccf                                           ; $7218: $3f
    nop                                           ; $7219: $00
    rlca                                          ; $721a: $07
    nop                                           ; $721b: $00
    ld e, a                                       ; $721c: $5f
    nop                                           ; $721d: $00
    inc c                                         ; $721e: $0c
    inc bc                                        ; $721f: $03
    ld b, b                                       ; $7220: $40
    ccf                                           ; $7221: $3f
    ld b, [hl]                                    ; $7222: $46
    db $10                                        ; $7223: $10
    ld a, $01                                     ; $7224: $3e $01
    rst $20                                       ; $7226: $e7
    rra                                           ; $7227: $1f
    rrca                                          ; $7228: $0f
    rst $38                                       ; $7229: $ff
    inc b                                         ; $722a: $04
    add e                                         ; $722b: $83
    ld a, a                                       ; $722c: $7f
    rlca                                          ; $722d: $07
    rst $38                                       ; $722e: $ff
    sbc d                                         ; $722f: $9a
    inc b                                         ; $7230: $04
    nop                                           ; $7231: $00
    sbc [hl]                                      ; $7232: $9e
    ld a, a                                       ; $7233: $7f
    nop                                           ; $7234: $00
    add [hl]                                      ; $7235: $86
    ld a, a                                       ; $7236: $7f
    add b                                         ; $7237: $80
    rst $38                                       ; $7238: $ff
    ld b, a                                       ; $7239: $47
    ld hl, sp+$03                                 ; $723a: $f8 $03
    db $fc                                        ; $723c: $fc
    db $10                                        ; $723d: $10
    call $07f2                                    ; $723e: $cd $f2 $07
    ld b, $00                                     ; $7241: $06 $00
    ld e, a                                       ; $7243: $5f
    and b                                         ; $7244: $a0
    inc bc                                        ; $7245: $03
    db $fc                                        ; $7246: $fc
    and d                                         ; $7247: $a2
    inc [hl]                                      ; $7248: $34
    ld [$42a0], sp                                ; $7249: $08 $a0 $42
    nop                                           ; $724c: $00
    db $fc                                        ; $724d: $fc
    nop                                           ; $724e: $00
    jr nz, jr_0cc_7299                            ; $724f: $20 $48

    db $10                                        ; $7251: $10
    rra                                           ; $7252: $1f
    nop                                           ; $7253: $00
    nop                                           ; $7254: $00
    ld c, $01                                     ; $7255: $0e $01
    inc bc                                        ; $7257: $03
    nop                                           ; $7258: $00
    rrca                                          ; $7259: $0f
    nop                                           ; $725a: $00
    rla                                           ; $725b: $17
    add b                                         ; $725c: $80
    cp [hl]                                       ; $725d: $be
    db $10                                        ; $725e: $10
    dec b                                         ; $725f: $05
    nop                                           ; $7260: $00
    ld hl, $47df                                  ; $7261: $21 $df $47
    cp a                                          ; $7264: $bf
    di                                            ; $7265: $f3
    ld [$040f], sp                                ; $7266: $08 $0f $04
    rst $38                                       ; $7269: $ff
    ld b, c                                       ; $726a: $41
    ld b, $00                                     ; $726b: $06 $00
    add b                                         ; $726d: $80
    ld a, a                                       ; $726e: $7f
    ld hl, sp+$00                                 ; $726f: $f8 $00
    rlca                                          ; $7271: $07
    rst $08                                       ; $7272: $cf
    ldh a, [$80]                                  ; $7273: $f0 $80
    rst $38                                       ; $7275: $ff
    di                                            ; $7276: $f3
    db $fc                                        ; $7277: $fc
    ld b, b                                       ; $7278: $40
    inc bc                                        ; $7279: $03
    rst $38                                       ; $727a: $ff
    ldh a, [rIE]                                  ; $727b: $f0 $ff
    db $e3                                        ; $727d: $e3
    db $fc                                        ; $727e: $fc
    ld [hl], b                                    ; $727f: $70
    ret z                                         ; $7280: $c8

    nop                                           ; $7281: $00
    cp [hl]                                       ; $7282: $be
    ld [$8004], sp                                ; $7283: $08 $04 $80
    nop                                           ; $7286: $00
    ret nz                                        ; $7287: $c0

    nop                                           ; $7288: $00
    ld a, h                                       ; $7289: $7c
    call nz, $c000                                ; $728a: $c4 $00 $c0
    nop                                           ; $728d: $00
    dec b                                         ; $728e: $05
    ld [hl], b                                    ; $728f: $70
    add b                                         ; $7290: $80
    inc d                                         ; $7291: $14
    dec bc                                        ; $7292: $0b
    ccf                                           ; $7293: $3f
    ld b, d                                       ; $7294: $42
    nop                                           ; $7295: $00
    inc e                                         ; $7296: $1c
    add $10                                       ; $7297: $c6 $10

jr_0cc_7299:
    nop                                           ; $7299: $00
    jr c, @+$09                                   ; $729a: $38 $07

    ld a, a                                       ; $729c: $7f
    nop                                           ; $729d: $00
    ld c, $ff                                     ; $729e: $0e $ff
    sbc a                                         ; $72a0: $9f
    ld a, a                                       ; $72a1: $7f
    ld bc, $ff03                                  ; $72a2: $01 $03 $ff
    ld d, $ff                                     ; $72a5: $16 $ff
    ld c, $ff                                     ; $72a7: $0e $ff
    cp h                                          ; $72a9: $bc
    add [hl]                                      ; $72aa: $86
    nop                                           ; $72ab: $00
    db $10                                        ; $72ac: $10
    sbc h                                         ; $72ad: $9c
    ld a, a                                       ; $72ae: $7f
    nop                                           ; $72af: $00
    jp nz, $8200                                  ; $72b0: $c2 $00 $82

    db $fd                                        ; $72b3: $fd
    rrca                                          ; $72b4: $0f
    ldh a, [rTIMA]                                ; $72b5: $f0 $05
    sub a                                         ; $72b7: $97
    add sp, $02                                   ; $72b8: $e8 $02
    db $fd                                        ; $72ba: $fd
    ccf                                           ; $72bb: $3f
    jp z, $c000                                   ; $72bc: $ca $00 $c0

    cp d                                          ; $72bf: $ba
    nop                                           ; $72c0: $00
    ld d, h                                       ; $72c1: $54
    sub b                                         ; $72c2: $90
    cp [hl]                                       ; $72c3: $be
    nop                                           ; $72c4: $00
    nop                                           ; $72c5: $00
    add $00                                       ; $72c6: $c6 $00
    nop                                           ; $72c8: $00
    ld c, b                                       ; $72c9: $48
    nop                                           ; $72ca: $00
    ccf                                           ; $72cb: $3f
    nop                                           ; $72cc: $00
    ld c, d                                       ; $72cd: $4a
    ld d, $3c                                     ; $72ce: $16 $3c
    ld bc, $0304                                  ; $72d0: $01 $04 $03
    add [hl]                                      ; $72d3: $86
    ld [$881f], sp                                ; $72d4: $08 $1f $88
    nop                                           ; $72d7: $00
    ldh a, [rSC]                                  ; $72d8: $f0 $02
    rrca                                          ; $72da: $0f
    ld bc, $68ff                                  ; $72db: $01 $ff $68
    sub a                                         ; $72de: $97
    nop                                           ; $72df: $00
    inc a                                         ; $72e0: $3c
    ld bc, $00e3                                  ; $72e1: $01 $e3 $00
    rra                                           ; $72e4: $1f
    add b                                         ; $72e5: $80
    ld a, a                                       ; $72e6: $7f
    ld b, $ff                                     ; $72e7: $06 $ff
    jr nz, @+$01                                  ; $72e9: $20 $ff

    add sp, $08                                   ; $72eb: $e8 $08
    rst $38                                       ; $72ed: $ff
    ld a, h                                       ; $72ee: $7c
    rst $38                                       ; $72ef: $ff
    jr nc, jr_0cc_7332                            ; $72f0: $30 $40

    ld bc, $fef9                                  ; $72f2: $01 $f9 $fe
    ld h, b                                       ; $72f5: $60
    add b                                         ; $72f6: $80
    ld c, b                                       ; $72f7: $48
    ld bc, $00f0                                  ; $72f8: $01 $f0 $00
    jr nc, @-$3e                                  ; $72fb: $30 $c0

    ldh [rP1], a                                  ; $72fd: $e0 $00
    jr jr_0cc_7323                                ; $72ff: $18 $22

Call_0cc_7301:
    ldh [$7c], a                                  ; $7301: $e0 $7c
    cp $00                                        ; $7303: $fe $00
    jr c, @-$3e                                   ; $7305: $38 $c0

    ldh a, [$fe]                                  ; $7307: $f0 $fe
    nop                                           ; $7309: $00
    ld bc, $38a0                                  ; $730a: $01 $a0 $38
    db $10                                        ; $730d: $10
    ld [$007c], sp                                ; $730e: $08 $7c $00
    ld [$3f07], sp                                ; $7311: $08 $07 $3f
    nop                                           ; $7314: $00
    add e                                         ; $7315: $83
    nop                                           ; $7316: $00
    ld a, a                                       ; $7317: $7f
    rst $28                                       ; $7318: $ef
    rra                                           ; $7319: $1f
    add e                                         ; $731a: $83
    ld a, a                                       ; $731b: $7f
    rst $30                                       ; $731c: $f7
    rrca                                          ; $731d: $0f
    inc bc                                        ; $731e: $03
    ld [$c3ff], sp                                ; $731f: $08 $ff $c3
    ccf                                           ; $7322: $3f

jr_0cc_7323:
    ccf                                           ; $7323: $3f
    ld b, h                                       ; $7324: $44
    ld bc, $f8c6                                  ; $7325: $01 $c6 $f8
    ccf                                           ; $7328: $3f
    db $10                                        ; $7329: $10
    ret nz                                        ; $732a: $c0

    inc bc                                        ; $732b: $03
    db $fc                                        ; $732c: $fc
    ld b, $08                                     ; $732d: $06 $08
    rst $08                                       ; $732f: $cf
    ldh a, [rSB]                                  ; $7330: $f0 $01

jr_0cc_7332:
    cp $2a                                        ; $7332: $fe $2a
    ld e, e                                       ; $7334: $5b
    and h                                         ; $7335: $a4
    ld a, $09                                     ; $7336: $3e $09
    ldh [$7e], a                                  ; $7338: $e0 $7e
    nop                                           ; $733a: $00
    db $fc                                        ; $733b: $fc
    ld b, [hl]                                    ; $733c: $46
    ld bc, $cbfa                                  ; $733d: $01 $fa $cb
    ld a, [bc]                                    ; $7340: $0a
    ld bc, $1174                                  ; $7341: $01 $74 $11
    ld bc, $820e                                  ; $7344: $01 $0e $82
    ld bc, $c63f                                  ; $7347: $01 $3f $c6
    ld bc, $01c2                                  ; $734a: $01 $c2 $01
    adc b                                         ; $734d: $88
    ld a, b                                       ; $734e: $78
    ld bc, $3fcc                                  ; $734f: $01 $cc $3f
    ld b, $c6                                     ; $7352: $06 $c6
    nop                                           ; $7354: $00
    rst $00                                       ; $7355: $c7
    ccf                                           ; $7356: $3f
    ld bc, $8480                                  ; $7357: $01 $80 $84
    ld bc, $f807                                  ; $735a: $01 $07 $f8
    sbc a                                         ; $735d: $9f
    ldh [$03], a                                  ; $735e: $e0 $03
    db $fc                                        ; $7360: $fc
    ld e, $00                                     ; $7361: $1e $00
    pop hl                                        ; $7363: $e1
    ret nz                                        ; $7364: $c0

    rst $38                                       ; $7365: $ff
    dec bc                                        ; $7366: $0b
    db $f4                                        ; $7367: $f4
    nop                                           ; $7368: $00
    rst $38                                       ; $7369: $ff
    rst $00                                       ; $736a: $c7
    ld [$01f8], sp                                ; $736b: $08 $f8 $01
    nop                                           ; $736e: $00
    cpl                                           ; $736f: $2f
    add sp, $01                                   ; $7370: $e8 $01
    dec bc                                        ; $7372: $0b
    nop                                           ; $7373: $00
    dec c                                         ; $7374: $0d
    add b                                         ; $7375: $80
    ldh a, [rSB]                                  ; $7376: $f0 $01
    rlca                                          ; $7378: $07
    nop                                           ; $7379: $00
    inc hl                                        ; $737a: $23
    nop                                           ; $737b: $00
    jp Jump_000_003f                              ; $737c: $c3 $3f $00


    ld [bc], a                                    ; $737f: $02
    rst $38                                       ; $7380: $ff
    ld sp, hl                                     ; $7381: $f9
    rlca                                          ; $7382: $07
    ret nz                                        ; $7383: $c0

    ccf                                           ; $7384: $3f
    ldh a, [$72]                                  ; $7385: $f0 $72
    nop                                           ; $7387: $00
    ret nc                                        ; $7388: $d0

    nop                                           ; $7389: $00
    cpl                                           ; $738a: $2f
    nop                                           ; $738b: $00
    rst $38                                       ; $738c: $ff
    pop hl                                        ; $738d: $e1
    cp $38                                        ; $738e: $fe $38
    rst $38                                       ; $7390: $ff
    ldh [$a2], a                                  ; $7391: $e0 $a2
    db $ec                                        ; $7393: $ec
    ld bc, $0678                                  ; $7394: $01 $78 $06
    nop                                           ; $7397: $00
    jp $f0fc                                      ; $7398: $c3 $fc $f0


    jr nc, @+$03                                  ; $739b: $30 $01

    jr nc, jr_0cc_73c7                            ; $739d: $30 $28

    ret nz                                        ; $739f: $c0

    db $fc                                        ; $73a0: $fc
    ld [hl], d                                    ; $73a1: $72
    nop                                           ; $73a2: $00
    ld a, b                                       ; $73a3: $78
    jr nc, @+$13                                  ; $73a4: $30 $11

    ld h, b                                       ; $73a6: $60
    add b                                         ; $73a7: $80
    ld e, $28                                     ; $73a8: $1e $28
    ld bc, $ac1f                                  ; $73aa: $01 $1f $ac
    nop                                           ; $73ad: $00
    ld c, $ee                                     ; $73ae: $0e $ee
    ld bc, $0106                                  ; $73b0: $01 $06 $01
    ld a, $00                                     ; $73b3: $3e $00
    ld bc, $0017                                  ; $73b5: $01 $17 $00
    rrca                                          ; $73b8: $0f
    rst $38                                       ; $73b9: $ff
    inc a                                         ; $73ba: $3c
    rst $38                                       ; $73bb: $ff
    inc c                                         ; $73bc: $0c
    nop                                           ; $73bd: $00
    rst $38                                       ; $73be: $ff
    ld l, $ff                                     ; $73bf: $2e $ff
    add h                                         ; $73c1: $84
    ld a, a                                       ; $73c2: $7f
    rrca                                          ; $73c3: $0f
    rst $38                                       ; $73c4: $ff
    add c                                         ; $73c5: $81
    nop                                           ; $73c6: $00

jr_0cc_73c7:
    ld a, a                                       ; $73c7: $7f
    rst $08                                       ; $73c8: $cf
    ccf                                           ; $73c9: $3f
    dec c                                         ; $73ca: $0d
    ld a, [c]                                     ; $73cb: $f2
    ld a, a                                       ; $73cc: $7f
    add b                                         ; $73cd: $80
    inc bc                                        ; $73ce: $03
    inc hl                                        ; $73cf: $23
    db $fc                                        ; $73d0: $fc
    add d                                         ; $73d1: $82
    inc l                                         ; $73d2: $2c
    ld bc, $fa05                                  ; $73d3: $01 $05 $fa
    ret nz                                        ; $73d6: $c0

    ld b, d                                       ; $73d7: $42
    ld [bc], a                                    ; $73d8: $02
    ld l, h                                       ; $73d9: $6c
    add hl, bc                                    ; $73da: $09
    ld d, d                                       ; $73db: $52
    ld hl, sp-$4e                                 ; $73dc: $f8 $b2
    ld de, $6e80                                  ; $73de: $11 $80 $6e
    ld bc, $8060                                  ; $73e1: $01 $60 $80
    ld l, d                                       ; $73e4: $6a
    add hl, bc                                    ; $73e5: $09
    ccf                                           ; $73e6: $3f
    add b                                         ; $73e7: $80
    ldh a, [rSB]                                  ; $73e8: $f0 $01
    ld e, a                                       ; $73ea: $5f
    nop                                           ; $73eb: $00
    inc e                                         ; $73ec: $1c
    inc bc                                        ; $73ed: $03
    ld [$7e07], sp                                ; $73ee: $08 $07 $7e
    nop                                           ; $73f1: $00
    ld bc, $ff01                                  ; $73f2: $01 $01 $ff
    rst $20                                       ; $73f5: $e7
    rra                                           ; $73f6: $1f
    ld bc, $0fff                                  ; $73f7: $01 $ff $0f
    nop                                           ; $73fa: $00
    rst $38                                       ; $73fb: $ff
    add [hl]                                      ; $73fc: $86
    ld a, a                                       ; $73fd: $7f
    rra                                           ; $73fe: $1f
    rst $38                                       ; $73ff: $ff

Jump_0cc_7400:
    ld b, $ff                                     ; $7400: $06 $ff
    ld e, a                                       ; $7402: $5f
    add d                                         ; $7403: $82
    ld l, b                                       ; $7404: $68
    ld [bc], a                                    ; $7405: $02
    ldh a, [rIE]                                  ; $7406: $f0 $ff
    and e                                         ; $7408: $a3
    db $fc                                        ; $7409: $fc
    add b                                         ; $740a: $80
    jr c, jr_0cc_740f                             ; $740b: $38 $02

    add b                                         ; $740d: $80
    ld [bc], a                                    ; $740e: $02

jr_0cc_740f:
    rst $38                                       ; $740f: $ff
    ld b, e                                       ; $7410: $43
    db $fc                                        ; $7411: $fc
    rra                                           ; $7412: $1f
    ldh [$fe], a                                  ; $7413: $e0 $fe
    and h                                         ; $7415: $a4
    ld bc, $28f0                                  ; $7416: $01 $f0 $28
    nop                                           ; $7419: $00
    ld l, b                                       ; $741a: $68
    inc l                                         ; $741b: $2c
    ld [bc], a                                    ; $741c: $02
    ret c                                         ; $741d: $d8

    jr c, jr_0cc_7422                             ; $741e: $38 $02

    ret nz                                        ; $7420: $c0

    nop                                           ; $7421: $00

jr_0cc_7422:
    jr nc, jr_0cc_7424                            ; $7422: $30 $00

jr_0cc_7424:
    rrca                                          ; $7424: $0f
    ld c, $01                                     ; $7425: $0e $01
    jr jr_0cc_7430                                ; $7427: $18 $07

    inc a                                         ; $7429: $3c
    inc bc                                        ; $742a: $03
    ld [hl], b                                    ; $742b: $70
    nop                                           ; $742c: $00
    rrca                                          ; $742d: $0f
    jr jr_0cc_7437                                ; $742e: $18 $07

jr_0cc_7430:
    ld a, $01                                     ; $7430: $3e $01
    ld h, b                                       ; $7432: $60
    rra                                           ; $7433: $1f
    inc c                                         ; $7434: $0c
    jr z, @+$01                                   ; $7435: $28 $ff

jr_0cc_7437:
    ccf                                           ; $7437: $3f
    xor h                                         ; $7438: $ac
    ld bc, $62fc                                  ; $7439: $01 $fc $62
    ld bc, $ff0e                                  ; $743c: $01 $0e $ff
    ld [hl], b                                    ; $743f: $70
    nop                                           ; $7440: $00
    rst $38                                       ; $7441: $ff
    jr c, @+$01                                   ; $7442: $38 $ff

    ld bc, $1ffe                                  ; $7444: $01 $fe $1f
    ldh [rTAC], a                                 ; $7447: $e0 $07
    inc b                                         ; $7449: $04
    ld hl, sp+$2f                                 ; $744a: $f8 $2f
    ret nc                                        ; $744c: $d0

    rlca                                          ; $744d: $07
    ld hl, sp-$78                                 ; $744e: $f8 $88
    ld [$20df], sp                                ; $7450: $08 $df $20
    or [hl]                                       ; $7453: $b6
    or b                                          ; $7454: $b0
    add hl, bc                                    ; $7455: $09
    ret nz                                        ; $7456: $c0

    xor d                                         ; $7457: $aa
    ld de, $0936                                  ; $7458: $11 $36 $09
    ldh a, [rPCM12]                               ; $745b: $f0 $76
    nop                                           ; $745d: $00
    ld b, b                                       ; $745e: $40
    ld [$0220], sp                                ; $745f: $08 $20 $02
    rra                                           ; $7462: $1f
    ld a, a                                       ; $7463: $7f
    nop                                           ; $7464: $00
    inc a                                         ; $7465: $3c
    inc bc                                        ; $7466: $03
    jr @-$7e                                      ; $7467: $18 $80

    nop                                           ; $7469: $00
    ld e, $0a                                     ; $746a: $1e $0a
    rst $38                                       ; $746c: $ff
    ld a, b                                       ; $746d: $78
    rst $38                                       ; $746e: $ff
    rra                                           ; $746f: $1f
    jp nz, Jump_000_3600                          ; $7470: $c2 $00 $36

    add h                                         ; $7473: $84
    nop                                           ; $7474: $00
    ld [bc], a                                    ; $7475: $02
    jr nz, @+$01                                  ; $7476: $20 $ff

    adc a                                         ; $7478: $8f
    jr nc, jr_0cc_747c                            ; $7479: $30 $01

    ld a, a                                       ; $747b: $7f

jr_0cc_747c:
    add b                                         ; $747c: $80
    cpl                                           ; $747d: $2f
    ret nc                                        ; $747e: $d0

    inc bc                                        ; $747f: $03
    adc a                                         ; $7480: $8f
    ld a, d                                       ; $7481: $7a
    nop                                           ; $7482: $00
    add e                                         ; $7483: $83
    db $fc                                        ; $7484: $fc
    nop                                           ; $7485: $00
    ld [bc], a                                    ; $7486: $02
    ld bc, $083c                                  ; $7487: $01 $3c $08
    ld a, [hl+]                                   ; $748a: $2a
    ld a, [bc]                                    ; $748b: $0a
    or d                                          ; $748c: $b2
    ld a, [bc]                                    ; $748d: $0a
    ld b, b                                       ; $748e: $40
    ldh [$b6], a                                  ; $748f: $e0 $b6
    ld [bc], a                                    ; $7491: $02
    db $10                                        ; $7492: $10
    rrca                                          ; $7493: $0f
    ld a, $01                                     ; $7494: $3e $01
    dec c                                         ; $7496: $0d
    ld [bc], a                                    ; $7497: $02
    or d                                          ; $7498: $b2
    xor [hl]                                      ; $7499: $ae
    ld a, [bc]                                    ; $749a: $0a
    inc bc                                        ; $749b: $03
    ld c, d                                       ; $749c: $4a
    ld bc, $0172                                  ; $749d: $01 $72 $01

jr_0cc_74a0:
    rst $38                                       ; $74a0: $ff
    dec e                                         ; $74a1: $1d
    ld l, $03                                     ; $74a2: $2e $03
    adc e                                         ; $74a4: $8b
    and b                                         ; $74a5: $a0
    jr z, jr_0cc_74aa                             ; $74a6: $28 $02

    ldh [$b8], a                                  ; $74a8: $e0 $b8

jr_0cc_74aa:
    ld bc, $9f60                                  ; $74aa: $01 $60 $9f
    add b                                         ; $74ad: $80
    rst $38                                       ; $74ae: $ff
    ld a, [c]                                     ; $74af: $f2
    nop                                           ; $74b0: $00
    db $fd                                        ; $74b1: $fd
    add a                                         ; $74b2: $87
    ld hl, sp-$30                                 ; $74b3: $f8 $d0
    rst $38                                       ; $74b5: $ff
    add hl, sp                                    ; $74b6: $39
    cp $e3                                        ; $74b7: $fe $e3
    ld sp, $f9fc                                  ; $74b9: $31 $fc $f9
    ld [hl-], a                                   ; $74bc: $32
    inc bc                                        ; $74bd: $03
    xor [hl]                                      ; $74be: $ae
    add hl, bc                                    ; $74bf: $09
    ld [hl], b                                    ; $74c0: $70
    add b                                         ; $74c1: $80
    db $fc                                        ; $74c2: $fc
    inc [hl]                                      ; $74c3: $34
    inc bc                                        ; $74c4: $03
    ld de, $00f8                                  ; $74c5: $11 $f8 $00
    db $ec                                        ; $74c8: $ec
    ld [hl], b                                    ; $74c9: $70
    ld [bc], a                                    ; $74ca: $02
    inc bc                                        ; $74cb: $03
    nop                                           ; $74cc: $00
    inc b                                         ; $74cd: $04
    ld l, b                                       ; $74ce: $68
    inc bc                                        ; $74cf: $03
    ld d, b                                       ; $74d0: $50
    dec c                                         ; $74d1: $0d
    or $01                                        ; $74d2: $f6 $01
    rlca                                          ; $74d4: $07
    ld [hl], b                                    ; $74d5: $70
    inc bc                                        ; $74d6: $03
    nop                                           ; $74d7: $00
    nop                                           ; $74d8: $00
    add b                                         ; $74d9: $80
    ld a, a                                       ; $74da: $7f
    inc bc                                        ; $74db: $03
    add sp, $17                                   ; $74dc: $e8 $17
    nop                                           ; $74de: $00
    rst $38                                       ; $74df: $ff
    db $f4                                        ; $74e0: $f4
    dec bc                                        ; $74e1: $0b
    add [hl]                                      ; $74e2: $86
    add hl, bc                                    ; $74e3: $09
    or b                                          ; $74e4: $b0
    ld a, [bc]                                    ; $74e5: $0a
    ld b, c                                       ; $74e6: $41
    jr c, @-$7c                                   ; $74e7: $38 $82

    ld bc, $ff78                                  ; $74e9: $01 $78 $ff
    dec l                                         ; $74ec: $2d
    cp $f8                                        ; $74ed: $fe $f8
    or b                                          ; $74ef: $b0
    ld [bc], a                                    ; $74f0: $02
    ld b, [hl]                                    ; $74f1: $46
    jr nc, jr_0cc_756c                            ; $74f2: $30 $78

    inc bc                                        ; $74f4: $03
    db $10                                        ; $74f5: $10
    ldh [$fc], a                                  ; $74f6: $e0 $fc
    and [hl]                                      ; $74f8: $a6
    ld [bc], a                                    ; $74f9: $02
    ld b, $09                                     ; $74fa: $06 $09
    cp d                                          ; $74fc: $ba
    ld [bc], a                                    ; $74fd: $02
    ld b, b                                       ; $74fe: $40
    ld [hl], b                                    ; $74ff: $70
    add b                                         ; $7500: $80
    inc a                                         ; $7501: $3c
    ret nz                                        ; $7502: $c0

    rrca                                          ; $7503: $0f
    and [hl]                                      ; $7504: $a6
    inc bc                                        ; $7505: $03
    daa                                           ; $7506: $27
    add h                                         ; $7507: $84
    ldh a, [rSC]                                  ; $7508: $f0 $02
    rlca                                          ; $750a: $07
    nop                                           ; $750b: $00
    dec a                                         ; $750c: $3d
    ld [bc], a                                    ; $750d: $02
    ld c, d                                       ; $750e: $4a
    add hl, bc                                    ; $750f: $09
    ld b, b                                       ; $7510: $40
    cp a                                          ; $7511: $bf
    ld h, d                                       ; $7512: $62
    pop af                                        ; $7513: $f1
    add sp, $02                                   ; $7514: $e8 $02
    db $ec                                        ; $7516: $ec
    ld a, [bc]                                    ; $7517: $0a
    daa                                           ; $7518: $27
    rst $18                                       ; $7519: $df
    adc $ba                                       ; $751a: $ce $ba
    inc bc                                        ; $751c: $03
    jr nz, jr_0cc_74a0                            ; $751d: $20 $81

    ld l, b                                       ; $751f: $68
    ld [de], a                                    ; $7520: $12
    ei                                            ; $7521: $fb
    db $fc                                        ; $7522: $fc
    pop bc                                        ; $7523: $c1
    cp $e7                                        ; $7524: $fe $e7
    ld hl, sp-$40                                 ; $7526: $f8 $c0
    ld [$648b], sp                                ; $7528: $08 $8b $64
    dec bc                                        ; $752b: $0b
    ld h, b                                       ; $752c: $60
    add b                                         ; $752d: $80
    db $f4                                        ; $752e: $f4
    inc [hl]                                      ; $752f: $34
    inc bc                                        ; $7530: $03
    ldh [$72], a                                  ; $7531: $e0 $72
    inc de                                        ; $7533: $13
    ld bc, $b068                                  ; $7534: $01 $68 $b0
    inc bc                                        ; $7537: $03
    ld d, b                                       ; $7538: $50
    inc bc                                        ; $7539: $03
    ld b, b                                       ; $753a: $40
    rst $38                                       ; $753b: $ff
    ld bc, $bf00                                  ; $753c: $01 $00 $bf
    rst $38                                       ; $753f: $ff
    rst $28                                       ; $7540: $ef
    rst $38                                       ; $7541: $ff
    xor l                                         ; $7542: $ad
    rst $38                                       ; $7543: $ff
    nop                                           ; $7544: $00
    ld l, a                                       ; $7545: $6f
    cp l                                          ; $7546: $bd
    xor l                                         ; $7547: $ad
    rst $38                                       ; $7548: $ff
    di                                            ; $7549: $f3
    xor a                                         ; $754a: $af
    rst $38                                       ; $754b: $ff
    rst $38                                       ; $754c: $ff
    nop                                           ; $754d: $00
    db $fd                                        ; $754e: $fd
    rst $18                                       ; $754f: $df
    rst $18                                       ; $7550: $df
    rst $38                                       ; $7551: $ff
    xor d                                         ; $7552: $aa
    rst $30                                       ; $7553: $f7
    xor b                                         ; $7554: $a8
    di                                            ; $7555: $f3
    nop                                           ; $7556: $00
    ld h, l                                       ; $7557: $65
    cp e                                          ; $7558: $bb
    inc sp                                        ; $7559: $33
    cp e                                          ; $755a: $bb
    ld h, a                                       ; $755b: $67
    cp e                                          ; $755c: $bb
    rst $30                                       ; $755d: $f7
    rst $38                                       ; $755e: $ff
    nop                                           ; $755f: $00
    ld l, e                                       ; $7560: $6b
    rst $30                                       ; $7561: $f7
    db $ed                                        ; $7562: $ed
    di                                            ; $7563: $f3
    and e                                         ; $7564: $a3
    ld sp, hl                                     ; $7565: $f9
    xor a                                         ; $7566: $af
    ld sp, hl                                     ; $7567: $f9
    nop                                           ; $7568: $00
    jp hl                                         ; $7569: $e9


    sbc e                                         ; $756a: $9b
    rst $08                                       ; $756b: $cf

jr_0cc_756c:
    sbc c                                         ; $756c: $99
    cp l                                          ; $756d: $bd
    reti                                          ; $756e: $d9


    ld [hl], e                                    ; $756f: $73
    cp a                                          ; $7570: $bf
    nop                                           ; $7571: $00
    sbc e                                         ; $7572: $9b
    ccf                                           ; $7573: $3f
    ld d, c                                       ; $7574: $51
    cp a                                          ; $7575: $bf
    cp c                                          ; $7576: $b9
    rst $18                                       ; $7577: $df
    cp d                                          ; $7578: $ba
    db $dd                                        ; $7579: $dd
    nop                                           ; $757a: $00
    rst $08                                       ; $757b: $cf
    sbc c                                         ; $757c: $99
    xor c                                         ; $757d: $a9
    db $dd                                        ; $757e: $dd
    rst $18                                       ; $757f: $df
    rst $38                                       ; $7580: $ff
    ld h, a                                       ; $7581: $67
    cp e                                          ; $7582: $bb
    nop                                           ; $7583: $00
    inc sp                                        ; $7584: $33
    ei                                            ; $7585: $fb
    dec h                                         ; $7586: $25
    ei                                            ; $7587: $fb
    xor b                                         ; $7588: $a8
    di                                            ; $7589: $f3
    xor d                                         ; $758a: $aa
    rst $30                                       ; $758b: $f7
    nop                                           ; $758c: $00
    rst $00                                       ; $758d: $c7
    rst $38                                       ; $758e: $ff
    xor l                                         ; $758f: $ad
    rst $18                                       ; $7590: $df
    xor l                                         ; $7591: $ad
    rst $18                                       ; $7592: $df
    sbc l                                         ; $7593: $9d
    ld sp, hl                                     ; $7594: $f9
    nop                                           ; $7595: $00
    db $db                                        ; $7596: $db
    db $dd                                        ; $7597: $dd
    ld d, l                                       ; $7598: $55
    ei                                            ; $7599: $fb
    ld d, e                                       ; $759a: $53
    ei                                            ; $759b: $fb
    ld d, l                                       ; $759c: $55
    ei                                            ; $759d: $fb
    nop                                           ; $759e: $00
    cp e                                          ; $759f: $bb
    db $dd                                        ; $75a0: $dd
    cp c                                          ; $75a1: $b9
    db $dd                                        ; $75a2: $dd
    or l                                          ; $75a3: $b5
    rst $18                                       ; $75a4: $df
    db $ed                                        ; $75a5: $ed
    rst $18                                       ; $75a6: $df
    nop                                           ; $75a7: $00
    ld d, a                                       ; $75a8: $57
    xor a                                         ; $75a9: $af
    ld [hl], c                                    ; $75aa: $71
    and a                                         ; $75ab: $a7
    db $fd                                        ; $75ac: $fd
    inc hl                                        ; $75ad: $23
    or a                                          ; $75ae: $b7
    ld h, a                                       ; $75af: $67
    nop                                           ; $75b0: $00
    ld [hl], l                                    ; $75b1: $75
    rst $20                                       ; $75b2: $e7
    ld l, a                                       ; $75b3: $6f
    rst $30                                       ; $75b4: $f7
    call c, $ffef                                 ; $75b5: $dc $ef $ff
    rst $38                                       ; $75b8: $ff
    nop                                           ; $75b9: $00
    ld [hl], l                                    ; $75ba: $75
    rst $18                                       ; $75bb: $df
    sub e                                         ; $75bc: $93
    db $dd                                        ; $75bd: $dd
    xor h                                         ; $75be: $ac
    db $d3                                        ; $75bf: $d3
    adc c                                         ; $75c0: $89
    rst $10                                       ; $75c1: $d7
    nop                                           ; $75c2: $00
    rst $10                                       ; $75c3: $d7
    add e                                         ; $75c4: $83
    or l                                          ; $75c5: $b5
    jp $e3df                                      ; $75c6: $c3 $df $e3


    ld hl, $00df                                  ; $75c9: $21 $df $00
    sbc a                                         ; $75cc: $9f
    rst $08                                       ; $75cd: $cf
    xor $df                                       ; $75ce: $ee $df
    add d                                         ; $75d0: $82
    rst $38                                       ; $75d1: $ff
    call nc, Call_000_10fb                        ; $75d2: $d4 $fb $10
    ld b, c                                       ; $75d5: $41
    ei                                            ; $75d6: $fb
    db $db                                        ; $75d7: $db
    inc h                                         ; $75d8: $24
    nop                                           ; $75d9: $00
    xor e                                         ; $75da: $ab
    rst $10                                       ; $75db: $d7
    ld d, [hl]                                    ; $75dc: $56
    rst $38                                       ; $75dd: $ff
    nop                                           ; $75de: $00
    ld l, d                                       ; $75df: $6a
    rst $30                                       ; $75e0: $f7
    xor c                                         ; $75e1: $a9
    rst $30                                       ; $75e2: $f7
    ld b, c                                       ; $75e3: $41
    or a                                          ; $75e4: $b7
    inc sp                                        ; $75e5: $33
    rst $00                                       ; $75e6: $c7
    nop                                           ; $75e7: $00
    jp nc, $8fef                                  ; $75e8: $d2 $ef $8f

    rst $28                                       ; $75eb: $ef
    adc $fd                                       ; $75ec: $ce $fd
    ld sp, hl                                     ; $75ee: $f9
    db $fd                                        ; $75ef: $fd
    nop                                           ; $75f0: $00
    adc e                                         ; $75f1: $8b
    db $fd                                        ; $75f2: $fd
    sbc l                                         ; $75f3: $9d
    ei                                            ; $75f4: $fb
    ld e, l                                       ; $75f5: $5d
    cp e                                          ; $75f6: $bb
    rst $30                                       ; $75f7: $f7
    sbc e                                         ; $75f8: $9b
    ld b, b                                       ; $75f9: $40
    or a                                          ; $75fa: $b7
    xor l                                         ; $75fb: $ad
    nop                                           ; $75fc: $00
    ld [hl], $7f                                  ; $75fd: $36 $7f
    ld b, [hl]                                    ; $75ff: $46
    ccf                                           ; $7600: $3f
    ld hl, $00df                                  ; $7601: $21 $df $00
    db $dd                                        ; $7604: $dd
    ei                                            ; $7605: $fb
    jp nc, Jump_000_2dfd                          ; $7606: $d2 $fd $2d

    sbc $cc                                       ; $7609: $de $cc
    ld a, $00                                     ; $760b: $3e $00
    dec sp                                        ; $760d: $3b
    inc b                                         ; $760e: $04
    nop                                           ; $760f: $00
    nop                                           ; $7610: $00
    ld bc, $0500                                  ; $7611: $01 $00 $05
    ld [bc], a                                    ; $7614: $02
    nop                                           ; $7615: $00
    dec h                                         ; $7616: $25
    rrca                                          ; $7617: $0f
    ld a, [bc]                                    ; $7618: $0a
    rla                                           ; $7619: $17
    ld a, d                                       ; $761a: $7a
    inc c                                         ; $761b: $0c
    ld a, [hl+]                                   ; $761c: $2a
    inc bc                                        ; $761d: $03
    nop                                           ; $761e: $00
    inc b                                         ; $761f: $04
    nop                                           ; $7620: $00
    ld [$1d15], sp                                ; $7621: $08 $15 $1d
    ld l, $68                                     ; $7624: $2e $68
    cp a                                          ; $7626: $bf
    nop                                           ; $7627: $00
    or l                                          ; $7628: $b5
    ei                                            ; $7629: $fb
    ld e, c                                       ; $762a: $59
    or a                                          ; $762b: $b7

jr_0cc_762c:
    add h                                         ; $762c: $84
    ld a, e                                       ; $762d: $7b
    jp hl                                         ; $762e: $e9


    ld e, l                                       ; $762f: $5d
    nop                                           ; $7630: $00
    ld a, [de]                                    ; $7631: $1a
    ld a, l                                       ; $7632: $7d
    nop                                           ; $7633: $00
    nop                                           ; $7634: $00
    nop                                           ; $7635: $00
    ret nz                                        ; $7636: $c0

    ret nc                                        ; $7637: $d0

    or b                                          ; $7638: $b0
    nop                                           ; $7639: $00
    xor b                                         ; $763a: $a8
    db $f4                                        ; $763b: $f4
    ld [hl-], a                                   ; $763c: $32
    call z, Call_000_18cd                         ; $763d: $cc $cd $18
    ld a, [hl+]                                   ; $7640: $2a
    nop                                           ; $7641: $00
    nop                                           ; $7642: $00

jr_0cc_7643:
    ld b, b                                       ; $7643: $40
    nop                                           ; $7644: $00
    dec [hl]                                      ; $7645: $35
    ld a, [hl+]                                   ; $7646: $2a
    ld l, h                                       ; $7647: $6c
    ld d, $10                                     ; $7648: $16 $10
    inc c                                         ; $764a: $0c
    ld [bc], a                                    ; $764b: $02
    ld l, [hl]                                    ; $764c: $6e
    nop                                           ; $764d: $00

jr_0cc_764e:
    ld d, h                                       ; $764e: $54
    nop                                           ; $764f: $00
    ld hl, $3d00                                  ; $7650: $21 $00 $3d
    nop                                           ; $7653: $00
    nop                                           ; $7654: $00
    nop                                           ; $7655: $00
    db $eb                                        ; $7656: $eb
    rst $38                                       ; $7657: $ff
    sub [hl]                                      ; $7658: $96
    rst $28                                       ; $7659: $ef
    or a                                          ; $765a: $b7
    rst $08                                       ; $765b: $cf
    push bc                                       ; $765c: $c5
    sbc a                                         ; $765d: $9f
    nop                                           ; $765e: $00
    push af                                       ; $765f: $f5
    sbc a                                         ; $7660: $9f
    sub a                                         ; $7661: $97
    reti                                          ; $7662: $d9


    di                                            ; $7663: $f3
    sbc c                                         ; $7664: $99
    cp l                                          ; $7665: $bd
    sbc e                                         ; $7666: $9b
    ret nz                                        ; $7667: $c0

    db $10                                        ; $7668: $10
    ld bc, $50d0                                  ; $7669: $01 $d0 $50
    call $d8fe                                    ; $766c: $cd $fe $d8
    xor $cd                                       ; $766f: $ee $cd
    xor $00                                       ; $7671: $ee $00
    db $dd                                        ; $7673: $dd
    and $08                                       ; $7674: $e6 $08
    rst $30                                       ; $7676: $f7
    ld l, e                                       ; $7677: $6b
    or a                                          ; $7678: $b7
    ld [hl-], a                                   ; $7679: $32
    cp a                                          ; $767a: $bf
    jr nz, jr_0cc_76b4                            ; $767b: $20 $37

    cp e                                          ; $767d: $bb
    and b                                         ; $767e: $a0
    jr jr_0cc_762c                                ; $767f: $18 $ab

    rst $30                                       ; $7681: $f7
    ld b, e                                       ; $7682: $43
    or a                                          ; $7683: $b7
    di                                            ; $7684: $f3
    jr nc, jr_0cc_764e                            ; $7685: $30 $c7

    or $ce                                        ; $7687: $f6 $ce
    nop                                           ; $7689: $00
    ld h, b                                       ; $768a: $60
    nop                                           ; $768b: $00
    nop                                           ; $768c: $00
    add b                                         ; $768d: $80
    ret nz                                        ; $768e: $c0

    ld b, b                                       ; $768f: $40
    nop                                           ; $7690: $00
    ld sp, hl                                     ; $7691: $f9
    dec l                                         ; $7692: $2d
    rst $38                                       ; $7693: $ff
    ret nz                                        ; $7694: $c0

    ccf                                           ; $7695: $3f
    ld [hl], h                                    ; $7696: $74
    adc e                                         ; $7697: $8b
    db $dd                                        ; $7698: $dd
    nop                                           ; $7699: $00
    ld h, e                                       ; $769a: $63
    nop                                           ; $769b: $00
    nop                                           ; $769c: $00
    ld [$271f], sp                                ; $769d: $08 $1f $27
    ld a, a                                       ; $76a0: $7f
    ld h, [hl]                                    ; $76a1: $66
    nop                                           ; $76a2: $00
    rst $38                                       ; $76a3: $ff
    sub d                                         ; $76a4: $92
    db $fd                                        ; $76a5: $fd
    adc h                                         ; $76a6: $8c
    ld a, a                                       ; $76a7: $7f
    ld d, e                                       ; $76a8: $53
    xor h                                         ; $76a9: $ac
    ld c, l                                       ; $76aa: $4d
    nop                                           ; $76ab: $00
    or d                                          ; $76ac: $b2
    nop                                           ; $76ad: $00
    nop                                           ; $76ae: $00
    inc d                                         ; $76af: $14
    jr c, jr_0cc_7643                             ; $76b0: $38 $91

    rst $38                                       ; $76b2: $ff
    ld a, [bc]                                    ; $76b3: $0a

jr_0cc_76b4:
    nop                                           ; $76b4: $00
    rst $30                                       ; $76b5: $f7
    jp z, Jump_000_3535                           ; $76b6: $ca $35 $35

    jp c, Jump_0cc_42bd                           ; $76b9: $da $bd $42

    ld b, [hl]                                    ; $76bc: $46
    nop                                           ; $76bd: $00
    cp b                                          ; $76be: $b8
    inc h                                         ; $76bf: $24
    inc a                                         ; $76c0: $3c
    add e                                         ; $76c1: $83
    rst $38                                       ; $76c2: $ff
    inc l                                         ; $76c3: $2c
    rst $38                                       ; $76c4: $ff
    stop                                          ; $76c5: $10 $00
    rst $38                                       ; $76c7: $ff
    db $eb                                        ; $76c8: $eb
    inc d                                         ; $76c9: $14
    ld [hl], h                                    ; $76ca: $74
    jp z, Jump_0cc_59ac                           ; $76cb: $ca $ac $59

    ld e, d                                       ; $76ce: $5a
    nop                                           ; $76cf: $00
    inc h                                         ; $76d0: $24
    ld [hl], b                                    ; $76d1: $70
    ld hl, sp-$66                                 ; $76d2: $f8 $9a
    rst $38                                       ; $76d4: $ff
    ld b, a                                       ; $76d5: $47
    rst $38                                       ; $76d6: $ff
    add e                                         ; $76d7: $83
    nop                                           ; $76d8: $00
    ld a, [hl]                                    ; $76d9: $7e
    db $d3                                        ; $76da: $d3
    inc l                                         ; $76db: $2c
    ld e, $01                                     ; $76dc: $1e $01
    dec a                                         ; $76de: $3d
    ld a, [c]                                     ; $76df: $f2
    cpl                                           ; $76e0: $2f
    nop                                           ; $76e1: $00
    ldh [rP1], a                                  ; $76e2: $e0 $00
    nop                                           ; $76e4: $00
    or b                                          ; $76e5: $b0
    ldh a, [$62]                                  ; $76e6: $f0 $62
    sbc a                                         ; $76e8: $9f
    inc e                                         ; $76e9: $1c
    nop                                           ; $76ea: $00
    ld a, [c]                                     ; $76eb: $f2
    db $e4                                        ; $76ec: $e4
    ld a, [de]                                    ; $76ed: $1a
    xor [hl]                                      ; $76ee: $ae
    ld d, b                                       ; $76ef: $50
    ld hl, sp+$00                                 ; $76f0: $f8 $00
    rst $30                                       ; $76f2: $f7
    nop                                           ; $76f3: $00
    rlca                                          ; $76f4: $07
    nop                                           ; $76f5: $00
    nop                                           ; $76f6: $00
    ld [bc], a                                    ; $76f7: $02
    rlca                                          ; $76f8: $07
    ld [hl], l                                    ; $76f9: $75
    scf                                           ; $76fa: $37
    or l                                          ; $76fb: $b5
    nop                                           ; $76fc: $00
    ld [hl], a                                    ; $76fd: $77
    ld [hl+], a                                   ; $76fe: $22
    db $ed                                        ; $76ff: $ed
    ld d, a                                       ; $7700: $57
    ret z                                         ; $7701: $c8

    ccf                                           ; $7702: $3f
    add b                                         ; $7703: $80
    ld [hl], h                                    ; $7704: $74
    ld b, b                                       ; $7705: $40
    ld [$0870], sp                                ; $7706: $08 $70 $08
    pop bc                                        ; $7709: $c1
    jp $ff34                                      ; $770a: $c3 $34 $ff


    db $db                                        ; $770d: $db
    inc h                                         ; $770e: $24
    nop                                           ; $770f: $00
    or a                                          ; $7710: $b7
    ld c, b                                       ; $7711: $48
    rst $38                                       ; $7712: $ff

jr_0cc_7713:
    nop                                           ; $7713: $00
    ld a, a                                       ; $7714: $7f
    nop                                           ; $7715: $00
    ld b, $0e                                     ; $7716: $06 $0e
    nop                                           ; $7718: $00
    ld de, $631f                                  ; $7719: $11 $1f $63
    ld a, h                                       ; $771c: $7c
    adc [hl]                                      ; $771d: $8e
    di                                            ; $771e: $f3
    dec sp                                        ; $771f: $3b
    call nc, $8602                                ; $7720: $d4 $02 $86
    ld a, c                                       ; $7723: $79
    db $db                                        ; $7724: $db
    inc h                                         ; $7725: $24
    sbc a                                         ; $7726: $9f
    ld h, b                                       ; $7727: $60
    sub b                                         ; $7728: $90
    jr jr_0cc_777b                                ; $7729: $18 $50

    nop                                           ; $772b: $00
    ld sp, hl                                     ; $772c: $f9
    inc d                                         ; $772d: $14
    rst $38                                       ; $772e: $ff
    jp z, $bf3f                                   ; $772f: $ca $3f $bf

    ld b, b                                       ; $7732: $40
    db $ed                                        ; $7733: $ed
    ld [$0c12], sp                                ; $7734: $08 $12 $0c
    inc c                                         ; $7737: $0c
    add hl, bc                                    ; $7738: $09
    jr nz, jr_0cc_776b                            ; $7739: $20 $30

    rst $18                                       ; $773b: $df
    jr nz, @+$61                                  ; $773c: $20 $5f

    nop                                           ; $773e: $00
    and b                                         ; $773f: $a0
    inc a                                         ; $7740: $3c
    inc a                                         ; $7741: $3c
    xor l                                         ; $7742: $ad
    db $db                                        ; $7743: $db
    ld c, c                                       ; $7744: $49
    or [hl]                                       ; $7745: $b6
    add [hl]                                      ; $7746: $86
    nop                                           ; $7747: $00
    ld a, c                                       ; $7748: $79
    db $eb                                        ; $7749: $eb
    inc d                                         ; $774a: $14
    or h                                          ; $774b: $b4
    ld c, d                                       ; $774c: $4a
    db $fc                                        ; $774d: $fc
    ld bc, $007e                                  ; $774e: $01 $7e $00
    nop                                           ; $7751: $00
    sub e                                         ; $7752: $93
    ld h, [hl]                                    ; $7753: $66
    ld a, c                                       ; $7754: $79
    rlca                                          ; $7755: $07
    cpl                                           ; $7756: $2f
    ret nc                                        ; $7757: $d0

    xor [hl]                                      ; $7758: $ae
    nop                                           ; $7759: $00
    db $10                                        ; $775a: $10
    inc d                                         ; $775b: $14
    ld h, b                                       ; $775c: $60
    add c                                         ; $775d: $81
    nop                                           ; $775e: $00
    inc [hl]                                      ; $775f: $34
    ld [bc], a                                    ; $7760: $02
    dec b                                         ; $7761: $05
    nop                                           ; $7762: $00
    jr jr_0cc_7713                                ; $7763: $18 $ae

    ld d, e                                       ; $7765: $53
    or l                                          ; $7766: $b5
    ld c, d                                       ; $7767: $4a
    ld d, a                                       ; $7768: $57
    xor b                                         ; $7769: $a8
    db $ec                                        ; $776a: $ec

jr_0cc_776b:
    nop                                           ; $776b: $00
    db $10                                        ; $776c: $10
    ld a, c                                       ; $776d: $79
    nop                                           ; $776e: $00
    ld a, [hl+]                                   ; $776f: $2a
    nop                                           ; $7770: $00
    add d                                         ; $7771: $82
    nop                                           ; $7772: $00
    ld h, e                                       ; $7773: $63
    nop                                           ; $7774: $00
    add b                                         ; $7775: $80
    ld e, c                                       ; $7776: $59
    and b                                         ; $7777: $a0
    ld b, a                                       ; $7778: $47
    add b                                         ; $7779: $80
    ccf                                           ; $777a: $3f

jr_0cc_777b:
    nop                                           ; $777b: $00
    rst $38                                       ; $777c: $ff
    add b                                         ; $777d: $80
    ld [bc], a                                    ; $777e: $02
    db $10                                        ; $777f: $10
    ldh a, [rP1]                                  ; $7780: $f0 $00
    ld h, h                                       ; $7782: $64
    inc bc                                        ; $7783: $03
    sbc h                                         ; $7784: $9c
    ld h, $d6                                     ; $7785: $26 $d6

jr_0cc_7787:
    nop                                           ; $7787: $00
    ld [$0ad5], sp                                ; $7788: $08 $d5 $0a
    rst $28                                       ; $778b: $ef
    nop                                           ; $778c: $00
    rst $00                                       ; $778d: $c7
    nop                                           ; $778e: $00
    add hl, hl                                    ; $778f: $29
    nop                                           ; $7790: $00
    nop                                           ; $7791: $00
    sbc c                                         ; $7792: $99
    ld l, h                                       ; $7793: $6c
    xor h                                         ; $7794: $ac
    cp $3a                                        ; $7795: $fe $3a
    push bc                                       ; $7797: $c5
    ld e, e                                       ; $7798: $5b

jr_0cc_7799:
    nop                                           ; $7799: $00
    inc b                                         ; $779a: $04
    adc [hl]                                      ; $779b: $8e
    jr nc, jr_0cc_7799                            ; $779c: $30 $fb

    inc b                                         ; $779e: $04
    cp $00                                        ; $779f: $fe $00
    or [hl]                                       ; $77a1: $b6
    nop                                           ; $77a2: $00
    nop                                           ; $77a3: $00
    push hl                                       ; $77a4: $e5
    nop                                           ; $77a5: $00
    and b                                         ; $77a6: $a0
    nop                                           ; $77a7: $00
    inc e                                         ; $77a8: $1c
    and e                                         ; $77a9: $a3

jr_0cc_77aa:
    rla                                           ; $77aa: $17
    nop                                           ; $77ab: $00
    ld [$651a], sp                                ; $77ac: $08 $1a $65
    cp e                                          ; $77af: $bb
    inc b                                         ; $77b0: $04
    ld a, a                                       ; $77b1: $7f
    nop                                           ; $77b2: $00
    ld l, l                                       ; $77b3: $6d
    nop                                           ; $77b4: $00
    nop                                           ; $77b5: $00

jr_0cc_77b6:
    and a                                         ; $77b6: $a7
    nop                                           ; $77b7: $00
    dec h                                         ; $77b8: $25
    nop                                           ; $77b9: $00
    jp c, Jump_0cc_4325                           ; $77ba: $da $25 $43

    nop                                           ; $77bd: $00
    cp h                                          ; $77be: $bc
    xor h                                         ; $77bf: $ac
    ld d, e                                       ; $77c0: $53
    set 6, h                                      ; $77c1: $cb $f4
    ld [de], a                                    ; $77c3: $12
    db $fd                                        ; $77c4: $fd
    sbc c                                         ; $77c5: $99
    nop                                           ; $77c6: $00
    cp $46                                        ; $77c7: $fe $46
    ccf                                           ; $77c9: $3f
    adc c                                         ; $77ca: $89
    or [hl]                                       ; $77cb: $b6
    ret nz                                        ; $77cc: $c0

    jr nz, jr_0cc_77aa                            ; $77cd: $20 $db

    nop                                           ; $77cf: $00
    jr nz, jr_0cc_7787                            ; $77d0: $20 $b5

    ld c, d                                       ; $77d2: $4a
    db $d3                                        ; $77d3: $d3
    cpl                                           ; $77d4: $2f
    ld c, b                                       ; $77d5: $48
    cp a                                          ; $77d6: $bf
    sbc l                                         ; $77d7: $9d
    nop                                           ; $77d8: $00
    ld a, a                                       ; $77d9: $7f
    ld h, d                                       ; $77da: $62
    db $fd                                        ; $77db: $fd
    sub h                                         ; $77dc: $94
    ld l, l                                       ; $77dd: $6d
    ld [bc], a                                    ; $77de: $02
    rra                                           ; $77df: $1f
    ld c, l                                       ; $77e0: $4d
    nop                                           ; $77e1: $00
    ccf                                           ; $77e2: $3f
    inc de                                        ; $77e3: $13
    rra                                           ; $77e4: $1f
    ld h, d                                       ; $77e5: $62
    rlca                                          ; $77e6: $07
    ld a, b                                       ; $77e7: $78
    nop                                           ; $77e8: $00
    ld a, l                                       ; $77e9: $7d
    add b                                         ; $77ea: $80
    ld [bc], a                                    ; $77eb: $02
    ld [$9880], sp                                ; $77ec: $08 $80 $98
    db $fc                                        ; $77ef: $fc
    ld h, d                                       ; $77f0: $62
    ldh a, [$8e]                                  ; $77f1: $f0 $8e
    ret nz                                        ; $77f3: $c0

    nop                                           ; $77f4: $00
    adc [hl]                                      ; $77f5: $8e
    add b                                         ; $77f6: $80
    adc $80                                       ; $77f7: $ce $80
    adc $00                                       ; $77f9: $ce $00
    db $fc                                        ; $77fb: $fc
    nop                                           ; $77fc: $00
    nop                                           ; $77fd: $00
    pop af                                        ; $77fe: $f1
    ld [bc], a                                    ; $77ff: $02

Jump_0cc_7800:
    jr nz, jr_0cc_7802                            ; $7800: $20 $00

jr_0cc_7802:
    dec de                                        ; $7802: $1b
    nop                                           ; $7803: $00
    or l                                          ; $7804: $b5
    ld a, [bc]                                    ; $7805: $0a
    add b                                         ; $7806: $80
    jr nc, jr_0cc_7821                            ; $7807: $30 $18

    ld h, e                                       ; $7809: $63
    db $fd                                        ; $780a: $fd
    sub b                                         ; $780b: $90
    ld l, l                                       ; $780c: $6d
    ld l, e                                       ; $780d: $6b
    sub h                                         ; $780e: $94
    cp h                                          ; $780f: $bc
    nop                                           ; $7810: $00
    ld b, d                                       ; $7811: $42
    di                                            ; $7812: $f3
    ld e, b                                       ; $7813: $58
    db $d3                                        ; $7814: $d3
    cpl                                           ; $7815: $2f
    ld c, d                                       ; $7816: $4a
    cp a                                          ; $7817: $bf
    reti                                          ; $7818: $d9


    nop                                           ; $7819: $00
    ld a, a                                       ; $781a: $7f
    ld h, [hl]                                    ; $781b: $66
    ld sp, hl                                     ; $781c: $f9
    sbc b                                         ; $781d: $98
    ld l, l                                       ; $781e: $6d
    nop                                           ; $781f: $00
    nop                                           ; $7820: $00

jr_0cc_7821:
    ld d, b                                       ; $7821: $50
    nop                                           ; $7822: $00
    nop                                           ; $7823: $00
    and l                                         ; $7824: $a5
    ld d, b                                       ; $7825: $50
    set 6, h                                      ; $7826: $cb $f4
    ld [hl-], a                                   ; $7828: $32
    db $dd                                        ; $7829: $dd
    sbc a                                         ; $782a: $9f
    nop                                           ; $782b: $00
    add sp, $78                                   ; $782c: $e8 $78
    add b                                         ; $782e: $80
    add c                                         ; $782f: $81
    ld b, $04                                     ; $7830: $06 $04
    nop                                           ; $7832: $00
    ld e, b                                       ; $7833: $58
    jr nc, jr_0cc_77b6                            ; $7834: $30 $80

    xor l                                         ; $7836: $ad
    stop                                          ; $7837: $10 $00
    ld [hl], b                                    ; $7839: $70
    ld [$1f66], sp                                ; $783a: $08 $66 $1f
    add hl, hl                                    ; $783d: $29
    sub [hl]                                      ; $783e: $96
    ret nz                                        ; $783f: $c0

    jr nz, jr_0cc_787a                            ; $7840: $20 $38

    add b                                         ; $7842: $80
    nop                                           ; $7843: $00
    cp a                                          ; $7844: $bf
    adc l                                         ; $7845: $8d
    and $e8                                       ; $7846: $e6 $e8
    rla                                           ; $7848: $17
    call c, $0300                                 ; $7849: $dc $00 $03
    xor a                                         ; $784c: $af
    ret nz                                        ; $784d: $c0

    ld h, [hl]                                    ; $784e: $66
    pop af                                        ; $784f: $f1
    xor b                                         ; $7850: $a8
    ld a, h                                       ; $7851: $7c
    ld a, [de]                                    ; $7852: $1a
    nop                                           ; $7853: $00
    cp $c1                                        ; $7854: $fe $c1
    rst $38                                       ; $7856: $ff
    xor h                                         ; $7857: $ac
    ld d, e                                       ; $7858: $53
    or [hl]                                       ; $7859: $b6
    ld a, a                                       ; $785a: $7f
    ld b, [hl]                                    ; $785b: $46
    ld b, b                                       ; $785c: $40
    cp a                                          ; $785d: $bf
    ld d, b                                       ; $785e: $50
    ld a, [bc]                                    ; $785f: $0a
    jp c, $fd75                                   ; $7860: $da $75 $fd

    ld [bc], a                                    ; $7863: $02
    rst $08                                       ; $7864: $cf
    add b                                         ; $7865: $80
    nop                                           ; $7866: $00
    ld h, b                                       ; $7867: $60
    call nc, $c015                                ; $7868: $d4 $15 $c0
    ret c                                         ; $786b: $d8

    cp a                                          ; $786c: $bf
    xor l                                         ; $786d: $ad
    di                                            ; $786e: $f3
    nop                                           ; $786f: $00
    ld l, b                                       ; $7870: $68
    rst $30                                       ; $7871: $f7
    adc [hl]                                      ; $7872: $8e
    ld [hl], b                                    ; $7873: $70
    ld [hl], b                                    ; $7874: $70
    nop                                           ; $7875: $00
    inc d                                         ; $7876: $14
    adc e                                         ; $7877: $8b
    ld [bc], a                                    ; $7878: $02
    or c                                          ; $7879: $b1

jr_0cc_787a:
    ld c, a                                       ; $787a: $4f
    or $3f                                        ; $787b: $f6 $3f
    ld c, [hl]                                    ; $787d: $4e
    scf                                           ; $787e: $37
    ld [hl], b                                    ; $787f: $70
    ld a, [bc]                                    ; $7880: $0a
    rst $30                                       ; $7881: $f7
    nop                                           ; $7882: $00
    ld [$4038], sp                                ; $7883: $08 $38 $40
    ld b, h                                       ; $7886: $44
    cp $91                                        ; $7887: $fe $91
    xor $18                                       ; $7889: $ee $18
    nop                                           ; $788b: $00
    db $fd                                        ; $788c: $fd
    pop de                                        ; $788d: $d1
    or e                                          ; $788e: $b3
    adc d                                         ; $788f: $8a
    add $26                                       ; $7890: $c6 $26
    sbc [hl]                                      ; $7892: $9e
    xor [hl]                                      ; $7893: $ae
    ld bc, $2c1e                                  ; $7894: $01 $1e $2c
    ld e, $f9                                     ; $7897: $1e $f9
    nop                                           ; $7899: $00
    rlca                                          ; $789a: $07
    ld hl, sp-$70                                 ; $789b: $f8 $90
    ld [bc], a                                    ; $789d: $02
    db $10                                        ; $789e: $10
    cp a                                          ; $789f: $bf
    ld sp, $90cf                                  ; $78a0: $31 $cf $90
    ld [hl+], a                                   ; $78a3: $22
    cp $c1                                        ; $78a4: $fe $c1
    cp $2d                                        ; $78a6: $fe $2d

jr_0cc_78a8:
    nop                                           ; $78a8: $00
    sbc $ab                                       ; $78a9: $de $ab
    ld e, a                                       ; $78ab: $5f
    ld [hl], e                                    ; $78ac: $73
    rst $28                                       ; $78ad: $ef
    ld h, [hl]                                    ; $78ae: $66
    ld sp, hl                                     ; $78af: $f9
    jp c, $bd00                                   ; $78b0: $da $00 $bd

    sbc c                                         ; $78b3: $99
    cp $63                                        ; $78b4: $fe $63
    cp a                                          ; $78b6: $bf
    ld l, e                                       ; $78b7: $6b
    rst $30                                       ; $78b8: $f7
    adc b                                         ; $78b9: $88
    nop                                           ; $78ba: $00
    ld [hl], a                                    ; $78bb: $77
    ld h, a                                       ; $78bc: $67
    cp $66                                        ; $78bd: $fe $66
    rst $38                                       ; $78bf: $ff
    sbc b                                         ; $78c0: $98
    rst $20                                       ; $78c1: $e7
    pop bc                                        ; $78c2: $c1
    nop                                           ; $78c3: $00
    cp $2c                                        ; $78c4: $fe $2c
    sbc $2d                                       ; $78c6: $de $2d
    ld a, a                                       ; $78c8: $7f
    ld l, e                                       ; $78c9: $6b
    rst $30                                       ; $78ca: $f7
    ld [hl], h                                    ; $78cb: $74
    nop                                           ; $78cc: $00
    ei                                            ; $78cd: $fb
    xor a                                         ; $78ce: $af
    ld a, h                                       ; $78cf: $7c
    ld a, [bc]                                    ; $78d0: $0a
    rst $38                                       ; $78d1: $ff
    ld h, a                                       ; $78d2: $67
    rst $28                                       ; $78d3: $ef
    daa                                           ; $78d4: $27
    nop                                           ; $78d5: $00
    rst $38                                       ; $78d6: $ff
    ld [hl], d                                    ; $78d7: $72
    rst $38                                       ; $78d8: $ff
    ld [hl], c                                    ; $78d9: $71
    rst $38                                       ; $78da: $ff
    xor e                                         ; $78db: $ab
    ld [hl], a                                    ; $78dc: $77
    ld d, d                                       ; $78dd: $52
    ld [$aced], sp                                ; $78de: $08 $ed $ac
    ld a, a                                       ; $78e1: $7f
    ld [hl], l                                    ; $78e2: $75
    ld a, [bc]                                    ; $78e3: $0a
    nop                                           ; $78e4: $00
    inc h                                         ; $78e5: $24
    di                                            ; $78e6: $f3
    push de                                       ; $78e7: $d5
    ld bc, $6e6e                                  ; $78e8: $01 $6e $6e
    rst $38                                       ; $78eb: $ff
    ld c, a                                       ; $78ec: $4f
    cp [hl]                                       ; $78ed: $be
    ld c, c                                       ; $78ee: $49
    sub [hl]                                      ; $78ef: $96
    db $10                                        ; $78f0: $10
    jr jr_0cc_78f3                                ; $78f1: $18 $00

jr_0cc_78f3:
    and h                                         ; $78f3: $a4
    ld [hl], e                                    ; $78f4: $73
    ld [hl], l                                    ; $78f5: $75
    rst $28                                       ; $78f6: $ef
    ld h, e                                       ; $78f7: $63
    rst $38                                       ; $78f8: $ff
    ld e, e                                       ; $78f9: $5b
    cp a                                          ; $78fa: $bf
    nop                                           ; $78fb: $00
    jp hl                                         ; $78fc: $e9


    ld a, [hl]                                    ; $78fd: $7e
    inc e                                         ; $78fe: $1c
    rst $38                                       ; $78ff: $ff
    xor d                                         ; $7900: $aa
    rst $18                                       ; $7901: $df
    add a                                         ; $7902: $87
    rst $38                                       ; $7903: $ff
    nop                                           ; $7904: $00
    daa                                           ; $7905: $27
    rst $30                                       ; $7906: $f7
    ld [hl], d                                    ; $7907: $72
    rst $38                                       ; $7908: $ff
    ld [hl], l                                    ; $7909: $75
    cp $ae                                        ; $790a: $fe $ae
    ld a, a                                       ; $790c: $7f
    ldh a, [$03]                                  ; $790d: $f0 $03
    add l                                         ; $790f: $85
    ld [bc], a                                    ; $7910: $02
    inc b                                         ; $7911: $04
    nop                                           ; $7912: $00
    rst $38                                       ; $7913: $ff
    nop                                           ; $7914: $00
    rst $38                                       ; $7915: $ff
    inc b                                         ; $7916: $04
    inc b                                         ; $7917: $04
    nop                                           ; $7918: $00
    rlca                                          ; $7919: $07
    rst $38                                       ; $791a: $ff
    ld e, $13                                     ; $791b: $1e $13
    rst $38                                       ; $791d: $ff
    ld bc, $100a                                  ; $791e: $01 $0a $10
    ld [bc], a                                    ; $7921: $02
    ld h, b                                       ; $7922: $60
    ld bc, $2268                                  ; $7923: $01 $68 $22
    jr nz, jr_0cc_78a8                            ; $7926: $20 $80

    nop                                           ; $7928: $00
    rst $38                                       ; $7929: $ff
    ld b, b                                       ; $792a: $40
    ld a, a                                       ; $792b: $7f
    db $10                                        ; $792c: $10
    rra                                           ; $792d: $1f
    ld [$000f], sp                                ; $792e: $08 $0f $00
    jr nz, @+$01                                  ; $7931: $20 $ff

    ld [bc], a                                    ; $7933: $02
    inc c                                         ; $7934: $0c
    nop                                           ; $7935: $00
    ld e, d                                       ; $7936: $5a
    rst $38                                       ; $7937: $ff
    adc d                                         ; $7938: $8a
    rst $38                                       ; $7939: $ff
    pop de                                        ; $793a: $d1
    nop                                           ; $793b: $00
    rst $38                                       ; $793c: $ff
    ld h, $ff                                     ; $793d: $26 $ff
    ld a, d                                       ; $793f: $7a
    rst $38                                       ; $7940: $ff

jr_0cc_7941:
    ld b, d                                       ; $7941: $42
    jp $0042                                      ; $7942: $c3 $42 $00


    jp $e724                                      ; $7945: $c3 $24 $e7


    jr nc, jr_0cc_7941                            ; $7948: $30 $f7

    ld [$18ef], sp                                ; $794a: $08 $ef $18
    nop                                           ; $794d: $00
    rst $38                                       ; $794e: $ff
    ld [$0cff], sp                                ; $794f: $08 $ff $0c
    rst $38                                       ; $7952: $ff
    rst $18                                       ; $7953: $df
    jr nz, @-$49                                  ; $7954: $20 $b5

    nop                                           ; $7956: $00
    ld c, d                                       ; $7957: $4a
    jp z, $a535                                   ; $7958: $ca $35 $a5

    ld e, d                                       ; $795b: $5a
    db $eb                                        ; $795c: $eb
    inc d                                         ; $795d: $14
    push de                                       ; $795e: $d5
    nop                                           ; $795f: $00
    ld a, [hl+]                                   ; $7960: $2a
    ei                                            ; $7961: $fb
    inc b                                         ; $7962: $04
    push af                                       ; $7963: $f5
    ld a, [bc]                                    ; $7964: $0a
    db $eb                                        ; $7965: $eb
    inc d                                         ; $7966: $14
    or h                                          ; $7967: $b4
    nop                                           ; $7968: $00
    ld c, e                                       ; $7969: $4b
    ld e, c                                       ; $796a: $59
    and [hl]                                      ; $796b: $a6
    ld [c], a                                     ; $796c: $e2
    dec e                                         ; $796d: $1d
    ld d, l                                       ; $796e: $55
    xor d                                         ; $796f: $aa
    xor d                                         ; $7970: $aa
    nop                                           ; $7971: $00
    ld d, l                                       ; $7972: $55
    ld d, l                                       ; $7973: $55
    xor d                                         ; $7974: $aa
    cp a                                          ; $7975: $bf
    ld b, b                                       ; $7976: $40
    ld [hl], a                                    ; $7977: $77
    adc b                                         ; $7978: $88
    xor a                                         ; $7979: $af
    nop                                           ; $797a: $00
    ld d, b                                       ; $797b: $50
    ld d, a                                       ; $797c: $57
    xor b                                         ; $797d: $a8
    xor e                                         ; $797e: $ab
    ld d, h                                       ; $797f: $54
    ld b, a                                       ; $7980: $47
    cp b                                          ; $7981: $b8
    sbc e                                         ; $7982: $9b
    nop                                           ; $7983: $00
    ld h, h                                       ; $7984: $64
    xor l                                         ; $7985: $ad
    ld d, d                                       ; $7986: $52
    ld d, a                                       ; $7987: $57
    xor b                                         ; $7988: $a8
    ldh [$60], a                                  ; $7989: $e0 $60
    ldh a, [rDIV]                                 ; $798b: $f0 $04
    db $10                                        ; $798d: $10
    ld hl, sp+$08                                 ; $798e: $f8 $08
    db $fc                                        ; $7990: $fc
    inc c                                         ; $7991: $0c
    inc b                                         ; $7992: $04
    nop                                           ; $7993: $00
    inc b                                         ; $7994: $04
    cp $00                                        ; $7995: $fe $00
    ld b, $fc                                     ; $7997: $06 $fc
    inc b                                         ; $7999: $04
    nop                                           ; $799a: $00
    nop                                           ; $799b: $00
    add b                                         ; $799c: $80
    add b                                         ; $799d: $80
    add b                                         ; $799e: $80
    inc e                                         ; $799f: $1c
    nop                                           ; $79a0: $00
    ret nz                                        ; $79a1: $c0

    ld b, b                                       ; $79a2: $40
    inc b                                         ; $79a3: $04
    ld [$0802], sp                                ; $79a4: $08 $02 $08
    or b                                          ; $79a7: $b0
    ld [$ff01], sp                                ; $79a8: $08 $01 $ff
    nop                                           ; $79ab: $00
    ld [bc], a                                    ; $79ac: $02
    cp $02                                        ; $79ad: $fe $02
    cp $04                                        ; $79af: $fe $04
    db $fc                                        ; $79b1: $fc
    ld b, $fa                                     ; $79b2: $06 $fa
    jr nz, jr_0cc_79f5                            ; $79b4: $20 $3f

    pop bc                                        ; $79b6: $c1
    sub b                                         ; $79b7: $90
    ld c, b                                       ; $79b8: $48
    ld b, b                                       ; $79b9: $40
    ld a, a                                       ; $79ba: $7f
    jr nz, jr_0cc_79fc                            ; $79bb: $20 $3f

    cp b                                          ; $79bd: $b8
    nop                                           ; $79be: $00
    rst $38                                       ; $79bf: $ff
    ld l, $ff                                     ; $79c0: $2e $ff
    ld a, [c]                                     ; $79c2: $f2
    rst $38                                       ; $79c3: $ff
    jr z, @+$01                                   ; $79c4: $28 $ff

    ld d, b                                       ; $79c6: $50
    nop                                           ; $79c7: $00
    rst $38                                       ; $79c8: $ff
    dec hl                                        ; $79c9: $2b
    db $fc                                        ; $79ca: $fc
    rlca                                          ; $79cb: $07
    ld hl, sp+$3f                                 ; $79cc: $f8 $3f
    ret nz                                        ; $79ce: $c0

    stop                                          ; $79cf: $10 $00
    ldh a, [rNR10]                                ; $79d1: $f0 $10
    ldh a, [$08]                                  ; $79d3: $f0 $08
    add sp, $30                                   ; $79d5: $e8 $30
    ldh a, [$c0]                                  ; $79d7: $f0 $c0
    nop                                           ; $79d9: $00
    ret nz                                        ; $79da: $c0

    ret nz                                        ; $79db: $c0

    ld b, b                                       ; $79dc: $40
    ldh a, [$30]                                  ; $79dd: $f0 $30
    ld hl, sp+$08                                 ; $79df: $f8 $08
    add d                                         ; $79e1: $82
    ld bc, $4cfe                                  ; $79e2: $01 $fe $4c
    ld a, h                                       ; $79e5: $7c
    ld a, [hl-]                                   ; $79e6: $3a
    ld a, [hl-]                                   ; $79e7: $3a
    ld b, b                                       ; $79e8: $40
    ld b, b                                       ; $79e9: $40
    ret c                                         ; $79ea: $d8

    jr z, jr_0cc_7a25                             ; $79eb: $28 $38

    ld a, a                                       ; $79ed: $7f
    ld b, b                                       ; $79ee: $40
    rlc b                                         ; $79ef: $cb $00
    ld [bc], a                                    ; $79f1: $02
    nop                                           ; $79f2: $00

jr_0cc_79f3:
    dec a                                         ; $79f3: $3d
    nop                                           ; $79f4: $00

jr_0cc_79f5:
    ld b, b                                       ; $79f5: $40
    ccf                                           ; $79f6: $3f
    jr nc, @+$4a                                  ; $79f7: $30 $48

    rrca                                          ; $79f9: $0f
    halt                                          ; $79fa: $76
    nop                                           ; $79fb: $00

jr_0cc_79fc:
    db $fc                                        ; $79fc: $fc
    inc b                                         ; $79fd: $04
    add b                                         ; $79fe: $80
    jr jr_0cc_79f3                                ; $79ff: $18 $f2

    ld [de], a                                    ; $7a01: $12
    rst $20                                       ; $7a02: $e7
    nop                                           ; $7a03: $00
    daa                                           ; $7a04: $27
    rst $08                                       ; $7a05: $cf
    ld c, b                                       ; $7a06: $48
    ld a, [$7f85]                                 ; $7a07: $fa $85 $7f
    ld b, b                                       ; $7a0a: $40
    cp $04                                        ; $7a0b: $fe $04
    pop bc                                        ; $7a0d: $c1
    ld a, a                                       ; $7a0e: $7f
    nop                                           ; $7a0f: $00
    rst $38                                       ; $7a10: $ff
    ret nz                                        ; $7a11: $c0

    jr nz, jr_0cc_7a14                            ; $7a12: $20 $00

jr_0cc_7a14:
    jr nz, jr_0cc_7a35                            ; $7a14: $20 $1f

    ld a, [bc]                                    ; $7a16: $0a
    db $10                                        ; $7a17: $10
    inc bc                                        ; $7a18: $03

jr_0cc_7a19:
    nop                                           ; $7a19: $00
    rlca                                          ; $7a1a: $07
    ld [bc], a                                    ; $7a1b: $02
    nop                                           ; $7a1c: $00
    rrca                                          ; $7a1d: $0f
    ld [bc], a                                    ; $7a1e: $02
    db $10                                        ; $7a1f: $10
    rra                                           ; $7a20: $1f
    jr jr_0cc_7a23                                ; $7a21: $18 $00

jr_0cc_7a23:
    ccf                                           ; $7a23: $3f
    nop                                           ; $7a24: $00

jr_0cc_7a25:
    ld c, d                                       ; $7a25: $4a
    ld [$00a0], sp                                ; $7a26: $08 $a0 $00
    nop                                           ; $7a29: $00
    and b                                         ; $7a2a: $a0
    nop                                           ; $7a2b: $00
    ld b, b                                       ; $7a2c: $40
    ld hl, sp+$02                                 ; $7a2d: $f8 $02
    nop                                           ; $7a2f: $00
    db $fc                                        ; $7a30: $fc
    nop                                           ; $7a31: $00
    rla                                           ; $7a32: $17
    inc d                                         ; $7a33: $14
    rrca                                          ; $7a34: $0f

jr_0cc_7a35:
    ld [$1f07], sp                                ; $7a35: $08 $07 $1f
    jr jr_0cc_7a49                                ; $7a38: $18 $0f

    ld [$4e4f], sp                                ; $7a3a: $08 $4f $4e
    nop                                           ; $7a3d: $00
    ld e, h                                       ; $7a3e: $5c
    ld [$007f], sp                                ; $7a3f: $08 $7f $00
    ld de, $f810                                  ; $7a42: $11 $10 $f8
    jr jr_0cc_7a19                                ; $7a45: $18 $d2

    jr @-$06                                      ; $7a47: $18 $f8

jr_0cc_7a49:
    ld [$40f0], sp                                ; $7a49: $08 $f0 $40
    nop                                           ; $7a4c: $00
    jr @+$05                                      ; $7a4d: $18 $03

    nop                                           ; $7a4f: $00
    add c                                         ; $7a50: $81
    jr nc, jr_0cc_7a53                            ; $7a51: $30 $00

jr_0cc_7a53:
    ld [bc], a                                    ; $7a53: $02
    jr @-$7e                                      ; $7a54: $18 $80

    nop                                           ; $7a56: $00
    ei                                            ; $7a57: $fb
    nop                                           ; $7a58: $00
    inc b                                         ; $7a59: $04
    rst $30                                       ; $7a5a: $f7
    ld [$00ff], sp                                ; $7a5b: $08 $ff $00
    ld a, a                                       ; $7a5e: $7f
    nop                                           ; $7a5f: $00
    ld a, [bc]                                    ; $7a60: $0a
    add b                                         ; $7a61: $80
    ld l, c                                       ; $7a62: $69
    ld hl, $40bf                                  ; $7a63: $21 $bf $40
    ld e, [hl]                                    ; $7a66: $5e
    and b                                         ; $7a67: $a0
    cp $00                                        ; $7a68: $fe $00
    cp $21                                        ; $7a6a: $fe $21
    nop                                           ; $7a6c: $00
    jr c, jr_0cc_7ae8                             ; $7a6d: $38 $79

    ld hl, $101f                                  ; $7a6f: $21 $1f $10
    rra                                           ; $7a72: $1f
    db $10                                        ; $7a73: $10
    ld d, d                                       ; $7a74: $52
    nop                                           ; $7a75: $00
    ret nz                                        ; $7a76: $c0

    ld b, $00                                     ; $7a77: $06 $00
    ld a, [hl]                                    ; $7a79: $7e
    ld [$080f], sp                                ; $7a7a: $08 $0f $08
    nop                                           ; $7a7d: $00
    nop                                           ; $7a7e: $00
    ld bc, $8401                                  ; $7a7f: $01 $01 $84
    ld b, h                                       ; $7a82: $44
    nop                                           ; $7a83: $00
    ld [bc], a                                    ; $7a84: $02
    ld bc, $0100                                  ; $7a85: $01 $00 $01
    ld b, $00                                     ; $7a88: $06 $00
    inc bc                                        ; $7a8a: $03
    ld [bc], a                                    ; $7a8b: $02
    ldh a, [$a0]                                  ; $7a8c: $f0 $a0
    ld de, $080d                                  ; $7a8e: $11 $0d $08
    rrca                                          ; $7a91: $0f
    nop                                           ; $7a92: $00
    ld [bc], a                                    ; $7a93: $02
    ld [$53d3], sp                                ; $7a94: $08 $d3 $53
    ret z                                         ; $7a97: $c8

    ld c, a                                       ; $7a98: $4f
    jr nz, @-$2e                                  ; $7a99: $20 $d0

    ld e, a                                       ; $7a9b: $5f
    ld [bc], a                                    ; $7a9c: $02
    db $10                                        ; $7a9d: $10
    rra                                           ; $7a9e: $1f
    ret nz                                        ; $7a9f: $c0

    ccf                                           ; $7aa0: $3f
    ret nz                                        ; $7aa1: $c0

    ccf                                           ; $7aa2: $3f
    nop                                           ; $7aa3: $00
    add c                                         ; $7aa4: $81
    add c                                         ; $7aa5: $81
    jp nz, $c443                                  ; $7aa6: $c2 $43 $c4

    ld b, a                                       ; $7aa9: $47
    db $e4                                        ; $7aaa: $e4
    daa                                           ; $7aab: $27
    ld [bc], a                                    ; $7aac: $02
    db $e4                                        ; $7aad: $e4
    daa                                           ; $7aae: $27
    ld a, [$f91b]                                 ; $7aaf: $fa $1b $f9
    ld bc, $0150                                  ; $7ab2: $01 $50 $01
    cp $10                                        ; $7ab5: $fe $10
    jr z, @+$01                                   ; $7ab7: $28 $ff

    ld d, h                                       ; $7ab9: $54
    jr nz, @+$13                                  ; $7aba: $20 $11

jr_0cc_7abc:
    jr z, jr_0cc_7abc                             ; $7abc: $28 $fe

    nop                                           ; $7abe: $00
    ld a, b                                       ; $7abf: $78
    add b                                         ; $7ac0: $80
    ld h, b                                       ; $7ac1: $60
    ld [$d05f], sp                                ; $7ac2: $08 $5f $d0
    ccf                                           ; $7ac5: $3f
    ldh a, [$2f]                                  ; $7ac6: $f0 $2f
    add sp, $47                                   ; $7ac8: $e8 $47
    inc b                                         ; $7aca: $04
    call nz, $8283                                ; $7acb: $c4 $83 $82
    ld bc, $ee01                                  ; $7ace: $01 $01 $ee
    add hl, bc                                    ; $7ad1: $09
    inc c                                         ; $7ad2: $0c
    inc a                                         ; $7ad3: $3c
    db $10                                        ; $7ad4: $10
    ld [bc], a                                    ; $7ad5: $02
    ld a, [hl]                                    ; $7ad6: $7e
    ld bc, $0964                                  ; $7ad7: $01 $64 $09
    ld a, [hl]                                    ; $7ada: $7e
    inc e                                         ; $7adb: $1c
    inc e                                         ; $7adc: $1c
    nop                                           ; $7add: $00
    nop                                           ; $7ade: $00

jr_0cc_7adf:
    nop                                           ; $7adf: $00
    rlca                                          ; $7ae0: $07
    inc b                                         ; $7ae1: $04
    inc bc                                        ; $7ae2: $03
    ld [bc], a                                    ; $7ae3: $02
    rrca                                          ; $7ae4: $0f
    inc c                                         ; $7ae5: $0c
    rlca                                          ; $7ae6: $07
    ld h, b                                       ; $7ae7: $60

jr_0cc_7ae8:
    ld b, $72                                     ; $7ae8: $06 $72
    nop                                           ; $7aea: $00
    ld e, $10                                     ; $7aeb: $1e $10
    add a                                         ; $7aed: $87
    add h                                         ; $7aee: $84
    ld b, e                                       ; $7aef: $43
    jp nz, Jump_000_0031                          ; $7af0: $c2 $31 $00

    pop af                                        ; $7af3: $f1
    ld de, $18f1                                  ; $7af4: $11 $f1 $18
    ld hl, sp+$19                                 ; $7af7: $f8 $19
    ld sp, hl                                     ; $7af9: $f9
    ld de, $f100                                  ; $7afa: $11 $00 $f1
    jr nz, jr_0cc_7adf                            ; $7afd: $20 $e0

    ld a, [c]                                     ; $7aff: $f2

jr_0cc_7b00:
    rrca                                          ; $7b00: $0f
    db $f4                                        ; $7b01: $f4
    rrca                                          ; $7b02: $0f
    ld [$1f00], a                                 ; $7b03: $ea $00 $1f
    push hl                                       ; $7b06: $e5
    rra                                           ; $7b07: $1f
    ld a, [c]                                     ; $7b08: $f2
    rrca                                          ; $7b09: $0f
    push af                                       ; $7b0a: $f5
    rrca                                          ; $7b0b: $0f
    ld a, [c]                                     ; $7b0c: $f2
    nop                                           ; $7b0d: $00
    rrca                                          ; $7b0e: $0f
    db $fc                                        ; $7b0f: $fc
    inc bc                                        ; $7b10: $03
    adc a                                         ; $7b11: $8f
    adc b                                         ; $7b12: $88
    ld c, a                                       ; $7b13: $4f
    call z, Call_000_1023                         ; $7b14: $cc $23 $10
    ld [c], a                                     ; $7b17: $e2
    inc de                                        ; $7b18: $13
    ld a, [c]                                     ; $7b19: $f2
    ld [hl+], a                                   ; $7b1a: $22
    ld [$f010], sp                                ; $7b1b: $08 $10 $f0
    jr nz, jr_0cc_7b00                            ; $7b1e: $20 $e0

    nop                                           ; $7b20: $00
    adc c                                         ; $7b21: $89
    ld a, a                                       ; $7b22: $7f
    add e                                         ; $7b23: $83
    ld a, a                                       ; $7b24: $7f
    sub l                                         ; $7b25: $95
    ld a, a                                       ; $7b26: $7f
    adc a                                         ; $7b27: $8f
    ld a, a                                       ; $7b28: $7f
    nop                                           ; $7b29: $00
    rst $10                                       ; $7b2a: $d7
    ccf                                           ; $7b2b: $3f

jr_0cc_7b2c:
    jp z, $c53f                                   ; $7b2c: $ca $3f $c5

    ccf                                           ; $7b2f: $3f
    ld [$d81f], a                                 ; $7b30: $ea $1f $d8
    sub $01                                       ; $7b33: $d6 $01
    cp l                                          ; $7b35: $bd
    add hl, bc                                    ; $7b36: $09
    ld [bc], a                                    ; $7b37: $02
    ld h, [hl]                                    ; $7b38: $66
    add hl, bc                                    ; $7b39: $09
    ld [de], a                                    ; $7b3a: $12
    add hl, bc                                    ; $7b3b: $09
    dec bc                                        ; $7b3c: $0b
    dec bc                                        ; $7b3d: $0b
    rlca                                          ; $7b3e: $07
    inc de                                        ; $7b3f: $13
    inc b                                         ; $7b40: $04
    rrca                                          ; $7b41: $0f
    ld [$0934], sp                                ; $7b42: $08 $34 $09
    cpl                                           ; $7b45: $2f
    jr z, jr_0cc_7b2c                             ; $7b46: $28 $e4

    ld [$2a70], sp                                ; $7b48: $08 $70 $2a
    ld e, h                                       ; $7b4b: $5c
    ld [bc], a                                    ; $7b4c: $02
    jp c, $0110                                   ; $7b4d: $da $10 $01

    ld l, c                                       ; $7b50: $69
    ld a, [bc]                                    ; $7b51: $0a
    ld l, l                                       ; $7b52: $6d
    ld [bc], a                                    ; $7b53: $02
    sbc [hl]                                      ; $7b54: $9e
    ld de, $3b20                                  ; $7b55: $11 $20 $3b
    db $10                                        ; $7b58: $10
    inc [hl]                                      ; $7b59: $34
    ld [$a10f], sp                                ; $7b5a: $08 $0f $a1
    ld a, [hl-]                                   ; $7b5d: $3a
    ldh a, [$0e]                                  ; $7b5e: $f0 $0e
    push bc                                       ; $7b60: $c5
    ld a, [hl-]                                   ; $7b61: $3a
    nop                                           ; $7b62: $00
    ld d, c                                       ; $7b63: $51
    xor [hl]                                      ; $7b64: $ae
    ldh a, [rNR22]                                ; $7b65: $f0 $17
    ldh a, [rNR13]                                ; $7b67: $f0 $13
    ldh a, [$b0]                                  ; $7b69: $f0 $b0
    jp z, $39d0                                   ; $7b6b: $ca $d0 $39

    adc $39                                       ; $7b6e: $ce $39
    inc a                                         ; $7b70: $3c
    inc hl                                        ; $7b71: $23
    dec sp                                        ; $7b72: $3b
    ld bc, $d11f                                  ; $7b73: $01 $1f $d1
    ld a, [hl+]                                   ; $7b76: $2a
    pop af                                        ; $7b77: $f1
    ld h, b                                       ; $7b78: $60
    ld c, $55                                     ; $7b79: $0e $55
    ld bc, $02ec                                  ; $7b7b: $01 $ec $02
    ldh a, [rIF]                                  ; $7b7e: $f0 $0f
    ldh a, [rIF]                                  ; $7b80: $f0 $0f
    ld hl, sp+$01                                 ; $7b82: $f8 $01
    rra                                           ; $7b84: $1f
    rst $30                                       ; $7b85: $f7
    rla                                           ; $7b86: $17
    ld [c], a                                     ; $7b87: $e2
    ld [c], a                                     ; $7b88: $e2
    sub b                                         ; $7b89: $90
    sub b                                         ; $7b8a: $90
    ld d, c                                       ; $7b8b: $51
    ld a, [bc]                                    ; $7b8c: $0a
    add b                                         ; $7b8d: $80
    pop af                                        ; $7b8e: $f1
    ld b, d                                       ; $7b8f: $42
    jp Jump_000_3c3c                              ; $7b90: $c3 $3c $3c


    nop                                           ; $7b93: $00
    ld bc, $08f8                                  ; $7b94: $01 $f8 $08
    nop                                           ; $7b97: $00
    ld sp, hl                                     ; $7b98: $f9
    add hl, bc                                    ; $7b99: $09
    di                                            ; $7b9a: $f3
    ld [de], a                                    ; $7b9b: $12
    rst $20                                       ; $7b9c: $e7
    db $e4                                        ; $7b9d: $e4
    rlca                                          ; $7b9e: $07
    inc b                                         ; $7b9f: $04
    inc d                                         ; $7ba0: $14
    ld e, a                                       ; $7ba1: $5f
    ld e, [hl]                                    ; $7ba2: $5e
    add hl, de                                    ; $7ba3: $19
    ld [hl-], a                                   ; $7ba4: $32
    nop                                           ; $7ba5: $00
    ld bc, $11f0                                  ; $7ba6: $01 $f0 $11
    cpl                                           ; $7ba9: $2f
    nop                                           ; $7baa: $00
    db $10                                        ; $7bab: $10
    ld c, a                                       ; $7bac: $4f
    nop                                           ; $7bad: $00
    cp a                                          ; $7bae: $bf
    rrca                                          ; $7baf: $0f
    ld d, e                                       ; $7bb0: $53
    jr nc, jr_0cc_7be3                            ; $7bb1: $30 $30

    db $fc                                        ; $7bb3: $fc
    call nz, $fe01                                ; $7bb4: $c4 $01 $fe
    add d                                         ; $7bb7: $82
    rst $38                                       ; $7bb8: $ff
    ld bc, $0704                                  ; $7bb9: $01 $04 $07
    jr jr_0cc_7bc4                                ; $7bbc: $18 $06

    inc bc                                        ; $7bbe: $03
    sub b                                         ; $7bbf: $90
    ld l, d                                       ; $7bc0: $6a
    ld [$3f20], sp                                ; $7bc1: $08 $20 $3f

jr_0cc_7bc4:
    ld [hl], b                                    ; $7bc4: $70
    ld [$ff10], sp                                ; $7bc5: $08 $10 $ff
    ld b, b                                       ; $7bc8: $40
    rst $38                                       ; $7bc9: $ff
    ld b, h                                       ; $7bca: $44
    db $10                                        ; $7bcb: $10
    ld c, $03                                     ; $7bcc: $0e $03
    ld d, l                                       ; $7bce: $55
    rst $38                                       ; $7bcf: $ff
    ld a, [hl+]                                   ; $7bd0: $2a
    inc b                                         ; $7bd1: $04
    nop                                           ; $7bd2: $00
    xor d                                         ; $7bd3: $aa
    rst $38                                       ; $7bd4: $ff
    nop                                           ; $7bd5: $00
    ld [bc], a                                    ; $7bd6: $02
    ld [bc], a                                    ; $7bd7: $02
    jp c, $7eda                                   ; $7bd8: $da $da $7e

    ld h, [hl]                                    ; $7bdb: $66
    rst $38                                       ; $7bdc: $ff
    add c                                         ; $7bdd: $81
    ret z                                         ; $7bde: $c8

    ld e, l                                       ; $7bdf: $5d

jr_0cc_7be0:
    inc bc                                        ; $7be0: $03
    ld d, l                                       ; $7be1: $55
    add hl, bc                                    ; $7be2: $09

jr_0cc_7be3:
    nop                                           ; $7be3: $00
    ld [hl], b                                    ; $7be4: $70
    and h                                         ; $7be5: $a4
    ld [bc], a                                    ; $7be6: $02
    ld h, b                                       ; $7be7: $60
    ld a, a                                       ; $7be8: $7f
    ret nz                                        ; $7be9: $c0

    jp nz, Jump_000_033e                          ; $7bea: $c2 $3e $03

    ld [hl], a                                    ; $7bed: $77
    ld [de], a                                    ; $7bee: $12
    rst $38                                       ; $7bef: $ff
    jr nz, @+$01                                  ; $7bf0: $20 $ff

    jr @+$4e                                      ; $7bf2: $18 $4c

    inc bc                                        ; $7bf4: $03
    dec [hl]                                      ; $7bf5: $35
    and b                                         ; $7bf6: $a0
    inc l                                         ; $7bf7: $2c
    inc bc                                        ; $7bf8: $03
    ld d, d                                       ; $7bf9: $52
    or [hl]                                       ; $7bfa: $b6
    ld [bc], a                                    ; $7bfb: $02
    sub l                                         ; $7bfc: $95
    rst $38                                       ; $7bfd: $ff
    jr nz, jr_0cc_7be0                            ; $7bfe: $20 $e0

    jr c, @-$6a                                   ; $7c00: $38 $94

    jr c, @+$03                                   ; $7c02: $38 $01

    ld [$87f8], sp                                ; $7c04: $08 $f8 $87
    ld [bc], a                                    ; $7c07: $02
    db $fc                                        ; $7c08: $fc
    and $0a                                       ; $7c09: $e6 $0a
    ld [$9c0f], sp                                ; $7c0b: $08 $0f $9c
    jr nc, jr_0cc_7c18                            ; $7c0e: $30 $08

    nop                                           ; $7c10: $00
    ccf                                           ; $7c11: $3f
    sbc $0a                                       ; $7c12: $de $0a
    ld [hl], $08                                  ; $7c14: $36 $08
    and c                                         ; $7c16: $a1
    dec bc                                        ; $7c17: $0b

jr_0cc_7c18:
    ld a, a                                       ; $7c18: $7f
    add b                                         ; $7c19: $80
    add b                                         ; $7c1a: $80
    reti                                          ; $7c1b: $d9


    ld bc, $1fc0                                  ; $7c1c: $01 $c0 $1f
    ldh [rIF], a                                  ; $7c1f: $e0 $0f
    ldh a, [rSTAT]                                ; $7c21: $f0 $41
    cp $19                                        ; $7c23: $fe $19

jr_0cc_7c25:
    inc bc                                        ; $7c25: $03
    inc bc                                        ; $7c26: $03
    inc b                                         ; $7c27: $04
    adc a                                         ; $7c28: $8f
    ld [bc], a                                    ; $7c29: $02
    add d                                         ; $7c2a: $82
    jr @+$0a                                      ; $7c2b: $18 $08

    rrca                                          ; $7c2d: $0f
    inc c                                         ; $7c2e: $0c
    nop                                           ; $7c2f: $00
    adc b                                         ; $7c30: $88
    ld a, [hl]                                    ; $7c31: $7e
    nop                                           ; $7c32: $00
    ld bc, $acff                                  ; $7c33: $01 $ff $ac
    add h                                         ; $7c36: $84
    nop                                           ; $7c37: $00
    ld c, d                                       ; $7c38: $4a
    rst $38                                       ; $7c39: $ff
    inc d                                         ; $7c3a: $14
    jr @+$01                                      ; $7c3b: $18 $ff

    xor c                                         ; $7c3d: $a9
    rst $38                                       ; $7c3e: $ff
    ld l, $08                                     ; $7c3f: $2e $08
    jr nc, jr_0cc_7c4b                            ; $7c41: $30 $08

    rra                                           ; $7c43: $1f
    ldh [$1f], a                                  ; $7c44: $e0 $1f
    nop                                           ; $7c46: $00
    ldh [$81], a                                  ; $7c47: $e0 $81
    ld hl, sp+$20                                 ; $7c49: $f8 $20

jr_0cc_7c4b:
    ldh a, [$b0]                                  ; $7c4b: $f0 $b0
    inc bc                                        ; $7c4d: $03
    call c, Call_0cc_4001                         ; $7c4e: $dc $01 $40
    nop                                           ; $7c51: $00
    ld bc, $ff68                                  ; $7c52: $01 $68 $ff
    nop                                           ; $7c55: $00
    rst $38                                       ; $7c56: $ff
    ld c, $f1                                     ; $7c57: $0e $f1
    rst $08                                       ; $7c59: $cf
    nop                                           ; $7c5a: $00
    jr nc, jr_0cc_7c25                            ; $7c5b: $30 $c8

    scf                                           ; $7c5d: $37

jr_0cc_7c5e:
    db $fc                                        ; $7c5e: $fc
    inc bc                                        ; $7c5f: $03
    inc a                                         ; $7c60: $3c
    jp Jump_0cc_4037                              ; $7c61: $c3 $37 $40


    ret z                                         ; $7c64: $c8

    db $10                                        ; $7c65: $10
    ld [$f609], sp                                ; $7c66: $08 $09 $f6
    sbc a                                         ; $7c69: $9f
    ld h, b                                       ; $7c6a: $60
    ld sp, hl                                     ; $7c6b: $f9
    ld b, $04                                     ; $7c6c: $06 $04
    ld a, c                                       ; $7c6e: $79
    add [hl]                                      ; $7c6f: $86
    rst $18                                       ; $7c70: $df
    jr nz, @+$01                                  ; $7c71: $20 $ff

    jr nz, @+$12                                  ; $7c73: $20 $10

    jr jr_0cc_7c5e                                ; $7c75: $18 $e7

    nop                                           ; $7c77: $00
    ld a, b                                       ; $7c78: $78
    add a                                         ; $7c79: $87
    db $fc                                        ; $7c7a: $fc
    inc bc                                        ; $7c7b: $03
    adc $31                                       ; $7c7c: $ce $31
    rst $00                                       ; $7c7e: $c7
    jr c, jr_0cc_7ca1                             ; $7c7f: $38 $20

    rst $00                                       ; $7c81: $c7
    jr c, jr_0cc_7cb4                             ; $7c82: $38 $30

    ld [$c738], sp                                ; $7c84: $08 $38 $c7
    and $19                                       ; $7c87: $e6 $19
    cp $01                                        ; $7c89: $fe $01
    ld bc, $609f                                  ; $7c8b: $01 $9f $60
    adc h                                         ; $7c8e: $8c
    ld [hl], e                                    ; $7c8f: $73
    call $3f32                                    ; $7c90: $cd $32 $3f
    nop                                           ; $7c93: $00
    nop                                           ; $7c94: $00
    nop                                           ; $7c95: $00
    rst $20                                       ; $7c96: $e7
    jr @-$17                                      ; $7c97: $18 $e7

    jr jr_0cc_7cd7                                ; $7c99: $18 $3c

    jp Jump_000_003c                              ; $7c9b: $c3 $3c $00


    jp $8c73                                      ; $7c9e: $c3 $73 $8c


jr_0cc_7ca1:
    di                                            ; $7ca1: $f3
    inc c                                         ; $7ca2: $0c
    call z, $cc33                                 ; $7ca3: $cc $33 $cc
    ld b, b                                       ; $7ca6: $40
    inc sp                                        ; $7ca7: $33
    inc d                                         ; $7ca8: $14
    ld [$10ef], sp                                ; $7ca9: $08 $ef $10
    rst $28                                       ; $7cac: $ef
    db $10                                        ; $7cad: $10
    ld sp, hl                                     ; $7cae: $f9
    ld b, $03                                     ; $7caf: $06 $03
    ld sp, hl                                     ; $7cb1: $f9
    ld b, $9f                                     ; $7cb2: $06 $9f

jr_0cc_7cb4:
    ld h, b                                       ; $7cb4: $60
    sbc e                                         ; $7cb5: $9b
    ld h, h                                       ; $7cb6: $64
    inc h                                         ; $7cb7: $24
    ld [$2818], sp                                ; $7cb8: $08 $18 $28
    add b                                         ; $7cbb: $80
    jr nc, jr_0cc_7cc6                            ; $7cbc: $30 $08

    ld sp, hl                                     ; $7cbe: $f9
    ld b, $99                                     ; $7cbf: $06 $99
    ld h, [hl]                                    ; $7cc1: $66
    sbc a                                         ; $7cc2: $9f
    ld h, b                                       ; $7cc3: $60
    cp $04                                        ; $7cc4: $fe $04

jr_0cc_7cc6:
    ld bc, $01fe                                  ; $7cc6: $01 $fe $01
    rst $08                                       ; $7cc9: $cf
    jr nc, jr_0cc_7d0c                            ; $7cca: $30 $40

    ld [$30cf], sp                                ; $7ccc: $08 $cf $30
    add b                                         ; $7ccf: $80
    ld [$f718], sp                                ; $7cd0: $08 $18 $f7
    ld [$00ff], sp                                ; $7cd3: $08 $ff $00
    ccf                                           ; $7cd6: $3f

jr_0cc_7cd7:
    ret nz                                        ; $7cd7: $c0

    ccf                                           ; $7cd8: $3f
    ld b, b                                       ; $7cd9: $40
    ret nz                                        ; $7cda: $c0

    ld d, b                                       ; $7cdb: $50
    ld [$00ff], sp                                ; $7cdc: $08 $ff $00
    ld a, a                                       ; $7cdf: $7f
    nop                                           ; $7ce0: $00
    db $fd                                        ; $7ce1: $fd
    ld [bc], a                                    ; $7ce2: $02
    nop                                           ; $7ce3: $00
    rst $38                                       ; $7ce4: $ff
    nop                                           ; $7ce5: $00
    or e                                          ; $7ce6: $b3
    ld c, h                                       ; $7ce7: $4c
    di                                            ; $7ce8: $f3
    inc c                                         ; $7ce9: $0c
    rst $38                                       ; $7cea: $ff
    nop                                           ; $7ceb: $00
    rla                                           ; $7cec: $17
    cp $01                                        ; $7ced: $fe $01
    rst $18                                       ; $7cef: $df
    xor c                                         ; $7cf0: $a9
    nop                                           ; $7cf1: $00
    di                                            ; $7cf2: $f3
    ld [bc], a                                    ; $7cf3: $02
    nop                                           ; $7cf4: $00
    ld [hl-], a                                   ; $7cf5: $32
    jr jr_0cc_7d6a                                ; $7cf6: $18 $72

    ld [$be21], sp                                ; $7cf8: $08 $21 $be
    ld bc, $004a                                  ; $7cfb: $01 $4a $00
    nop                                           ; $7cfe: $00
    sbc a                                         ; $7cff: $9f

Jump_0cc_7d00:
    nop                                           ; $7d00: $00
    sbc l                                         ; $7d01: $9d
    jp Jump_000_0400                              ; $7d02: $c3 $00 $04


    inc sp                                        ; $7d05: $33
    nop                                           ; $7d06: $00
    jr nz, jr_0cc_7d09                            ; $7d07: $20 $00

jr_0cc_7d09:
    ld h, b                                       ; $7d09: $60
    db $db                                        ; $7d0a: $db
    nop                                           ; $7d0b: $00

jr_0cc_7d0c:
    inc bc                                        ; $7d0c: $03
    nop                                           ; $7d0d: $00
    db $10                                        ; $7d0e: $10
    rst $30                                       ; $7d0f: $f7
    nop                                           ; $7d10: $00
    sbc [hl]                                      ; $7d11: $9e
    ld [bc], a                                    ; $7d12: $02
    nop                                           ; $7d13: $00
    di                                            ; $7d14: $f3
    nop                                           ; $7d15: $00
    pop bc                                        ; $7d16: $c1
    nop                                           ; $7d17: $00
    jr jr_0cc_7d1b                                ; $7d18: $18 $01

    nop                                           ; $7d1a: $00

jr_0cc_7d1b:
    ld [$18df], sp                                ; $7d1b: $08 $df $18
    ld h, $00                                     ; $7d1e: $26 $00
    reti                                          ; $7d20: $d9


    nop                                           ; $7d21: $00
    add c                                         ; $7d22: $81
    jr nz, jr_0cc_7d25                            ; $7d23: $20 $00

jr_0cc_7d25:
    add b                                         ; $7d25: $80
    ei                                            ; $7d26: $fb
    nop                                           ; $7d27: $00
    jr jr_0cc_7d2a                                ; $7d28: $18 $00

jr_0cc_7d2a:
    add hl, sp                                    ; $7d2a: $39
    nop                                           ; $7d2b: $00
    ccf                                           ; $7d2c: $3f
    nop                                           ; $7d2d: $00
    nop                                           ; $7d2e: $00
    db $fd                                        ; $7d2f: $fd

jr_0cc_7d30:
    nop                                           ; $7d30: $00
    rst $08                                       ; $7d31: $cf
    nop                                           ; $7d32: $00
    add [hl]                                      ; $7d33: $86
    nop                                           ; $7d34: $00
    ld b, $8b                                     ; $7d35: $06 $8b
    inc [hl]                                      ; $7d37: $34
    nop                                           ; $7d38: $00
    nop                                           ; $7d39: $00
    nop                                           ; $7d3a: $00
    inc de                                        ; $7d3b: $13
    ld de, $0201                                  ; $7d3c: $11 $01 $02
    inc a                                         ; $7d3f: $3c
    nop                                           ; $7d40: $00
    ld a, $08                                     ; $7d41: $3e $08
    add d                                         ; $7d43: $82
    inc e                                         ; $7d44: $1c
    add hl, de                                    ; $7d45: $19
    jr nc, jr_0cc_7d48                            ; $7d46: $30 $00

jr_0cc_7d48:
    ld sp, $2100                                  ; $7d48: $31 $00 $21
    daa                                           ; $7d4b: $27
    ld sp, $aa18                                  ; $7d4c: $31 $18 $aa
    ld sp, $8001                                  ; $7d4f: $31 $01 $80
    inc a                                         ; $7d52: $3c
    nop                                           ; $7d53: $00
    inc b                                         ; $7d54: $04
    add hl, sp                                    ; $7d55: $39
    ld hl, $2402                                  ; $7d56: $21 $02 $24
    jr nz, jr_0cc_7d8b                            ; $7d59: $20 $30

    cp a                                          ; $7d5b: $bf
    jr nz, @-$7e                                  ; $7d5c: $20 $80

    db $10                                        ; $7d5e: $10
    ld b, b                                       ; $7d5f: $40
    ld d, b                                       ; $7d60: $50
    ld e, [hl]                                    ; $7d61: $5e
    ld [$096e], sp                                ; $7d62: $08 $6e $09
    ld d, $18                                     ; $7d65: $16 $18
    ld a, b                                       ; $7d67: $78
    add hl, sp                                    ; $7d68: $39
    db $10                                        ; $7d69: $10

jr_0cc_7d6a:
    jr z, jr_0cc_7dbb                             ; $7d6a: $28 $4f

    jr nz, jr_0cc_7ded                            ; $7d6c: $20 $7f

    nop                                           ; $7d6e: $00
    adc b                                         ; $7d6f: $88
    adc b                                         ; $7d70: $88
    sub b                                         ; $7d71: $90
    add hl, sp                                    ; $7d72: $39
    db $10                                        ; $7d73: $10
    jr z, jr_0cc_7dd8                             ; $7d74: $28 $62

    jr jr_0cc_7d98                                ; $7d76: $18 $20

    jr c, jr_0cc_7dda                             ; $7d78: $38 $60

    ld b, b                                       ; $7d7a: $40
    jr nc, jr_0cc_7ddd                            ; $7d7b: $30 $60

    jr c, jr_0cc_7d97                             ; $7d7d: $38 $18

    ld [hl+], a                                   ; $7d7f: $22
    ld [hl+], a                                   ; $7d80: $22
    ld d, l                                       ; $7d81: $55
    ld d, l                                       ; $7d82: $55
    xor d                                         ; $7d83: $aa
    jr jr_0cc_7d30                                ; $7d84: $18 $aa

    ld d, l                                       ; $7d86: $55
    ld d, l                                       ; $7d87: $55
    ld [$0c28], sp                                ; $7d88: $08 $28 $0c

jr_0cc_7d8b:
    ld [$eeee], sp                                ; $7d8b: $08 $ee $ee
    cp e                                          ; $7d8e: $bb
    ld b, b                                       ; $7d8f: $40
    cp e                                          ; $7d90: $bb
    ld [$ff28], sp                                ; $7d91: $08 $28 $ff
    rst $38                                       ; $7d94: $ff
    xor $ee                                       ; $7d95: $ee $ee

jr_0cc_7d97:
    rst $38                                       ; $7d97: $ff

jr_0cc_7d98:
    rst $38                                       ; $7d98: $ff
    ret nz                                        ; $7d99: $c0

    ld [$0248], sp                                ; $7d9a: $08 $48 $02
    ld c, b                                       ; $7d9d: $48
    rst $30                                       ; $7d9e: $f7
    rst $38                                       ; $7d9f: $ff
    sbc $ff                                       ; $7da0: $de $ff
    rst $20                                       ; $7da2: $e7
    rst $38                                       ; $7da3: $ff
    ld de, $ffbe                                  ; $7da4: $11 $be $ff
    ld sp, hl                                     ; $7da7: $f9
    rla                                           ; $7da8: $17
    jr nz, @-$03                                  ; $7da9: $20 $fb

    rst $38                                       ; $7dab: $ff
    push de                                       ; $7dac: $d5
    ld hl, $6800                                  ; $7dad: $21 $00 $68
    ld [hl], e                                    ; $7db0: $73
    ld d, $00                                     ; $7db1: $16 $00
    jr z, jr_0cc_7ddd                             ; $7db3: $28 $28

    ld sp, hl                                     ; $7db5: $f9
    ld [de], a                                    ; $7db6: $12
    nop                                           ; $7db7: $00
    rst $30                                       ; $7db8: $f7
    rst $38                                       ; $7db9: $ff
    db $dd                                        ; $7dba: $dd

jr_0cc_7dbb:
    add b                                         ; $7dbb: $80
    scf                                           ; $7dbc: $37
    db $10                                        ; $7dbd: $10
    sbc c                                         ; $7dbe: $99
    rst $38                                       ; $7dbf: $ff
    di                                            ; $7dc0: $f3
    rst $38                                       ; $7dc1: $ff
    call nc, Call_0cc_7dff                        ; $7dc2: $d4 $ff $7d
    nop                                           ; $7dc5: $00
    rst $38                                       ; $7dc6: $ff
    pop af                                        ; $7dc7: $f1
    rst $38                                       ; $7dc8: $ff
    sbc a                                         ; $7dc9: $9f
    rst $38                                       ; $7dca: $ff
    cp e                                          ; $7dcb: $bb
    rst $38                                       ; $7dcc: $ff
    db $fd                                        ; $7dcd: $fd
    nop                                           ; $7dce: $00
    rst $38                                       ; $7dcf: $ff
    db $fc                                        ; $7dd0: $fc
    rst $38                                       ; $7dd1: $ff
    dec a                                         ; $7dd2: $3d
    rst $38                                       ; $7dd3: $ff
    ld a, e                                       ; $7dd4: $7b
    rst $38                                       ; $7dd5: $ff
    ld hl, sp+$08                                 ; $7dd6: $f8 $08

jr_0cc_7dd8:
    rst $38                                       ; $7dd8: $ff
    ld e, d                                       ; $7dd9: $5a

jr_0cc_7dda:
    rst $38                                       ; $7dda: $ff
    ld d, [hl]                                    ; $7ddb: $56
    ld d, a                                       ; $7ddc: $57

jr_0cc_7ddd:
    nop                                           ; $7ddd: $00
    sub a                                         ; $7dde: $97
    rst $38                                       ; $7ddf: $ff
    or e                                          ; $7de0: $b3
    nop                                           ; $7de1: $00
    rst $38                                       ; $7de2: $ff
    push bc                                       ; $7de3: $c5
    rst $38                                       ; $7de4: $ff
    and e                                         ; $7de5: $a3
    rst $38                                       ; $7de6: $ff
    pop bc                                        ; $7de7: $c1
    rst $38                                       ; $7de8: $ff
    ld b, h                                       ; $7de9: $44
    ld [$14ff], sp                                ; $7dea: $08 $ff $14

jr_0cc_7ded:
    rst $38                                       ; $7ded: $ff
    rst $18                                       ; $7dee: $df
    ld c, h                                       ; $7def: $4c
    nop                                           ; $7df0: $00
    add a                                         ; $7df1: $87
    rst $38                                       ; $7df2: $ff
    and a                                         ; $7df3: $a7
    ld a, [bc]                                    ; $7df4: $0a
    rst $38                                       ; $7df5: $ff
    rst $00                                       ; $7df6: $c7
    rst $38                                       ; $7df7: $ff
    rst $08                                       ; $7df8: $cf
    ld h, [hl]                                    ; $7df9: $66
    nop                                           ; $7dfa: $00
    rst $08                                       ; $7dfb: $cf
    ld [hl], a                                    ; $7dfc: $77
    nop                                           ; $7dfd: $00
    ld l, [hl]                                    ; $7dfe: $6e

Call_0cc_7dff:
    jr nz, @+$01                                  ; $7dff: $20 $ff

    add [hl]                                      ; $7e01: $86
    inc c                                         ; $7e02: $0c
    nop                                           ; $7e03: $00
    add l                                         ; $7e04: $85
    rst $38                                       ; $7e05: $ff
    jp nz, $caff                                  ; $7e06: $c2 $ff $ca

    ld [hl+], a                                   ; $7e09: $22
    rst $38                                       ; $7e0a: $ff
    inc h                                         ; $7e0b: $24
    add a                                         ; $7e0c: $87
    nop                                           ; $7e0d: $00
    or $ff                                        ; $7e0e: $f6 $ff
    pop hl                                        ; $7e10: $e1
    ld d, b                                       ; $7e11: $50
    nop                                           ; $7e12: $00
    and c                                         ; $7e13: $a1
    ld [$43ff], sp                                ; $7e14: $08 $ff $43
    rst $38                                       ; $7e17: $ff
    ld d, e                                       ; $7e18: $53
    db $10                                        ; $7e19: $10
    ld [$ff81], sp                                ; $7e1a: $08 $81 $ff
    ld [hl-], a                                   ; $7e1d: $32
    and b                                         ; $7e1e: $a0
    ccf                                           ; $7e1f: $3f
    nop                                           ; $7e20: $00
    and c                                         ; $7e21: $a1
    ccf                                           ; $7e22: $3f
    nop                                           ; $7e23: $00
    inc bc                                        ; $7e24: $03
    rst $38                                       ; $7e25: $ff
    inc sp                                        ; $7e26: $33
    rst $38                                       ; $7e27: $ff
    dec e                                         ; $7e28: $1d
    and b                                         ; $7e29: $a0
    ld b, a                                       ; $7e2a: $47
    nop                                           ; $7e2b: $00
    db $ec                                        ; $7e2c: $ec
    ld c, e                                       ; $7e2d: $4b
    nop                                           ; $7e2e: $00
    pop bc                                        ; $7e2f: $c1
    rst $38                                       ; $7e30: $ff
    ret nz                                        ; $7e31: $c0

    rst $38                                       ; $7e32: $ff
    call c, $ff20                                 ; $7e33: $dc $20 $ff
    pop de                                        ; $7e36: $d1
    ld b, $00                                     ; $7e37: $06 $00
    rst $08                                       ; $7e39: $cf
    rst $38                                       ; $7e3a: $ff
    dec de                                        ; $7e3b: $1b
    rst $38                                       ; $7e3c: $ff
    ld h, a                                       ; $7e3d: $67
    nop                                           ; $7e3e: $00
    rst $38                                       ; $7e3f: $ff
    inc de                                        ; $7e40: $13
    rst $38                                       ; $7e41: $ff
    inc l                                         ; $7e42: $2c
    rst $38                                       ; $7e43: $ff
    db $f4                                        ; $7e44: $f4
    rst $38                                       ; $7e45: $ff
    ld [hl], b                                    ; $7e46: $70
    ld [$78ff], sp                                ; $7e47: $08 $ff $78
    rst $38                                       ; $7e4a: $ff
    ld a, [bc]                                    ; $7e4b: $0a
    ld e, a                                       ; $7e4c: $5f
    nop                                           ; $7e4d: $00
    or a                                          ; $7e4e: $b7
    rst $38                                       ; $7e4f: $ff
    ld [de], a                                    ; $7e50: $12
    nop                                           ; $7e51: $00
    rst $38                                       ; $7e52: $ff
    sbc [hl]                                      ; $7e53: $9e
    rst $38                                       ; $7e54: $ff
    inc a                                         ; $7e55: $3c
    rst $38                                       ; $7e56: $ff
    ld a, h                                       ; $7e57: $7c
    rst $38                                       ; $7e58: $ff
    ld l, $20                                     ; $7e59: $2e $20
    rst $38                                       ; $7e5b: $ff
    ld b, b                                       ; $7e5c: $40
    ld [bc], a                                    ; $7e5d: $02
    nop                                           ; $7e5e: $00
    inc e                                         ; $7e5f: $1c
    rst $38                                       ; $7e60: $ff
    rrca                                          ; $7e61: $0f
    rst $38                                       ; $7e62: $ff
    dec l                                         ; $7e63: $2d
    add b                                         ; $7e64: $80
    jr z, jr_0cc_7e67                             ; $7e65: $28 $00

jr_0cc_7e67:
    ld h, d                                       ; $7e67: $62
    rst $38                                       ; $7e68: $ff
    ld bc, $90ff                                  ; $7e69: $01 $ff $90
    rst $38                                       ; $7e6c: $ff
    ld d, b                                       ; $7e6d: $50
    or b                                          ; $7e6e: $b0
    db $d3                                        ; $7e6f: $d3
    ld [bc], a                                    ; $7e70: $02
    inc b                                         ; $7e71: $04
    ld [bc], a                                    ; $7e72: $02
    nop                                           ; $7e73: $00
    ld l, [hl]                                    ; $7e74: $6e
    ld a, [de]                                    ; $7e75: $1a
    ret nc                                        ; $7e76: $d0

    rst $38                                       ; $7e77: $ff
    jr @+$01                                      ; $7e78: $18 $ff

    sub h                                         ; $7e7a: $94
    ld e, b                                       ; $7e7b: $58
    ld [bc], a                                    ; $7e7c: $02
    rst $38                                       ; $7e7d: $ff
    ld [bc], a                                    ; $7e7e: $02
    ld [bc], a                                    ; $7e7f: $02
    nop                                           ; $7e80: $00

Call_0cc_7e81:
    jr nz, jr_0cc_7e85                            ; $7e81: $20 $02

    nop                                           ; $7e83: $00
    inc [hl]                                      ; $7e84: $34

jr_0cc_7e85:
    rst $38                                       ; $7e85: $ff
    ld e, l                                       ; $7e86: $5d
    inc c                                         ; $7e87: $0c
    inc c                                         ; $7e88: $0c
    db $10                                        ; $7e89: $10
    db $10                                        ; $7e8a: $10
    ld [bc], a                                    ; $7e8b: $02
    nop                                           ; $7e8c: $00
    db $fd                                        ; $7e8d: $fd
    ld a, [bc]                                    ; $7e8e: $0a
    ld b, b                                       ; $7e8f: $40
    ld c, b                                       ; $7e90: $48
    ld [bc], a                                    ; $7e91: $02
    ld b, b                                       ; $7e92: $40
    jr nc, jr_0cc_7eec                            ; $7e93: $30 $57

    ld a, [bc]                                    ; $7e95: $0a
    adc [hl]                                      ; $7e96: $8e
    nop                                           ; $7e97: $00
    add $34                                       ; $7e98: $c6 $34
    nop                                           ; $7e9a: $00
    add d                                         ; $7e9b: $82
    ld b, b                                       ; $7e9c: $40
    jr nc, jr_0cc_7ef1                            ; $7e9d: $30 $52

    jr z, jr_0cc_7ee1                             ; $7e9f: $28 $40

    jr z, jr_0cc_7e67                             ; $7ea1: $28 $c4

jr_0cc_7ea3:
    call z, $7022                                 ; $7ea3: $cc $22 $70
    jr nz, jr_0cc_7eaa                            ; $7ea6: $20 $02

    rst $38                                       ; $7ea8: $ff
    dec b                                         ; $7ea9: $05

jr_0cc_7eaa:
    jr nc, @+$12                                  ; $7eaa: $30 $10

    add b                                         ; $7eac: $80
    rst $38                                       ; $7ead: $ff
    ld a, d                                       ; $7eae: $7a
    dec bc                                        ; $7eaf: $0b
    ld [hl], b                                    ; $7eb0: $70
    nop                                           ; $7eb1: $00
    ld e, d                                       ; $7eb2: $5a
    jr jr_0cc_7ea3                                ; $7eb3: $18 $ee

    ld a, [de]                                    ; $7eb5: $1a
    ld [hl], b                                    ; $7eb6: $70
    jr z, jr_0cc_7ec1                             ; $7eb7: $28 $08

    dec e                                         ; $7eb9: $1d
    ld bc, $1f00                                  ; $7eba: $01 $00 $1f
    rst $38                                       ; $7ebd: $ff
    ld [$0104], sp                                ; $7ebe: $08 $04 $01

jr_0cc_7ec1:
    nop                                           ; $7ec1: $00
    db $fc                                        ; $7ec2: $fc
    add hl, bc                                    ; $7ec3: $09
    cp $09                                        ; $7ec4: $fe $09
    jr nz, jr_0cc_7eea                            ; $7ec6: $20 $22

    ld bc, $b000                                  ; $7ec8: $01 $00 $b0
    sub [hl]                                      ; $7ecb: $96
    ld e, e                                       ; $7ecc: $5b
    ld [$0001], sp                                ; $7ecd: $08 $01 $00
    inc h                                         ; $7ed0: $24
    jr z, jr_0cc_7f33                             ; $7ed1: $28 $60

    ld bc, $0097                                  ; $7ed3: $01 $97 $00
    ld d, l                                       ; $7ed6: $55
    rst $38                                       ; $7ed7: $ff
    ld bc, $fd40                                  ; $7ed8: $01 $40 $fd
    dec c                                         ; $7edb: $0d
    jr nz, @-$21                                  ; $7edc: $20 $dd

    dec d                                         ; $7ede: $15
    nop                                           ; $7edf: $00
    ld [hl], a                                    ; $7ee0: $77

jr_0cc_7ee1:
    ld [$a820], sp                                ; $7ee1: $08 $20 $a8
    jr nz, jr_0cc_7f0e                            ; $7ee4: $20 $28

    ld a, a                                       ; $7ee6: $7f
    add hl, hl                                    ; $7ee7: $29
    nop                                           ; $7ee8: $00
    rst $18                                       ; $7ee9: $df

jr_0cc_7eea:
    dec l                                         ; $7eea: $2d
    nop                                           ; $7eeb: $00

jr_0cc_7eec:
    ld [hl+], a                                   ; $7eec: $22
    db $dd                                        ; $7eed: $dd
    adc b                                         ; $7eee: $88
    nop                                           ; $7eef: $00
    ld [hl], a                                    ; $7ef0: $77

jr_0cc_7ef1:
    ld d, l                                       ; $7ef1: $55
    xor d                                         ; $7ef2: $aa
    xor d                                         ; $7ef3: $aa
    ld d, l                                       ; $7ef4: $55
    ld d, l                                       ; $7ef5: $55
    xor d                                         ; $7ef6: $aa
    cp e                                          ; $7ef7: $bb
    nop                                           ; $7ef8: $00
    ld b, h                                       ; $7ef9: $44
    xor $11                                       ; $7efa: $ee $11
    rst $38                                       ; $7efc: $ff
    nop                                           ; $7efd: $00
    rst $38                                       ; $7efe: $ff
    nop                                           ; $7eff: $00

Jump_0cc_7f00:
    ld [hl], a                                    ; $7f00: $77
    nop                                           ; $7f01: $00
    adc b                                         ; $7f02: $88
    db $dd                                        ; $7f03: $dd
    ld [hl+], a                                   ; $7f04: $22
    xor d                                         ; $7f05: $aa
    ld d, l                                       ; $7f06: $55
    ld d, h                                       ; $7f07: $54

jr_0cc_7f08:
    xor e                                         ; $7f08: $ab
    xor e                                         ; $7f09: $ab
    ld b, $55                                     ; $7f0a: $06 $55

jr_0cc_7f0c:
    db $10                                        ; $7f0c: $10
    rst $28                                       ; $7f0d: $ef

jr_0cc_7f0e:
    ld b, h                                       ; $7f0e: $44
    cp e                                          ; $7f0f: $bb
    ld d, b                                       ; $7f10: $50
    ld c, b                                       ; $7f11: $48
    ld e, h                                       ; $7f12: $5c
    jr jr_0cc_7f0c                                ; $7f13: $18 $f7

    adc b                                         ; $7f15: $88
    ld d, b                                       ; $7f16: $50
    nop                                           ; $7f17: $00
    xor d                                         ; $7f18: $aa
    rst $38                                       ; $7f19: $ff
    ld d, l                                       ; $7f1a: $55
    inc b                                         ; $7f1b: $04
    nop                                           ; $7f1c: $00
    ld b, h                                       ; $7f1d: $44
    rst $38                                       ; $7f1e: $ff
    sub b                                         ; $7f1f: $90
    ld [bc], a                                    ; $7f20: $02
    rst $38                                       ; $7f21: $ff
    ei                                            ; $7f22: $fb
    rst $38                                       ; $7f23: $ff
    xor $ff                                       ; $7f24: $ee $ff
    cp e                                          ; $7f26: $bb
    ld c, $10                                     ; $7f27: $0e $10
    ld d, l                                       ; $7f29: $55
    nop                                           ; $7f2a: $00
    rst $38                                       ; $7f2b: $ff
    ld [hl+], a                                   ; $7f2c: $22
    rst $38                                       ; $7f2d: $ff
    ld [$ffff], sp                                ; $7f2e: $08 $ff $ff
    nop                                           ; $7f31: $00
    rst $30                                       ; $7f32: $f7

jr_0cc_7f33:
    nop                                           ; $7f33: $00
    nop                                           ; $7f34: $00
    ld [$c000], a                                 ; $7f35: $ea $00 $c0
    nop                                           ; $7f38: $00
    ldh [rP1], a                                  ; $7f39: $e0 $00
    push de                                       ; $7f3b: $d5
    ret nz                                        ; $7f3c: $c0

    ld c, h                                       ; $7f3d: $4c
    nop                                           ; $7f3e: $00
    ld d, b                                       ; $7f3f: $50
    ld [$00fd], sp                                ; $7f40: $08 $fd $00
    xor d                                         ; $7f43: $aa
    nop                                           ; $7f44: $00
    nop                                           ; $7f45: $00
    nop                                           ; $7f46: $00
    inc d                                         ; $7f47: $14
    ld a, [bc]                                    ; $7f48: $0a
    nop                                           ; $7f49: $00
    ld e, l                                       ; $7f4a: $5d
    db $10                                        ; $7f4b: $10
    jr nz, @+$01                                  ; $7f4c: $20 $ff

    stop                                          ; $7f4e: $10 $00
    stop                                          ; $7f50: $10 $00
    db $10                                        ; $7f52: $10
    ld [bc], a                                    ; $7f53: $02
    nop                                           ; $7f54: $00
    ld [hl], l                                    ; $7f55: $75
    db $10                                        ; $7f56: $10
    jr nc, jr_0cc_7f08                            ; $7f57: $30 $af

    nop                                           ; $7f59: $00
    ld b, a                                       ; $7f5a: $47
    nop                                           ; $7f5b: $00
    inc e                                         ; $7f5c: $1c
    dec bc                                        ; $7f5d: $0b
    nop                                           ; $7f5e: $00

jr_0cc_7f5f:
    ld d, a                                       ; $7f5f: $57
    jr nc, @+$1a                                  ; $7f60: $30 $18

    ld [hl], c                                    ; $7f62: $71
    ld l, b                                       ; $7f63: $68
    sub b                                         ; $7f64: $90

jr_0cc_7f65:
    db $10                                        ; $7f65: $10
    xor e                                         ; $7f66: $ab
    ld d, h                                       ; $7f67: $54
    and d                                         ; $7f68: $a2
    and h                                         ; $7f69: $a4
    ld [$9011], sp                                ; $7f6a: $08 $11 $90
    nop                                           ; $7f6d: $00
    ld de, $45ff                                  ; $7f6e: $11 $ff $45
    ld a, [hl]                                    ; $7f71: $7e
    db $10                                        ; $7f72: $10
    xor e                                         ; $7f73: $ab
    and b                                         ; $7f74: $a0
    sub $00                                       ; $7f75: $d6 $00
    halt                                          ; $7f77: $76
    jp nz, $fe00                                  ; $7f78: $c2 $00 $fe

    ld bc, $00ff                                  ; $7f7b: $01 $ff $00
    xor [hl]                                      ; $7f7e: $ae
    inc e                                         ; $7f7f: $1c
    ld bc, $0146                                  ; $7f80: $01 $46 $01
    ld b, b                                       ; $7f83: $40
    ld [$080c], sp                                ; $7f84: $08 $0c $08
    ret nc                                        ; $7f87: $d0

    ld c, b                                       ; $7f88: $48
    ld l, [hl]                                    ; $7f89: $6e
    sub c                                         ; $7f8a: $91
    dec de                                        ; $7f8b: $1b
    ld a, a                                       ; $7f8c: $7f
    add b                                         ; $7f8d: $80
    rst $38                                       ; $7f8e: $ff
    and d                                         ; $7f8f: $a2
    nop                                           ; $7f90: $00
    db $10                                        ; $7f91: $10
    ld c, c                                       ; $7f92: $49
    rst $30                                       ; $7f93: $f7
    ld a, [$1000]                                 ; $7f94: $fa $00 $10
    ld c, c                                       ; $7f97: $49
    adc [hl]                                      ; $7f98: $8e
    ld [$ff68], sp                                ; $7f99: $08 $68 $ff
    rst $38                                       ; $7f9c: $ff
    cp a                                          ; $7f9d: $bf
    jr nz, @+$53                                  ; $7f9e: $20 $51

    or h                                          ; $7fa0: $b4
    jr z, jr_0cc_7f5f                             ; $7fa1: $28 $bc

    jr z, jr_0cc_7f65                             ; $7fa3: $28 $c0

    dec [hl]                                      ; $7fa5: $35
    ldh [rNR21], a                                ; $7fa6: $e0 $16
    ld h, b                                       ; $7fa8: $60
    ld h, a                                       ; $7fa9: $67
    ld b, b                                       ; $7faa: $40
    dec h                                         ; $7fab: $25
    ld h, b                                       ; $7fac: $60
    ld a, [hl+]                                   ; $7fad: $2a
    sbc a                                         ; $7fae: $9f
    inc bc                                        ; $7faf: $03
    ccf                                           ; $7fb0: $3f
    ld [bc], a                                    ; $7fb1: $02
    ret nz                                        ; $7fb2: $c0

    dec [hl]                                      ; $7fb3: $35
    ld h, b                                       ; $7fb4: $60
    ld a, [hl+]                                   ; $7fb5: $2a
    sbc a                                         ; $7fb6: $9f
    inc bc                                        ; $7fb7: $03
    ccf                                           ; $7fb8: $3f
    ld [bc], a                                    ; $7fb9: $02
    ld b, b                                       ; $7fba: $40
    dec h                                         ; $7fbb: $25
    ret nz                                        ; $7fbc: $c0

    dec [hl]                                      ; $7fbd: $35
    sbc a                                         ; $7fbe: $9f
    inc bc                                        ; $7fbf: $03
    ccf                                           ; $7fc0: $3f
    ld [bc], a                                    ; $7fc1: $02
    ld b, b                                       ; $7fc2: $40
    dec h                                         ; $7fc3: $25
    ret nz                                        ; $7fc4: $c0

    ld [$039f], sp                                ; $7fc5: $08 $9f $03
    ccf                                           ; $7fc8: $3f
    ld [bc], a                                    ; $7fc9: $02
    ld b, b                                       ; $7fca: $40
    dec h                                         ; $7fcb: $25
    ret nz                                        ; $7fcc: $c0

    dec [hl]                                      ; $7fcd: $35
    ld l, [hl]                                    ; $7fce: $6e
    inc bc                                        ; $7fcf: $03
    nop                                           ; $7fd0: $00
    ccf                                           ; $7fd1: $3f
    ld b, b                                       ; $7fd2: $40
    dec h                                         ; $7fd3: $25
    rst $30                                       ; $7fd4: $f7
    ld e, [hl]                                    ; $7fd5: $5e
    rst $30                                       ; $7fd6: $f7
    ld e, [hl]                                    ; $7fd7: $5e
    rst $30                                       ; $7fd8: $f7
    ld e, [hl]                                    ; $7fd9: $5e
    rst $30                                       ; $7fda: $f7
    ld e, [hl]                                    ; $7fdb: $5e
    rst $30                                       ; $7fdc: $f7
    ld e, [hl]                                    ; $7fdd: $5e
    rst $30                                       ; $7fde: $f7
    ld e, [hl]                                    ; $7fdf: $5e
    rst $30                                       ; $7fe0: $f7
    ld e, [hl]                                    ; $7fe1: $5e
    rst $30                                       ; $7fe2: $f7
    ld e, [hl]                                    ; $7fe3: $5e
    rst $38                                       ; $7fe4: $ff
    ld a, a                                       ; $7fe5: $7f
    ccf                                           ; $7fe6: $3f
    ld [bc], a                                    ; $7fe7: $02
    or c                                          ; $7fe8: $b1
    nop                                           ; $7fe9: $00
    dec h                                         ; $7fea: $25
    nop                                           ; $7feb: $00
    rst $38                                       ; $7fec: $ff
    ld a, a                                       ; $7fed: $7f
    rra                                           ; $7fee: $1f
    ld a, [hl]                                    ; $7fef: $7e
    jr nc, @+$42                                  ; $7ff0: $30 $40

    ld h, [hl]                                    ; $7ff2: $66
    jr @+$01                                      ; $7ff3: $18 $ff

    ld a, a                                       ; $7ff5: $7f
    rra                                           ; $7ff6: $1f
    ld a, [hl]                                    ; $7ff7: $7e
    jr nc, @+$42                                  ; $7ff8: $30 $40

    ld h, [hl]                                    ; $7ffa: $66
    jr @+$01                                      ; $7ffb: $18 $ff

    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
