; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0d2", ROMX[$4000], BANK[$d2]

    jp nc, $0002                                  ; $4000: $d2 $02 $00

    xor $1e                                       ; $4003: $ee $1e
    ld e, e                                       ; $4005: $5b
    ld bc, $035f                                  ; $4006: $01 $5f $03
    nop                                           ; $4009: $00
    nop                                           ; $400a: $00
    xor $1e                                       ; $400b: $ee $1e

Jump_0d2_400d:
    ld e, a                                       ; $400d: $5f
    inc bc                                        ; $400e: $03
    adc b                                         ; $400f: $88
    dec c                                         ; $4010: $0d
    nop                                           ; $4011: $00
    nop                                           ; $4012: $00
    adc l                                         ; $4013: $8d
    ld a, [de]                                    ; $4014: $1a
    ld e, a                                       ; $4015: $5f
    inc bc                                        ; $4016: $03
    adc $1e                                       ; $4017: $ce $1e
    ld [bc], a                                    ; $4019: $02
    nop                                           ; $401a: $00
    ld e, a                                       ; $401b: $5f
    inc bc                                        ; $401c: $03
    xor $1e                                       ; $401d: $ee $1e
    adc $1e                                       ; $401f: $ce $1e
    ld [bc], a                                    ; $4021: $02
    nop                                           ; $4022: $00
    adc $1e                                       ; $4023: $ce $1e
    ld e, e                                       ; $4025: $5b
    ld bc, $035f                                  ; $4026: $01 $5f $03
    nop                                           ; $4029: $00
    nop                                           ; $402a: $00
    adc $1e                                       ; $402b: $ce $1e
    rlca                                          ; $402d: $07
    inc h                                         ; $402e: $24
    db $10                                        ; $402f: $10
    ld b, d                                       ; $4030: $42

Jump_0d2_4031:
    ld hl, $2e04                                  ; $4031: $21 $04 $2e
    ld [hl-], a                                   ; $4034: $32
    ld de, $595c                                  ; $4035: $11 $5c $59
    ld l, [hl]                                    ; $4038: $6e
    ld [bc], a                                    ; $4039: $02
    nop                                           ; $403a: $00
    ret                                           ; $403b: $c9


    ld de, $035f                                  ; $403c: $11 $5f $03
    adc $1e                                       ; $403f: $ce $1e
    ld bc, $ad00                                  ; $4041: $01 $00 $ad
    ld e, $5b                                     ; $4044: $1e $5b
    ld bc, $035f                                  ; $4046: $01 $5f $03
    ld bc, $0f04                                  ; $4049: $01 $04 $0f
    ld d, b                                       ; $404c: $50
    ld d, c                                       ; $404d: $51
    ld b, [hl]                                    ; $404e: $46
    ld sp, hl                                     ; $404f: $f9
    ld [hl], l                                    ; $4050: $75
    ld bc, $5308                                  ; $4051: $01 $08 $53
    ld h, h                                       ; $4054: $64
    db $10                                        ; $4055: $10
    ld b, d                                       ; $4056: $42
    ld e, c                                       ; $4057: $59
    ld l, [hl]                                    ; $4058: $6e
    ld hl, $8c00                                  ; $4059: $21 $00 $8c
    ld a, [de]                                    ; $405c: $1a
    ld e, a                                       ; $405d: $5f
    inc bc                                        ; $405e: $03
    ld e, c                                       ; $405f: $59
    ld l, [hl]                                    ; $4060: $6e
    ld bc, $1100                                  ; $4061: $01 $00 $11
    ld e, h                                       ; $4064: $5c
    adc h                                         ; $4065: $8c
    ld [hl+], a                                   ; $4066: $22
    ld e, l                                       ; $4067: $5d
    ld [bc], a                                    ; $4068: $02
    nop                                           ; $4069: $00
    nop                                           ; $406a: $00
    db $10                                        ; $406b: $10
    ld b, d                                       ; $406c: $42
    ld de, $065c                                  ; $406d: $11 $5c $06
    inc e                                         ; $4070: $1c
    nop                                           ; $4071: $00
    nop                                           ; $4072: $00
    db $10                                        ; $4073: $10
    ld b, d                                       ; $4074: $42

jr_0d2_4075:
    ld de, $065c                                  ; $4075: $11 $5c $06
    inc e                                         ; $4078: $1c
    ld [hl+], a                                   ; $4079: $22
    inc b                                         ; $407a: $04
    adc e                                         ; $407b: $8b
    ld e, $11                                     ; $407c: $1e $11
    ld e, h                                       ; $407e: $5c
    ld e, a                                       ; $407f: $5f
    inc bc                                        ; $4080: $03
    ld bc, $6c00                                  ; $4081: $01 $00 $6c
    ld a, [hl+]                                   ; $4084: $2a
    ld e, e                                       ; $4085: $5b
    ld bc, $035f                                  ; $4086: $01 $5f $03
    nop                                           ; $4089: $00
    nop                                           ; $408a: $00
    ld de, $795c                                  ; $408b: $11 $5c $79
    ld b, d                                       ; $408e: $42
    adc c                                         ; $408f: $89
    jr jr_0d2_4092                                ; $4090: $18 $00

jr_0d2_4092:
    nop                                           ; $4092: $00
    jr c, jr_0d2_40cf                             ; $4093: $38 $3a

jr_0d2_4095:
    xor c                                         ; $4095: $a9
    jr jr_0d2_4075                                ; $4096: $18 $dd

    ld c, [hl]                                    ; $4098: $4e
    ld bc, $7104                                  ; $4099: $01 $04 $71
    ld d, h                                       ; $409c: $54
    adc e                                         ; $409d: $8b
    ld [hl+], a                                   ; $409e: $22
    ld e, a                                       ; $409f: $5f
    inc bc                                        ; $40a0: $03
    ld bc, $4b00                                  ; $40a1: $01 $00 $4b
    ld a, [hl+]                                   ; $40a4: $2a
    ld e, l                                       ; $40a5: $5d
    ld [bc], a                                    ; $40a6: $02
    ld de, $005c                                  ; $40a7: $11 $5c $00
    nop                                           ; $40aa: $00
    ld de, $385c                                  ; $40ab: $11 $5c $38
    ld a, [hl-]                                   ; $40ae: $3a
    ld b, a                                       ; $40af: $47
    jr jr_0d2_40d4                                ; $40b0: $18 $22

    nop                                           ; $40b2: $00
    db $f4                                        ; $40b3: $f4
    add hl, sp                                    ; $40b4: $39
    daa                                           ; $40b5: $27
    jr jr_0d2_4095                                ; $40b6: $18 $dd

    ld c, [hl]                                    ; $40b8: $4e
    ld bc, $b100                                  ; $40b9: $01 $00 $b1
    ld d, h                                       ; $40bc: $54
    ld e, a                                       ; $40bd: $5f
    inc bc                                        ; $40be: $03
    ld c, h                                       ; $40bf: $4c
    ld [hl+], a                                   ; $40c0: $22
    ld [bc], a                                    ; $40c1: $02
    nop                                           ; $40c2: $00
    ld c, b                                       ; $40c3: $48
    ld [hl+], a                                   ; $40c4: $22
    ld e, l                                       ; $40c5: $5d
    ld [bc], a                                    ; $40c6: $02
    ld e, c                                       ; $40c7: $59
    ld b, d                                       ; $40c8: $42
    ld bc, $3900                                  ; $40c9: $01 $00 $39
    ld b, [hl]                                    ; $40cc: $46
    rst $38                                       ; $40cd: $ff
    ld a, a                                       ; $40ce: $7f

jr_0d2_40cf:
    db $eb                                        ; $40cf: $eb
    jr jr_0d2_40d2                                ; $40d0: $18 $00

jr_0d2_40d2:
    nop                                           ; $40d2: $00
    sbc h                                         ; $40d3: $9c

jr_0d2_40d4:
    ld c, [hl]                                    ; $40d4: $4e
    rst $38                                       ; $40d5: $ff
    ld a, a                                       ; $40d6: $7f
    jp z, $0114                                   ; $40d7: $ca $14 $01

    inc b                                         ; $40da: $04
    ld c, c                                       ; $40db: $49
    ld [hl+], a                                   ; $40dc: $22
    jr c, jr_0d2_4119                             ; $40dd: $38 $3a

    ld e, a                                       ; $40df: $5f
    inc bc                                        ; $40e0: $03
    ld [bc], a                                    ; $40e1: $02
    nop                                           ; $40e2: $00
    jr z, @+$28                                   ; $40e3: $28 $26

    ld e, l                                       ; $40e5: $5d
    ld [bc], a                                    ; $40e6: $02
    sbc e                                         ; $40e7: $9b
    ld c, [hl]                                    ; $40e8: $4e

jr_0d2_40e9:
    inc h                                         ; $40e9: $24
    nop                                           ; $40ea: $00
    ld e, d                                       ; $40eb: $5a
    ld c, d                                       ; $40ec: $4a
    sla b                                         ; $40ed: $cb $20
    rst $38                                       ; $40ef: $ff
    ld a, a                                       ; $40f0: $7f
    inc h                                         ; $40f1: $24
    nop                                           ; $40f2: $00
    ld a, $5f                                     ; $40f3: $3e $5f
    db $eb                                        ; $40f5: $eb
    jr jr_0d2_40e9                                ; $40f6: $18 $f1

    inc a                                         ; $40f8: $3c
    ld bc, $bc00                                  ; $40f9: $01 $00 $bc
    ld b, [hl]                                    ; $40fc: $46
    ret z                                         ; $40fd: $c8

    ld hl, $035f                                  ; $40fe: $21 $5f $03
    ld [bc], a                                    ; $4101: $02
    nop                                           ; $4102: $00
    rst $20                                       ; $4103: $e7
    ld hl, $159a                                  ; $4104: $21 $9a $15
    ld e, a                                       ; $4107: $5f
    inc bc                                        ; $4108: $03
    db $eb                                        ; $4109: $eb
    jr @+$3a                                      ; $410a: $18 $38

    ld a, [hl-]                                   ; $410c: $3a
    db $dd                                        ; $410d: $dd
    ld d, d                                       ; $410e: $52
    ld e, d                                       ; $410f: $5a
    ld a, $88                                     ; $4110: $3e $88
    inc c                                         ; $4112: $0c
    rla                                           ; $4113: $17
    ld [hl], $bc                                  ; $4114: $36 $bc
    ld c, d                                       ; $4116: $4a
    rst $38                                       ; $4117: $ff
    ld d, d                                       ; $4118: $52

jr_0d2_4119:
    ld [bc], a                                    ; $4119: $02
    nop                                           ; $411a: $00
    push af                                       ; $411b: $f5
    dec l                                         ; $411c: $2d
    rst $20                                       ; $411d: $e7
    ld hl, $035f                                  ; $411e: $21 $5f $03
    ld [bc], a                                    ; $4121: $02
    nop                                           ; $4122: $00
    ld b, $26                                     ; $4123: $06 $26
    ld e, e                                       ; $4125: $5b
    ld bc, $035f                                  ; $4126: $01 $5f $03
    db $eb                                        ; $4129: $eb
    jr jr_0d2_4143                                ; $412a: $18 $17

    ld [hl], $9b                                  ; $412c: $36 $9b
    ld c, d                                       ; $412e: $4a
    db $fd                                        ; $412f: $fd
    ld d, [hl]                                    ; $4130: $56
    rl h                                          ; $4131: $cb $14
    ld e, c                                       ; $4133: $59
    ld a, $d5                                     ; $4134: $3e $d5
    dec l                                         ; $4136: $2d
    db $dd                                        ; $4137: $dd
    ld d, d                                       ; $4138: $52
    inc hl                                        ; $4139: $23
    nop                                           ; $413a: $00
    ld e, a                                       ; $413b: $5f
    inc bc                                        ; $413c: $03
    and $25                                       ; $413d: $e6 $25
    add sp, $10                                   ; $413f: $e8 $10
    ld [bc], a                                    ; $4141: $02
    nop                                           ; $4142: $00

jr_0d2_4143:
    call nz, Call_0d2_5b25                        ; $4143: $c4 $25 $5b
    ld bc, $035f                                  ; $4146: $01 $5f $03
    jp z, Jump_000_3914                           ; $4149: $ca $14 $39

    ld a, [hl-]                                   ; $414c: $3a
    or h                                          ; $414d: $b4
    dec h                                         ; $414e: $25
    db $dd                                        ; $414f: $dd
    ld d, d                                       ; $4150: $52
    nop                                           ; $4151: $00
    nop                                           ; $4152: $00
    or $35                                        ; $4153: $f6 $35
    db $ec                                        ; $4155: $ec
    inc d                                         ; $4156: $14
    db $dd                                        ; $4157: $dd
    ld d, d                                       ; $4158: $52
    inc hl                                        ; $4159: $23
    nop                                           ; $415a: $00
    ld e, a                                       ; $415b: $5f
    inc bc                                        ; $415c: $03
    ld h, l                                       ; $415d: $65
    add hl, de                                    ; $415e: $19
    push hl                                       ; $415f: $e5
    add hl, hl                                    ; $4160: $29
    ld bc, $a300                                  ; $4161: $01 $00 $a3
    dec h                                         ; $4164: $25
    ld e, e                                       ; $4165: $5b
    ld bc, $035f                                  ; $4166: $01 $5f $03
    ld b, h                                       ; $4169: $44
    inc b                                         ; $416a: $04
    rst $30                                       ; $416b: $f7
    ld sp, $4edc                                  ; $416c: $31 $dc $4e
    dec c                                         ; $416f: $0d
    add hl, de                                    ; $4170: $19
    ld b, h                                       ; $4171: $44
    nop                                           ; $4172: $00
    halt                                          ; $4173: $76
    dec l                                         ; $4174: $2d
    adc l                                         ; $4175: $8d
    db $10                                        ; $4176: $10
    ld e, d                                       ; $4177: $5a
    ld b, d                                       ; $4178: $42
    ld [bc], a                                    ; $4179: $02
    nop                                           ; $417a: $00
    ld e, a                                       ; $417b: $5f
    inc bc                                        ; $417c: $03
    call nz, $e429                                ; $417d: $c4 $29 $e4
    add hl, hl                                    ; $4180: $29
    ld [bc], a                                    ; $4181: $02
    nop                                           ; $4182: $00
    ld [hl], d                                    ; $4183: $72
    ld c, [hl]                                    ; $4184: $4e
    ld e, l                                       ; $4185: $5d
    ld [bc], a                                    ; $4186: $02
    ld h, e                                       ; $4187: $63
    dec h                                         ; $4188: $25
    ld [hl+], a                                   ; $4189: $22
    nop                                           ; $418a: $00
    rla                                           ; $418b: $17
    ld [hl], $eb                                  ; $418c: $36 $eb
    inc d                                         ; $418e: $14
    cp e                                          ; $418f: $bb
    ld c, [hl]                                    ; $4190: $4e
    ld h, e                                       ; $4191: $63
    dec h                                         ; $4192: $25
    sub $25                                       ; $4193: $d6 $25
    xor c                                         ; $4195: $a9
    db $10                                        ; $4196: $10
    ld a, e                                       ; $4197: $7b
    ld b, [hl]                                    ; $4198: $46
    ld [bc], a                                    ; $4199: $02
    nop                                           ; $419a: $00
    ld e, a                                       ; $419b: $5f
    inc bc                                        ; $419c: $03
    and e                                         ; $419d: $a3
    add hl, hl                                    ; $419e: $29
    jp Jump_000_0229                              ; $419f: $c3 $29 $02


    nop                                           ; $41a2: $00
    or l                                          ; $41a3: $b5
    ld d, [hl]                                    ; $41a4: $56
    ld e, l                                       ; $41a5: $5d
    ld [bc], a                                    ; $41a6: $02
    rst $20                                       ; $41a7: $e7
    inc e                                         ; $41a8: $1c
    nop                                           ; $41a9: $00
    nop                                           ; $41aa: $00
    db $eb                                        ; $41ab: $eb
    jr @+$48                                      ; $41ac: $18 $46

    nop                                           ; $41ae: $00
    db $ec                                        ; $41af: $ec
    inc d                                         ; $41b0: $14
    nop                                           ; $41b1: $00
    nop                                           ; $41b2: $00
    sub h                                         ; $41b3: $94
    ld d, d                                       ; $41b4: $52
    jp hl                                         ; $41b5: $e9


    jr @+$47                                      ; $41b6: $18 $45

    nop                                           ; $41b8: $00
    ld [bc], a                                    ; $41b9: $02
    nop                                           ; $41ba: $00
    ld e, a                                       ; $41bb: $5f
    inc bc                                        ; $41bc: $03
    ld h, e                                       ; $41bd: $63
    dec h                                         ; $41be: $25
    and d                                         ; $41bf: $a2
    dec l                                         ; $41c0: $2d
    ld [bc], a                                    ; $41c1: $02
    nop                                           ; $41c2: $00
    jr nc, @+$4c                                  ; $41c3: $30 $4a

    ld e, l                                       ; $41c5: $5d
    ld [bc], a                                    ; $41c6: $02
    rst $20                                       ; $41c7: $e7
    inc e                                         ; $41c8: $1c
    nop                                           ; $41c9: $00
    nop                                           ; $41ca: $00
    sub $29                                       ; $41cb: $d6 $29
    add sp, $18                                   ; $41cd: $e8 $18
    db $fd                                        ; $41cf: $fd
    ld d, [hl]                                    ; $41d0: $56
    nop                                           ; $41d1: $00
    nop                                           ; $41d2: $00
    jr nc, @+$4c                                  ; $41d3: $30 $4a

    jp hl                                         ; $41d5: $e9


    jr @+$79                                      ; $41d6: $18 $77

    ld c, d                                       ; $41d8: $4a
    ld bc, $b500                                  ; $41d9: $01 $00 $b5
    ld d, [hl]                                    ; $41dc: $56
    add d                                         ; $41dd: $82
    add hl, hl                                    ; $41de: $29
    ld e, a                                       ; $41df: $5f
    inc bc                                        ; $41e0: $03
    ld [bc], a                                    ; $41e1: $02
    nop                                           ; $41e2: $00
    ld e, e                                       ; $41e3: $5b
    ld bc, $035f                                  ; $41e4: $01 $5f $03
    ld e, a                                       ; $41e7: $5f
    inc bc                                        ; $41e8: $03
    ld e, e                                       ; $41e9: $5b
    ld bc, $035f                                  ; $41ea: $01 $5f $03
    ld e, a                                       ; $41ed: $5f
    inc bc                                        ; $41ee: $03
    ld e, a                                       ; $41ef: $5f
    inc bc                                        ; $41f0: $03
    ld e, e                                       ; $41f1: $5b
    ld bc, $035f                                  ; $41f2: $01 $5f $03
    ld e, a                                       ; $41f5: $5f
    inc bc                                        ; $41f6: $03
    ld e, a                                       ; $41f7: $5f
    inc bc                                        ; $41f8: $03
    ld [bc], a                                    ; $41f9: $02
    nop                                           ; $41fa: $00
    ld e, e                                       ; $41fb: $5b
    ld bc, $035f                                  ; $41fc: $01 $5f $03
    ld e, a                                       ; $41ff: $5f
    inc bc                                        ; $4200: $03

    db $02, $00, $39, $15, $5f, $03, $0c, $20, $05, $08, $5f, $12, $5f, $03, $cd, $04
    db $27, $08, $5e, $12, $92, $38, $5f, $03, $02, $00, $5f, $03, $f5, $44, $07, $0c
    db $02, $00, $f5, $44, $09, $18, $3c, $02, $68, $00, $77, $09, $dd, $11, $9f, $16
    db $05, $08, $3e, $12, $ce, $04, $08, $18, $03, $00, $f5, $44, $5f, $03, $0f, $28
    db $02, $00, $bb, $05, $2a, $14, $5f, $03, $78, $05, $de, $0d, $da, $0d, $1f, $12
    db $27, $04, $b9, $09, $1f, $0e, $ee, $04, $03, $04, $5f, $03, $f5, $44, $0b, $1c
    db $02, $00, $78, $05, $0c, $24, $5f, $03, $02, $10, $0f, $01, $b9, $09, $27, $0c
    db $27, $0c, $97, $05, $fd, $0d, $f9, $09, $05, $08, $5f, $03, $0e, $28, $30, $05
    db $02, $00, $15, $01, $5f, $03, $28, $0c, $02, $0c, $ec, $00, $32, $01, $99, $01
    db $02, $10, $0f, $01, $47, $08, $b9, $09, $04, $04, $5f, $03, $30, $05, $0a, $1c
    db $02, $00, $38, $01, $5f, $03, $49, $08, $03, $00, $32, $01, $8b, $00, $54, $01
    db $02, $04, $0f, $01, $75, $01, $89, $00, $03, $00, $5f, $03, $09, $18, $67, $00
    db $02, $00, $35, $01, $5f, $03, $49, $0c, $25, $00, $dc, $7b, $8d, $2d, $33, $01
    db $03, $00, $dd, $7b, $ad, $31, $34, $01, $06, $08, $bc, $02, $0e, $28, $ec, $00
    db $02, $00, $0f, $2c, $5f, $03, $13, $01, $03, $00, $12, $01, $cb, $04, $bc, $11
    db $03, $00, $33, $01, $ab, $08, $bc, $11, $24, $04, $5f, $03, $0d, $24, $11, $01
    db $02, $00, $50, $01, $5f, $03, $5b, $01, $66, $00, $f0, $00, $32, $01, $54, $01
    db $24, $00, $cf, $00, $12, $01, $54, $01, $03, $04, $5f, $03, $0e, $24, $0b, $01
    db $02, $00, $b7, $01, $7d, $07, $f0, $00, $2b, $00, $f0, $00, $76, $01, $12, $01
    db $00, $00, $4c, $00, $f0, $00, $29, $00, $42, $00, $53, $02, $0e, $24, $7d, $03
    db $02, $00, $77, $01, $3c, $03, $e9, $04, $29, $00, $f2, $00, $55, $01, $ac, $00
    db $21, $04, $ad, $00, $29, $00, $12, $01, $01, $08, $9f, $07, $4c, $05, $0e, $28
    db $02, $00, $d3, $01, $1a, $03, $69, $09, $05, $00, $f0, $00, $6a, $00, $54, $01
    db $00, $04, $11, $01, $51, $02, $87, $04, $03, $08, $0f, $06, $7d, $07, $0c, $28
    db $02, $00, $5b, $01, $08, $1c, $5f, $03, $00, $00, $12, $01, $89, $00, $55, $01
    db $00, $00, $8b, $00, $05, $0c, $f1, $00, $22, $04, $5f, $03, $09, $18, $0f, $2c
    db $01, $00, $79, $01, $09, $1c, $3f, $07, $00, $00, $f0, $00, $93, $09, $24, $00
    db $01, $00, $ce, $00, $b4, $0d, $88, $00, $02, $04, $5f, $03, $09, $18, $10, $28
    db $02, $00, $58, $01, $0a, $1c, $3f, $07, $22, $00, $cc, $00, $7b, $0a, $32, $01
    db $00, $00, $3d, $0e, $ef, $00, $88, $00, $01, $00, $5f, $03, $11, $30, $08, $14
    db $02, $00, $5b, $01, $5f, $03, $08, $14, $5b, $01, $5f, $03, $5f, $03, $08, $14
    db $5b, $01, $5f, $03, $5f, $03, $08, $14, $02, $00, $5b, $01, $5f, $03, $08, $14

    ld [bc], a                                    ; $4401: $02
    nop                                           ; $4402: $00
    adc d                                         ; $4403: $8a

Jump_0d2_4404:
    ld b, e                                       ; $4404: $43
    ld e, e                                       ; $4405: $5b
    ld bc, $035f                                  ; $4406: $01 $5f $03
    ld [$db10], a                                 ; $4409: $ea $10 $db
    dec h                                         ; $440c: $25
    adc d                                         ; $440d: $8a
    ld b, e                                       ; $440e: $43
    ld e, a                                       ; $440f: $5f
    inc bc                                        ; $4410: $03
    add a                                         ; $4411: $87
    ld [$073f], sp                                ; $4412: $08 $3f $07
    adc d                                         ; $4415: $8a
    ld b, e                                       ; $4416: $43
    ld d, a                                       ; $4417: $57
    add hl, de                                    ; $4418: $19
    ld [bc], a                                    ; $4419: $02
    nop                                           ; $441a: $00
    ld e, a                                       ; $441b: $5f
    inc bc                                        ; $441c: $03
    adc d                                         ; $441d: $8a
    ld b, e                                       ; $441e: $43
    ld d, a                                       ; $441f: $57
    add hl, de                                    ; $4420: $19
    ld [bc], a                                    ; $4421: $02
    nop                                           ; $4422: $00
    ld l, d                                       ; $4423: $6a
    ld b, e                                       ; $4424: $43
    ld e, e                                       ; $4425: $5b
    ld bc, $035f                                  ; $4426: $01 $5f $03
    rrc h                                         ; $4429: $cb $0c
    ld a, $22                                     ; $442b: $3e $22
    ld a, b                                       ; $442d: $78
    ld de, $4eff                                  ; $442e: $11 $ff $4e
    ret                                           ; $4431: $c9


    db $10                                        ; $4432: $10
    rst $18                                       ; $4433: $df
    ld a, [hl-]                                   ; $4434: $3a
    call c, Call_0d2_5f19                         ; $4435: $dc $19 $5f
    ld d, a                                       ; $4438: $57
    ld [bc], a                                    ; $4439: $02
    nop                                           ; $443a: $00
    ld l, d                                       ; $443b: $6a
    ld b, e                                       ; $443c: $43
    ld e, a                                       ; $443d: $5f
    inc bc                                        ; $443e: $03
    xor d                                         ; $443f: $aa
    ld [$0002], sp                                ; $4440: $08 $02 $00
    ld l, c                                       ; $4443: $69
    ld b, e                                       ; $4444: $43
    ld e, l                                       ; $4445: $5d
    ld [bc], a                                    ; $4446: $02
    ccf                                           ; $4447: $3f
    ld d, a                                       ; $4448: $57
    dec b                                         ; $4449: $05
    nop                                           ; $444a: $00
    dec sp                                        ; $444b: $3b
    ld h, $3e                                     ; $444c: $26 $3e
    ld d, e                                       ; $444e: $53
    ld d, e                                       ; $444f: $53
    dec d                                         ; $4450: $15
    xor c                                         ; $4451: $a9
    inc c                                         ; $4452: $0c
    ld e, [hl]                                    ; $4453: $5e
    ld a, [hl+]                                   ; $4454: $2a
    ld e, a                                       ; $4455: $5f
    ld e, e                                       ; $4456: $5b
    ld d, e                                       ; $4457: $53
    dec d                                         ; $4458: $15
    ld b, [hl]                                    ; $4459: $46
    inc b                                         ; $445a: $04
    ld l, c                                       ; $445b: $69
    ld b, e                                       ; $445c: $43
    ld a, l                                       ; $445d: $7d
    ld a, [bc]                                    ; $445e: $0a
    ld a, a                                       ; $445f: $7f
    ld e, a                                       ; $4460: $5f
    ld [bc], a                                    ; $4461: $02
    nop                                           ; $4462: $00
    ld c, c                                       ; $4463: $49
    ccf                                           ; $4464: $3f
    cp h                                          ; $4465: $bc
    ld de, $035f                                  ; $4466: $11 $5f $03
    ld bc, $d900                                  ; $4469: $01 $00 $d9
    ld hl, $639f                                  ; $446c: $21 $9f $63
    xor [hl]                                      ; $446f: $ae
    ld [$0003], sp                                ; $4470: $08 $03 $00
    ld [hl], l                                    ; $4473: $75
    add hl, de                                    ; $4474: $19
    inc a                                         ; $4475: $3c
    ld a, [hl+]                                   ; $4476: $2a
    xor d                                         ; $4477: $aa
    ld [$0887], sp                                ; $4478: $08 $87 $08
    ld c, c                                       ; $447b: $49
    ccf                                           ; $447c: $3f
    inc e                                         ; $447d: $1c
    ld h, $5f                                     ; $447e: $26 $5f
    inc bc                                        ; $4480: $03
    ld [bc], a                                    ; $4481: $02
    nop                                           ; $4482: $00
    db $fc                                        ; $4483: $fc
    add hl, bc                                    ; $4484: $09
    jr z, jr_0d2_44c2                             ; $4485: $28 $3b

    ld a, a                                       ; $4487: $7f
    ld e, a                                       ; $4488: $5f
    inc bc                                        ; $4489: $03
    nop                                           ; $448a: $00
    ld [hl], d                                    ; $448b: $72
    ld hl, $531d                                  ; $448c: $21 $1d $53
    call c, Call_0d2_4719                         ; $448f: $dc $19 $47
    nop                                           ; $4492: $00
    ld a, [de]                                    ; $4493: $1a
    ld l, $fd                                     ; $4494: $2e $fd
    ld e, d                                       ; $4496: $5a
    ld d, d                                       ; $4497: $52
    add hl, de                                    ; $4498: $19
    ld b, a                                       ; $4499: $47
    inc b                                         ; $449a: $04
    jr z, @+$3d                                   ; $449b: $28 $3b

    sbc l                                         ; $449d: $9d
    ld c, $1e                                     ; $449e: $0e $1e
    ld b, a                                       ; $44a0: $47
    ld [bc], a                                    ; $44a1: $02
    nop                                           ; $44a2: $00
    rst $20                                       ; $44a3: $e7
    ld a, [hl-]                                   ; $44a4: $3a
    dec a                                         ; $44a5: $3d
    ld [de], a                                    ; $44a6: $12
    ld e, a                                       ; $44a7: $5f
    ld e, e                                       ; $44a8: $5b
    inc h                                         ; $44a9: $24
    nop                                           ; $44aa: $00
    db $db                                        ; $44ab: $db
    dec e                                         ; $44ac: $1d
    ld de, $bb0d                                  ; $44ad: $11 $0d $bb
    ld d, d                                       ; $44b0: $52
    inc b                                         ; $44b1: $04
    nop                                           ; $44b2: $00
    dec de                                        ; $44b3: $1b
    ld a, [hl+]                                   ; $44b4: $2a
    ld d, h                                       ; $44b5: $54
    dec d                                         ; $44b6: $15
    call c, $0256                                 ; $44b7: $dc $56 $02
    nop                                           ; $44ba: $00
    rst $20                                       ; $44bb: $e7
    ld a, [hl-]                                   ; $44bc: $3a
    sbc h                                         ; $44bd: $9c
    ld c, $cd                                     ; $44be: $0e $cd
    inc b                                         ; $44c0: $04
    ld [bc], a                                    ; $44c1: $02

jr_0d2_44c2:
    nop                                           ; $44c2: $00
    add $36                                       ; $44c3: $c6 $36
    ld d, [hl]                                    ; $44c5: $56
    add hl, bc                                    ; $44c6: $09
    rst $38                                       ; $44c7: $ff
    ld c, $23                                     ; $44c8: $0e $23
    inc c                                         ; $44ca: $0c
    ld e, b                                       ; $44cb: $58
    ld c, d                                       ; $44cc: $4a
    rst $38                                       ; $44cd: $ff
    ld a, a                                       ; $44ce: $7f
    call Call_000_220c                            ; $44cf: $cd $0c $22
    inc d                                         ; $44d2: $14
    adc $5d                                       ; $44d3: $ce $5d
    rrca                                          ; $44d5: $0f
    ld de, $5f1d                                  ; $44d6: $11 $1d $5f
    inc hl                                        ; $44d9: $23
    inc b                                         ; $44da: $04
    add $36                                       ; $44db: $c6 $36
    ld e, a                                       ; $44dd: $5f
    inc bc                                        ; $44de: $03
    db $10                                        ; $44df: $10
    dec c                                         ; $44e0: $0d
    ld [bc], a                                    ; $44e1: $02
    nop                                           ; $44e2: $00
    and l                                         ; $44e3: $a5
    ld [hl-], a                                   ; $44e4: $32
    sbc b                                         ; $44e5: $98
    dec d                                         ; $44e6: $15
    ld e, a                                       ; $44e7: $5f
    inc bc                                        ; $44e8: $03
    ld b, d                                       ; $44e9: $42
    jr nz, jr_0d2_4502                            ; $44ea: $20 $16

    ld c, d                                       ; $44ec: $4a
    ld d, d                                       ; $44ed: $52
    dec e                                         ; $44ee: $1d
    rst $38                                       ; $44ef: $ff
    ld a, a                                       ; $44f0: $7f
    ld b, d                                       ; $44f1: $42
    jr nz, jr_0d2_44c2                            ; $44f2: $20 $ce

    ld e, l                                       ; $44f4: $5d
    ld [hl], h                                    ; $44f5: $74
    ld hl, $4a9b                                  ; $44f6: $21 $9b $4a
    dec h                                         ; $44f9: $25
    nop                                           ; $44fa: $00
    and l                                         ; $44fb: $a5
    ld [hl-], a                                   ; $44fc: $32
    ld e, a                                       ; $44fd: $5f
    inc bc                                        ; $44fe: $03
    ld [hl], d                                    ; $44ff: $72
    dec e                                         ; $4500: $1d
    ld [bc], a                                    ; $4501: $02

jr_0d2_4502:
    nop                                           ; $4502: $00
    add l                                         ; $4503: $85
    ld [hl-], a                                   ; $4504: $32
    ld d, [hl]                                    ; $4505: $56
    dec c                                         ; $4506: $0d
    ld e, a                                       ; $4507: $5f
    inc bc                                        ; $4508: $03
    ld [hl], d                                    ; $4509: $72
    dec e                                         ; $450a: $1d
    ld e, d                                       ; $450b: $5a
    ld b, d                                       ; $450c: $42
    call c, $fd52                                 ; $450d: $dc $52 $fd
    ld e, d                                       ; $4510: $5a
    ld [hl], e                                    ; $4511: $73
    dec e                                         ; $4512: $1d
    ld e, d                                       ; $4513: $5a
    ld b, d                                       ; $4514: $42
    db $fd                                        ; $4515: $fd
    ld e, d                                       ; $4516: $5a
    push de                                       ; $4517: $d5
    add hl, hl                                    ; $4518: $29
    inc hl                                        ; $4519: $23
    nop                                           ; $451a: $00
    ld e, a                                       ; $451b: $5f
    inc bc                                        ; $451c: $03
    add h                                         ; $451d: $84
    ld [hl-], a                                   ; $451e: $32
    inc hl                                        ; $451f: $23
    dec d                                         ; $4520: $15
    ld [bc], a                                    ; $4521: $02
    nop                                           ; $4522: $00
    ld h, h                                       ; $4523: $64
    ld l, $5b                                     ; $4524: $2e $5b
    ld bc, $035f                                  ; $4526: $01 $5f $03
    ld [hl], d                                    ; $4529: $72
    dec e                                         ; $452a: $1d
    add hl, sp                                    ; $452b: $39
    ld b, d                                       ; $452c: $42
    call c, $fd52                                 ; $452d: $dc $52 $fd
    ld e, d                                       ; $4530: $5a
    adc c                                         ; $4531: $89
    nop                                           ; $4532: $00
    ld e, b                                       ; $4533: $58
    ld b, d                                       ; $4534: $42
    ld [hl], e                                    ; $4535: $73
    dec e                                         ; $4536: $1d
    db $fd                                        ; $4537: $fd
    ld e, d                                       ; $4538: $5a
    ld [bc], a                                    ; $4539: $02
    nop                                           ; $453a: $00
    ld e, a                                       ; $453b: $5f
    inc bc                                        ; $453c: $03
    ld h, h                                       ; $453d: $64
    ld l, $23                                     ; $453e: $2e $23
    ld de, $0002                                  ; $4540: $11 $02 $00
    ld b, e                                       ; $4543: $43
    ld a, [hl+]                                   ; $4544: $2a
    ld e, e                                       ; $4545: $5b
    ld bc, $035f                                  ; $4546: $01 $5f $03
    ld b, l                                       ; $4549: $45
    nop                                           ; $454a: $00
    ld e, d                                       ; $454b: $5a
    ld b, [hl]                                    ; $454c: $46
    ld [hl], b                                    ; $454d: $70
    dec h                                         ; $454e: $25
    rrc b                                         ; $454f: $cb $08
    ld h, a                                       ; $4551: $67
    nop                                           ; $4552: $00
    sbc e                                         ; $4553: $9b
    ld c, [hl]                                    ; $4554: $4e
    ld b, e                                       ; $4555: $43
    ld a, [hl+]                                   ; $4556: $2a
    inc c                                         ; $4557: $0c
    add hl, de                                    ; $4558: $19
    ld [bc], a                                    ; $4559: $02
    nop                                           ; $455a: $00
    ld e, a                                       ; $455b: $5f
    inc bc                                        ; $455c: $03
    ld b, e                                       ; $455d: $43
    ld a, [hl+]                                   ; $455e: $2a
    ld b, e                                       ; $455f: $43
    ld l, $02                                     ; $4560: $2e $02
    nop                                           ; $4562: $00
    ld [bc], a                                    ; $4563: $02
    ld a, [hl+]                                   ; $4564: $2a
    ld e, e                                       ; $4565: $5b
    ld bc, $035f                                  ; $4566: $01 $5f $03
    and c                                         ; $4569: $a1
    ld hl, $4a9b                                  ; $456a: $21 $9b $4a
    ld h, a                                       ; $456d: $67
    nop                                           ; $456e: $00
    ld [hl], e                                    ; $456f: $73
    ld hl, $21c2                                  ; $4570: $21 $c2 $21
    sbc e                                         ; $4573: $9b
    ld c, [hl]                                    ; $4574: $4e
    adc c                                         ; $4575: $89
    nop                                           ; $4576: $00
    ld [hl], e                                    ; $4577: $73
    ld hl, $0002                                  ; $4578: $21 $02 $00
    ld e, a                                       ; $457b: $5f
    inc bc                                        ; $457c: $03
    ld [bc], a                                    ; $457d: $02
    ld a, [hl+]                                   ; $457e: $2a
    ld [hl+], a                                   ; $457f: $22
    ld a, [hl+]                                   ; $4580: $2a
    ld [bc], a                                    ; $4581: $02
    nop                                           ; $4582: $00
    pop hl                                        ; $4583: $e1
    dec h                                         ; $4584: $25
    ld e, e                                       ; $4585: $5b
    ld bc, $035f                                  ; $4586: $01 $5f $03
    and b                                         ; $4589: $a0
    dec e                                         ; $458a: $1d
    ld d, c                                       ; $458b: $51
    add hl, de                                    ; $458c: $19
    ld b, [hl]                                    ; $458d: $46
    nop                                           ; $458e: $00
    ld e, d                                       ; $458f: $5a
    ld b, d                                       ; $4590: $42
    ret nz                                        ; $4591: $c0

    ld hl, $1952                                  ; $4592: $21 $52 $19
    ld b, [hl]                                    ; $4595: $46
    nop                                           ; $4596: $00
    ld e, d                                       ; $4597: $5a
    ld b, d                                       ; $4598: $42
    ld [bc], a                                    ; $4599: $02
    nop                                           ; $459a: $00
    ld e, a                                       ; $459b: $5f
    inc bc                                        ; $459c: $03
    pop hl                                        ; $459d: $e1
    dec h                                         ; $459e: $25
    ld bc, $0126                                  ; $459f: $01 $26 $01
    nop                                           ; $45a2: $00
    ld e, e                                       ; $45a3: $5b
    ld bc, $21a0                                  ; $45a4: $01 $a0 $21
    ld e, a                                       ; $45a7: $5f
    inc bc                                        ; $45a8: $03
    inc bc                                        ; $45a9: $03
    nop                                           ; $45aa: $00
    sub d                                         ; $45ab: $92
    add hl, hl                                    ; $45ac: $29
    ld e, d                                       ; $45ad: $5a
    ld b, d                                       ; $45ae: $42
    db $fd                                        ; $45af: $fd
    ld e, d                                       ; $45b0: $5a
    ld b, b                                       ; $45b1: $40
    add hl, de                                    ; $45b2: $19
    or d                                          ; $45b3: $b2
    ld sp, $52bc                                  ; $45b4: $31 $bc $52
    ld bc, $0100                                  ; $45b7: $01 $00 $01
    nop                                           ; $45ba: $00
    ld e, a                                       ; $45bb: $5f
    inc bc                                        ; $45bc: $03
    ld b, b                                       ; $45bd: $40
    add hl, de                                    ; $45be: $19
    ret nz                                        ; $45bf: $c0

    ld hl, $0001                                  ; $45c0: $21 $01 $00
    ld e, l                                       ; $45c3: $5d
    ld [bc], a                                    ; $45c4: $02
    ld e, e                                       ; $45c5: $5b
    ld h, a                                       ; $45c6: $67
    ld b, a                                       ; $45c7: $47
    dec h                                         ; $45c8: $25
    ld bc, $b100                                  ; $45c9: $01 $00 $b1
    ld sp, $77bd                                  ; $45cc: $31 $bd $77
    ld e, d                                       ; $45cf: $5a
    ld b, d                                       ; $45d0: $42
    ld [bc], a                                    ; $45d1: $02
    nop                                           ; $45d2: $00
    inc sp                                        ; $45d3: $33
    ld b, d                                       ; $45d4: $42
    sbc l                                         ; $45d5: $9d
    ld [hl], e                                    ; $45d6: $73
    ld [hl], d                                    ; $45d7: $72
    dec e                                         ; $45d8: $1d
    ld b, c                                       ; $45d9: $41
    inc b                                         ; $45da: $04
    db $10                                        ; $45db: $10
    ld a, $5f                                     ; $45dc: $3e $5f
    inc bc                                        ; $45de: $03
    add hl, de                                    ; $45df: $19
    ld h, e                                       ; $45e0: $63
    ld [bc], a                                    ; $45e1: $02
    nop                                           ; $45e2: $00
    ld e, e                                       ; $45e3: $5b
    ld bc, $035f                                  ; $45e4: $01 $5f $03
    add hl, de                                    ; $45e7: $19
    ld h, e                                       ; $45e8: $63
    ld e, e                                       ; $45e9: $5b
    ld bc, $035f                                  ; $45ea: $01 $5f $03
    ld e, a                                       ; $45ed: $5f
    inc bc                                        ; $45ee: $03
    add hl, de                                    ; $45ef: $19
    ld h, e                                       ; $45f0: $63
    ld e, e                                       ; $45f1: $5b
    ld bc, $035f                                  ; $45f2: $01 $5f $03
    ld e, a                                       ; $45f5: $5f
    inc de                                        ; $45f6: $13
    add hl, de                                    ; $45f7: $19
    ld h, e                                       ; $45f8: $63
    ld [bc], a                                    ; $45f9: $02
    nop                                           ; $45fa: $00
    ld e, e                                       ; $45fb: $5b
    ld bc, $035f                                  ; $45fc: $01 $5f $03
    add hl, de                                    ; $45ff: $19
    ld h, e                                       ; $4600: $63
    ld [bc], a                                    ; $4601: $02
    nop                                           ; $4602: $00
    ld e, e                                       ; $4603: $5b
    ld bc, $440d                                  ; $4604: $01 $0d $44
    ld e, a                                       ; $4607: $5f
    inc bc                                        ; $4608: $03
    dec c                                         ; $4609: $0d
    ld b, h                                       ; $460a: $44
    ld e, a                                       ; $460b: $5f
    inc bc                                        ; $460c: $03
    ld l, c                                       ; $460d: $69
    inc b                                         ; $460e: $04
    xor $0c                                       ; $460f: $ee $0c
    dec c                                         ; $4611: $0d
    ld b, h                                       ; $4612: $44
    ld e, a                                       ; $4613: $5f
    inc bc                                        ; $4614: $03
    ld l, c                                       ; $4615: $69
    inc b                                         ; $4616: $04
    xor $0c                                       ; $4617: $ee $0c
    ld [bc], a                                    ; $4619: $02
    nop                                           ; $461a: $00
    ld e, a                                       ; $461b: $5f
    inc bc                                        ; $461c: $03
    dec c                                         ; $461d: $0d
    ld b, h                                       ; $461e: $44
    xor $0c                                       ; $461f: $ee $0c
    ld [bc], a                                    ; $4621: $02
    nop                                           ; $4622: $00
    dec c                                         ; $4623: $0d
    ld b, h                                       ; $4624: $44
    cp d                                          ; $4625: $ba
    ld de, $035f                                  ; $4626: $11 $5f $03
    xor h                                         ; $4629: $ac
    ld [$3277], sp                                ; $462a: $08 $77 $32
    cp [hl]                                       ; $462d: $be
    ld d, e                                       ; $462e: $53
    db $db                                        ; $462f: $db
    ld [hl], $0d                                  ; $4630: $36 $0d
    ld b, h                                       ; $4632: $44
    sbc [hl]                                      ; $4633: $9e
    ld c, a                                       ; $4634: $4f
    adc d                                         ; $4635: $8a
    inc b                                         ; $4636: $04
    call nc, $0225                                ; $4637: $d4 $25 $02
    nop                                           ; $463a: $00
    ld e, a                                       ; $463b: $5f
    inc bc                                        ; $463c: $03
    dec c                                         ; $463d: $0d
    ld b, h                                       ; $463e: $44
    call nc, $0225                                ; $463f: $d4 $25 $02
    nop                                           ; $4642: $00
    inc a                                         ; $4643: $3c
    ld a, [bc]                                    ; $4644: $0a
    dec c                                         ; $4645: $0d
    ld b, h                                       ; $4646: $44
    ld a, l                                       ; $4647: $7d
    ld c, e                                       ; $4648: $4b
    push de                                       ; $4649: $d5
    dec h                                         ; $464a: $25
    dec e                                         ; $464b: $1d
    ccf                                           ; $464c: $3f
    ld a, c                                       ; $464d: $79
    ld l, $bf                                     ; $464e: $2e $bf
    ld d, e                                       ; $4650: $53
    xor h                                         ; $4651: $ac
    ld [$329a], sp                                ; $4652: $08 $9a $32
    sbc [hl]                                      ; $4655: $9e
    ld c, a                                       ; $4656: $4f
    call nc, Call_000_0229                        ; $4657: $d4 $29 $02
    nop                                           ; $465a: $00
    ld e, a                                       ; $465b: $5f
    inc bc                                        ; $465c: $03
    dec c                                         ; $465d: $0d
    ld b, h                                       ; $465e: $44
    ld l, c                                       ; $465f: $69
    inc b                                         ; $4660: $04
    ld [bc], a                                    ; $4661: $02
    nop                                           ; $4662: $00
    ld e, l                                       ; $4663: $5d
    ld [bc], a                                    ; $4664: $02
    ld c, l                                       ; $4665: $4d
    jr nc, @-$25                                  ; $4666: $30 $d9

    ld a, $ab                                     ; $4668: $3e $ab
    ld [$25d5], sp                                ; $466a: $08 $d5 $25
    ld a, a                                       ; $466d: $7f
    ld b, a                                       ; $466e: $47
    ld a, b                                       ; $466f: $78
    ld l, $cd                                     ; $4670: $2e $cd
    ld [$2a38], sp                                ; $4672: $08 $38 $2a
    db $fc                                        ; $4675: $fc
    ld a, $be                                     ; $4676: $3e $be
    ld c, a                                       ; $4678: $4f
    dec h                                         ; $4679: $25
    nop                                           ; $467a: $00
    ld d, $3a                                     ; $467b: $16 $3a
    dec c                                         ; $467d: $0d
    ld b, h                                       ; $467e: $44
    ld e, a                                       ; $467f: $5f
    inc bc                                        ; $4680: $03
    ld [bc], a                                    ; $4681: $02
    nop                                           ; $4682: $00
    ld e, l                                       ; $4683: $5d
    ld [bc], a                                    ; $4684: $02
    sbc c                                         ; $4685: $99
    ld a, [hl-]                                   ; $4686: $3a
    dec c                                         ; $4687: $0d
    ld b, b                                       ; $4688: $40
    call z, $f408                                 ; $4689: $cc $08 $f4
    add hl, hl                                    ; $468c: $29
    cp d                                          ; $468d: $ba
    ld b, [hl]                                    ; $468e: $46
    ld d, c                                       ; $468f: $51
    dec e                                         ; $4690: $1d
    call Call_000_3708                            ; $4691: $cd $08 $37
    ld l, $fb                                     ; $4694: $2e $fb
    ld b, [hl]                                    ; $4696: $46
    ld [hl], c                                    ; $4697: $71
    ld hl, $0025                                  ; $4698: $21 $25 $00
    ld e, a                                       ; $469b: $5f
    inc bc                                        ; $469c: $03
    dec c                                         ; $469d: $0d
    ld b, b                                       ; $469e: $40
    dec de                                        ; $469f: $1b
    ld b, a                                       ; $46a0: $47
    ld [bc], a                                    ; $46a1: $02
    nop                                           ; $46a2: $00
    ld [hl], h                                    ; $46a3: $74
    add hl, de                                    ; $46a4: $19
    ld e, a                                       ; $46a5: $5f
    inc bc                                        ; $46a6: $03
    dec c                                         ; $46a7: $0d
    jr c, jr_0d2_4713                             ; $46a8: $38 $69

    inc b                                         ; $46aa: $04
    scf                                           ; $46ab: $37
    ld a, [hl-]                                   ; $46ac: $3a
    db $fd                                        ; $46ad: $fd
    ld d, d                                       ; $46ae: $52
    ld [hl], c                                    ; $46af: $71
    dec e                                         ; $46b0: $1d
    xor h                                         ; $46b1: $ac
    ld [$3678], sp                                ; $46b2: $08 $78 $36
    call nc, $fd21                                ; $46b5: $d4 $21 $fd
    ld d, d                                       ; $46b8: $52
    dec h                                         ; $46b9: $25
    nop                                           ; $46ba: $00
    ld d, $2e                                     ; $46bb: $16 $2e
    dec c                                         ; $46bd: $0d
    jr c, @+$61                                   ; $46be: $38 $5f

    inc bc                                        ; $46c0: $03
    ld [bc], a                                    ; $46c1: $02
    nop                                           ; $46c2: $00
    ld e, l                                       ; $46c3: $5d
    ld [bc], a                                    ; $46c4: $02
    dec l                                         ; $46c5: $2d

jr_0d2_46c6:
    inc l                                         ; $46c6: $2c
    db $fc                                        ; $46c7: $fc
    ld b, [hl]                                    ; $46c8: $46
    ld l, c                                       ; $46c9: $69
    inc b                                         ; $46ca: $04
    cp c                                          ; $46cb: $b9
    ld a, $fe                                     ; $46cc: $3e $fe
    ld d, d                                       ; $46ce: $52
    cp a                                          ; $46cf: $bf
    ld d, e                                       ; $46d0: $53
    ld l, c                                       ; $46d1: $69
    inc b                                         ; $46d2: $04
    scf                                           ; $46d3: $37
    ld [hl-], a                                   ; $46d4: $32
    dec a                                         ; $46d5: $3d
    ld c, a                                       ; $46d6: $4f
    xor $10                                       ; $46d7: $ee $10
    ld h, $00                                     ; $46d9: $26 $00
    ld e, a                                       ; $46db: $5f
    inc bc                                        ; $46dc: $03
    dec c                                         ; $46dd: $0d
    inc [hl]                                      ; $46de: $34
    jr nc, jr_0d2_46f6                            ; $46df: $30 $15

    ld [bc], a                                    ; $46e1: $02
    nop                                           ; $46e2: $00
    dec de                                        ; $46e3: $1b
    ld b, $0d                                     ; $46e4: $06 $0d
    jr nc, jr_0d2_46c6                            ; $46e6: $30 $de

    ld [hl], a                                    ; $46e8: $77
    ld c, d                                       ; $46e9: $4a
    nop                                           ; $46ea: $00
    cp h                                          ; $46eb: $bc
    ld b, [hl]                                    ; $46ec: $46
    rst $18                                       ; $46ed: $df
    ld [hl], a                                    ; $46ee: $77
    sub e                                         ; $46ef: $93
    ld hl, $0446                                  ; $46f0: $21 $46 $04
    sbc d                                         ; $46f3: $9a
    ld b, [hl]                                    ; $46f4: $46
    ld d, c                                       ; $46f5: $51

jr_0d2_46f6:
    dec e                                         ; $46f6: $1d
    rst $38                                       ; $46f7: $ff
    ld a, a                                       ; $46f8: $7f
    dec h                                         ; $46f9: $25
    nop                                           ; $46fa: $00
    sbc d                                         ; $46fb: $9a
    ld b, d                                       ; $46fc: $42
    dec c                                         ; $46fd: $0d
    jr nc, @+$61                                  ; $46fe: $30 $5f

    inc bc                                        ; $4700: $03
    ld [bc], a                                    ; $4701: $02
    nop                                           ; $4702: $00
    ld hl, sp+$0d                                 ; $4703: $f8 $0d
    dec c                                         ; $4705: $0d
    inc l                                         ; $4706: $2c
    sbc $77                                       ; $4707: $de $77
    jr z, jr_0d2_470b                             ; $4709: $28 $00

jr_0d2_470b:
    ld e, $57                                     ; $470b: $1e $57
    inc c                                         ; $470d: $0c
    add hl, de                                    ; $470e: $19
    sub e                                         ; $470f: $93
    ld hl, $0469                                  ; $4710: $21 $69 $04

jr_0d2_4713:
    ld a, c                                       ; $4713: $79
    ld a, $b3                                     ; $4714: $3e $b3
    dec h                                         ; $4716: $25
    db $dd                                        ; $4717: $dd
    ld c, [hl]                                    ; $4718: $4e

Call_0d2_4719:
    ld b, [hl]                                    ; $4719: $46
    nop                                           ; $471a: $00
    sbc $57                                       ; $471b: $de $57
    dec l                                         ; $471d: $2d
    jr z, jr_0d2_477f                             ; $471e: $28 $5f

    inc bc                                        ; $4720: $03
    ld [bc], a                                    ; $4721: $02
    nop                                           ; $4722: $00
    rla                                           ; $4723: $17
    ld [hl], $0d                                  ; $4724: $36 $0d
    jr z, @+$5f                                   ; $4726: $28 $5d

    ld [bc], a                                    ; $4728: $02
    inc c                                         ; $4729: $0c
    add hl, de                                    ; $472a: $19
    ld a, b                                       ; $472b: $78
    ld a, $1e                                     ; $472c: $3e $1e
    ld d, a                                       ; $472e: $57
    or $2d                                        ; $472f: $f6 $2d
    ld l, c                                       ; $4731: $69
    inc b                                         ; $4732: $04
    ld a, d                                       ; $4733: $7a
    ld a, $1e                                     ; $4734: $3e $1e
    ld d, a                                       ; $4736: $57
    ld [hl], c                                    ; $4737: $71
    ld hl, $0025                                  ; $4738: $21 $25 $00
    ld e, l                                       ; $473b: $5d
    ld b, a                                       ; $473c: $47
    ld e, a                                       ; $473d: $5f
    inc bc                                        ; $473e: $03
    dec c                                         ; $473f: $0d
    jr z, jr_0d2_4744                             ; $4740: $28 $02

    nop                                           ; $4742: $00
    ld [hl], a                                    ; $4743: $77

jr_0d2_4744:
    ld de, $200d                                  ; $4744: $11 $0d $20
    ld e, a                                       ; $4747: $5f
    inc bc                                        ; $4748: $03
    cp e                                          ; $4749: $bb
    ld c, d                                       ; $474a: $4a
    ld a, $57                                     ; $474b: $3e $57
    db $fd                                        ; $474d: $fd
    ld d, d                                       ; $474e: $52
    ccf                                           ; $474f: $3f
    ld e, e                                       ; $4750: $5b
    ld l, c                                       ; $4751: $69
    inc b                                         ; $4752: $04
    ld a, c                                       ; $4753: $79
    ld a, [hl-]                                   ; $4754: $3a
    ld e, $53                                     ; $4755: $1e $53
    ld d, b                                       ; $4757: $50
    dec e                                         ; $4758: $1d
    dec h                                         ; $4759: $25
    nop                                           ; $475a: $00
    ld a, d                                       ; $475b: $7a
    ld l, $0d                                     ; $475c: $2e $0d
    jr nz, jr_0d2_47bf                            ; $475e: $20 $5f

    inc bc                                        ; $4760: $03
    ld [bc], a                                    ; $4761: $02
    nop                                           ; $4762: $00
    ld e, e                                       ; $4763: $5b
    ld bc, $200d                                  ; $4764: $01 $0d $20
    ld e, a                                       ; $4767: $5f
    inc bc                                        ; $4768: $03
    xor $18                                       ; $4769: $ee $18
    ld e, $57                                     ; $476b: $1e $57
    ld hl, sp+$2d                                 ; $476d: $f8 $2d
    rst $38                                       ; $476f: $ff
    ld a, a                                       ; $4770: $7f
    ld l, c                                       ; $4771: $69
    inc b                                         ; $4772: $04
    rla                                           ; $4773: $17
    ld l, $9a                                     ; $4774: $2e $9a
    ld b, [hl]                                    ; $4776: $46
    cpl                                           ; $4777: $2f
    add hl, de                                    ; $4778: $19
    ld [bc], a                                    ; $4779: $02
    nop                                           ; $477a: $00
    ld e, a                                       ; $477b: $5f
    inc bc                                        ; $477c: $03
    dec c                                         ; $477d: $0d
    inc e                                         ; $477e: $1c

jr_0d2_477f:
    ld l, c                                       ; $477f: $69
    inc b                                         ; $4780: $04
    ld [bc], a                                    ; $4781: $02
    nop                                           ; $4782: $00
    ld e, e                                       ; $4783: $5b
    ld bc, $1c0d                                  ; $4784: $01 $0d $1c
    ld e, a                                       ; $4787: $5f
    inc bc                                        ; $4788: $03
    nop                                           ; $4789: $00
    nop                                           ; $478a: $00
    push af                                       ; $478b: $f5
    jr jr_0d2_47e8                                ; $478c: $18 $5a

    ld a, $4a                                     ; $478e: $3e $4a
    inc c                                         ; $4790: $0c
    ld b, a                                       ; $4791: $47
    nop                                           ; $4792: $00
    sub h                                         ; $4793: $94
    ld hl, $10ce                                  ; $4794: $21 $ce $10
    ld e, b                                       ; $4797: $58
    ld a, [hl-]                                   ; $4798: $3a
    nop                                           ; $4799: $00
    nop                                           ; $479a: $00
    ld e, a                                       ; $479b: $5f
    inc bc                                        ; $479c: $03
    dec c                                         ; $479d: $0d
    inc e                                         ; $479e: $1c
    ld [bc], a                                    ; $479f: $02
    nop                                           ; $47a0: $00
    ld [bc], a                                    ; $47a1: $02
    nop                                           ; $47a2: $00
    ld e, e                                       ; $47a3: $5b
    ld bc, $1c0d                                  ; $47a4: $01 $0d $1c
    ld e, a                                       ; $47a7: $5f
    inc bc                                        ; $47a8: $03
    ld l, c                                       ; $47a9: $69
    inc b                                         ; $47aa: $04
    or l                                          ; $47ab: $b5
    dec h                                         ; $47ac: $25
    ld e, c                                       ; $47ad: $59
    ld a, [hl-]                                   ; $47ae: $3a
    dec c                                         ; $47af: $0d
    jr jr_0d2_47b2                                ; $47b0: $18 $00

jr_0d2_47b2:
    nop                                           ; $47b2: $00
    rrca                                          ; $47b3: $0f
    dec d                                         ; $47b4: $15
    adc c                                         ; $47b5: $89
    inc b                                         ; $47b6: $04
    or l                                          ; $47b7: $b5
    dec h                                         ; $47b8: $25
    ld [hl+], a                                   ; $47b9: $22
    inc b                                         ; $47ba: $04
    ld e, a                                       ; $47bb: $5f
    inc bc                                        ; $47bc: $03
    adc h                                         ; $47bd: $8c
    dec [hl]                                      ; $47be: $35

jr_0d2_47bf:
    dec c                                         ; $47bf: $0d
    inc e                                         ; $47c0: $1c
    ld [bc], a                                    ; $47c1: $02
    nop                                           ; $47c2: $00
    ld e, e                                       ; $47c3: $5b
    ld bc, $1c0d                                  ; $47c4: $01 $0d $1c
    ld e, a                                       ; $47c7: $5f
    inc bc                                        ; $47c8: $03
    ld b, [hl]                                    ; $47c9: $46
    nop                                           ; $47ca: $00
    ld a, [hl-]                                   ; $47cb: $3a
    ld l, $6d                                     ; $47cc: $2e $6d
    inc e                                         ; $47ce: $1c
    sbc [hl]                                      ; $47cf: $9e
    ld [hl], e                                    ; $47d0: $73
    add [hl]                                      ; $47d1: $86
    inc c                                         ; $47d2: $0c
    call c, $b64a                                 ; $47d3: $dc $4a $b6
    dec h                                         ; $47d6: $25
    rst $38                                       ; $47d7: $ff
    ld a, e                                       ; $47d8: $7b
    ld bc, $5f00                                  ; $47d9: $01 $00 $5f
    inc bc                                        ; $47dc: $03
    rst $38                                       ; $47dd: $ff
    ld a, e                                       ; $47de: $7b
    db $ec                                        ; $47df: $ec
    jr z, jr_0d2_47e4                             ; $47e0: $28 $02

    nop                                           ; $47e2: $00
    ld e, e                                       ; $47e3: $5b

jr_0d2_47e4:
    ld bc, $035f                                  ; $47e4: $01 $5f $03
    db $ec                                        ; $47e7: $ec

jr_0d2_47e8:
    jr z, @+$5d                                   ; $47e8: $28 $5b

    ld bc, $035f                                  ; $47ea: $01 $5f $03
    ld e, a                                       ; $47ed: $5f
    inc bc                                        ; $47ee: $03

jr_0d2_47ef:
    db $ec                                        ; $47ef: $ec
    jr z, jr_0d2_484d                             ; $47f0: $28 $5b

    ld bc, $035f                                  ; $47f2: $01 $5f $03
    ld e, a                                       ; $47f5: $5f
    inc bc                                        ; $47f6: $03
    db $ec                                        ; $47f7: $ec
    jr z, jr_0d2_47fc                             ; $47f8: $28 $02

    nop                                           ; $47fa: $00
    ld e, e                                       ; $47fb: $5b

jr_0d2_47fc:
    ld bc, $035f                                  ; $47fc: $01 $5f $03
    db $ec                                        ; $47ff: $ec
    jr z, jr_0d2_4804                             ; $4800: $28 $02

    nop                                           ; $4802: $00
    ld e, e                                       ; $4803: $5b

jr_0d2_4804:
    ld bc, $3402                                  ; $4804: $01 $02 $34
    ld e, a                                       ; $4807: $5f
    inc bc                                        ; $4808: $03
    dec b                                         ; $4809: $05
    inc e                                         ; $480a: $1c
    ld e, d                                       ; $480b: $5a
    ld e, d                                       ; $480c: $5a
    ld [hl], h                                    ; $480d: $74
    dec a                                         ; $480e: $3d
    ld e, a                                       ; $480f: $5f
    inc bc                                        ; $4810: $03
    dec b                                         ; $4811: $05
    ld [$51f9], sp                                ; $4812: $08 $f9 $51
    ld e, a                                       ; $4815: $5f
    inc bc                                        ; $4816: $03
    ld [bc], a                                    ; $4817: $02
    inc [hl]                                      ; $4818: $34
    ld [bc], a                                    ; $4819: $02
    nop                                           ; $481a: $00
    ld e, a                                       ; $481b: $5f
    inc bc                                        ; $481c: $03
    ld [bc], a                                    ; $481d: $02
    inc [hl]                                      ; $481e: $34
    ld [bc], a                                    ; $481f: $02
    inc [hl]                                      ; $4820: $34
    ld [bc], a                                    ; $4821: $02
    nop                                           ; $4822: $00
    scf                                           ; $4823: $37
    ld de, $3402                                  ; $4824: $11 $02 $34
    ld e, a                                       ; $4827: $5f
    inc bc                                        ; $4828: $03
    inc h                                         ; $4829: $24
    ld [$4df9], sp                                ; $482a: $08 $f9 $4d
    rst $38                                       ; $482d: $ff
    ld a, a                                       ; $482e: $7f
    xor a                                         ; $482f: $af
    jr z, jr_0d2_4835                             ; $4830: $28 $03

    inc c                                         ; $4832: $0c
    or [hl]                                       ; $4833: $b6
    ld b, l                                       ; $4834: $45

jr_0d2_4835:
    ccf                                           ; $4835: $3f
    ld [hl], e                                    ; $4836: $73
    inc c                                         ; $4837: $0c
    dec l                                         ; $4838: $2d
    ld [bc], a                                    ; $4839: $02
    nop                                           ; $483a: $00
    ld e, a                                       ; $483b: $5f
    inc bc                                        ; $483c: $03
    ld [bc], a                                    ; $483d: $02

Call_0d2_483e:
    inc [hl]                                      ; $483e: $34
    ld [$0210], sp                                ; $483f: $08 $10 $02
    nop                                           ; $4842: $00
    ld e, e                                       ; $4843: $5b
    ld bc, $3802                                  ; $4844: $01 $02 $38
    ld e, a                                       ; $4847: $5f
    inc bc                                        ; $4848: $03
    ld [bc], a                                    ; $4849: $02
    inc b                                         ; $484a: $04
    db $fd                                        ; $484b: $fd
    ld l, d                                       ; $484c: $6a

jr_0d2_484d:
    db $ed                                        ; $484d: $ed
    jr z, jr_0d2_47ef                             ; $484e: $28 $9f

    ld a, e                                       ; $4850: $7b
    ld [bc], a                                    ; $4851: $02
    inc b                                         ; $4852: $04
    call nc, $5e45                                ; $4853: $d4 $45 $5e
    ld [hl], e                                    ; $4856: $73
    call z, $4620                                 ; $4857: $cc $20 $46
    inc c                                         ; $485a: $0c
    ld e, a                                       ; $485b: $5f
    inc bc                                        ; $485c: $03
    cp c                                          ; $485d: $b9
    ld h, d                                       ; $485e: $62
    ld [bc], a                                    ; $485f: $02
    jr c, jr_0d2_4864                             ; $4860: $38 $02

    nop                                           ; $4862: $00
    ret c                                         ; $4863: $d8

jr_0d2_4864:
    dec c                                         ; $4864: $0d
    db $dd                                        ; $4865: $dd
    ld l, d                                       ; $4866: $6a
    ld [bc], a                                    ; $4867: $02
    inc a                                         ; $4868: $3c
    ld bc, $f000                                  ; $4869: $01 $00 $f0
    jr nc, jr_0d2_48cc                            ; $486c: $30 $5e

    ld [hl], e                                    ; $486e: $73
    rst $30                                       ; $486f: $f7
    ld c, l                                       ; $4870: $4d
    ld bc, $5300                                  ; $4871: $01 $00 $53
    add hl, sp                                    ; $4874: $39
    adc e                                         ; $4875: $8b
    inc e                                         ; $4876: $1c
    rst $10                                       ; $4877: $d7
    ld c, c                                       ; $4878: $49
    add a                                         ; $4879: $87
    inc d                                         ; $487a: $14
    ld e, a                                       ; $487b: $5f
    inc bc                                        ; $487c: $03
    ld e, $73                                     ; $487d: $1e $73
    ld [bc], a                                    ; $487f: $02
    inc a                                         ; $4880: $3c
    ld bc, $9600                                  ; $4881: $01 $00 $96
    ld b, c                                       ; $4884: $41
    ld b, [hl]                                    ; $4885: $46
    jr nc, jr_0d2_48e5                            ; $4886: $30 $5d

    ld [bc], a                                    ; $4888: $02
    ld [bc], a                                    ; $4889: $02
    inc b                                         ; $488a: $04
    sub [hl]                                      ; $488b: $96
    ld b, l                                       ; $488c: $45
    ld a, h                                       ; $488d: $7c
    ld e, [hl]                                    ; $488e: $5e
    sbc a                                         ; $488f: $9f
    ld a, e                                       ; $4890: $7b
    ld [bc], a                                    ; $4891: $02
    inc b                                         ; $4892: $04
    sub [hl]                                      ; $4893: $96
    ld b, c                                       ; $4894: $41
    adc d                                         ; $4895: $8a
    inc e                                         ; $4896: $1c
    dec de                                        ; $4897: $1b
    ld d, [hl]                                    ; $4898: $56
    ld [bc], a                                    ; $4899: $02
    nop                                           ; $489a: $00
    ld [hl], h                                    ; $489b: $74
    dec a                                         ; $489c: $3d
    inc hl                                        ; $489d: $23
    ld b, h                                       ; $489e: $44
    ld e, a                                       ; $489f: $5f
    inc bc                                        ; $48a0: $03
    ld [bc], a                                    ; $48a1: $02
    nop                                           ; $48a2: $00
    jr c, @+$13                                   ; $48a3: $38 $11

    inc h                                         ; $48a5: $24
    ld c, h                                       ; $48a6: $4c
    ld e, a                                       ; $48a7: $5f
    inc bc                                        ; $48a8: $03
    ld [hl+], a                                   ; $48a9: $22
    ld [$2d93], sp                                ; $48aa: $08 $93 $2d
    ccf                                           ; $48ad: $3f
    ld e, e                                       ; $48ae: $5b
    ld e, c                                       ; $48af: $59
    ld a, [hl-]                                   ; $48b0: $3a
    nop                                           ; $48b1: $00
    nop                                           ; $48b2: $00
    ld [hl], d                                    ; $48b3: $72
    ld sp, $52fd                                  ; $48b4: $31 $fd $52
    adc c                                         ; $48b7: $89
    inc d                                         ; $48b8: $14
    inc bc                                        ; $48b9: $03
    inc b                                         ; $48ba: $04
    or a                                          ; $48bb: $b7
    ld b, l                                       ; $48bc: $45
    inc hl                                        ; $48bd: $23
    ld c, h                                       ; $48be: $4c
    ld e, a                                       ; $48bf: $5f
    inc bc                                        ; $48c0: $03
    ld [bc], a                                    ; $48c1: $02
    nop                                           ; $48c2: $00
    ld e, l                                       ; $48c3: $5d
    ld [bc], a                                    ; $48c4: $02
    ld b, h                                       ; $48c5: $44
    ld d, h                                       ; $48c6: $54
    rst $30                                       ; $48c7: $f7
    ld b, c                                       ; $48c8: $41
    nop                                           ; $48c9: $00
    nop                                           ; $48ca: $00
    sbc h                                         ; $48cb: $9c

jr_0d2_48cc:
    ld c, d                                       ; $48cc: $4a
    jp hl                                         ; $48cd: $e9


    ld e, b                                       ; $48ce: $58
    ei                                            ; $48cf: $fb
    ld a, a                                       ; $48d0: $7f
    ld [bc], a                                    ; $48d1: $02
    inc b                                         ; $48d2: $04
    ld e, d                                       ; $48d3: $5a
    ld c, d                                       ; $48d4: $4a
    dec bc                                        ; $48d5: $0b
    ld d, c                                       ; $48d6: $51
    call c, $0577                                 ; $48d7: $dc $77 $05
    ld [$4e9b], sp                                ; $48da: $08 $9b $4e
    ld b, h                                       ; $48dd: $44
    ld d, h                                       ; $48de: $54
    ld e, a                                       ; $48df: $5f
    inc bc                                        ; $48e0: $03
    ld [bc], a                                    ; $48e1: $02
    nop                                           ; $48e2: $00
    ld e, l                                       ; $48e3: $5d
    ld [bc], a                                    ; $48e4: $02

jr_0d2_48e5:
    ld h, l                                       ; $48e5: $65
    ld e, b                                       ; $48e6: $58
    rla                                           ; $48e7: $17
    ld a, $00                                     ; $48e8: $3e $00
    ld [$55ae], sp                                ; $48ea: $08 $ae $55
    db $dd                                        ; $48ed: $dd
    ld d, d                                       ; $48ee: $52
    rst $00                                       ; $48ef: $c7
    ld b, b                                       ; $48f0: $40
    nop                                           ; $48f1: $00
    ld [$45af], sp                                ; $48f2: $08 $af $45
    sbc $52                                       ; $48f5: $de $52
    ld b, b                                       ; $48f7: $40
    ld e, h                                       ; $48f8: $5c
    ld h, $0c                                     ; $48f9: $26 $0c
    ld a, h                                       ; $48fb: $7c
    ld c, d                                       ; $48fc: $4a
    ld h, l                                       ; $48fd: $65
    ld e, b                                       ; $48fe: $58
    ld e, a                                       ; $48ff: $5f
    inc bc                                        ; $4900: $03
    ld [bc], a                                    ; $4901: $02
    nop                                           ; $4902: $00
    add [hl]                                      ; $4903: $86
    ld e, b                                       ; $4904: $58
    ld e, b                                       ; $4905: $58
    add hl, bc                                    ; $4906: $09
    ld a, $1b                                     ; $4907: $3e $1b
    or d                                          ; $4909: $b2
    add hl, hl                                    ; $490a: $29
    cp $52                                        ; $490b: $fe $52
    dec d                                         ; $490d: $15
    ld [hl], $df                                  ; $490e: $36 $df
    ld c, d                                       ; $4910: $4a
    or d                                          ; $4911: $b2
    dec h                                         ; $4912: $25
    cp [hl]                                       ; $4913: $be
    ld b, [hl]                                    ; $4914: $46
    cp $52                                        ; $4915: $fe $52
    dec d                                         ; $4917: $15
    ld [hl], $01                                  ; $4918: $36 $01
    nop                                           ; $491a: $00
    ld e, a                                       ; $491b: $5f
    inc bc                                        ; $491c: $03
    ld h, l                                       ; $491d: $65
    ld h, b                                       ; $491e: $60
    ld [$0210], sp                                ; $491f: $08 $10 $02
    nop                                           ; $4922: $00
    add [hl]                                      ; $4923: $86
    ld l, b                                       ; $4924: $68
    ld e, e                                       ; $4925: $5b
    ld bc, $035f                                  ; $4926: $01 $5f $03
    nop                                           ; $4929: $00
    nop                                           ; $492a: $00
    rra                                           ; $492b: $1f
    ld d, e                                       ; $492c: $53
    sub e                                         ; $492d: $93
    ld hl, $7fff                                  ; $492e: $21 $ff $7f
    add [hl]                                      ; $4931: $86
    ld l, b                                       ; $4932: $68
    rra                                           ; $4933: $1f
    ld d, e                                       ; $4934: $53
    sub e                                         ; $4935: $93
    ld hl, $7fff                                  ; $4936: $21 $ff $7f
    ld [bc], a                                    ; $4939: $02
    nop                                           ; $493a: $00
    ld e, a                                       ; $493b: $5f
    inc bc                                        ; $493c: $03
    add [hl]                                      ; $493d: $86
    ld l, b                                       ; $493e: $68
    add a                                         ; $493f: $87
    ld l, h                                       ; $4940: $6c
    ld bc, $8700                                  ; $4941: $01 $00 $87
    ld [hl], b                                    ; $4944: $70
    ld e, l                                       ; $4945: $5d
    ld [bc], a                                    ; $4946: $02
    rla                                           ; $4947: $17
    ld e, d                                       ; $4948: $5a
    nop                                           ; $4949: $00
    nop                                           ; $494a: $00
    rra                                           ; $494b: $1f
    ld d, e                                       ; $494c: $53
    ld d, c                                       ; $494d: $51
    dec h                                         ; $494e: $25
    rra                                           ; $494f: $1f
    nop                                           ; $4950: $00
    ld hl, $ff04                                  ; $4951: $21 $04 $ff
    ld d, [hl]                                    ; $4954: $56
    and a                                         ; $4955: $a7
    ld [hl], b                                    ; $4956: $70
    ld [hl], $19                                  ; $4957: $36 $19
    ld [bc], a                                    ; $4959: $02
    nop                                           ; $495a: $00
    ld e, a                                       ; $495b: $5f
    inc bc                                        ; $495c: $03
    add a                                         ; $495d: $87
    ld [hl], b                                    ; $495e: $70
    and a                                         ; $495f: $a7
    ld [hl], h                                    ; $4960: $74
    ld [bc], a                                    ; $4961: $02
    nop                                           ; $4962: $00
    sbc e                                         ; $4963: $9b
    nop                                           ; $4964: $00
    and a                                         ; $4965: $a7
    ld a, b                                       ; $4966: $78
    ld e, a                                       ; $4967: $5f
    inc bc                                        ; $4968: $03
    ld b, e                                       ; $4969: $43
    ld [$4ade], sp                                ; $496a: $08 $de $4a
    rrca                                          ; $496d: $0f
    dec d                                         ; $496e: $15
    dec e                                         ; $496f: $1d
    nop                                           ; $4970: $00
    ld [bc], a                                    ; $4971: $02
    nop                                           ; $4972: $00
    rra                                           ; $4973: $1f
    nop                                           ; $4974: $00
    ld e, c                                       ; $4975: $59
    ld b, d                                       ; $4976: $42
    db $eb                                        ; $4977: $eb
    jr nz, jr_0d2_497d                            ; $4978: $20 $03

    nop                                           ; $497a: $00
    and a                                         ; $497b: $a7
    ld a, b                                       ; $497c: $78

jr_0d2_497d:
    rra                                           ; $497d: $1f
    nop                                           ; $497e: $00
    ld e, a                                       ; $497f: $5f
    inc bc                                        ; $4980: $03
    ld [bc], a                                    ; $4981: $02
    nop                                           ; $4982: $00
    cp e                                          ; $4983: $bb
    ld [$6f3c], sp                                ; $4984: $08 $3c $6f
    ld e, a                                       ; $4987: $5f
    inc bc                                        ; $4988: $03
    rra                                           ; $4989: $1f
    nop                                           ; $498a: $00
    rst $28                                       ; $498b: $ef
    dec a                                         ; $498c: $3d
    sbc a                                         ; $498d: $9f
    ld l, a                                       ; $498e: $6f
    dec sp                                        ; $498f: $3b
    ld [hl], $26                                  ; $4990: $36 $26
    ld [$77df], sp                                ; $4992: $08 $df $77
    ld e, [hl]                                    ; $4995: $5e
    inc b                                         ; $4996: $04
    rst $28                                       ; $4997: $ef
    dec a                                         ; $4998: $3d
    nop                                           ; $4999: $00
    nop                                           ; $499a: $00
    xor b                                         ; $499b: $a8
    ld a, b                                       ; $499c: $78
    ccf                                           ; $499d: $3f
    ld [bc], a                                    ; $499e: $02
    rst $38                                       ; $499f: $ff
    ld a, a                                       ; $49a0: $7f
    ld [bc], a                                    ; $49a1: $02
    nop                                           ; $49a2: $00
    ld e, l                                       ; $49a3: $5d
    ld [bc], a                                    ; $49a4: $02
    rst $38                                       ; $49a5: $ff
    ld a, a                                       ; $49a6: $7f
    sub [hl]                                      ; $49a7: $96
    ld b, l                                       ; $49a8: $45
    nop                                           ; $49a9: $00
    nop                                           ; $49aa: $00
    cp $7f                                        ; $49ab: $fe $7f
    rra                                           ; $49ad: $1f
    nop                                           ; $49ae: $00
    rst $38                                       ; $49af: $ff
    ld a, a                                       ; $49b0: $7f
    nop                                           ; $49b1: $00
    nop                                           ; $49b2: $00
    rst $38                                       ; $49b3: $ff
    ld a, a                                       ; $49b4: $7f
    rra                                           ; $49b5: $1f
    nop                                           ; $49b6: $00
    rst $38                                       ; $49b7: $ff
    ld a, a                                       ; $49b8: $7f
    ld bc, $5f00                                  ; $49b9: $01 $00 $5f
    inc bc                                        ; $49bc: $03
    rst $18                                       ; $49bd: $df
    ld a, a                                       ; $49be: $7f
    sla b                                         ; $49bf: $cb $20
    ld [bc], a                                    ; $49c1: $02
    nop                                           ; $49c2: $00
    ld e, [hl]                                    ; $49c3: $5e
    nop                                           ; $49c4: $00
    jr c, jr_0d2_4a1d                             ; $49c5: $38 $56

    ld e, a                                       ; $49c7: $5f
    inc bc                                        ; $49c8: $03
    nop                                           ; $49c9: $00
    nop                                           ; $49ca: $00
    cp $7f                                        ; $49cb: $fe $7f
    rra                                           ; $49cd: $1f
    nop                                           ; $49ce: $00
    rst $38                                       ; $49cf: $ff
    ld a, a                                       ; $49d0: $7f
    nop                                           ; $49d1: $00
    nop                                           ; $49d2: $00
    cp $7f                                        ; $49d3: $fe $7f
    rra                                           ; $49d5: $1f
    nop                                           ; $49d6: $00
    inc bc                                        ; $49d7: $03
    nop                                           ; $49d8: $00
    ld b, [hl]                                    ; $49d9: $46
    db $10                                        ; $49da: $10
    ccf                                           ; $49db: $3f
    ld [bc], a                                    ; $49dc: $02
    sub l                                         ; $49dd: $95
    ld b, c                                       ; $49de: $41
    cp a                                          ; $49df: $bf
    ld a, a                                       ; $49e0: $7f
    ld [bc], a                                    ; $49e1: $02
    nop                                           ; $49e2: $00
    ld e, e                                       ; $49e3: $5b
    ld bc, $035f                                  ; $49e4: $01 $5f $03
    cp a                                          ; $49e7: $bf
    ld a, a                                       ; $49e8: $7f
    ld e, e                                       ; $49e9: $5b
    ld bc, $035f                                  ; $49ea: $01 $5f $03
    ld e, a                                       ; $49ed: $5f
    inc bc                                        ; $49ee: $03
    cp a                                          ; $49ef: $bf
    ld a, a                                       ; $49f0: $7f
    ld e, e                                       ; $49f1: $5b
    ld bc, $035f                                  ; $49f2: $01 $5f $03
    ld e, a                                       ; $49f5: $5f
    inc bc                                        ; $49f6: $03
    cp a                                          ; $49f7: $bf
    ld a, a                                       ; $49f8: $7f
    ld [bc], a                                    ; $49f9: $02
    nop                                           ; $49fa: $00
    ld e, e                                       ; $49fb: $5b
    ld bc, $035f                                  ; $49fc: $01 $5f $03
    cp a                                          ; $49ff: $bf
    ld a, a                                       ; $4a00: $7f
    ld [bc], a                                    ; $4a01: $02
    nop                                           ; $4a02: $00
    ld e, e                                       ; $4a03: $5b
    ld bc, $035f                                  ; $4a04: $01 $5f $03
    daa                                           ; $4a07: $27
    nop                                           ; $4a08: $00
    dec b                                         ; $4a09: $05
    nop                                           ; $4a0a: $00
    ld e, a                                       ; $4a0b: $5f
    inc bc                                        ; $4a0c: $03
    jr jr_0d2_4a6e                                ; $4a0d: $18 $5f

    rst $38                                       ; $4a0f: $ff
    ld a, a                                       ; $4a10: $7f
    dec b                                         ; $4a11: $05
    nop                                           ; $4a12: $00
    rst $30                                       ; $4a13: $f7
    ld e, [hl]                                    ; $4a14: $5e
    ld e, a                                       ; $4a15: $5f
    inc bc                                        ; $4a16: $03
    ld l, e                                       ; $4a17: $6b
    dec l                                         ; $4a18: $2d
    ld [bc], a                                    ; $4a19: $02
    nop                                           ; $4a1a: $00
    ld e, a                                       ; $4a1b: $5f
    inc bc                                        ; $4a1c: $03

jr_0d2_4a1d:
    daa                                           ; $4a1d: $27
    nop                                           ; $4a1e: $00
    ld l, e                                       ; $4a1f: $6b
    dec l                                         ; $4a20: $2d
    ld [bc], a                                    ; $4a21: $02
    nop                                           ; $4a22: $00
    ld e, e                                       ; $4a23: $5b
    ld bc, $035f                                  ; $4a24: $01 $5f $03
    daa                                           ; $4a27: $27
    nop                                           ; $4a28: $00
    nop                                           ; $4a29: $00
    nop                                           ; $4a2a: $00
    rst $38                                       ; $4a2b: $ff
    ld a, a                                       ; $4a2c: $7f
    ld l, e                                       ; $4a2d: $6b
    dec l                                         ; $4a2e: $2d
    daa                                           ; $4a2f: $27
    nop                                           ; $4a30: $00
    dec h                                         ; $4a31: $25
    inc b                                         ; $4a32: $04
    ld sp, $ff46                                  ; $4a33: $31 $46 $ff
    ld a, a                                       ; $4a36: $7f
    ld l, e                                       ; $4a37: $6b
    dec l                                         ; $4a38: $2d
    ld [bc], a                                    ; $4a39: $02
    nop                                           ; $4a3a: $00
    ld e, a                                       ; $4a3b: $5f
    inc bc                                        ; $4a3c: $03
    daa                                           ; $4a3d: $27
    nop                                           ; $4a3e: $00
    ld l, e                                       ; $4a3f: $6b
    dec l                                         ; $4a40: $2d
    ld [bc], a                                    ; $4a41: $02
    nop                                           ; $4a42: $00
    ld e, e                                       ; $4a43: $5b
    ld bc, $035f                                  ; $4a44: $01 $5f $03
    daa                                           ; $4a47: $27
    nop                                           ; $4a48: $00
    nop                                           ; $4a49: $00
    nop                                           ; $4a4a: $00
    or h                                          ; $4a4b: $b4
    ld d, [hl]                                    ; $4a4c: $56
    rst $38                                       ; $4a4d: $ff
    ld a, a                                       ; $4a4e: $7f
    daa                                           ; $4a4f: $27
    nop                                           ; $4a50: $00
    ld [bc], a                                    ; $4a51: $02
    nop                                           ; $4a52: $00
    ld sp, $4a46                                  ; $4a53: $31 $46 $4a
    add hl, hl                                    ; $4a56: $29
    rst $38                                       ; $4a57: $ff
    ld a, a                                       ; $4a58: $7f
    ld [bc], a                                    ; $4a59: $02
    nop                                           ; $4a5a: $00
    ld e, a                                       ; $4a5b: $5f
    inc bc                                        ; $4a5c: $03
    daa                                           ; $4a5d: $27
    nop                                           ; $4a5e: $00
    rst $38                                       ; $4a5f: $ff
    ld a, a                                       ; $4a60: $7f
    ld [bc], a                                    ; $4a61: $02
    nop                                           ; $4a62: $00
    ld e, e                                       ; $4a63: $5b
    ld bc, $0048                                  ; $4a64: $01 $48 $00
    ld e, a                                       ; $4a67: $5f
    inc bc                                        ; $4a68: $03
    nop                                           ; $4a69: $00
    nop                                           ; $4a6a: $00
    push de                                       ; $4a6b: $d5
    ld e, d                                       ; $4a6c: $5a
    ld c, d                                       ; $4a6d: $4a

jr_0d2_4a6e:
    add hl, hl                                    ; $4a6e: $29
    rst $38                                       ; $4a6f: $ff
    ld a, a                                       ; $4a70: $7f
    ld bc, $ef00                                  ; $4a71: $01 $00 $ef
    dec a                                         ; $4a74: $3d
    rst $38                                       ; $4a75: $ff
    ld a, a                                       ; $4a76: $7f
    ld [hl], e                                    ; $4a77: $73
    ld c, [hl]                                    ; $4a78: $4e
    ld [bc], a                                    ; $4a79: $02
    nop                                           ; $4a7a: $00
    ld e, a                                       ; $4a7b: $5f
    inc bc                                        ; $4a7c: $03
    ld b, a                                       ; $4a7d: $47
    nop                                           ; $4a7e: $00
    ld c, b                                       ; $4a7f: $48
    nop                                           ; $4a80: $00
    ld bc, $b500                                  ; $4a81: $01 $00 $b5
    ld d, [hl]                                    ; $4a84: $56
    ld e, l                                       ; $4a85: $5d
    ld [bc], a                                    ; $4a86: $02
    ld c, b                                       ; $4a87: $48
    nop                                           ; $4a88: $00
    nop                                           ; $4a89: $00
    nop                                           ; $4a8a: $00
    or $5e                                        ; $4a8b: $f6 $5e
    push bc                                       ; $4a8d: $c5
    jr jr_0d2_4aca                                ; $4a8e: $18 $3a

    ld [hl], $83                                  ; $4a90: $36 $83
    db $10                                        ; $4a92: $10
    cp b                                          ; $4a93: $b8
    ld d, d                                       ; $4a94: $52
    cp l                                          ; $4a95: $bd
    ld [hl], a                                    ; $4a96: $77
    add hl, hl                                    ; $4a97: $29
    dec h                                         ; $4a98: $25
    nop                                           ; $4a99: $00
    nop                                           ; $4a9a: $00
    ld e, a                                       ; $4a9b: $5f
    inc bc                                        ; $4a9c: $03
    ld c, b                                       ; $4a9d: $48
    nop                                           ; $4a9e: $00
    ld [bc], a                                    ; $4a9f: $02
    nop                                           ; $4aa0: $00
    ld bc, $b500                                  ; $4aa1: $01 $00 $b5
    ld d, [hl]                                    ; $4aa4: $56
    ld e, l                                       ; $4aa5: $5d
    ld [bc], a                                    ; $4aa6: $02
    ld l, b                                       ; $4aa7: $68
    nop                                           ; $4aa8: $00
    ld b, c                                       ; $4aa9: $41
    ld [$3a38], sp                                ; $4aaa: $08 $38 $3a
    sub $5a                                       ; $4aad: $d6 $5a
    ld e, a                                       ; $4aaf: $5f
    ld h, e                                       ; $4ab0: $63
    jr nz, @+$06                                  ; $4ab1: $20 $04

    jr c, jr_0d2_4aef                             ; $4ab3: $38 $3a

    ld [$8521], sp                                ; $4ab5: $08 $21 $85
    inc c                                         ; $4ab8: $0c
    nop                                           ; $4ab9: $00
    nop                                           ; $4aba: $00
    ld e, a                                       ; $4abb: $5f
    inc bc                                        ; $4abc: $03
    ld l, c                                       ; $4abd: $69
    nop                                           ; $4abe: $00
    ld [bc], a                                    ; $4abf: $02
    nop                                           ; $4ac0: $00
    ld bc, $5b00                                  ; $4ac1: $01 $00 $5b
    ld bc, $0089                                  ; $4ac4: $01 $89 $00
    ccf                                           ; $4ac7: $3f
    dec de                                        ; $4ac8: $1b
    add l                                         ; $4ac9: $85

jr_0d2_4aca:
    db $10                                        ; $4aca: $10
    ld e, a                                       ; $4acb: $5f
    ld h, e                                       ; $4acc: $63
    sub c                                         ; $4acd: $91
    dec l                                         ; $4ace: $2d
    jr @+$38                                      ; $4acf: $18 $36

    ld b, e                                       ; $4ad1: $43
    nop                                           ; $4ad2: $00
    jr jr_0d2_4b0b                                ; $4ad3: $18 $36

    ld l, a                                       ; $4ad5: $6f
    add hl, hl                                    ; $4ad6: $29
    ccf                                           ; $4ad7: $3f
    ld e, a                                       ; $4ad8: $5f
    ld [bc], a                                    ; $4ad9: $02
    nop                                           ; $4ada: $00
    ld e, a                                       ; $4adb: $5f
    inc bc                                        ; $4adc: $03
    adc c                                         ; $4add: $89
    nop                                           ; $4ade: $00
    xor d                                         ; $4adf: $aa
    nop                                           ; $4ae0: $00
    ld [bc], a                                    ; $4ae1: $02
    nop                                           ; $4ae2: $00
    ld e, l                                       ; $4ae3: $5d
    ld [bc], a                                    ; $4ae4: $02
    jp z, $9c00                                   ; $4ae5: $ca $00 $9c

    ld b, d                                       ; $4ae8: $42
    ld b, e                                       ; $4ae9: $43
    inc c                                         ; $4aea: $0c
    ld a, a                                       ; $4aeb: $7f
    ld l, e                                       ; $4aec: $6b
    and e                                         ; $4aed: $a3
    ld [hl], l                                    ; $4aee: $75

jr_0d2_4aef:
    sub c                                         ; $4aef: $91
    dec l                                         ; $4af0: $2d
    ld hl, $a310                                  ; $4af1: $21 $10 $a3
    ld [hl], l                                    ; $4af4: $75
    ld a, $5f                                     ; $4af5: $3e $5f
    jp z, Jump_000_020c                           ; $4af7: $ca $0c $02

    nop                                           ; $4afa: $00
    ld e, a                                       ; $4afb: $5f
    inc bc                                        ; $4afc: $03
    jp z, $cb00                                   ; $4afd: $ca $00 $cb

    nop                                           ; $4b00: $00
    ld [bc], a                                    ; $4b01: $02
    nop                                           ; $4b02: $00
    db $eb                                        ; $4b03: $eb
    nop                                           ; $4b04: $00
    ld e, e                                       ; $4b05: $5b
    ld bc, $035f                                  ; $4b06: $01 $5f $03
    and a                                         ; $4b09: $a7
    inc c                                         ; $4b0a: $0c

jr_0d2_4b0b:
    inc de                                        ; $4b0b: $13
    ld a, [hl-]                                   ; $4b0c: $3a
    ld e, a                                       ; $4b0d: $5f
    ld h, e                                       ; $4b0e: $63
    ld a, [hl-]                                   ; $4b0f: $3a
    ld [hl], $c9                                  ; $4b10: $36 $c9
    inc b                                         ; $4b12: $04
    ld a, [hl-]                                   ; $4b13: $3a
    ld [hl], $5f                                  ; $4b14: $36 $5f
    ld h, e                                       ; $4b16: $63
    dec l                                         ; $4b17: $2d
    dec e                                         ; $4b18: $1d
    ld [bc], a                                    ; $4b19: $02
    nop                                           ; $4b1a: $00
    ld e, a                                       ; $4b1b: $5f
    inc bc                                        ; $4b1c: $03
    rlc b                                         ; $4b1d: $cb $00
    db $eb                                        ; $4b1f: $eb
    nop                                           ; $4b20: $00
    ld [bc], a                                    ; $4b21: $02
    nop                                           ; $4b22: $00
    db $ec                                        ; $4b23: $ec
    nop                                           ; $4b24: $00
    ld e, e                                       ; $4b25: $5b
    ld bc, $035f                                  ; $4b26: $01 $5f $03
    xor b                                         ; $4b29: $a8
    inc c                                         ; $4b2a: $0c
    ld e, a                                       ; $4b2b: $5f
    ld h, e                                       ; $4b2c: $63
    rra                                           ; $4b2d: $1f
    nop                                           ; $4b2e: $00
    db $ec                                        ; $4b2f: $ec
    nop                                           ; $4b30: $00
    xor b                                         ; $4b31: $a8
    inc c                                         ; $4b32: $0c
    ld e, a                                       ; $4b33: $5f
    ld h, e                                       ; $4b34: $63
    db $ec                                        ; $4b35: $ec
    nop                                           ; $4b36: $00
    inc c                                         ; $4b37: $0c
    ld bc, $0002                                  ; $4b38: $01 $02 $00
    ld e, a                                       ; $4b3b: $5f
    inc bc                                        ; $4b3c: $03
    db $ec                                        ; $4b3d: $ec
    nop                                           ; $4b3e: $00
    inc c                                         ; $4b3f: $0c
    ld bc, $0002                                  ; $4b40: $01 $02 $00
    inc c                                         ; $4b43: $0c
    ld bc, $015b                                  ; $4b44: $01 $5b $01
    ld e, a                                       ; $4b47: $5f
    inc bc                                        ; $4b48: $03
    ld b, h                                       ; $4b49: $44
    inc c                                         ; $4b4a: $0c
    ld a, [hl-]                                   ; $4b4b: $3a
    ld [hl], $71                                  ; $4b4c: $36 $71
    nop                                           ; $4b4e: $00
    ld a, h                                       ; $4b4f: $7c
    ld l, e                                       ; $4b50: $6b
    nop                                           ; $4b51: $00
    nop                                           ; $4b52: $00
    ld a, [hl-]                                   ; $4b53: $3a
    ld [hl], $eb                                  ; $4b54: $36 $eb
    nop                                           ; $4b56: $00
    ld e, a                                       ; $4b57: $5f
    ld h, e                                       ; $4b58: $63
    ld [bc], a                                    ; $4b59: $02
    nop                                           ; $4b5a: $00
    ld e, a                                       ; $4b5b: $5f
    inc bc                                        ; $4b5c: $03
    inc c                                         ; $4b5d: $0c
    ld bc, $012d                                  ; $4b5e: $01 $2d $01
    ld bc, $4d00                                  ; $4b61: $01 $00 $4d
    ld bc, $015b                                  ; $4b64: $01 $5b $01
    ld e, a                                       ; $4b67: $5f
    inc bc                                        ; $4b68: $03
    inc h                                         ; $4b69: $24
    inc b                                         ; $4b6a: $04
    add hl, bc                                    ; $4b6b: $09
    ld l, d                                       ; $4b6c: $6a
    db $dd                                        ; $4b6d: $dd
    ld c, [hl]                                    ; $4b6e: $4e
    ld h, b                                       ; $4b6f: $60
    ld b, b                                       ; $4b70: $40
    ld b, h                                       ; $4b71: $44
    db $10                                        ; $4b72: $10
    rlca                                          ; $4b73: $07
    ld [hl], d                                    ; $4b74: $72
    sbc e                                         ; $4b75: $9b
    ld b, d                                       ; $4b76: $42
    dec l                                         ; $4b77: $2d
    ld bc, $0002                                  ; $4b78: $01 $02 $00
    ld e, a                                       ; $4b7b: $5f
    inc bc                                        ; $4b7c: $03
    dec l                                         ; $4b7d: $2d
    ld bc, HeaderComplementCheck                  ; $4b7e: $01 $4d $01
    ld bc, $8700                                  ; $4b81: $01 $00 $87
    ld e, c                                       ; $4b84: $59
    ld e, l                                       ; $4b85: $5d
    ld [bc], a                                    ; $4b86: $02
    ld c, [hl]                                    ; $4b87: $4e
    ld bc, $0844                                  ; $4b88: $01 $44 $08
    adc $7e                                       ; $4b8b: $ce $7e
    ld a, [hl-]                                   ; $4b8d: $3a
    ld [hl], $43                                  ; $4b8e: $36 $43
    ld d, l                                       ; $4b90: $55
    ld b, b                                       ; $4b91: $40
    inc h                                         ; $4b92: $24
    adc $7e                                       ; $4b93: $ce $7e
    xor d                                         ; $4b95: $aa
    nop                                           ; $4b96: $00
    ld a, [hl-]                                   ; $4b97: $3a
    ld [hl], $02                                  ; $4b98: $36 $02
    nop                                           ; $4b9a: $00
    ld e, a                                       ; $4b9b: $5f
    inc bc                                        ; $4b9c: $03
    ld c, [hl]                                    ; $4b9d: $4e
    ld bc, $016e                                  ; $4b9e: $01 $6e $01
    ld [bc], a                                    ; $4ba1: $02
    nop                                           ; $4ba2: $00
    ld d, e                                       ; $4ba3: $53
    ld bc, $035f                                  ; $4ba4: $01 $5f $03
    ld b, c                                       ; $4ba7: $41
    inc e                                         ; $4ba8: $1c
    ld hl, $ce1c                                  ; $4ba9: $21 $1c $ce
    ld a, [hl]                                    ; $4bac: $7e
    ld h, l                                       ; $4bad: $65
    ld d, c                                       ; $4bae: $51
    ld e, $57                                     ; $4baf: $1e $57
    ld [hl+], a                                   ; $4bb1: $22
    db $10                                        ; $4bb2: $10
    adc e                                         ; $4bb3: $8b
    ld a, [hl]                                    ; $4bb4: $7e
    ld a, [hl-]                                   ; $4bb5: $3a
    ld [hl], $80                                  ; $4bb6: $36 $80
    inc [hl]                                      ; $4bb8: $34
    nop                                           ; $4bb9: $00
    jr jr_0d2_4c2a                                ; $4bba: $18 $6e

    ld bc, $035f                                  ; $4bbc: $01 $5f $03
    ld [bc], a                                    ; $4bbf: $02
    nop                                           ; $4bc0: $00
    ld bc, $e800                                  ; $4bc1: $01 $00 $e8
    ld h, l                                       ; $4bc4: $65
    ld e, l                                       ; $4bc5: $5d
    ld [bc], a                                    ; $4bc6: $02
    jp $032c                                      ; $4bc7: $c3 $2c $03


    inc c                                         ; $4bca: $0c
    ret z                                         ; $4bcb: $c8

    ld h, c                                       ; $4bcc: $61
    sbc e                                         ; $4bcd: $9b
    ld b, d                                       ; $4bce: $42
    add c                                         ; $4bcf: $81
    inc l                                         ; $4bd0: $2c
    ld b, c                                       ; $4bd1: $41
    jr nz, jr_0d2_4bf6                            ; $4bd2: $20 $22

    ld c, l                                       ; $4bd4: $4d
    ld a, [hl-]                                   ; $4bd5: $3a
    ld [hl], $e9                                  ; $4bd6: $36 $e9
    ld h, l                                       ; $4bd8: $65
    ld [bc], a                                    ; $4bd9: $02
    nop                                           ; $4bda: $00
    ld e, a                                       ; $4bdb: $5f
    inc bc                                        ; $4bdc: $03
    rst $00                                       ; $4bdd: $c7
    ld e, l                                       ; $4bde: $5d
    pop bc                                        ; $4bdf: $c1
    jr c, jr_0d2_4be4                             ; $4be0: $38 $02

    nop                                           ; $4be2: $00
    ld e, e                                       ; $4be3: $5b

jr_0d2_4be4:
    ld bc, $035f                                  ; $4be4: $01 $5f $03
    pop bc                                        ; $4be7: $c1
    jr c, @+$5d                                   ; $4be8: $38 $5b

    ld bc, $035f                                  ; $4bea: $01 $5f $03
    ld e, a                                       ; $4bed: $5f
    inc bc                                        ; $4bee: $03
    pop bc                                        ; $4bef: $c1
    jr c, @+$5d                                   ; $4bf0: $38 $5b

    ld bc, $035f                                  ; $4bf2: $01 $5f $03
    ld e, a                                       ; $4bf5: $5f

jr_0d2_4bf6:
    inc bc                                        ; $4bf6: $03
    pop bc                                        ; $4bf7: $c1
    jr c, jr_0d2_4bfc                             ; $4bf8: $38 $02

    nop                                           ; $4bfa: $00
    ld e, e                                       ; $4bfb: $5b

jr_0d2_4bfc:
    ld bc, $035f                                  ; $4bfc: $01 $5f $03
    pop bc                                        ; $4bff: $c1
    jr c, @+$04                                   ; $4c00: $38 $02

    nop                                           ; $4c02: $00
    adc $5d                                       ; $4c03: $ce $5d
    ld e, a                                       ; $4c05: $5f
    inc bc                                        ; $4c06: $03
    ld e, b                                       ; $4c07: $58
    dec c                                         ; $4c08: $0d
    ld [bc], a                                    ; $4c09: $02
    nop                                           ; $4c0a: $00
    inc e                                         ; $4c0b: $1c
    ld h, $11                                     ; $4c0c: $26 $11
    add hl, de                                    ; $4c0e: $19
    ld e, a                                       ; $4c0f: $5f
    inc bc                                        ; $4c10: $03
    rst $28                                       ; $4c11: $ef
    db $10                                        ; $4c12: $10
    ld e, a                                       ; $4c13: $5f
    inc bc                                        ; $4c14: $03
    ld [hl], h                                    ; $4c15: $74
    dec e                                         ; $4c16: $1d
    ld sp, hl                                     ; $4c17: $f9
    ld hl, $0004                                  ; $4c18: $21 $04 $00
    inc e                                         ; $4c1b: $1c
    ld h, $ef                                     ; $4c1c: $26 $ef
    inc d                                         ; $4c1e: $14
    ld e, a                                       ; $4c1f: $5f
    inc bc                                        ; $4c20: $03
    ld [bc], a                                    ; $4c21: $02
    nop                                           ; $4c22: $00
    xor l                                         ; $4c23: $ad
    ld d, l                                       ; $4c24: $55
    dec a                                         ; $4c25: $3d
    ld b, $f0                                     ; $4c26: $06 $f0
    inc c                                         ; $4c28: $0c
    ld [bc], a                                    ; $4c29: $02

jr_0d2_4c2a:
    nop                                           ; $4c2a: $00
    ld [hl], h                                    ; $4c2b: $74
    add hl, hl                                    ; $4c2c: $29
    ldh a, [rNR10]                                ; $4c2d: $f0 $10
    inc e                                         ; $4c2f: $1c
    ld h, $02                                     ; $4c30: $26 $02
    nop                                           ; $4c32: $00
    rst $28                                       ; $4c33: $ef
    inc c                                         ; $4c34: $0c
    ld d, e                                       ; $4c35: $53
    dec e                                         ; $4c36: $1d
    inc e                                         ; $4c37: $1c
    ld h, $04                                     ; $4c38: $26 $04
    nop                                           ; $4c3a: $00
    ei                                            ; $4c3b: $fb
    ld hl, $10f0                                  ; $4c3c: $21 $f0 $10
    ld e, a                                       ; $4c3f: $5f
    inc bc                                        ; $4c40: $03
    ld [bc], a                                    ; $4c41: $02
    nop                                           ; $4c42: $00
    inc d                                         ; $4c43: $14
    ld de, $12bd                                  ; $4c44: $11 $bd $12
    ld b, a                                       ; $4c47: $47
    inc b                                         ; $4c48: $04
    ld bc, $5300                                  ; $4c49: $01 $00 $53
    ld hl, $25fb                                  ; $4c4c: $21 $fb $25
    daa                                           ; $4c4f: $27
    nop                                           ; $4c50: $00
    ld bc, $1100                                  ; $4c51: $01 $00 $11
    dec e                                         ; $4c54: $1d
    ei                                            ; $4c55: $fb
    dec h                                         ; $4c56: $25
    daa                                           ; $4c57: $27
    nop                                           ; $4c58: $00
    inc bc                                        ; $4c59: $03
    nop                                           ; $4c5a: $00
    inc e                                         ; $4c5b: $1c
    ld h, $ee                                     ; $4c5c: $26 $ee
    inc c                                         ; $4c5e: $0c
    ld e, a                                       ; $4c5f: $5f
    inc bc                                        ; $4c60: $03
    ld [bc], a                                    ; $4c61: $02
    nop                                           ; $4c62: $00
    ld de, $bd15                                  ; $4c63: $11 $15 $bd
    ld [de], a                                    ; $4c66: $12
    ld e, e                                       ; $4c67: $5b
    ld bc, $0003                                  ; $4c68: $01 $03 $00
    db $10                                        ; $4c6b: $10
    ld de, $21fb                                  ; $4c6c: $11 $fb $21
    ld d, d                                       ; $4c6f: $52
    ld hl, $0002                                  ; $4c70: $21 $02 $00
    ld sp, $fa25                                  ; $4c73: $31 $25 $fa
    dec h                                         ; $4c76: $25
    xor l                                         ; $4c77: $ad
    inc b                                         ; $4c78: $04
    ld [bc], a                                    ; $4c79: $02
    nop                                           ; $4c7a: $00
    ei                                            ; $4c7b: $fb
    add hl, hl                                    ; $4c7c: $29
    adc $14                                       ; $4c7d: $ce $14
    ld e, a                                       ; $4c7f: $5f
    inc bc                                        ; $4c80: $03
    ld [bc], a                                    ; $4c81: $02
    nop                                           ; $4c82: $00
    db $10                                        ; $4c83: $10
    ld de, $035f                                  ; $4c84: $11 $5f $03
    ld a, c                                       ; $4c87: $79
    dec d                                         ; $4c88: $15
    ld [bc], a                                    ; $4c89: $02
    nop                                           ; $4c8a: $00
    ld de, $9d0d                                  ; $4c8b: $11 $0d $9d
    ld a, [hl-]                                   ; $4c8e: $3a
    ld d, c                                       ; $4c8f: $51
    dec e                                         ; $4c90: $1d
    inc b                                         ; $4c91: $04
    nop                                           ; $4c92: $00
    ret c                                         ; $4c93: $d8

    ld hl, $46bd                                  ; $4c94: $21 $bd $46
    call z, Call_000_0410                         ; $4c97: $cc $10 $04
    nop                                           ; $4c9a: $00
    cp b                                          ; $4c9b: $b8
    dec h                                         ; $4c9c: $25
    ld e, a                                       ; $4c9d: $5f
    inc bc                                        ; $4c9e: $03
    db $ed                                        ; $4c9f: $ed
    ld [$0001], sp                                ; $4ca0: $08 $01 $00
    ld de, $9b15                                  ; $4ca3: $11 $15 $9b
    dec c                                         ; $4ca6: $0d
    ld e, a                                       ; $4ca7: $5f
    inc bc                                        ; $4ca8: $03
    dec b                                         ; $4ca9: $05
    nop                                           ; $4caa: $00
    ret c                                         ; $4cab: $d8

    dec h                                         ; $4cac: $25
    cp h                                          ; $4cad: $bc
    ld b, d                                       ; $4cae: $42
    xor l                                         ; $4caf: $ad
    inc b                                         ; $4cb0: $04
    ld b, [hl]                                    ; $4cb1: $46
    nop                                           ; $4cb2: $00
    ld a, d                                       ; $4cb3: $7a
    ld a, $8c                                     ; $4cb4: $3e $8c
    inc b                                         ; $4cb6: $04
    dec l                                         ; $4cb7: $2d
    dec e                                         ; $4cb8: $1d
    inc h                                         ; $4cb9: $24
    inc b                                         ; $4cba: $04
    ld [de], a                                    ; $4cbb: $12
    dec e                                         ; $4cbc: $1d
    ld e, a                                       ; $4cbd: $5f
    inc bc                                        ; $4cbe: $03
    ld a, [$0221]                                 ; $4cbf: $fa $21 $02
    nop                                           ; $4cc2: $00
    ld de, $9b15                                  ; $4cc3: $11 $15 $9b
    dec c                                         ; $4cc6: $0d
    ld e, a                                       ; $4cc7: $5f
    inc bc                                        ; $4cc8: $03
    xor d                                         ; $4cc9: $aa
    ld [$5dce], sp                                ; $4cca: $08 $ce $5d
    ld a, e                                       ; $4ccd: $7b
    ld a, [hl-]                                   ; $4cce: $3a
    dec sp                                        ; $4ccf: $3b
    ld h, a                                       ; $4cd0: $67
    nop                                           ; $4cd1: $00
    inc e                                         ; $4cd2: $1c
    jp nc, $3c3d                                  ; $4cd3: $d2 $3d $3c

    ld h, e                                       ; $4cd6: $63
    xor $0c                                       ; $4cd7: $ee $0c
    dec h                                         ; $4cd9: $25
    inc b                                         ; $4cda: $04
    adc a                                         ; $4cdb: $8f
    ld c, l                                       ; $4cdc: $4d
    inc e                                         ; $4cdd: $1c
    ld h, $5f                                     ; $4cde: $26 $5f
    inc bc                                        ; $4ce0: $03
    ld [bc], a                                    ; $4ce1: $02
    nop                                           ; $4ce2: $00
    db $10                                        ; $4ce3: $10
    ld de, $12bd                                  ; $4ce4: $11 $bd $12
    ld e, e                                       ; $4ce7: $5b
    ld bc, $0002                                  ; $4ce8: $01 $02 $00
    ld a, e                                       ; $4ceb: $7b
    ld a, [hl-]                                   ; $4cec: $3a
    call Call_000_1e08                            ; $4ced: $cd $08 $1e
    ld d, a                                       ; $4cf0: $57
    xor l                                         ; $4cf1: $ad
    inc b                                         ; $4cf2: $04
    db $fd                                        ; $4cf3: $fd
    ld d, d                                       ; $4cf4: $52
    ld d, d                                       ; $4cf5: $52
    add hl, de                                    ; $4cf6: $19
    or l                                          ; $4cf7: $b5
    add hl, hl                                    ; $4cf8: $29
    ld b, [hl]                                    ; $4cf9: $46
    inc b                                         ; $4cfa: $04
    adc $5d                                       ; $4cfb: $ce $5d
    ld e, a                                       ; $4cfd: $5f
    inc bc                                        ; $4cfe: $03
    ld [hl-], a                                   ; $4cff: $32
    ld hl, $0002                                  ; $4d00: $21 $02 $00
    db $10                                        ; $4d03: $10
    dec d                                         ; $4d04: $15
    cp l                                          ; $4d05: $bd
    ld [de], a                                    ; $4d06: $12
    ld e, e                                       ; $4d07: $5b
    ld bc, $00ab                                  ; $4d08: $01 $ab $00
    sbc h                                         ; $4d0b: $9c
    ld a, $1e                                     ; $4d0c: $3e $1e
    ld d, a                                       ; $4d0e: $57
    ld [hl], d                                    ; $4d0f: $72
    dec e                                         ; $4d10: $1d
    jr nc, jr_0d2_4d28                            ; $4d11: $30 $15

    sbc d                                         ; $4d13: $9a
    ld b, d                                       ; $4d14: $42
    cp $52                                        ; $4d15: $fe $52
    or $2d                                        ; $4d17: $f6 $2d
    inc h                                         ; $4d19: $24
    inc b                                         ; $4d1a: $04
    xor l                                         ; $4d1b: $ad
    ld e, c                                       ; $4d1c: $59
    ld e, a                                       ; $4d1d: $5f
    inc bc                                        ; $4d1e: $03
    ld sp, $0121                                  ; $4d1f: $31 $21 $01
    nop                                           ; $4d22: $00
    db $10                                        ; $4d23: $10
    ld de, $12bd                                  ; $4d24: $11 $bd $12
    ld e, e                                       ; $4d27: $5b

jr_0d2_4d28:
    ld bc, $0046                                  ; $4d28: $01 $46 $00
    sbc h                                         ; $4d2b: $9c
    ld a, $72                                     ; $4d2c: $3e $72
    dec e                                         ; $4d2e: $1d
    ld e, $57                                     ; $4d2f: $1e $57
    ld b, a                                       ; $4d31: $47
    nop                                           ; $4d32: $00
    scf                                           ; $4d33: $37
    ld a, [hl-]                                   ; $4d34: $3a
    ld e, $57                                     ; $4d35: $1e $57
    call $4610                                    ; $4d37: $cd $10 $46
    ld [$5dce], sp                                ; $4d3a: $08 $ce $5d
    ld e, a                                       ; $4d3d: $5f
    inc bc                                        ; $4d3e: $03
    ld [hl], h                                    ; $4d3f: $74
    ld hl, $0002                                  ; $4d40: $21 $02 $00
    ld de, $bb11                                  ; $4d43: $11 $11 $bb
    ld de, $035f                                  ; $4d46: $11 $5f $03
    dec h                                         ; $4d49: $25
    nop                                           ; $4d4a: $00
    ld a, h                                       ; $4d4b: $7c
    ld a, $53                                     ; $4d4c: $3e $53
    dec e                                         ; $4d4e: $1d
    ld e, $57                                     ; $4d4f: $1e $57
    ld b, a                                       ; $4d51: $47
    nop                                           ; $4d52: $00
    dec sp                                        ; $4d53: $3b
    ld a, $f0                                     ; $4d54: $3e $f0
    inc d                                         ; $4d56: $14
    inc [hl]                                      ; $4d57: $34
    ld hl, $0446                                  ; $4d58: $21 $46 $04
    xor l                                         ; $4d5b: $ad
    ld d, l                                       ; $4d5c: $55
    reti                                          ; $4d5d: $d9


    dec h                                         ; $4d5e: $25
    ld e, a                                       ; $4d5f: $5f
    inc bc                                        ; $4d60: $03
    ld [bc], a                                    ; $4d61: $02
    nop                                           ; $4d62: $00
    ldh a, [rNR14]                                ; $4d63: $f0 $14
    cp e                                          ; $4d65: $bb
    ld de, $035f                                  ; $4d66: $11 $5f $03
    inc b                                         ; $4d69: $04
    nop                                           ; $4d6a: $00
    cp h                                          ; $4d6b: $bc
    ld b, [hl]                                    ; $4d6c: $46
    ld [hl], d                                    ; $4d6d: $72
    dec e                                         ; $4d6e: $1d
    xor e                                         ; $4d6f: $ab
    nop                                           ; $4d70: $00
    daa                                           ; $4d71: $27
    nop                                           ; $4d72: $00
    ld sp, $3911                                  ; $4d73: $31 $11 $39
    ld a, $76                                     ; $4d76: $3e $76
    dec h                                         ; $4d78: $25
    ld [hl+], a                                   ; $4d79: $22
    inc b                                         ; $4d7a: $04
    cp l                                          ; $4d7b: $bd
    ld [de], a                                    ; $4d7c: $12
    ld [hl], c                                    ; $4d7d: $71
    add hl, sp                                    ; $4d7e: $39
    call z, Call_000_0214                         ; $4d7f: $cc $14 $02
    nop                                           ; $4d82: $00
    ld de, $bd19                                  ; $4d83: $11 $19 $bd
    ld [de], a                                    ; $4d86: $12
    ld e, e                                       ; $4d87: $5b
    ld bc, $0005                                  ; $4d88: $01 $05 $00
    ld d, c                                       ; $4d8b: $51
    add hl, de                                    ; $4d8c: $19
    sbc h                                         ; $4d8d: $9c
    ld a, $ab                                     ; $4d8e: $3e $ab
    nop                                           ; $4d90: $00
    dec b                                         ; $4d91: $05
    nop                                           ; $4d92: $00
    sbc h                                         ; $4d93: $9c
    ld a, $ee                                     ; $4d94: $3e $ee
    inc d                                         ; $4d96: $14
    ld de, $010d                                  ; $4d97: $11 $0d $01
    nop                                           ; $4d9a: $00
    adc l                                         ; $4d9b: $8d
    ld d, c                                       ; $4d9c: $51
    sbc $0e                                       ; $4d9d: $de $0e
    db $10                                        ; $4d9f: $10
    dec d                                         ; $4da0: $15
    ld [bc], a                                    ; $4da1: $02
    nop                                           ; $4da2: $00
    ld d, [hl]                                    ; $4da3: $56
    dec c                                         ; $4da4: $0d
    add hl, de                                    ; $4da5: $19
    ld h, e                                       ; $4da6: $63
    ld e, a                                       ; $4da7: $5f
    inc bc                                        ; $4da8: $03
    ld h, $00                                     ; $4da9: $26 $00
    sub l                                         ; $4dab: $95
    ld d, d                                       ; $4dac: $52
    ld [hl], d                                    ; $4dad: $72
    dec e                                         ; $4dae: $1d
    cp h                                          ; $4daf: $bc
    ld b, [hl]                                    ; $4db0: $46
    ld [bc], a                                    ; $4db1: $02
    nop                                           ; $4db2: $00
    rst $30                                       ; $4db3: $f7
    dec l                                         ; $4db4: $2d
    sbc h                                         ; $4db5: $9c
    ld [hl], e                                    ; $4db6: $73
    ldh a, [rNR10]                                ; $4db7: $f0 $10
    inc bc                                        ; $4db9: $03
    nop                                           ; $4dba: $00
    inc e                                         ; $4dbb: $1c
    ld h, $0e                                     ; $4dbc: $26 $0e
    add hl, de                                    ; $4dbe: $19
    ld e, a                                       ; $4dbf: $5f
    inc bc                                        ; $4dc0: $03
    ld [bc], a                                    ; $4dc1: $02
    nop                                           ; $4dc2: $00
    ld e, e                                       ; $4dc3: $5b
    ld bc, $5ad7                                  ; $4dc4: $01 $d7 $5a
    ld e, a                                       ; $4dc7: $5f
    inc bc                                        ; $4dc8: $03
    ld b, [hl]                                    ; $4dc9: $46
    nop                                           ; $4dca: $00
    ld e, a                                       ; $4dcb: $5f
    inc bc                                        ; $4dcc: $03
    cp h                                          ; $4dcd: $bc
    ld b, [hl]                                    ; $4dce: $46
    rst $38                                       ; $4dcf: $ff
    ld a, a                                       ; $4dd0: $7f
    inc h                                         ; $4dd1: $24
    inc b                                         ; $4dd2: $04
    ld e, a                                       ; $4dd3: $5f
    inc bc                                        ; $4dd4: $03
    ld a, e                                       ; $4dd5: $7b
    ld l, a                                       ; $4dd6: $6f
    ld [hl], e                                    ; $4dd7: $73
    dec h                                         ; $4dd8: $25
    ld [bc], a                                    ; $4dd9: $02
    nop                                           ; $4dda: $00
    inc e                                         ; $4ddb: $1c
    ld h, $52                                     ; $4ddc: $26 $52
    dec h                                         ; $4dde: $25
    ld e, a                                       ; $4ddf: $5f
    inc bc                                        ; $4de0: $03
    ld [bc], a                                    ; $4de1: $02
    nop                                           ; $4de2: $00
    ld e, e                                       ; $4de3: $5b
    ld bc, $2552                                  ; $4de4: $01 $52 $25
    ld e, a                                       ; $4de7: $5f
    inc bc                                        ; $4de8: $03
    ld [bc], a                                    ; $4de9: $02
    nop                                           ; $4dea: $00
    ld e, e                                       ; $4deb: $5b
    ld bc, $2552                                  ; $4dec: $01 $52 $25
    ld e, a                                       ; $4def: $5f
    inc bc                                        ; $4df0: $03
    ld [bc], a                                    ; $4df1: $02
    nop                                           ; $4df2: $00
    ld e, e                                       ; $4df3: $5b
    ld bc, $2552                                  ; $4df4: $01 $52 $25
    ld e, a                                       ; $4df7: $5f
    inc bc                                        ; $4df8: $03
    ld [bc], a                                    ; $4df9: $02
    nop                                           ; $4dfa: $00
    ld e, e                                       ; $4dfb: $5b
    ld bc, $2552                                  ; $4dfc: $01 $52 $25
    ld e, a                                       ; $4dff: $5f
    inc bc                                        ; $4e00: $03
    ld [bc], a                                    ; $4e01: $02
    nop                                           ; $4e02: $00
    sbc d                                         ; $4e03: $9a
    dec a                                         ; $4e04: $3d
    ld e, a                                       ; $4e05: $5f
    inc bc                                        ; $4e06: $03
    ld e, e                                       ; $4e07: $5b
    ld bc, $0402                                  ; $4e08: $01 $02 $04
    ld e, a                                       ; $4e0b: $5f
    inc bc                                        ; $4e0c: $03
    ld hl, sp+$5e                                 ; $4e0d: $f8 $5e
    sbc d                                         ; $4e0f: $9a
    dec a                                         ; $4e10: $3d
    ld [bc], a                                    ; $4e11: $02
    inc b                                         ; $4e12: $04
    ld e, a                                       ; $4e13: $5f
    inc bc                                        ; $4e14: $03
    ld hl, sp+$5e                                 ; $4e15: $f8 $5e
    sbc d                                         ; $4e17: $9a
    dec a                                         ; $4e18: $3d
    ld [bc], a                                    ; $4e19: $02
    nop                                           ; $4e1a: $00
    ld e, a                                       ; $4e1b: $5f
    inc bc                                        ; $4e1c: $03
    sbc d                                         ; $4e1d: $9a
    dec a                                         ; $4e1e: $3d
    sbc d                                         ; $4e1f: $9a
    dec a                                         ; $4e20: $3d
    ld [bc], a                                    ; $4e21: $02
    nop                                           ; $4e22: $00
    sbc d                                         ; $4e23: $9a
    dec a                                         ; $4e24: $3d
    ld e, e                                       ; $4e25: $5b
    ld bc, $035f                                  ; $4e26: $01 $5f $03
    ld [bc], a                                    ; $4e29: $02
    inc b                                         ; $4e2a: $04
    ld hl, sp+$5e                                 ; $4e2b: $f8 $5e
    sbc d                                         ; $4e2d: $9a
    dec a                                         ; $4e2e: $3d
    ld e, a                                       ; $4e2f: $5f
    inc bc                                        ; $4e30: $03
    ld [bc], a                                    ; $4e31: $02
    inc b                                         ; $4e32: $04
    ld hl, sp+$5e                                 ; $4e33: $f8 $5e
    sbc d                                         ; $4e35: $9a
    dec a                                         ; $4e36: $3d
    ld e, a                                       ; $4e37: $5f
    inc bc                                        ; $4e38: $03
    ld [bc], a                                    ; $4e39: $02
    nop                                           ; $4e3a: $00
    sbc d                                         ; $4e3b: $9a
    dec a                                         ; $4e3c: $3d
    ld e, a                                       ; $4e3d: $5f
    inc bc                                        ; $4e3e: $03
    ld [bc], a                                    ; $4e3f: $02
    inc b                                         ; $4e40: $04
    ld [bc], a                                    ; $4e41: $02
    nop                                           ; $4e42: $00
    sbc d                                         ; $4e43: $9a
    dec a                                         ; $4e44: $3d
    ld e, e                                       ; $4e45: $5b
    ld bc, $035f                                  ; $4e46: $01 $5f $03
    ld [bc], a                                    ; $4e49: $02
    inc b                                         ; $4e4a: $04
    ld hl, sp+$5e                                 ; $4e4b: $f8 $5e
    sbc d                                         ; $4e4d: $9a
    dec a                                         ; $4e4e: $3d
    ld e, a                                       ; $4e4f: $5f
    inc bc                                        ; $4e50: $03
    ld [bc], a                                    ; $4e51: $02
    inc b                                         ; $4e52: $04
    ld sp, $2946                                  ; $4e53: $31 $46 $29
    dec h                                         ; $4e56: $25
    ld hl, sp+$5e                                 ; $4e57: $f8 $5e
    ld [bc], a                                    ; $4e59: $02
    nop                                           ; $4e5a: $00
    cp b                                          ; $4e5b: $b8
    ld d, [hl]                                    ; $4e5c: $56
    ld e, a                                       ; $4e5d: $5f
    inc bc                                        ; $4e5e: $03
    add hl, hl                                    ; $4e5f: $29
    dec h                                         ; $4e60: $25
    ld [bc], a                                    ; $4e61: $02
    nop                                           ; $4e62: $00
    sbc d                                         ; $4e63: $9a
    dec a                                         ; $4e64: $3d
    ld e, e                                       ; $4e65: $5b
    ld bc, $035f                                  ; $4e66: $01 $5f $03
    ld [bc], a                                    ; $4e69: $02
    inc b                                         ; $4e6a: $04
    ld sp, $f846                                  ; $4e6b: $31 $46 $f8
    ld e, [hl]                                    ; $4e6e: $5e
    add h                                         ; $4e6f: $84
    stop                                          ; $4e70: $10 $00
    nop                                           ; $4e72: $00
    add hl, bc                                    ; $4e73: $09
    ld hl, $4631                                  ; $4e74: $21 $31 $46
    ld h, e                                       ; $4e77: $63
    inc c                                         ; $4e78: $0c
    nop                                           ; $4e79: $00
    nop                                           ; $4e7a: $00
    ld e, a                                       ; $4e7b: $5f
    inc bc                                        ; $4e7c: $03
    and l                                         ; $4e7d: $a5
    inc d                                         ; $4e7e: $14
    add hl, hl                                    ; $4e7f: $29
    dec h                                         ; $4e80: $25
    ld bc, $7800                                  ; $4e81: $01 $00 $78
    add hl, sp                                    ; $4e84: $39
    ld e, e                                       ; $4e85: $5b
    ld bc, $035f                                  ; $4e86: $01 $5f $03
    ld bc, $ff04                                  ; $4e89: $01 $04 $ff
    ld a, a                                       ; $4e8c: $7f
    xor h                                         ; $4e8d: $ac
    dec [hl]                                      ; $4e8e: $35
    ld d, e                                       ; $4e8f: $53
    ld a, [de]                                    ; $4e90: $1a
    nop                                           ; $4e91: $00
    nop                                           ; $4e92: $00
    rst $38                                       ; $4e93: $ff
    ld a, a                                       ; $4e94: $7f
    ld l, d                                       ; $4e95: $6a
    ld sp, $0caa                                  ; $4e96: $31 $aa $0c
    nop                                           ; $4e99: $00
    nop                                           ; $4e9a: $00
    inc a                                         ; $4e9b: $3c
    ld h, $de                                     ; $4e9c: $26 $de
    ld a, e                                       ; $4e9e: $7b
    xor h                                         ; $4e9f: $ac
    dec [hl]                                      ; $4ea0: $35
    ld [bc], a                                    ; $4ea1: $02
    nop                                           ; $4ea2: $00
    ld e, c                                       ; $4ea3: $59
    dec h                                         ; $4ea4: $25
    cp $4e                                        ; $4ea5: $fe $4e
    ld e, a                                       ; $4ea7: $5f
    inc bc                                        ; $4ea8: $03
    nop                                           ; $4ea9: $00
    nop                                           ; $4eaa: $00
    ld [de], a                                    ; $4eab: $12
    ld [hl], $ff                                  ; $4eac: $36 $ff
    ld a, a                                       ; $4eae: $7f
    ld e, a                                       ; $4eaf: $5f
    inc bc                                        ; $4eb0: $03
    nop                                           ; $4eb1: $00
    nop                                           ; $4eb2: $00
    xor l                                         ; $4eb3: $ad
    ld l, c                                       ; $4eb4: $69
    cp $4a                                        ; $4eb5: $fe $4a
    add [hl]                                      ; $4eb7: $86
    jr jr_0d2_4eba                                ; $4eb8: $18 $00

jr_0d2_4eba:
    nop                                           ; $4eba: $00
    ld e, h                                       ; $4ebb: $5c
    ld e, $ff                                     ; $4ebc: $1e $ff
    ld a, a                                       ; $4ebe: $7f
    ld c, d                                       ; $4ebf: $4a
    add hl, hl                                    ; $4ec0: $29
    ld [bc], a                                    ; $4ec1: $02
    nop                                           ; $4ec2: $00
    ld [hl], $2d                                  ; $4ec3: $36 $2d
    ld a, $1b                                     ; $4ec5: $3e $1b
    ld e, e                                       ; $4ec7: $5b
    ld bc, $0c86                                  ; $4ec8: $01 $86 $0c
    sub $5a                                       ; $4ecb: $d6 $5a
    rst $10                                       ; $4ecd: $d7
    dec h                                         ; $4ece: $25
    cp $4e                                        ; $4ecf: $fe $4e
    nop                                           ; $4ed1: $00
    nop                                           ; $4ed2: $00
    call nc, $fe2d                                ; $4ed3: $d4 $2d $fe
    ld c, [hl]                                    ; $4ed6: $4e
    xor d                                         ; $4ed7: $aa
    inc c                                         ; $4ed8: $0c
    ld bc, $ac00                                  ; $4ed9: $01 $00 $ac
    dec [hl]                                      ; $4edc: $35
    ld e, a                                       ; $4edd: $5f
    inc bc                                        ; $4ede: $03
    rla                                           ; $4edf: $17
    dec [hl]                                      ; $4ee0: $35
    ld [bc], a                                    ; $4ee1: $02
    nop                                           ; $4ee2: $00
    rla                                           ; $4ee3: $17
    ld hl, $52db                                  ; $4ee4: $21 $db $52
    ld e, a                                       ; $4ee7: $5f
    inc bc                                        ; $4ee8: $03
    nop                                           ; $4ee9: $00
    nop                                           ; $4eea: $00
    ld de, $ff3e                                  ; $4eeb: $11 $3e $ff
    ld a, a                                       ; $4eee: $7f
    rst $30                                       ; $4eef: $f7
    ld e, [hl]                                    ; $4ef0: $5e
    add a                                         ; $4ef1: $87
    ld [$5ef7], sp                                ; $4ef2: $08 $f7 $5e
    rst $30                                       ; $4ef5: $f7
    dec l                                         ; $4ef6: $2d
    cp $7f                                        ; $4ef7: $fe $7f
    ld [bc], a                                    ; $4ef9: $02
    nop                                           ; $4efa: $00
    or $30                                        ; $4efb: $f6 $30
    ld d, $63                                     ; $4efd: $16 $63
    ld e, a                                       ; $4eff: $5f
    inc bc                                        ; $4f00: $03
    ld [bc], a                                    ; $4f01: $02
    nop                                           ; $4f02: $00
    ld d, $21                                     ; $4f03: $16 $21
    ld e, a                                       ; $4f05: $5f
    inc bc                                        ; $4f06: $03
    adc b                                         ; $4f07: $88
    ld [$0420], sp                                ; $4f08: $08 $20 $04
    rst $38                                       ; $4f0b: $ff
    ld a, a                                       ; $4f0c: $7f
    sub h                                         ; $4f0d: $94
    ld hl, $4630                                  ; $4f0e: $21 $30 $46
    nop                                           ; $4f11: $00
    nop                                           ; $4f12: $00
    pop af                                        ; $4f13: $f1
    dec [hl]                                      ; $4f14: $35
    db $fd                                        ; $4f15: $fd
    ld a, a                                       ; $4f16: $7f
    add sp, $18                                   ; $4f17: $e8 $18
    add l                                         ; $4f19: $85
    db $10                                        ; $4f1a: $10
    ld e, a                                       ; $4f1b: $5f
    inc bc                                        ; $4f1c: $03
    cp h                                          ; $4f1d: $bc
    ld [hl], a                                    ; $4f1e: $77
    or l                                          ; $4f1f: $b5
    inc l                                         ; $4f20: $2c
    ld [bc], a                                    ; $4f21: $02
    nop                                           ; $4f22: $00
    sub h                                         ; $4f23: $94
    jr z, @+$5d                                   ; $4f24: $28 $5b

    ld bc, $035f                                  ; $4f26: $01 $5f $03
    nop                                           ; $4f29: $00
    nop                                           ; $4f2a: $00
    ld [hl-], a                                   ; $4f2b: $32
    ld b, d                                       ; $4f2c: $42
    ld e, [hl]                                    ; $4f2d: $5e
    ld e, a                                       ; $4f2e: $5f
    ld [hl-], a                                   ; $4f2f: $32
    dec d                                         ; $4f30: $15
    nop                                           ; $4f31: $00
    nop                                           ; $4f32: $00
    ld d, c                                       ; $4f33: $51
    ld c, d                                       ; $4f34: $4a
    ret z                                         ; $4f35: $c8

    jr jr_0d2_4f75                                ; $4f36: $18 $3d

    ld e, e                                       ; $4f38: $5b
    and [hl]                                      ; $4f39: $a6
    inc d                                         ; $4f3a: $14
    ld e, a                                       ; $4f3b: $5f
    inc bc                                        ; $4f3c: $03
    ld a, e                                       ; $4f3d: $7b
    ld l, a                                       ; $4f3e: $6f
    sub h                                         ; $4f3f: $94
    jr z, jr_0d2_4f44                             ; $4f40: $28 $02

    nop                                           ; $4f42: $00
    ld [hl], e                                    ; $4f43: $73

jr_0d2_4f44:
    inc h                                         ; $4f44: $24
    sbc c                                         ; $4f45: $99

jr_0d2_4f46:
    ld de, $035f                                  ; $4f46: $11 $5f $03
    ld bc, $f500                                  ; $4f49: $01 $00 $f5
    ld sp, $4edc                                  ; $4f4c: $31 $dc $4e
    add $18                                       ; $4f4f: $c6 $18
    add $18                                       ; $4f51: $c6 $18
    jr jr_0d2_4fb8                                ; $4f53: $18 $63

    sbc $7b                                       ; $4f55: $de $7b
    ld [hl], e                                    ; $4f57: $73
    jr z, jr_0d2_4f5a                             ; $4f58: $28 $00

jr_0d2_4f5a:
    nop                                           ; $4f5a: $00
    ld d, c                                       ; $4f5b: $51
    ld c, d                                       ; $4f5c: $4a
    ld e, a                                       ; $4f5d: $5f
    inc bc                                        ; $4f5e: $03
    ld [hl], d                                    ; $4f5f: $72
    inc h                                         ; $4f60: $24
    ld [bc], a                                    ; $4f61: $02
    nop                                           ; $4f62: $00
    or $18                                        ; $4f63: $f6 $18
    dec a                                         ; $4f65: $3d
    inc hl                                        ; $4f66: $23
    ld h, $29                                     ; $4f67: $26 $29
    ld h, a                                       ; $4f69: $67
    ld [$25d8], sp                                ; $4f6a: $08 $d8 $25
    jp c, $e752                                   ; $4f6d: $da $52 $e7

    inc e                                         ; $4f70: $1c
    add $18                                       ; $4f71: $c6 $18
    sub h                                         ; $4f73: $94
    ld d, d                                       ; $4f74: $52

jr_0d2_4f75:
    rst $28                                       ; $4f75: $ef
    dec a                                         ; $4f76: $3d
    sbc h                                         ; $4f77: $9c
    ld [hl], e                                    ; $4f78: $73
    ld [bc], a                                    ; $4f79: $02
    nop                                           ; $4f7a: $00
    ld e, a                                       ; $4f7b: $5f
    inc bc                                        ; $4f7c: $03
    ld d, d                                       ; $4f7d: $52
    jr nz, jr_0d2_4f46                            ; $4f7e: $20 $c6

    jr jr_0d2_4f83                                ; $4f80: $18 $01

    nop                                           ; $4f82: $00

jr_0d2_4f83:
    ld a, d                                       ; $4f83: $7a
    dec c                                         ; $4f84: $0d
    ld a, h                                       ; $4f85: $7c
    ld [hl], e                                    ; $4f86: $73
    ld e, a                                       ; $4f87: $5f
    inc bc                                        ; $4f88: $03
    push bc                                       ; $4f89: $c5
    inc e                                         ; $4f8a: $1c
    ret c                                         ; $4f8b: $d8

    dec h                                         ; $4f8c: $25
    cp $4e                                        ; $4f8d: $fe $4e
    add $18                                       ; $4f8f: $c6 $18
    ld hl, $5204                                  ; $4f91: $21 $04 $52
    ld c, d                                       ; $4f94: $4a
    cp l                                          ; $4f95: $bd
    ld [hl], a                                    ; $4f96: $77
    ld [$0221], sp                                ; $4f97: $08 $21 $02
    nop                                           ; $4f9a: $00
    ld e, a                                       ; $4f9b: $5f
    inc bc                                        ; $4f9c: $03
    ld sp, $c620                                  ; $4f9d: $31 $20 $c6
    jr jr_0d2_4fa4                                ; $4fa0: $18 $02

    nop                                           ; $4fa2: $00
    ld e, a                                       ; $4fa3: $5f

jr_0d2_4fa4:
    inc bc                                        ; $4fa4: $03
    sbc l                                         ; $4fa5: $9d
    ld [hl], a                                    ; $4fa6: $77
    ld e, e                                       ; $4fa7: $5b
    ld bc, $0400                                  ; $4fa8: $01 $00 $04
    ret c                                         ; $4fab: $d8

    dec h                                         ; $4fac: $25
    db $fc                                        ; $4fad: $fc
    ld e, d                                       ; $4fae: $5a
    rst $38                                       ; $4faf: $ff
    ld a, a                                       ; $4fb0: $7f
    nop                                           ; $4fb1: $00
    nop                                           ; $4fb2: $00
    ld sp, $bd46                                  ; $4fb3: $31 $46 $bd
    ld [hl], a                                    ; $4fb6: $77
    rst $00                                       ; $4fb7: $c7

jr_0d2_4fb8:
    jr jr_0d2_4fbc                                ; $4fb8: $18 $02

    nop                                           ; $4fba: $00
    ld e, a                                       ; $4fbb: $5f

jr_0d2_4fbc:
    inc bc                                        ; $4fbc: $03
    ld sp, $c620                                  ; $4fbd: $31 $20 $c6
    jr jr_0d2_4fc3                                ; $4fc0: $18 $01

    nop                                           ; $4fc2: $00

jr_0d2_4fc3:
    adc l                                         ; $4fc3: $8d
    dec [hl]                                      ; $4fc4: $35
    ld e, e                                       ; $4fc5: $5b
    ld l, e                                       ; $4fc6: $6b
    ld e, l                                       ; $4fc7: $5d
    ld [bc], a                                    ; $4fc8: $02
    nop                                           ; $4fc9: $00
    nop                                           ; $4fca: $00
    ld a, [de]                                    ; $4fcb: $1a
    ld h, a                                       ; $4fcc: $67
    ld c, e                                       ; $4fcd: $4b
    dec l                                         ; $4fce: $2d
    rst $38                                       ; $4fcf: $ff
    ld a, a                                       ; $4fd0: $7f
    nop                                           ; $4fd1: $00
    nop                                           ; $4fd2: $00
    add hl, sp                                    ; $4fd3: $39
    ld h, a                                       ; $4fd4: $67
    ld sp, $a620                                  ; $4fd5: $31 $20 $a6
    inc d                                         ; $4fd8: $14
    ld [bc], a                                    ; $4fd9: $02
    nop                                           ; $4fda: $00
    ld e, a                                       ; $4fdb: $5f
    inc bc                                        ; $4fdc: $03
    ld sp, $a620                                  ; $4fdd: $31 $20 $a6
    inc d                                         ; $4fe0: $14
    ld [bc], a                                    ; $4fe1: $02
    nop                                           ; $4fe2: $00
    ld e, e                                       ; $4fe3: $5b
    ld bc, $035f                                  ; $4fe4: $01 $5f $03
    and [hl]                                      ; $4fe7: $a6
    inc d                                         ; $4fe8: $14
    ld e, e                                       ; $4fe9: $5b
    ld bc, $035f                                  ; $4fea: $01 $5f $03
    ld e, a                                       ; $4fed: $5f
    inc bc                                        ; $4fee: $03
    and [hl]                                      ; $4fef: $a6
    inc d                                         ; $4ff0: $14
    ld e, e                                       ; $4ff1: $5b
    ld bc, $035f                                  ; $4ff2: $01 $5f $03
    ld e, a                                       ; $4ff5: $5f
    inc bc                                        ; $4ff6: $03
    and [hl]                                      ; $4ff7: $a6
    inc d                                         ; $4ff8: $14
    ld [bc], a                                    ; $4ff9: $02
    nop                                           ; $4ffa: $00
    ld e, e                                       ; $4ffb: $5b
    ld bc, $035f                                  ; $4ffc: $01 $5f $03
    and [hl]                                      ; $4fff: $a6
    inc d                                         ; $5000: $14
    ld bc, $5b30                                  ; $5001: $01 $30 $5b
    ld bc, $0002                                  ; $5004: $01 $02 $00
    ld e, a                                       ; $5007: $5f
    inc bc                                        ; $5008: $03
    ld bc, $5f30                                  ; $5009: $01 $30 $5f
    inc bc                                        ; $500c: $03
    ld h, h                                       ; $500d: $64
    inc b                                         ; $500e: $04
    ld e, a                                       ; $500f: $5f
    inc bc                                        ; $5010: $03
    ld bc, $5f30                                  ; $5011: $01 $30 $5f
    inc bc                                        ; $5014: $03
    ld h, h                                       ; $5015: $64
    inc b                                         ; $5016: $04
    and l                                         ; $5017: $a5
    inc b                                         ; $5018: $04
    ld bc, $5f30                                  ; $5019: $01 $30 $5f
    inc bc                                        ; $501c: $03
    ld [bc], a                                    ; $501d: $02
    nop                                           ; $501e: $00
    and l                                         ; $501f: $a5
    inc b                                         ; $5020: $04
    ld bc, $5b30                                  ; $5021: $01 $30 $5b
    ld bc, $0002                                  ; $5024: $01 $02 $00
    ld e, a                                       ; $5027: $5f
    inc bc                                        ; $5028: $03
    ld bc, $d730                                  ; $5029: $01 $30 $d7
    ld l, $85                                     ; $502c: $2e $85
    inc b                                         ; $502e: $04
    sbc $37                                       ; $502f: $de $37
    ld [hl+], a                                   ; $5031: $22
    db $10                                        ; $5032: $10
    or [hl]                                       ; $5033: $b6
    ld [hl+], a                                   ; $5034: $22
    rst $08                                       ; $5035: $cf
    dec e                                         ; $5036: $1d
    sbc $37                                       ; $5037: $de $37
    ld bc, $5f30                                  ; $5039: $01 $30 $5f
    inc bc                                        ; $503c: $03
    ld [bc], a                                    ; $503d: $02
    nop                                           ; $503e: $00
    sbc $37                                       ; $503f: $de $37
    ld bc, $5b30                                  ; $5041: $01 $30 $5b
    ld bc, $0002                                  ; $5044: $01 $02 $00
    ld a, a                                       ; $5047: $7f
    rla                                           ; $5048: $17
    ld b, e                                       ; $5049: $43
    inc b                                         ; $504a: $04
    ld e, h                                       ; $504b: $5c
    daa                                           ; $504c: $27
    xor [hl]                                      ; $504d: $ae
    dec d                                         ; $504e: $15
    rst $38                                       ; $504f: $ff
    scf                                           ; $5050: $37
    ld b, e                                       ; $5051: $43
    inc b                                         ; $5052: $04
    ld d, d                                       ; $5053: $52
    ld d, $bd                                     ; $5054: $16 $bd
    inc sp                                        ; $5056: $33
    ld c, d                                       ; $5057: $4a
    ld de, $3001                                  ; $5058: $11 $01 $30
    ld e, a                                       ; $505b: $5f
    inc bc                                        ; $505c: $03
    ld [bc], a                                    ; $505d: $02
    nop                                           ; $505e: $00
    ld h, h                                       ; $505f: $64
    inc b                                         ; $5060: $04
    ld [bc], a                                    ; $5061: $02
    nop                                           ; $5062: $00
    ld e, e                                       ; $5063: $5b
    ld bc, $275c                                  ; $5064: $01 $5c $27
    ld hl, $6430                                  ; $5067: $21 $30 $64
    inc b                                         ; $506a: $04
    ldh a, [rNR11]                                ; $506b: $f0 $11
    or l                                          ; $506d: $b5
    ld a, [de]                                    ; $506e: $1a
    sbc $2f                                       ; $506f: $de $2f
    add l                                         ; $5071: $85
    inc b                                         ; $5072: $04
    jr jr_0d2_5098                                ; $5073: $18 $23

    ld de, $de16                                  ; $5075: $11 $16 $de
    inc sp                                        ; $5078: $33
    inc hl                                        ; $5079: $23
    nop                                           ; $507a: $00
    ld de, $7e22                                  ; $507b: $11 $22 $7e
    dec de                                        ; $507e: $1b
    ld hl, $0230                                  ; $507f: $21 $30 $02
    nop                                           ; $5082: $00
    or [hl]                                       ; $5083: $b6
    add hl, bc                                    ; $5084: $09
    ld e, h                                       ; $5085: $5c
    rla                                           ; $5086: $17
    rst $38                                       ; $5087: $ff
    ld b, a                                       ; $5088: $47
    ld b, e                                       ; $5089: $43
    nop                                           ; $508a: $00
    dec bc                                        ; $508b: $0b
    dec c                                         ; $508c: $0d
    and a                                         ; $508d: $a7
    ld [$0def], sp                                ; $508e: $08 $ef $0d
    ld hl, $ad00                                  ; $5091: $21 $00 $ad
    dec c                                         ; $5094: $0d
    or l                                          ; $5095: $b5
    ld a, [de]                                    ; $5096: $1a
    add h                                         ; $5097: $84

jr_0d2_5098:
    inc b                                         ; $5098: $04
    inc hl                                        ; $5099: $23
    nop                                           ; $509a: $00
    ld e, a                                       ; $509b: $5f
    inc bc                                        ; $509c: $03
    ld a, e                                       ; $509d: $7b
    cpl                                           ; $509e: $2f
    ld b, d                                       ; $509f: $42
    inc [hl]                                      ; $50a0: $34
    ld [bc], a                                    ; $50a1: $02
    nop                                           ; $50a2: $00
    sub $11                                       ; $50a3: $d6 $11
    ld a, a                                       ; $50a5: $7f
    rrca                                          ; $50a6: $0f
    push bc                                       ; $50a7: $c5
    jr nz, jr_0d2_50ef                            ; $50a8: $20 $45

    ld [$4abd], sp                                ; $50aa: $08 $bd $4a
    xor $14                                       ; $50ad: $ee $14
    ld [hl], e                                    ; $50af: $73
    dec h                                         ; $50b0: $25
    add l                                         ; $50b1: $85
    inc b                                         ; $50b2: $04
    ld d, d                                       ; $50b3: $52
    ld hl, $52fe                                  ; $50b4: $21 $fe $52
    ld d, c                                       ; $50b7: $51
    ld [de], a                                    ; $50b8: $12
    ld [hl+], a                                   ; $50b9: $22
    nop                                           ; $50ba: $00
    sbc a                                         ; $50bb: $9f
    inc hl                                        ; $50bc: $23
    xor [hl]                                      ; $50bd: $ae
    ld de, $3862                                  ; $50be: $11 $62 $38
    ld [bc], a                                    ; $50c1: $02
    nop                                           ; $50c2: $00
    call nc, $5f0d                                ; $50c3: $d4 $0d $5f
    inc bc                                        ; $50c6: $03
    add e                                         ; $50c7: $83
    inc a                                         ; $50c8: $3c
    add h                                         ; $50c9: $84
    nop                                           ; $50ca: $00
    cp $52                                        ; $50cb: $fe $52
    ld l, h                                       ; $50cd: $6c
    add hl, bc                                    ; $50ce: $09
    db $10                                        ; $50cf: $10
    add hl, de                                    ; $50d0: $19
    and h                                         ; $50d1: $a4
    nop                                           ; $50d2: $00
    cp $52                                        ; $50d3: $fe $52
    ld l, h                                       ; $50d5: $6c
    add hl, bc                                    ; $50d6: $09
    ld [hl], b                                    ; $50d7: $70
    dec e                                         ; $50d8: $1d
    ld [hl+], a                                   ; $50d9: $22
    nop                                           ; $50da: $00
    jr jr_0d2_5100                                ; $50db: $18 $23

    push bc                                       ; $50dd: $c5
    inc l                                         ; $50de: $2c
    ld e, a                                       ; $50df: $5f
    inc bc                                        ; $50e0: $03
    ld [bc], a                                    ; $50e1: $02
    nop                                           ; $50e2: $00
    ld e, e                                       ; $50e3: $5b
    ld bc, $40a3                                  ; $50e4: $01 $a3 $40
    dec a                                         ; $50e7: $3d
    dec bc                                        ; $50e8: $0b
    and e                                         ; $50e9: $a3
    nop                                           ; $50ea: $00
    halt                                          ; $50eb: $76
    ld e, $fe                                     ; $50ec: $1e $fe
    ld d, d                                       ; $50ee: $52

jr_0d2_50ef:
    ld l, h                                       ; $50ef: $6c
    add hl, bc                                    ; $50f0: $09
    add e                                         ; $50f1: $83
    nop                                           ; $50f2: $00
    ld [hl], d                                    ; $50f3: $72
    ld hl, $16b5                                  ; $50f4: $21 $b5 $16
    sbc h                                         ; $50f7: $9c
    ld b, [hl]                                    ; $50f8: $46
    ld [hl+], a                                   ; $50f9: $22
    nop                                           ; $50fa: $00
    db $dd                                        ; $50fb: $dd
    ld c, [hl]                                    ; $50fc: $4e
    push bc                                       ; $50fd: $c5
    jr c, jr_0d2_515f                             ; $50fe: $38 $5f

jr_0d2_5100:
    inc bc                                        ; $5100: $03
    ld [bc], a                                    ; $5101: $02
    nop                                           ; $5102: $00
    ld e, e                                       ; $5103: $5b
    ld bc, $40c3                                  ; $5104: $01 $c3 $40
    ld e, a                                       ; $5107: $5f
    inc bc                                        ; $5108: $03
    ld b, e                                       ; $5109: $43
    nop                                           ; $510a: $00
    cp $52                                        ; $510b: $fe $52
    ld b, e                                       ; $510d: $43
    ld e, b                                       ; $510e: $58
    sbc e                                         ; $510f: $9b
    ld a, e                                       ; $5110: $7b
    ld h, h                                       ; $5111: $64
    inc c                                         ; $5112: $0c
    sbc e                                         ; $5113: $9b
    ld b, d                                       ; $5114: $42
    cp h                                          ; $5115: $bc
    ld a, e                                       ; $5116: $7b
    ld b, e                                       ; $5117: $43
    ld e, b                                       ; $5118: $58
    ld b, d                                       ; $5119: $42
    nop                                           ; $511a: $00
    ld e, $1b                                     ; $511b: $1e $1b
    jp $0b44                                      ; $511d: $c3 $44 $0b


    ld hl, $0002                                  ; $5120: $21 $02 $00
    call nz, Call_0d2_5b44                        ; $5123: $c4 $44 $5b
    ld bc, $035f                                  ; $5126: $01 $5f $03
    inc hl                                        ; $5129: $23
    inc b                                         ; $512a: $04
    cp h                                          ; $512b: $bc
    ld c, d                                       ; $512c: $4a
    db $e4                                        ; $512d: $e4
    ld c, b                                       ; $512e: $48
    ld d, d                                       ; $512f: $52
    ld hl, $2573                                  ; $5130: $21 $73 $25
    cp $52                                        ; $5133: $fe $52
    or $2d                                        ; $5135: $f6 $2d
    jr jr_0d2_516f                                ; $5137: $18 $36

    ld h, h                                       ; $5139: $64
    nop                                           ; $513a: $00
    db $dd                                        ; $513b: $dd
    ld c, [hl]                                    ; $513c: $4e
    call nz, Call_0d2_5f44                        ; $513d: $c4 $44 $5f
    inc bc                                        ; $5140: $03
    ld [bc], a                                    ; $5141: $02
    nop                                           ; $5142: $00
    db $e4                                        ; $5143: $e4
    ld c, b                                       ; $5144: $48
    ld e, e                                       ; $5145: $5b
    ld bc, $035f                                  ; $5146: $01 $5f $03
    ld b, a                                       ; $5149: $47
    ld [$3618], sp                                ; $514a: $08 $18 $36
    db $e4                                        ; $514d: $e4
    ld c, b                                       ; $514e: $48
    cp $52                                        ; $514f: $fe $52
    ld d, c                                       ; $5151: $51
    ld hl, $427b                                  ; $5152: $21 $7b $42
    or $2d                                        ; $5155: $f6 $2d
    cp $52                                        ; $5157: $fe $52
    ld [bc], a                                    ; $5159: $02
    nop                                           ; $515a: $00
    ld e, a                                       ; $515b: $5f
    inc bc                                        ; $515c: $03
    inc b                                         ; $515d: $04
    ld c, c                                       ; $515e: $49

jr_0d2_515f:
    ld h, [hl]                                    ; $515f: $66
    ld [$0002], sp                                ; $5160: $08 $02 $00
    dec b                                         ; $5163: $05
    ld c, l                                       ; $5164: $4d
    ld e, e                                       ; $5165: $5b
    ld bc, $035f                                  ; $5166: $01 $5f $03
    dec h                                         ; $5169: $25
    inc b                                         ; $516a: $04
    jr c, jr_0d2_51a3                             ; $516b: $38 $36

    dec h                                         ; $516d: $25
    ld c, l                                       ; $516e: $4d

jr_0d2_516f:
    cp $52                                        ; $516f: $fe $52
    dec h                                         ; $5171: $25
    inc b                                         ; $5172: $04
    or $2d                                        ; $5173: $f6 $2d
    db $dd                                        ; $5175: $dd
    ld c, [hl]                                    ; $5176: $4e
    ld d, c                                       ; $5177: $51
    ld hl, $0002                                  ; $5178: $21 $02 $00
    ld e, a                                       ; $517b: $5f
    inc bc                                        ; $517c: $03
    dec b                                         ; $517d: $05
    ld c, l                                       ; $517e: $4d
    ld c, [hl]                                    ; $517f: $4e
    ld [$0002], sp                                ; $5180: $08 $02 $00
    dec h                                         ; $5183: $25
    ld d, c                                       ; $5184: $51
    ld e, e                                       ; $5185: $5b
    ld bc, $035f                                  ; $5186: $01 $5f $03
    dec h                                         ; $5189: $25
    ld d, c                                       ; $518a: $51
    db $dd                                        ; $518b: $dd
    ld c, [hl]                                    ; $518c: $4e
    ld c, b                                       ; $518d: $48
    ld [$1d30], sp                                ; $518e: $08 $30 $1d
    dec b                                         ; $5191: $05
    inc b                                         ; $5192: $04
    or $2d                                        ; $5193: $f6 $2d
    ld d, c                                       ; $5195: $51
    ld hl, $4abd                                  ; $5196: $21 $bd $4a
    ld h, $04                                     ; $5199: $26 $04
    sbc c                                         ; $519b: $99
    inc d                                         ; $519c: $14
    dec h                                         ; $519d: $25
    ld d, c                                       ; $519e: $51
    ld e, a                                       ; $519f: $5f
    inc bc                                        ; $51a0: $03
    ld [bc], a                                    ; $51a1: $02
    nop                                           ; $51a2: $00

jr_0d2_51a3:
    ld b, l                                       ; $51a3: $45
    ld d, l                                       ; $51a4: $55
    ld e, e                                       ; $51a5: $5b
    ld bc, $035f                                  ; $51a6: $01 $5f $03
    ld h, $04                                     ; $51a9: $26 $04
    ei                                            ; $51ab: $fb
    inc e                                         ; $51ac: $1c
    ldh a, [rNR23]                                ; $51ad: $f0 $18
    ld a, e                                       ; $51af: $7b
    ld b, d                                       ; $51b0: $42
    dec b                                         ; $51b1: $05
    inc b                                         ; $51b2: $04
    cpl                                           ; $51b3: $2f
    dec e                                         ; $51b4: $1d
    add hl, sp                                    ; $51b5: $39
    ld a, [hl-]                                   ; $51b6: $3a
    ld c, $08                                     ; $51b7: $0e $08
    ld b, $00                                     ; $51b9: $06 $00
    cp h                                          ; $51bb: $bc
    jr jr_0d2_521d                                ; $51bc: $18 $5f

    inc bc                                        ; $51be: $03
    ld b, l                                       ; $51bf: $45
    ld d, l                                       ; $51c0: $55
    ld [bc], a                                    ; $51c1: $02
    nop                                           ; $51c2: $00
    ld h, [hl]                                    ; $51c3: $66
    ld e, c                                       ; $51c4: $59
    ld e, l                                       ; $51c5: $5d
    ld [bc], a                                    ; $51c6: $02
    rlca                                          ; $51c7: $07
    nop                                           ; $51c8: $00
    dec h                                         ; $51c9: $25
    inc b                                         ; $51ca: $04
    ld d, h                                       ; $51cb: $54
    db $10                                        ; $51cc: $10
    dec c                                         ; $51cd: $0d
    ld [$18ba], sp                                ; $51ce: $08 $ba $18
    dec h                                         ; $51d1: $25
    inc b                                         ; $51d2: $04
    jr nc, jr_0d2_51f2                            ; $51d3: $30 $1d

    dec c                                         ; $51d5: $0d
    ld [$31b5], sp                                ; $51d6: $08 $b5 $31
    inc b                                         ; $51d9: $04
    nop                                           ; $51da: $00
    rst $18                                       ; $51db: $df
    inc e                                         ; $51dc: $1c
    inc sp                                        ; $51dd: $33
    inc c                                         ; $51de: $0c
    ld e, a                                       ; $51df: $5f
    inc bc                                        ; $51e0: $03
    ld [bc], a                                    ; $51e1: $02
    nop                                           ; $51e2: $00
    ld e, e                                       ; $51e3: $5b
    ld bc, $035f                                  ; $51e4: $01 $5f $03
    ld e, a                                       ; $51e7: $5f
    inc bc                                        ; $51e8: $03
    ld e, e                                       ; $51e9: $5b
    ld bc, $035f                                  ; $51ea: $01 $5f $03
    ld e, a                                       ; $51ed: $5f
    inc bc                                        ; $51ee: $03
    ld e, a                                       ; $51ef: $5f
    inc bc                                        ; $51f0: $03
    ld e, e                                       ; $51f1: $5b

jr_0d2_51f2:
    ld bc, $035f                                  ; $51f2: $01 $5f $03
    ld e, a                                       ; $51f5: $5f
    inc bc                                        ; $51f6: $03
    ld e, a                                       ; $51f7: $5f
    inc bc                                        ; $51f8: $03
    ld [bc], a                                    ; $51f9: $02
    nop                                           ; $51fa: $00
    ld e, e                                       ; $51fb: $5b
    ld bc, $035f                                  ; $51fc: $01 $5f $03
    ld e, a                                       ; $51ff: $5f
    inc bc                                        ; $5200: $03
    ld [bc], a                                    ; $5201: $02
    nop                                           ; $5202: $00
    ld e, e                                       ; $5203: $5b
    ld bc, $1685                                  ; $5204: $01 $85 $16
    ld e, a                                       ; $5207: $5f
    inc bc                                        ; $5208: $03
    nop                                           ; $5209: $00
    nop                                           ; $520a: $00
    sbc h                                         ; $520b: $9c
    ld [hl], e                                    ; $520c: $73
    xor d                                         ; $520d: $aa
    add hl, hl                                    ; $520e: $29
    ld e, a                                       ; $520f: $5f
    inc bc                                        ; $5210: $03
    add l                                         ; $5211: $85
    ld d, $5f                                     ; $5212: $16 $5f
    inc bc                                        ; $5214: $03
    xor d                                         ; $5215: $aa
    add hl, hl                                    ; $5216: $29
    ld e, a                                       ; $5217: $5f
    inc bc                                        ; $5218: $03
    ld [bc], a                                    ; $5219: $02
    nop                                           ; $521a: $00
    ld e, a                                       ; $521b: $5f
    inc bc                                        ; $521c: $03

jr_0d2_521d:
    add l                                         ; $521d: $85
    ld d, $5f                                     ; $521e: $16 $5f
    inc bc                                        ; $5220: $03
    ld [bc], a                                    ; $5221: $02
    nop                                           ; $5222: $00
    add l                                         ; $5223: $85
    ld d, $b8                                     ; $5224: $16 $b8
    ld de, $7fff                                  ; $5226: $11 $ff $7f
    nop                                           ; $5229: $00
    nop                                           ; $522a: $00
    or c                                          ; $522b: $b1
    ld b, l                                       ; $522c: $45
    ld c, c                                       ; $522d: $49
    dec h                                         ; $522e: $25
    dec a                                         ; $522f: $3d
    ld [hl], a                                    ; $5230: $77
    nop                                           ; $5231: $00
    nop                                           ; $5232: $00
    db $fd                                        ; $5233: $fd
    halt                                          ; $5234: $76
    xor $38                                       ; $5235: $ee $38
    ld b, [hl]                                    ; $5237: $46
    jr @+$6a                                      ; $5238: $18 $68

    inc e                                         ; $523a: $1c
    inc e                                         ; $523b: $1c
    ld [hl], e                                    ; $523c: $73
    add l                                         ; $523d: $85
    ld d, $5f                                     ; $523e: $16 $5f
    inc bc                                        ; $5240: $03
    ld [bc], a                                    ; $5241: $02
    nop                                           ; $5242: $00
    jr z, jr_0d2_5267                             ; $5243: $28 $22

    ld e, l                                       ; $5245: $5d
    ld [bc], a                                    ; $5246: $02
    ld e, $7b                                     ; $5247: $1e $7b
    nop                                           ; $5249: $00
    nop                                           ; $524a: $00
    ld [hl], h                                    ; $524b: $74
    ld d, [hl]                                    ; $524c: $56
    ld a, [hl+]                                   ; $524d: $2a
    add hl, hl                                    ; $524e: $29
    rst $18                                       ; $524f: $df
    ld a, a                                       ; $5250: $7f
    nop                                           ; $5251: $00
    nop                                           ; $5252: $00
    inc [hl]                                      ; $5253: $34
    ld d, c                                       ; $5254: $51
    rra                                           ; $5255: $1f
    ld a, a                                       ; $5256: $7f
    rlca                                          ; $5257: $07
    dec e                                         ; $5258: $1d
    nop                                           ; $5259: $00
    nop                                           ; $525a: $00
    ld e, a                                       ; $525b: $5f
    inc bc                                        ; $525c: $03
    adc c                                         ; $525d: $89
    dec h                                         ; $525e: $25
    sbc $77                                       ; $525f: $de $77
    ld [bc], a                                    ; $5261: $02
    nop                                           ; $5262: $00
    and [hl]                                      ; $5263: $a6
    ld a, [de]                                    ; $5264: $1a
    ld e, l                                       ; $5265: $5d
    ld [bc], a                                    ; $5266: $02

jr_0d2_5267:
    adc [hl]                                      ; $5267: $8e
    inc a                                         ; $5268: $3c
    nop                                           ; $5269: $00
    nop                                           ; $526a: $00
    adc [hl]                                      ; $526b: $8e
    add hl, sp                                    ; $526c: $39
    ld e, $7b                                     ; $526d: $1e $7b
    inc b                                         ; $526f: $04
    jr jr_0d2_5272                                ; $5270: $18 $00

jr_0d2_5272:
    nop                                           ; $5272: $00
    db $ec                                        ; $5273: $ec
    jr nc, jr_0d2_5294                            ; $5274: $30 $1e

    ld a, e                                       ; $5276: $7b
    ld [$0024], sp                                ; $5277: $08 $24 $00
    nop                                           ; $527a: $00
    ld e, a                                       ; $527b: $5f
    inc bc                                        ; $527c: $03
    sbc d                                         ; $527d: $9a
    ld l, d                                       ; $527e: $6a
    add hl, bc                                    ; $527f: $09
    dec h                                         ; $5280: $25
    ld bc, $2a00                                  ; $5281: $01 $00 $2a
    ld a, [hl+]                                   ; $5284: $2a

jr_0d2_5285:
    ld e, l                                       ; $5285: $5d
    ld [bc], a                                    ; $5286: $02
    dec bc                                        ; $5287: $0b
    jr nc, jr_0d2_528a                            ; $5288: $30 $00

jr_0d2_528a:
    nop                                           ; $528a: $00
    ld a, [bc]                                    ; $528b: $0a
    jr z, jr_0d2_5285                             ; $528c: $28 $f7

    ld sp, $34b0                                  ; $528e: $31 $b0 $34
    nop                                           ; $5291: $00
    nop                                           ; $5292: $00
    db $d3                                        ; $5293: $d3

jr_0d2_5294:
    ld d, b                                       ; $5294: $50
    jr jr_0d2_52d1                                ; $5295: $18 $3a

    add hl, bc                                    ; $5297: $09
    inc h                                         ; $5298: $24
    nop                                           ; $5299: $00
    nop                                           ; $529a: $00
    or c                                          ; $529b: $b1
    ld b, l                                       ; $529c: $45
    ld e, a                                       ; $529d: $5f
    inc bc                                        ; $529e: $03
    rst $38                                       ; $529f: $ff
    ld a, [hl]                                    ; $52a0: $7e
    ld bc, $e800                                  ; $52a1: $01 $00 $e8
    ld h, $0b                                     ; $52a4: $26 $0b
    jr nc, jr_0d2_5305                            ; $52a6: $30 $5d

    ld [bc], a                                    ; $52a8: $02
    nop                                           ; $52a9: $00
    nop                                           ; $52aa: $00
    ld [hl], l                                    ; $52ab: $75
    add hl, sp                                    ; $52ac: $39
    add hl, bc                                    ; $52ad: $09
    inc l                                         ; $52ae: $2c
    db $dd                                        ; $52af: $dd
    ld d, d                                       ; $52b0: $52
    nop                                           ; $52b1: $00
    nop                                           ; $52b2: $00
    rst $30                                       ; $52b3: $f7
    ld sp, $3c0d                                  ; $52b4: $31 $0d $3c
    cp l                                          ; $52b7: $bd
    ld c, [hl]                                    ; $52b8: $4e
    ld bc, $f504                                  ; $52b9: $01 $04 $f5
    ld b, c                                       ; $52bc: $41
    ld e, a                                       ; $52bd: $5f
    inc bc                                        ; $52be: $03
    dec hl                                        ; $52bf: $2b
    dec l                                         ; $52c0: $2d
    ld bc, $0900                                  ; $52c1: $01 $00 $09
    dec hl                                        ; $52c4: $2b
    dec hl                                        ; $52c5: $2b
    jr nc, jr_0d2_5325                            ; $52c6: $30 $5d

    ld [bc], a                                    ; $52c8: $02
    nop                                           ; $52c9: $00
    nop                                           ; $52ca: $00
    rst $30                                       ; $52cb: $f7
    ld sp, $302a                                  ; $52cc: $31 $2a $30
    cp l                                          ; $52cf: $bd
    ld c, [hl]                                    ; $52d0: $4e

jr_0d2_52d1:
    inc bc                                        ; $52d1: $03
    db $10                                        ; $52d2: $10
    ld c, c                                       ; $52d3: $49
    ld a, c                                       ; $52d4: $79
    ld e, d                                       ; $52d5: $5a
    ld b, d                                       ; $52d6: $42
    rst $38                                       ; $52d7: $ff
    ld a, a                                       ; $52d8: $7f
    ld [bc], a                                    ; $52d9: $02
    ld [$31f7], sp                                ; $52da: $08 $f7 $31
    inc c                                         ; $52dd: $0c
    inc [hl]                                      ; $52de: $34
    ld e, a                                       ; $52df: $5f
    inc bc                                        ; $52e0: $03
    ld bc, $2a00                                  ; $52e1: $01 $00 $2a
    cpl                                           ; $52e4: $2f
    ld e, l                                       ; $52e5: $5d
    ld [bc], a                                    ; $52e6: $02
    db $10                                        ; $52e7: $10
    ld b, h                                       ; $52e8: $44
    ld bc, $f708                                  ; $52e9: $01 $08 $f7
    ld sp, $300c                                  ; $52ec: $31 $0c $30
    cp l                                          ; $52ef: $bd
    ld c, [hl]                                    ; $52f0: $4e
    and a                                         ; $52f1: $a7
    jr z, @-$62                                   ; $52f2: $28 $9c

    ld b, [hl]                                    ; $52f4: $46
    ld c, c                                       ; $52f5: $49
    ld a, c                                       ; $52f6: $79
    rst $38                                       ; $52f7: $ff
    ld a, a                                       ; $52f8: $7f
    ld bc, $7000                                  ; $52f9: $01 $00 $70
    ld a, [hl-]                                   ; $52fc: $3a
    ld e, a                                       ; $52fd: $5f
    inc bc                                        ; $52fe: $03
    ld c, h                                       ; $52ff: $4c
    inc [hl]                                      ; $5300: $34
    ld [bc], a                                    ; $5301: $02
    nop                                           ; $5302: $00
    ld c, h                                       ; $5303: $4c
    scf                                           ; $5304: $37

jr_0d2_5305:
    ld e, l                                       ; $5305: $5d
    ld [bc], a                                    ; $5306: $02
    dec c                                         ; $5307: $0d
    inc [hl]                                      ; $5308: $34
    nop                                           ; $5309: $00
    ld [$31f7], sp                                ; $530a: $08 $f7 $31
    inc l                                         ; $530d: $2c
    inc [hl]                                      ; $530e: $34
    cp l                                          ; $530f: $bd
    ld c, [hl]                                    ; $5310: $4e
    nop                                           ; $5311: $00
    nop                                           ; $5312: $00
    sbc e                                         ; $5313: $9b
    ld c, [hl]                                    ; $5314: $4e
    cp a                                          ; $5315: $bf
    ld l, a                                       ; $5316: $6f
    dec l                                         ; $5317: $2d
    ld hl, $0c23                                  ; $5318: $21 $23 $0c
    ld c, h                                       ; $531b: $4c
    scf                                           ; $531c: $37
    ld e, a                                       ; $531d: $5f
    inc bc                                        ; $531e: $03
    or l                                          ; $531f: $b5
    ld d, h                                       ; $5320: $54
    ld bc, $6d00                                  ; $5321: $01 $00 $6d
    dec sp                                        ; $5324: $3b

jr_0d2_5325:
    ld e, l                                       ; $5325: $5d
    ld [bc], a                                    ; $5326: $02
    ld c, $38                                     ; $5327: $0e $38
    nop                                           ; $5329: $00
    inc b                                         ; $532a: $04
    rst $30                                       ; $532b: $f7
    ld sp, $4ebd                                  ; $532c: $31 $bd $4e
    xor d                                         ; $532f: $aa
    inc e                                         ; $5330: $1c
    nop                                           ; $5331: $00
    nop                                           ; $5332: $00
    or c                                          ; $5333: $b1
    ld a, [hl-]                                   ; $5334: $3a
    cp l                                          ; $5335: $bd
    ld c, [hl]                                    ; $5336: $4e
    ld a, [bc]                                    ; $5337: $0a
    add hl, de                                    ; $5338: $19
    ld [bc], a                                    ; $5339: $02
    nop                                           ; $533a: $00
    ld l, l                                       ; $533b: $6d
    dec sp                                        ; $533c: $3b
    ld e, a                                       ; $533d: $5f
    inc bc                                        ; $533e: $03
    ld [bc], a                                    ; $533f: $02
    db $10                                        ; $5340: $10
    ld [bc], a                                    ; $5341: $02
    nop                                           ; $5342: $00
    adc l                                         ; $5343: $8d
    ccf                                           ; $5344: $3f
    ld e, e                                       ; $5345: $5b
    ld bc, $035f                                  ; $5346: $01 $5f $03
    nop                                           ; $5349: $00
    nop                                           ; $534a: $00
    rst $30                                       ; $534b: $f7
    ld sp, $4ebd                                  ; $534c: $31 $bd $4e
    jp hl                                         ; $534f: $e9


    jr jr_0d2_5352                                ; $5350: $18 $00

jr_0d2_5352:
    nop                                           ; $5352: $00
    adc l                                         ; $5353: $8d
    ccf                                           ; $5354: $3f
    sbc h                                         ; $5355: $9c
    ld c, d                                       ; $5356: $4a
    inc l                                         ; $5357: $2c
    dec e                                         ; $5358: $1d
    ld [bc], a                                    ; $5359: $02
    nop                                           ; $535a: $00
    adc l                                         ; $535b: $8d
    ccf                                           ; $535c: $3f
    ld e, a                                       ; $535d: $5f
    inc bc                                        ; $535e: $03
    adc [hl]                                      ; $535f: $8e
    ccf                                           ; $5360: $3f
    ld [bc], a                                    ; $5361: $02
    nop                                           ; $5362: $00
    adc [hl]                                      ; $5363: $8e
    ccf                                           ; $5364: $3f
    ld e, e                                       ; $5365: $5b
    ld bc, $035f                                  ; $5366: $01 $5f $03
    nop                                           ; $5369: $00
    nop                                           ; $536a: $00
    sub e                                         ; $536b: $93
    add hl, hl                                    ; $536c: $29
    jp hl                                         ; $536d: $e9


    jr @-$41                                      ; $536e: $18 $bd

    ld c, [hl]                                    ; $5370: $4e
    ld [hl+], a                                   ; $5371: $22
    inc b                                         ; $5372: $04
    adc [hl]                                      ; $5373: $8e
    ccf                                           ; $5374: $3f
    cp l                                          ; $5375: $bd
    ld c, [hl]                                    ; $5376: $4e
    inc l                                         ; $5377: $2c
    dec e                                         ; $5378: $1d
    ld [bc], a                                    ; $5379: $02
    nop                                           ; $537a: $00
    adc [hl]                                      ; $537b: $8e
    ccf                                           ; $537c: $3f
    ld e, a                                       ; $537d: $5f
    inc bc                                        ; $537e: $03
    inc l                                         ; $537f: $2c
    dec e                                         ; $5380: $1d
    ld bc, $8e00                                  ; $5381: $01 $00 $8e
    ccf                                           ; $5384: $3f
    ld e, l                                       ; $5385: $5d
    ld [bc], a                                    ; $5386: $02
    jp nc, Jump_000_0039                          ; $5387: $d2 $39 $00

    nop                                           ; $538a: $00
    ld [hl], c                                    ; $538b: $71
    dec h                                         ; $538c: $25
    add hl, sp                                    ; $538d: $39
    ld a, $e9                                     ; $538e: $3e $e9
    jr jr_0d2_5392                                ; $5390: $18 $00

jr_0d2_5392:
    nop                                           ; $5392: $00
    adc [hl]                                      ; $5393: $8e
    ccf                                           ; $5394: $3f
    ld c, e                                       ; $5395: $4b
    dec h                                         ; $5396: $25
    add hl, de                                    ; $5397: $19
    ld [hl-], a                                   ; $5398: $32
    ld [bc], a                                    ; $5399: $02
    nop                                           ; $539a: $00
    adc [hl]                                      ; $539b: $8e
    ccf                                           ; $539c: $3f
    ld e, a                                       ; $539d: $5f
    inc bc                                        ; $539e: $03
    add hl, de                                    ; $539f: $19
    ld [hl-], a                                   ; $53a0: $32
    ld [bc], a                                    ; $53a1: $02
    nop                                           ; $53a2: $00
    xor $3a                                       ; $53a3: $ee $3a
    ld e, e                                       ; $53a5: $5b
    ld bc, $035f                                  ; $53a6: $01 $5f $03
    nop                                           ; $53a9: $00
    nop                                           ; $53aa: $00
    jr jr_0d2_53e3                                ; $53ab: $18 $36

    inc l                                         ; $53ad: $2c
    dec h                                         ; $53ae: $25
    sbc h                                         ; $53af: $9c
    ld c, [hl]                                    ; $53b0: $4e
    nop                                           ; $53b1: $00
    nop                                           ; $53b2: $00
    push af                                       ; $53b3: $f5
    ld sp, $4b91                                  ; $53b4: $31 $91 $4b
    rst $20                                       ; $53b7: $e7
    inc e                                         ; $53b8: $1c
    ld [bc], a                                    ; $53b9: $02
    nop                                           ; $53ba: $00
    adc [hl]                                      ; $53bb: $8e
    ccf                                           ; $53bc: $3f
    ld e, a                                       ; $53bd: $5f
    inc bc                                        ; $53be: $03
    rst $20                                       ; $53bf: $e7
    inc e                                         ; $53c0: $1c
    ld [bc], a                                    ; $53c1: $02
    nop                                           ; $53c2: $00
    adc e                                         ; $53c3: $8b
    dec l                                         ; $53c4: $2d
    ld e, e                                       ; $53c5: $5b
    ld bc, $035f                                  ; $53c6: $01 $5f $03
    nop                                           ; $53c9: $00
    nop                                           ; $53ca: $00
    sbc h                                         ; $53cb: $9c
    ld b, [hl]                                    ; $53cc: $46
    and a                                         ; $53cd: $a7
    inc d                                         ; $53ce: $14
    rla                                           ; $53cf: $17
    ld e, a                                       ; $53d0: $5f
    ld b, d                                       ; $53d1: $42
    inc b                                         ; $53d2: $04
    dec d                                         ; $53d3: $15
    ld [hl], $8e                                  ; $53d4: $36 $8e
    ccf                                           ; $53d6: $3f
    rla                                           ; $53d7: $17
    ld e, a                                       ; $53d8: $5f
    ld [bc], a                                    ; $53d9: $02
    nop                                           ; $53da: $00
    adc [hl]                                      ; $53db: $8e
    ccf                                           ; $53dc: $3f
    ld e, a                                       ; $53dd: $5f
    inc bc                                        ; $53de: $03
    rla                                           ; $53df: $17
    ld e, a                                       ; $53e0: $5f
    ld [bc], a                                    ; $53e1: $02
    nop                                           ; $53e2: $00

jr_0d2_53e3:
    ld e, e                                       ; $53e3: $5b
    ld bc, $035f                                  ; $53e4: $01 $5f $03
    rla                                           ; $53e7: $17
    ld e, a                                       ; $53e8: $5f
    ld e, e                                       ; $53e9: $5b
    ld bc, $035f                                  ; $53ea: $01 $5f $03
    ld e, a                                       ; $53ed: $5f
    inc bc                                        ; $53ee: $03
    rla                                           ; $53ef: $17
    ld e, a                                       ; $53f0: $5f
    ld e, e                                       ; $53f1: $5b
    ld bc, $035f                                  ; $53f2: $01 $5f $03
    ld e, a                                       ; $53f5: $5f
    inc bc                                        ; $53f6: $03
    rla                                           ; $53f7: $17
    ld e, a                                       ; $53f8: $5f
    ld [bc], a                                    ; $53f9: $02
    nop                                           ; $53fa: $00
    ld e, e                                       ; $53fb: $5b
    ld bc, $035f                                  ; $53fc: $01 $5f $03
    rla                                           ; $53ff: $17
    ld e, a                                       ; $5400: $5f
    ld [bc], a                                    ; $5401: $02
    nop                                           ; $5402: $00
    ld h, b                                       ; $5403: $60
    inc de                                        ; $5404: $13
    ld e, e                                       ; $5405: $5b
    ld bc, $035f                                  ; $5406: $01 $5f $03
    ld h, b                                       ; $5409: $60
    inc de                                        ; $540a: $13
    ld e, a                                       ; $540b: $5f
    inc bc                                        ; $540c: $03
    ld h, $00                                     ; $540d: $26 $00
    ld [hl+], a                                   ; $540f: $22
    ld a, [bc]                                    ; $5410: $0a
    ld [hl+], a                                   ; $5411: $22
    ld a, [bc]                                    ; $5412: $0a
    ld e, a                                       ; $5413: $5f
    inc bc                                        ; $5414: $03
    ld h, $00                                     ; $5415: $26 $00
    ld [hl+], a                                   ; $5417: $22
    ld a, [bc]                                    ; $5418: $0a
    ld [bc], a                                    ; $5419: $02
    nop                                           ; $541a: $00
    ld e, a                                       ; $541b: $5f
    inc bc                                        ; $541c: $03
    ld h, b                                       ; $541d: $60
    inc de                                        ; $541e: $13
    ld [hl+], a                                   ; $541f: $22
    ld a, [bc]                                    ; $5420: $0a
    ld [bc], a                                    ; $5421: $02
    nop                                           ; $5422: $00
    jr nz, jr_0d2_5434                            ; $5423: $20 $0f

    ld e, e                                       ; $5425: $5b
    ld bc, $035f                                  ; $5426: $01 $5f $03
    pop bc                                        ; $5429: $c1
    ld c, $73                                     ; $542a: $0e $73
    dec e                                         ; $542c: $1d
    ld h, $00                                     ; $542d: $26 $00
    ld e, l                                       ; $542f: $5d
    ld [hl], $26                                  ; $5430: $36 $26
    nop                                           ; $5432: $00
    ld e, [hl]                                    ; $5433: $5e

jr_0d2_5434:
    ld [hl], $52                                  ; $5434: $36 $52
    add hl, de                                    ; $5436: $19
    sub l                                         ; $5437: $95
    dec h                                         ; $5438: $25
    inc b                                         ; $5439: $04
    nop                                           ; $543a: $00
    rst $18                                       ; $543b: $df
    ld b, [hl]                                    ; $543c: $46
    ldh [$0e], a                                  ; $543d: $e0 $0e
    ld e, a                                       ; $543f: $5f
    inc bc                                        ; $5440: $03
    ld [bc], a                                    ; $5441: $02
    nop                                           ; $5442: $00
    jr nz, jr_0d2_5454                            ; $5443: $20 $0f

    call c, Call_0d2_5f1d                         ; $5445: $dc $1d $5f
    inc bc                                        ; $5448: $03
    ld l, d                                       ; $5449: $6a
    nop                                           ; $544a: $00
    ld e, h                                       ; $544b: $5c
    ld [hl], $73                                  ; $544c: $36 $73
    add hl, de                                    ; $544e: $19
    ld a, [hl]                                    ; $544f: $7e
    ld a, $00                                     ; $5450: $3e $00
    nop                                           ; $5452: $00
    dec sp                                        ; $5453: $3b

jr_0d2_5454:
    ld [hl-], a                                   ; $5454: $32
    jr nc, jr_0d2_546c                            ; $5455: $30 $15

    ld l, d                                       ; $5457: $6a
    nop                                           ; $5458: $00
    ld b, [hl]                                    ; $5459: $46
    nop                                           ; $545a: $00
    ld a, l                                       ; $545b: $7d
    ld [hl], $20                                  ; $545c: $36 $20
    rrca                                          ; $545e: $0f
    ld e, a                                       ; $545f: $5f
    inc bc                                        ; $5460: $03
    ld [bc], a                                    ; $5461: $02
    nop                                           ; $5462: $00
    nop                                           ; $5463: $00
    rrca                                          ; $5464: $0f
    inc [hl]                                      ; $5465: $34
    dec c                                         ; $5466: $0d
    sbc $1a                                       ; $5467: $de $1a
    ld [hl+], a                                   ; $5469: $22
    nop                                           ; $546a: $00
    or l                                          ; $546b: $b5

jr_0d2_546c:
    add hl, hl                                    ; $546c: $29
    ld e, l                                       ; $546d: $5d
    ld a, [hl-]                                   ; $546e: $3a
    adc e                                         ; $546f: $8b
    nop                                           ; $5470: $00
    inc b                                         ; $5471: $04
    nop                                           ; $5472: $00
    ld d, d                                       ; $5473: $52
    add hl, de                                    ; $5474: $19
    dec sp                                        ; $5475: $3b
    ld [hl], $6a                                  ; $5476: $36 $6a
    nop                                           ; $5478: $00
    dec h                                         ; $5479: $25
    nop                                           ; $547a: $00
    inc a                                         ; $547b: $3c
    ld [hl-], a                                   ; $547c: $32
    ldh [$0e], a                                  ; $547d: $e0 $0e
    ld e, a                                       ; $547f: $5f
    inc bc                                        ; $5480: $03
    ld [bc], a                                    ; $5481: $02
    nop                                           ; $5482: $00
    ld e, b                                       ; $5483: $58
    add hl, bc                                    ; $5484: $09
    ret nz                                        ; $5485: $c0

    ld c, $be                                     ; $5486: $0e $be
    ld e, $46                                     ; $5488: $1e $46
    nop                                           ; $548a: $00
    jr jr_0d2_54c3                                ; $548b: $18 $36

    ld [hl], c                                    ; $548d: $71
    ld hl, $4adf                                  ; $548e: $21 $df $4a
    ld h, $00                                     ; $5491: $26 $00
    rst $30                                       ; $5493: $f7
    ld sp, $571f                                  ; $5494: $31 $1f $57
    ld [hl], c                                    ; $5497: $71
    ld hl, $1700                                  ; $5498: $21 $00 $17
    ld sp, hl                                     ; $549b: $f9
    add hl, hl                                    ; $549c: $29
    inc b                                         ; $549d: $04
    nop                                           ; $549e: $00
    ld e, a                                       ; $549f: $5f
    inc bc                                        ; $54a0: $03
    ld [bc], a                                    ; $54a1: $02
    nop                                           ; $54a2: $00
    inc [hl]                                      ; $54a3: $34
    dec c                                         ; $54a4: $0d
    ldh [rNR21], a                                ; $54a5: $e0 $16
    cp l                                          ; $54a7: $bd
    ld a, [de]                                    ; $54a8: $1a
    inc bc                                        ; $54a9: $03
    nop                                           ; $54aa: $00
    ld hl, sp+$31                                 ; $54ab: $f8 $31
    sbc [hl]                                      ; $54ad: $9e
    ld b, d                                       ; $54ae: $42
    adc e                                         ; $54af: $8b
    nop                                           ; $54b0: $00
    dec h                                         ; $54b1: $25
    nop                                           ; $54b2: $00
    rra                                           ; $54b3: $1f
    ld d, a                                       ; $54b4: $57
    or l                                          ; $54b5: $b5
    dec h                                         ; $54b6: $25
    xor h                                         ; $54b7: $ac
    inc b                                         ; $54b8: $04
    inc bc                                        ; $54b9: $03
    nop                                           ; $54ba: $00
    sub $29                                       ; $54bb: $d6 $29
    ld h, c                                       ; $54bd: $61
    ld [de], a                                    ; $54be: $12
    ld e, a                                       ; $54bf: $5f
    inc bc                                        ; $54c0: $03
    ld [bc], a                                    ; $54c1: $02
    nop                                           ; $54c2: $00

jr_0d2_54c3:
    ld e, b                                       ; $54c3: $58
    add hl, bc                                    ; $54c4: $09
    ld b, b                                       ; $54c5: $40
    ld [de], a                                    ; $54c6: $12
    ccf                                           ; $54c7: $3f
    rra                                           ; $54c8: $1f
    ld [bc], a                                    ; $54c9: $02
    nop                                           ; $54ca: $00
    ld hl, sp+$2d                                 ; $54cb: $f8 $2d
    rra                                           ; $54cd: $1f
    ld d, a                                       ; $54ce: $57
    adc e                                         ; $54cf: $8b
    nop                                           ; $54d0: $00
    inc bc                                        ; $54d1: $03
    nop                                           ; $54d2: $00
    ld d, $36                                     ; $54d3: $16 $36
    rra                                           ; $54d5: $1f
    ld d, a                                       ; $54d6: $57
    adc e                                         ; $54d7: $8b
    nop                                           ; $54d8: $00
    and b                                         ; $54d9: $a0
    ld d, $b5                                     ; $54da: $16 $b5
    dec h                                         ; $54dc: $25
    dec h                                         ; $54dd: $25
    nop                                           ; $54de: $00
    ld e, a                                       ; $54df: $5f
    inc bc                                        ; $54e0: $03
    ld [bc], a                                    ; $54e1: $02
    nop                                           ; $54e2: $00
    add b                                         ; $54e3: $80
    ld a, [de]                                    ; $54e4: $1a
    ld e, b                                       ; $54e5: $58
    add hl, bc                                    ; $54e6: $09
    ld e, $17                                     ; $54e7: $1e $17
    ld b, h                                       ; $54e9: $44
    ld [$31f7], sp                                ; $54ea: $08 $f7 $31
    sbc a                                         ; $54ed: $9f
    ld l, a                                       ; $54ee: $6f
    pop hl                                        ; $54ef: $e1
    dec e                                         ; $54f0: $1d
    ld b, e                                       ; $54f1: $43
    inc b                                         ; $54f2: $04
    dec d                                         ; $54f3: $15
    ld a, [hl-]                                   ; $54f4: $3a
    ld e, a                                       ; $54f5: $5f
    ld h, e                                       ; $54f6: $63
    push bc                                       ; $54f7: $c5
    ld hl, $1680                                  ; $54f8: $21 $80 $16
    rst $30                                       ; $54fb: $f7
    dec l                                         ; $54fc: $2d
    inc bc                                        ; $54fd: $03
    nop                                           ; $54fe: $00
    ld e, a                                       ; $54ff: $5f
    inc bc                                        ; $5500: $03
    ld b, b                                       ; $5501: $40
    ld a, [de]                                    ; $5502: $1a
    ld e, l                                       ; $5503: $5d
    ld [bc], a                                    ; $5504: $02
    ld [bc], a                                    ; $5505: $02
    nop                                           ; $5506: $00
    call c, $004e                                 ; $5507: $dc $4e $00
    nop                                           ; $550a: $00
    rst $30                                       ; $550b: $f7
    ld sp, $571f                                  ; $550c: $31 $1f $57
    add hl, sp                                    ; $550f: $39
    ld a, [hl-]                                   ; $5510: $3a
    ld bc, $d400                                  ; $5511: $01 $00 $d4
    dec l                                         ; $5514: $2d
    sbc h                                         ; $5515: $9c
    ld b, [hl]                                    ; $5516: $46
    rra                                           ; $5517: $1f
    ld d, a                                       ; $5518: $57
    ld b, b                                       ; $5519: $40
    ld a, [de]                                    ; $551a: $1a
    ld a, e                                       ; $551b: $7b
    ld b, d                                       ; $551c: $42
    inc bc                                        ; $551d: $03
    nop                                           ; $551e: $00
    ld e, a                                       ; $551f: $5f
    inc bc                                        ; $5520: $03
    ld [bc], a                                    ; $5521: $02
    nop                                           ; $5522: $00
    ld bc, $5716                                  ; $5523: $01 $16 $57
    add hl, bc                                    ; $5526: $09
    ld e, a                                       ; $5527: $5f
    inc bc                                        ; $5528: $03
    rst $30                                       ; $5529: $f7
    ld sp, $4ebc                                  ; $552a: $31 $bc $4e
    rra                                           ; $552d: $1f
    ld d, a                                       ; $552e: $57
    db $dd                                        ; $552f: $dd
    ld c, [hl]                                    ; $5530: $4e
    ld [bc], a                                    ; $5531: $02
    nop                                           ; $5532: $00
    push af                                       ; $5533: $f5
    dec [hl]                                      ; $5534: $35
    sub c                                         ; $5535: $91
    dec h                                         ; $5536: $25
    rst $38                                       ; $5537: $ff
    ld d, d                                       ; $5538: $52
    inc bc                                        ; $5539: $03
    nop                                           ; $553a: $00
    sub $2d                                       ; $553b: $d6 $2d
    pop hl                                        ; $553d: $e1
    dec d                                         ; $553e: $15
    ld e, a                                       ; $553f: $5f
    inc bc                                        ; $5540: $03
    pop bc                                        ; $5541: $c1
    dec d                                         ; $5542: $15
    ld e, e                                       ; $5543: $5b
    ld bc, $0002                                  ; $5544: $01 $02 $00
    ld e, a                                       ; $5547: $5f
    inc bc                                        ; $5548: $03
    ld [hl], c                                    ; $5549: $71
    ld hl, $571f                                  ; $554a: $21 $1f $57
    rst $30                                       ; $554d: $f7
    ld sp, $3a39                                  ; $554e: $31 $39 $3a
    or h                                          ; $5551: $b4
    add hl, hl                                    ; $5552: $29
    cp h                                          ; $5553: $bc
    ld c, d                                       ; $5554: $4a
    rra                                           ; $5555: $1f
    ld d, a                                       ; $5556: $57
    add hl, sp                                    ; $5557: $39
    ld a, [hl-]                                   ; $5558: $3a
    ld [bc], a                                    ; $5559: $02
    nop                                           ; $555a: $00
    ld e, a                                       ; $555b: $5f
    inc bc                                        ; $555c: $03
    pop hl                                        ; $555d: $e1
    add hl, de                                    ; $555e: $19
    ld h, [hl]                                    ; $555f: $66
    ld [$0002], sp                                ; $5560: $08 $02 $00
    ld e, e                                       ; $5563: $5b
    ld bc, $1581                                  ; $5564: $01 $81 $15
    ld e, a                                       ; $5567: $5f
    inc bc                                        ; $5568: $03
    add [hl]                                      ; $5569: $86
    inc c                                         ; $556a: $0c
    rst $30                                       ; $556b: $f7
    ld sp, $571f                                  ; $556c: $31 $1f $57
    ld l, l                                       ; $556f: $6d
    dec h                                         ; $5570: $25
    inc hl                                        ; $5571: $23
    inc b                                         ; $5572: $04
    db $d3                                        ; $5573: $d3
    ld sp, $52fe                                  ; $5574: $31 $fe $52
    push bc                                       ; $5577: $c5
    jr @+$04                                      ; $5578: $18 $02

    nop                                           ; $557a: $00
    ld hl, sp+$2d                                 ; $557b: $f8 $2d
    pop bc                                        ; $557d: $c1
    add hl, de                                    ; $557e: $19
    ld e, a                                       ; $557f: $5f
    inc bc                                        ; $5580: $03
    ld bc, $5b00                                  ; $5581: $01 $00 $5b
    ld bc, $0047                                  ; $5584: $01 $47 $00
    ld e, a                                       ; $5587: $5f
    inc bc                                        ; $5588: $03
    ld b, l                                       ; $5589: $45
    inc b                                         ; $558a: $04
    jr @+$38                                      ; $558b: $18 $36

    rra                                           ; $558d: $1f
    ld d, a                                       ; $558e: $57
    ld [hl], c                                    ; $558f: $71
    ld hl, $0000                                  ; $5590: $21 $00 $00
    or l                                          ; $5593: $b5
    add hl, hl                                    ; $5594: $29
    cp $52                                        ; $5595: $fe $52
    ld b, [hl]                                    ; $5597: $46
    inc b                                         ; $5598: $04
    ld bc, $9300                                  ; $5599: $01 $00 $93
    dec h                                         ; $559c: $25
    ld e, a                                       ; $559d: $5f
    inc bc                                        ; $559e: $03
    ld h, c                                       ; $559f: $61
    dec d                                         ; $55a0: $15
    ld bc, $5b00                                  ; $55a1: $01 $00 $5b
    ld bc, $0048                                  ; $55a4: $01 $48 $00
    ld e, a                                       ; $55a7: $5f
    inc bc                                        ; $55a8: $03
    ld h, [hl]                                    ; $55a9: $66
    ld [$2171], sp                                ; $55aa: $08 $71 $21
    rst $30                                       ; $55ad: $f7
    ld sp, $4edd                                  ; $55ae: $31 $dd $4e
    ld b, l                                       ; $55b1: $45
    inc b                                         ; $55b2: $04
    or h                                          ; $55b3: $b4
    add hl, hl                                    ; $55b4: $29
    cp l                                          ; $55b5: $bd
    ld c, d                                       ; $55b6: $4a
    adc e                                         ; $55b7: $8b
    inc b                                         ; $55b8: $04
    ld bc, $9300                                  ; $55b9: $01 $00 $93
    dec h                                         ; $55bc: $25
    ld e, a                                       ; $55bd: $5f
    inc bc                                        ; $55be: $03
    ld c, b                                       ; $55bf: $48
    nop                                           ; $55c0: $00
    ld bc, $5b00                                  ; $55c1: $01 $00 $5b
    ld bc, $0068                                  ; $55c4: $01 $68 $00
    ld e, a                                       ; $55c7: $5f
    inc bc                                        ; $55c8: $03
    ld h, $00                                     ; $55c9: $26 $00
    ld hl, sp+$31                                 ; $55cb: $f8 $31
    ld [hl], c                                    ; $55cd: $71
    ld hl, $571f                                  ; $55ce: $21 $1f $57
    inc h                                         ; $55d1: $24
    inc b                                         ; $55d2: $04
    push de                                       ; $55d3: $d5
    dec l                                         ; $55d4: $2d
    sbc $4e                                       ; $55d5: $de $4e
    xor e                                         ; $55d7: $ab
    inc b                                         ; $55d8: $04
    ld bc, $9100                                  ; $55d9: $01 $00 $91
    dec h                                         ; $55dc: $25
    ld e, a                                       ; $55dd: $5f
    inc bc                                        ; $55de: $03
    ld l, c                                       ; $55df: $69
    nop                                           ; $55e0: $00
    ld [bc], a                                    ; $55e1: $02
    nop                                           ; $55e2: $00
    ld e, e                                       ; $55e3: $5b
    ld bc, $035f                                  ; $55e4: $01 $5f $03
    ld l, c                                       ; $55e7: $69
    nop                                           ; $55e8: $00
    ld e, e                                       ; $55e9: $5b
    ld bc, $035f                                  ; $55ea: $01 $5f $03
    ld e, a                                       ; $55ed: $5f
    inc bc                                        ; $55ee: $03
    ld l, c                                       ; $55ef: $69
    nop                                           ; $55f0: $00
    ld e, e                                       ; $55f1: $5b
    ld bc, $035f                                  ; $55f2: $01 $5f $03
    ld e, a                                       ; $55f5: $5f
    inc bc                                        ; $55f6: $03
    ld l, c                                       ; $55f7: $69
    nop                                           ; $55f8: $00
    ld [bc], a                                    ; $55f9: $02
    nop                                           ; $55fa: $00
    ld e, e                                       ; $55fb: $5b
    ld bc, $035f                                  ; $55fc: $01 $5f $03
    ld l, c                                       ; $55ff: $69
    nop                                           ; $5600: $00
    ld [bc], a                                    ; $5601: $02
    nop                                           ; $5602: $00
    inc hl                                        ; $5603: $23
    ld h, a                                       ; $5604: $67
    ld e, e                                       ; $5605: $5b
    ld bc, $035f                                  ; $5606: $01 $5f $03
    inc hl                                        ; $5609: $23
    ld h, a                                       ; $560a: $67
    ld e, a                                       ; $560b: $5f
    inc bc                                        ; $560c: $03
    ld c, l                                       ; $560d: $4d
    ld c, l                                       ; $560e: $4d
    or l                                          ; $560f: $b5
    ld d, h                                       ; $5610: $54
    nop                                           ; $5611: $00
    nop                                           ; $5612: $00
    ld e, a                                       ; $5613: $5f
    inc bc                                        ; $5614: $03
    add a                                         ; $5615: $87
    ld h, [hl]                                    ; $5616: $66
    ld [hl], e                                    ; $5617: $73
    ld c, h                                       ; $5618: $4c
    ld [bc], a                                    ; $5619: $02
    nop                                           ; $561a: $00
    ld e, a                                       ; $561b: $5f
    inc bc                                        ; $561c: $03
    inc hl                                        ; $561d: $23
    ld h, a                                       ; $561e: $67
    ld [hl], e                                    ; $561f: $73
    ld c, h                                       ; $5620: $4c
    ld [bc], a                                    ; $5621: $02
    nop                                           ; $5622: $00
    inc hl                                        ; $5623: $23
    ld h, a                                       ; $5624: $67
    ld e, l                                       ; $5625: $5d
    ld [bc], a                                    ; $5626: $02
    xor a                                         ; $5627: $af
    ld c, b                                       ; $5628: $48
    nop                                           ; $5629: $00
    nop                                           ; $562a: $00
    xor h                                         ; $562b: $ac
    jr nc, jr_0d2_5632                            ; $562c: $30 $04

    db $10                                        ; $562e: $10
    ret nc                                        ; $562f: $d0

    ld b, b                                       ; $5630: $40
    nop                                           ; $5631: $00

jr_0d2_5632:
    nop                                           ; $5632: $00
    or l                                          ; $5633: $b5
    ld d, h                                       ; $5634: $54
    ld b, $18                                     ; $5635: $06 $18
    rlca                                          ; $5637: $07
    jr nc, jr_0d2_563d                            ; $5638: $30 $03

    db $10                                        ; $563a: $10
    inc hl                                        ; $563b: $23
    ld h, a                                       ; $563c: $67

jr_0d2_563d:
    ld e, a                                       ; $563d: $5f
    inc bc                                        ; $563e: $03
    sub e                                         ; $563f: $93
    ld d, b                                       ; $5640: $50
    ld bc, $2300                                  ; $5641: $01 $00 $23
    ld h, a                                       ; $5644: $67
    ld e, l                                       ; $5645: $5d
    ld [bc], a                                    ; $5646: $02
    call LCDCInterrupt                            ; $5647: $cd $48 $00
    nop                                           ; $564a: $00
    or l                                          ; $564b: $b5
    ld d, h                                       ; $564c: $54
    inc h                                         ; $564d: $24
    db $10                                        ; $564e: $10
    dec b                                         ; $564f: $05
    inc d                                         ; $5650: $14
    nop                                           ; $5651: $00
    nop                                           ; $5652: $00
    ld d, b                                       ; $5653: $50
    ld b, h                                       ; $5654: $44
    or l                                          ; $5655: $b5
    ld d, h                                       ; $5656: $54
    ld [bc], a                                    ; $5657: $02
    ld [$0000], sp                                ; $5658: $08 $00 $00
    ld [$5f34], a                                 ; $565b: $ea $34 $5f
    inc bc                                        ; $565e: $03
    ld [hl], c                                    ; $565f: $71
    ld c, b                                       ; $5660: $48
    ld bc, $2300                                  ; $5661: $01 $00 $23
    ld e, e                                       ; $5664: $5b
    ld e, l                                       ; $5665: $5d
    ld [bc], a                                    ; $5666: $02
    or b                                          ; $5667: $b0
    ld b, h                                       ; $5668: $44
    nop                                           ; $5669: $00
    nop                                           ; $566a: $00
    adc [hl]                                      ; $566b: $8e
    jr c, jr_0d2_5673                             ; $566c: $38 $05

    inc d                                         ; $566e: $14
    or l                                          ; $566f: $b5
    ld d, h                                       ; $5670: $54
    nop                                           ; $5671: $00
    nop                                           ; $5672: $00

jr_0d2_5673:
    sub e                                         ; $5673: $93
    ld d, b                                       ; $5674: $50
    and [hl]                                      ; $5675: $a6
    jr jr_0d2_5680                                ; $5676: $18 $08

    inc l                                         ; $5678: $2c
    nop                                           ; $5679: $00
    nop                                           ; $567a: $00
    sub h                                         ; $567b: $94
    ld d, h                                       ; $567c: $54
    ld e, a                                       ; $567d: $5f
    inc bc                                        ; $567e: $03
    ld b, a                                       ; $567f: $47

jr_0d2_5680:
    jr nz, jr_0d2_5684                            ; $5680: $20 $02

    nop                                           ; $5682: $00
    xor h                                         ; $5683: $ac

jr_0d2_5684:
    inc [hl]                                      ; $5684: $34
    ld e, l                                       ; $5685: $5d
    ld [bc], a                                    ; $5686: $02
    ld [hl], h                                    ; $5687: $74
    ld d, h                                       ; $5688: $54
    ld bc, $2e08                                  ; $5689: $01 $08 $2e
    inc a                                         ; $568c: $3c
    ld hl, sp+$31                                 ; $568d: $f8 $31
    jr jr_0d2_56f5                                ; $568f: $18 $64

    ld b, d                                       ; $5691: $42
    ld [$5cf6], sp                                ; $5692: $08 $f6 $5c
    ld c, b                                       ; $5695: $48
    inc l                                         ; $5696: $2c
    call nc, $2131                                ; $5697: $d4 $31 $21
    nop                                           ; $569a: $00
    ld [hl], b                                    ; $569b: $70
    ld c, c                                       ; $569c: $49
    ld e, a                                       ; $569d: $5f
    inc bc                                        ; $569e: $03
    or l                                          ; $569f: $b5
    ld d, h                                       ; $56a0: $54
    ld bc, $8f00                                  ; $56a1: $01 $00 $8f
    ld b, b                                       ; $56a4: $40
    ld e, l                                       ; $56a5: $5d
    ld [bc], a                                    ; $56a6: $02
    jr z, jr_0d2_56c9                             ; $56a7: $28 $20

    jr nz, jr_0d2_56b3                            ; $56a9: $20 $08

    ld l, $31                                     ; $56ab: $2e $31
    ld hl, sp+$31                                 ; $56ad: $f8 $31
    ld [hl], c                                    ; $56af: $71
    ld c, b                                       ; $56b0: $48
    nop                                           ; $56b1: $00
    nop                                           ; $56b2: $00

jr_0d2_56b3:
    ld hl, sp+$31                                 ; $56b3: $f8 $31
    dec b                                         ; $56b5: $05
    jr nz, jr_0d2_56c3                            ; $56b6: $20 $0b

    jr c, jr_0d2_56ba                             ; $56b8: $38 $00

jr_0d2_56ba:
    nop                                           ; $56ba: $00
    di                                            ; $56bb: $f3
    ld c, h                                       ; $56bc: $4c
    ld e, a                                       ; $56bd: $5f
    inc bc                                        ; $56be: $03
    ld h, a                                       ; $56bf: $67
    jr nz, jr_0d2_56c3                            ; $56c0: $20 $01

    nop                                           ; $56c2: $00

jr_0d2_56c3:
    inc bc                                        ; $56c3: $03
    ccf                                           ; $56c4: $3f
    ld e, l                                       ; $56c5: $5d
    ld [bc], a                                    ; $56c6: $02
    ld d, b                                       ; $56c7: $50
    ld b, h                                       ; $56c8: $44

jr_0d2_56c9:
    nop                                           ; $56c9: $00
    inc b                                         ; $56ca: $04
    ld hl, sp+$31                                 ; $56cb: $f8 $31
    db $fd                                        ; $56cd: $fd
    ld d, d                                       ; $56ce: $52
    cp a                                          ; $56cf: $bf
    ld d, c                                       ; $56d0: $51
    nop                                           ; $56d1: $00
    nop                                           ; $56d2: $00
    dec l                                         ; $56d3: $2d
    ld hl, $31f8                                  ; $56d4: $21 $f8 $31
    cp a                                          ; $56d7: $bf
    ld d, c                                       ; $56d8: $51
    ld hl, $7704                                  ; $56d9: $21 $04 $77
    dec a                                         ; $56dc: $3d
    ld e, a                                       ; $56dd: $5f
    inc bc                                        ; $56de: $03
    add hl, bc                                    ; $56df: $09
    jr nc, jr_0d2_56e4                            ; $56e0: $30 $02

    nop                                           ; $56e2: $00
    ld [bc], a                                    ; $56e3: $02

jr_0d2_56e4:
    scf                                           ; $56e4: $37
    ld e, l                                       ; $56e5: $5d
    ld [bc], a                                    ; $56e6: $02
    adc a                                         ; $56e7: $8f
    ld b, b                                       ; $56e8: $40
    nop                                           ; $56e9: $00
    nop                                           ; $56ea: $00
    dec e                                         ; $56eb: $1d
    ld d, a                                       ; $56ec: $57
    ld h, b                                       ; $56ed: $60
    ld [bc], a                                    ; $56ee: $02
    dec l                                         ; $56ef: $2d
    ld hl, $0863                                  ; $56f0: $21 $63 $08
    ld d, [hl]                                    ; $56f3: $56
    ld b, c                                       ; $56f4: $41

jr_0d2_56f5:
    ld e, [hl]                                    ; $56f5: $5e
    ld h, e                                       ; $56f6: $63
    ld h, b                                       ; $56f7: $60
    ld [bc], a                                    ; $56f8: $02
    ld bc, $b700                                  ; $56f9: $01 $00 $b7
    dec [hl]                                      ; $56fc: $35
    ld e, a                                       ; $56fd: $5f
    inc bc                                        ; $56fe: $03
    add hl, bc                                    ; $56ff: $09
    jr nc, jr_0d2_5704                            ; $5700: $30 $02

    nop                                           ; $5702: $00
    ld [bc], a                                    ; $5703: $02

jr_0d2_5704:
    dec hl                                        ; $5704: $2b
    ld e, l                                       ; $5705: $5d
    ld [bc], a                                    ; $5706: $02
    ld c, $49                                     ; $5707: $0e $49
    ld b, b                                       ; $5709: $40
    nop                                           ; $570a: $00
    db $fd                                        ; $570b: $fd
    ld d, d                                       ; $570c: $52
    dec l                                         ; $570d: $2d
    ld hl, $7fff                                  ; $570e: $21 $ff $7f

jr_0d2_5711:
    inc b                                         ; $5711: $04
    jr jr_0d2_5711                                ; $5712: $18 $fd

    ld d, d                                       ; $5714: $52
    dec l                                         ; $5715: $2d
    ld hl, $3407                                  ; $5716: $21 $07 $34
    ld hl, $9304                                  ; $5719: $21 $04 $93
    ld d, b                                       ; $571c: $50
    ld e, a                                       ; $571d: $5f
    inc bc                                        ; $571e: $03
    ld hl, sp+$31                                 ; $571f: $f8 $31
    ld [bc], a                                    ; $5721: $02
    nop                                           ; $5722: $00
    add d                                         ; $5723: $82
    ld [hl+], a                                   ; $5724: $22
    ld d, b                                       ; $5725: $50
    ld b, h                                       ; $5726: $44
    ld e, l                                       ; $5727: $5d
    ld [bc], a                                    ; $5728: $02
    ld [bc], a                                    ; $5729: $02
    inc b                                         ; $572a: $04
    ld hl, sp+$31                                 ; $572b: $f8 $31
    ld l, $19                                     ; $572d: $2e $19
    db $fd                                        ; $572f: $fd
    ld d, d                                       ; $5730: $52
    ld d, [hl]                                    ; $5731: $56
    ld c, c                                       ; $5732: $49
    db $fd                                        ; $5733: $fd
    ld d, d                                       ; $5734: $52
    ld hl, sp+$31                                 ; $5735: $f8 $31
    db $fd                                        ; $5737: $fd
    ld d, d                                       ; $5738: $52
    ld bc, $6a04                                  ; $5739: $01 $04 $6a
    add hl, hl                                    ; $573c: $29
    ld e, a                                       ; $573d: $5f
    inc bc                                        ; $573e: $03
    inc d                                         ; $573f: $14
    ld c, c                                       ; $5740: $49
    ld [bc], a                                    ; $5741: $02
    nop                                           ; $5742: $00
    ld [c], a                                     ; $5743: $e2
    ld a, [de]                                    ; $5744: $1a
    ld e, l                                       ; $5745: $5d
    ld [bc], a                                    ; $5746: $02
    xor $38                                       ; $5747: $ee $38
    nop                                           ; $5749: $00
    nop                                           ; $574a: $00
    ld hl, sp+$31                                 ; $574b: $f8 $31
    xor e                                         ; $574d: $ab
    inc h                                         ; $574e: $24
    db $fd                                        ; $574f: $fd
    ld d, d                                       ; $5750: $52
    ld hl, $f800                                  ; $5751: $21 $00 $f8
    ld sp, $52fd                                  ; $5754: $31 $fd $52
    jp hl                                         ; $5757: $e9


    jr @+$23                                      ; $5758: $18 $21

    inc b                                         ; $575a: $04
    inc sp                                        ; $575b: $33
    ld b, c                                       ; $575c: $41
    ld e, a                                       ; $575d: $5f
    inc bc                                        ; $575e: $03
    ld a, [$0139]                                 ; $575f: $fa $39 $01
    nop                                           ; $5762: $00
    ld [c], a                                     ; $5763: $e2
    ld d, $5d                                     ; $5764: $16 $5d
    ld [bc], a                                    ; $5766: $02
    dec bc                                        ; $5767: $0b
    inc l                                         ; $5768: $2c
    nop                                           ; $5769: $00
    nop                                           ; $576a: $00
    ld d, b                                       ; $576b: $50
    ld b, h                                       ; $576c: $44
    ret                                           ; $576d: $c9


    jr jr_0d2_5789                                ; $576e: $18 $19

    ld [hl], $21                                  ; $5770: $36 $21
    nop                                           ; $5772: $00
    sub a                                         ; $5773: $97
    add hl, sp                                    ; $5774: $39
    db $fd                                        ; $5775: $fd
    ld d, d                                       ; $5776: $52
    ld l, $1d                                     ; $5777: $2e $1d
    ld hl, $b800                                  ; $5779: $21 $00 $b8
    dec [hl]                                      ; $577c: $35
    ld c, c                                       ; $577d: $49
    inc l                                         ; $577e: $2c
    ld e, a                                       ; $577f: $5f
    inc bc                                        ; $5780: $03
    ld [bc], a                                    ; $5781: $02
    nop                                           ; $5782: $00
    ld [c], a                                     ; $5783: $e2
    ld d, $13                                     ; $5784: $16 $13
    ld c, l                                       ; $5786: $4d
    ld e, l                                       ; $5787: $5d
    ld [bc], a                                    ; $5788: $02

jr_0d2_5789:
    nop                                           ; $5789: $00
    nop                                           ; $578a: $00
    ld d, b                                       ; $578b: $50
    ld b, h                                       ; $578c: $44
    ld [c], a                                     ; $578d: $e2
    ld d, $b4                                     ; $578e: $16 $b4
    add hl, hl                                    ; $5790: $29
    ld [bc], a                                    ; $5791: $02
    inc c                                         ; $5792: $0c
    ld l, $1d                                     ; $5793: $2e $1d
    or l                                          ; $5795: $b5
    ld d, h                                       ; $5796: $54
    ld hl, sp+$31                                 ; $5797: $f8 $31
    ld [bc], a                                    ; $5799: $02
    ld [$50b6], sp                                ; $579a: $08 $b6 $50
    ld e, a                                       ; $579d: $5f
    inc bc                                        ; $579e: $03
    sub e                                         ; $579f: $93
    dec h                                         ; $57a0: $25
    ld bc, $a300                                  ; $57a1: $01 $00 $a3
    ld a, [de]                                    ; $57a4: $1a
    ld e, l                                       ; $57a5: $5d
    ld [bc], a                                    ; $57a6: $02
    ld d, b                                       ; $57a7: $50
    ld b, h                                       ; $57a8: $44
    ld b, c                                       ; $57a9: $41
    inc b                                         ; $57aa: $04
    ld l, a                                       ; $57ab: $6f
    ld b, b                                       ; $57ac: $40
    ld [c], a                                     ; $57ad: $e2
    ld d, $19                                     ; $57ae: $16 $19
    ld h, e                                       ; $57b0: $63
    nop                                           ; $57b1: $00
    nop                                           ; $57b2: $00
    ld hl, sp+$31                                 ; $57b3: $f8 $31
    ld l, $1d                                     ; $57b5: $2e $1d
    rlca                                          ; $57b7: $07
    jr nc, jr_0d2_57ba                            ; $57b8: $30 $00

jr_0d2_57ba:
    nop                                           ; $57ba: $00
    ld e, a                                       ; $57bb: $5f
    inc bc                                        ; $57bc: $03
    jr z, jr_0d2_57ef                             ; $57bd: $28 $30

    or e                                          ; $57bf: $b3
    ld c, h                                       ; $57c0: $4c
    ld [bc], a                                    ; $57c1: $02
    nop                                           ; $57c2: $00
    ld [c], a                                     ; $57c3: $e2
    ld d, $5d                                     ; $57c4: $16 $5d
    ld [bc], a                                    ; $57c6: $02
    ld d, b                                       ; $57c7: $50
    ld b, h                                       ; $57c8: $44
    ld bc, $e200                                  ; $57c9: $01 $00 $e2
    ld d, $50                                     ; $57cc: $16 $50
    ld b, h                                       ; $57ce: $44
    ld [hl], d                                    ; $57cf: $72
    ld c, d                                       ; $57d0: $4a
    nop                                           ; $57d1: $00
    nop                                           ; $57d2: $00
    sub e                                         ; $57d3: $93
    ld c, [hl]                                    ; $57d4: $4e
    dec hl                                        ; $57d5: $2b
    ld hl, $31f8                                  ; $57d6: $21 $f8 $31
    nop                                           ; $57d9: $00
    nop                                           ; $57da: $00
    ld [hl], c                                    ; $57db: $71
    ld c, d                                       ; $57dc: $4a
    ld e, a                                       ; $57dd: $5f
    inc bc                                        ; $57de: $03
    daa                                           ; $57df: $27
    add hl, hl                                    ; $57e0: $29
    ld [bc], a                                    ; $57e1: $02
    nop                                           ; $57e2: $00
    ld e, e                                       ; $57e3: $5b
    ld bc, $035f                                  ; $57e4: $01 $5f $03
    daa                                           ; $57e7: $27
    add hl, hl                                    ; $57e8: $29
    ld e, e                                       ; $57e9: $5b
    ld bc, $035f                                  ; $57ea: $01 $5f $03
    ld e, a                                       ; $57ed: $5f
    inc bc                                        ; $57ee: $03

jr_0d2_57ef:
    daa                                           ; $57ef: $27
    add hl, hl                                    ; $57f0: $29
    ld e, e                                       ; $57f1: $5b
    ld bc, $035f                                  ; $57f2: $01 $5f $03
    ld e, a                                       ; $57f5: $5f
    inc bc                                        ; $57f6: $03
    daa                                           ; $57f7: $27
    add hl, hl                                    ; $57f8: $29
    ld [bc], a                                    ; $57f9: $02
    nop                                           ; $57fa: $00
    ld e, e                                       ; $57fb: $5b
    ld bc, $035f                                  ; $57fc: $01 $5f $03
    daa                                           ; $57ff: $27
    add hl, hl                                    ; $5800: $29
    ld bc, $4e00                                  ; $5801: $01 $00 $4e
    ld l, $5f                                     ; $5804: $2e $5f
    inc bc                                        ; $5806: $03
    ld e, e                                       ; $5807: $5b
    ld bc, $0401                                  ; $5808: $01 $01 $04
    ld e, a                                       ; $580b: $5f
    inc bc                                        ; $580c: $03
    ld sp, $f439                                  ; $580d: $31 $39 $f4
    dec a                                         ; $5810: $3d
    ld bc, $5f04                                  ; $5811: $01 $04 $5f
    inc bc                                        ; $5814: $03
    xor e                                         ; $5815: $ab
    inc l                                         ; $5816: $2c
    dec hl                                        ; $5817: $2b
    dec l                                         ; $5818: $2d
    ld bc, $ed04                                  ; $5819: $01 $04 $ed
    ld a, [hl+]                                   ; $581c: $2a

jr_0d2_581d:
    ld e, a                                       ; $581d: $5f
    inc bc                                        ; $581e: $03
    ld [bc], a                                    ; $581f: $02
    nop                                           ; $5820: $00
    ld bc, $3000                                  ; $5821: $01 $00 $30

jr_0d2_5824:
    add hl, sp                                    ; $5824: $39
    ld e, l                                       ; $5825: $5d
    ld [bc], a                                    ; $5826: $02
    ld l, d                                       ; $5827: $6a
    jr z, jr_0d2_582b                             ; $5828: $28 $01

    inc b                                         ; $582a: $04

jr_0d2_582b:
    add hl, hl                                    ; $582b: $29
    inc h                                         ; $582c: $24
    ld c, c                                       ; $582d: $49
    dec h                                         ; $582e: $25
    db $ec                                        ; $582f: $ec
    jr nc, jr_0d2_5853                            ; $5830: $30 $21

    inc b                                         ; $5832: $04
    inc l                                         ; $5833: $2c
    jr nc, jr_0d2_581d                            ; $5834: $30 $e7

    jr @+$0d                                      ; $5836: $18 $0b

    dec l                                         ; $5838: $2d
    ld bc, $ed00                                  ; $5839: $01 $00 $ed
    ld a, [hl+]                                   ; $583c: $2a
    ld e, a                                       ; $583d: $5f
    inc bc                                        ; $583e: $03
    ld l, e                                       ; $583f: $6b
    inc l                                         ; $5840: $2c
    ld bc, $4d00                                  ; $5841: $01 $00 $4d
    ld l, $5d                                     ; $5844: $2e $5d
    ld [bc], a                                    ; $5846: $02
    ld c, c                                       ; $5847: $49
    jr z, jr_0d2_584b                             ; $5848: $28 $01

    inc b                                         ; $584a: $04

jr_0d2_584b:
    ld [$ef24], sp                                ; $584b: $08 $24 $ef
    inc a                                         ; $584e: $3c
    xor h                                         ; $584f: $ac
    dec l                                         ; $5850: $2d
    nop                                           ; $5851: $00
    nop                                           ; $5852: $00

jr_0d2_5853:
    ld b, $18                                     ; $5853: $06 $18
    inc b                                         ; $5855: $04
    db $10                                        ; $5856: $10
    add hl, bc                                    ; $5857: $09
    jr z, jr_0d2_585b                             ; $5858: $28 $01

    inc b                                         ; $585a: $04

jr_0d2_585b:
    db $ec                                        ; $585b: $ec
    ld a, [hl+]                                   ; $585c: $2a
    ld l, d                                       ; $585d: $6a
    jr z, jr_0d2_58bf                             ; $585e: $28 $5f

    inc bc                                        ; $5860: $03
    ld bc, $6e00                                  ; $5861: $01 $00 $6e
    ld l, $5b                                     ; $5864: $2e $5b
    ld bc, $035f                                  ; $5866: $01 $5f $03
    nop                                           ; $5869: $00
    nop                                           ; $586a: $00
    ld [$3420], sp                                ; $586b: $08 $20 $34
    dec l                                         ; $586e: $2d
    ld l, l                                       ; $586f: $6d
    inc [hl]                                      ; $5870: $34
    ld bc, $ef08                                  ; $5871: $01 $08 $ef
    inc [hl]                                      ; $5874: $34
    ld b, [hl]                                    ; $5875: $46
    inc e                                         ; $5876: $1c
    or [hl]                                       ; $5877: $b6
    dec h                                         ; $5878: $25
    ld bc, $5f04                                  ; $5879: $01 $04 $5f
    inc bc                                        ; $587c: $03
    add hl, bc                                    ; $587d: $09
    jr z, jr_0d2_588b                             ; $587e: $28 $0b

    dec l                                         ; $5880: $2d
    ld bc, $6b00                                  ; $5881: $01 $00 $6b
    ld h, $5b                                     ; $5884: $26 $5b
    ld bc, $035f                                  ; $5886: $01 $5f $03
    nop                                           ; $5889: $00
    inc b                                         ; $588a: $04

jr_0d2_588b:
    dec c                                         ; $588b: $0d
    jr c, jr_0d2_5824                             ; $588c: $38 $96

    add hl, hl                                    ; $588e: $29
    ld a, [bc]                                    ; $588f: $0a
    jr z, jr_0d2_5892                             ; $5890: $28 $00

jr_0d2_5892:
    nop                                           ; $5892: $00
    cpl                                           ; $5893: $2f
    dec h                                         ; $5894: $25
    ld [$b520], sp                                ; $5895: $08 $20 $b5
    dec h                                         ; $5898: $25
    ld bc, $ec04                                  ; $5899: $01 $04 $ec
    ld [hl+], a                                   ; $589c: $22
    jp z, $5f28                                   ; $589d: $ca $28 $5f

    inc bc                                        ; $58a0: $03
    ld bc, $cc00                                  ; $58a1: $01 $00 $cc
    ld e, $5d                                     ; $58a4: $1e $5d
    ld [bc], a                                    ; $58a6: $02
    ld a, [bc]                                    ; $58a7: $0a
    jr z, jr_0d2_58ac                             ; $58a8: $28 $02

    inc b                                         ; $58aa: $04
    ld [de], a                                    ; $58ab: $12

jr_0d2_58ac:
    ld c, b                                       ; $58ac: $48
    add hl, sp                                    ; $58ad: $39
    ld a, [hl-]                                   ; $58ae: $3a
    daa                                           ; $58af: $27
    inc e                                         ; $58b0: $1c
    ld [hl+], a                                   ; $58b1: $22
    nop                                           ; $58b2: $00
    ld [hl], l                                    ; $58b3: $75
    dec h                                         ; $58b4: $25
    ld l, d                                       ; $58b5: $6a
    inc e                                         ; $58b6: $1c
    ld a, d                                       ; $58b7: $7a
    ld b, d                                       ; $58b8: $42
    nop                                           ; $58b9: $00
    nop                                           ; $58ba: $00
    xor $2d                                       ; $58bb: $ee $2d
    ld e, $1b                                     ; $58bd: $1e $1b

jr_0d2_58bf:
    ld c, e                                       ; $58bf: $4b
    jr nc, @+$04                                  ; $58c0: $30 $02

    nop                                           ; $58c2: $00
    call z, Call_0d2_5b1a                         ; $58c3: $cc $1a $5b
    ld bc, $035f                                  ; $58c6: $01 $5f $03
    ld b, h                                       ; $58c9: $44
    ld [$427a], sp                                ; $58ca: $08 $7a $42
    ld h, e                                       ; $58cd: $63
    ld a, h                                       ; $58ce: $7c
    rst $38                                       ; $58cf: $ff
    ld a, a                                       ; $58d0: $7f
    ld hl, $ff18                                  ; $58d1: $21 $18 $ff
    ld a, a                                       ; $58d4: $7f
    ld d, d                                       ; $58d5: $52
    ld hl, $7c63                                  ; $58d6: $21 $63 $7c
    ld bc, $3a00                                  ; $58d9: $01 $00 $3a
    ld [hl], $5f                                  ; $58dc: $36 $5f
    inc bc                                        ; $58de: $03
    db $eb                                        ; $58df: $eb
    inc l                                         ; $58e0: $2c
    ld bc, $4d00                                  ; $58e1: $01 $00 $4d
    dec l                                         ; $58e4: $2d
    ld e, l                                       ; $58e5: $5d
    ld [bc], a                                    ; $58e6: $02
    call z, Call_000_2216                         ; $58e7: $cc $16 $22
    nop                                           ; $58ea: $00
    ld [hl], e                                    ; $58eb: $73
    add hl, hl                                    ; $58ec: $29
    ld a, d                                       ; $58ed: $7a
    ld b, d                                       ; $58ee: $42
    and a                                         ; $58ef: $a7
    inc e                                         ; $58f0: $1c
    ld b, e                                       ; $58f1: $43
    nop                                           ; $58f2: $00
    or d                                          ; $58f3: $b2
    dec l                                         ; $58f4: $2d
    ld a, d                                       ; $58f5: $7a
    ld b, d                                       ; $58f6: $42
    or [hl]                                       ; $58f7: $b6
    dec h                                         ; $58f8: $25
    ld hl, $9204                                  ; $58f9: $21 $04 $92
    add hl, hl                                    ; $58fc: $29
    ld e, a                                       ; $58fd: $5f
    inc bc                                        ; $58fe: $03
    ld c, d                                       ; $58ff: $4a
    inc l                                         ; $5900: $2c
    ld bc, $5b00                                  ; $5901: $01 $00 $5b
    ld bc, $24c9                                  ; $5904: $01 $c9 $24
    ld e, a                                       ; $5907: $5f
    inc bc                                        ; $5908: $03
    ld bc, $b100                                  ; $5909: $01 $00 $b1
    dec l                                         ; $590c: $2d
    ld a, d                                       ; $590d: $7a
    ld b, d                                       ; $590e: $42
    rst $00                                       ; $590f: $c7
    db $10                                        ; $5910: $10
    or [hl]                                       ; $5911: $b6
    dec h                                         ; $5912: $25
    ld a, d                                       ; $5913: $7a
    ld b, d                                       ; $5914: $42
    ld a, d                                       ; $5915: $7a
    ld b, d                                       ; $5916: $42
    rst $00                                       ; $5917: $c7
    db $10                                        ; $5918: $10
    ld hl, $5f04                                  ; $5919: $21 $04 $5f
    inc bc                                        ; $591c: $03
    ld [$2d28], sp                                ; $591d: $08 $28 $2d
    dec l                                         ; $5920: $2d
    ld bc, $8d00                                  ; $5921: $01 $00 $8d
    add hl, hl                                    ; $5924: $29
    ld e, e                                       ; $5925: $5b
    ld bc, $035f                                  ; $5926: $01 $5f $03
    nop                                           ; $5929: $00
    nop                                           ; $592a: $00
    ld a, d                                       ; $592b: $7a
    ld b, d                                       ; $592c: $42
    daa                                           ; $592d: $27
    dec e                                         ; $592e: $1d
    inc l                                         ; $592f: $2c
    add hl, hl                                    ; $5930: $29
    db $ed                                        ; $5931: $ed
    inc d                                         ; $5932: $14
    ld a, d                                       ; $5933: $7a
    ld b, d                                       ; $5934: $42
    or [hl]                                       ; $5935: $b6
    dec h                                         ; $5936: $25
    inc l                                         ; $5937: $2c
    add hl, hl                                    ; $5938: $29
    nop                                           ; $5939: $00
    nop                                           ; $593a: $00
    ld c, h                                       ; $593b: $4c
    ld [hl+], a                                   ; $593c: $22
    ld e, a                                       ; $593d: $5f
    inc bc                                        ; $593e: $03
    ld h, a                                       ; $593f: $67
    inc e                                         ; $5940: $1c
    ld bc, $4b00                                  ; $5941: $01 $00 $4b
    ld d, $5d                                     ; $5944: $16 $5d
    ld [bc], a                                    ; $5946: $02
    adc e                                         ; $5947: $8b
    jr z, jr_0d2_594a                             ; $5948: $28 $00

jr_0d2_594a:
    inc b                                         ; $594a: $04
    ld d, c                                       ; $594b: $51
    dec h                                         ; $594c: $25

jr_0d2_594d:
    sbc c                                         ; $594d: $99
    dec h                                         ; $594e: $25
    ld a, [bc]                                    ; $594f: $0a
    inc l                                         ; $5950: $2c
    nop                                           ; $5951: $00
    nop                                           ; $5952: $00
    sub l                                         ; $5953: $95
    ld hl, $425a                                  ; $5954: $21 $5a $42
    add a                                         ; $5957: $87
    inc c                                         ; $5958: $0c
    ld bc, $cb00                                  ; $5959: $01 $00 $cb
    ld a, [bc]                                    ; $595c: $0a
    adc e                                         ; $595d: $8b
    inc l                                         ; $595e: $2c
    ld e, a                                       ; $595f: $5f
    inc bc                                        ; $5960: $03
    ld bc, $cb00                                  ; $5961: $01 $00 $cb
    ld b, $5d                                     ; $5964: $06 $5d
    ld [bc], a                                    ; $5966: $02
    ld l, e                                       ; $5967: $6b
    jr nc, jr_0d2_596a                            ; $5968: $30 $00

jr_0d2_596a:
    nop                                           ; $596a: $00
    ld l, $35                                     ; $596b: $2e $35
    ld a, [$4739]                                 ; $596d: $fa $39 $47
    inc e                                         ; $5970: $1c
    nop                                           ; $5971: $00
    nop                                           ; $5972: $00
    or [hl]                                       ; $5973: $b6
    dec h                                         ; $5974: $25
    ld a, d                                       ; $5975: $7a
    ld b, d                                       ; $5976: $42
    xor d                                         ; $5977: $aa
    inc c                                         ; $5978: $0c
    ld bc, $5f00                                  ; $5979: $01 $00 $5f
    inc bc                                        ; $597c: $03
    dec hl                                        ; $597d: $2b
    add hl, hl                                    ; $597e: $29
    dec b                                         ; $597f: $05
    jr jr_0d2_5984                                ; $5980: $18 $02

    nop                                           ; $5982: $00
    inc c                                         ; $5983: $0c

jr_0d2_5984:
    ld sp, $015b                                  ; $5984: $31 $5b $01
    ld e, a                                       ; $5987: $5f
    inc bc                                        ; $5988: $03
    nop                                           ; $5989: $00
    nop                                           ; $598a: $00
    ret z                                         ; $598b: $c8

    inc d                                         ; $598c: $14
    adc a                                         ; $598d: $8f
    add hl, hl                                    ; $598e: $29
    ld l, e                                       ; $598f: $6b
    jr nc, jr_0d2_5992                            ; $5990: $30 $00

jr_0d2_5992:
    nop                                           ; $5992: $00
    sub h                                         ; $5993: $94
    dec h                                         ; $5994: $25
    adc c                                         ; $5995: $89
    ld [$2000], sp                                ; $5996: $08 $00 $20
    ld hl, $5f00                                  ; $5999: $21 $00 $5f
    inc bc                                        ; $599c: $03
    ld l, h                                       ; $599d: $6c
    inc [hl]                                      ; $599e: $34
    adc e                                         ; $599f: $8b
    add hl, hl                                    ; $59a0: $29
    ld bc, $5b00                                  ; $59a1: $01 $00 $5b
    ld bc, $2108                                  ; $59a4: $01 $08 $21
    ld e, a                                       ; $59a7: $5f
    inc bc                                        ; $59a8: $03
    nop                                           ; $59a9: $00
    nop                                           ; $59aa: $00
    add l                                         ; $59ab: $85
    ld c, h                                       ; $59ac: $4c
    add hl, sp                                    ; $59ad: $39
    ld [hl], $89                                  ; $59ae: $36 $89
    inc d                                         ; $59b0: $14
    nop                                           ; $59b1: $00
    inc c                                         ; $59b2: $0c
    or [hl]                                       ; $59b3: $b6
    dec h                                         ; $59b4: $25
    add e                                         ; $59b5: $83
    ld h, h                                       ; $59b6: $64
    ld a, d                                       ; $59b7: $7a
    ld b, d                                       ; $59b8: $42
    ld bc, $5f08                                  ; $59b9: $01 $08 $5f
    inc bc                                        ; $59bc: $03
    ld a, [hl+]                                   ; $59bd: $2a
    jr c, jr_0d2_594d                             ; $59be: $38 $8d

    ld sp, $0001                                  ; $59c0: $31 $01 $00
    ld e, e                                       ; $59c3: $5b
    ld bc, $286a                                  ; $59c4: $01 $6a $28
    ld e, a                                       ; $59c7: $5f
    inc bc                                        ; $59c8: $03
    nop                                           ; $59c9: $00
    nop                                           ; $59ca: $00
    or $41                                        ; $59cb: $f6 $41
    and e                                         ; $59cd: $a3
    ld d, b                                       ; $59ce: $50
    ld b, e                                       ; $59cf: $43
    jr nz, jr_0d2_59d2                            ; $59d0: $20 $00

jr_0d2_59d2:
    nop                                           ; $59d2: $00
    push bc                                       ; $59d3: $c5
    ld h, h                                       ; $59d4: $64
    ld a, d                                       ; $59d5: $7a
    ld b, d                                       ; $59d6: $42
    nop                                           ; $59d7: $00
    jr jr_0d2_59db                                ; $59d8: $18 $01

    nop                                           ; $59da: $00

jr_0d2_59db:
    ld e, a                                       ; $59db: $5f
    inc bc                                        ; $59dc: $03
    push bc                                       ; $59dd: $c5
    ld d, b                                       ; $59de: $50
    ld h, h                                       ; $59df: $64
    jr nz, jr_0d2_59e4                            ; $59e0: $20 $02

    nop                                           ; $59e2: $00
    ld e, e                                       ; $59e3: $5b

jr_0d2_59e4:
    ld bc, $035f                                  ; $59e4: $01 $5f $03
    ld h, h                                       ; $59e7: $64
    jr nz, jr_0d2_5a45                            ; $59e8: $20 $5b

    ld bc, $035f                                  ; $59ea: $01 $5f $03
    ld e, a                                       ; $59ed: $5f
    inc bc                                        ; $59ee: $03
    ld h, h                                       ; $59ef: $64
    jr nz, jr_0d2_5a4d                            ; $59f0: $20 $5b

    ld bc, $035f                                  ; $59f2: $01 $5f $03
    ld e, a                                       ; $59f5: $5f
    inc bc                                        ; $59f6: $03
    ld h, h                                       ; $59f7: $64
    jr nz, jr_0d2_59fc                            ; $59f8: $20 $02

    nop                                           ; $59fa: $00
    ld e, e                                       ; $59fb: $5b

jr_0d2_59fc:
    ld bc, $035f                                  ; $59fc: $01 $5f $03
    ld h, h                                       ; $59ff: $64
    jr nz, jr_0d2_5a04                            ; $5a00: $20 $02

    nop                                           ; $5a02: $00
    ld e, e                                       ; $5a03: $5b

jr_0d2_5a04:
    ld bc, $5185                                  ; $5a04: $01 $85 $51
    ld e, a                                       ; $5a07: $5f
    inc bc                                        ; $5a08: $03
    add l                                         ; $5a09: $85
    ld d, c                                       ; $5a0a: $51
    ld e, a                                       ; $5a0b: $5f
    inc bc                                        ; $5a0c: $03
    ld b, a                                       ; $5a0d: $47
    nop                                           ; $5a0e: $00
    ld e, a                                       ; $5a0f: $5f
    inc bc                                        ; $5a10: $03
    add l                                         ; $5a11: $85
    ld d, c                                       ; $5a12: $51
    ld e, a                                       ; $5a13: $5f
    inc bc                                        ; $5a14: $03
    ld b, a                                       ; $5a15: $47
    nop                                           ; $5a16: $00
    ld e, a                                       ; $5a17: $5f
    inc bc                                        ; $5a18: $03
    ld [bc], a                                    ; $5a19: $02
    nop                                           ; $5a1a: $00
    ld e, a                                       ; $5a1b: $5f
    inc bc                                        ; $5a1c: $03
    add l                                         ; $5a1d: $85
    ld d, c                                       ; $5a1e: $51
    ld e, a                                       ; $5a1f: $5f
    inc bc                                        ; $5a20: $03
    ld [bc], a                                    ; $5a21: $02
    nop                                           ; $5a22: $00
    add l                                         ; $5a23: $85
    ld d, c                                       ; $5a24: $51
    ld e, e                                       ; $5a25: $5b
    ld bc, $035f                                  ; $5a26: $01 $5f $03
    add l                                         ; $5a29: $85
    ld d, c                                       ; $5a2a: $51
    sbc b                                         ; $5a2b: $98
    add hl, de                                    ; $5a2c: $19
    ld b, a                                       ; $5a2d: $47
    nop                                           ; $5a2e: $00
    ld a, h                                       ; $5a2f: $7c
    ld a, [hl-]                                   ; $5a30: $3a
    ld b, a                                       ; $5a31: $47
    nop                                           ; $5a32: $00
    add l                                         ; $5a33: $85
    ld d, c                                       ; $5a34: $51
    ld e, h                                       ; $5a35: $5c
    ld l, $ea                                     ; $5a36: $2e $ea
    inc d                                         ; $5a38: $14
    inc h                                         ; $5a39: $24
    nop                                           ; $5a3a: $00
    dec e                                         ; $5a3b: $1d
    ld a, [de]                                    ; $5a3c: $1a
    add l                                         ; $5a3d: $85
    ld d, c                                       ; $5a3e: $51
    ld e, a                                       ; $5a3f: $5f
    inc bc                                        ; $5a40: $03
    ld [bc], a                                    ; $5a41: $02
    nop                                           ; $5a42: $00
    add l                                         ; $5a43: $85
    ld d, c                                       ; $5a44: $51

jr_0d2_5a45:
    dec d                                         ; $5a45: $15
    dec b                                         ; $5a46: $05
    ld e, a                                       ; $5a47: $5f
    inc bc                                        ; $5a48: $03
    add l                                         ; $5a49: $85
    ld d, c                                       ; $5a4a: $51
    ld e, d                                       ; $5a4b: $5a
    ld a, [hl-]                                   ; $5a4c: $3a

jr_0d2_5a4d:
    ld l, b                                       ; $5a4d: $68
    nop                                           ; $5a4e: $00
    cpl                                           ; $5a4f: $2f
    dec d                                         ; $5a50: $15
    dec h                                         ; $5a51: $25
    nop                                           ; $5a52: $00
    sub h                                         ; $5a53: $94
    dec e                                         ; $5a54: $1d
    sbc [hl]                                      ; $5a55: $9e
    ld a, [hl-]                                   ; $5a56: $3a
    rrca                                          ; $5a57: $0f
    ld de, $0865                                  ; $5a58: $11 $65 $08
    ld e, d                                       ; $5a5b: $5a
    ld a, [hl-]                                   ; $5a5c: $3a
    add h                                         ; $5a5d: $84
    ld c, l                                       ; $5a5e: $4d
    ld e, a                                       ; $5a5f: $5f
    inc bc                                        ; $5a60: $03
    ld [bc], a                                    ; $5a61: $02
    nop                                           ; $5a62: $00
    ld d, $05                                     ; $5a63: $16 $05
    add h                                         ; $5a65: $84
    ld d, c                                       ; $5a66: $51
    sbc $22                                       ; $5a67: $de $22
    ld b, h                                       ; $5a69: $44
    inc b                                         ; $5a6a: $04
    ld e, h                                       ; $5a6b: $5c
    ld a, [hl-]                                   ; $5a6c: $3a
    add l                                         ; $5a6d: $85
    ld d, c                                       ; $5a6e: $51
    xor $10                                       ; $5a6f: $ee $10
    ld b, l                                       ; $5a71: $45
    inc b                                         ; $5a72: $04
    ld a, [hl-]                                   ; $5a73: $3a
    ld [hl-], a                                   ; $5a74: $32
    ldh a, [$0c]                                  ; $5a75: $f0 $0c
    rst $18                                       ; $5a77: $df
    ld b, [hl]                                    ; $5a78: $46
    ld b, a                                       ; $5a79: $47
    nop                                           ; $5a7a: $00
    sub d                                         ; $5a7b: $92
    ld hl, $5184                                  ; $5a7c: $21 $84 $51
    ld e, a                                       ; $5a7f: $5f
    inc bc                                        ; $5a80: $03
    ld [bc], a                                    ; $5a81: $02
    nop                                           ; $5a82: $00
    and h                                         ; $5a83: $a4
    ld c, l                                       ; $5a84: $4d
    ld e, e                                       ; $5a85: $5b
    ld bc, $0eff                                  ; $5a86: $01 $ff $0e
    inc bc                                        ; $5a89: $03
    nop                                           ; $5a8a: $00
    ld hl, sp+$25                                 ; $5a8b: $f8 $25
    ld [de], a                                    ; $5a8d: $12
    add hl, bc                                    ; $5a8e: $09
    sbc $42                                       ; $5a8f: $de $42
    ld c, b                                       ; $5a91: $48
    nop                                           ; $5a92: $00
    sub a                                         ; $5a93: $97
    dec d                                         ; $5a94: $15
    ld e, e                                       ; $5a95: $5b
    ld [hl], $2e                                  ; $5a96: $36 $2e
    add hl, de                                    ; $5a98: $19
    ld h, $00                                     ; $5a99: $26 $00
    ld e, [hl]                                    ; $5a9b: $5e
    ld l, $5f                                     ; $5a9c: $2e $5f
    inc bc                                        ; $5a9e: $03
    ld c, $11                                     ; $5a9f: $0e $11
    ld [bc], a                                    ; $5aa1: $02
    nop                                           ; $5aa2: $00
    call nz, Call_000_154d                        ; $5aa3: $c4 $4d $15
    dec b                                         ; $5aa6: $05
    ld e, a                                       ; $5aa7: $5f
    inc bc                                        ; $5aa8: $03
    ld bc, $3b00                                  ; $5aa9: $01 $00 $3b
    ld a, [hl-]                                   ; $5aac: $3a
    adc $08                                       ; $5aad: $ce $08
    ld e, $57                                     ; $5aaf: $1e $57
    ld b, h                                       ; $5ab1: $44
    inc b                                         ; $5ab2: $04
    sbc l                                         ; $5ab3: $9d
    ld a, $10                                     ; $5ab4: $3e $10
    ld de, $004a                                  ; $5ab6: $11 $4a $00
    ld [hl+], a                                   ; $5ab9: $22
    inc b                                         ; $5aba: $04
    ld a, h                                       ; $5abb: $7c
    ld [hl], $5f                                  ; $5abc: $36 $5f
    inc bc                                        ; $5abe: $03
    adc e                                         ; $5abf: $8b
    ld [$0002], sp                                ; $5ac0: $08 $02 $00
    ld e, b                                       ; $5ac3: $58
    dec b                                         ; $5ac4: $05
    cp [hl]                                       ; $5ac5: $be
    ld a, [hl+]                                   ; $5ac6: $2a
    or b                                          ; $5ac7: $b0
    inc b                                         ; $5ac8: $04
    ld bc, $3b00                                  ; $5ac9: $01 $00 $3b
    ld a, [hl-]                                   ; $5acc: $3a
    xor a                                         ; $5acd: $af
    nop                                           ; $5ace: $00
    rst $38                                       ; $5acf: $ff
    ld c, d                                       ; $5ad0: $4a
    ld b, a                                       ; $5ad1: $47
    nop                                           ; $5ad2: $00
    dec sp                                        ; $5ad3: $3b
    ld a, [hl-]                                   ; $5ad4: $3a
    ld c, [hl]                                    ; $5ad5: $4e
    ld hl, $04f2                                  ; $5ad6: $21 $f2 $04
    daa                                           ; $5ad9: $27
    nop                                           ; $5ada: $00
    inc de                                        ; $5adb: $13
    dec c                                         ; $5adc: $0d
    ld e, a                                       ; $5add: $5f
    inc bc                                        ; $5ade: $03
    rst $10                                       ; $5adf: $d7
    dec h                                         ; $5ae0: $25
    ld [bc], a                                    ; $5ae1: $02
    nop                                           ; $5ae2: $00
    ld [hl], $05                                  ; $5ae3: $36 $05
    ld e, h                                       ; $5ae5: $5c
    ld a, [hl-]                                   ; $5ae6: $3a
    ld e, a                                       ; $5ae7: $5f
    inc bc                                        ; $5ae8: $03
    ld h, $00                                     ; $5ae9: $26 $00
    ld sp, hl                                     ; $5aeb: $f9
    dec l                                         ; $5aec: $2d
    rra                                           ; $5aed: $1f
    ld d, a                                       ; $5aee: $57
    rst $38                                       ; $5aef: $ff
    ld a, a                                       ; $5af0: $7f
    ld c, b                                       ; $5af1: $48
    nop                                           ; $5af2: $00
    ld a, h                                       ; $5af3: $7c
    ld b, d                                       ; $5af4: $42
    ld l, $7e                                     ; $5af5: $2e $7e
    rst $38                                       ; $5af7: $ff
    ld a, a                                       ; $5af8: $7f
    ld [bc], a                                    ; $5af9: $02
    nop                                           ; $5afa: $00
    inc [hl]                                      ; $5afb: $34
    dec c                                         ; $5afc: $0d
    ld e, a                                       ; $5afd: $5f
    inc bc                                        ; $5afe: $03
    adc d                                         ; $5aff: $8a
    inc b                                         ; $5b00: $04
    ld [bc], a                                    ; $5b01: $02
    nop                                           ; $5b02: $00
    ld d, [hl]                                    ; $5b03: $56
    dec c                                         ; $5b04: $0d
    ld a, h                                       ; $5b05: $7c
    ld a, $5f                                     ; $5b06: $3e $5f
    inc bc                                        ; $5b08: $03
    add hl, hl                                    ; $5b09: $29
    nop                                           ; $5b0a: $00
    ld e, e                                       ; $5b0b: $5b
    ld [hl-], a                                   ; $5b0c: $32
    ccf                                           ; $5b0d: $3f
    ld e, e                                       ; $5b0e: $5b
    rrca                                          ; $5b0f: $0f
    ld de, $2840                                  ; $5b10: $11 $40 $28
    sbc l                                         ; $5b13: $9d
    ld b, [hl]                                    ; $5b14: $46
    ld d, $7f                                     ; $5b15: $16 $7f
    adc [hl]                                      ; $5b17: $8e

Jump_0d2_5b18:
    nop                                           ; $5b18: $00
    ld [bc], a                                    ; $5b19: $02

Call_0d2_5b1a:
    nop                                           ; $5b1a: $00
    sub a                                         ; $5b1b: $97
    add hl, de                                    ; $5b1c: $19
    ld e, a                                       ; $5b1d: $5f
    inc bc                                        ; $5b1e: $03
    adc d                                         ; $5b1f: $8a
    nop                                           ; $5b20: $00
    ld [bc], a                                    ; $5b21: $02
    nop                                           ; $5b22: $00
    ld e, l                                       ; $5b23: $5d
    ld [bc], a                                    ; $5b24: $02

Call_0d2_5b25:
    ld e, e                                       ; $5b25: $5b
    ld [hl], $2b                                  ; $5b26: $36 $2b
    ld hl, $0049                                  ; $5b28: $21 $49 $00
    inc a                                         ; $5b2b: $3c
    ld l, $ff                                     ; $5b2c: $2e $ff
    ld d, d                                       ; $5b2e: $52
    halt                                          ; $5b2f: $76
    ld de, $1088                                  ; $5b30: $11 $88 $10
    ld l, $7e                                     ; $5b33: $2e $7e
    cp $52                                        ; $5b35: $fe $52
    rst $38                                       ; $5b37: $ff
    ld a, a                                       ; $5b38: $7f
    ld b, l                                       ; $5b39: $45
    nop                                           ; $5b3a: $00
    dec de                                        ; $5b3b: $1b
    ld l, $23                                     ; $5b3c: $2e $23
    ld b, [hl]                                    ; $5b3e: $46
    ld e, a                                       ; $5b3f: $5f
    inc bc                                        ; $5b40: $03
    ld [bc], a                                    ; $5b41: $02
    nop                                           ; $5b42: $00
    dec d                                         ; $5b43: $15

Call_0d2_5b44:
    dec b                                         ; $5b44: $05
    ld a, [hl-]                                   ; $5b45: $3a
    ld [hl], $5f                                  ; $5b46: $36 $5f

Call_0d2_5b48:
    inc bc                                        ; $5b48: $03
    ld c, c                                       ; $5b49: $49
    nop                                           ; $5b4a: $00
    rla                                           ; $5b4b: $17
    ld [hl-], a                                   ; $5b4c: $32
    rra                                           ; $5b4d: $1f
    ld d, a                                       ; $5b4e: $57
    db $ed                                        ; $5b4f: $ed
    db $10                                        ; $5b50: $10
    ld l, d                                       ; $5b51: $6a
    nop                                           ; $5b52: $00
    dec sp                                        ; $5b53: $3b
    ld a, [hl-]                                   ; $5b54: $3a
    rra                                           ; $5b55: $1f
    ld d, a                                       ; $5b56: $57
    ld c, $15                                     ; $5b57: $0e $15
    ld h, $00                                     ; $5b59: $26 $00
    dec de                                        ; $5b5b: $1b
    ld l, $43                                     ; $5b5c: $2e $43
    ld b, d                                       ; $5b5e: $42
    ld e, a                                       ; $5b5f: $5f
    inc bc                                        ; $5b60: $03
    ld [bc], a                                    ; $5b61: $02
    nop                                           ; $5b62: $00
    ld l, $15                                     ; $5b63: $2e $15
    db $dd                                        ; $5b65: $dd
    ld a, [de]                                    ; $5b66: $1a
    ld e, e                                       ; $5b67: $5b
    ld bc, $0006                                  ; $5b68: $01 $06 $00
    dec sp                                        ; $5b6b: $3b
    ld a, [hl-]                                   ; $5b6c: $3a
    rst $08                                       ; $5b6d: $cf
    db $10                                        ; $5b6e: $10
    rra                                           ; $5b6f: $1f
    ld d, a                                       ; $5b70: $57
    ld h, $00                                     ; $5b71: $26 $00
    dec de                                        ; $5b73: $1b
    ld [hl-], a                                   ; $5b74: $32
    rra                                           ; $5b75: $1f
    ld d, a                                       ; $5b76: $57
    ret nc                                        ; $5b77: $d0

    inc b                                         ; $5b78: $04
    inc h                                         ; $5b79: $24
    nop                                           ; $5b7a: $00
    halt                                          ; $5b7b: $76
    ld de, $3e43                                  ; $5b7c: $11 $43 $3e
    sbc $26                                       ; $5b7f: $de $26
    ld [bc], a                                    ; $5b81: $02
    nop                                           ; $5b82: $00
    ld [hl], l                                    ; $5b83: $75
    dec c                                         ; $5b84: $0d
    ld e, a                                       ; $5b85: $5f
    inc bc                                        ; $5b86: $03
    call c, Call_0d2_483e                         ; $5b87: $dc $3e $48
    nop                                           ; $5b8a: $00
    dec sp                                        ; $5b8b: $3b
    ld a, [hl-]                                   ; $5b8c: $3a
    or b                                          ; $5b8d: $b0
    db $10                                        ; $5b8e: $10
    rra                                           ; $5b8f: $1f
    ld d, a                                       ; $5b90: $57
    ld b, a                                       ; $5b91: $47
    nop                                           ; $5b92: $00
    cp d                                          ; $5b93: $ba
    dec d                                         ; $5b94: $15
    ld e, h                                       ; $5b95: $5c
    ld a, [hl-]                                   ; $5b96: $3a
    adc $04                                       ; $5b97: $ce $04
    ld b, [hl]                                    ; $5b99: $46
    nop                                           ; $5b9a: $00
    halt                                          ; $5b9b: $76
    ld de, $3e63                                  ; $5b9c: $11 $63 $3e
    ld e, a                                       ; $5b9f: $5f
    inc bc                                        ; $5ba0: $03
    ld bc, $b800                                  ; $5ba1: $01 $00 $b8
    add hl, de                                    ; $5ba4: $19
    ld a, a                                       ; $5ba5: $7f
    ld c, a                                       ; $5ba6: $4f
    ld e, a                                       ; $5ba7: $5f
    inc bc                                        ; $5ba8: $03
    ld c, b                                       ; $5ba9: $48
    nop                                           ; $5baa: $00
    dec sp                                        ; $5bab: $3b
    ld a, [hl-]                                   ; $5bac: $3a
    rra                                           ; $5bad: $1f
    ld d, a                                       ; $5bae: $57
    ld l, $15                                     ; $5baf: $2e $15
    ld h, $00                                     ; $5bb1: $26 $00
    sbc b                                         ; $5bb3: $98
    dec d                                         ; $5bb4: $15
    xor [hl]                                      ; $5bb5: $ae
    inc b                                         ; $5bb6: $04
    sbc e                                         ; $5bb7: $9b
    ld a, $46                                     ; $5bb8: $3e $46
    nop                                           ; $5bba: $00
    ld e, d                                       ; $5bbb: $5a
    ld [hl-], a                                   ; $5bbc: $32
    add d                                         ; $5bbd: $82
    ld a, $5f                                     ; $5bbe: $3e $5f
    inc bc                                        ; $5bc0: $03
    ld [bc], a                                    ; $5bc1: $02
    nop                                           ; $5bc2: $00
    ld e, e                                       ; $5bc3: $5b
    ld bc, $47ff                                  ; $5bc4: $01 $ff $47
    call c, Call_000_231e                         ; $5bc7: $dc $1e $23
    nop                                           ; $5bca: $00
    dec sp                                        ; $5bcb: $3b
    ld [hl], $0e                                  ; $5bcc: $36 $0e
    dec d                                         ; $5bce: $15
    ld a, a                                       ; $5bcf: $7f
    ld c, a                                       ; $5bd0: $4f
    inc h                                         ; $5bd1: $24
    nop                                           ; $5bd2: $00
    and d                                         ; $5bd3: $a2
    ld a, [hl-]                                   ; $5bd4: $3a
    sub b                                         ; $5bd5: $90
    add hl, de                                    ; $5bd6: $19
    rst $38                                       ; $5bd7: $ff
    ld b, a                                       ; $5bd8: $47
    adc e                                         ; $5bd9: $8b
    nop                                           ; $5bda: $00
    ld sp, hl                                     ; $5bdb: $f9
    dec h                                         ; $5bdc: $25
    and d                                         ; $5bdd: $a2
    ld a, [hl-]                                   ; $5bde: $3a
    ld e, a                                       ; $5bdf: $5f
    inc bc                                        ; $5be0: $03
    ld [bc], a                                    ; $5be1: $02
    nop                                           ; $5be2: $00
    ld e, e                                       ; $5be3: $5b
    ld bc, $035f                                  ; $5be4: $01 $5f $03
    ld e, a                                       ; $5be7: $5f
    inc bc                                        ; $5be8: $03
    ld e, e                                       ; $5be9: $5b
    ld bc, $035f                                  ; $5bea: $01 $5f $03
    ld e, a                                       ; $5bed: $5f
    inc bc                                        ; $5bee: $03
    ld e, a                                       ; $5bef: $5f
    inc bc                                        ; $5bf0: $03
    ld e, e                                       ; $5bf1: $5b
    ld bc, $035f                                  ; $5bf2: $01 $5f $03
    ld e, a                                       ; $5bf5: $5f
    inc bc                                        ; $5bf6: $03
    ld e, a                                       ; $5bf7: $5f
    inc bc                                        ; $5bf8: $03
    ld [bc], a                                    ; $5bf9: $02
    nop                                           ; $5bfa: $00
    ld e, e                                       ; $5bfb: $5b
    ld bc, $035f                                  ; $5bfc: $01 $5f $03
    ld e, a                                       ; $5bff: $5f
    inc bc                                        ; $5c00: $03
    ld [bc], a                                    ; $5c01: $02
    nop                                           ; $5c02: $00
    ld e, e                                       ; $5c03: $5b
    ld bc, $0182                                  ; $5c04: $01 $82 $01
    ld e, a                                       ; $5c07: $5f
    inc bc                                        ; $5c08: $03
    add d                                         ; $5c09: $82
    ld bc, $035f                                  ; $5c0a: $01 $5f $03
    add l                                         ; $5c0d: $85
    nop                                           ; $5c0e: $00
    ld e, a                                       ; $5c0f: $5f
    inc bc                                        ; $5c10: $03
    add d                                         ; $5c11: $82
    ld bc, $035f                                  ; $5c12: $01 $5f $03
    add l                                         ; $5c15: $85
    nop                                           ; $5c16: $00
    rst $20                                       ; $5c17: $e7
    inc b                                         ; $5c18: $04
    ld [bc], a                                    ; $5c19: $02
    nop                                           ; $5c1a: $00
    ld e, a                                       ; $5c1b: $5f
    inc bc                                        ; $5c1c: $03
    add d                                         ; $5c1d: $82
    ld bc, $04e7                                  ; $5c1e: $01 $e7 $04
    ld [bc], a                                    ; $5c21: $02
    nop                                           ; $5c22: $00
    ld e, e                                       ; $5c23: $5b
    ld bc, $0182                                  ; $5c24: $01 $82 $01
    ld e, a                                       ; $5c27: $5f
    inc bc                                        ; $5c28: $03
    ld b, d                                       ; $5c29: $42
    nop                                           ; $5c2a: $00
    ld hl, sp+$0a                                 ; $5c2b: $f8 $0a
    rst $38                                       ; $5c2d: $ff
    inc hl                                        ; $5c2e: $23
    ld c, d                                       ; $5c2f: $4a
    ld bc, $0042                                  ; $5c30: $01 $42 $00
    ld hl, sp+$0a                                 ; $5c33: $f8 $0a
    rst $38                                       ; $5c35: $ff
    rra                                           ; $5c36: $1f
    add hl, hl                                    ; $5c37: $29
    ld bc, $0002                                  ; $5c38: $01 $02 $00
    ld e, a                                       ; $5c3b: $5f
    inc bc                                        ; $5c3c: $03
    add d                                         ; $5c3d: $82
    ld bc, $0085                                  ; $5c3e: $01 $85 $00
    ld [bc], a                                    ; $5c41: $02
    nop                                           ; $5c42: $00
    sbc b                                         ; $5c43: $98
    ld bc, HeaderNewLicenseeCode                  ; $5c44: $01 $44 $01
    ld e, [hl]                                    ; $5c47: $5e
    dec bc                                        ; $5c48: $0b
    add h                                         ; $5c49: $84
    nop                                           ; $5c4a: $00
    ret c                                         ; $5c4b: $d8

    ld b, $be                                     ; $5c4c: $06 $be
    rra                                           ; $5c4e: $1f
    adc h                                         ; $5c4f: $8c
    ld bc, $00a6                                  ; $5c50: $01 $a6 $00
    ret c                                         ; $5c53: $d8

    ld b, $be                                     ; $5c54: $06 $be
    rra                                           ; $5c56: $1f
    xor [hl]                                      ; $5c57: $ae
    ld bc, $0064                                  ; $5c58: $01 $64 $00
    ld [de], a                                    ; $5c5b: $12
    ld [bc], a                                    ; $5c5c: $02
    ld h, e                                       ; $5c5d: $63
    ld bc, $0b5e                                  ; $5c5e: $01 $5e $0b
    ld [bc], a                                    ; $5c61: $02
    nop                                           ; $5c62: $00
    sbc b                                         ; $5c63: $98
    ld bc, $179e                                  ; $5c64: $01 $9e $17
    ld h, h                                       ; $5c67: $64
    ld bc, $00a9                                  ; $5c68: $01 $a9 $00
    rst $38                                       ; $5c6b: $ff
    rra                                           ; $5c6c: $1f
    ld d, h                                       ; $5c6d: $54
    ld [bc], a                                    ; $5c6e: $02
    ld c, d                                       ; $5c6f: $4a
    ld bc, $0088                                  ; $5c70: $01 $88 $00
    rst $38                                       ; $5c73: $ff
    rra                                           ; $5c74: $1f
    ld d, h                                       ; $5c75: $54
    ld [bc], a                                    ; $5c76: $02
    ld c, d                                       ; $5c77: $4a
    ld bc, $0043                                  ; $5c78: $01 $43 $00
    ld [hl-], a                                   ; $5c7b: $32
    ld [bc], a                                    ; $5c7c: $02
    sbc [hl]                                      ; $5c7d: $9e
    rla                                           ; $5c7e: $17
    ld h, h                                       ; $5c7f: $64
    ld bc, $0002                                  ; $5c80: $01 $02 $00
    or e                                          ; $5c83: $b3
    ld bc, $0f7f                                  ; $5c84: $01 $7f $0f
    ld h, a                                       ; $5c87: $67
    dec b                                         ; $5c88: $05
    add a                                         ; $5c89: $87
    nop                                           ; $5c8a: $00
    inc [hl]                                      ; $5c8b: $34
    ld [bc], a                                    ; $5c8c: $02
    rst $38                                       ; $5c8d: $ff
    rla                                           ; $5c8e: $17
    or l                                          ; $5c8f: $b5
    dec l                                         ; $5c90: $2d
    add a                                         ; $5c91: $87
    nop                                           ; $5c92: $00
    inc [hl]                                      ; $5c93: $34
    ld [bc], a                                    ; $5c94: $02
    rst $38                                       ; $5c95: $ff
    rla                                           ; $5c96: $17
    or l                                          ; $5c97: $b5
    dec l                                         ; $5c98: $2d
    ld b, e                                       ; $5c99: $43
    nop                                           ; $5c9a: $00
    ld [hl-], a                                   ; $5c9b: $32
    ld [bc], a                                    ; $5c9c: $02
    ld a, a                                       ; $5c9d: $7f
    rrca                                          ; $5c9e: $0f
    ld l, c                                       ; $5c9f: $69
    dec b                                         ; $5ca0: $05
    ld [bc], a                                    ; $5ca1: $02
    nop                                           ; $5ca2: $00
    push af                                       ; $5ca3: $f5
    ld bc, $04e6                                  ; $5ca4: $01 $e6 $04
    ld e, a                                       ; $5ca7: $5f
    inc bc                                        ; $5ca8: $03
    ld hl, $d500                                  ; $5ca9: $21 $00 $d5
    ld sp, $4abc                                  ; $5cac: $31 $bc $4a
    and a                                         ; $5caf: $a7
    stop                                          ; $5cb0: $10 $00
    nop                                           ; $5cb2: $00
    push de                                       ; $5cb3: $d5
    ld sp, $4ebd                                  ; $5cb4: $31 $bd $4e
    adc b                                         ; $5cb7: $88
    inc b                                         ; $5cb8: $04
    ld h, [hl]                                    ; $5cb9: $66
    nop                                           ; $5cba: $00
    inc sp                                        ; $5cbb: $33
    ld [bc], a                                    ; $5cbc: $02
    jp Jump_0d2_5f09                              ; $5cbd: $c3 $09 $5f


    inc bc                                        ; $5cc0: $03
    ld [bc], a                                    ; $5cc1: $02
    nop                                           ; $5cc2: $00
    or $35                                        ; $5cc3: $f6 $35
    and h                                         ; $5cc5: $a4
    add hl, bc                                    ; $5cc6: $09
    ld e, l                                       ; $5cc7: $5d
    ld [bc], a                                    ; $5cc8: $02
    nop                                           ; $5cc9: $00
    nop                                           ; $5cca: $00
    jp nc, Jump_000_1f31                          ; $5ccb: $d2 $31 $1f

    ld d, a                                       ; $5cce: $57
    adc c                                         ; $5ccf: $89
    ld [$0000], sp                                ; $5cd0: $08 $00 $00
    jp nc, $fe31                                  ; $5cd3: $d2 $31 $fe

    ld d, d                                       ; $5cd6: $52
    adc c                                         ; $5cd7: $89
    ld [$0023], sp                                ; $5cd8: $08 $23 $00
    ld a, d                                       ; $5cdb: $7a
    ld b, d                                       ; $5cdc: $42
    push bc                                       ; $5cdd: $c5
    add hl, bc                                    ; $5cde: $09
    ld e, a                                       ; $5cdf: $5f
    inc bc                                        ; $5ce0: $03
    ld bc, $5d00                                  ; $5ce1: $01 $00 $5d
    ld [bc], a                                    ; $5ce4: $02
    and l                                         ; $5ce5: $a5
    dec c                                         ; $5ce6: $0d
    rra                                           ; $5ce7: $1f
    ld d, a                                       ; $5ce8: $57
    inc h                                         ; $5ce9: $24
    nop                                           ; $5cea: $00
    ld [hl], b                                    ; $5ceb: $70
    ld d, d                                       ; $5cec: $52
    ld e, a                                       ; $5ced: $5f
    ld h, e                                       ; $5cee: $63
    ldh [rKEY1], a                                ; $5cef: $e0 $4d
    ld b, l                                       ; $5cf1: $45
    inc b                                         ; $5cf2: $04
    ret                                           ; $5cf3: $c9


    ld l, d                                       ; $5cf4: $6a
    ld a, $5f                                     ; $5cf5: $3e $5f
    ldh [rKEY1], a                                ; $5cf7: $e0 $4d
    ld b, h                                       ; $5cf9: $44
    inc b                                         ; $5cfa: $04
    rra                                           ; $5cfb: $1f
    ld d, a                                       ; $5cfc: $57
    inc bc                                        ; $5cfd: $03
    ld c, $5f                                     ; $5cfe: $0e $5f
    inc bc                                        ; $5d00: $03
    ld bc, $5d00                                  ; $5d01: $01 $00 $5d
    ld [bc], a                                    ; $5d04: $02
    push bc                                       ; $5d05: $c5
    dec c                                         ; $5d06: $0d
    ld a, b                                       ; $5d07: $78
    ld b, d                                       ; $5d08: $42
    inc hl                                        ; $5d09: $23
    nop                                           ; $5d0a: $00
    jp nc, Jump_0d2_4031                          ; $5d0b: $d2 $31 $40

    dec a                                         ; $5d0e: $3d
    rra                                           ; $5d0f: $1f
    ld d, a                                       ; $5d10: $57
    inc hl                                        ; $5d11: $23
    nop                                           ; $5d12: $00
    jp nc, Jump_0d2_4031                          ; $5d13: $d2 $31 $40

    dec a                                         ; $5d16: $3d
    rra                                           ; $5d17: $1f
    ld d, a                                       ; $5d18: $57
    ld b, h                                       ; $5d19: $44
    inc b                                         ; $5d1a: $04
    ld a, b                                       ; $5d1b: $78
    ld b, d                                       ; $5d1c: $42
    inc h                                         ; $5d1d: $24
    ld c, $5f                                     ; $5d1e: $0e $5f
    inc bc                                        ; $5d20: $03
    ld [bc], a                                    ; $5d21: $02
    nop                                           ; $5d22: $00
    ld b, h                                       ; $5d23: $44
    ld c, $5d                                     ; $5d24: $0e $5d
    ld [bc], a                                    ; $5d26: $02
    dec c                                         ; $5d27: $0d
    add hl, de                                    ; $5d28: $19
    nop                                           ; $5d29: $00
    nop                                           ; $5d2a: $00
    ld c, [hl]                                    ; $5d2b: $4e
    ld hl, $571f                                  ; $5d2c: $21 $1f $57
    jp nc, Jump_000_0031                          ; $5d2f: $d2 $31 $00

    nop                                           ; $5d32: $00
    ld c, [hl]                                    ; $5d33: $4e
    ld hl, $571f                                  ; $5d34: $21 $1f $57
    jp nc, $0231                                  ; $5d37: $d2 $31 $02

    nop                                           ; $5d3a: $00
    ld e, a                                       ; $5d3b: $5f
    inc bc                                        ; $5d3c: $03
    ld b, h                                       ; $5d3d: $44
    ld c, $0d                                     ; $5d3e: $0e $0d
    add hl, de                                    ; $5d40: $19
    ld [bc], a                                    ; $5d41: $02
    nop                                           ; $5d42: $00
    ld b, l                                       ; $5d43: $45
    ld [de], a                                    ; $5d44: $12
    ld e, e                                       ; $5d45: $5b
    ld bc, $035f                                  ; $5d46: $01 $5f $03
    adc b                                         ; $5d49: $88
    inc c                                         ; $5d4a: $0c
    ld e, d                                       ; $5d4b: $5a
    ld a, $b1                                     ; $5d4c: $3e $b1
    dec l                                         ; $5d4e: $2d
    cp $52                                        ; $5d4f: $fe $52
    adc b                                         ; $5d51: $88
    inc c                                         ; $5d52: $0c
    ld e, e                                       ; $5d53: $5b
    ld a, $b2                                     ; $5d54: $3e $b2
    dec l                                         ; $5d56: $2d
    rst $38                                       ; $5d57: $ff
    ld d, d                                       ; $5d58: $52

Call_0d2_5d59:
    ld [bc], a                                    ; $5d59: $02
    nop                                           ; $5d5a: $00
    ld e, a                                       ; $5d5b: $5f
    inc bc                                        ; $5d5c: $03
    ld b, l                                       ; $5d5d: $45
    ld [de], a                                    ; $5d5e: $12
    add l                                         ; $5d5f: $85
    nop                                           ; $5d60: $00
    ld [bc], a                                    ; $5d61: $02
    nop                                           ; $5d62: $00
    ld h, l                                       ; $5d63: $65
    ld [de], a                                    ; $5d64: $12
    sub a                                         ; $5d65: $97
    ld bc, $033c                                  ; $5d66: $01 $3c $03
    ret z                                         ; $5d69: $c8

    inc c                                         ; $5d6a: $0c
    rla                                           ; $5d6b: $17
    ld [hl], $fe                                  ; $5d6c: $36 $fe
    ld d, d                                       ; $5d6e: $52
    add hl, de                                    ; $5d6f: $19
    inc bc                                        ; $5d70: $03
    xor b                                         ; $5d71: $a8
    ld [$3a38], sp                                ; $5d72: $08 $38 $3a

Call_0d2_5d75:
    cp $52                                        ; $5d75: $fe $52
    rst $38                                       ; $5d77: $ff
    daa                                           ; $5d78: $27
    ld b, e                                       ; $5d79: $43
    nop                                           ; $5d7a: $00
    dec a                                         ; $5d7b: $3d
    inc bc                                        ; $5d7c: $03
    ld h, l                                       ; $5d7d: $65
    ld [de], a                                    ; $5d7e: $12
    ld c, d                                       ; $5d7f: $4a
    add hl, bc                                    ; $5d80: $09
    ld bc, $4700                                  ; $5d81: $01 $00 $47
    ld c, $5b                                     ; $5d84: $0e $5b
    ld bc, $035f                                  ; $5d86: $01 $5f $03
    rst $20                                       ; $5d89: $e7
    nop                                           ; $5d8a: $00
    ld hl, sp+$02                                 ; $5d8b: $f8 $02
    cp h                                          ; $5d8d: $bc
    ld c, d                                       ; $5d8e: $4a
    dec l                                         ; $5d8f: $2d
    dec e                                         ; $5d90: $1d
    ld a, [bc]                                    ; $5d91: $0a
    add hl, bc                                    ; $5d92: $09
    ld a, [hl-]                                   ; $5d93: $3a
    rrca                                          ; $5d94: $0f
    cp l                                          ; $5d95: $bd
    ld c, d                                       ; $5d96: $4a
    or c                                          ; $5d97: $b1
    ld hl, $0021                                  ; $5d98: $21 $21 $00
    add l                                         ; $5d9b: $85
    ld d, $5f                                     ; $5d9c: $16 $5f
    inc bc                                        ; $5d9e: $03
    ldh a, [$09]                                  ; $5d9f: $f0 $09
    ld bc, $a600                                  ; $5da1: $01 $00 $a6
    ld d, $5f                                     ; $5da4: $16 $5f
    inc bc                                        ; $5da6: $03
    sub e                                         ; $5da7: $93
    inc c                                         ; $5da8: $0c
    jr nz, jr_0d2_5dab                            ; $5da9: $20 $00

jr_0d2_5dab:
    ld d, h                                       ; $5dab: $54
    add hl, hl                                    ; $5dac: $29
    rl b                                          ; $5dad: $cb $10
    jr jr_0d2_5de7                                ; $5daf: $18 $36

    nop                                           ; $5db1: $00
    nop                                           ; $5db2: $00
    or [hl]                                       ; $5db3: $b6
    ld sp, $0ceb                                  ; $5db4: $31 $eb $0c
    sub l                                         ; $5db7: $95
    ld [bc], a                                    ; $5db8: $02
    nop                                           ; $5db9: $00
    nop                                           ; $5dba: $00
    and [hl]                                      ; $5dbb: $a6
    ld d, $70                                     ; $5dbc: $16 $70
    inc c                                         ; $5dbe: $0c
    ld e, a                                       ; $5dbf: $5f
    inc bc                                        ; $5dc0: $03
    ld bc, $5000                                  ; $5dc1: $01 $00 $50
    ld [$035f], sp                                ; $5dc4: $08 $5f $03
    or $1c                                        ; $5dc7: $f6 $1c
    jr nz, jr_0d2_5dcb                            ; $5dc9: $20 $00

jr_0d2_5dcb:
    or l                                          ; $5dcb: $b5
    dec l                                         ; $5dcc: $2d
    adc l                                         ; $5dcd: $8d
    inc c                                         ; $5dce: $0c
    sbc $4e                                       ; $5dcf: $de $4e
    jr nz, jr_0d2_5dd3                            ; $5dd1: $20 $00

jr_0d2_5dd3:
    or l                                          ; $5dd3: $b5
    dec l                                         ; $5dd4: $2d
    ld l, [hl]                                    ; $5dd5: $6e
    ld [$4ede], sp                                ; $5dd6: $08 $de $4e
    nop                                           ; $5dd9: $00
    nop                                           ; $5dda: $00
    ld e, a                                       ; $5ddb: $5f
    inc bc                                        ; $5ddc: $03
    ld d, b                                       ; $5ddd: $50
    ld [$28f4], sp                                ; $5dde: $08 $f4 $28
    ld [bc], a                                    ; $5de1: $02
    nop                                           ; $5de2: $00
    ld e, e                                       ; $5de3: $5b
    ld bc, $035f                                  ; $5de4: $01 $5f $03

jr_0d2_5de7:
    db $f4                                        ; $5de7: $f4
    jr z, @+$5d                                   ; $5de8: $28 $5b

    ld bc, $035f                                  ; $5dea: $01 $5f $03
    ld e, a                                       ; $5ded: $5f
    inc bc                                        ; $5dee: $03
    db $f4                                        ; $5def: $f4
    jr z, jr_0d2_5e4d                             ; $5df0: $28 $5b

    ld bc, $035f                                  ; $5df2: $01 $5f $03
    ld e, a                                       ; $5df5: $5f
    inc bc                                        ; $5df6: $03
    db $f4                                        ; $5df7: $f4
    jr z, jr_0d2_5dfc                             ; $5df8: $28 $02

    nop                                           ; $5dfa: $00
    ld e, e                                       ; $5dfb: $5b

jr_0d2_5dfc:
    ld bc, $035f                                  ; $5dfc: $01 $5f $03
    db $f4                                        ; $5dff: $f4
    jr z, @+$04                                   ; $5e00: $28 $02

    nop                                           ; $5e02: $00
    jp nc, $5f18                                  ; $5e03: $d2 $18 $5f

    inc bc                                        ; $5e06: $03
    ld e, e                                       ; $5e07: $5b
    ld bc, $1003                                  ; $5e08: $01 $03 $10
    ld e, a                                       ; $5e0b: $5f
    inc bc                                        ; $5e0c: $03
    jp nc, Jump_0d2_5b18                          ; $5e0d: $d2 $18 $5b

    ld bc, $1003                                  ; $5e10: $01 $03 $10
    ld e, a                                       ; $5e13: $5f
    inc bc                                        ; $5e14: $03
    jp nc, Jump_0d2_5b18                          ; $5e15: $d2 $18 $5b

    ld bc, $0002                                  ; $5e18: $01 $02 $00
    ld e, a                                       ; $5e1b: $5f
    inc bc                                        ; $5e1c: $03
    jp nc, Jump_0d2_5b18                          ; $5e1d: $d2 $18 $5b

    ld bc, $0002                                  ; $5e20: $01 $02 $00
    jp nc, $5f18                                  ; $5e23: $d2 $18 $5f

    inc bc                                        ; $5e26: $03
    ld e, e                                       ; $5e27: $5b
    ld bc, $1003                                  ; $5e28: $01 $03 $10
    jr nc, @+$42                                  ; $5e2b: $30 $40

    ld c, c                                       ; $5e2d: $49
    inc h                                         ; $5e2e: $24
    jp nc, $0318                                  ; $5e2f: $d2 $18 $03

    db $10                                        ; $5e32: $10
    ld l, b                                       ; $5e33: $68
    jr nz, jr_0d2_5e42                            ; $5e34: $20 $0c

    ld sp, $18d2                                  ; $5e36: $31 $d2 $18
    ld [bc], a                                    ; $5e39: $02
    nop                                           ; $5e3a: $00
    ld e, a                                       ; $5e3b: $5f
    inc bc                                        ; $5e3c: $03
    jp nc, $d218                                  ; $5e3d: $d2 $18 $d2

    jr @+$04                                      ; $5e40: $18 $02

jr_0d2_5e42:
    nop                                           ; $5e42: $00
    jp nc, $5f18                                  ; $5e43: $d2 $18 $5f

    inc bc                                        ; $5e46: $03
    ld e, e                                       ; $5e47: $5b
    ld bc, $1043                                  ; $5e48: $01 $43 $10
    adc c                                         ; $5e4b: $89
    inc h                                         ; $5e4c: $24

jr_0d2_5e4d:
    ld b, [hl]                                    ; $5e4d: $46
    jr @+$6f                                      ; $5e4e: $18 $6d

    inc [hl]                                      ; $5e50: $34
    ld b, b                                       ; $5e51: $40
    inc b                                         ; $5e52: $04
    ld l, b                                       ; $5e53: $68
    jr nz, @+$0b                                  ; $5e54: $20 $09

    dec h                                         ; $5e56: $25
    ld h, h                                       ; $5e57: $64
    inc d                                         ; $5e58: $14
    ld [hl+], a                                   ; $5e59: $22
    nop                                           ; $5e5a: $00
    ld e, a                                       ; $5e5b: $5f
    inc bc                                        ; $5e5c: $03
    jp nc, $0318                                  ; $5e5d: $d2 $18 $03

    db $10                                        ; $5e60: $10
    ld [bc], a                                    ; $5e61: $02
    nop                                           ; $5e62: $00
    sub b                                         ; $5e63: $90
    jr nz, jr_0d2_5ec1                            ; $5e64: $20 $5b

    ld bc, $035f                                  ; $5e66: $01 $5f $03
    ld b, h                                       ; $5e69: $44
    db $10                                        ; $5e6a: $10
    adc a                                         ; $5e6b: $8f
    ld sp, $3a19                                  ; $5e6c: $31 $19 $3a
    rlca                                          ; $5e6f: $07
    inc h                                         ; $5e70: $24
    ld [bc], a                                    ; $5e71: $02
    inc d                                         ; $5e72: $14
    sub e                                         ; $5e73: $93
    dec l                                         ; $5e74: $2d
    rlca                                          ; $5e75: $07
    inc h                                         ; $5e76: $24
    add a                                         ; $5e77: $87
    inc e                                         ; $5e78: $1c
    ld [hl+], a                                   ; $5e79: $22
    ld [$035f], sp                                ; $5e7a: $08 $5f $03
    jp nc, Jump_000_2618                          ; $5e7d: $d2 $18 $26

    inc e                                         ; $5e80: $1c
    ld bc, $f400                                  ; $5e81: $01 $00 $f4
    db $10                                        ; $5e84: $10
    ld e, a                                       ; $5e85: $5f
    inc bc                                        ; $5e86: $03
    dec h                                         ; $5e87: $25
    inc d                                         ; $5e88: $14
    ld [bc], a                                    ; $5e89: $02
    inc c                                         ; $5e8a: $0c
    sub e                                         ; $5e8b: $93
    dec l                                         ; $5e8c: $2d
    add hl, de                                    ; $5e8d: $19
    ld a, [hl-]                                   ; $5e8e: $3a
    add a                                         ; $5e8f: $87
    inc e                                         ; $5e90: $1c
    rlca                                          ; $5e91: $07
    inc h                                         ; $5e92: $24
    add hl, de                                    ; $5e93: $19
    ld a, [hl-]                                   ; $5e94: $3a
    sub e                                         ; $5e95: $93
    dec l                                         ; $5e96: $2d
    cp h                                          ; $5e97: $bc
    ld c, [hl]                                    ; $5e98: $4e
    ld [bc], a                                    ; $5e99: $02
    ld [$035f], sp                                ; $5e9a: $08 $5f $03
    jp nc, Jump_000_0718                          ; $5e9d: $d2 $18 $07

    jr nz, jr_0d2_5ea4                            ; $5ea0: $20 $02

    nop                                           ; $5ea2: $00
    db $f4                                        ; $5ea3: $f4

jr_0d2_5ea4:
    db $10                                        ; $5ea4: $10
    ld e, a                                       ; $5ea5: $5f
    inc bc                                        ; $5ea6: $03
    add a                                         ; $5ea7: $87
    inc e                                         ; $5ea8: $1c
    ld b, e                                       ; $5ea9: $43
    db $10                                        ; $5eaa: $10
    ld e, d                                       ; $5eab: $5a
    ld b, d                                       ; $5eac: $42
    inc l                                         ; $5ead: $2c
    ld sp, $2406                                  ; $5eae: $31 $06 $24
    ld [bc], a                                    ; $5eb1: $02
    inc e                                         ; $5eb2: $1c
    add hl, de                                    ; $5eb3: $19
    ld a, [hl-]                                   ; $5eb4: $3a
    cp h                                          ; $5eb5: $bc
    ld c, [hl]                                    ; $5eb6: $4e
    inc bc                                        ; $5eb7: $03
    inc d                                         ; $5eb8: $14
    inc b                                         ; $5eb9: $04
    inc d                                         ; $5eba: $14
    jp nc, $5f18                                  ; $5ebb: $d2 $18 $5f

    inc bc                                        ; $5ebe: $03
    sub $31                                       ; $5ebf: $d6 $31

jr_0d2_5ec1:
    ld [bc], a                                    ; $5ec1: $02
    nop                                           ; $5ec2: $00
    inc d                                         ; $5ec3: $14
    dec c                                         ; $5ec4: $0d
    ld a, b                                       ; $5ec5: $78
    ld b, [hl]                                    ; $5ec6: $46
    ld e, a                                       ; $5ec7: $5f
    inc bc                                        ; $5ec8: $03
    ld [bc], a                                    ; $5ec9: $02
    inc e                                         ; $5eca: $1c
    sub e                                         ; $5ecb: $93
    dec l                                         ; $5ecc: $2d
    ld b, $24                                     ; $5ecd: $06 $24
    add hl, de                                    ; $5ecf: $19
    ld a, [hl-]                                   ; $5ed0: $3a
    ld [bc], a                                    ; $5ed1: $02
    inc e                                         ; $5ed2: $1c
    add hl, de                                    ; $5ed3: $19
    ld a, [hl-]                                   ; $5ed4: $3a
    cp h                                          ; $5ed5: $bc
    ld c, [hl]                                    ; $5ed6: $4e
    inc bc                                        ; $5ed7: $03
    inc d                                         ; $5ed8: $14
    inc bc                                        ; $5ed9: $03
    ld [$14d1], sp                                ; $5eda: $08 $d1 $14
    ld e, a                                       ; $5edd: $5f
    inc bc                                        ; $5ede: $03
    sub $31                                       ; $5edf: $d6 $31
    ld [bc], a                                    ; $5ee1: $02
    nop                                           ; $5ee2: $00
    ld [de], a                                    ; $5ee3: $12
    dec c                                         ; $5ee4: $0d
    ld a, b                                       ; $5ee5: $78
    ld b, [hl]                                    ; $5ee6: $46
    ld e, a                                       ; $5ee7: $5f
    inc bc                                        ; $5ee8: $03
    ldh [rSB], a                                  ; $5ee9: $e0 $01
    rst $10                                       ; $5eeb: $d7
    dec [hl]                                      ; $5eec: $35
    adc e                                         ; $5eed: $8b
    inc e                                         ; $5eee: $1c
    rst $38                                       ; $5eef: $ff
    ld a, a                                       ; $5ef0: $7f
    ldh [rSB], a                                  ; $5ef1: $e0 $01
    ld e, d                                       ; $5ef3: $5a
    ld b, d                                       ; $5ef4: $42
    rrca                                          ; $5ef5: $0f
    dec e                                         ; $5ef6: $1d
    rst $38                                       ; $5ef7: $ff
    ld a, a                                       ; $5ef8: $7f
    dec b                                         ; $5ef9: $05
    nop                                           ; $5efa: $00
    db $dd                                        ; $5efb: $dd
    ld [de], a                                    ; $5efc: $12
    ld de, $df19                                  ; $5efd: $11 $19 $df
    ld a, a                                       ; $5f00: $7f
    ld [bc], a                                    ; $5f01: $02
    nop                                           ; $5f02: $00
    ld sp, $780d                                  ; $5f03: $31 $0d $78
    ld b, [hl]                                    ; $5f06: $46
    ld e, a                                       ; $5f07: $5f
    inc bc                                        ; $5f08: $03

Jump_0d2_5f09:
    inc bc                                        ; $5f09: $03
    inc c                                         ; $5f0a: $0c
    cpl                                           ; $5f0b: $2f

Call_0d2_5f0c:
    ld hl, $01a0                                  ; $5f0c: $21 $a0 $01
    add hl, de                                    ; $5f0f: $19
    ld a, [hl-]                                   ; $5f10: $3a
    ld [bc], a                                    ; $5f11: $02
    nop                                           ; $5f12: $00
    add hl, sp                                    ; $5f13: $39
    ld a, $ff                                     ; $5f14: $3e $ff
    ld a, a                                       ; $5f16: $7f
    ld c, $1d                                     ; $5f17: $0e $1d

Call_0d2_5f19:
    dec b                                         ; $5f19: $05
    nop                                           ; $5f1a: $00
    db $dd                                        ; $5f1b: $dd
    ld [de], a                                    ; $5f1c: $12

Call_0d2_5f1d:
    rst $18                                       ; $5f1d: $df
    ld a, a                                       ; $5f1e: $7f
    cpl                                           ; $5f1f: $2f
    dec d                                         ; $5f20: $15
    ld [bc], a                                    ; $5f21: $02
    nop                                           ; $5f22: $00
    ld c, l                                       ; $5f23: $4d
    dec c                                         ; $5f24: $0d
    sbc d                                         ; $5f25: $9a
    ld de, $035f                                  ; $5f26: $11 $5f $03
    ld a, [c]                                     ; $5f29: $f2
    add hl, sp                                    ; $5f2a: $39
    ld a, e                                       ; $5f2b: $7b
    ld b, [hl]                                    ; $5f2c: $46
    add hl, de                                    ; $5f2d: $19
    ld a, [hl-]                                   ; $5f2e: $3a
    cp h                                          ; $5f2f: $bc
    ld c, [hl]                                    ; $5f30: $4e
    jr z, jr_0d2_5f33                             ; $5f31: $28 $00

jr_0d2_5f33:
    add hl, de                                    ; $5f33: $19
    ld a, [hl-]                                   ; $5f34: $3a
    ld d, b                                       ; $5f35: $50
    dec h                                         ; $5f36: $25
    cp h                                          ; $5f37: $bc
    ld c, d                                       ; $5f38: $4a
    dec b                                         ; $5f39: $05
    nop                                           ; $5f3a: $00
    or $39                                        ; $5f3b: $f6 $39
    ld e, a                                       ; $5f3d: $5f
    inc bc                                        ; $5f3e: $03
    ld c, l                                       ; $5f3f: $4d
    dec c                                         ; $5f40: $0d
    ld [bc], a                                    ; $5f41: $02
    nop                                           ; $5f42: $00
    ld l, h                                       ; $5f43: $6c

Call_0d2_5f44:
    dec c                                         ; $5f44: $0d
    ld e, e                                       ; $5f45: $5b
    ld bc, $035f                                  ; $5f46: $01 $5f $03
    jr z, jr_0d2_5f4b                             ; $5f49: $28 $00

jr_0d2_5f4b:
    add hl, de                                    ; $5f4b: $19
    ld a, [hl-]                                   ; $5f4c: $3a
    sbc e                                         ; $5f4d: $9b

Call_0d2_5f4e:
    ld c, d                                       ; $5f4e: $4a
    adc h                                         ; $5f4f: $8c
    dec c                                         ; $5f50: $0d
    sub e                                         ; $5f51: $93
    dec l                                         ; $5f52: $2d
    cp h                                          ; $5f53: $bc
    ld c, [hl]                                    ; $5f54: $4e
    add hl, de                                    ; $5f55: $19
    ld a, [hl-]                                   ; $5f56: $3a
    adc h                                         ; $5f57: $8c
    dec c                                         ; $5f58: $0d
    dec b                                         ; $5f59: $05
    nop                                           ; $5f5a: $00
    add hl, de                                    ; $5f5b: $19
    ld a, [hl-]                                   ; $5f5c: $3a
    ld l, h                                       ; $5f5d: $6c
    dec c                                         ; $5f5e: $0d
    ld e, a                                       ; $5f5f: $5f
    inc bc                                        ; $5f60: $03
    ld [bc], a                                    ; $5f61: $02
    nop                                           ; $5f62: $00
    adc d                                         ; $5f63: $8a
    add hl, bc                                    ; $5f64: $09
    ld e, e                                       ; $5f65: $5b
    ld bc, $035f                                  ; $5f66: $01 $5f $03
    ld b, a                                       ; $5f69: $47
    inc b                                         ; $5f6a: $04
    rla                                           ; $5f6b: $17
    ld a, [hl-]                                   ; $5f6c: $3a
    dec l                                         ; $5f6d: $2d
    dec d                                         ; $5f6e: $15
    sbc h                                         ; $5f6f: $9c
    ld c, d                                       ; $5f70: $4a
    jr z, jr_0d2_5f73                             ; $5f71: $28 $00

jr_0d2_5f73:
    or d                                          ; $5f73: $b2
    ld sp, $4678                                  ; $5f74: $31 $78 $46
    cp h                                          ; $5f77: $bc
    ld c, [hl]                                    ; $5f78: $4e
    ld [bc], a                                    ; $5f79: $02
    nop                                           ; $5f7a: $00
    ld e, a                                       ; $5f7b: $5f
    inc bc                                        ; $5f7c: $03
    adc d                                         ; $5f7d: $8a
    add hl, bc                                    ; $5f7e: $09
    jr z, jr_0d2_5f81                             ; $5f7f: $28 $00

jr_0d2_5f81:
    ld [bc], a                                    ; $5f81: $02
    nop                                           ; $5f82: $00
    ret                                           ; $5f83: $c9


    add hl, bc                                    ; $5f84: $09
    ld e, l                                       ; $5f85: $5d
    ld [bc], a                                    ; $5f86: $02
    xor l                                         ; $5f87: $ad
    dec [hl]                                      ; $5f88: $35
    ld c, c                                       ; $5f89: $49
    inc b                                         ; $5f8a: $04
    add hl, sp                                    ; $5f8b: $39
    ld a, $e5                                     ; $5f8c: $3e $e5
    inc e                                         ; $5f8e: $1c
    dec l                                         ; $5f8f: $2d
    ld hl, $0446                                  ; $5f90: $21 $46 $04
    sub e                                         ; $5f93: $93
    dec l                                         ; $5f94: $2d
    cp h                                          ; $5f95: $bc
    ld c, [hl]                                    ; $5f96: $4e
    rla                                           ; $5f97: $17
    ld a, [hl-]                                   ; $5f98: $3a
    ld [bc], a                                    ; $5f99: $02
    nop                                           ; $5f9a: $00
    ld e, a                                       ; $5f9b: $5f
    inc bc                                        ; $5f9c: $03
    ret                                           ; $5f9d: $c9


    add hl, bc                                    ; $5f9e: $09
    jp z, Jump_000_0209                           ; $5f9f: $ca $09 $02

    nop                                           ; $5fa2: $00
    ret z                                         ; $5fa3: $c8

    dec c                                         ; $5fa4: $0d
    ld e, e                                       ; $5fa5: $5b
    ld bc, $035f                                  ; $5fa6: $01 $5f $03
    add e                                         ; $5fa9: $83
    db $10                                        ; $5faa: $10
    ld c, $1d                                     ; $5fab: $0e $1d
    jr z, jr_0d2_5faf                             ; $5fad: $28 $00

jr_0d2_5faf:
    sub e                                         ; $5faf: $93
    dec l                                         ; $5fb0: $2d
    ld b, e                                       ; $5fb1: $43
    inc b                                         ; $5fb2: $04
    ld c, $1d                                     ; $5fb3: $0e $1d
    adc $39                                       ; $5fb5: $ce $39
    jr z, jr_0d2_5fb9                             ; $5fb7: $28 $00

jr_0d2_5fb9:
    ld b, d                                       ; $5fb9: $42
    ld [$035f], sp                                ; $5fba: $08 $5f $03
    add sp, $05                                   ; $5fbd: $e8 $05
    adc $39                                       ; $5fbf: $ce $39
    ld [bc], a                                    ; $5fc1: $02
    nop                                           ; $5fc2: $00
    add sp, $05                                   ; $5fc3: $e8 $05
    ld e, l                                       ; $5fc5: $5d
    ld [bc], a                                    ; $5fc6: $02
    xor l                                         ; $5fc7: $ad
    dec [hl]                                      ; $5fc8: $35
    ld c, b                                       ; $5fc9: $48
    nop                                           ; $5fca: $00
    push de                                       ; $5fcb: $d5
    dec [hl]                                      ; $5fcc: $35
    sbc d                                         ; $5fcd: $9a
    ld c, d                                       ; $5fce: $4a
    ld c, $1d                                     ; $5fcf: $0e $1d
    inc b                                         ; $5fd1: $04
    nop                                           ; $5fd2: $00
    or h                                          ; $5fd3: $b4
    ld sp, $10cc                                  ; $5fd4: $31 $cc $10
    cp h                                          ; $5fd7: $bc
    ld c, [hl]                                    ; $5fd8: $4e
    ld b, d                                       ; $5fd9: $42
    ld [$035f], sp                                ; $5fda: $08 $5f $03
    add sp, $05                                   ; $5fdd: $e8 $05
    adc h                                         ; $5fdf: $8c
    ld sp, $0002                                  ; $5fe0: $31 $02 $00
    ld e, e                                       ; $5fe3: $5b
    ld bc, $035f                                  ; $5fe4: $01 $5f $03
    adc h                                         ; $5fe7: $8c
    ld sp, $015b                                  ; $5fe8: $31 $5b $01
    ld e, a                                       ; $5feb: $5f
    inc bc                                        ; $5fec: $03
    ld e, a                                       ; $5fed: $5f
    inc bc                                        ; $5fee: $03
    adc h                                         ; $5fef: $8c
    ld sp, $015b                                  ; $5ff0: $31 $5b $01
    ld e, a                                       ; $5ff3: $5f
    inc bc                                        ; $5ff4: $03
    ld e, a                                       ; $5ff5: $5f
    inc bc                                        ; $5ff6: $03
    adc h                                         ; $5ff7: $8c
    ld sp, $0002                                  ; $5ff8: $31 $02 $00
    ld e, e                                       ; $5ffb: $5b
    ld bc, $035f                                  ; $5ffc: $01 $5f $03
    adc h                                         ; $5fff: $8c
    ld sp, $0002                                  ; $6000: $31 $02 $00
    ld e, e                                       ; $6003: $5b
    ld bc, $0182                                  ; $6004: $01 $82 $01
    ld e, a                                       ; $6007: $5f
    inc bc                                        ; $6008: $03
    add d                                         ; $6009: $82
    ld bc, $035f                                  ; $600a: $01 $5f $03
    add d                                         ; $600d: $82
    ld bc, $035f                                  ; $600e: $01 $5f $03
    add d                                         ; $6011: $82
    ld bc, $035f                                  ; $6012: $01 $5f $03
    add d                                         ; $6015: $82
    ld bc, $035f                                  ; $6016: $01 $5f $03
    ld [bc], a                                    ; $6019: $02
    nop                                           ; $601a: $00
    ld e, a                                       ; $601b: $5f
    inc bc                                        ; $601c: $03
    add d                                         ; $601d: $82
    ld bc, $035f                                  ; $601e: $01 $5f $03
    ld [bc], a                                    ; $6021: $02
    nop                                           ; $6022: $00
    ld e, e                                       ; $6023: $5b
    ld bc, $0182                                  ; $6024: $01 $82 $01
    ld e, a                                       ; $6027: $5f
    inc bc                                        ; $6028: $03
    ld b, d                                       ; $6029: $42
    nop                                           ; $602a: $00
    rst $38                                       ; $602b: $ff
    cpl                                           ; $602c: $2f
    ld h, e                                       ; $602d: $63
    ld bc, $0211                                  ; $602e: $01 $11 $02
    ld b, d                                       ; $6031: $42
    nop                                           ; $6032: $00
    add d                                         ; $6033: $82
    ld bc, $1611                                  ; $6034: $01 $11 $16
    and l                                         ; $6037: $a5
    nop                                           ; $6038: $00
    ld [bc], a                                    ; $6039: $02
    nop                                           ; $603a: $00
    ld e, a                                       ; $603b: $5f
    inc bc                                        ; $603c: $03
    add d                                         ; $603d: $82
    ld bc, $00a5                                  ; $603e: $01 $a5 $00
    ld [bc], a                                    ; $6041: $02
    nop                                           ; $6042: $00
    ld [hl], a                                    ; $6043: $77
    dec b                                         ; $6044: $05
    cp a                                          ; $6045: $bf
    rra                                           ; $6046: $1f
    ld h, e                                       ; $6047: $63
    dec b                                         ; $6048: $05
    dec bc                                        ; $6049: $0b
    dec d                                         ; $604a: $15
    ld e, h                                       ; $604b: $5c
    rla                                           ; $604c: $17
    ldh a, [$09]                                  ; $604d: $f0 $09
    rst $18                                       ; $604f: $df
    dec hl                                        ; $6050: $2b
    ld b, d                                       ; $6051: $42
    nop                                           ; $6052: $00
    sbc l                                         ; $6053: $9d
    daa                                           ; $6054: $27
    ld de, $6402                                  ; $6055: $11 $02 $64
    ld bc, $0002                                  ; $6058: $01 $02 $00
    ld e, a                                       ; $605b: $5f
    inc bc                                        ; $605c: $03
    add d                                         ; $605d: $82
    dec b                                         ; $605e: $05
    ld h, h                                       ; $605f: $64
    ld bc, $0002                                  ; $6060: $01 $02 $00
    ld de, $7e0a                                  ; $6063: $11 $0a $7e
    rrca                                          ; $6066: $0f
    ld e, e                                       ; $6067: $5b
    ld bc, $0400                                  ; $6068: $01 $00 $04
    ld [hl-], a                                   ; $606b: $32
    ld [bc], a                                    ; $606c: $02
    ld a, [de]                                    ; $606d: $1a
    dec bc                                        ; $606e: $0b
    sbc $27                                       ; $606f: $de $27
    ld b, d                                       ; $6071: $42
    nop                                           ; $6072: $00
    dec sp                                        ; $6073: $3b
    rrca                                          ; $6074: $0f
    ld de, $df16                                  ; $6075: $11 $16 $df
    dec hl                                        ; $6078: $2b
    ld [hl+], a                                   ; $6079: $22
    nop                                           ; $607a: $00
    ld e, a                                       ; $607b: $5f
    inc bc                                        ; $607c: $03
    and d                                         ; $607d: $a2
    dec b                                         ; $607e: $05
    rst $38                                       ; $607f: $ff
    daa                                           ; $6080: $27
    ld [bc], a                                    ; $6081: $02
    nop                                           ; $6082: $00
    sub $01                                       ; $6083: $d6 $01
    cp a                                          ; $6085: $bf
    dec de                                        ; $6086: $1b
    add sp, $08                                   ; $6087: $e8 $08
    nop                                           ; $6089: $00
    nop                                           ; $608a: $00
    ld l, [hl]                                    ; $608b: $6e
    ld bc, $0f7d                                  ; $608c: $01 $7d $0f
    xor c                                         ; $608f: $a9
    nop                                           ; $6090: $00
    ld b, d                                       ; $6091: $42
    nop                                           ; $6092: $00
    ld [hl-], a                                   ; $6093: $32
    ld b, $bd                                     ; $6094: $06 $bd
    rra                                           ; $6096: $1f
    ld hl, sp+$0e                                 ; $6097: $f8 $0e
    ld [hl+], a                                   ; $6099: $22
    nop                                           ; $609a: $00
    dec a                                         ; $609b: $3d
    dec bc                                        ; $609c: $0b
    and l                                         ; $609d: $a5
    dec b                                         ; $609e: $05
    rst $18                                       ; $609f: $df
    dec hl                                        ; $60a0: $2b
    ld bc, $b400                                  ; $60a1: $01 $00 $b4
    dec b                                         ; $60a4: $05
    inc a                                         ; $60a5: $3c
    inc bc                                        ; $60a6: $03
    ld [$8601], sp                                ; $60a7: $08 $01 $86
    nop                                           ; $60aa: $00
    dec de                                        ; $60ab: $1b
    ld [hl-], a                                   ; $60ac: $32
    db $fd                                        ; $60ad: $fd
    ld d, d                                       ; $60ae: $52
    ld d, b                                       ; $60af: $50
    dec b                                         ; $60b0: $05
    nop                                           ; $60b1: $00
    ld [$0af7], sp                                ; $60b2: $08 $f7 $0a
    ld a, e                                       ; $60b5: $7b
    ld b, d                                       ; $60b6: $42
    jp z, Jump_0d2_4404                           ; $60b7: $ca $04 $44

    inc b                                         ; $60ba: $04
    ld [hl-], a                                   ; $60bb: $32
    ld [bc], a                                    ; $60bc: $02
    jp $5e09                                      ; $60bd: $c3 $09 $5e


    inc bc                                        ; $60c0: $03
    ld bc, $9400                                  ; $60c1: $01 $00 $94
    ld bc, $12fe                                  ; $60c4: $01 $fe $12
    and l                                         ; $60c7: $a5
    add hl, bc                                    ; $60c8: $09
    xor c                                         ; $60c9: $a9
    nop                                           ; $60ca: $00
    ld e, h                                       ; $60cb: $5c
    ld a, [hl-]                                   ; $60cc: $3a
    ld d, b                                       ; $60cd: $50
    dec b                                         ; $60ce: $05
    db $fd                                        ; $60cf: $fd
    ld d, d                                       ; $60d0: $52
    ld bc, $7404                                  ; $60d1: $01 $04 $74
    ld [bc], a                                    ; $60d4: $02
    ld a, [de]                                    ; $60d5: $1a
    ld [hl-], a                                   ; $60d6: $32
    xor c                                         ; $60d7: $a9
    inc b                                         ; $60d8: $04
    ld [hl+], a                                   ; $60d9: $22
    nop                                           ; $60da: $00
    jp c, $fd0a                                   ; $60db: $da $0a $fd

    ld d, d                                       ; $60de: $52
    db $e3                                        ; $60df: $e3
    add hl, bc                                    ; $60e0: $09
    ld [bc], a                                    ; $60e1: $02
    nop                                           ; $60e2: $00
    ld d, l                                       ; $60e3: $55
    ld bc, $0e04                                  ; $60e4: $01 $04 $0e
    ld e, a                                       ; $60e7: $5f
    inc bc                                        ; $60e8: $03
    add h                                         ; $60e9: $84
    ld e, b                                       ; $60ea: $58
    cp h                                          ; $60eb: $bc
    ld c, d                                       ; $60ec: $4a
    db $eb                                        ; $60ed: $eb
    ld [$7fff], sp                                ; $60ee: $08 $ff $7f
    ld h, l                                       ; $60f1: $65
    inc b                                         ; $60f2: $04
    ld a, [de]                                    ; $60f3: $1a
    ld [hl-], a                                   ; $60f4: $32
    rst $38                                       ; $60f5: $ff
    ld a, a                                       ; $60f6: $7f
    ld l, [hl]                                    ; $60f7: $6e
    dec c                                         ; $60f8: $0d
    ld h, e                                       ; $60f9: $63
    nop                                           ; $60fa: $00
    ld de, $9f12                                  ; $60fb: $11 $12 $9f
    rrca                                          ; $60fe: $0f
    ld e, h                                       ; $60ff: $5c
    ld a, [hl-]                                   ; $6100: $3a
    ld [bc], a                                    ; $6101: $02
    nop                                           ; $6102: $00
    inc h                                         ; $6103: $24
    ld c, $5d                                     ; $6104: $0e $5d
    ld [bc], a                                    ; $6106: $02
    call c, $007f                                 ; $6107: $dc $7f $00
    ld [$429c], sp                                ; $610a: $08 $9c $42
    add e                                         ; $610d: $83
    ld d, h                                       ; $610e: $54
    ld [$6510], a                                 ; $610f: $ea $10 $65
    inc b                                         ; $6112: $04
    dec sp                                        ; $6113: $3b
    ld [hl], $11                                  ; $6114: $36 $11
    ld de, $52fd                                  ; $6116: $11 $fd $52
    ld b, e                                       ; $6119: $43
    nop                                           ; $611a: $00
    jr @+$0d                                      ; $611b: $18 $0b

    rst $38                                       ; $611d: $ff
    rra                                           ; $611e: $1f
    ld e, a                                       ; $611f: $5f
    inc bc                                        ; $6120: $03
    ld b, b                                       ; $6121: $40
    ld d, b                                       ; $6122: $50
    inc h                                         ; $6123: $24
    ld c, $5d                                     ; $6124: $0e $5d
    ld [bc], a                                    ; $6126: $02
    ld bc, $0000                                  ; $6127: $01 $00 $00
    nop                                           ; $612a: $00
    ld a, [de]                                    ; $612b: $1a
    ld [hl-], a                                   ; $612c: $32
    db $fd                                        ; $612d: $fd
    ld d, d                                       ; $612e: $52
    xor c                                         ; $612f: $a9
    nop                                           ; $6130: $00
    ld b, h                                       ; $6131: $44
    inc b                                         ; $6132: $04
    ld a, [de]                                    ; $6133: $1a
    ld [hl-], a                                   ; $6134: $32
    ld de, $fd11                                  ; $6135: $11 $11 $fd
    ld d, d                                       ; $6138: $52
    ld b, e                                       ; $6139: $43
    nop                                           ; $613a: $00
    or [hl]                                       ; $613b: $b6
    ld [bc], a                                    ; $613c: $02
    rst $20                                       ; $613d: $e7
    add hl, bc                                    ; $613e: $09
    ld e, a                                       ; $613f: $5f
    inc bc                                        ; $6140: $03
    ld [bc], a                                    ; $6141: $02
    nop                                           ; $6142: $00
    ld b, l                                       ; $6143: $45
    ld [de], a                                    ; $6144: $12
    ld e, e                                       ; $6145: $5b
    ld bc, $035f                                  ; $6146: $01 $5f $03
    ld h, l                                       ; $6149: $65
    nop                                           ; $614a: $00
    ld sp, hl                                     ; $614b: $f9
    dec l                                         ; $614c: $2d
    db $fd                                        ; $614d: $fd
    ld d, d                                       ; $614e: $52
    ld [hl-], a                                   ; $614f: $32
    dec d                                         ; $6150: $15
    ld b, h                                       ; $6151: $44
    inc b                                         ; $6152: $04
    ld a, [de]                                    ; $6153: $1a
    ld [hl-], a                                   ; $6154: $32
    ld de, $fd11                                  ; $6155: $11 $11 $fd
    ld d, d                                       ; $6158: $52
    ld [hl+], a                                   ; $6159: $22
    nop                                           ; $615a: $00
    ld e, a                                       ; $615b: $5f
    inc bc                                        ; $615c: $03
    ld b, l                                       ; $615d: $45
    ld [de], a                                    ; $615e: $12
    ret z                                         ; $615f: $c8

    ld [$0002], sp                                ; $6160: $08 $02 $00
    ld h, l                                       ; $6163: $65
    ld [de], a                                    ; $6164: $12
    ld e, e                                       ; $6165: $5b
    ld bc, $035f                                  ; $6166: $01 $5f $03
    ld hl, $5c04                                  ; $6169: $21 $04 $5c
    ld l, e                                       ; $616c: $6b
    ld d, h                                       ; $616d: $54
    add hl, de                                    ; $616e: $19
    ld h, l                                       ; $616f: $65
    ld [de], a                                    ; $6170: $12
    ld h, a                                       ; $6171: $67
    inc b                                         ; $6172: $04
    ld hl, sp+$2d                                 ; $6173: $f8 $2d
    db $fd                                        ; $6175: $fd
    ld d, d                                       ; $6176: $52
    ld e, h                                       ; $6177: $5c
    ld a, [hl-]                                   ; $6178: $3a
    nop                                           ; $6179: $00
    nop                                           ; $617a: $00
    ld h, l                                       ; $617b: $65
    ld [de], a                                    ; $617c: $12
    ld e, a                                       ; $617d: $5f
    inc bc                                        ; $617e: $03
    ld [bc], a                                    ; $617f: $02
    nop                                           ; $6180: $00
    ld [bc], a                                    ; $6181: $02
    nop                                           ; $6182: $00
    add l                                         ; $6183: $85
    ld d, $5b                                     ; $6184: $16 $5b
    ld bc, $035f                                  ; $6186: $01 $5f $03
    ld hl, $8504                                  ; $6189: $21 $04 $85
    ld d, $32                                     ; $618c: $16 $32
    dec d                                         ; $618e: $15
    ld e, h                                       ; $618f: $5c
    ld a, [hl-]                                   ; $6190: $3a
    nop                                           ; $6191: $00
    nop                                           ; $6192: $00
    ld a, [hl-]                                   ; $6193: $3a
    ld [hl], $a9                                  ; $6194: $36 $a9
    inc c                                         ; $6196: $0c
    db $fd                                        ; $6197: $fd
    ld d, d                                       ; $6198: $52
    nop                                           ; $6199: $00
    nop                                           ; $619a: $00
    ld e, a                                       ; $619b: $5f
    inc bc                                        ; $619c: $03
    nop                                           ; $619d: $00
    inc h                                         ; $619e: $24
    ld b, b                                       ; $619f: $40
    ld d, b                                       ; $61a0: $50
    ld [bc], a                                    ; $61a1: $02
    nop                                           ; $61a2: $00
    and [hl]                                      ; $61a3: $a6
    ld d, $5b                                     ; $61a4: $16 $5b
    ld bc, $035f                                  ; $61a6: $01 $5f $03
    nop                                           ; $61a9: $00
    inc b                                         ; $61aa: $04
    and [hl]                                      ; $61ab: $a6
    ld d, $00                                     ; $61ac: $16 $00
    inc h                                         ; $61ae: $24
    ld b, d                                       ; $61af: $42
    ld b, b                                       ; $61b0: $40
    nop                                           ; $61b1: $00
    nop                                           ; $61b2: $00
    add hl, sp                                    ; $61b3: $39
    ld [hl], $a7                                  ; $61b4: $36 $a7
    jr z, @-$01                                   ; $61b6: $28 $fd

    ld d, d                                       ; $61b8: $52
    nop                                           ; $61b9: $00
    inc b                                         ; $61ba: $04
    ld e, a                                       ; $61bb: $5f
    inc bc                                        ; $61bc: $03
    ld hl, $a538                                  ; $61bd: $21 $38 $a5
    ld e, h                                       ; $61c0: $5c
    ld [bc], a                                    ; $61c1: $02
    nop                                           ; $61c2: $00
    and [hl]                                      ; $61c3: $a6
    ld d, $5b                                     ; $61c4: $16 $5b
    ld bc, $035f                                  ; $61c6: $01 $5f $03
    nop                                           ; $61c9: $00
    inc b                                         ; $61ca: $04
    and [hl]                                      ; $61cb: $a6
    ld d, $00                                     ; $61cc: $16 $00
    inc h                                         ; $61ce: $24
    ld b, d                                       ; $61cf: $42
    ld b, b                                       ; $61d0: $40
    nop                                           ; $61d1: $00
    inc d                                         ; $61d2: $14
    ld a, [hl-]                                   ; $61d3: $3a
    ld [hl], $e7                                  ; $61d4: $36 $e7
    ld [hl], b                                    ; $61d6: $70
    db $fd                                        ; $61d7: $fd
    ld d, d                                       ; $61d8: $52
    ld bc, $5f08                                  ; $61d9: $01 $08 $5f
    inc bc                                        ; $61dc: $03
    ld b, e                                       ; $61dd: $43
    inc a                                         ; $61de: $3c
    and l                                         ; $61df: $a5
    ld d, b                                       ; $61e0: $50
    ld [bc], a                                    ; $61e1: $02
    nop                                           ; $61e2: $00
    ld e, e                                       ; $61e3: $5b
    ld bc, $035f                                  ; $61e4: $01 $5f $03
    and l                                         ; $61e7: $a5
    ld d, b                                       ; $61e8: $50
    ld e, e                                       ; $61e9: $5b
    ld bc, $035f                                  ; $61ea: $01 $5f $03
    ld e, a                                       ; $61ed: $5f
    inc bc                                        ; $61ee: $03
    and l                                         ; $61ef: $a5
    ld d, b                                       ; $61f0: $50
    ld e, e                                       ; $61f1: $5b
    ld bc, $035f                                  ; $61f2: $01 $5f $03
    ld e, a                                       ; $61f5: $5f
    inc bc                                        ; $61f6: $03
    and l                                         ; $61f7: $a5
    ld d, b                                       ; $61f8: $50
    ld [bc], a                                    ; $61f9: $02
    nop                                           ; $61fa: $00
    ld e, e                                       ; $61fb: $5b
    ld bc, $035f                                  ; $61fc: $01 $5f $03
    and l                                         ; $61ff: $a5
    ld d, b                                       ; $6200: $50
    ld [bc], a                                    ; $6201: $02
    nop                                           ; $6202: $00
    inc [hl]                                      ; $6203: $34
    ld a, e                                       ; $6204: $7b
    ld e, e                                       ; $6205: $5b
    ld bc, $035f                                  ; $6206: $01 $5f $03
    add $08                                       ; $6209: $c6 $08
    ld e, a                                       ; $620b: $5f
    inc bc                                        ; $620c: $03
    inc [hl]                                      ; $620d: $34
    ld a, e                                       ; $620e: $7b
    sbc $2b                                       ; $620f: $de $2b
    rst $00                                       ; $6211: $c7
    nop                                           ; $6212: $00
    ld e, a                                       ; $6213: $5f
    inc bc                                        ; $6214: $03
    push de                                       ; $6215: $d5
    ld l, $de                                     ; $6216: $2e $de
    dec hl                                        ; $6218: $2b
    ld [hl+], a                                   ; $6219: $22
    nop                                           ; $621a: $00
    inc [hl]                                      ; $621b: $34
    ld a, e                                       ; $621c: $7b
    sub l                                         ; $621d: $95
    ld [bc], a                                    ; $621e: $02
    ld e, a                                       ; $621f: $5f
    inc bc                                        ; $6220: $03
    ld [bc], a                                    ; $6221: $02
    nop                                           ; $6222: $00
    inc [hl]                                      ; $6223: $34
    ld a, e                                       ; $6224: $7b
    ld e, a                                       ; $6225: $5f
    inc bc                                        ; $6226: $03
    halt                                          ; $6227: $76
    ld bc, $0464                                  ; $6228: $01 $64 $04
    inc [hl]                                      ; $622b: $34
    ld a, e                                       ; $622c: $7b
    cp [hl]                                       ; $622d: $be
    inc hl                                        ; $622e: $23
    ld de, $3a02                                  ; $622f: $11 $02 $3a
    dec de                                        ; $6232: $1b
    sbc [hl]                                      ; $6233: $9e
    inc hl                                        ; $6234: $23
    rst $18                                       ; $6235: $df
    daa                                           ; $6236: $27
    rst $38                                       ; $6237: $ff
    dec hl                                        ; $6238: $2b
    ld [hl+], a                                   ; $6239: $22
    nop                                           ; $623a: $00
    inc [hl]                                      ; $623b: $34
    ld a, e                                       ; $623c: $7b
    ld a, [de]                                    ; $623d: $1a
    rlca                                          ; $623e: $07
    xor l                                         ; $623f: $ad
    add hl, de                                    ; $6240: $19
    ld [bc], a                                    ; $6241: $02
    nop                                           ; $6242: $00
    inc [hl]                                      ; $6243: $34
    ld a, e                                       ; $6244: $7b
    ld e, e                                       ; $6245: $5b
    ld bc, $137e                                  ; $6246: $01 $7e $13
    rst $00                                       ; $6249: $c7
    nop                                           ; $624a: $00
    ld a, l                                       ; $624b: $7d
    inc de                                        ; $624c: $13
    rst $18                                       ; $624d: $df
    daa                                           ; $624e: $27
    ld l, h                                       ; $624f: $6c
    ld bc, $0000                                  ; $6250: $01 $00 $00
    ld hl, sp+$16                                 ; $6253: $f8 $16
    adc l                                         ; $6255: $8d
    dec b                                         ; $6256: $05
    rst $38                                       ; $6257: $ff
    dec hl                                        ; $6258: $2b
    ld bc, $d800                                  ; $6259: $01 $00 $d8
    ld [bc], a                                    ; $625c: $02
    sbc c                                         ; $625d: $99
    ld d, a                                       ; $625e: $57
    ld a, [hl+]                                   ; $625f: $2a
    dec b                                         ; $6260: $05
    ld bc, $1500                                  ; $6261: $01 $00 $15
    ld b, $34                                     ; $6264: $06 $34
    ld a, e                                       ; $6266: $7b
    ld a, [hl]                                    ; $6267: $7e
    rrca                                          ; $6268: $0f
    nop                                           ; $6269: $00
    nop                                           ; $626a: $00
    rst $18                                       ; $626b: $df
    daa                                           ; $626c: $27
    ld c, e                                       ; $626d: $4b
    ld bc, $01ee                                  ; $626e: $01 $ee $01
    ld h, e                                       ; $6271: $63
    nop                                           ; $6272: $00
    ld hl, sp+$12                                 ; $6273: $f8 $12
    ldh a, [rTIMA]                                ; $6275: $f0 $05
    rst $38                                       ; $6277: $ff
    cpl                                           ; $6278: $2f
    ld bc, $1b00                                  ; $6279: $01 $00 $1b
    rrca                                          ; $627c: $0f
    inc d                                         ; $627d: $14
    ld a, e                                       ; $627e: $7b
    ld l, e                                       ; $627f: $6b
    dec b                                         ; $6280: $05
    ld bc, $5b00                                  ; $6281: $01 $00 $5b
    ld bc, $177d                                  ; $6284: $01 $7d $17
    rlca                                          ; $6287: $07
    ld de, $0000                                  ; $6288: $11 $00 $00
    ld a, [hl-]                                   ; $628b: $3a
    rla                                           ; $628c: $17
    xor l                                         ; $628d: $ad
    ld bc, $33ff                                  ; $628e: $01 $ff $33
    ld hl, $5200                                  ; $6291: $21 $00 $52
    ld [bc], a                                    ; $6294: $02
    sbc [hl]                                      ; $6295: $9e
    dec de                                        ; $6296: $1b
    ld l, h                                       ; $6297: $6c
    ld bc, $0021                                  ; $6298: $01 $21 $00
    di                                            ; $629b: $f3
    halt                                          ; $629c: $76
    dec de                                        ; $629d: $1b
    inc bc                                        ; $629e: $03
    rst $28                                       ; $629f: $ef
    ld bc, $0002                                  ; $62a0: $01 $02 $00
    cp c                                          ; $62a3: $b9
    ld bc, $1fbe                                  ; $62a4: $01 $be $1f
    add hl, hl                                    ; $62a7: $29
    ld bc, $0000                                  ; $62a8: $01 $00 $00
    rst $28                                       ; $62ab: $ef
    ld bc, $0ad8                                  ; $62ac: $01 $d8 $0a
    and a                                         ; $62af: $a7
    ld [$0020], sp                                ; $62b0: $08 $20 $00
    ld c, $02                                     ; $62b3: $0e $02
    add hl, de                                    ; $62b5: $19
    ld [hl-], a                                   ; $62b6: $32
    ld h, l                                       ; $62b7: $65
    inc c                                         ; $62b8: $0c
    nop                                           ; $62b9: $00
    nop                                           ; $62ba: $00
    or d                                          ; $62bb: $b2
    ld [hl], d                                    ; $62bc: $72
    ld e, a                                       ; $62bd: $5f
    inc bc                                        ; $62be: $03
    ld c, b                                       ; $62bf: $48
    nop                                           ; $62c0: $00
    ld [bc], a                                    ; $62c1: $02
    nop                                           ; $62c2: $00
    ld [hl-], a                                   ; $62c3: $32
    ld [bc], a                                    ; $62c4: $02
    ld e, l                                       ; $62c5: $5d
    rla                                           ; $62c6: $17
    ld e, e                                       ; $62c7: $5b
    ld bc, $0422                                  ; $62c8: $01 $22 $04
    jr nc, jr_0d2_62cf                            ; $62cb: $30 $02

    add hl, de                                    ; $62cd: $19
    ld [hl-], a                                   ; $62ce: $32

jr_0d2_62cf:
    ret z                                         ; $62cf: $c8

    ld [$0001], sp                                ; $62d0: $08 $01 $00
    add hl, de                                    ; $62d3: $19
    ld [hl-], a                                   ; $62d4: $32
    rra                                           ; $62d5: $1f
    ld d, a                                       ; $62d6: $57
    ret z                                         ; $62d7: $c8

    db $10                                        ; $62d8: $10
    inc bc                                        ; $62d9: $03
    nop                                           ; $62da: $00
    db $dd                                        ; $62db: $dd
    ld [de], a                                    ; $62dc: $12
    sub c                                         ; $62dd: $91
    ld l, [hl]                                    ; $62de: $6e
    rra                                           ; $62df: $1f
    ld d, a                                       ; $62e0: $57
    ld bc, $b300                                  ; $62e1: $01 $00 $b3
    ld bc, $031b                                  ; $62e4: $01 $1b $03
    rst $00                                       ; $62e7: $c7
    inc b                                         ; $62e8: $04
    ld bc, $1900                                  ; $62e9: $01 $00 $19
    ld [hl-], a                                   ; $62ec: $32
    rra                                           ; $62ed: $1f
    ld d, a                                       ; $62ee: $57
    xor e                                         ; $62ef: $ab
    inc d                                         ; $62f0: $14
    ld b, l                                       ; $62f1: $45
    inc b                                         ; $62f2: $04
    rst $38                                       ; $62f3: $ff
    dec b                                         ; $62f4: $05
    rra                                           ; $62f5: $1f
    ld d, a                                       ; $62f6: $57
    rst $38                                       ; $62f7: $ff
    ld a, a                                       ; $62f8: $7f
    ld [bc], a                                    ; $62f9: $02
    nop                                           ; $62fa: $00
    ld d, b                                       ; $62fb: $50
    ld l, d                                       ; $62fc: $6a
    ld e, e                                       ; $62fd: $5b
    ld a, $5f                                     ; $62fe: $3e $5f
    inc bc                                        ; $6300: $03
    ld [bc], a                                    ; $6301: $02
    nop                                           ; $6302: $00
    ld d, a                                       ; $6303: $57
    dec b                                         ; $6304: $05
    ld e, c                                       ; $6305: $59
    ld b, [hl]                                    ; $6306: $46
    ld e, a                                       ; $6307: $5f
    inc bc                                        ; $6308: $03
    inc b                                         ; $6309: $04
    nop                                           ; $630a: $00
    db $fd                                        ; $630b: $fd
    ld de, $571f                                  ; $630c: $11 $1f $57
    rst $38                                       ; $630f: $ff
    ld a, a                                       ; $6310: $7f
    add a                                         ; $6311: $87
    inc b                                         ; $6312: $04
    rra                                           ; $6313: $1f
    ld d, a                                       ; $6314: $57
    db $f4                                        ; $6315: $f4
    add hl, sp                                    ; $6316: $39
    db $eb                                        ; $6317: $eb
    db $10                                        ; $6318: $10
    ld bc, $2f00                                  ; $6319: $01 $00 $2f
    ld h, [hl]                                    ; $631c: $66
    add hl, de                                    ; $631d: $19
    ld [hl-], a                                   ; $631e: $32
    ld e, a                                       ; $631f: $5f
    inc bc                                        ; $6320: $03
    ld [bc], a                                    ; $6321: $02
    nop                                           ; $6322: $00
    db $ed                                        ; $6323: $ed
    ld h, c                                       ; $6324: $61
    reti                                          ; $6325: $d9


    ld hl, $035f                                  ; $6326: $21 $5f $03
    ld [$1914], a                                 ; $6329: $ea $14 $19
    ld [hl-], a                                   ; $632c: $32
    rra                                           ; $632d: $1f
    ld d, a                                       ; $632e: $57
    ld e, a                                       ; $632f: $5f
    inc bc                                        ; $6330: $03
    rst $28                                       ; $6331: $ef
    db $10                                        ; $6332: $10
    rra                                           ; $6333: $1f
    ld d, a                                       ; $6334: $57
    add hl, de                                    ; $6335: $19
    ld [hl-], a                                   ; $6336: $32
    ld e, a                                       ; $6337: $5f
    inc bc                                        ; $6338: $03
    ld bc, $ed00                                  ; $6339: $01 $00 $ed
    ld h, c                                       ; $633c: $61
    add hl, de                                    ; $633d: $19
    ld [hl-], a                                   ; $633e: $32
    ld e, a                                       ; $633f: $5f
    inc bc                                        ; $6340: $03
    ld [bc], a                                    ; $6341: $02
    nop                                           ; $6342: $00
    adc h                                         ; $6343: $8c
    ld d, c                                       ; $6344: $51
    ld e, l                                       ; $6345: $5d
    ld [bc], a                                    ; $6346: $02
    sbc h                                         ; $6347: $9c
    ld b, d                                       ; $6348: $42
    add hl, bc                                    ; $6349: $09
    ld hl, $571f                                  ; $634a: $21 $1f $57
    add hl, de                                    ; $634d: $19
    ld [hl-], a                                   ; $634e: $32
    sbc h                                         ; $634f: $9c
    ld b, d                                       ; $6350: $42
    ld bc, $1900                                  ; $6351: $01 $00 $19
    ld [hl-], a                                   ; $6354: $32
    ld [hl], c                                    ; $6355: $71
    ld hl, $571f                                  ; $6356: $21 $1f $57
    ld bc, $ac00                                  ; $6359: $01 $00 $ac
    ld e, l                                       ; $635c: $5d
    ld e, a                                       ; $635d: $5f
    inc bc                                        ; $635e: $03
    call $015d                                    ; $635f: $cd $5d $01
    nop                                           ; $6362: $00
    adc h                                         ; $6363: $8c
    ld e, c                                       ; $6364: $59
    ld e, e                                       ; $6365: $5b
    ld bc, $035f                                  ; $6366: $01 $5f $03
    nop                                           ; $6369: $00
    nop                                           ; $636a: $00
    add hl, de                                    ; $636b: $19
    ld [hl-], a                                   ; $636c: $32

Call_0d2_636d:
    rra                                           ; $636d: $1f
    ld d, a                                       ; $636e: $57
    ld l, c                                       ; $636f: $69
    nop                                           ; $6370: $00
    ld b, l                                       ; $6371: $45
    inc b                                         ; $6372: $04
    adc h                                         ; $6373: $8c
    ld e, c                                       ; $6374: $59
    rra                                           ; $6375: $1f
    ld d, a                                       ; $6376: $57
    ld hl, sp+$2d                                 ; $6377: $f8 $2d
    ld [bc], a                                    ; $6379: $02
    nop                                           ; $637a: $00
    ld e, a                                       ; $637b: $5f
    inc bc                                        ; $637c: $03
    adc h                                         ; $637d: $8c
    ld e, c                                       ; $637e: $59
    xor h                                         ; $637f: $ac
    ld e, c                                       ; $6380: $59
    ld [bc], a                                    ; $6381: $02
    nop                                           ; $6382: $00
    adc e                                         ; $6383: $8b
    ld e, c                                       ; $6384: $59
    ld e, e                                       ; $6385: $5b
    ld bc, $035f                                  ; $6386: $01 $5f $03
    ld bc, $1900                                  ; $6389: $01 $00 $19
    ld [hl-], a                                   ; $638c: $32
    adc e                                         ; $638d: $8b
    ld e, c                                       ; $638e: $59
    rra                                           ; $638f: $1f
    ld d, a                                       ; $6390: $57
    ld [hl+], a                                   ; $6391: $22
    nop                                           ; $6392: $00
    adc e                                         ; $6393: $8b
    ld e, c                                       ; $6394: $59
    rra                                           ; $6395: $1f
    ld d, a                                       ; $6396: $57
    add hl, de                                    ; $6397: $19
    ld [hl-], a                                   ; $6398: $32
    ld [bc], a                                    ; $6399: $02
    nop                                           ; $639a: $00
    ld e, a                                       ; $639b: $5f
    inc bc                                        ; $639c: $03
    adc e                                         ; $639d: $8b
    ld e, c                                       ; $639e: $59
    add hl, de                                    ; $639f: $19
    ld [hl-], a                                   ; $63a0: $32
    ld [bc], a                                    ; $63a1: $02
    nop                                           ; $63a2: $00
    adc e                                         ; $63a3: $8b
    ld e, c                                       ; $63a4: $59
    ld e, e                                       ; $63a5: $5b
    ld bc, $035f                                  ; $63a6: $01 $5f $03
    ld bc, $8b00                                  ; $63a9: $01 $00 $8b
    ld e, c                                       ; $63ac: $59
    add hl, de                                    ; $63ad: $19
    ld [hl-], a                                   ; $63ae: $32
    ret z                                         ; $63af: $c8

    db $10                                        ; $63b0: $10
    ld bc, $9500                                  ; $63b1: $01 $00 $95
    db $10                                        ; $63b4: $10
    add hl, de                                    ; $63b5: $19
    ld [hl-], a                                   ; $63b6: $32
    ret z                                         ; $63b7: $c8

    db $10                                        ; $63b8: $10
    ld [bc], a                                    ; $63b9: $02
    nop                                           ; $63ba: $00
    adc e                                         ; $63bb: $8b
    ld e, c                                       ; $63bc: $59
    ld e, a                                       ; $63bd: $5f
    inc bc                                        ; $63be: $03
    inc bc                                        ; $63bf: $03
    nop                                           ; $63c0: $00
    ld [bc], a                                    ; $63c1: $02
    nop                                           ; $63c2: $00
    adc e                                         ; $63c3: $8b
    ld e, c                                       ; $63c4: $59
    ld e, e                                       ; $63c5: $5b
    ld bc, $035f                                  ; $63c6: $01 $5f $03
    ld b, h                                       ; $63c9: $44
    inc b                                         ; $63ca: $04
    adc e                                         ; $63cb: $8b
    ld e, c                                       ; $63cc: $59
    ld e, e                                       ; $63cd: $5b
    ld a, $b3                                     ; $63ce: $3e $b3
    inc d                                         ; $63d0: $14
    inc bc                                        ; $63d1: $03
    nop                                           ; $63d2: $00
    jp c, $1f2d                                   ; $63d3: $da $2d $1f

    ld d, a                                       ; $63d6: $57
    sub l                                         ; $63d7: $95
    db $10                                        ; $63d8: $10
    ld [bc], a                                    ; $63d9: $02
    nop                                           ; $63da: $00
    sub l                                         ; $63db: $95
    db $10                                        ; $63dc: $10
    ld e, a                                       ; $63dd: $5f
    inc bc                                        ; $63de: $03
    ccf                                           ; $63df: $3f
    dec h                                         ; $63e0: $25
    ld [bc], a                                    ; $63e1: $02
    nop                                           ; $63e2: $00
    ld e, e                                       ; $63e3: $5b
    ld bc, $035f                                  ; $63e4: $01 $5f $03
    ccf                                           ; $63e7: $3f
    dec h                                         ; $63e8: $25
    ld e, e                                       ; $63e9: $5b
    ld bc, $035f                                  ; $63ea: $01 $5f $03
    ld e, a                                       ; $63ed: $5f
    inc bc                                        ; $63ee: $03
    ccf                                           ; $63ef: $3f
    dec h                                         ; $63f0: $25
    ld e, e                                       ; $63f1: $5b
    ld bc, $035f                                  ; $63f2: $01 $5f $03
    ld e, a                                       ; $63f5: $5f
    inc bc                                        ; $63f6: $03
    ccf                                           ; $63f7: $3f
    dec h                                         ; $63f8: $25
    ld [bc], a                                    ; $63f9: $02
    nop                                           ; $63fa: $00
    ld e, e                                       ; $63fb: $5b
    ld bc, $035f                                  ; $63fc: $01 $5f $03
    ccf                                           ; $63ff: $3f
    dec h                                         ; $6400: $25
    ld [bc], a                                    ; $6401: $02
    nop                                           ; $6402: $00
    db $d3                                        ; $6403: $d3
    ld a, [hl]                                    ; $6404: $7e
    ld e, e                                       ; $6405: $5b
    ld bc, $035f                                  ; $6406: $01 $5f $03
    ld bc, $d300                                  ; $6409: $01 $00 $d3
    ld a, [hl]                                    ; $640c: $7e
    ld e, a                                       ; $640d: $5f
    inc bc                                        ; $640e: $03
    xor d                                         ; $640f: $aa
    inc c                                         ; $6410: $0c
    ld b, h                                       ; $6411: $44
    nop                                           ; $6412: $00
    ccf                                           ; $6413: $3f
    inc bc                                        ; $6414: $03
    db $d3                                        ; $6415: $d3
    ld a, [hl]                                    ; $6416: $7e
    rst $28                                       ; $6417: $ef
    ld [$0000], sp                                ; $6418: $08 $00 $00
    db $d3                                        ; $641b: $d3
    ld a, [hl]                                    ; $641c: $7e
    ld e, a                                       ; $641d: $5f
    inc bc                                        ; $641e: $03
    ld [bc], a                                    ; $641f: $02
    nop                                           ; $6420: $00
    ld [bc], a                                    ; $6421: $02
    nop                                           ; $6422: $00
    db $d3                                        ; $6423: $d3
    ld a, [hl]                                    ; $6424: $7e
    ld e, d                                       ; $6425: $5a
    dec b                                         ; $6426: $05
    ld e, a                                       ; $6427: $5f
    inc bc                                        ; $6428: $03
    inc h                                         ; $6429: $24
    nop                                           ; $642a: $00
    db $d3                                        ; $642b: $d3
    ld a, [hl]                                    ; $642c: $7e
    cp h                                          ; $642d: $bc
    dec d                                         ; $642e: $15
    xor [hl]                                      ; $642f: $ae
    ld [$0001], sp                                ; $6430: $08 $01 $00
    ld [de], a                                    ; $6433: $12
    dec c                                         ; $6434: $0d
    db $dd                                        ; $6435: $dd
    add hl, de                                    ; $6436: $19
    adc c                                         ; $6437: $89
    inc b                                         ; $6438: $04
    ld bc, $d300                                  ; $6439: $01 $00 $d3
    ld a, [hl]                                    ; $643c: $7e
    db $dd                                        ; $643d: $dd
    dec d                                         ; $643e: $15
    ld e, a                                       ; $643f: $5f
    inc bc                                        ; $6440: $03
    ld [bc], a                                    ; $6441: $02
    nop                                           ; $6442: $00
    db $d3                                        ; $6443: $d3
    ld a, [hl]                                    ; $6444: $7e
    cp l                                          ; $6445: $bd
    ld de, $035f                                  ; $6446: $11 $5f $03
    inc bc                                        ; $6449: $03
    nop                                           ; $644a: $00
    jp nc, $bb21                                  ; $644b: $d2 $21 $bb

    dec d                                         ; $644e: $15
    xor l                                         ; $644f: $ad
    inc b                                         ; $6450: $04
    inc bc                                        ; $6451: $03
    nop                                           ; $6452: $00
    dec d                                         ; $6453: $15
    ld [hl+], a                                   ; $6454: $22
    xor h                                         ; $6455: $ac
    inc b                                         ; $6456: $04
    cp e                                          ; $6457: $bb
    dec d                                         ; $6458: $15
    nop                                           ; $6459: $00
    nop                                           ; $645a: $00
    db $d3                                        ; $645b: $d3
    ld a, [hl]                                    ; $645c: $7e
    cp e                                          ; $645d: $bb
    dec d                                         ; $645e: $15
    ld e, a                                       ; $645f: $5f
    inc bc                                        ; $6460: $03
    ld bc, $9c00                                  ; $6461: $01 $00 $9c
    dec c                                         ; $6464: $0d
    adc d                                         ; $6465: $8a
    inc b                                         ; $6466: $04
    ld e, a                                       ; $6467: $5f
    inc bc                                        ; $6468: $03
    nop                                           ; $6469: $00
    nop                                           ; $646a: $00
    adc $04                                       ; $646b: $ce $04
    ld a, [de]                                    ; $646d: $1a
    ld e, $46                                     ; $646e: $1e $46
    nop                                           ; $6470: $00
    ld [bc], a                                    ; $6471: $02
    nop                                           ; $6472: $00
    rst $28                                       ; $6473: $ef
    ld [$1998], sp                                ; $6474: $08 $98 $19
    adc d                                         ; $6477: $8a
    inc b                                         ; $6478: $04
    nop                                           ; $6479: $00
    nop                                           ; $647a: $00
    cp h                                          ; $647b: $bc
    dec d                                         ; $647c: $15
    adc $08                                       ; $647d: $ce $08
    ld e, a                                       ; $647f: $5f
    inc bc                                        ; $6480: $03
    ld bc, $9c00                                  ; $6481: $01 $00 $9c
    dec c                                         ; $6484: $0d
    xor e                                         ; $6485: $ab
    ld [$035f], sp                                ; $6486: $08 $5f $03
    inc b                                         ; $6489: $04
    nop                                           ; $648a: $00
    jr nc, @+$17                                  ; $648b: $30 $15

    sbc $4e                                       ; $648d: $de $4e
    or a                                          ; $648f: $b7
    dec h                                         ; $6490: $25
    nop                                           ; $6491: $00
    nop                                           ; $6492: $00
    rrca                                          ; $6493: $0f
    ld de, $31d5                                  ; $6494: $11 $d5 $31
    cp e                                          ; $6497: $bb
    dec d                                         ; $6498: $15
    nop                                           ; $6499: $00
    nop                                           ; $649a: $00
    cp h                                          ; $649b: $bc
    add hl, de                                    ; $649c: $19
    adc $08                                       ; $649d: $ce $08
    ld e, a                                       ; $649f: $5f
    inc bc                                        ; $64a0: $03
    ld bc, $9d00                                  ; $64a1: $01 $00 $9d
    dec c                                         ; $64a4: $0d
    adc h                                         ; $64a5: $8c
    nop                                           ; $64a6: $00
    ld e, a                                       ; $64a7: $5f
    inc bc                                        ; $64a8: $03
    ld bc, $de00                                  ; $64a9: $01 $00 $de
    ld c, [hl]                                    ; $64ac: $4e
    rst $28                                       ; $64ad: $ef
    ld [$159a], sp                                ; $64ae: $08 $9a $15
    nop                                           ; $64b1: $00
    nop                                           ; $64b2: $00
    rst $28                                       ; $64b3: $ef
    ld [$29b5], sp                                ; $64b4: $08 $b5 $29
    sbc $4e                                       ; $64b7: $de $4e
    ld bc, $8e00                                  ; $64b9: $01 $00 $8e
    ld e, d                                       ; $64bc: $5a
    ld e, a                                       ; $64bd: $5f
    inc bc                                        ; $64be: $03
    adc e                                         ; $64bf: $8b
    nop                                           ; $64c0: $00
    ld [bc], a                                    ; $64c1: $02
    nop                                           ; $64c2: $00
    ld e, l                                       ; $64c3: $5d
    ld [bc], a                                    ; $64c4: $02
    adc a                                         ; $64c5: $8f
    ld h, d                                       ; $64c6: $62
    ld a, e                                       ; $64c7: $7b
    ld b, d                                       ; $64c8: $42
    nop                                           ; $64c9: $00
    nop                                           ; $64ca: $00
    sbc $4e                                       ; $64cb: $de $4e
    adc d                                         ; $64cd: $8a
    inc b                                         ; $64ce: $04
    cpl                                           ; $64cf: $2f
    dec e                                         ; $64d0: $1d
    ld bc, $2f00                                  ; $64d1: $01 $00 $2f
    dec e                                         ; $64d4: $1d
    sbc $4e                                       ; $64d5: $de $4e
    push de                                       ; $64d7: $d5
    ld sp, $0422                                  ; $64d8: $31 $22 $04
    adc [hl]                                      ; $64db: $8e
    ld e, d                                       ; $64dc: $5a
    ld e, a                                       ; $64dd: $5f
    inc bc                                        ; $64de: $03
    call nc, $022d                                ; $64df: $d4 $2d $02
    nop                                           ; $64e2: $00
    adc l                                         ; $64e3: $8d
    ld d, [hl]                                    ; $64e4: $56
    ld e, l                                       ; $64e5: $5d
    ld [bc], a                                    ; $64e6: $02
    ld [hl], d                                    ; $64e7: $72
    dec h                                         ; $64e8: $25
    rrca                                          ; $64e9: $0f
    dec d                                         ; $64ea: $15
    db $dd                                        ; $64eb: $dd
    ld b, d                                       ; $64ec: $42
    rst $38                                       ; $64ed: $ff
    ld a, a                                       ; $64ee: $7f
    sbc c                                         ; $64ef: $99
    dec d                                         ; $64f0: $15
    rrca                                          ; $64f1: $0f
    dec d                                         ; $64f2: $15
    db $dd                                        ; $64f3: $dd
    ld a, $ff                                     ; $64f4: $3e $ff
    ld a, a                                       ; $64f6: $7f
    or a                                          ; $64f7: $b7
    ld hl, $0844                                  ; $64f8: $21 $44 $08
    adc [hl]                                      ; $64fb: $8e
    ld e, d                                       ; $64fc: $5a
    ld e, a                                       ; $64fd: $5f
    inc bc                                        ; $64fe: $03
    cpl                                           ; $64ff: $2f
    dec e                                         ; $6500: $1d
    ld [bc], a                                    ; $6501: $02
    nop                                           ; $6502: $00
    ld e, l                                       ; $6503: $5d
    ld [bc], a                                    ; $6504: $02
    adc h                                         ; $6505: $8c
    ld c, d                                       ; $6506: $4a
    or $31                                        ; $6507: $f6 $31
    ld [hl+], a                                   ; $6509: $22
    inc b                                         ; $650a: $04
    scf                                           ; $650b: $37
    ld a, [hl-]                                   ; $650c: $3a
    cpl                                           ; $650d: $2f
    dec e                                         ; $650e: $1d
    sbc $4e                                       ; $650f: $de $4e
    cpl                                           ; $6511: $2f
    dec e                                         ; $6512: $1d
    sbc $4e                                       ; $6513: $de $4e
    push de                                       ; $6515: $d5
    ld sp, $4ede                                  ; $6516: $31 $de $4e
    ld b, h                                       ; $6519: $44
    ld [$4e8c], sp                                ; $651a: $08 $8c $4e
    ld e, a                                       ; $651d: $5f
    inc bc                                        ; $651e: $03
    push de                                       ; $651f: $d5
    ld sp, $0002                                  ; $6520: $31 $02 $00
    ld l, d                                       ; $6523: $6a
    ld a, $5b                                     ; $6524: $3e $5b
    ld bc, $035f                                  ; $6526: $01 $5f $03
    cpl                                           ; $6529: $2f
    dec e                                         ; $652a: $1d
    sbc $4e                                       ; $652b: $de $4e
    ld e, e                                       ; $652d: $5b
    ld bc, $035f                                  ; $652e: $01 $5f $03
    ld h, l                                       ; $6531: $65
    inc c                                         ; $6532: $0c
    sbc $4e                                       ; $6533: $de $4e
    push de                                       ; $6535: $d5
    ld sp, $035f                                  ; $6536: $31 $5f $03
    ld [bc], a                                    ; $6539: $02
    nop                                           ; $653a: $00
    ld l, d                                       ; $653b: $6a
    ld a, $5f                                     ; $653c: $3e $5f
    inc bc                                        ; $653e: $03
    ld h, l                                       ; $653f: $65
    inc c                                         ; $6540: $0c
    ld [bc], a                                    ; $6541: $02
    nop                                           ; $6542: $00
    ld c, b                                       ; $6543: $48
    ld l, $5b                                     ; $6544: $2e $5b
    ld bc, $035f                                  ; $6546: $01 $5f $03
    ld [hl+], a                                   ; $6549: $22
    inc b                                         ; $654a: $04
    push af                                       ; $654b: $f5
    dec [hl]                                      ; $654c: $35
    sbc $4e                                       ; $654d: $de $4e
    cpl                                           ; $654f: $2f
    dec e                                         ; $6550: $1d
    ld b, e                                       ; $6551: $43
    ld [$31d4], sp                                ; $6552: $08 $d4 $31
    sbc $4e                                       ; $6555: $de $4e
    adc l                                         ; $6557: $8d
    ld hl, $0002                                  ; $6558: $21 $02 $00
    ld e, a                                       ; $655b: $5f
    inc bc                                        ; $655c: $03
    ld l, c                                       ; $655d: $69
    ld [hl-], a                                   ; $655e: $32
    ld l, c                                       ; $655f: $69
    ld [hl], $01                                  ; $6560: $36 $01
    nop                                           ; $6562: $00
    ld b, a                                       ; $6563: $47
    ld h, $5b                                     ; $6564: $26 $5b
    ld bc, $035f                                  ; $6566: $01 $5f $03
    ld [hl+], a                                   ; $6569: $22
    inc b                                         ; $656a: $04
    push de                                       ; $656b: $d5
    ld sp, $1d2f                                  ; $656c: $31 $2f $1d
    sbc $4e                                       ; $656f: $de $4e
    xor c                                         ; $6571: $a9
    db $10                                        ; $6572: $10
    push de                                       ; $6573: $d5
    ld sp, $2647                                  ; $6574: $31 $47 $26
    sbc $4e                                       ; $6577: $de $4e
    ld [bc], a                                    ; $6579: $02
    nop                                           ; $657a: $00
    ld e, a                                       ; $657b: $5f
    inc bc                                        ; $657c: $03
    ld b, a                                       ; $657d: $47
    ld h, $48                                     ; $657e: $26 $48
    ld a, [hl+]                                   ; $6580: $2a
    ld bc, $4700                                  ; $6581: $01 $00 $47
    ld h, $14                                     ; $6584: $26 $14
    dec b                                         ; $6586: $05
    ld e, a                                       ; $6587: $5f
    inc bc                                        ; $6588: $03
    ld b, h                                       ; $6589: $44
    ld [$31d5], sp                                ; $658a: $08 $d5 $31
    ld c, $19                                     ; $658d: $0e $19
    sbc $4e                                       ; $658f: $de $4e
    ld [hl+], a                                   ; $6591: $22
    inc b                                         ; $6592: $04
    ld b, a                                       ; $6593: $47
    ld h, $d5                                     ; $6594: $26 $d5
    ld sp, $150f                                  ; $6596: $31 $0f $15
    ld [bc], a                                    ; $6599: $02
    nop                                           ; $659a: $00
    ld e, a                                       ; $659b: $5f
    inc bc                                        ; $659c: $03
    ld b, a                                       ; $659d: $47
    ld h, $0f                                     ; $659e: $26 $0f
    dec d                                         ; $65a0: $15
    ld bc, $4700                                  ; $65a1: $01 $00 $47
    ld h, $5d                                     ; $65a4: $26 $5d
    ld [bc], a                                    ; $65a6: $02
    ldh a, [$08]                                  ; $65a7: $f0 $08
    ld h, l                                       ; $65a9: $65
    inc c                                         ; $65aa: $0c
    sbc $4e                                       ; $65ab: $de $4e
    dec l                                         ; $65ad: $2d
    add hl, de                                    ; $65ae: $19
    push de                                       ; $65af: $d5
    ld sp, $0421                                  ; $65b0: $31 $21 $04
    ld l, $19                                     ; $65b3: $2e $19
    push de                                       ; $65b5: $d5
    ld sp, $08f0                                  ; $65b6: $31 $f0 $08
    nop                                           ; $65b9: $00
    nop                                           ; $65ba: $00
    ld b, a                                       ; $65bb: $47
    ld h, $5f                                     ; $65bc: $26 $5f
    inc bc                                        ; $65be: $03
    ld [bc], a                                    ; $65bf: $02
    nop                                           ; $65c0: $00
    ld bc, $4700                                  ; $65c1: $01 $00 $47
    ld h, $5d                                     ; $65c4: $26 $5d
    ld [bc], a                                    ; $65c6: $02
    ldh a, [$08]                                  ; $65c7: $f0 $08
    nop                                           ; $65c9: $00
    nop                                           ; $65ca: $00
    sbc $4e                                       ; $65cb: $de $4e
    ld c, l                                       ; $65cd: $4d
    add hl, de                                    ; $65ce: $19
    push de                                       ; $65cf: $d5
    ld sp, $0000                                  ; $65d0: $31 $00 $00
    rrca                                          ; $65d3: $0f
    ld de, $31d5                                  ; $65d4: $11 $d5 $31
    sbc $4e                                       ; $65d7: $de $4e
    nop                                           ; $65d9: $00
    nop                                           ; $65da: $00
    ld b, a                                       ; $65db: $47
    ld h, $5f                                     ; $65dc: $26 $5f
    inc bc                                        ; $65de: $03
    ldh a, [$08]                                  ; $65df: $f0 $08
    ld [bc], a                                    ; $65e1: $02
    nop                                           ; $65e2: $00
    ld e, e                                       ; $65e3: $5b
    ld bc, $035f                                  ; $65e4: $01 $5f $03
    ldh a, [$08]                                  ; $65e7: $f0 $08
    ld e, e                                       ; $65e9: $5b
    ld bc, $035f                                  ; $65ea: $01 $5f $03
    ld e, a                                       ; $65ed: $5f
    inc bc                                        ; $65ee: $03
    ldh a, [$08]                                  ; $65ef: $f0 $08
    ld e, e                                       ; $65f1: $5b
    ld bc, $035f                                  ; $65f2: $01 $5f $03
    ld e, a                                       ; $65f5: $5f
    inc bc                                        ; $65f6: $03
    ldh a, [$08]                                  ; $65f7: $f0 $08
    ld [bc], a                                    ; $65f9: $02
    nop                                           ; $65fa: $00
    ld e, e                                       ; $65fb: $5b
    ld bc, $035f                                  ; $65fc: $01 $5f $03
    ldh a, [$08]                                  ; $65ff: $f0 $08

    db $02, $00, $36, $05, $5f, $03, $5b, $01, $0a, $2c, $5f, $03, $36, $05, $4c, $29
    db $0a, $2c, $5f, $03, $36, $05, $4b, $29, $02, $00, $5f, $03, $36, $05, $4b, $29
    db $02, $00, $36, $05, $5f, $03, $0a, $2c, $00, $00, $0a, $2c, $6a, $29, $64, $10
    db $00, $00, $29, $28, $36, $05, $a9, $25, $02, $00, $36, $05, $5f, $03, $35, $09
    db $01, $00, $56, $05, $5f, $03, $0a, $2c, $00, $00, $c5, $14, $0b, $2d, $42, $08
    db $01, $04, $0a, $2c, $55, $09, $28, $21, $02, $00, $55, $09, $5f, $03, $28, $21
    db $01, $00, $57, $05, $5f, $03, $0a, $2c, $00, $00, $64, $10, $06, $20, $08, $20
    db $22, $08, $fd, $52, $75, $09, $89, $28, $02, $00, $55, $09, $5f, $03, $75, $09
    db $01, $00, $59, $05, $87, $20, $5f, $03, $00, $00, $eb, $2c, $17, $32, $03, $10
    db $24, $0c, $17, $32, $1d, $57, $0e, $21, $02, $00, $75, $0d, $5f, $03, $95, $0d
    db $02, $00, $6b, $2d, $5b, $01, $5f, $03, $22, $10, $17, $32, $fd, $52, $0a, $2d
    db $86, $08, $fd, $52, $ff, $7f, $0e, $21, $02, $00, $94, $0d, $5f, $03, $b4, $11
    db $01, $00, $4b, $2d, $5b, $01, $5f, $03, $01, $08, $17, $32, $fd, $52, $bf, $67
    db $43, $08, $1d, $57, $00, $4c, $0e, $21, $02, $00, $b4, $11, $5f, $03, $86, $08
    db $01, $00, $5b, $01, $5f, $03, $25, $14, $20, $5c, $17, $32, $aa, $1c, $bf, $67
    db $23, $04, $fd, $52, $20, $5c, $df, $73, $44, $04, $d3, $15, $fd, $52, $5f, $03
    db $01, $00, $5b, $01, $0c, $34, $5f, $03, $22, $08, $17, $32, $ff, $7f, $a9, $34
    db $01, $04, $fd, $52, $00, $2c, $86, $08, $44, $04, $f3, $15, $fd, $52, $5f, $03
    db $02, $00, $d7, $19, $5f, $03, $09, $28, $00, $04, $17, $32, $2f, $3c, $fd, $52
    db $fd, $52, $17, $32, $2f, $3c, $fd, $52, $44, $04, $13, $1a, $3e, $1b, $4a, $28
    db $02, $00, $f5, $15, $5f, $03, $0a, $2c, $43, $08, $17, $32, $fd, $52, $2f, $3c
    db $86, $08, $fd, $52, $fd, $52, $2f, $3c, $22, $00, $fb, $0a, $fd, $52, $6a, $28
    db $01, $00, $52, $1e, $5d, $02, $68, $20, $00, $00, $17, $32, $a8, $2c, $86, $08
    db $86, $08, $17, $32, $fd, $52, $86, $08, $02, $00, $52, $1e, $6c, $30, $5f, $03
    db $02, $00, $72, $22, $5d, $02, $0a, $2c, $42, $04, $0c, $31, $17, $32, $a7, $19
    db $86, $08, $17, $32, $fd, $52, $0a, $2c, $03, $00, $72, $22, $2b, $2c, $5f, $03
    db $02, $00, $91, $22, $5d, $02, $29, $24, $02, $08, $54, $2a, $49, $28, $68, $04
    db $86, $08, $f7, $31, $fd, $52, $17, $32, $26, $00, $91, $22, $5f, $03, $ae, $04
    db $02, $00, $b1, $26, $5d, $02, $0b, $30, $45, $00, $50, $2a, $4c, $30, $cf, $08
    db $f7, $31, $fd, $52, $17, $32, $cf, $08, $02, $00, $5f, $03, $ae, $04, $47, $00
    db $02, $00, $5b, $01, $5f, $03, $47, $00, $5b, $01, $5f, $03, $5f, $03, $47, $00
    db $5b, $01, $5f, $03, $5f, $03, $47, $00, $02, $00, $5b, $01, $5f, $03, $47, $00

    ld [bc], a                                    ; $6801: $02
    nop                                           ; $6802: $00
    db $e3                                        ; $6803: $e3
    ld b, [hl]                                    ; $6804: $46
    ld e, e                                       ; $6805: $5b
    ld bc, $035f                                  ; $6806: $01 $5f $03
    nop                                           ; $6809: $00
    nop                                           ; $680a: $00
    ld e, a                                       ; $680b: $5f
    inc bc                                        ; $680c: $03
    db $e3                                        ; $680d: $e3
    ld b, [hl]                                    ; $680e: $46
    ld e, a                                       ; $680f: $5f
    inc bc                                        ; $6810: $03
    nop                                           ; $6811: $00
    nop                                           ; $6812: $00
    ld e, a                                       ; $6813: $5f
    inc bc                                        ; $6814: $03
    db $e3                                        ; $6815: $e3
    ld b, [hl]                                    ; $6816: $46
    ld h, b                                       ; $6817: $60
    ld [$0002], sp                                ; $6818: $08 $02 $00
    ld e, a                                       ; $681b: $5f
    inc bc                                        ; $681c: $03
    db $e3                                        ; $681d: $e3
    ld b, [hl]                                    ; $681e: $46
    ld h, b                                       ; $681f: $60
    ld [$0002], sp                                ; $6820: $08 $02 $00
    db $e3                                        ; $6823: $e3
    ld b, [hl]                                    ; $6824: $46
    ld e, e                                       ; $6825: $5b
    ld bc, $035f                                  ; $6826: $01 $5f $03
    ld hl, $e300                                  ; $6829: $21 $00 $e3
    ld b, [hl]                                    ; $682c: $46
    or e                                          ; $682d: $b3
    dec h                                         ; $682e: $25
    sbc l                                         ; $682f: $9d
    ld a, $00                                     ; $6830: $3e $00
    nop                                           ; $6832: $00
    db $e3                                        ; $6833: $e3
    ld b, [hl]                                    ; $6834: $46
    push de                                       ; $6835: $d5
    add hl, hl                                    ; $6836: $29
    sbc l                                         ; $6837: $9d
    ld a, $00                                     ; $6838: $3e $00
    nop                                           ; $683a: $00
    db $e3                                        ; $683b: $e3
    ld b, [hl]                                    ; $683c: $46
    ld e, a                                       ; $683d: $5f
    inc bc                                        ; $683e: $03
    ld [bc], a                                    ; $683f: $02
    nop                                           ; $6840: $00
    ld [bc], a                                    ; $6841: $02
    nop                                           ; $6842: $00
    db $e3                                        ; $6843: $e3
    ld b, [hl]                                    ; $6844: $46
    ld e, e                                       ; $6845: $5b
    ld bc, $035f                                  ; $6846: $01 $5f $03
    nop                                           ; $6849: $00
    nop                                           ; $684a: $00
    sbc l                                         ; $684b: $9d
    ld a, $e3                                     ; $684c: $3e $e3
    ld b, [hl]                                    ; $684e: $46
    rst $28                                       ; $684f: $ef
    inc c                                         ; $6850: $0c
    nop                                           ; $6851: $00
    nop                                           ; $6852: $00
    add hl, de                                    ; $6853: $19
    ld l, $f1                                     ; $6854: $2e $f1
    inc b                                         ; $6856: $04
    cp [hl]                                       ; $6857: $be
    ld a, $00                                     ; $6858: $3e $00
    nop                                           ; $685a: $00
    sbc [hl]                                      ; $685b: $9e
    ld a, [hl-]                                   ; $685c: $3a
    db $e3                                        ; $685d: $e3
    ld b, [hl]                                    ; $685e: $46
    ld e, a                                       ; $685f: $5f
    inc bc                                        ; $6860: $03
    ld bc, $c200                                  ; $6861: $01 $00 $c2
    ld b, [hl]                                    ; $6864: $46
    ld e, e                                       ; $6865: $5b
    ld bc, $035f                                  ; $6866: $01 $5f $03
    ld [hl+], a                                   ; $6869: $22
    inc b                                         ; $686a: $04
    sub $29                                       ; $686b: $d6 $29
    ld de, $be0d                                  ; $686d: $11 $0d $be
    ld a, $00                                     ; $6870: $3e $00
    nop                                           ; $6872: $00
    ld [hl-], a                                   ; $6873: $32
    dec c                                         ; $6874: $0d
    ld e, d                                       ; $6875: $5a
    ld a, [hl-]                                   ; $6876: $3a
    sbc d                                         ; $6877: $9a
    dec d                                         ; $6878: $15
    ld bc, $7c00                                  ; $6879: $01 $00 $7c
    ld [hl], $c2                                  ; $687c: $36 $c2
    ld b, [hl]                                    ; $687e: $46
    ld e, a                                       ; $687f: $5f
    inc bc                                        ; $6880: $03
    ld bc, $c200                                  ; $6881: $01 $00 $c2
    ld b, d                                       ; $6884: $42
    ld e, e                                       ; $6885: $5b
    ld bc, $035f                                  ; $6886: $01 $5f $03
    nop                                           ; $6889: $00
    nop                                           ; $688a: $00
    ld sp, hl                                     ; $688b: $f9
    dec l                                         ; $688c: $2d
    call $de0c                                    ; $688d: $cd $0c $de
    ld b, d                                       ; $6890: $42
    nop                                           ; $6891: $00
    nop                                           ; $6892: $00
    ldh a, [rDIV]                                 ; $6893: $f0 $04
    sbc b                                         ; $6895: $98
    add hl, de                                    ; $6896: $19
    adc c                                         ; $6897: $89
    nop                                           ; $6898: $00
    nop                                           ; $6899: $00
    nop                                           ; $689a: $00
    ld [hl], a                                    ; $689b: $77
    dec d                                         ; $689c: $15
    ld e, a                                       ; $689d: $5f
    inc bc                                        ; $689e: $03
    ld a, e                                       ; $689f: $7b
    ld [hl], $01                                  ; $68a0: $36 $01
    nop                                           ; $68a2: $00
    ld e, l                                       ; $68a3: $5d
    ld [bc], a                                    ; $68a4: $02
    ld hl, sp+$29                                 ; $68a5: $f8 $29
    sbc $46                                       ; $68a7: $de $46
    inc h                                         ; $68a9: $24
    nop                                           ; $68aa: $00
    or [hl]                                       ; $68ab: $b6
    dec h                                         ; $68ac: $25
    di                                            ; $68ad: $f3
    inc b                                         ; $68ae: $04
    sbc l                                         ; $68af: $9d
    ld a, $00                                     ; $68b0: $3e $00
    nop                                           ; $68b2: $00
    sub h                                         ; $68b3: $94
    dec h                                         ; $68b4: $25
    sbc $4e                                       ; $68b5: $de $4e
    adc d                                         ; $68b7: $8a
    nop                                           ; $68b8: $00
    ld b, l                                       ; $68b9: $45
    nop                                           ; $68ba: $00
    ld e, e                                       ; $68bb: $5b
    ld a, [bc]                                    ; $68bc: $0a
    ld a, l                                       ; $68bd: $7d
    ld a, [hl-]                                   ; $68be: $3a
    ld [hl-], a                                   ; $68bf: $32
    ld de, $0002                                  ; $68c0: $11 $02 $00
    and d                                         ; $68c3: $a2
    ld a, [hl-]                                   ; $68c4: $3a
    rra                                           ; $68c5: $1f
    inc hl                                        ; $68c6: $23
    ld d, [hl]                                    ; $68c7: $56
    dec c                                         ; $68c8: $0d
    jr nz, jr_0d2_68cf                            ; $68c9: $20 $04

    ld a, [$ad29]                                 ; $68cb: $fa $29 $ad
    inc b                                         ; $68ce: $04

jr_0d2_68cf:
    rra                                           ; $68cf: $1f
    ld c, a                                       ; $68d0: $4f
    ld b, [hl]                                    ; $68d1: $46
    nop                                           ; $68d2: $00
    cp $4e                                        ; $68d3: $fe $4e
    sub h                                         ; $68d5: $94
    dec h                                         ; $68d6: $25
    ld e, a                                       ; $68d7: $5f
    ld e, a                                       ; $68d8: $5f
    ld bc, $7b00                                  ; $68d9: $01 $00 $7b
    ld [hl], $f1                                  ; $68dc: $36 $f1
    ld [$035f], sp                                ; $68de: $08 $5f $03
    ld [bc], a                                    ; $68e1: $02
    nop                                           ; $68e2: $00
    ld d, a                                       ; $68e3: $57
    dec c                                         ; $68e4: $0d
    cp [hl]                                       ; $68e5: $be
    ld b, d                                       ; $68e6: $42
    ld e, a                                       ; $68e7: $5f
    inc bc                                        ; $68e8: $03
    ld [hl+], a                                   ; $68e9: $22
    nop                                           ; $68ea: $00
    rst $10                                       ; $68eb: $d7
    ld hl, $04cf                                  ; $68ec: $21 $cf $04
    sbc l                                         ; $68ef: $9d
    ld a, $45                                     ; $68f0: $3e $45
    nop                                           ; $68f2: $00
    sbc b                                         ; $68f3: $98
    ld c, [hl]                                    ; $68f4: $4e
    sub l                                         ; $68f5: $95
    dec h                                         ; $68f6: $25
    ld a, a                                       ; $68f7: $7f
    ld e, a                                       ; $68f8: $5f
    ld bc, $1a00                                  ; $68f9: $01 $00 $1a
    ld l, $f0                                     ; $68fc: $2e $f0
    ld [$035f], sp                                ; $68fe: $08 $5f $03
    ld [bc], a                                    ; $6901: $02
    nop                                           ; $6902: $00
    ld e, c                                       ; $6903: $59
    dec b                                         ; $6904: $05
    cp [hl]                                       ; $6905: $be
    ld b, d                                       ; $6906: $42
    ld e, a                                       ; $6907: $5f
    inc bc                                        ; $6908: $03
    inc h                                         ; $6909: $24
    nop                                           ; $690a: $00
    ld [hl], a                                    ; $690b: $77
    dec d                                         ; $690c: $15
    jp nc, Jump_000_3a00                          ; $690d: $d2 $00 $3a

    ld [hl], $03                                  ; $6910: $36 $03
    nop                                           ; $6912: $00
    sbc c                                         ; $6913: $99
    add hl, de                                    ; $6914: $19
    ld e, a                                       ; $6915: $5f
    ld e, a                                       ; $6916: $5f
    ret nc                                        ; $6917: $d0

    nop                                           ; $6918: $00
    ld bc, $1a00                                  ; $6919: $01 $00 $1a
    ld l, $5f                                     ; $691c: $2e $5f
    inc bc                                        ; $691e: $03
    adc $04                                       ; $691f: $ce $04
    ld bc, $1500                                  ; $6921: $01 $00 $15
    dec b                                         ; $6924: $05
    cp $12                                        ; $6925: $fe $12
    call nc, Call_000_0029                        ; $6927: $d4 $29 $00
    nop                                           ; $692a: $00
    ret c                                         ; $692b: $d8

    dec h                                         ; $692c: $25
    pop de                                        ; $692d: $d1
    nop                                           ; $692e: $00
    ld a, h                                       ; $692f: $7c
    ld a, [hl-]                                   ; $6930: $3a
    ld bc, $5c00                                  ; $6931: $01 $00 $5c
    ld a, [hl-]                                   ; $6934: $3a
    ld e, a                                       ; $6935: $5f
    ld h, e                                       ; $6936: $63
    call Call_000_030c                            ; $6937: $cd $0c $03
    nop                                           ; $693a: $00
    ld e, a                                       ; $693b: $5f
    inc bc                                        ; $693c: $03
    sub [hl]                                      ; $693d: $96
    ld hl, $3e9d                                  ; $693e: $21 $9d $3e
    ld bc, $1400                                  ; $6941: $01 $00 $14
    add hl, bc                                    ; $6944: $09
    rra                                           ; $6945: $1f
    rla                                           ; $6946: $17
    and [hl]                                      ; $6947: $a6
    ld hl, $0024                                  ; $6948: $21 $24 $00
    ld e, e                                       ; $694b: $5b
    ld [hl], $d3                                  ; $694c: $36 $d3
    ld h, d                                       ; $694e: $62
    rst $38                                       ; $694f: $ff
    ld a, a                                       ; $6950: $7f
    ld [bc], a                                    ; $6951: $02
    nop                                           ; $6952: $00
    dec sp                                        ; $6953: $3b
    ld [hl], $3c                                  ; $6954: $36 $3c
    ld e, a                                       ; $6956: $5f
    xor $0c                                       ; $6957: $ee $0c
    inc hl                                        ; $6959: $23
    nop                                           ; $695a: $00
    ld d, l                                       ; $695b: $55
    dec c                                         ; $695c: $0d
    ld a, l                                       ; $695d: $7d
    ld a, [hl-]                                   ; $695e: $3a
    ld e, a                                       ; $695f: $5f
    inc bc                                        ; $6960: $03
    ld bc, $5700                                  ; $6961: $01 $00 $57
    dec c                                         ; $6964: $0d
    sbc $26                                       ; $6965: $de $26
    xor h                                         ; $6967: $ac
    ld [$0000], sp                                ; $6968: $08 $00 $00
    ld a, h                                       ; $696b: $7c
    ld a, $cf                                     ; $696c: $3e $cf
    inc b                                         ; $696e: $04
    ld e, a                                       ; $696f: $5f
    ld e, a                                       ; $6970: $5f
    ld bc, $9600                                  ; $6971: $01 $00 $96
    ld hl, $531e                                  ; $6974: $21 $1e $53
    xor h                                         ; $6977: $ac
    inc b                                         ; $6978: $04
    ld bc, $1a00                                  ; $6979: $01 $00 $1a
    ld l, $62                                     ; $697c: $2e $62
    ld h, $5f                                     ; $697e: $26 $5f
    inc bc                                        ; $6980: $03
    ld [bc], a                                    ; $6981: $02
    nop                                           ; $6982: $00
    ld d, [hl]                                    ; $6983: $56
    dec c                                         ; $6984: $0d
    ld e, a                                       ; $6985: $5f
    inc bc                                        ; $6986: $03
    add a                                         ; $6987: $87
    ld [$0000], sp                                ; $6988: $08 $00 $00
    ret c                                         ; $698b: $d8

    dec l                                         ; $698c: $2d
    ccf                                           ; $698d: $3f
    ld e, e                                       ; $698e: $5b
    xor e                                         ; $698f: $ab
    inc b                                         ; $6990: $04
    ld bc, $9600                                  ; $6991: $01 $00 $96
    dec e                                         ; $6994: $1d
    adc d                                         ; $6995: $8a
    inc b                                         ; $6996: $04
    sbc [hl]                                      ; $6997: $9e
    ld a, [hl-]                                   ; $6998: $3a
    ld b, [hl]                                    ; $6999: $46
    nop                                           ; $699a: $00
    reti                                          ; $699b: $d9


    ld hl, $2662                                  ; $699c: $21 $62 $26
    ld e, a                                       ; $699f: $5f
    inc bc                                        ; $69a0: $03
    ld bc, $1400                                  ; $69a1: $01 $00 $14
    dec b                                         ; $69a4: $05
    ld e, a                                       ; $69a5: $5f
    inc bc                                        ; $69a6: $03
    and a                                         ; $69a7: $a7
    inc c                                         ; $69a8: $0c
    dec c                                         ; $69a9: $0d
    dec d                                         ; $69aa: $15
    ld a, e                                       ; $69ab: $7b
    ld b, d                                       ; $69ac: $42
    ld e, $57                                     ; $69ad: $1e $57
    sub [hl]                                      ; $69af: $96
    ld hl, $0000                                  ; $69b0: $21 $00 $00
    ld a, [de]                                    ; $69b3: $1a
    ld [hl-], a                                   ; $69b4: $32
    adc b                                         ; $69b5: $88
    inc c                                         ; $69b6: $0c
    pop af                                        ; $69b7: $f1
    inc b                                         ; $69b8: $04
    nop                                           ; $69b9: $00
    nop                                           ; $69ba: $00
    ld e, a                                       ; $69bb: $5f
    inc bc                                        ; $69bc: $03
    ld h, d                                       ; $69bd: $62
    ld h, $af                                     ; $69be: $26 $af
    nop                                           ; $69c0: $00
    ld [bc], a                                    ; $69c1: $02
    nop                                           ; $69c2: $00
    ld c, [hl]                                    ; $69c3: $4e
    dec e                                         ; $69c4: $1d
    ld e, e                                       ; $69c5: $5b
    ld bc, $035f                                  ; $69c6: $01 $5f $03
    ld hl, $9600                                  ; $69c9: $21 $00 $96
    ld hl, $10ca                                  ; $69cc: $21 $ca $10
    ld e, e                                       ; $69cf: $5b
    ld [hl], $20                                  ; $69d0: $36 $20
    inc b                                         ; $69d2: $04
    inc sp                                        ; $69d3: $33
    dec c                                         ; $69d4: $0d
    add hl, sp                                    ; $69d5: $39
    ld [hl-], a                                   ; $69d6: $32
    jp z, RST_10                                  ; $69d7: $ca $10 $00

    nop                                           ; $69da: $00
    rra                                           ; $69db: $1f
    rla                                           ; $69dc: $17
    ld h, d                                       ; $69dd: $62
    ld h, $13                                     ; $69de: $26 $13
    add hl, bc                                    ; $69e0: $09
    ld [bc], a                                    ; $69e1: $02
    nop                                           ; $69e2: $00
    ld e, e                                       ; $69e3: $5b
    ld bc, $035f                                  ; $69e4: $01 $5f $03
    inc de                                        ; $69e7: $13
    add hl, bc                                    ; $69e8: $09
    ld e, e                                       ; $69e9: $5b
    ld bc, $035f                                  ; $69ea: $01 $5f $03
    ld e, a                                       ; $69ed: $5f
    inc bc                                        ; $69ee: $03
    inc de                                        ; $69ef: $13
    add hl, bc                                    ; $69f0: $09
    ld e, e                                       ; $69f1: $5b
    ld bc, $035f                                  ; $69f2: $01 $5f $03
    ld e, a                                       ; $69f5: $5f
    inc bc                                        ; $69f6: $03
    inc de                                        ; $69f7: $13
    add hl, bc                                    ; $69f8: $09
    ld [bc], a                                    ; $69f9: $02
    nop                                           ; $69fa: $00
    ld e, e                                       ; $69fb: $5b
    ld bc, $035f                                  ; $69fc: $01 $5f $03
    inc de                                        ; $69ff: $13
    add hl, bc                                    ; $6a00: $09
    ld [bc], a                                    ; $6a01: $02
    nop                                           ; $6a02: $00
    ld d, e                                       ; $6a03: $53
    ld e, l                                       ; $6a04: $5d
    ld e, e                                       ; $6a05: $5b
    ld bc, $035f                                  ; $6a06: $01 $5f $03
    inc h                                         ; $6a09: $24
    inc c                                         ; $6a0a: $0c
    ld e, a                                       ; $6a0b: $5f
    inc bc                                        ; $6a0c: $03
    ld d, e                                       ; $6a0d: $53
    ld e, l                                       ; $6a0e: $5d
    rst $18                                       ; $6a0f: $df
    daa                                           ; $6a10: $27
    ld e, a                                       ; $6a11: $5f
    inc bc                                        ; $6a12: $03
    rst $18                                       ; $6a13: $df
    daa                                           ; $6a14: $27
    rst $38                                       ; $6a15: $ff
    cpl                                           ; $6a16: $2f
    rst $18                                       ; $6a17: $df
    daa                                           ; $6a18: $27
    nop                                           ; $6a19: $00
    nop                                           ; $6a1a: $00
    ld e, a                                       ; $6a1b: $5f
    inc bc                                        ; $6a1c: $03
    ld d, e                                       ; $6a1d: $53
    ld e, l                                       ; $6a1e: $5d
    ld [bc], a                                    ; $6a1f: $02
    nop                                           ; $6a20: $00
    ld [bc], a                                    ; $6a21: $02
    nop                                           ; $6a22: $00
    ld d, e                                       ; $6a23: $53
    ld e, l                                       ; $6a24: $5d
    ld e, e                                       ; $6a25: $5b
    ld bc, $035f                                  ; $6a26: $01 $5f $03
    inc h                                         ; $6a29: $24
    inc c                                         ; $6a2a: $0c
    cp a                                          ; $6a2b: $bf
    ld [hl+], a                                   ; $6a2c: $22
    ld d, e                                       ; $6a2d: $53
    ld e, l                                       ; $6a2e: $5d
    rst $38                                       ; $6a2f: $ff
    dec hl                                        ; $6a30: $2b
    ld a, a                                       ; $6a31: $7f
    ld a, [hl+]                                   ; $6a32: $2a
    ccf                                           ; $6a33: $3f
    daa                                           ; $6a34: $27
    rst $18                                       ; $6a35: $df
    daa                                           ; $6a36: $27
    rst $38                                       ; $6a37: $ff
    dec hl                                        ; $6a38: $2b
    inc h                                         ; $6a39: $24
    inc c                                         ; $6a3a: $0c
    ld d, e                                       ; $6a3b: $53
    ld e, l                                       ; $6a3c: $5d
    ld e, a                                       ; $6a3d: $5f
    inc bc                                        ; $6a3e: $03
    ld a, a                                       ; $6a3f: $7f
    dec hl                                        ; $6a40: $2b
    ld [bc], a                                    ; $6a41: $02
    nop                                           ; $6a42: $00
    ld d, e                                       ; $6a43: $53
    ld e, l                                       ; $6a44: $5d
    ld e, e                                       ; $6a45: $5b
    ld bc, $035f                                  ; $6a46: $01 $5f $03
    ld b, [hl]                                    ; $6a49: $46
    ld [$2b1f], sp                                ; $6a4a: $08 $1f $2b
    dec [hl]                                      ; $6a4d: $35
    add hl, de                                    ; $6a4e: $19
    rst $38                                       ; $6a4f: $ff
    dec hl                                        ; $6a50: $2b
    sub c                                         ; $6a51: $91
    inc d                                         ; $6a52: $14
    ld e, a                                       ; $6a53: $5f
    ld h, $df                                     ; $6a54: $26 $df
    daa                                           ; $6a56: $27
    ld [hl], e                                    ; $6a57: $73
    dec d                                         ; $6a58: $15
    inc hl                                        ; $6a59: $23
    ld [$5d53], sp                                ; $6a5a: $08 $53 $5d
    rst $18                                       ; $6a5d: $df
    ld a, [de]                                    ; $6a5e: $1a
    rst $38                                       ; $6a5f: $ff
    cpl                                           ; $6a60: $2f
    ld [bc], a                                    ; $6a61: $02
    nop                                           ; $6a62: $00
    ld e, b                                       ; $6a63: $58
    dec b                                         ; $6a64: $05
    ld d, e                                       ; $6a65: $53
    ld e, c                                       ; $6a66: $59
    rra                                           ; $6a67: $1f
    rrca                                          ; $6a68: $0f
    ld b, l                                       ; $6a69: $45
    inc b                                         ; $6a6a: $04
    ret c                                         ; $6a6b: $d8

    add hl, de                                    ; $6a6c: $19
    ccf                                           ; $6a6d: $3f
    dec hl                                        ; $6a6e: $2b
    ld sp, $cb15                                  ; $6a6f: $31 $15 $cb
    ld [$229e], sp                                ; $6a72: $08 $9e $22
    or a                                          ; $6a75: $b7
    dec d                                         ; $6a76: $15
    rst $38                                       ; $6a77: $ff
    daa                                           ; $6a78: $27
    ld [bc], a                                    ; $6a79: $02
    nop                                           ; $6a7a: $00
    or [hl]                                       ; $6a7b: $b6
    dec d                                         ; $6a7c: $15
    rst $18                                       ; $6a7d: $df
    ld h, $bf                                     ; $6a7e: $26 $bf
    rla                                           ; $6a80: $17
    ld [bc], a                                    ; $6a81: $02
    nop                                           ; $6a82: $00
    inc [hl]                                      ; $6a83: $34
    ld e, c                                       ; $6a84: $59
    ld a, c                                       ; $6a85: $79
    add hl, bc                                    ; $6a86: $09
    rra                                           ; $6a87: $1f
    rrca                                          ; $6a88: $0f
    rrc b                                         ; $6a89: $cb $08
    rla                                           ; $6a8b: $17
    ld [hl], $92                                  ; $6a8c: $36 $92
    ld de, $1a3c                                  ; $6a8e: $11 $3c $1a
    jp z, Jump_000_1714                           ; $6a91: $ca $14 $17

    ld [hl], $fd                                  ; $6a94: $36 $fd
    ld d, d                                       ; $6a96: $52
    cpl                                           ; $6a97: $2f
    dec d                                         ; $6a98: $15
    ld bc, $7d00                                  ; $6a99: $01 $00 $7d
    ld h, $5f                                     ; $6a9c: $26 $5f
    inc bc                                        ; $6a9e: $03
    db $eb                                        ; $6a9f: $eb
    ld [$0002], sp                                ; $6aa0: $08 $02 $00
    inc d                                         ; $6aa3: $14
    ld d, c                                       ; $6aa4: $51
    ld e, b                                       ; $6aa5: $58
    dec b                                         ; $6aa6: $05
    ld e, a                                       ; $6aa7: $5f
    inc bc                                        ; $6aa8: $03
    dec bc                                        ; $6aa9: $0b
    dec c                                         ; $6aaa: $0d
    add hl, de                                    ; $6aab: $19
    ld l, $fd                                     ; $6aac: $2e $fd
    ld d, d                                       ; $6aae: $52
    rst $38                                       ; $6aaf: $ff
    daa                                           ; $6ab0: $27
    ld hl, $f800                                  ; $6ab1: $21 $00 $f8
    dec c                                         ; $6ab4: $0d
    db $fd                                        ; $6ab5: $fd
    ld d, d                                       ; $6ab6: $52
    db $eb                                        ; $6ab7: $eb
    inc c                                         ; $6ab8: $0c
    inc hl                                        ; $6ab9: $23
    nop                                           ; $6aba: $00
    ld e, $13                                     ; $6abb: $1e $13
    rla                                           ; $6abd: $17
    ld [hl], $fd                                  ; $6abe: $36 $fd
    ld d, d                                       ; $6ac0: $52
    ld [bc], a                                    ; $6ac1: $02
    nop                                           ; $6ac2: $00
    db $f4                                        ; $6ac3: $f4
    ld c, h                                       ; $6ac4: $4c
    ld a, [$5f0c]                                 ; $6ac5: $fa $0c $5f
    inc bc                                        ; $6ac8: $03
    ld h, a                                       ; $6ac9: $67
    inc b                                         ; $6aca: $04
    ld a, [hl-]                                   ; $6acb: $3a
    ld l, $fd                                     ; $6acc: $2e $fd
    ld d, d                                       ; $6ace: $52
    rst $38                                       ; $6acf: $ff
    daa                                           ; $6ad0: $27
    nop                                           ; $6ad1: $00
    nop                                           ; $6ad2: $00
    db $fd                                        ; $6ad3: $fd
    ld d, d                                       ; $6ad4: $52
    nop                                           ; $6ad5: $00
    ld a, h                                       ; $6ad6: $7c
    rst $38                                       ; $6ad7: $ff
    ld a, a                                       ; $6ad8: $7f
    inc hl                                        ; $6ad9: $23
    nop                                           ; $6ada: $00
    sbc e                                         ; $6adb: $9b
    ld b, $75                                     ; $6adc: $06 $75
    ld b, c                                       ; $6ade: $41
    db $fd                                        ; $6adf: $fd
    ld d, d                                       ; $6ae0: $52
    ld [bc], a                                    ; $6ae1: $02
    nop                                           ; $6ae2: $00
    call nc, Call_0d2_5b48                        ; $6ae3: $d4 $48 $5b
    ld bc, $1b5f                                  ; $6ae6: $01 $5f $1b
    db $eb                                        ; $6ae9: $eb
    ld [$52fd], sp                                ; $6aea: $08 $fd $52
    or $31                                        ; $6aed: $f6 $31
    ccf                                           ; $6aef: $3f
    daa                                           ; $6af0: $27
    ld hl, $fd08                                  ; $6af1: $21 $08 $fd
    ld d, d                                       ; $6af4: $52
    rst $38                                       ; $6af5: $ff
    ld a, a                                       ; $6af6: $7f
    ld b, a                                       ; $6af7: $47
    nop                                           ; $6af8: $00
    ld b, e                                       ; $6af9: $43
    nop                                           ; $6afa: $00
    call c, $d406                                 ; $6afb: $dc $06 $d4
    ld c, b                                       ; $6afe: $48
    cp d                                          ; $6aff: $ba
    ld c, d                                       ; $6b00: $4a
    ld [bc], a                                    ; $6b01: $02
    nop                                           ; $6b02: $00
    add hl, de                                    ; $6b03: $19
    add hl, de                                    ; $6b04: $19
    ld a, [hl-]                                   ; $6b05: $3a
    inc de                                        ; $6b06: $13
    ld a, a                                       ; $6b07: $7f
    cpl                                           ; $6b08: $2f
    db $eb                                        ; $6b09: $eb
    inc c                                         ; $6b0a: $0c
    rla                                           ; $6b0b: $17
    ld [hl-], a                                   ; $6b0c: $32
    db $fd                                        ; $6b0d: $fd
    ld d, d                                       ; $6b0e: $52
    rst $38                                       ; $6b0f: $ff
    daa                                           ; $6b10: $27
    ld b, a                                       ; $6b11: $47
    nop                                           ; $6b12: $00
    rla                                           ; $6b13: $17
    ld [hl], $fd                                  ; $6b14: $36 $fd
    ld d, d                                       ; $6b16: $52
    rst $38                                       ; $6b17: $ff
    daa                                           ; $6b18: $27
    ld bc, $b40c                                  ; $6b19: $01 $0c $b4
    ld b, h                                       ; $6b1c: $44
    ld e, a                                       ; $6b1d: $5f
    inc bc                                        ; $6b1e: $03
    rst $38                                       ; $6b1f: $ff
    ld a, a                                       ; $6b20: $7f
    ld [bc], a                                    ; $6b21: $02
    nop                                           ; $6b22: $00
    ld a, d                                       ; $6b23: $7a
    add hl, bc                                    ; $6b24: $09
    rst $18                                       ; $6b25: $df
    ld a, [de]                                    ; $6b26: $1a
    rst $18                                       ; $6b27: $df
    dec hl                                        ; $6b28: $2b
    ld b, e                                       ; $6b29: $43
    nop                                           ; $6b2a: $00
    rla                                           ; $6b2b: $17
    ld [hl], $fd                                  ; $6b2c: $36 $fd
    ld d, d                                       ; $6b2e: $52
    ld c, l                                       ; $6b2f: $4d
    dec d                                         ; $6b30: $15
    nop                                           ; $6b31: $00
    nop                                           ; $6b32: $00
    db $fd                                        ; $6b33: $fd
    ld d, d                                       ; $6b34: $52
    ld b, a                                       ; $6b35: $47
    nop                                           ; $6b36: $00
    ld c, l                                       ; $6b37: $4d
    dec d                                         ; $6b38: $15
    ld [bc], a                                    ; $6b39: $02
    nop                                           ; $6b3a: $00
    sub l                                         ; $6b3b: $95
    ld b, b                                       ; $6b3c: $40
    ld e, a                                       ; $6b3d: $5f
    inc bc                                        ; $6b3e: $03
    db $d3                                        ; $6b3f: $d3
    dec l                                         ; $6b40: $2d
    ld [bc], a                                    ; $6b41: $02
    nop                                           ; $6b42: $00
    inc e                                         ; $6b43: $1c
    ld a, [de]                                    ; $6b44: $1a
    sbc [hl]                                      ; $6b45: $9e
    rla                                           ; $6b46: $17
    dec l                                         ; $6b47: $2d
    dec c                                         ; $6b48: $0d
    ld [bc], a                                    ; $6b49: $02
    nop                                           ; $6b4a: $00
    rla                                           ; $6b4b: $17
    ld [hl], $4f                                  ; $6b4c: $36 $4f
    ld hl, $52fd                                  ; $6b4e: $21 $fd $52
    dec h                                         ; $6b51: $25
    nop                                           ; $6b52: $00
    rla                                           ; $6b53: $17
    ld [hl], $fd                                  ; $6b54: $36 $fd
    ld d, d                                       ; $6b56: $52
    ld [hl], d                                    ; $6b57: $72
    dec e                                         ; $6b58: $1d
    ld [bc], a                                    ; $6b59: $02
    inc b                                         ; $6b5a: $04
    push de                                       ; $6b5b: $d5
    ld c, $75                                     ; $6b5c: $0e $75
    inc a                                         ; $6b5e: $3c
    ld e, a                                       ; $6b5f: $5f
    inc bc                                        ; $6b60: $03
    ld [bc], a                                    ; $6b61: $02
    nop                                           ; $6b62: $00
    sbc c                                         ; $6b63: $99
    dec c                                         ; $6b64: $0d
    sbc a                                         ; $6b65: $9f
    rra                                           ; $6b66: $1f
    rst $28                                       ; $6b67: $ef
    inc c                                         ; $6b68: $0c
    ld bc, $4f00                                  ; $6b69: $01 $00 $4f
    ld hl, $3617                                  ; $6b6c: $21 $17 $36
    db $fd                                        ; $6b6f: $fd
    ld d, d                                       ; $6b70: $52
    ld h, $00                                     ; $6b71: $26 $00
    cp h                                          ; $6b73: $bc
    ld c, d                                       ; $6b74: $4a
    ld e, a                                       ; $6b75: $5f
    inc hl                                        ; $6b76: $23
    ld [hl], d                                    ; $6b77: $72
    dec e                                         ; $6b78: $1d
    inc bc                                        ; $6b79: $03
    inc b                                         ; $6b7a: $04
    ld e, a                                       ; $6b7b: $5f
    inc bc                                        ; $6b7c: $03
    ld d, l                                       ; $6b7d: $55
    jr c, jr_0d2_6bfc                             ; $6b7e: $38 $7c

    inc hl                                        ; $6b80: $23
    ld [bc], a                                    ; $6b81: $02
    nop                                           ; $6b82: $00
    reti                                          ; $6b83: $d9


    dec c                                         ; $6b84: $0d
    ccf                                           ; $6b85: $3f
    rla                                           ; $6b86: $17
    ccf                                           ; $6b87: $3f
    dec h                                         ; $6b88: $25
    ld bc, $4f00                                  ; $6b89: $01 $00 $4f
    ld hl, $3617                                  ; $6b8c: $21 $17 $36
    jp c, $2218                                   ; $6b8f: $da $18 $22

    inc b                                         ; $6b92: $04
    rla                                           ; $6b93: $17
    ld [hl], $52                                  ; $6b94: $36 $52
    ld de, $3add                                  ; $6b96: $11 $dd $3a
    inc bc                                        ; $6b99: $03
    inc b                                         ; $6b9a: $04
    ld e, a                                       ; $6b9b: $5f
    inc bc                                        ; $6b9c: $03
    ld d, [hl]                                    ; $6b9d: $56
    inc [hl]                                      ; $6b9e: $34
    sbc $2b                                       ; $6b9f: $de $2b
    ld bc, $5600                                  ; $6ba1: $01 $00 $56
    dec c                                         ; $6ba4: $0d
    rra                                           ; $6ba5: $1f
    rra                                           ; $6ba6: $1f
    jr nc, @+$06                                  ; $6ba7: $30 $04

    ld [bc], a                                    ; $6ba9: $02
    nop                                           ; $6baa: $00

jr_0d2_6bab:
    rst $10                                       ; $6bab: $d7
    jr jr_0d2_6bab                                ; $6bac: $18 $fd

    ld d, d                                       ; $6bae: $52
    or $31                                        ; $6baf: $f6 $31
    ld [bc], a                                    ; $6bb1: $02
    nop                                           ; $6bb2: $00
    sub d                                         ; $6bb3: $92
    ld hl, $2b1f                                  ; $6bb4: $21 $1f $2b
    sbc e                                         ; $6bb7: $9b
    inc d                                         ; $6bb8: $14
    inc h                                         ; $6bb9: $24
    inc b                                         ; $6bba: $04
    ld e, a                                       ; $6bbb: $5f
    inc bc                                        ; $6bbc: $03
    ld [hl], $34                                  ; $6bbd: $36 $34
    ld a, l                                       ; $6bbf: $7d
    daa                                           ; $6bc0: $27
    ld [bc], a                                    ; $6bc1: $02
    nop                                           ; $6bc2: $00
    sub h                                         ; $6bc3: $94
    inc d                                         ; $6bc4: $14
    db $fd                                        ; $6bc5: $fd
    ld a, [bc]                                    ; $6bc6: $0a
    inc a                                         ; $6bc7: $3c
    dec c                                         ; $6bc8: $0d
    ld [bc], a                                    ; $6bc9: $02
    nop                                           ; $6bca: $00
    inc a                                         ; $6bcb: $3c
    dec h                                         ; $6bcc: $25
    db $fd                                        ; $6bcd: $fd
    ld d, d                                       ; $6bce: $52
    rla                                           ; $6bcf: $17
    ld [hl], $24                                  ; $6bd0: $36 $24
    inc b                                         ; $6bd2: $04
    rrca                                          ; $6bd3: $0f
    ld hl, $2a3a                                  ; $6bd4: $21 $3a $2a
    cp b                                          ; $6bd7: $b8
    jr @+$26                                      ; $6bd8: $18 $24

    inc b                                         ; $6bda: $04
    ld e, a                                       ; $6bdb: $5f
    inc bc                                        ; $6bdc: $03
    ld d, h                                       ; $6bdd: $54
    inc l                                         ; $6bde: $2c
    sbc l                                         ; $6bdf: $9d
    daa                                           ; $6be0: $27
    ld [bc], a                                    ; $6be1: $02
    nop                                           ; $6be2: $00
    ld e, e                                       ; $6be3: $5b
    ld bc, $035f                                  ; $6be4: $01 $5f $03
    sbc l                                         ; $6be7: $9d
    daa                                           ; $6be8: $27
    ld e, e                                       ; $6be9: $5b
    ld bc, $035f                                  ; $6bea: $01 $5f $03
    ld e, a                                       ; $6bed: $5f
    inc bc                                        ; $6bee: $03
    sbc l                                         ; $6bef: $9d
    daa                                           ; $6bf0: $27
    ld e, e                                       ; $6bf1: $5b
    ld bc, $035f                                  ; $6bf2: $01 $5f $03
    ld e, a                                       ; $6bf5: $5f
    inc bc                                        ; $6bf6: $03
    sbc l                                         ; $6bf7: $9d
    daa                                           ; $6bf8: $27
    ld [bc], a                                    ; $6bf9: $02
    nop                                           ; $6bfa: $00
    ld e, e                                       ; $6bfb: $5b

jr_0d2_6bfc:
    ld bc, $035f                                  ; $6bfc: $01 $5f $03
    sbc l                                         ; $6bff: $9d
    daa                                           ; $6c00: $27
    ld [bc], a                                    ; $6c01: $02
    nop                                           ; $6c02: $00
    ld e, e                                       ; $6c03: $5b
    ld bc, $0adb                                  ; $6c04: $01 $db $0a
    ld e, a                                       ; $6c07: $5f
    inc bc                                        ; $6c08: $03
    nop                                           ; $6c09: $00
    nop                                           ; $6c0a: $00
    db $db                                        ; $6c0b: $db
    ld a, [bc]                                    ; $6c0c: $0a
    ld e, a                                       ; $6c0d: $5f
    inc bc                                        ; $6c0e: $03
    ld hl, $2104                                  ; $6c0f: $21 $04 $21
    inc b                                         ; $6c12: $04
    db $db                                        ; $6c13: $db
    ld a, [bc]                                    ; $6c14: $0a
    ld e, a                                       ; $6c15: $5f
    inc bc                                        ; $6c16: $03
    add h                                         ; $6c17: $84
    db $10                                        ; $6c18: $10
    ld [bc], a                                    ; $6c19: $02
    nop                                           ; $6c1a: $00
    db $db                                        ; $6c1b: $db
    ld a, [bc]                                    ; $6c1c: $0a
    ld e, a                                       ; $6c1d: $5f
    inc bc                                        ; $6c1e: $03
    add h                                         ; $6c1f: $84
    db $10                                        ; $6c20: $10
    ld bc, $5b00                                  ; $6c21: $01 $00 $5b
    ld bc, $0abb                                  ; $6c24: $01 $bb $0a
    ld e, a                                       ; $6c27: $5f
    inc bc                                        ; $6c28: $03
    ld b, d                                       ; $6c29: $42
    ld [$2529], sp                                ; $6c2a: $08 $29 $25
    db $db                                        ; $6c2d: $db
    ld a, [bc]                                    ; $6c2e: $0a
    rst $28                                       ; $6c2f: $ef
    dec a                                         ; $6c30: $3d
    ld hl, $2904                                  ; $6c31: $21 $04 $29
    dec h                                         ; $6c34: $25
    db $db                                        ; $6c35: $db
    ld a, [bc]                                    ; $6c36: $0a
    rst $28                                       ; $6c37: $ef
    dec a                                         ; $6c38: $3d
    ld bc, $bb00                                  ; $6c39: $01 $00 $bb
    ld a, [bc]                                    ; $6c3c: $0a
    ld e, a                                       ; $6c3d: $5f
    inc bc                                        ; $6c3e: $03
    add h                                         ; $6c3f: $84
    db $10                                        ; $6c40: $10
    ld [bc], a                                    ; $6c41: $02
    nop                                           ; $6c42: $00
    rst $28                                       ; $6c43: $ef
    dec a                                         ; $6c44: $3d
    ld e, e                                       ; $6c45: $5b
    ld bc, $06fc                                  ; $6c46: $01 $fc $06
    nop                                           ; $6c49: $00
    nop                                           ; $6c4a: $00
    add hl, hl                                    ; $6c4b: $29
    dec h                                         ; $6c4c: $25
    rst $28                                       ; $6c4d: $ef
    dec a                                         ; $6c4e: $3d
    add h                                         ; $6c4f: $84
    stop                                          ; $6c50: $10 $00
    nop                                           ; $6c52: $00
    rst $28                                       ; $6c53: $ef
    dec a                                         ; $6c54: $3d
    add hl, hl                                    ; $6c55: $29
    dec h                                         ; $6c56: $25
    add h                                         ; $6c57: $84
    db $10                                        ; $6c58: $10
    ld hl, $1d04                                  ; $6c59: $21 $04 $1d
    inc bc                                        ; $6c5c: $03
    add hl, hl                                    ; $6c5d: $29
    dec h                                         ; $6c5e: $25
    rst $28                                       ; $6c5f: $ef
    dec a                                         ; $6c60: $3d
    ld bc, $ef00                                  ; $6c61: $01 $00 $ef
    dec a                                         ; $6c64: $3d
    ld e, l                                       ; $6c65: $5d
    ld [bc], a                                    ; $6c66: $02
    add $18                                       ; $6c67: $c6 $18
    nop                                           ; $6c69: $00
    nop                                           ; $6c6a: $00
    add hl, hl                                    ; $6c6b: $29
    dec h                                         ; $6c6c: $25
    add h                                         ; $6c6d: $84
    db $10                                        ; $6c6e: $10
    add $18                                       ; $6c6f: $c6 $18
    nop                                           ; $6c71: $00
    nop                                           ; $6c72: $00
    add hl, hl                                    ; $6c73: $29
    dec h                                         ; $6c74: $25
    add h                                         ; $6c75: $84
    db $10                                        ; $6c76: $10
    rst $28                                       ; $6c77: $ef
    dec a                                         ; $6c78: $3d
    ld bc, $ef00                                  ; $6c79: $01 $00 $ef
    dec a                                         ; $6c7c: $3d
    dec e                                         ; $6c7d: $1d
    inc bc                                        ; $6c7e: $03
    add hl, hl                                    ; $6c7f: $29
    dec h                                         ; $6c80: $25
    ld [bc], a                                    ; $6c81: $02
    nop                                           ; $6c82: $00
    ld c, d                                       ; $6c83: $4a
    add hl, hl                                    ; $6c84: $29
    ld e, e                                       ; $6c85: $5b
    ld bc, $035f                                  ; $6c86: $01 $5f $03
    nop                                           ; $6c89: $00
    nop                                           ; $6c8a: $00
    add hl, hl                                    ; $6c8b: $29
    dec h                                         ; $6c8c: $25
    or e                                          ; $6c8d: $b3
    dec l                                         ; $6c8e: $2d
    add hl, sp                                    ; $6c8f: $39
    ld [hl], $00                                  ; $6c90: $36 $00
    nop                                           ; $6c92: $00
    add hl, hl                                    ; $6c93: $29
    dec h                                         ; $6c94: $25
    or e                                          ; $6c95: $b3
    dec l                                         ; $6c96: $2d
    add hl, sp                                    ; $6c97: $39
    ld [hl], $21                                  ; $6c98: $36 $21
    inc b                                         ; $6c9a: $04
    rst $28                                       ; $6c9b: $ef
    dec a                                         ; $6c9c: $3d
    db $fd                                        ; $6c9d: $fd
    ld [bc], a                                    ; $6c9e: $02
    add hl, hl                                    ; $6c9f: $29
    dec h                                         ; $6ca0: $25
    ld bc, $d000                                  ; $6ca1: $01 $00 $d0
    dec [hl]                                      ; $6ca4: $35
    ld e, l                                       ; $6ca5: $5d
    ld [bc], a                                    ; $6ca6: $02
    and l                                         ; $6ca7: $a5
    inc d                                         ; $6ca8: $14
    nop                                           ; $6ca9: $00
    nop                                           ; $6caa: $00
    rla                                           ; $6cab: $17
    ld [hl-], a                                   ; $6cac: $32
    xor c                                         ; $6cad: $a9
    inc b                                         ; $6cae: $04
    inc c                                         ; $6caf: $0c
    ld de, $0000                                  ; $6cb0: $11 $00 $00
    or $31                                        ; $6cb3: $f6 $31
    xor c                                         ; $6cb5: $a9
    inc b                                         ; $6cb6: $04
    inc c                                         ; $6cb7: $0c
    ld de, $0422                                  ; $6cb8: $11 $22 $04
    rst $28                                       ; $6cbb: $ef
    dec a                                         ; $6cbc: $3d
    db $fd                                        ; $6cbd: $fd
    ld [bc], a                                    ; $6cbe: $02
    add hl, hl                                    ; $6cbf: $29
    dec h                                         ; $6cc0: $25
    ld [bc], a                                    ; $6cc1: $02
    nop                                           ; $6cc2: $00
    or c                                          ; $6cc3: $b1
    dec l                                         ; $6cc4: $2d
    ld e, l                                       ; $6cc5: $5d
    ld [bc], a                                    ; $6cc6: $02
    add hl, bc                                    ; $6cc7: $09
    dec e                                         ; $6cc8: $1d
    ld bc, $b300                                  ; $6cc9: $01 $00 $b3
    dec l                                         ; $6ccc: $2d
    add hl, sp                                    ; $6ccd: $39
    ld [hl], $a7                                  ; $6cce: $36 $a7
    inc c                                         ; $6cd0: $0c
    ld [hl+], a                                   ; $6cd1: $22
    inc b                                         ; $6cd2: $04
    or e                                          ; $6cd3: $b3
    dec l                                         ; $6cd4: $2d
    add hl, sp                                    ; $6cd5: $39
    ld [hl], $a7                                  ; $6cd6: $36 $a7
    inc c                                         ; $6cd8: $0c
    ld hl, $f100                                  ; $6cd9: $21 $00 $f1
    add hl, sp                                    ; $6cdc: $39
    ld e, a                                       ; $6cdd: $5f
    inc bc                                        ; $6cde: $03
    ld a, [bc]                                    ; $6cdf: $0a
    dec e                                         ; $6ce0: $1d
    ld [bc], a                                    ; $6ce1: $02
    nop                                           ; $6ce2: $00
    sub d                                         ; $6ce3: $92
    add hl, hl                                    ; $6ce4: $29
    ld e, a                                       ; $6ce5: $5f
    inc bc                                        ; $6ce6: $03
    ld e, e                                       ; $6ce7: $5b
    ld bc, $0061                                  ; $6ce8: $01 $61 $00
    ld l, b                                       ; $6ceb: $68
    rra                                           ; $6cec: $1f
    rla                                           ; $6ced: $17
    ld [hl], $fa                                  ; $6cee: $36 $fa
    ld l, e                                       ; $6cf0: $6b
    ld b, d                                       ; $6cf1: $42
    inc b                                         ; $6cf2: $04
    ld l, b                                       ; $6cf3: $68
    rra                                           ; $6cf4: $1f
    jr c, @+$38                                   ; $6cf5: $38 $36

    ld a, [$016b]                                 ; $6cf7: $fa $6b $01
    nop                                           ; $6cfa: $00
    dec d                                         ; $6cfb: $15
    ld [hl], $2b                                  ; $6cfc: $36 $2b
    ld hl, $035f                                  ; $6cfe: $21 $5f $03
    ld bc, $7500                                  ; $6d01: $01 $00 $75
    dec d                                         ; $6d04: $15
    ld e, a                                       ; $6d05: $5f
    inc bc                                        ; $6d06: $03
    add hl, hl                                    ; $6d07: $29
    dec h                                         ; $6d08: $25
    jr nz, jr_0d2_6d0b                            ; $6d09: $20 $00

jr_0d2_6d0b:
    or e                                          ; $6d0b: $b3
    dec l                                         ; $6d0c: $2d
    ld [$3914], a                                 ; $6d0d: $ea $14 $39
    ld [hl], $21                                  ; $6d10: $36 $21
    nop                                           ; $6d12: $00
    dec l                                         ; $6d13: $2d
    dec e                                         ; $6d14: $1d
    add hl, sp                                    ; $6d15: $39
    ld [hl], $b3                                  ; $6d16: $36 $b3
    dec l                                         ; $6d18: $2d
    ld bc, $3900                                  ; $6d19: $01 $00 $39
    ld [hl], $2b                                  ; $6d1c: $36 $2b
    dec h                                         ; $6d1e: $25
    ld e, a                                       ; $6d1f: $5f
    inc bc                                        ; $6d20: $03
    ld [bc], a                                    ; $6d21: $02
    nop                                           ; $6d22: $00
    rst $28                                       ; $6d23: $ef
    dec a                                         ; $6d24: $3d
    ld a, c                                       ; $6d25: $79
    dec b                                         ; $6d26: $05
    ld e, a                                       ; $6d27: $5f
    inc bc                                        ; $6d28: $03
    dec l                                         ; $6d29: $2d
    dec e                                         ; $6d2a: $1d
    add hl, sp                                    ; $6d2b: $39
    ld [hl], $b3                                  ; $6d2c: $36 $b3
    dec l                                         ; $6d2e: $2d
    ld e, a                                       ; $6d2f: $5f
    inc bc                                        ; $6d30: $03
    ld b, h                                       ; $6d31: $44
    ld [$2db3], sp                                ; $6d32: $08 $b3 $2d
    add hl, sp                                    ; $6d35: $39
    ld [hl], $2d                                  ; $6d36: $36 $2d
    dec e                                         ; $6d38: $1d
    ld hl, $ef04                                  ; $6d39: $21 $04 $ef
    dec a                                         ; $6d3c: $3d
    or a                                          ; $6d3d: $b7
    add hl, bc                                    ; $6d3e: $09
    ld e, a                                       ; $6d3f: $5f
    inc bc                                        ; $6d40: $03
    ld bc, $7700                                  ; $6d41: $01 $00 $77
    dec b                                         ; $6d44: $05
    ld e, a                                       ; $6d45: $5f
    inc bc                                        ; $6d46: $03
    add hl, hl                                    ; $6d47: $29
    dec h                                         ; $6d48: $25
    ld [hl+], a                                   ; $6d49: $22
    inc b                                         ; $6d4a: $04
    add hl, sp                                    ; $6d4b: $39
    ld [hl], $2c                                  ; $6d4c: $36 $2c
    dec e                                         ; $6d4e: $1d
    ld [de], a                                    ; $6d4f: $12
    ld [$0422], sp                                ; $6d50: $08 $22 $04
    sub [hl]                                      ; $6d53: $96
    add hl, bc                                    ; $6d54: $09
    inc l                                         ; $6d55: $2c
    dec e                                         ; $6d56: $1d
    add hl, sp                                    ; $6d57: $39
    ld [hl], $01                                  ; $6d58: $36 $01
    nop                                           ; $6d5a: $00
    rst $28                                       ; $6d5b: $ef
    dec a                                         ; $6d5c: $3d
    ld e, a                                       ; $6d5d: $5f
    inc bc                                        ; $6d5e: $03
    sub [hl]                                      ; $6d5f: $96
    add hl, bc                                    ; $6d60: $09
    ld bc, $7600                                  ; $6d61: $01 $00 $76
    add hl, bc                                    ; $6d64: $09
    ld e, a                                       ; $6d65: $5f
    inc bc                                        ; $6d66: $03
    ld e, e                                       ; $6d67: $5b
    ld bc, $0423                                  ; $6d68: $01 $23 $04
    sub [hl]                                      ; $6d6b: $96
    add hl, bc                                    ; $6d6c: $09
    inc l                                         ; $6d6d: $2c
    dec e                                         ; $6d6e: $1d
    add hl, sp                                    ; $6d6f: $39
    ld [hl], $23                                  ; $6d70: $36 $23
    inc b                                         ; $6d72: $04
    halt                                          ; $6d73: $76
    add hl, bc                                    ; $6d74: $09
    inc l                                         ; $6d75: $2c
    dec e                                         ; $6d76: $1d
    add hl, sp                                    ; $6d77: $39
    ld [hl], $01                                  ; $6d78: $36 $01
    nop                                           ; $6d7a: $00
    halt                                          ; $6d7b: $76
    add hl, bc                                    ; $6d7c: $09
    ld e, a                                       ; $6d7d: $5f
    inc bc                                        ; $6d7e: $03
    add hl, hl                                    ; $6d7f: $29
    dec h                                         ; $6d80: $25
    ld [bc], a                                    ; $6d81: $02
    nop                                           ; $6d82: $00
    inc c                                         ; $6d83: $0c
    add hl, de                                    ; $6d84: $19
    ld e, a                                       ; $6d85: $5f
    inc bc                                        ; $6d86: $03
    ld d, [hl]                                    ; $6d87: $56
    dec b                                         ; $6d88: $05
    ld b, h                                       ; $6d89: $44
    inc b                                         ; $6d8a: $04
    add hl, sp                                    ; $6d8b: $39
    ld [hl], $0c                                  ; $6d8c: $36 $0c
    add hl, de                                    ; $6d8e: $19
    ld l, h                                       ; $6d8f: $6c
    nop                                           ; $6d90: $00
    ld [hl+], a                                   ; $6d91: $22
    inc b                                         ; $6d92: $04
    ld l, $1d                                     ; $6d93: $2e $1d
    xor e                                         ; $6d95: $ab
    inc c                                         ; $6d96: $0c
    add hl, sp                                    ; $6d97: $39
    ld [hl], $02                                  ; $6d98: $36 $02
    nop                                           ; $6d9a: $00
    ld d, l                                       ; $6d9b: $55
    add hl, bc                                    ; $6d9c: $09
    ld e, a                                       ; $6d9d: $5f
    inc bc                                        ; $6d9e: $03
    inc c                                         ; $6d9f: $0c
    add hl, de                                    ; $6da0: $19
    ld [bc], a                                    ; $6da1: $02
    nop                                           ; $6da2: $00
    scf                                           ; $6da3: $37
    dec b                                         ; $6da4: $05
    db $fd                                        ; $6da5: $fd
    ld [de], a                                    ; $6da6: $12
    xor h                                         ; $6da7: $ac
    inc c                                         ; $6da8: $0c
    inc b                                         ; $6da9: $04
    nop                                           ; $6daa: $00
    ld [$6a18], a                                 ; $6dab: $ea $18 $6a
    nop                                           ; $6dae: $00
    ld b, e                                       ; $6daf: $43
    ld [$0003], sp                                ; $6db0: $08 $03 $00
    ld l, h                                       ; $6db3: $6c
    nop                                           ; $6db4: $00
    ld [$4418], a                                 ; $6db5: $ea $18 $44
    ld [$0423], sp                                ; $6db8: $08 $23 $04
    dec [hl]                                      ; $6dbb: $35
    add hl, bc                                    ; $6dbc: $09
    ld e, e                                       ; $6dbd: $5b
    ld a, [hl-]                                   ; $6dbe: $3a
    ld e, a                                       ; $6dbf: $5f
    inc bc                                        ; $6dc0: $03
    ld [bc], a                                    ; $6dc1: $02
    nop                                           ; $6dc2: $00
    sbc c                                         ; $6dc3: $99
    add hl, de                                    ; $6dc4: $19
    ld e, a                                       ; $6dc5: $5f
    inc bc                                        ; $6dc6: $03
    inc c                                         ; $6dc7: $0c
    add hl, de                                    ; $6dc8: $19
    inc hl                                        ; $6dc9: $23
    inc b                                         ; $6dca: $04
    ld [hl], c                                    ; $6dcb: $71
    dec h                                         ; $6dcc: $25
    db $eb                                        ; $6dcd: $eb
    jr jr_0d2_6e09                                ; $6dce: $18 $39

    ld [hl], $23                                  ; $6dd0: $36 $23
    inc b                                         ; $6dd2: $04
    ld [hl], c                                    ; $6dd3: $71
    dec h                                         ; $6dd4: $25
    db $eb                                        ; $6dd5: $eb
    jr jr_0d2_6df0                                ; $6dd6: $18 $18

    ld [hl], $02                                  ; $6dd8: $36 $02
    nop                                           ; $6dda: $00
    halt                                          ; $6ddb: $76
    add hl, de                                    ; $6ddc: $19
    ld e, a                                       ; $6ddd: $5f
    inc bc                                        ; $6dde: $03
    inc c                                         ; $6ddf: $0c
    add hl, de                                    ; $6de0: $19
    ld [bc], a                                    ; $6de1: $02
    nop                                           ; $6de2: $00
    ld e, e                                       ; $6de3: $5b
    ld bc, $035f                                  ; $6de4: $01 $5f $03
    inc c                                         ; $6de7: $0c
    add hl, de                                    ; $6de8: $19
    ld e, e                                       ; $6de9: $5b
    ld bc, $035f                                  ; $6dea: $01 $5f $03
    ld e, a                                       ; $6ded: $5f
    inc bc                                        ; $6dee: $03
    inc c                                         ; $6def: $0c

jr_0d2_6df0:
    add hl, de                                    ; $6df0: $19
    ld e, e                                       ; $6df1: $5b
    ld bc, $035f                                  ; $6df2: $01 $5f $03
    ld e, a                                       ; $6df5: $5f
    inc bc                                        ; $6df6: $03
    inc c                                         ; $6df7: $0c
    add hl, de                                    ; $6df8: $19
    ld [bc], a                                    ; $6df9: $02
    nop                                           ; $6dfa: $00
    ld e, e                                       ; $6dfb: $5b
    ld bc, $035f                                  ; $6dfc: $01 $5f $03
    inc c                                         ; $6dff: $0c
    add hl, de                                    ; $6e00: $19
    ld b, c                                       ; $6e01: $41
    ld d, d                                       ; $6e02: $52
    ld e, e                                       ; $6e03: $5b
    ld bc, $0002                                  ; $6e04: $01 $02 $00
    ld e, a                                       ; $6e07: $5f
    inc bc                                        ; $6e08: $03

jr_0d2_6e09:
    ld b, c                                       ; $6e09: $41
    ld d, d                                       ; $6e0a: $52
    inc e                                         ; $6e0b: $1c
    ld h, $5f                                     ; $6e0c: $26 $5f
    inc bc                                        ; $6e0e: $03
    adc b                                         ; $6e0f: $88
    ld [$0000], sp                                ; $6e10: $08 $00 $00
    ld a, [hl]                                    ; $6e13: $7e
    ld l, $3a                                     ; $6e14: $2e $3a
    dec d                                         ; $6e16: $15
    ld e, a                                       ; $6e17: $5f
    inc bc                                        ; $6e18: $03
    ld b, c                                       ; $6e19: $41
    ld d, d                                       ; $6e1a: $52
    ld [hl], a                                    ; $6e1b: $77
    dec d                                         ; $6e1c: $15
    ld [bc], a                                    ; $6e1d: $02
    nop                                           ; $6e1e: $00
    ld e, a                                       ; $6e1f: $5f
    inc bc                                        ; $6e20: $03
    ld [bc], a                                    ; $6e21: $02
    nop                                           ; $6e22: $00
    ld b, c                                       ; $6e23: $41
    ld d, d                                       ; $6e24: $52
    ld e, a                                       ; $6e25: $5f
    inc bc                                        ; $6e26: $03
    ld e, e                                       ; $6e27: $5b
    ld bc, $0888                                  ; $6e28: $01 $88 $08
    ld a, $22                                     ; $6e2b: $3e $22
    jr c, @+$17                                   ; $6e2d: $38 $15

    cp a                                          ; $6e2f: $bf
    ld [hl-], a                                   ; $6e30: $32
    nop                                           ; $6e31: $00
    nop                                           ; $6e32: $00
    jp c, $be1d                                   ; $6e33: $da $1d $be

    ld b, d                                       ; $6e36: $42
    rst $28                                       ; $6e37: $ef
    ld [$5241], sp                                ; $6e38: $08 $41 $52
    ld [hl], $11                                  ; $6e3b: $36 $11
    rst $38                                       ; $6e3d: $ff
    ld c, $02                                     ; $6e3e: $0e $02
    nop                                           ; $6e40: $00
    ld [bc], a                                    ; $6e41: $02
    nop                                           ; $6e42: $00
    ld hl, $5852                                  ; $6e43: $21 $52 $58
    dec c                                         ; $6e46: $0d
    ld e, a                                       ; $6e47: $5f
    inc bc                                        ; $6e48: $03
    rst $28                                       ; $6e49: $ef
    ld [$223f], sp                                ; $6e4a: $08 $3f $22
    jr c, jr_0d2_6e64                             ; $6e4d: $38 $15

    cp a                                          ; $6e4f: $bf
    ld [hl], $00                                  ; $6e50: $36 $00
    nop                                           ; $6e52: $00
    ld a, a                                       ; $6e53: $7f
    ld [hl], $3a                                  ; $6e54: $36 $3a
    dec d                                         ; $6e56: $15
    rst $28                                       ; $6e57: $ef
    ld [$0468], sp                                ; $6e58: $08 $68 $04
    add hl, sp                                    ; $6e5b: $39
    dec d                                         ; $6e5c: $15
    rst $38                                       ; $6e5d: $ff
    ld c, [hl]                                    ; $6e5e: $4e
    ld e, a                                       ; $6e5f: $5f
    inc bc                                        ; $6e60: $03
    ld bc, $7a4e                                  ; $6e61: $01 $4e $7a

jr_0d2_6e64:
    ld de, $0002                                  ; $6e64: $11 $02 $00
    ld e, a                                       ; $6e67: $5f
    inc bc                                        ; $6e68: $03
    rst $28                                       ; $6e69: $ef
    ld [$2a7f], sp                                ; $6e6a: $08 $7f $2a
    add hl, sp                                    ; $6e6d: $39
    dec d                                         ; $6e6e: $15
    rst $38                                       ; $6e6f: $ff
    ld c, [hl]                                    ; $6e70: $4e
    ld [hl+], a                                   ; $6e71: $22
    ld [$21dd], sp                                ; $6e72: $08 $dd $21
    ldh a, [$08]                                  ; $6e75: $f0 $08
    ld a, d                                       ; $6e77: $7a
    ld b, [hl]                                    ; $6e78: $46
    adc c                                         ; $6e79: $89
    inc b                                         ; $6e7a: $04
    ld e, d                                       ; $6e7b: $5a
    dec d                                         ; $6e7c: $15
    sbc a                                         ; $6e7d: $9f
    ld [hl], $5f                                  ; $6e7e: $36 $5f
    inc bc                                        ; $6e80: $03
    pop hl                                        ; $6e81: $e1
    ld c, l                                       ; $6e82: $4d
    ld e, c                                       ; $6e83: $59
    dec d                                         ; $6e84: $15
    ld [bc], a                                    ; $6e85: $02
    nop                                           ; $6e86: $00
    ld e, a                                       ; $6e87: $5f
    inc bc                                        ; $6e88: $03
    and l                                         ; $6e89: $a5
    jr jr_0d2_6ec4                                ; $6e8a: $18 $38

    dec d                                         ; $6e8c: $15
    ld a, a                                       ; $6e8d: $7f
    ld l, $ef                                     ; $6e8e: $2e $ef
    ld [$0887], sp                                ; $6e90: $08 $87 $08
    ld e, b                                       ; $6e93: $58
    ld b, d                                       ; $6e94: $42
    ld e, a                                       ; $6e95: $5f
    ld h, e                                       ; $6e96: $63
    rst $28                                       ; $6e97: $ef
    ld [$0489], sp                                ; $6e98: $08 $89 $04
    ld d, a                                       ; $6e9b: $57
    dec d                                         ; $6e9c: $15
    ld e, a                                       ; $6e9d: $5f
    inc bc                                        ; $6e9e: $03
    dec a                                         ; $6e9f: $3d
    ld l, $c1                                     ; $6ea0: $2e $c1
    ld c, c                                       ; $6ea2: $49
    jp c, $5f0d                                   ; $6ea3: $da $0d $5f

    ld h, e                                       ; $6ea6: $63
    ld [bc], a                                    ; $6ea7: $02
    nop                                           ; $6ea8: $00
    xor e                                         ; $6ea9: $ab
    ld [$153a], sp                                ; $6eaa: $08 $3a $15
    ld e, b                                       ; $6ead: $58
    ld b, d                                       ; $6eae: $42
    ccf                                           ; $6eaf: $3f
    ld h, $87                                     ; $6eb0: $26 $87
    ld [$4258], sp                                ; $6eb2: $08 $58 $42
    ld e, a                                       ; $6eb5: $5f
    ld h, e                                       ; $6eb6: $63
    rst $38                                       ; $6eb7: $ff
    ld a, a                                       ; $6eb8: $7f
    pop bc                                        ; $6eb9: $c1
    ld c, c                                       ; $6eba: $49
    sbc c                                         ; $6ebb: $99
    ld hl, $0489                                  ; $6ebc: $21 $89 $04
    ld e, a                                       ; $6ebf: $5f
    inc bc                                        ; $6ec0: $03
    ld [bc], a                                    ; $6ec1: $02
    nop                                           ; $6ec2: $00
    inc e                                         ; $6ec3: $1c

jr_0d2_6ec4:
    ld [bc], a                                    ; $6ec4: $02
    add e                                         ; $6ec5: $83
    ld b, c                                       ; $6ec6: $41
    ld e, a                                       ; $6ec7: $5f
    ld h, e                                       ; $6ec8: $63
    ld sp, $9f11                                  ; $6ec9: $31 $11 $9f
    ld l, e                                       ; $6ecc: $6b
    ld e, b                                       ; $6ecd: $58
    ld b, d                                       ; $6ece: $42
    ccf                                           ; $6ecf: $3f
    ld h, $60                                     ; $6ed0: $26 $60
    jr nc, jr_0d2_6f2c                            ; $6ed2: $30 $58

    ld b, d                                       ; $6ed4: $42
    cp a                                          ; $6ed5: $bf
    ld [hl], e                                    ; $6ed6: $73
    ld bc, $a17d                                  ; $6ed7: $01 $7d $a1
    ld c, c                                       ; $6eda: $49
    ld e, a                                       ; $6edb: $5f
    inc bc                                        ; $6edc: $03
    ei                                            ; $6edd: $fb
    ld d, [hl]                                    ; $6ede: $56
    ld h, a                                       ; $6edf: $67
    inc b                                         ; $6ee0: $04
    ld [bc], a                                    ; $6ee1: $02
    nop                                           ; $6ee2: $00
    ld e, l                                       ; $6ee3: $5d
    ld [bc], a                                    ; $6ee4: $02
    ld b, b                                       ; $6ee5: $40
    ld b, l                                       ; $6ee6: $45
    ld d, a                                       ; $6ee7: $57
    ld b, d                                       ; $6ee8: $42
    scf                                           ; $6ee9: $37
    dec d                                         ; $6eea: $15
    ld e, a                                       ; $6eeb: $5f
    ld h, e                                       ; $6eec: $63
    jr c, jr_0d2_6f29                             ; $6eed: $38 $3a

    ccf                                           ; $6eef: $3f
    ld a, [hl+]                                   ; $6ef0: $2a
    ld b, e                                       ; $6ef1: $43
    inc b                                         ; $6ef2: $04
    jr c, jr_0d2_6f2f                             ; $6ef3: $38 $3a

    ld e, a                                       ; $6ef5: $5f
    ld h, e                                       ; $6ef6: $63
    add c                                         ; $6ef7: $81
    ld b, h                                       ; $6ef8: $44
    ld h, b                                       ; $6ef9: $60
    ld c, c                                       ; $6efa: $49
    ld e, a                                       ; $6efb: $5f
    inc bc                                        ; $6efc: $03
    inc e                                         ; $6efd: $1c
    ld e, e                                       ; $6efe: $5b
    ld h, a                                       ; $6eff: $67
    ld [$4520], sp                                ; $6f00: $08 $20 $45
    ld a, [hl-]                                   ; $6f03: $3a
    add hl, bc                                    ; $6f04: $09
    ld [bc], a                                    ; $6f05: $02
    nop                                           ; $6f06: $00
    cp l                                          ; $6f07: $bd
    ld e, $cb                                     ; $6f08: $1e $cb
    db $10                                        ; $6f0a: $10
    ld e, a                                       ; $6f0b: $5f
    ld h, e                                       ; $6f0c: $63
    ld e, b                                       ; $6f0d: $58
    ld b, d                                       ; $6f0e: $42
    cp a                                          ; $6f0f: $bf
    ld [hl-], a                                   ; $6f10: $32
    add a                                         ; $6f11: $87
    inc c                                         ; $6f12: $0c
    ld e, b                                       ; $6f13: $58
    ld b, d                                       ; $6f14: $42
    ld e, a                                       ; $6f15: $5f
    ld h, e                                       ; $6f16: $63
    cp a                                          ; $6f17: $bf
    ld [hl-], a                                   ; $6f18: $32
    ld b, b                                       ; $6f19: $40
    ld b, l                                       ; $6f1a: $45
    sbc l                                         ; $6f1b: $9d
    ld b, $db                                     ; $6f1c: $06 $db
    ld d, d                                       ; $6f1e: $52
    adc b                                         ; $6f1f: $88
    inc c                                         ; $6f20: $0c
    ldh [rLCDC], a                                ; $6f21: $e0 $40
    ld e, b                                       ; $6f23: $58
    dec c                                         ; $6f24: $0d
    ld [bc], a                                    ; $6f25: $02
    nop                                           ; $6f26: $00
    cp a                                          ; $6f27: $bf
    ld [de], a                                    ; $6f28: $12

jr_0d2_6f29:
    rl b                                          ; $6f29: $cb $10
    ld e, b                                       ; $6f2b: $58

jr_0d2_6f2c:
    ld b, d                                       ; $6f2c: $42
    ld e, a                                       ; $6f2d: $5f
    ld h, e                                       ; $6f2e: $63

jr_0d2_6f2f:
    cp a                                          ; $6f2f: $bf
    ld [de], a                                    ; $6f30: $12
    ld e, a                                       ; $6f31: $5f
    ld h, e                                       ; $6f32: $63
    ld e, b                                       ; $6f33: $58
    ld b, d                                       ; $6f34: $42
    ld e, a                                       ; $6f35: $5f
    ld h, e                                       ; $6f36: $63
    cp a                                          ; $6f37: $bf
    ld [de], a                                    ; $6f38: $12
    ld h, a                                       ; $6f39: $67
    ld [$153a], sp                                ; $6f3a: $08 $3a $15
    ld e, a                                       ; $6f3d: $5f
    inc bc                                        ; $6f3e: $03
    sbc l                                         ; $6f3f: $9d
    ld [hl], $c0                                  ; $6f40: $36 $c0
    ld b, b                                       ; $6f42: $40
    scf                                           ; $6f43: $37
    dec b                                         ; $6f44: $05
    ld [bc], a                                    ; $6f45: $02
    nop                                           ; $6f46: $00
    rra                                           ; $6f47: $1f
    inc de                                        ; $6f48: $13
    add a                                         ; $6f49: $87
    ld [$4258], sp                                ; $6f4a: $08 $58 $42
    ld e, a                                       ; $6f4d: $5f
    ld h, e                                       ; $6f4e: $63
    rl b                                          ; $6f4f: $cb $10
    rl b                                          ; $6f51: $cb $10
    ld e, b                                       ; $6f53: $58
    ld b, d                                       ; $6f54: $42
    ld e, a                                       ; $6f55: $5f
    ld h, e                                       ; $6f56: $63
    rl b                                          ; $6f57: $cb $10
    ld h, [hl]                                    ; $6f59: $66
    inc b                                         ; $6f5a: $04
    jr c, jr_0d2_6f72                             ; $6f5b: $38 $15

    sbc a                                         ; $6f5d: $9f
    ld l, $5f                                     ; $6f5e: $2e $5f
    inc bc                                        ; $6f60: $03
    ld [bc], a                                    ; $6f61: $02
    nop                                           ; $6f62: $00
    ld e, e                                       ; $6f63: $5b
    ld bc, $4080                                  ; $6f64: $01 $80 $40
    ld e, a                                       ; $6f67: $5f
    inc bc                                        ; $6f68: $03
    ret                                           ; $6f69: $c9


    jr jr_0d2_6fc4                                ; $6f6a: $18 $58

    ld b, d                                       ; $6f6c: $42
    ld e, a                                       ; $6f6d: $5f
    ld h, e                                       ; $6f6e: $63
    rl b                                          ; $6f6f: $cb $10
    adc c                                         ; $6f71: $89

jr_0d2_6f72:
    inc c                                         ; $6f72: $0c
    ld e, b                                       ; $6f73: $58
    ld b, d                                       ; $6f74: $42
    db $d3                                        ; $6f75: $d3
    inc c                                         ; $6f76: $0c
    ld e, a                                       ; $6f77: $5f
    ld h, e                                       ; $6f78: $63
    add b                                         ; $6f79: $80
    inc a                                         ; $6f7a: $3c
    ld d, a                                       ; $6f7b: $57
    dec d                                         ; $6f7c: $15
    ld h, [hl]                                    ; $6f7d: $66
    inc b                                         ; $6f7e: $04
    ld e, a                                       ; $6f7f: $5f
    inc bc                                        ; $6f80: $03
    ld bc, $7800                                  ; $6f81: $01 $00 $78
    dec c                                         ; $6f84: $0d
    ld h, b                                       ; $6f85: $60
    inc a                                         ; $6f86: $3c
    ld e, a                                       ; $6f87: $5f
    inc bc                                        ; $6f88: $03
    rl b                                          ; $6f89: $cb $10
    ld e, b                                       ; $6f8b: $58
    ld b, d                                       ; $6f8c: $42
    ld e, a                                       ; $6f8d: $5f
    ld h, e                                       ; $6f8e: $63
    ld e, a                                       ; $6f8f: $5f
    inc bc                                        ; $6f90: $03
    xor c                                         ; $6f91: $a9
    inc c                                         ; $6f92: $0c
    ld e, b                                       ; $6f93: $58
    ld b, d                                       ; $6f94: $42
    sub a                                         ; $6f95: $97
    add hl, de                                    ; $6f96: $19
    ld e, a                                       ; $6f97: $5f
    ld h, e                                       ; $6f98: $63
    ld h, b                                       ; $6f99: $60
    inc a                                         ; $6f9a: $3c
    sub a                                         ; $6f9b: $97
    add hl, de                                    ; $6f9c: $19
    ld [bc], a                                    ; $6f9d: $02
    nop                                           ; $6f9e: $00
    ld e, a                                       ; $6f9f: $5f
    inc bc                                        ; $6fa0: $03
    ld bc, $ef00                                  ; $6fa1: $01 $00 $ef
    inc c                                         ; $6fa4: $0c
    ld e, a                                       ; $6fa5: $5f
    inc bc                                        ; $6fa6: $03
    ld a, b                                       ; $6fa7: $78
    dec c                                         ; $6fa8: $0d
    nop                                           ; $6fa9: $00
    nop                                           ; $6faa: $00
    ld e, b                                       ; $6fab: $58
    ld b, d                                       ; $6fac: $42
    ld e, a                                       ; $6fad: $5f
    ld h, e                                       ; $6fae: $63
    rl b                                          ; $6faf: $cb $10
    ld bc, $5800                                  ; $6fb1: $01 $00 $58
    ld b, d                                       ; $6fb4: $42
    call z, Call_0d2_5f0c                         ; $6fb5: $cc $0c $5f
    ld h, e                                       ; $6fb8: $63
    ld b, b                                       ; $6fb9: $40
    jr c, jr_0d2_7031                             ; $6fba: $38 $75

    dec d                                         ; $6fbc: $15
    ld e, a                                       ; $6fbd: $5f
    inc bc                                        ; $6fbe: $03
    ld [bc], a                                    ; $6fbf: $02
    nop                                           ; $6fc0: $00
    ld [bc], a                                    ; $6fc1: $02
    nop                                           ; $6fc2: $00
    rst $28                                       ; $6fc3: $ef

jr_0d2_6fc4:
    inc c                                         ; $6fc4: $0c
    ld e, a                                       ; $6fc5: $5f
    inc bc                                        ; $6fc6: $03
    ld e, b                                       ; $6fc7: $58
    add hl, bc                                    ; $6fc8: $09
    nop                                           ; $6fc9: $00
    nop                                           ; $6fca: $00
    ld e, b                                       ; $6fcb: $58
    ld b, d                                       ; $6fcc: $42
    ld d, h                                       ; $6fcd: $54
    dec d                                         ; $6fce: $15
    ld e, a                                       ; $6fcf: $5f
    ld h, e                                       ; $6fd0: $63
    ld bc, $5800                                  ; $6fd1: $01 $00 $58
    ld b, d                                       ; $6fd4: $42
    ld e, a                                       ; $6fd5: $5f
    ld h, e                                       ; $6fd6: $63
    rst $28                                       ; $6fd7: $ef
    inc c                                         ; $6fd8: $0c
    ld b, b                                       ; $6fd9: $40
    inc a                                         ; $6fda: $3c
    inc sp                                        ; $6fdb: $33
    ld de, $035f                                  ; $6fdc: $11 $5f $03
    ld [bc], a                                    ; $6fdf: $02
    nop                                           ; $6fe0: $00
    ld [bc], a                                    ; $6fe1: $02
    nop                                           ; $6fe2: $00
    ld e, e                                       ; $6fe3: $5b
    ld bc, $035f                                  ; $6fe4: $01 $5f $03
    ld [bc], a                                    ; $6fe7: $02
    nop                                           ; $6fe8: $00
    ld e, e                                       ; $6fe9: $5b
    ld bc, $035f                                  ; $6fea: $01 $5f $03
    ld e, a                                       ; $6fed: $5f
    inc bc                                        ; $6fee: $03
    ld [bc], a                                    ; $6fef: $02
    nop                                           ; $6ff0: $00
    ld e, e                                       ; $6ff1: $5b
    ld bc, $035f                                  ; $6ff2: $01 $5f $03
    ld e, a                                       ; $6ff5: $5f
    inc bc                                        ; $6ff6: $03
    ld [bc], a                                    ; $6ff7: $02
    nop                                           ; $6ff8: $00
    ld [bc], a                                    ; $6ff9: $02
    nop                                           ; $6ffa: $00
    ld e, e                                       ; $6ffb: $5b
    ld bc, $035f                                  ; $6ffc: $01 $5f $03
    ld [bc], a                                    ; $6fff: $02
    nop                                           ; $7000: $00
    ld b, c                                       ; $7001: $41
    ld d, d                                       ; $7002: $52
    ld e, e                                       ; $7003: $5b
    ld bc, $0002                                  ; $7004: $01 $02 $00
    ld e, a                                       ; $7007: $5f
    inc bc                                        ; $7008: $03
    ld b, c                                       ; $7009: $41
    ld d, d                                       ; $700a: $52
    inc e                                         ; $700b: $1c
    ld h, $5f                                     ; $700c: $26 $5f
    inc bc                                        ; $700e: $03
    adc b                                         ; $700f: $88
    ld [$0000], sp                                ; $7010: $08 $00 $00
    ld a, [hl]                                    ; $7013: $7e
    ld l, $3a                                     ; $7014: $2e $3a
    dec d                                         ; $7016: $15
    ld e, a                                       ; $7017: $5f
    inc bc                                        ; $7018: $03
    ld b, c                                       ; $7019: $41
    ld d, d                                       ; $701a: $52
    ld [hl], a                                    ; $701b: $77
    dec d                                         ; $701c: $15
    ld [bc], a                                    ; $701d: $02
    nop                                           ; $701e: $00
    ld e, a                                       ; $701f: $5f
    inc bc                                        ; $7020: $03
    ld [bc], a                                    ; $7021: $02
    nop                                           ; $7022: $00
    ld b, c                                       ; $7023: $41
    ld d, d                                       ; $7024: $52
    ld e, a                                       ; $7025: $5f
    inc bc                                        ; $7026: $03
    ld e, e                                       ; $7027: $5b
    ld bc, $0888                                  ; $7028: $01 $88 $08
    ld a, $22                                     ; $702b: $3e $22
    jr c, @+$17                                   ; $702d: $38 $15

    cp a                                          ; $702f: $bf
    ld [hl-], a                                   ; $7030: $32

jr_0d2_7031:
    nop                                           ; $7031: $00
    nop                                           ; $7032: $00
    jp c, $be1d                                   ; $7033: $da $1d $be

    ld b, d                                       ; $7036: $42
    rst $28                                       ; $7037: $ef
    ld [$5241], sp                                ; $7038: $08 $41 $52
    ld [hl], $11                                  ; $703b: $36 $11
    rst $38                                       ; $703d: $ff
    ld c, $02                                     ; $703e: $0e $02
    nop                                           ; $7040: $00
    ld [bc], a                                    ; $7041: $02
    nop                                           ; $7042: $00
    ld hl, $5852                                  ; $7043: $21 $52 $58
    dec c                                         ; $7046: $0d
    ld e, a                                       ; $7047: $5f
    inc bc                                        ; $7048: $03
    rst $28                                       ; $7049: $ef
    ld [$223f], sp                                ; $704a: $08 $3f $22
    jr c, jr_0d2_7064                             ; $704d: $38 $15

    cp a                                          ; $704f: $bf
    ld [hl], $00                                  ; $7050: $36 $00
    nop                                           ; $7052: $00
    ld a, a                                       ; $7053: $7f
    ld [hl], $3a                                  ; $7054: $36 $3a
    dec d                                         ; $7056: $15
    rst $28                                       ; $7057: $ef
    ld [$0468], sp                                ; $7058: $08 $68 $04
    add hl, sp                                    ; $705b: $39
    dec d                                         ; $705c: $15
    rst $38                                       ; $705d: $ff
    ld c, [hl]                                    ; $705e: $4e
    ld e, a                                       ; $705f: $5f
    inc bc                                        ; $7060: $03
    ld bc, $7a4e                                  ; $7061: $01 $4e $7a

jr_0d2_7064:
    ld de, $0002                                  ; $7064: $11 $02 $00
    ld e, a                                       ; $7067: $5f
    inc bc                                        ; $7068: $03
    rst $28                                       ; $7069: $ef
    ld [$2a7f], sp                                ; $706a: $08 $7f $2a
    add hl, sp                                    ; $706d: $39
    dec d                                         ; $706e: $15
    rst $38                                       ; $706f: $ff
    ld c, [hl]                                    ; $7070: $4e
    ld [hl+], a                                   ; $7071: $22
    ld [$21dd], sp                                ; $7072: $08 $dd $21
    ldh a, [$08]                                  ; $7075: $f0 $08
    ld a, d                                       ; $7077: $7a
    ld b, [hl]                                    ; $7078: $46
    adc c                                         ; $7079: $89
    inc b                                         ; $707a: $04
    ld e, d                                       ; $707b: $5a
    dec d                                         ; $707c: $15
    sbc a                                         ; $707d: $9f
    ld [hl], $5f                                  ; $707e: $36 $5f
    inc bc                                        ; $7080: $03
    pop hl                                        ; $7081: $e1
    ld c, l                                       ; $7082: $4d
    ld e, c                                       ; $7083: $59
    dec d                                         ; $7084: $15
    ld [bc], a                                    ; $7085: $02
    nop                                           ; $7086: $00
    ld e, a                                       ; $7087: $5f
    inc bc                                        ; $7088: $03
    xor $08                                       ; $7089: $ee $08
    ld e, a                                       ; $708b: $5f
    ld l, $58                                     ; $708c: $2e $58
    dec d                                         ; $708e: $15
    rst $38                                       ; $708f: $ff
    ld c, [hl]                                    ; $7090: $4e
    add a                                         ; $7091: $87
    ld [$4258], sp                                ; $7092: $08 $58 $42
    ld e, a                                       ; $7095: $5f
    ld h, e                                       ; $7096: $63
    rst $38                                       ; $7097: $ff
    ld c, [hl]                                    ; $7098: $4e
    ld [bc], a                                    ; $7099: $02
    nop                                           ; $709a: $00
    ld a, b                                       ; $709b: $78
    dec d                                         ; $709c: $15
    cp a                                          ; $709d: $bf
    ld a, [de]                                    ; $709e: $1a
    rst $28                                       ; $709f: $ef
    ld [$49c1], sp                                ; $70a0: $08 $c1 $49
    jp c, $5f0d                                   ; $70a3: $da $0d $5f

    ld h, e                                       ; $70a6: $63
    ld [bc], a                                    ; $70a7: $02
    nop                                           ; $70a8: $00
    xor d                                         ; $70a9: $aa
    ld [$365c], sp                                ; $70aa: $08 $5c $36
    ld a, [hl-]                                   ; $70ad: $3a
    dec d                                         ; $70ae: $15
    rst $38                                       ; $70af: $ff
    ld a, a                                       ; $70b0: $7f
    add a                                         ; $70b1: $87
    ld [$4258], sp                                ; $70b2: $08 $58 $42
    ld e, a                                       ; $70b5: $5f
    ld h, e                                       ; $70b6: $63
    rst $38                                       ; $70b7: $ff
    ld a, a                                       ; $70b8: $7f
    pop bc                                        ; $70b9: $c1
    ld c, c                                       ; $70ba: $49
    ld a, d                                       ; $70bb: $7a
    add hl, de                                    ; $70bc: $19
    adc c                                         ; $70bd: $89
    inc b                                         ; $70be: $04
    ld e, a                                       ; $70bf: $5f
    inc bc                                        ; $70c0: $03
    ld [bc], a                                    ; $70c1: $02
    nop                                           ; $70c2: $00
    inc e                                         ; $70c3: $1c
    ld [bc], a                                    ; $70c4: $02
    add e                                         ; $70c5: $83
    ld b, c                                       ; $70c6: $41
    ld e, a                                       ; $70c7: $5f
    ld h, e                                       ; $70c8: $63
    ld [hl-], a                                   ; $70c9: $32
    ld de, $73bf                                  ; $70ca: $11 $bf $73
    jr c, jr_0d2_710d                             ; $70cd: $38 $3e

    ld e, a                                       ; $70cf: $5f
    ld h, $60                                     ; $70d0: $26 $60
    jr nc, jr_0d2_712c                            ; $70d2: $30 $58

    ld b, d                                       ; $70d4: $42
    cp a                                          ; $70d5: $bf
    ld [hl], e                                    ; $70d6: $73
    ld bc, $a17d                                  ; $70d7: $01 $7d $a1
    ld c, c                                       ; $70da: $49
    ld e, a                                       ; $70db: $5f
    inc bc                                        ; $70dc: $03
    inc e                                         ; $70dd: $1c
    ld e, e                                       ; $70de: $5b
    ld h, a                                       ; $70df: $67
    inc b                                         ; $70e0: $04
    ld [bc], a                                    ; $70e1: $02
    nop                                           ; $70e2: $00
    ld e, l                                       ; $70e3: $5d
    ld [bc], a                                    ; $70e4: $02
    ld b, b                                       ; $70e5: $40
    ld b, l                                       ; $70e6: $45
    ld d, a                                       ; $70e7: $57
    ld b, d                                       ; $70e8: $42
    scf                                           ; $70e9: $37
    dec d                                         ; $70ea: $15
    ld e, a                                       ; $70eb: $5f
    ld h, e                                       ; $70ec: $63
    jr c, @+$3c                                   ; $70ed: $38 $3a

    ccf                                           ; $70ef: $3f
    ld a, [hl+]                                   ; $70f0: $2a
    ld b, e                                       ; $70f1: $43
    inc b                                         ; $70f2: $04
    jr c, jr_0d2_712f                             ; $70f3: $38 $3a

    ld e, a                                       ; $70f5: $5f
    ld h, e                                       ; $70f6: $63
    add c                                         ; $70f7: $81
    ld b, h                                       ; $70f8: $44
    ld h, b                                       ; $70f9: $60
    ld c, c                                       ; $70fa: $49
    ld e, a                                       ; $70fb: $5f
    inc bc                                        ; $70fc: $03
    inc e                                         ; $70fd: $1c
    ld e, e                                       ; $70fe: $5b
    ld h, a                                       ; $70ff: $67
    ld [$0002], sp                                ; $7100: $08 $02 $00
    ld a, [hl-]                                   ; $7103: $3a
    dec c                                         ; $7104: $0d
    cp l                                          ; $7105: $bd
    ld e, $a7                                     ; $7106: $1e $a7
    inc d                                         ; $7108: $14
    rl b                                          ; $7109: $cb $10
    ld e, a                                       ; $710b: $5f
    ld h, e                                       ; $710c: $63

jr_0d2_710d:
    ld e, b                                       ; $710d: $58
    ld b, d                                       ; $710e: $42
    cp a                                          ; $710f: $bf
    ld [hl-], a                                   ; $7110: $32
    add a                                         ; $7111: $87
    inc c                                         ; $7112: $0c
    ld e, b                                       ; $7113: $58
    ld b, d                                       ; $7114: $42
    ld e, a                                       ; $7115: $5f
    ld h, e                                       ; $7116: $63
    cp a                                          ; $7117: $bf
    ld [hl-], a                                   ; $7118: $32
    jr nz, jr_0d2_7160                            ; $7119: $20 $45

    ld e, a                                       ; $711b: $5f
    inc bc                                        ; $711c: $03
    adc b                                         ; $711d: $88
    inc c                                         ; $711e: $0c
    db $db                                        ; $711f: $db
    ld d, d                                       ; $7120: $52
    ld [bc], a                                    ; $7121: $02
    nop                                           ; $7122: $00
    ld e, b                                       ; $7123: $58
    dec c                                         ; $7124: $0d
    sbc a                                         ; $7125: $9f
    ld d, $88                                     ; $7126: $16 $88
    ld [$10cb], sp                                ; $7128: $08 $cb $10
    ld e, b                                       ; $712b: $58

jr_0d2_712c:
    ld b, d                                       ; $712c: $42
    ld e, a                                       ; $712d: $5f
    ld h, e                                       ; $712e: $63

jr_0d2_712f:
    adc b                                         ; $712f: $88
    ld [$635f], sp                                ; $7130: $08 $5f $63
    ld e, b                                       ; $7133: $58
    ld b, d                                       ; $7134: $42
    ld e, a                                       ; $7135: $5f
    ld h, e                                       ; $7136: $63
    adc b                                         ; $7137: $88
    ld [$4520], sp                                ; $7138: $08 $20 $45
    ld e, h                                       ; $713b: $5c
    ld l, $67                                     ; $713c: $2e $67
    ld [$035f], sp                                ; $713e: $08 $5f $03
    ret nz                                        ; $7141: $c0

    ld b, b                                       ; $7142: $40
    scf                                           ; $7143: $37
    dec b                                         ; $7144: $05
    ld [bc], a                                    ; $7145: $02
    nop                                           ; $7146: $00
    rra                                           ; $7147: $1f
    inc de                                        ; $7148: $13
    add a                                         ; $7149: $87
    ld [$4258], sp                                ; $714a: $08 $58 $42
    ld e, a                                       ; $714d: $5f
    ld h, e                                       ; $714e: $63
    rl b                                          ; $714f: $cb $10
    rl b                                          ; $7151: $cb $10
    ld e, b                                       ; $7153: $58
    ld b, d                                       ; $7154: $42
    ld e, a                                       ; $7155: $5f
    ld h, e                                       ; $7156: $63
    rl b                                          ; $7157: $cb $10
    jr nz, jr_0d2_71a0                            ; $7159: $20 $45

    jr c, jr_0d2_7172                             ; $715b: $38 $15

    ld h, [hl]                                    ; $715d: $66
    inc b                                         ; $715e: $04
    rst $18                                       ; $715f: $df

jr_0d2_7160:
    ld d, $02                                     ; $7160: $16 $02
    nop                                           ; $7162: $00
    ld e, e                                       ; $7163: $5b
    ld bc, $4080                                  ; $7164: $01 $80 $40
    ld e, a                                       ; $7167: $5f
    inc bc                                        ; $7168: $03
    ret                                           ; $7169: $c9


    jr jr_0d2_71c4                                ; $716a: $18 $58

    ld b, d                                       ; $716c: $42
    ld e, a                                       ; $716d: $5f
    ld h, e                                       ; $716e: $63
    rl b                                          ; $716f: $cb $10
    adc b                                         ; $7171: $88

jr_0d2_7172:
    ld [$4258], sp                                ; $7172: $08 $58 $42
    ld e, a                                       ; $7175: $5f
    ld h, e                                       ; $7176: $63
    ld [hl], l                                    ; $7177: $75
    dec d                                         ; $7178: $15
    add b                                         ; $7179: $80
    ld b, b                                       ; $717a: $40
    ld e, a                                       ; $717b: $5f
    inc bc                                        ; $717c: $03
    ld [bc], a                                    ; $717d: $02
    nop                                           ; $717e: $00
    adc b                                         ; $717f: $88
    ld [$0001], sp                                ; $7180: $08 $01 $00
    ld a, b                                       ; $7183: $78
    dec c                                         ; $7184: $0d
    ld h, b                                       ; $7185: $60
    inc a                                         ; $7186: $3c
    ld e, a                                       ; $7187: $5f
    inc bc                                        ; $7188: $03
    rl b                                          ; $7189: $cb $10
    ld e, b                                       ; $718b: $58
    ld b, d                                       ; $718c: $42
    ld e, a                                       ; $718d: $5f
    ld h, e                                       ; $718e: $63
    ld e, a                                       ; $718f: $5f
    inc bc                                        ; $7190: $03
    xor c                                         ; $7191: $a9
    inc c                                         ; $7192: $0c
    ld e, b                                       ; $7193: $58
    ld b, d                                       ; $7194: $42
    sub a                                         ; $7195: $97
    add hl, de                                    ; $7196: $19
    ld e, a                                       ; $7197: $5f
    ld h, e                                       ; $7198: $63
    ld h, b                                       ; $7199: $60
    inc a                                         ; $719a: $3c
    sub a                                         ; $719b: $97
    add hl, de                                    ; $719c: $19
    ld [bc], a                                    ; $719d: $02
    nop                                           ; $719e: $00
    ld e, a                                       ; $719f: $5f

jr_0d2_71a0:
    inc bc                                        ; $71a0: $03
    ld bc, $ef00                                  ; $71a1: $01 $00 $ef
    inc c                                         ; $71a4: $0c
    ld e, a                                       ; $71a5: $5f
    inc bc                                        ; $71a6: $03
    ld a, b                                       ; $71a7: $78
    dec c                                         ; $71a8: $0d
    nop                                           ; $71a9: $00
    nop                                           ; $71aa: $00
    ld e, b                                       ; $71ab: $58
    ld b, d                                       ; $71ac: $42
    ld e, a                                       ; $71ad: $5f
    ld h, e                                       ; $71ae: $63
    rl b                                          ; $71af: $cb $10
    ld bc, $5800                                  ; $71b1: $01 $00 $58
    ld b, d                                       ; $71b4: $42
    call z, Call_0d2_5f0c                         ; $71b5: $cc $0c $5f
    ld h, e                                       ; $71b8: $63
    ld b, b                                       ; $71b9: $40
    jr c, jr_0d2_7231                             ; $71ba: $38 $75

    dec d                                         ; $71bc: $15
    ld e, a                                       ; $71bd: $5f
    inc bc                                        ; $71be: $03
    ld [bc], a                                    ; $71bf: $02
    nop                                           ; $71c0: $00
    ld [bc], a                                    ; $71c1: $02
    nop                                           ; $71c2: $00
    rst $28                                       ; $71c3: $ef

jr_0d2_71c4:
    inc c                                         ; $71c4: $0c
    ld e, a                                       ; $71c5: $5f
    inc bc                                        ; $71c6: $03
    ld e, b                                       ; $71c7: $58
    add hl, bc                                    ; $71c8: $09
    nop                                           ; $71c9: $00
    nop                                           ; $71ca: $00
    ld e, b                                       ; $71cb: $58
    ld b, d                                       ; $71cc: $42
    ld d, h                                       ; $71cd: $54
    dec d                                         ; $71ce: $15
    ld e, a                                       ; $71cf: $5f
    ld h, e                                       ; $71d0: $63
    ld bc, $5800                                  ; $71d1: $01 $00 $58
    ld b, d                                       ; $71d4: $42
    ld e, a                                       ; $71d5: $5f
    ld h, e                                       ; $71d6: $63
    rst $28                                       ; $71d7: $ef
    inc c                                         ; $71d8: $0c
    ld b, b                                       ; $71d9: $40
    inc a                                         ; $71da: $3c
    inc sp                                        ; $71db: $33
    ld de, $035f                                  ; $71dc: $11 $5f $03
    ld [bc], a                                    ; $71df: $02
    nop                                           ; $71e0: $00
    ld [bc], a                                    ; $71e1: $02
    nop                                           ; $71e2: $00
    ld e, e                                       ; $71e3: $5b
    ld bc, $035f                                  ; $71e4: $01 $5f $03
    ld [bc], a                                    ; $71e7: $02
    nop                                           ; $71e8: $00
    ld e, e                                       ; $71e9: $5b
    ld bc, $035f                                  ; $71ea: $01 $5f $03
    ld e, a                                       ; $71ed: $5f
    inc bc                                        ; $71ee: $03
    ld [bc], a                                    ; $71ef: $02
    nop                                           ; $71f0: $00
    ld e, e                                       ; $71f1: $5b
    ld bc, $035f                                  ; $71f2: $01 $5f $03
    ld e, a                                       ; $71f5: $5f
    inc bc                                        ; $71f6: $03
    ld [bc], a                                    ; $71f7: $02
    nop                                           ; $71f8: $00
    ld [bc], a                                    ; $71f9: $02
    nop                                           ; $71fa: $00
    ld e, e                                       ; $71fb: $5b
    ld bc, $035f                                  ; $71fc: $01 $5f $03
    ld [bc], a                                    ; $71ff: $02
    nop                                           ; $7200: $00
    ld [bc], a                                    ; $7201: $02
    nop                                           ; $7202: $00
    db $dd                                        ; $7203: $dd
    dec c                                         ; $7204: $0d
    ld e, a                                       ; $7205: $5f
    inc bc                                        ; $7206: $03
    xor d                                         ; $7207: $aa
    ld [$14c9], sp                                ; $7208: $08 $c9 $14
    ld e, a                                       ; $720b: $5f
    inc bc                                        ; $720c: $03
    sub b                                         ; $720d: $90
    ld sp, $210c                                  ; $720e: $31 $0c $21
    and [hl]                                      ; $7211: $a6
    inc d                                         ; $7212: $14
    ld e, a                                       ; $7213: $5f
    inc bc                                        ; $7214: $03
    ld d, a                                       ; $7215: $57
    ld b, [hl]                                    ; $7216: $46
    ld [$2318], a                                 ; $7217: $ea $18 $23
    inc b                                         ; $721a: $04
    ld e, $16                                     ; $721b: $1e $16
    ld e, a                                       ; $721d: $5f
    inc bc                                        ; $721e: $03
    rst $08                                       ; $721f: $cf
    nop                                           ; $7220: $00
    ld [bc], a                                    ; $7221: $02
    nop                                           ; $7222: $00
    db $dd                                        ; $7223: $dd
    dec c                                         ; $7224: $0d
    db $fc                                        ; $7225: $fc
    ld e, [hl]                                    ; $7226: $5e
    ld e, a                                       ; $7227: $5f
    inc bc                                        ; $7228: $03
    and [hl]                                      ; $7229: $a6
    inc d                                         ; $722a: $14
    inc [hl]                                      ; $722b: $34
    ld b, [hl]                                    ; $722c: $46
    ei                                            ; $722d: $fb
    ld e, [hl]                                    ; $722e: $5e
    ld c, h                                       ; $722f: $4c
    add hl, hl                                    ; $7230: $29

jr_0d2_7231:
    ld a, [bc]                                    ; $7231: $0a
    ld hl, $4e77                                  ; $7232: $21 $77 $4e
    or b                                          ; $7235: $b0
    dec [hl]                                      ; $7236: $35
    dec de                                        ; $7237: $1b
    ld h, e                                       ; $7238: $63
    ld [bc], a                                    ; $7239: $02
    nop                                           ; $723a: $00
    sbc b                                         ; $723b: $98
    ld d, d                                       ; $723c: $52
    ld e, [hl]                                    ; $723d: $5e
    ld c, $c9                                     ; $723e: $0e $c9
    db $10                                        ; $7240: $10
    ld [bc], a                                    ; $7241: $02
    nop                                           ; $7242: $00
    sub b                                         ; $7243: $90
    ld sp, $0a3d                                  ; $7244: $31 $3d $0a
    and a                                         ; $7247: $a7
    stop                                          ; $7248: $10 $00
    nop                                           ; $724a: $00
    di                                            ; $724b: $f3
    dec a                                         ; $724c: $3d
    dec a                                         ; $724d: $3d
    ld h, a                                       ; $724e: $67
    dec hl                                        ; $724f: $2b
    dec h                                         ; $7250: $25
    nop                                           ; $7251: $00
    nop                                           ; $7252: $00
    dec d                                         ; $7253: $15
    ld b, d                                       ; $7254: $42
    inc e                                         ; $7255: $1c
    ld h, e                                       ; $7256: $63
    dec bc                                        ; $7257: $0b
    ld hl, $0c64                                  ; $7258: $21 $64 $0c
    sbc [hl]                                      ; $725b: $9e
    ld c, $b9                                     ; $725c: $0e $b9
    ld d, [hl]                                    ; $725e: $56
    call $0108                                    ; $725f: $cd $08 $01
    nop                                           ; $7262: $00
    sbc d                                         ; $7263: $9a
    add hl, bc                                    ; $7264: $09
    ld e, a                                       ; $7265: $5f
    inc bc                                        ; $7266: $03
    xor c                                         ; $7267: $a9
    stop                                          ; $7268: $10 $00
    nop                                           ; $726a: $00
    ret z                                         ; $726b: $c8

    inc e                                         ; $726c: $1c
    sub d                                         ; $726d: $92
    dec l                                         ; $726e: $2d
    ld h, h                                       ; $726f: $64
    inc c                                         ; $7270: $0c
    nop                                           ; $7271: $00
    nop                                           ; $7272: $00
    halt                                          ; $7273: $76
    ld c, [hl]                                    ; $7274: $4e
    add [hl]                                      ; $7275: $86
    inc c                                         ; $7276: $0c
    ret                                           ; $7277: $c9


    inc d                                         ; $7278: $14
    ld b, e                                       ; $7279: $43
    ld [$2d6f], sp                                ; $727a: $08 $6f $2d
    ld e, a                                       ; $727d: $5f
    inc bc                                        ; $727e: $03
    halt                                          ; $727f: $76
    add hl, bc                                    ; $7280: $09
    ld [bc], a                                    ; $7281: $02
    nop                                           ; $7282: $00
    cp h                                          ; $7283: $bc
    add hl, bc                                    ; $7284: $09
    ld [$5f18], a                                 ; $7285: $ea $18 $5f
    inc bc                                        ; $7288: $03
    ld bc, $6f00                                  ; $7289: $01 $00 $6f
    add hl, hl                                    ; $728c: $29
    ld e, b                                       ; $728d: $58
    ld b, [hl]                                    ; $728e: $46
    cp l                                          ; $728f: $bd
    ld c, [hl]                                    ; $7290: $4e
    nop                                           ; $7291: $00
    nop                                           ; $7292: $00
    or $39                                        ; $7293: $f6 $39
    ccf                                           ; $7295: $3f
    ld h, e                                       ; $7296: $63
    ld h, [hl]                                    ; $7297: $66
    ld [$0001], sp                                ; $7298: $08 $01 $00
    ld d, h                                       ; $729b: $54
    dec b                                         ; $729c: $05
    ld e, a                                       ; $729d: $5f
    inc bc                                        ; $729e: $03
    and a                                         ; $729f: $a7
    inc d                                         ; $72a0: $14
    ld [bc], a                                    ; $72a1: $02
    nop                                           ; $72a2: $00
    inc e                                         ; $72a3: $1c
    ld b, $6c                                     ; $72a4: $06 $6c
    dec l                                         ; $72a6: $2d
    db $db                                        ; $72a7: $db
    ld d, d                                       ; $72a8: $52
    ld b, l                                       ; $72a9: $45
    inc b                                         ; $72aa: $04
    jp nc, $dd35                                  ; $72ab: $d2 $35 $dd

    ld d, d                                       ; $72ae: $52
    add hl, bc                                    ; $72af: $09
    ld hl, $0004                                  ; $72b0: $21 $04 $00
    scf                                           ; $72b3: $37
    ld b, d                                       ; $72b4: $42
    ld e, $5f                                     ; $72b5: $1e $5f
    inc c                                         ; $72b7: $0c
    dec e                                         ; $72b8: $1d
    ld hl, $7d04                                  ; $72b9: $21 $04 $7d
    ld a, [bc]                                    ; $72bc: $0a
    db $dd                                        ; $72bd: $dd
    ld d, [hl]                                    ; $72be: $56
    call z, Call_000_0208                         ; $72bf: $cc $08 $02
    nop                                           ; $72c2: $00
    sbc c                                         ; $72c3: $99
    dec c                                         ; $72c4: $0d
    call c, Call_0d2_5f4e                         ; $72c5: $dc $4e $5f
    inc bc                                        ; $72c8: $03
    ld b, h                                       ; $72c9: $44
    inc b                                         ; $72ca: $04
    add hl, sp                                    ; $72cb: $39
    ld a, [hl-]                                   ; $72cc: $3a
    ld d, h                                       ; $72cd: $54
    ld hl, $5b1d                                  ; $72ce: $21 $1d $5b
    ld b, e                                       ; $72d1: $43
    inc b                                         ; $72d2: $04
    ld e, e                                       ; $72d3: $5b
    ld b, [hl]                                    ; $72d4: $46
    dec hl                                        ; $72d5: $2b
    dec h                                         ; $72d6: $25
    sbc l                                         ; $72d7: $9d
    ld [hl], e                                    ; $72d8: $73
    inc bc                                        ; $72d9: $03
    nop                                           ; $72da: $00
    db $db                                        ; $72db: $db
    ld de, $035f                                  ; $72dc: $11 $5f $03
    call Call_000_0208                            ; $72df: $cd $08 $02
    nop                                           ; $72e2: $00
    sbc c                                         ; $72e3: $99
    ld de, $52dd                                  ; $72e4: $11 $dd $52
    ld e, a                                       ; $72e7: $5f
    inc bc                                        ; $72e8: $03
    cpl                                           ; $72e9: $2f
    dec e                                         ; $72ea: $1d
    ld e, e                                       ; $72eb: $5b
    ld b, [hl]                                    ; $72ec: $46
    ccf                                           ; $72ed: $3f
    ld h, e                                       ; $72ee: $63
    ld c, a                                       ; $72ef: $4f
    inc sp                                        ; $72f0: $33
    add b                                         ; $72f1: $80
    nop                                           ; $72f2: $00
    ld [hl], e                                    ; $72f3: $73
    ld a, [hl-]                                   ; $72f4: $3a
    ld a, [hl]                                    ; $72f5: $7e
    ld l, e                                       ; $72f6: $6b
    inc c                                         ; $72f7: $0c
    dec e                                         ; $72f8: $1d
    ld b, l                                       ; $72f9: $45
    inc b                                         ; $72fa: $04
    cp d                                          ; $72fb: $ba
    ld de, $7fff                                  ; $72fc: $11 $ff $7f
    ld e, a                                       ; $72ff: $5f
    inc bc                                        ; $7300: $03
    ld bc, $da00                                  ; $7301: $01 $00 $da
    dec b                                         ; $7304: $05
    cp [hl]                                       ; $7305: $be
    ld c, [hl]                                    ; $7306: $4e
    call z, $9e08                                 ; $7307: $cc $08 $9e
    ld c, d                                       ; $730a: $4a
    rst $38                                       ; $730b: $ff
    ld e, [hl]                                    ; $730c: $5e
    ld e, a                                       ; $730d: $5f
    ld l, e                                       ; $730e: $6b
    rra                                           ; $730f: $1f
    ld e, a                                       ; $7310: $5f
    ld b, d                                       ; $7311: $42
    inc c                                         ; $7312: $0c
    ld a, $5f                                     ; $7313: $3e $5f
    ld c, [hl]                                    ; $7315: $4e
    dec h                                         ; $7316: $25
    rst $18                                       ; $7317: $df
    ld [hl], a                                    ; $7318: $77
    ld b, l                                       ; $7319: $45
    nop                                           ; $731a: $00
    rst $38                                       ; $731b: $ff
    ld a, a                                       ; $731c: $7f
    sbc c                                         ; $731d: $99
    dec c                                         ; $731e: $0d
    ld e, a                                       ; $731f: $5f
    inc bc                                        ; $7320: $03
    ld [bc], a                                    ; $7321: $02
    nop                                           ; $7322: $00
    ld a, b                                       ; $7323: $78
    add hl, bc                                    ; $7324: $09
    ld e, a                                       ; $7325: $5f
    inc bc                                        ; $7326: $03
    xor d                                         ; $7327: $aa
    ld [$361d], sp                                ; $7328: $08 $1d $36
    rst $18                                       ; $732b: $df
    ld e, d                                       ; $732c: $5a
    ccf                                           ; $732d: $3f
    ld h, a                                       ; $732e: $67
    ld a, a                                       ; $732f: $7f
    ld c, d                                       ; $7330: $4a
    xor c                                         ; $7331: $a9
    db $10                                        ; $7332: $10
    sbc e                                         ; $7333: $9b
    ld c, d                                       ; $7334: $4a
    ld e, a                                       ; $7335: $5f
    ld h, e                                       ; $7336: $63
    ld d, b                                       ; $7337: $50
    ld hl, $0045                                  ; $7338: $21 $45 $00
    ld a, b                                       ; $733b: $78
    dec c                                         ; $733c: $0d
    cp a                                          ; $733d: $bf
    ld [hl], e                                    ; $733e: $73
    ld e, a                                       ; $733f: $5f
    inc bc                                        ; $7340: $03
    ld [bc], a                                    ; $7341: $02
    nop                                           ; $7342: $00
    ld d, a                                       ; $7343: $57
    add hl, bc                                    ; $7344: $09
    ld e, a                                       ; $7345: $5f
    inc bc                                        ; $7346: $03
    adc c                                         ; $7347: $89
    inc b                                         ; $7348: $04
    call z, Call_0d2_5f0c                         ; $7349: $cc $0c $5f
    ld c, d                                       ; $734c: $4a
    sbc b                                         ; $734d: $98
    dec h                                         ; $734e: $25
    rst $18                                       ; $734f: $df
    ld e, d                                       ; $7350: $5a
    inc bc                                        ; $7351: $03
    nop                                           ; $7352: $00
    push af                                       ; $7353: $f5
    dec [hl]                                      ; $7354: $35
    ccf                                           ; $7355: $3f
    ld e, e                                       ; $7356: $5b
    adc h                                         ; $7357: $8c
    ld [$0002], sp                                ; $7358: $08 $02 $00
    halt                                          ; $735b: $76
    add hl, bc                                    ; $735c: $09
    ld e, a                                       ; $735d: $5f
    inc bc                                        ; $735e: $03
    adc c                                         ; $735f: $89
    inc b                                         ; $7360: $04
    ld bc, $8e00                                  ; $7361: $01 $00 $8e
    ld sp, $035f                                  ; $7364: $31 $5f $03
    ld d, [hl]                                    ; $7367: $56
    dec b                                         ; $7368: $05
    adc c                                         ; $7369: $89
    inc b                                         ; $736a: $04
    add hl, de                                    ; $736b: $19
    ld h, e                                       ; $736c: $63
    ld c, a                                       ; $736d: $4f
    ld hl, $52bf                                  ; $736e: $21 $bf $52
    adc c                                         ; $7371: $89
    inc b                                         ; $7372: $04
    sbc $56                                       ; $7373: $de $56
    cp a                                          ; $7375: $bf
    ld l, a                                       ; $7376: $6f
    ld d, l                                       ; $7377: $55
    add hl, bc                                    ; $7378: $09
    ld [bc], a                                    ; $7379: $02
    nop                                           ; $737a: $00
    ld d, l                                       ; $737b: $55
    add hl, bc                                    ; $737c: $09
    ld e, a                                       ; $737d: $5f
    inc bc                                        ; $737e: $03
    ld d, [hl]                                    ; $737f: $56
    add hl, bc                                    ; $7380: $09
    ld [bc], a                                    ; $7381: $02
    nop                                           ; $7382: $00
    dec [hl]                                      ; $7383: $35
    add hl, bc                                    ; $7384: $09
    halt                                          ; $7385: $76
    ld c, [hl]                                    ; $7386: $4e
    ld e, a                                       ; $7387: $5f
    inc bc                                        ; $7388: $03
    adc c                                         ; $7389: $89
    inc b                                         ; $738a: $04
    ld a, d                                       ; $738b: $7a
    ld c, [hl]                                    ; $738c: $4e
    sbc h                                         ; $738d: $9c
    ld [hl], e                                    ; $738e: $73
    ld c, h                                       ; $738f: $4c
    dec h                                         ; $7390: $25
    adc b                                         ; $7391: $88
    ld [$462f], sp                                ; $7392: $08 $2f $46
    rst $18                                       ; $7395: $df
    ld e, d                                       ; $7396: $5a
    rst $38                                       ; $7397: $ff
    ld a, a                                       ; $7398: $7f
    ld [bc], a                                    ; $7399: $02
    nop                                           ; $739a: $00
    inc [hl]                                      ; $739b: $34
    dec b                                         ; $739c: $05
    ld e, a                                       ; $739d: $5f
    inc bc                                        ; $739e: $03
    ld d, l                                       ; $739f: $55
    add hl, bc                                    ; $73a0: $09
    ld bc, $3500                                  ; $73a1: $01 $00 $35
    add hl, bc                                    ; $73a4: $09
    sbc b                                         ; $73a5: $98
    ld d, d                                       ; $73a6: $52
    ld e, a                                       ; $73a7: $5f
    inc bc                                        ; $73a8: $03
    ret c                                         ; $73a9: $d8

    ld e, d                                       ; $73aa: $5a
    sbc l                                         ; $73ab: $9d
    ld [hl], e                                    ; $73ac: $73
    add hl, sp                                    ; $73ad: $39
    ld h, a                                       ; $73ae: $67
    rst $38                                       ; $73af: $ff
    ld a, a                                       ; $73b0: $7f
    nop                                           ; $73b1: $00
    nop                                           ; $73b2: $00
    sbc l                                         ; $73b3: $9d
    ld [hl], e                                    ; $73b4: $73
    daa                                           ; $73b5: $27
    dec h                                         ; $73b6: $25
    call Call_000_0039                            ; $73b7: $cd $39 $00
    nop                                           ; $73ba: $00
    inc sp                                        ; $73bb: $33
    dec b                                         ; $73bc: $05
    ld e, a                                       ; $73bd: $5f
    inc bc                                        ; $73be: $03
    ld [bc], a                                    ; $73bf: $02
    nop                                           ; $73c0: $00
    ld [bc], a                                    ; $73c1: $02
    nop                                           ; $73c2: $00
    ld a, b                                       ; $73c3: $78
    dec d                                         ; $73c4: $15
    rst $00                                       ; $73c5: $c7
    jr jr_0d2_7427                                ; $73c6: $18 $5f

    inc bc                                        ; $73c8: $03
    pop de                                        ; $73c9: $d1
    add hl, sp                                    ; $73ca: $39
    dec de                                        ; $73cb: $1b
    ld h, e                                       ; $73cc: $63
    cp l                                          ; $73cd: $bd
    ld [hl], e                                    ; $73ce: $73
    rst $38                                       ; $73cf: $ff
    ld a, a                                       ; $73d0: $7f
    nop                                           ; $73d1: $00
    nop                                           ; $73d2: $00
    ld [hl], e                                    ; $73d3: $73
    ld c, d                                       ; $73d4: $4a
    sbc l                                         ; $73d5: $9d
    ld [hl], e                                    ; $73d6: $73
    rst $00                                       ; $73d7: $c7
    jr jr_0d2_73dc                                ; $73d8: $18 $02

    nop                                           ; $73da: $00
    ld e, a                                       ; $73db: $5f

jr_0d2_73dc:
    inc bc                                        ; $73dc: $03
    rst $00                                       ; $73dd: $c7
    jr @-$17                                      ; $73de: $18 $e7

    jr nz, jr_0d2_73e4                            ; $73e0: $20 $02

    nop                                           ; $73e2: $00
    ld e, e                                       ; $73e3: $5b

jr_0d2_73e4:
    ld bc, $035f                                  ; $73e4: $01 $5f $03
    rst $20                                       ; $73e7: $e7
    jr nz, jr_0d2_7445                            ; $73e8: $20 $5b

    ld bc, $035f                                  ; $73ea: $01 $5f $03
    ld e, a                                       ; $73ed: $5f
    inc bc                                        ; $73ee: $03
    rst $20                                       ; $73ef: $e7
    jr nz, jr_0d2_744d                            ; $73f0: $20 $5b

    ld bc, $035f                                  ; $73f2: $01 $5f $03
    ld e, a                                       ; $73f5: $5f
    inc bc                                        ; $73f6: $03
    rst $20                                       ; $73f7: $e7
    jr nz, jr_0d2_73fc                            ; $73f8: $20 $02

    nop                                           ; $73fa: $00
    ld e, e                                       ; $73fb: $5b

jr_0d2_73fc:
    ld bc, $035f                                  ; $73fc: $01 $5f $03
    rst $20                                       ; $73ff: $e7
    jr nz, jr_0d2_7404                            ; $7400: $20 $02

    nop                                           ; $7402: $00
    ret nc                                        ; $7403: $d0

jr_0d2_7404:
    ld b, [hl]                                    ; $7404: $46
    ld e, e                                       ; $7405: $5b
    ld bc, $035f                                  ; $7406: $01 $5f $03
    adc a                                         ; $7409: $8f
    ld d, b                                       ; $740a: $50
    ld e, a                                       ; $740b: $5f
    inc bc                                        ; $740c: $03
    sub l                                         ; $740d: $95
    ld l, c                                       ; $740e: $69
    inc a                                         ; $740f: $3c
    ld a, d                                       ; $7410: $7a
    xor a                                         ; $7411: $af
    ld d, b                                       ; $7412: $50
    ld e, a                                       ; $7413: $5f
    inc bc                                        ; $7414: $03
    dec de                                        ; $7415: $1b
    ld a, d                                       ; $7416: $7a
    ld [hl], l                                    ; $7417: $75
    ld l, c                                       ; $7418: $69
    ld [bc], a                                    ; $7419: $02
    nop                                           ; $741a: $00
    ld e, a                                       ; $741b: $5f
    inc bc                                        ; $741c: $03
    ret nc                                        ; $741d: $d0

    ld b, [hl]                                    ; $741e: $46
    adc b                                         ; $741f: $88
    jr z, jr_0d2_7424                             ; $7420: $28 $02

    nop                                           ; $7422: $00
    ld e, l                                       ; $7423: $5d

jr_0d2_7424:
    ld [bc], a                                    ; $7424: $02
    xor a                                         ; $7425: $af
    ld c, d                                       ; $7426: $4a

jr_0d2_7427:
    ld e, b                                       ; $7427: $58
    ld [hl], c                                    ; $7428: $71
    nop                                           ; $7429: $00
    nop                                           ; $742a: $00
    ld a, [bc]                                    ; $742b: $0a
    inc a                                         ; $742c: $3c
    ld d, b                                       ; $742d: $50
    ld e, b                                       ; $742e: $58
    dec d                                         ; $742f: $15
    ld l, l                                       ; $7430: $6d
    nop                                           ; $7431: $00
    nop                                           ; $7432: $00
    ret c                                         ; $7433: $d8

    ld a, c                                       ; $7434: $79
    dec c                                         ; $7435: $0d
    ld c, h                                       ; $7436: $4c
    sub b                                         ; $7437: $90
    ld e, h                                       ; $7438: $5c
    ld b, l                                       ; $7439: $45
    inc d                                         ; $743a: $14
    xor a                                         ; $743b: $af
    ld c, d                                       ; $743c: $4a
    ld e, a                                       ; $743d: $5f
    inc bc                                        ; $743e: $03
    inc e                                         ; $743f: $1c
    ld a, d                                       ; $7440: $7a
    ld bc, $6f00                                  ; $7441: $01 $00 $6f
    ld d, [hl]                                    ; $7444: $56

jr_0d2_7445:
    ld e, l                                       ; $7445: $5d
    ld [bc], a                                    ; $7446: $02
    adc b                                         ; $7447: $88
    jr z, jr_0d2_744a                             ; $7448: $28 $00

jr_0d2_744a:
    nop                                           ; $744a: $00
    dec [hl]                                      ; $744b: $35
    ld l, c                                       ; $744c: $69

jr_0d2_744d:
    dec de                                        ; $744d: $1b
    ld a, [hl]                                    ; $744e: $7e
    ld c, a                                       ; $744f: $4f
    ld d, b                                       ; $7450: $50
    ld bc, $4f04                                  ; $7451: $01 $04 $4f
    ld d, h                                       ; $7454: $54
    ld a, [de]                                    ; $7455: $1a
    ld [hl], d                                    ; $7456: $72
    jr z, jr_0d2_7485                             ; $7457: $28 $2c

    ld b, l                                       ; $7459: $45
    inc d                                         ; $745a: $14
    adc [hl]                                      ; $745b: $8e
    ld c, [hl]                                    ; $745c: $4e
    ld e, a                                       ; $745d: $5f
    inc bc                                        ; $745e: $03
    ld [hl], a                                    ; $745f: $77
    ld l, l                                       ; $7460: $6d
    ld [bc], a                                    ; $7461: $02
    nop                                           ; $7462: $00
    ld e, l                                       ; $7463: $5d
    ld [bc], a                                    ; $7464: $02
    db $ed                                        ; $7465: $ed
    ld d, l                                       ; $7466: $55
    ei                                            ; $7467: $fb
    ld a, c                                       ; $7468: $79
    nop                                           ; $7469: $00
    inc b                                         ; $746a: $04
    adc l                                         ; $746b: $8d
    ld b, h                                       ; $746c: $44
    ld [hl], e                                    ; $746d: $73
    ld e, l                                       ; $746e: $5d
    ld h, $24                                     ; $746f: $26 $24
    nop                                           ; $7471: $00
    nop                                           ; $7472: $00
    ld l, a                                       ; $7473: $6f
    ld d, h                                       ; $7474: $54
    ld e, a                                       ; $7475: $5f
    ld a, [hl]                                    ; $7476: $7e
    ld b, $28                                     ; $7477: $06 $28
    ld bc, $6d04                                  ; $7479: $01 $04 $6d
    ld d, [hl]                                    ; $747c: $56
    ld e, a                                       ; $747d: $5f
    inc bc                                        ; $747e: $03
    ld a, [hl+]                                   ; $747f: $2a
    jr c, jr_0d2_7484                             ; $7480: $38 $02

    nop                                           ; $7482: $00
    ld e, l                                       ; $7483: $5d

jr_0d2_7484:
    ld [bc], a                                    ; $7484: $02

jr_0d2_7485:
    cpl                                           ; $7485: $2f
    ld d, h                                       ; $7486: $54
    or $6d                                        ; $7487: $f6 $6d
    ld bc, $7308                                  ; $7489: $01 $08 $73
    ld l, h                                       ; $748c: $6c
    db $fc                                        ; $748d: $fc
    ld a, c                                       ; $748e: $79
    ld [$213c], sp                                ; $748f: $08 $3c $21
    ld [$5890], sp                                ; $7492: $08 $90 $58
    ld e, a                                       ; $7495: $5f
    ld a, [hl]                                    ; $7496: $7e
    add hl, bc                                    ; $7497: $09
    inc [hl]                                      ; $7498: $34
    dec h                                         ; $7499: $25
    jr jr_0d2_74fb                                ; $749a: $18 $5f

    inc bc                                        ; $749c: $03
    inc l                                         ; $749d: $2c
    ld b, h                                       ; $749e: $44
    ld l, h                                       ; $749f: $6c
    ld e, [hl]                                    ; $74a0: $5e
    ld [bc], a                                    ; $74a1: $02
    nop                                           ; $74a2: $00
    or b                                          ; $74a3: $b0
    ld d, h                                       ; $74a4: $54
    ld e, l                                       ; $74a5: $5d
    ld [bc], a                                    ; $74a6: $02
    add hl, de                                    ; $74a7: $19
    ld a, l                                       ; $74a8: $7d
    nop                                           ; $74a9: $00
    nop                                           ; $74aa: $00
    add hl, de                                    ; $74ab: $19
    ld l, $0b                                     ; $74ac: $2e $0b
    ld c, b                                       ; $74ae: $48
    ret                                           ; $74af: $c9


    inc b                                         ; $74b0: $04
    ld hl, $9108                                  ; $74b1: $21 $08 $91
    ld e, h                                       ; $74b4: $5c
    ld a, a                                       ; $74b5: $7f
    ld a, [hl]                                    ; $74b6: $7e
    add hl, hl                                    ; $74b7: $29
    inc [hl]                                      ; $74b8: $34
    inc bc                                        ; $74b9: $03
    db $10                                        ; $74ba: $10
    ei                                            ; $74bb: $fb
    ld a, c                                       ; $74bc: $79
    ld e, a                                       ; $74bd: $5f
    inc bc                                        ; $74be: $03
    ld c, [hl]                                    ; $74bf: $4e
    ld d, b                                       ; $74c0: $50
    ld bc, $4f00                                  ; $74c1: $01 $00 $4f
    ld e, b                                       ; $74c4: $58
    ld e, e                                       ; $74c5: $5b
    ld bc, $035f                                  ; $74c6: $01 $5f $03
    ld h, d                                       ; $74c9: $62
    nop                                           ; $74ca: $00
    cpl                                           ; $74cb: $2f
    ld c, [hl]                                    ; $74cc: $4e
    inc a                                         ; $74cd: $3c
    ld e, a                                       ; $74ce: $5f
    add hl, de                                    ; $74cf: $19
    ld l, $24                                     ; $74d0: $2e $24
    jr @+$71                                      ; $74d2: $18 $6f

    ld d, h                                       ; $74d4: $54
    push af                                       ; $74d5: $f5
    ld [hl], b                                    ; $74d6: $70
    dec e                                         ; $74d7: $1d
    ld a, [hl]                                    ; $74d8: $7e
    inc bc                                        ; $74d9: $03
    db $10                                        ; $74da: $10
    ld e, a                                       ; $74db: $5f
    inc bc                                        ; $74dc: $03
    dec l                                         ; $74dd: $2d
    ld c, h                                       ; $74de: $4c
    sbc c                                         ; $74df: $99
    ld a, l                                       ; $74e0: $7d
    ld bc, $4f00                                  ; $74e1: $01 $00 $4f
    ld d, h                                       ; $74e4: $54
    ld e, e                                       ; $74e5: $5b
    ld bc, $035f                                  ; $74e6: $01 $5f $03
    dec d                                         ; $74e9: $15
    ld [hl-], a                                   ; $74ea: $32
    cp $4a                                        ; $74eb: $fe $4a
    add hl, de                                    ; $74ed: $19
    ld l, $7b                                     ; $74ee: $2e $7b
    ld [hl], $01                                  ; $74f0: $36 $01
    ld [$502e], sp                                ; $74f2: $08 $2e $50
    sub [hl]                                      ; $74f5: $96
    ld l, l                                       ; $74f6: $6d
    ld [hl], d                                    ; $74f7: $72
    ld h, b                                       ; $74f8: $60
    inc bc                                        ; $74f9: $03
    inc c                                         ; $74fa: $0c

jr_0d2_74fb:
    sub b                                         ; $74fb: $90
    ld e, b                                       ; $74fc: $58
    ld e, a                                       ; $74fd: $5f
    inc bc                                        ; $74fe: $03
    ei                                            ; $74ff: $fb
    ld a, l                                       ; $7500: $7d
    ld bc, $6f00                                  ; $7501: $01 $00 $6f
    ld e, b                                       ; $7504: $58
    ld e, e                                       ; $7505: $5b
    ld bc, $035f                                  ; $7506: $01 $5f $03
    inc h                                         ; $7509: $24
    nop                                           ; $750a: $00
    jr c, jr_0d2_753f                             ; $750b: $38 $32

    ld c, [hl]                                    ; $750d: $4e
    dec e                                         ; $750e: $1d
    cp $4e                                        ; $750f: $fe $4e
    inc bc                                        ; $7511: $03
    inc d                                         ; $7512: $14
    ld d, b                                       ; $7513: $50
    ld e, b                                       ; $7514: $58
    add hl, de                                    ; $7515: $19
    ld l, $d7                                     ; $7516: $2e $d7
    ld [hl], c                                    ; $7518: $71
    nop                                           ; $7519: $00
    nop                                           ; $751a: $00
    ld l, l                                       ; $751b: $6d
    ld b, h                                       ; $751c: $44
    ld e, a                                       ; $751d: $5f
    inc bc                                        ; $751e: $03
    ld [hl], $71                                  ; $751f: $36 $71
    ld bc, $7000                                  ; $7521: $01 $00 $70
    ld e, h                                       ; $7524: $5c
    ld e, e                                       ; $7525: $5b
    ld bc, $035f                                  ; $7526: $01 $5f $03
    nop                                           ; $7529: $00
    nop                                           ; $752a: $00
    cp $4e                                        ; $752b: $fe $4e
    jp hl                                         ; $752d: $e9


    jr @+$61                                      ; $752e: $18 $5f

    inc bc                                        ; $7530: $03
    ld bc, $d50c                                  ; $7531: $01 $0c $d5
    ld l, h                                       ; $7534: $6c
    inc l                                         ; $7535: $2c
    ld b, h                                       ; $7536: $44
    sbc h                                         ; $7537: $9c
    ld a, $02                                     ; $7538: $3e $02
    inc c                                         ; $753a: $0c
    ld l, $50                                     ; $753b: $2e $50
    ld e, a                                       ; $753d: $5f
    inc bc                                        ; $753e: $03

jr_0d2_753f:
    push af                                       ; $753f: $f5
    ld l, h                                       ; $7540: $6c
    ld bc, $9000                                  ; $7541: $01 $00 $90
    ld e, h                                       ; $7544: $5c
    ld e, e                                       ; $7545: $5b
    ld bc, $035f                                  ; $7546: $01 $5f $03
    ld bc, $f400                                  ; $7549: $01 $00 $f4
    ld sp, $4efe                                  ; $754c: $31 $fe $4e
    adc e                                         ; $754f: $8b
    inc b                                         ; $7550: $04
    ld bc, $9108                                  ; $7551: $01 $08 $91
    ld h, b                                       ; $7554: $60
    sbc h                                         ; $7555: $9c
    ld b, d                                       ; $7556: $42
    ld c, d                                       ; $7557: $4a
    jr c, @+$04                                   ; $7558: $38 $02

    ld [$544f], sp                                ; $755a: $08 $4f $54
    ld e, a                                       ; $755d: $5f
    inc bc                                        ; $755e: $03
    ld d, a                                       ; $755f: $57
    ld [hl], l                                    ; $7560: $75
    ld bc, $2e00                                  ; $7561: $01 $00 $2e
    ld d, b                                       ; $7564: $50
    ld e, l                                       ; $7565: $5d
    ld [bc], a                                    ; $7566: $02
    sub l                                         ; $7567: $95
    ld l, l                                       ; $7568: $6d
    nop                                           ; $7569: $00
    nop                                           ; $756a: $00
    ld d, c                                       ; $756b: $51
    dec e                                         ; $756c: $1d
    cp $4e                                        ; $756d: $fe $4e
    add hl, de                                    ; $756f: $19
    ld l, $00                                     ; $7570: $2e $00
    nop                                           ; $7572: $00
    ld [hl], b                                    ; $7573: $70
    ld e, b                                       ; $7574: $58
    ld a, [hl-]                                   ; $7575: $3a
    ld [hl-], a                                   ; $7576: $32
    ld c, d                                       ; $7577: $4a
    jr c, @+$04                                   ; $7578: $38 $02

    ld [$035f], sp                                ; $757a: $08 $5f $03
    inc l                                         ; $757d: $2c
    ld c, b                                       ; $757e: $48
    db $d3                                        ; $757f: $d3
    ld l, b                                       ; $7580: $68
    ld [bc], a                                    ; $7581: $02
    nop                                           ; $7582: $00
    ld e, l                                       ; $7583: $5d
    ld [bc], a                                    ; $7584: $02
    ld l, a                                       ; $7585: $6f
    ld d, b                                       ; $7586: $50
    dec de                                        ; $7587: $1b
    ld a, [hl]                                    ; $7588: $7e
    nop                                           ; $7589: $00
    nop                                           ; $758a: $00
    ld b, l                                       ; $758b: $45
    inc b                                         ; $758c: $04
    jp z, $8710                                   ; $758d: $ca $10 $87

    ld [$0401], sp                                ; $7590: $08 $01 $04
    ld l, a                                       ; $7593: $6f
    ld d, h                                       ; $7594: $54
    add hl, de                                    ; $7595: $19
    ld l, $ec                                     ; $7596: $2e $ec
    inc d                                         ; $7598: $14
    ld bc, $5f04                                  ; $7599: $01 $04 $5f
    inc bc                                        ; $759c: $03
    add hl, bc                                    ; $759d: $09
    inc [hl]                                      ; $759e: $34
    ld [hl], b                                    ; $759f: $70
    ld e, b                                       ; $75a0: $58
    ld bc, $5d00                                  ; $75a1: $01 $00 $5d
    ld [bc], a                                    ; $75a4: $02
    ld [hl], $71                                  ; $75a5: $36 $71
    rlca                                          ; $75a7: $07
    inc l                                         ; $75a8: $2c
    nop                                           ; $75a9: $00
    nop                                           ; $75aa: $00
    ld c, a                                       ; $75ab: $4f
    dec e                                         ; $75ac: $1d
    ld d, c                                       ; $75ad: $51
    dec e                                         ; $75ae: $1d
    rlca                                          ; $75af: $07
    inc l                                         ; $75b0: $2c
    ld hl, $2b04                                  ; $75b1: $21 $04 $2b
    ld b, b                                       ; $75b4: $40
    add hl, de                                    ; $75b5: $19
    ld l, $71                                     ; $75b6: $2e $71
    ld e, h                                       ; $75b8: $5c
    ld bc, $5f00                                  ; $75b9: $01 $00 $5f
    inc bc                                        ; $75bc: $03
    ld [$0330], sp                                ; $75bd: $08 $30 $03
    inc d                                         ; $75c0: $14
    ld [bc], a                                    ; $75c1: $02
    nop                                           ; $75c2: $00
    ld e, l                                       ; $75c3: $5d
    ld [bc], a                                    ; $75c4: $02
    adc a                                         ; $75c5: $8f
    ld d, h                                       ; $75c6: $54
    dec sp                                        ; $75c7: $3b
    ld a, d                                       ; $75c8: $7a
    nop                                           ; $75c9: $00
    nop                                           ; $75ca: $00
    ld l, a                                       ; $75cb: $6f
    ld e, b                                       ; $75cc: $58
    ld [hl+], a                                   ; $75cd: $22
    inc d                                         ; $75ce: $14
    and [hl]                                      ; $75cf: $a6
    inc b                                         ; $75d0: $04
    ld bc, $4b08                                  ; $75d1: $01 $08 $4b
    ld b, h                                       ; $75d4: $44
    inc b                                         ; $75d5: $04
    inc h                                         ; $75d6: $24
    sub c                                         ; $75d7: $91
    ld h, h                                       ; $75d8: $64
    ld [bc], a                                    ; $75d9: $02
    inc c                                         ; $75da: $0c
    ld e, a                                       ; $75db: $5f
    inc bc                                        ; $75dc: $03
    sub c                                         ; $75dd: $91
    ld h, b                                       ; $75de: $60
    ld [$0234], sp                                ; $75df: $08 $34 $02
    nop                                           ; $75e2: $00
    ld e, e                                       ; $75e3: $5b
    ld bc, $035f                                  ; $75e4: $01 $5f $03
    ld [$5b34], sp                                ; $75e7: $08 $34 $5b
    ld bc, $035f                                  ; $75ea: $01 $5f $03
    ld e, a                                       ; $75ed: $5f
    inc bc                                        ; $75ee: $03
    ld [$5b34], sp                                ; $75ef: $08 $34 $5b
    ld bc, $035f                                  ; $75f2: $01 $5f $03
    ld e, a                                       ; $75f5: $5f
    inc bc                                        ; $75f6: $03
    ld [$0234], sp                                ; $75f7: $08 $34 $02
    nop                                           ; $75fa: $00
    ld e, e                                       ; $75fb: $5b
    ld bc, $035f                                  ; $75fc: $01 $5f $03
    ld [$0234], sp                                ; $75ff: $08 $34 $02
    nop                                           ; $7602: $00
    ld d, c                                       ; $7603: $51
    ld l, a                                       ; $7604: $6f
    ld e, e                                       ; $7605: $5b
    ld bc, $073f                                  ; $7606: $01 $3f $07
    ld h, e                                       ; $7609: $63
    db $10                                        ; $760a: $10
    sbc d                                         ; $760b: $9a
    ld a, [hl-]                                   ; $760c: $3a
    ld e, a                                       ; $760d: $5f
    inc bc                                        ; $760e: $03
    ld [hl], b                                    ; $760f: $70
    ld hl, $10c9                                  ; $7610: $21 $c9 $10
    ld e, a                                       ; $7613: $5f
    inc bc                                        ; $7614: $03
    ld d, c                                       ; $7615: $51
    ld l, a                                       ; $7616: $6f
    dec d                                         ; $7617: $15
    ld [hl-], a                                   ; $7618: $32
    ld [bc], a                                    ; $7619: $02
    nop                                           ; $761a: $00
    ld d, c                                       ; $761b: $51
    ld l, a                                       ; $761c: $6f
    ld e, a                                       ; $761d: $5f
    inc bc                                        ; $761e: $03
    dec d                                         ; $761f: $15
    ld [hl-], a                                   ; $7620: $32
    ld [bc], a                                    ; $7621: $02
    nop                                           ; $7622: $00
    ld d, c                                       ; $7623: $51
    ld l, a                                       ; $7624: $6f
    ld e, l                                       ; $7625: $5d
    ld [bc], a                                    ; $7626: $02
    ld e, h                                       ; $7627: $5c
    ld [hl], $23                                  ; $7628: $36 $23
    inc b                                         ; $762a: $04
    inc [hl]                                      ; $762b: $34
    add hl, de                                    ; $762c: $19
    sbc h                                         ; $762d: $9c
    ld a, [hl-]                                   ; $762e: $3a
    or c                                          ; $762f: $b1
    dec h                                         ; $7630: $25
    adc b                                         ; $7631: $88
    inc c                                         ; $7632: $0c
    rst $10                                       ; $7633: $d7
    add hl, hl                                    ; $7634: $29
    sbc $3e                                       ; $7635: $de $3e
    inc de                                        ; $7637: $13
    dec d                                         ; $7638: $15
    ld b, l                                       ; $7639: $45
    inc b                                         ; $763a: $04
    ld d, c                                       ; $763b: $51
    ld l, a                                       ; $763c: $6f
    rst $18                                       ; $763d: $df
    ld a, $5f                                     ; $763e: $3e $5f
    inc bc                                        ; $7640: $03
    ld [bc], a                                    ; $7641: $02
    nop                                           ; $7642: $00
    ld d, h                                       ; $7643: $54
    dec d                                         ; $7644: $15
    ld d, c                                       ; $7645: $51
    ld l, a                                       ; $7646: $6f
    ld e, a                                       ; $7647: $5f
    inc bc                                        ; $7648: $03
    adc c                                         ; $7649: $89
    inc c                                         ; $764a: $0c
    ld [hl], h                                    ; $764b: $74
    dec e                                         ; $764c: $1d
    ld a, [$bc29]                                 ; $764d: $fa $29 $bc
    ld a, [hl-]                                   ; $7650: $3a
    db $10                                        ; $7651: $10
    add hl, de                                    ; $7652: $19
    sbc h                                         ; $7653: $9c
    ld [hl], $35                                  ; $7654: $36 $35
    add hl, de                                    ; $7656: $19
    halt                                          ; $7657: $76
    dec e                                         ; $7658: $1d
    ld b, l                                       ; $7659: $45
    inc b                                         ; $765a: $04
    ld d, c                                       ; $765b: $51
    ld l, a                                       ; $765c: $6f
    cp $1e                                        ; $765d: $fe $1e
    dec [hl]                                      ; $765f: $35
    add hl, de                                    ; $7660: $19
    ld [bc], a                                    ; $7661: $02
    nop                                           ; $7662: $00
    ld a, b                                       ; $7663: $78
    dec d                                         ; $7664: $15
    ld d, c                                       ; $7665: $51
    ld l, a                                       ; $7666: $6f
    ld e, a                                       ; $7667: $5f
    inc bc                                        ; $7668: $03
    ld h, h                                       ; $7669: $64
    ld [$1d30], sp                                ; $766a: $08 $30 $1d
    ld [hl], a                                    ; $766d: $77
    dec e                                         ; $766e: $1d
    ld [$2218], a                                 ; $766f: $ea $18 $22
    inc b                                         ; $7672: $04
    ld d, e                                       ; $7673: $53
    dec e                                         ; $7674: $1d
    jp z, $9814                                   ; $7675: $ca $14 $98

    ld hl, $0424                                  ; $7678: $21 $24 $04
    ld [hl], l                                    ; $767b: $75
    ld hl, $6355                                  ; $767c: $21 $55 $63
    ld e, a                                       ; $767f: $5f
    inc bc                                        ; $7680: $03
    ld [bc], a                                    ; $7681: $02
    nop                                           ; $7682: $00
    ld d, c                                       ; $7683: $51
    ld l, a                                       ; $7684: $6f
    ld e, e                                       ; $7685: $5b
    ld bc, $035f                                  ; $7686: $01 $5f $03
    ld bc, $b700                                  ; $7689: $01 $00 $b7
    dec h                                         ; $768c: $25
    db $ec                                        ; $768d: $ec
    jr @+$68                                      ; $768e: $18 $66

    inc c                                         ; $7690: $0c
    ld [hl+], a                                   ; $7691: $22
    inc b                                         ; $7692: $04
    jr c, @+$38                                   ; $7693: $38 $36

    db $ec                                        ; $7695: $ec

jr_0d2_7696:
    jr jr_0d2_7696                                ; $7696: $18 $fe

    ld d, d                                       ; $7698: $52
    ld bc, $b800                                  ; $7699: $01 $00 $b8
    dec h                                         ; $769c: $25
    ld e, a                                       ; $769d: $5f
    inc bc                                        ; $769e: $03
    xor c                                         ; $769f: $a9
    inc d                                         ; $76a0: $14
    ld [bc], a                                    ; $76a1: $02
    nop                                           ; $76a2: $00
    ld d, l                                       ; $76a3: $55
    ld de, $6b30                                  ; $76a4: $11 $30 $6b
    ld e, a                                       ; $76a7: $5f
    inc bc                                        ; $76a8: $03
    ld [hl+], a                                   ; $76a9: $22
    nop                                           ; $76aa: $00
    jr c, jr_0d2_76e3                             ; $76ab: $38 $36

    jp z, $fe14                                   ; $76ad: $ca $14 $fe

    ld d, d                                       ; $76b0: $52
    or b                                          ; $76b1: $b0
    inc b                                         ; $76b2: $04
    jr c, jr_0d2_76eb                             ; $76b3: $38 $36

    cp $52                                        ; $76b5: $fe $52
    ld e, d                                       ; $76b7: $5a
    ld a, [hl-]                                   ; $76b8: $3a
    inc hl                                        ; $76b9: $23
    inc b                                         ; $76ba: $04
    ld c, a                                       ; $76bb: $4f
    ld hl, $035f                                  ; $76bc: $21 $5f $03
    jr @+$34                                      ; $76bf: $18 $32

    ld [bc], a                                    ; $76c1: $02
    nop                                           ; $76c2: $00
    ld d, a                                       ; $76c3: $57
    add hl, bc                                    ; $76c4: $09
    db $10                                        ; $76c5: $10
    ld l, e                                       ; $76c6: $6b
    ld e, a                                       ; $76c7: $5f
    inc bc                                        ; $76c8: $03
    ld bc, $3800                                  ; $76c9: $01 $00 $38
    ld [hl], $0a                                  ; $76cc: $36 $0a
    dec e                                         ; $76ce: $1d
    cp $52                                        ; $76cf: $fe $52
    nop                                           ; $76d1: $00
    inc b                                         ; $76d2: $04
    or [hl]                                       ; $76d3: $b6
    add hl, hl                                    ; $76d4: $29
    cp $52                                        ; $76d5: $fe $52
    adc $0c                                       ; $76d7: $ce $0c
    ld b, h                                       ; $76d9: $44
    inc b                                         ; $76da: $04
    db $10                                        ; $76db: $10
    ld l, e                                       ; $76dc: $6b
    ld e, a                                       ; $76dd: $5f
    inc bc                                        ; $76de: $03
    sbc e                                         ; $76df: $9b
    ld b, d                                       ; $76e0: $42
    ld [bc], a                                    ; $76e1: $02
    nop                                           ; $76e2: $00

jr_0d2_76e3:
    adc $66                                       ; $76e3: $ce $66
    ld e, e                                       ; $76e5: $5b
    ld bc, $035f                                  ; $76e6: $01 $5f $03
    nop                                           ; $76e9: $00
    nop                                           ; $76ea: $00

jr_0d2_76eb:
    dec d                                         ; $76eb: $15
    ld a, [hl-]                                   ; $76ec: $3a
    cp $52                                        ; $76ed: $fe $52
    jr c, @+$38                                   ; $76ef: $38 $36

    nop                                           ; $76f1: $00
    ld [$7dcf], sp                                ; $76f2: $08 $cf $7d
    ld a, $5f                                     ; $76f5: $3e $5f
    or [hl]                                       ; $76f7: $b6
    add hl, hl                                    ; $76f8: $29
    ld bc, $ce00                                  ; $76f9: $01 $00 $ce
    ld h, [hl]                                    ; $76fc: $66
    ld a, d                                       ; $76fd: $7a
    ld a, [de]                                    ; $76fe: $1a
    or b                                          ; $76ff: $b0
    inc b                                         ; $7700: $04
    ld [bc], a                                    ; $7701: $02
    nop                                           ; $7702: $00
    xor l                                         ; $7703: $ad
    ld h, d                                       ; $7704: $62
    ld e, e                                       ; $7705: $5b
    ld bc, $035f                                  ; $7706: $01 $5f $03
    nop                                           ; $7709: $00
    nop                                           ; $770a: $00
    sub d                                         ; $770b: $92
    add hl, hl                                    ; $770c: $29
    sbc $4e                                       ; $770d: $de $4e
    jr c, @+$38                                   ; $770f: $38 $36

    nop                                           ; $7711: $00
    nop                                           ; $7712: $00
    db $f4                                        ; $7713: $f4
    dec [hl]                                      ; $7714: $35
    cp $52                                        ; $7715: $fe $52
    ld e, d                                       ; $7717: $5a
    ld a, [hl-]                                   ; $7718: $3a
    nop                                           ; $7719: $00
    nop                                           ; $771a: $00
    xor l                                         ; $771b: $ad
    ld e, [hl]                                    ; $771c: $5e
    ld e, a                                       ; $771d: $5f
    inc bc                                        ; $771e: $03
    rst $08                                       ; $771f: $cf
    ld a, l                                       ; $7720: $7d
    ld bc, $6c00                                  ; $7721: $01 $00 $6c
    ld e, [hl]                                    ; $7724: $5e
    ld e, e                                       ; $7725: $5b
    ld bc, $035f                                  ; $7726: $01 $5f $03
    nop                                           ; $7729: $00
    nop                                           ; $772a: $00
    rla                                           ; $772b: $17
    ld [hl-], a                                   ; $772c: $32
    cp $52                                        ; $772d: $fe $52
    ld c, [hl]                                    ; $772f: $4e
    ld hl, $0000                                  ; $7730: $21 $00 $00
    cp $52                                        ; $7733: $fe $52
    db $eb                                        ; $7735: $eb
    jr @+$01                                      ; $7736: $18 $ff

    ld l, a                                       ; $7738: $6f
    nop                                           ; $7739: $00
    inc b                                         ; $773a: $04
    ld l, h                                       ; $773b: $6c
    ld e, [hl]                                    ; $773c: $5e
    ld e, a                                       ; $773d: $5f
    inc bc                                        ; $773e: $03
    jr @+$38                                      ; $773f: $18 $36

    ld bc, $2b00                                  ; $7741: $01 $00 $2b
    ld d, d                                       ; $7744: $52
    ld e, e                                       ; $7745: $5b
    ld bc, $035f                                  ; $7746: $01 $5f $03
    ld b, h                                       ; $7749: $44
    ld [$3638], sp                                ; $774a: $08 $38 $36
    cpl                                           ; $774d: $2f
    add hl, de                                    ; $774e: $19
    cp $52                                        ; $774f: $fe $52
    ld bc, $ef00                                  ; $7751: $01 $00 $ef
    ld b, c                                       ; $7754: $41
    sbc $4e                                       ; $7755: $de $4e
    call nc, Call_000_0004                        ; $7757: $d4 $04 $00
    nop                                           ; $775a: $00
    dec hl                                        ; $775b: $2b
    ld e, d                                       ; $775c: $5a
    ld e, a                                       ; $775d: $5f
    inc bc                                        ; $775e: $03
    ld [bc], a                                    ; $775f: $02
    nop                                           ; $7760: $00
    ld bc, $ea00                                  ; $7761: $01 $00 $ea
    add hl, de                                    ; $7764: $19
    ld e, l                                       ; $7765: $5d
    ld [bc], a                                    ; $7766: $02
    ld [$0055], a                                 ; $7767: $ea $55 $00
    nop                                           ; $776a: $00
    rla                                           ; $776b: $17
    ld [hl-], a                                   ; $776c: $32
    inc c                                         ; $776d: $0c
    dec e                                         ; $776e: $1d
    cp $52                                        ; $776f: $fe $52
    nop                                           ; $7771: $00
    nop                                           ; $7772: $00
    ld [$7e55], a                                 ; $7773: $ea $55 $7e
    ld a, $f4                                     ; $7776: $3e $f4
    inc c                                         ; $7778: $0c
    ld [bc], a                                    ; $7779: $02
    nop                                           ; $777a: $00
    ld e, a                                       ; $777b: $5f
    inc bc                                        ; $777c: $03
    ld [$0a55], a                                 ; $777d: $ea $55 $0a
    ld d, [hl]                                    ; $7780: $56
    ld bc, $0b00                                  ; $7781: $01 $00 $0b
    ld a, [hl+]                                   ; $7784: $2a
    ld e, l                                       ; $7785: $5d
    ld [bc], a                                    ; $7786: $02
    and $14                                       ; $7787: $e6 $14
    nop                                           ; $7789: $00
    nop                                           ; $778a: $00
    ld [hl], b                                    ; $778b: $70
    dec h                                         ; $778c: $25
    jp hl                                         ; $778d: $e9


    inc d                                         ; $778e: $14
    jr @+$38                                      ; $778f: $18 $36

    nop                                           ; $7791: $00
    nop                                           ; $7792: $00
    ret z                                         ; $7793: $c8

    ld d, c                                       ; $7794: $51
    jr c, jr_0d2_77cd                             ; $7795: $38 $36

    cp $52                                        ; $7797: $fe $52
    ld [bc], a                                    ; $7799: $02
    nop                                           ; $779a: $00
    ld e, a                                       ; $779b: $5f
    inc bc                                        ; $779c: $03
    ret z                                         ; $779d: $c8

    ld d, c                                       ; $779e: $51
    jp hl                                         ; $779f: $e9


    ld d, c                                       ; $77a0: $51
    ld bc, $8e00                                  ; $77a1: $01 $00 $8e
    ld a, [hl+]                                   ; $77a4: $2a
    ld e, l                                       ; $77a5: $5d
    ld [bc], a                                    ; $77a6: $02
    push bc                                       ; $77a7: $c5
    db $10                                        ; $77a8: $10
    jr nz, jr_0d2_77ab                            ; $77a9: $20 $00

jr_0d2_77ab:
    rlca                                          ; $77ab: $07
    dec d                                         ; $77ac: $15
    ld l, $1d                                     ; $77ad: $2e $1d
    and e                                         ; $77af: $a3
    inc c                                         ; $77b0: $0c
    add d                                         ; $77b1: $82
    inc b                                         ; $77b2: $04
    add a                                         ; $77b3: $87
    ld c, l                                       ; $77b4: $4d
    ld [$851d], a                                 ; $77b5: $ea $1d $85
    add hl, bc                                    ; $77b8: $09
    ld [bc], a                                    ; $77b9: $02
    nop                                           ; $77ba: $00
    ld e, a                                       ; $77bb: $5f
    inc bc                                        ; $77bc: $03
    add a                                         ; $77bd: $87
    ld c, l                                       ; $77be: $4d
    jp nz, $0204                                  ; $77bf: $c2 $04 $02

    nop                                           ; $77c2: $00
    xor c                                         ; $77c3: $a9
    dec d                                         ; $77c4: $15
    ld e, e                                       ; $77c5: $5b
    ld bc, $035f                                  ; $77c6: $01 $5f $03
    ld h, c                                       ; $77c9: $61
    inc c                                         ; $77ca: $0c
    ld a, $2e                                     ; $77cb: $3e $2e

jr_0d2_77cd:
    xor b                                         ; $77cd: $a8
    inc c                                         ; $77ce: $0c
    push hl                                       ; $77cf: $e5
    inc d                                         ; $77d0: $14
    nop                                           ; $77d1: $00
    nop                                           ; $77d2: $00
    dec hl                                        ; $77d3: $2b
    ld e, $e5                                     ; $77d4: $1e $e5
    db $10                                        ; $77d6: $10
    ld d, d                                       ; $77d7: $52

jr_0d2_77d8:
    dec e                                         ; $77d8: $1d
    ld b, c                                       ; $77d9: $41
    nop                                           ; $77da: $00
    ld h, a                                       ; $77db: $67
    ld c, c                                       ; $77dc: $49
    ld e, a                                       ; $77dd: $5f
    inc bc                                        ; $77de: $03
    dec hl                                        ; $77df: $2b
    ld a, [de]                                    ; $77e0: $1a
    ld [bc], a                                    ; $77e1: $02
    nop                                           ; $77e2: $00
    ld e, e                                       ; $77e3: $5b
    ld bc, $035f                                  ; $77e4: $01 $5f $03
    dec hl                                        ; $77e7: $2b
    ld a, [de]                                    ; $77e8: $1a
    ld e, e                                       ; $77e9: $5b
    ld bc, $035f                                  ; $77ea: $01 $5f $03
    ld e, a                                       ; $77ed: $5f
    inc bc                                        ; $77ee: $03
    dec hl                                        ; $77ef: $2b
    ld a, [de]                                    ; $77f0: $1a
    ld e, e                                       ; $77f1: $5b
    ld bc, $035f                                  ; $77f2: $01 $5f $03
    ld e, a                                       ; $77f5: $5f
    inc bc                                        ; $77f6: $03
    dec hl                                        ; $77f7: $2b
    ld a, [de]                                    ; $77f8: $1a
    ld [bc], a                                    ; $77f9: $02
    nop                                           ; $77fa: $00
    ld e, e                                       ; $77fb: $5b
    ld bc, $035f                                  ; $77fc: $01 $5f $03
    dec hl                                        ; $77ff: $2b
    ld a, [de]                                    ; $7800: $1a

jr_0d2_7801:
    ld [bc], a                                    ; $7801: $02
    nop                                           ; $7802: $00
    ld e, e                                       ; $7803: $5b
    ld bc, $035f                                  ; $7804: $01 $5f $03
    ld hl, $a504                                  ; $7807: $21 $04 $a5
    inc d                                         ; $780a: $14
    ld e, a                                       ; $780b: $5f
    inc bc                                        ; $780c: $03
    sub h                                         ; $780d: $94
    ld e, d                                       ; $780e: $5a
    adc h                                         ; $780f: $8c
    ld sp, $0c63                                  ; $7810: $31 $63 $0c
    ld e, a                                       ; $7813: $5f
    inc bc                                        ; $7814: $03
    or l                                          ; $7815: $b5
    ld d, [hl]                                    ; $7816: $56
    ld l, e                                       ; $7817: $6b
    dec l                                         ; $7818: $2d
    nop                                           ; $7819: $00
    nop                                           ; $781a: $00
    ld e, a                                       ; $781b: $5f
    inc bc                                        ; $781c: $03
    ld hl, $0204                                  ; $781d: $21 $04 $02
    nop                                           ; $7820: $00
    ld bc, $3100                                  ; $7821: $01 $00 $31
    ld c, d                                       ; $7824: $4a
    ld e, l                                       ; $7825: $5d
    ld [bc], a                                    ; $7826: $02
    add $18                                       ; $7827: $c6 $18
    ld [$3131], sp                                ; $7829: $08 $31 $31
    ld d, [hl]                                    ; $782c: $56
    ld sp, $8c7a                                  ; $782d: $31 $7a $8c
    ld c, c                                       ; $7830: $49
    add $18                                       ; $7831: $c6 $18
    ld d, c                                       ; $7833: $51
    ld e, d                                       ; $7834: $5a
    adc h                                         ; $7835: $8c
    dec a                                         ; $7836: $3d
    sub $66                                       ; $7837: $d6 $66
    nop                                           ; $7839: $00
    nop                                           ; $783a: $00
    ld e, a                                       ; $783b: $5f
    inc bc                                        ; $783c: $03
    rst $20                                       ; $783d: $e7
    inc e                                         ; $783e: $1c
    ld hl, HeaderLogo                             ; $783f: $21 $04 $01
    nop                                           ; $7842: $00
    ld d, d                                       ; $7843: $52
    ld d, d                                       ; $7844: $52
    ld e, l                                       ; $7845: $5d
    ld [bc], a                                    ; $7846: $02
    add $18                                       ; $7847: $c6 $18
    ld b, d                                       ; $7849: $42
    jr z, jr_0d2_77d8                             ; $784a: $28 $8c

    ld b, l                                       ; $784c: $45
    jr z, jr_0d2_78b4                             ; $784d: $28 $65

    ld [$a53d], sp                                ; $784f: $08 $3d $a5
    jr c, jr_0d2_7801                             ; $7852: $38 $ad

    ld [hl], l                                    ; $7854: $75
    sub e                                         ; $7855: $93
    ld [hl], d                                    ; $7856: $72
    ld l, e                                       ; $7857: $6b
    dec a                                         ; $7858: $3d
    nop                                           ; $7859: $00
    nop                                           ; $785a: $00
    sub h                                         ; $785b: $94
    ld d, [hl]                                    ; $785c: $56
    ld e, a                                       ; $785d: $5f
    inc bc                                        ; $785e: $03
    rst $20                                       ; $785f: $e7
    inc e                                         ; $7860: $1c
    ld [bc], a                                    ; $7861: $02
    nop                                           ; $7862: $00
    ld l, e                                       ; $7863: $6b
    dec [hl]                                      ; $7864: $35
    ld e, l                                       ; $7865: $5d
    ld [bc], a                                    ; $7866: $02
    sub h                                         ; $7867: $94
    ld h, [hl]                                    ; $7868: $66
    adc h                                         ; $7869: $8c
    ld l, c                                       ; $786a: $69
    rst $30                                       ; $786b: $f7
    ld a, d                                       ; $786c: $7a
    xor $71                                       ; $786d: $ee $71
    jr nc, jr_0d2_78e7                            ; $786f: $30 $76

    push bc                                       ; $7871: $c5
    jr nc, jr_0d2_78a5                            ; $7872: $30 $31

    ld a, d                                       ; $7874: $7a
    jr z, jr_0d2_78d8                             ; $7875: $28 $61

    push de                                       ; $7877: $d5
    ld [hl], d                                    ; $7878: $72
    ld b, d                                       ; $7879: $42
    ld [$41ce], sp                                ; $787a: $08 $ce $41
    ld e, a                                       ; $787d: $5f
    inc bc                                        ; $787e: $03
    or l                                          ; $787f: $b5
    ld h, d                                       ; $7880: $62
    ld [bc], a                                    ; $7881: $02
    nop                                           ; $7882: $00
    call Call_0d2_5d59                            ; $7883: $cd $59 $5d
    ld [bc], a                                    ; $7886: $02
    add h                                         ; $7887: $84
    inc a                                         ; $7888: $3c
    nop                                           ; $7889: $00
    inc c                                         ; $788a: $0c
    ld b, d                                       ; $788b: $42
    ld b, b                                       ; $788c: $40
    add $54                                       ; $788d: $c6 $54
    nop                                           ; $788f: $00
    jr nz, jr_0d2_78f5                            ; $7890: $20 $63

    inc [hl]                                      ; $7892: $34
    adc $59                                       ; $7893: $ce $59
    sub h                                         ; $7895: $94
    ld a, d                                       ; $7896: $7a
    ld [$635d], sp                                ; $7897: $08 $5d $63
    db $10                                        ; $789a: $10
    ld l, e                                       ; $789b: $6b
    ld b, l                                       ; $789c: $45
    ld e, a                                       ; $789d: $5f
    inc bc                                        ; $789e: $03
    sub e                                         ; $789f: $93
    ld e, d                                       ; $78a0: $5a
    ld bc, $ce00                                  ; $78a1: $01 $00 $ce
    ld d, l                                       ; $78a4: $55

jr_0d2_78a5:
    ld e, l                                       ; $78a5: $5d
    ld [bc], a                                    ; $78a6: $02
    ld b, d                                       ; $78a7: $42
    jr nc, @+$23                                  ; $78a8: $30 $21

    inc c                                         ; $78aa: $0c
    sub h                                         ; $78ab: $94
    ld c, [hl]                                    ; $78ac: $4e
    ld [$f731], sp                                ; $78ad: $08 $31 $f7
    ld a, [hl]                                    ; $78b0: $7e
    ld hl, $6a18                                  ; $78b1: $21 $18 $6a

jr_0d2_78b4:
    ld h, l                                       ; $78b4: $65
    add e                                         ; $78b5: $83
    ld c, b                                       ; $78b6: $48
    or l                                          ; $78b7: $b5
    ld l, d                                       ; $78b8: $6a
    ld bc, $7300                                  ; $78b9: $01 $00 $73
    ld h, [hl]                                    ; $78bc: $66
    ld e, a                                       ; $78bd: $5f
    inc bc                                        ; $78be: $03
    rst $20                                       ; $78bf: $e7
    jr nz, jr_0d2_78c3                            ; $78c0: $20 $01

    nop                                           ; $78c2: $00

jr_0d2_78c3:
    adc h                                         ; $78c3: $8c
    ld sp, $025d                                  ; $78c4: $31 $5d $02
    ld d, d                                       ; $78c7: $52

jr_0d2_78c8:
    ld e, [hl]                                    ; $78c8: $5e
    ld hl, $1030                                  ; $78c9: $21 $30 $10
    ld d, d                                       ; $78cc: $52
    rst $20                                       ; $78cd: $e7
    ld b, h                                       ; $78ce: $44
    add hl, sp                                    ; $78cf: $39
    ld a, a                                       ; $78d0: $7f
    nop                                           ; $78d1: $00
    ld [$6820], sp                                ; $78d2: $08 $20 $68
    ld c, d                                       ; $78d5: $4a
    ld c, l                                       ; $78d6: $4d
    ld h, e                                       ; $78d7: $63

jr_0d2_78d8:
    inc h                                         ; $78d8: $24
    ld b, d                                       ; $78d9: $42
    db $10                                        ; $78da: $10
    rst $28                                       ; $78db: $ef
    ld e, l                                       ; $78dc: $5d
    ld e, a                                       ; $78dd: $5f
    inc bc                                        ; $78de: $03
    add $4c                                       ; $78df: $c6 $4c
    ld [bc], a                                    ; $78e1: $02
    nop                                           ; $78e2: $00

jr_0d2_78e3:
    ld e, l                                       ; $78e3: $5d
    ld [bc], a                                    ; $78e4: $02
    sub $62                                       ; $78e5: $d6 $62

jr_0d2_78e7:
    ld [$0025], sp                                ; $78e7: $08 $25 $00
    inc d                                         ; $78ea: $14
    add hl, sp                                    ; $78eb: $39
    ld [hl], a                                    ; $78ec: $77
    xor h                                         ; $78ed: $ac
    ld b, c                                       ; $78ee: $41
    and h                                         ; $78ef: $a4
    ld l, h                                       ; $78f0: $6c
    and l                                         ; $78f1: $a5
    jr z, jr_0d2_78e3                             ; $78f2: $28 $ef

    ld d, l                                       ; $78f4: $55

jr_0d2_78f5:
    jr nz, jr_0d2_796f                            ; $78f5: $20 $78

    add hl, sp                                    ; $78f7: $39
    ld a, e                                       ; $78f8: $7b
    ld bc, $9308                                  ; $78f9: $01 $08 $93
    ld h, d                                       ; $78fc: $62
    ld e, a                                       ; $78fd: $5f
    inc bc                                        ; $78fe: $03
    ld h, e                                       ; $78ff: $63
    inc [hl]                                      ; $7900: $34
    ld [bc], a                                    ; $7901: $02
    nop                                           ; $7902: $00
    ld e, l                                       ; $7903: $5d
    ld [bc], a                                    ; $7904: $02
    ld [hl], e                                    ; $7905: $73
    ld d, [hl]                                    ; $7906: $56
    rst $20                                       ; $7907: $e7
    jr z, jr_0d2_796d                             ; $7908: $28 $63

    inc e                                         ; $790a: $1c
    cp l                                          ; $790b: $bd
    ld a, a                                       ; $790c: $7f
    ld sp, $b552                                  ; $790d: $31 $52 $b5
    ld h, [hl]                                    ; $7910: $66
    sub $6a                                       ; $7911: $d6 $6a
    ld e, d                                       ; $7913: $5a
    ld a, a                                       ; $7914: $7f
    cp l                                          ; $7915: $bd
    ld a, a                                       ; $7916: $7f
    jr jr_0d2_7994                                ; $7917: $18 $7b

    ld hl, $6b04                                  ; $7919: $21 $04 $6b
    add hl, sp                                    ; $791c: $39
    ld e, a                                       ; $791d: $5f
    inc bc                                        ; $791e: $03
    ld [hl], e                                    ; $791f: $73
    ld e, [hl]                                    ; $7920: $5e
    ld [bc], a                                    ; $7921: $02
    nop                                           ; $7922: $00
    adc h                                         ; $7923: $8c
    ld b, l                                       ; $7924: $45
    ld e, l                                       ; $7925: $5d
    ld [bc], a                                    ; $7926: $02
    or l                                          ; $7927: $b5
    ld h, [hl]                                    ; $7928: $66
    and l                                         ; $7929: $a5
    jr z, jr_0d2_78c8                             ; $792a: $28 $9c

    ld a, a                                       ; $792c: $7f
    xor l                                         ; $792d: $ad
    ld c, l                                       ; $792e: $4d
    adc $5d                                       ; $792f: $ce $5d
    ld hl, $9414                                  ; $7931: $21 $14 $94
    ld l, d                                       ; $7934: $6a
    adc h                                         ; $7935: $8c
    ld d, c                                       ; $7936: $51
    cp l                                          ; $7937: $bd
    ld a, a                                       ; $7938: $7f
    ld b, e                                       ; $7939: $43
    ld [$5e31], sp                                ; $793a: $08 $31 $5e
    ld e, a                                       ; $793d: $5f
    inc bc                                        ; $793e: $03
    rst $20                                       ; $793f: $e7
    jr c, jr_0d2_7944                             ; $7940: $38 $02

    nop                                           ; $7942: $00
    add hl, hl                                    ; $7943: $29

jr_0d2_7944:
    add hl, sp                                    ; $7944: $39
    ld e, l                                       ; $7945: $5d
    ld [bc], a                                    ; $7946: $02
    db $10                                        ; $7947: $10
    ld d, d                                       ; $7948: $52
    db $10                                        ; $7949: $10
    ld l, d                                       ; $794a: $6a
    rst $30                                       ; $794b: $f7
    halt                                          ; $794c: $76
    sbc h                                         ; $794d: $9c

jr_0d2_794e:
    ld a, a                                       ; $794e: $7f
    ld sp, $a552                                  ; $794f: $31 $52 $a5
    jr nz, jr_0d2_79ae                            ; $7952: $20 $5a

    ld a, e                                       ; $7954: $7b
    ld l, e                                       ; $7955: $6b
    dec a                                         ; $7956: $3d
    db $10                                        ; $7957: $10
    ld c, d                                       ; $7958: $4a
    ld b, e                                       ; $7959: $43
    ld [$3d8c], sp                                ; $795a: $08 $8c $3d
    ld e, a                                       ; $795d: $5f
    inc bc                                        ; $795e: $03
    ld sp, $0266                                  ; $795f: $31 $66 $02

jr_0d2_7962:
    nop                                           ; $7962: $00
    adc h                                         ; $7963: $8c
    ld b, c                                       ; $7964: $41
    ld e, l                                       ; $7965: $5d
    ld [bc], a                                    ; $7966: $02
    or l                                          ; $7967: $b5
    ld l, d                                       ; $7968: $6a
    ld l, e                                       ; $7969: $6b
    ld b, c                                       ; $796a: $41
    rst $30                                       ; $796b: $f7
    ld [hl], d                                    ; $796c: $72

jr_0d2_796d:
    cp l                                          ; $796d: $bd
    ld a, a                                       ; $796e: $7f

jr_0d2_796f:
    db $10                                        ; $796f: $10
    ld d, d                                       ; $7970: $52
    ld hl, $7b10                                  ; $7971: $21 $10 $7b
    ld a, e                                       ; $7974: $7b
    rst $20                                       ; $7975: $e7
    inc l                                         ; $7976: $2c
    ld l, e                                       ; $7977: $6b
    ld b, l                                       ; $7978: $45
    ld b, e                                       ; $7979: $43
    ld [$5610], sp                                ; $797a: $08 $10 $56
    ld e, a                                       ; $797d: $5f
    inc bc                                        ; $797e: $03
    ld [$0129], sp                                ; $797f: $08 $29 $01
    nop                                           ; $7982: $00
    ld sp, $5d6a                                  ; $7983: $31 $6a $5d
    ld [bc], a                                    ; $7986: $02
    ld h, e                                       ; $7987: $63
    jr z, jr_0d2_79ab                             ; $7988: $28 $21

    db $10                                        ; $798a: $10
    add hl, sp                                    ; $798b: $39
    ld a, e                                       ; $798c: $7b
    ld [$ac41], sp                                ; $798d: $08 $41 $ac
    ld c, l                                       ; $7990: $4d
    and l                                         ; $7991: $a5
    jr z, jr_0d2_7962                             ; $7992: $28 $ce

jr_0d2_7994:
    ld e, l                                       ; $7994: $5d
    jr jr_0d2_7a12                                ; $7995: $18 $7b

    ld c, c                                       ; $7997: $49
    dec a                                         ; $7998: $3d
    ld bc, $ee04                                  ; $7999: $01 $04 $ee
    ld c, l                                       ; $799c: $4d
    ld e, a                                       ; $799d: $5f
    inc bc                                        ; $799e: $03
    and l                                         ; $799f: $a5
    inc l                                         ; $79a0: $2c
    ld bc, $2900                                  ; $79a1: $01 $00 $29
    ld l, c                                       ; $79a4: $69
    ld e, l                                       ; $79a5: $5d
    ld [bc], a                                    ; $79a6: $02
    ld b, d                                       ; $79a7: $42
    inc l                                         ; $79a8: $2c
    ld b, d                                       ; $79a9: $42
    db $10                                        ; $79aa: $10

jr_0d2_79ab:
    ld [hl], e                                    ; $79ab: $73
    ld l, [hl]                                    ; $79ac: $6e
    ld a, e                                       ; $79ad: $7b

jr_0d2_79ae:
    ld a, a                                       ; $79ae: $7f
    ld c, d                                       ; $79af: $4a
    ld c, c                                       ; $79b0: $49
    ld hl, $4a20                                  ; $79b1: $21 $20 $4a
    ld e, l                                       ; $79b4: $5d
    ld d, c                                       ; $79b5: $51
    halt                                          ; $79b6: $76
    rst $28                                       ; $79b7: $ef
    ld d, c                                       ; $79b8: $51
    ld b, d                                       ; $79b9: $42
    inc c                                         ; $79ba: $0c
    sub h                                         ; $79bb: $94
    ld [hl], d                                    ; $79bc: $72
    ld e, a                                       ; $79bd: $5f
    inc bc                                        ; $79be: $03
    ld [$0141], sp                                ; $79bf: $08 $41 $01
    nop                                           ; $79c2: $00
    call Call_0d2_5d75                            ; $79c3: $cd $75 $5d
    ld [bc], a                                    ; $79c6: $02
    ld h, e                                       ; $79c7: $63
    jr c, jr_0d2_794e                             ; $79c8: $38 $84

    jr z, jr_0d2_7a1e                             ; $79ca: $28 $52

    ld [hl], d                                    ; $79cc: $72
    ld l, e                                       ; $79cd: $6b
    ld c, l                                       ; $79ce: $4d
    add hl, sp                                    ; $79cf: $39
    ld a, a                                       ; $79d0: $7f
    nop                                           ; $79d1: $00
    db $10                                        ; $79d2: $10
    and h                                         ; $79d3: $a4
    ld e, h                                       ; $79d4: $5c
    call Call_0d2_636d                            ; $79d5: $cd $6d $63
    inc a                                         ; $79d8: $3c
    ld [bc], a                                    ; $79d9: $02
    nop                                           ; $79da: $00
    ld l, e                                       ; $79db: $6b
    ld l, l                                       ; $79dc: $6d
    ld e, a                                       ; $79dd: $5f
    inc bc                                        ; $79de: $03
    sub $7e                                       ; $79df: $d6 $7e
    ld [bc], a                                    ; $79e1: $02
    nop                                           ; $79e2: $00
    ld e, e                                       ; $79e3: $5b
    ld bc, $035f                                  ; $79e4: $01 $5f $03
    sub $7e                                       ; $79e7: $d6 $7e
    ld e, e                                       ; $79e9: $5b
    ld bc, $035f                                  ; $79ea: $01 $5f $03
    ld e, a                                       ; $79ed: $5f
    inc bc                                        ; $79ee: $03
    sub $7e                                       ; $79ef: $d6 $7e
    ld e, e                                       ; $79f1: $5b
    ld bc, $035f                                  ; $79f2: $01 $5f $03
    ld e, a                                       ; $79f5: $5f
    inc bc                                        ; $79f6: $03

jr_0d2_79f7:
    sub $7e                                       ; $79f7: $d6 $7e
    ld [bc], a                                    ; $79f9: $02
    nop                                           ; $79fa: $00
    ld e, e                                       ; $79fb: $5b
    ld bc, $035f                                  ; $79fc: $01 $5f $03
    sub $7e                                       ; $79ff: $d6 $7e
    ld bc, $5b00                                  ; $7a01: $01 $00 $5b
    ld bc, $035f                                  ; $7a04: $01 $5f $03
    add $18                                       ; $7a07: $c6 $18
    adc $41                                       ; $7a09: $ce $41
    ld e, a                                       ; $7a0b: $5f
    inc bc                                        ; $7a0c: $03
    ld sp, $b552                                  ; $7a0d: $31 $52 $b5
    ld h, [hl]                                    ; $7a10: $66
    rst $20                                       ; $7a11: $e7

jr_0d2_7a12:
    inc e                                         ; $7a12: $1c
    ld e, a                                       ; $7a13: $5f
    inc bc                                        ; $7a14: $03
    ld d, c                                       ; $7a15: $51
    ld c, [hl]                                    ; $7a16: $4e
    ld l, e                                       ; $7a17: $6b
    dec l                                         ; $7a18: $2d
    ld bc, $5f00                                  ; $7a19: $01 $00 $5f
    inc bc                                        ; $7a1c: $03
    and l                                         ; $7a1d: $a5

jr_0d2_7a1e:
    inc d                                         ; $7a1e: $14
    ld b, d                                       ; $7a1f: $42
    ld [$0001], sp                                ; $7a20: $08 $01 $00
    ld sp, $5d46                                  ; $7a23: $31 $46 $5d
    ld [bc], a                                    ; $7a26: $02
    and l                                         ; $7a27: $a5
    inc d                                         ; $7a28: $14
    ld [$3139], sp                                ; $7a29: $08 $39 $31
    ld e, d                                       ; $7a2c: $5a
    ld sp, $4a7e                                  ; $7a2d: $31 $7e $4a
    ld e, l                                       ; $7a30: $5d
    add $24                                       ; $7a31: $c6 $24
    sub h                                         ; $7a33: $94
    ld h, [hl]                                    ; $7a34: $66
    ld [$ad55], sp                                ; $7a35: $08 $55 $ad
    ld b, l                                       ; $7a38: $45
    ld hl, $3104                                  ; $7a39: $21 $04 $31
    ld b, [hl]                                    ; $7a3c: $46
    ld e, a                                       ; $7a3d: $5f
    inc bc                                        ; $7a3e: $03
    add $18                                       ; $7a3f: $c6 $18
    ld [bc], a                                    ; $7a41: $02
    nop                                           ; $7a42: $00
    ld c, d                                       ; $7a43: $4a
    dec [hl]                                      ; $7a44: $35
    ld e, l                                       ; $7a45: $5d
    ld [bc], a                                    ; $7a46: $02
    sub h                                         ; $7a47: $94

jr_0d2_7a48:
    ld e, d                                       ; $7a48: $5a
    push bc                                       ; $7a49: $c5
    ld c, b                                       ; $7a4a: $48
    jr nc, @+$78                                  ; $7a4b: $30 $76

    jr jr_0d2_7ace                                ; $7a4d: $18 $7f

    ld l, d                                       ; $7a4f: $6a
    ld l, l                                       ; $7a50: $6d
    ld hl, $ad10                                  ; $7a51: $21 $10 $ad
    ld l, l                                       ; $7a54: $6d
    add $40                                       ; $7a55: $c6 $40
    jr jr_0d2_7ad8                                ; $7a57: $18 $7f

    ld h, h                                       ; $7a59: $64
    inc c                                         ; $7a5a: $0c
    or l                                          ; $7a5b: $b5
    ld e, d                                       ; $7a5c: $5a
    ld e, a                                       ; $7a5d: $5f
    inc bc                                        ; $7a5e: $03
    ld c, d                                       ; $7a5f: $4a
    dec l                                         ; $7a60: $2d
    ld [bc], a                                    ; $7a61: $02
    nop                                           ; $7a62: $00
    adc $45                                       ; $7a63: $ce $45
    ld e, l                                       ; $7a65: $5d
    ld [bc], a                                    ; $7a66: $02
    add e                                         ; $7a67: $83
    ld c, b                                       ; $7a68: $48
    nop                                           ; $7a69: $00
    jr jr_0d2_79f7                                ; $7a6a: $18 $8b

    ld [hl], l                                    ; $7a6c: $75
    add h                                         ; $7a6d: $84
    ld b, b                                       ; $7a6e: $40
    ld [hl], d                                    ; $7a6f: $72
    ld [hl], d                                    ; $7a70: $72
    ld h, e                                       ; $7a71: $63
    inc l                                         ; $7a72: $2c
    ld [$306d], sp                                ; $7a73: $08 $6d $30
    ld a, d                                       ; $7a76: $7a
    ld b, d                                       ; $7a77: $42
    ld c, h                                       ; $7a78: $4c
    ld [bc], a                                    ; $7a79: $02
    nop                                           ; $7a7a: $00
    ld [hl], e                                    ; $7a7b: $73
    ld e, d                                       ; $7a7c: $5a
    ld e, a                                       ; $7a7d: $5f

jr_0d2_7a7e:
    inc bc                                        ; $7a7e: $03
    rst $20                                       ; $7a7f: $e7

jr_0d2_7a80:
    inc l                                         ; $7a80: $2c
    ld [bc], a                                    ; $7a81: $02
    nop                                           ; $7a82: $00
    xor h                                         ; $7a83: $ac
    ld d, c                                       ; $7a84: $51
    ld e, l                                       ; $7a85: $5d
    ld [bc], a                                    ; $7a86: $02
    ld [hl], d                                    ; $7a87: $72
    ld a, d                                       ; $7a88: $7a
    ld hl, $ce18                                  ; $7a89: $21 $18 $ce
    ld e, c                                       ; $7a8c: $59
    rst $30                                       ; $7a8d: $f7
    ld a, d                                       ; $7a8e: $7a
    ld l, d                                       ; $7a8f: $6a
    ld b, l                                       ; $7a90: $45

jr_0d2_7a91:
    ld hl, $e710                                  ; $7a91: $21 $10 $e7
    ld l, h                                       ; $7a94: $6c
    ld b, d                                       ; $7a95: $42
    jr c, jr_0d2_7a7e                             ; $7a96: $38 $e6

    inc a                                         ; $7a98: $3c
    ld [bc], a                                    ; $7a99: $02
    nop                                           ; $7a9a: $00
    ld sp, $5f62                                  ; $7a9b: $31 $62 $5f
    inc bc                                        ; $7a9e: $03
    ld [$013d], sp                                ; $7a9f: $08 $3d $01
    nop                                           ; $7aa2: $00
    xor l                                         ; $7aa3: $ad
    ld c, c                                       ; $7aa4: $49
    ld e, l                                       ; $7aa5: $5d
    ld [bc], a                                    ; $7aa6: $02
    ld b, d                                       ; $7aa7: $42
    jr c, jr_0d2_7a91                             ; $7aa8: $38 $e7

    jr c, @-$6a                                   ; $7aaa: $38 $94

    ld h, d                                       ; $7aac: $62
    xor h                                         ; $7aad: $ac
    ld d, c                                       ; $7aae: $51
    ld a, e                                       ; $7aaf: $7b
    ld [hl], a                                    ; $7ab0: $77

jr_0d2_7ab1:
    ld h, d                                       ; $7ab1: $62
    jr nz, jr_0d2_7a48                            ; $7ab2: $20 $94

    halt                                          ; $7ab4: $76
    ld l, e                                       ; $7ab5: $6b
    ld d, l                                       ; $7ab6: $55
    ld a, e                                       ; $7ab7: $7b
    ld a, e                                       ; $7ab8: $7b
    ld h, h                                       ; $7ab9: $64
    inc c                                         ; $7aba: $0c
    ld l, e                                       ; $7abb: $6b
    ld h, l                                       ; $7abc: $65
    ld e, a                                       ; $7abd: $5f
    inc bc                                        ; $7abe: $03
    or l                                          ; $7abf: $b5
    ld [hl], d                                    ; $7ac0: $72
    ld bc, $ee00                                  ; $7ac1: $01 $00 $ee
    ld c, l                                       ; $7ac4: $4d
    ld e, l                                       ; $7ac5: $5d
    ld [bc], a                                    ; $7ac6: $02
    add h                                         ; $7ac7: $84
    jr nc, jr_0d2_7ab1                            ; $7ac8: $30 $e7

    inc l                                         ; $7aca: $2c
    ld e, c                                       ; $7acb: $59
    ld a, a                                       ; $7acc: $7f
    rst $28                                       ; $7acd: $ef

jr_0d2_7ace:
    ld h, c                                       ; $7ace: $61
    adc e                                         ; $7acf: $8b
    dec a                                         ; $7ad0: $3d
    rlca                                          ; $7ad1: $07
    add hl, sp                                    ; $7ad2: $39
    ld d, d                                       ; $7ad3: $52
    ld l, d                                       ; $7ad4: $6a
    ld l, e                                       ; $7ad5: $6b
    ld d, l                                       ; $7ad6: $55
    ld a, c                                       ; $7ad7: $79

jr_0d2_7ad8:
    ld a, a                                       ; $7ad8: $7f
    ld bc, $510c                                  ; $7ad9: $01 $0c $51
    ld c, [hl]                                    ; $7adc: $4e
    ld e, a                                       ; $7add: $5f
    inc bc                                        ; $7ade: $03
    add h                                         ; $7adf: $84
    inc a                                         ; $7ae0: $3c
    ld [bc], a                                    ; $7ae1: $02
    nop                                           ; $7ae2: $00
    ld l, e                                       ; $7ae3: $6b
    ld b, c                                       ; $7ae4: $41
    ld e, l                                       ; $7ae5: $5d
    ld [bc], a                                    ; $7ae6: $02
    or l                                          ; $7ae7: $b5
    ld [hl], d                                    ; $7ae8: $72
    ld hl, $ad08                                  ; $7ae9: $21 $08 $ad
    ld h, c                                       ; $7aec: $61
    push bc                                       ; $7aed: $c5
    jr nc, @+$1a                                  ; $7aee: $30 $18

    ld [hl], a                                    ; $7af0: $77
    ld b, d                                       ; $7af1: $42
    jr jr_0d2_7a80                                ; $7af2: $18 $8c

    ld d, c                                       ; $7af4: $51
    or $6a                                        ; $7af5: $f6 $6a
    jr z, jr_0d2_7b26                             ; $7af7: $28 $2d

    ld bc, $520c                                  ; $7af9: $01 $0c $52
    ld c, [hl]                                    ; $7afc: $4e
    ld e, a                                       ; $7afd: $5f
    inc bc                                        ; $7afe: $03
    rst $20                                       ; $7aff: $e7
    inc h                                         ; $7b00: $24
    ld [bc], a                                    ; $7b01: $02
    nop                                           ; $7b02: $00
    rst $20                                       ; $7b03: $e7
    ld c, b                                       ; $7b04: $48
    ld e, l                                       ; $7b05: $5d
    ld [bc], a                                    ; $7b06: $02
    ld sp, $c67e                                  ; $7b07: $31 $7e $c6
    jr nz, @-$6a                                  ; $7b0a: $20 $94

    ld l, [hl]                                    ; $7b0c: $6e
    adc h                                         ; $7b0d: $8c
    ld c, c                                       ; $7b0e: $49
    ld a, e                                       ; $7b0f: $7b
    ld a, a                                       ; $7b10: $7f
    ld h, e                                       ; $7b11: $63
    jr z, jr_0d2_7b2c                             ; $7b12: $28 $18

    ld [hl], e                                    ; $7b14: $73
    ld l, e                                       ; $7b15: $6b
    ld b, l                                       ; $7b16: $45
    call $0165                                    ; $7b17: $cd $65 $01
    ld [$5230], sp                                ; $7b1a: $08 $30 $52
    ld e, a                                       ; $7b1d: $5f
    inc bc                                        ; $7b1e: $03
    ld [$012d], sp                                ; $7b1f: $08 $2d $01
    nop                                           ; $7b22: $00
    sub $66                                       ; $7b23: $d6 $66
    ld h, e                                       ; $7b25: $63

jr_0d2_7b26:
    jr c, jr_0d2_7b85                             ; $7b26: $38 $5d

    ld [bc], a                                    ; $7b28: $02
    ld [$393d], sp                                ; $7b29: $08 $3d $39

jr_0d2_7b2c:
    ld a, e                                       ; $7b2c: $7b
    ld sp, $bd5e                                  ; $7b2d: $31 $5e $bd
    ld a, a                                       ; $7b30: $7f
    ld h, d                                       ; $7b31: $62
    jr nz, jr_0d2_7b44                            ; $7b32: $20 $10

    ld l, [hl]                                    ; $7b34: $6e
    ld [$bd4d], sp                                ; $7b35: $08 $4d $bd
    ld a, a                                       ; $7b38: $7f
    ld b, e                                       ; $7b39: $43
    db $10                                        ; $7b3a: $10
    or l                                          ; $7b3b: $b5
    ld l, [hl]                                    ; $7b3c: $6e
    ld e, a                                       ; $7b3d: $5f
    inc bc                                        ; $7b3e: $03
    ld l, e                                       ; $7b3f: $6b
    ld sp, $0002                                  ; $7b40: $31 $02 $00
    rrca                                          ; $7b43: $0f

jr_0d2_7b44:
    ld c, d                                       ; $7b44: $4a
    ld e, l                                       ; $7b45: $5d
    ld [bc], a                                    ; $7b46: $02
    ld hl, $833c                                  ; $7b47: $21 $3c $83
    inc h                                         ; $7b4a: $24
    ld [hl], e                                    ; $7b4b: $73
    ld l, [hl]                                    ; $7b4c: $6e
    sbc h                                         ; $7b4d: $9c
    ld a, a                                       ; $7b4e: $7f
    ld c, b                                       ; $7b4f: $48
    dec [hl]                                      ; $7b50: $35
    add h                                         ; $7b51: $84
    inc l                                         ; $7b52: $2c
    ld d, d                                       ; $7b53: $52
    ld [hl], d                                    ; $7b54: $72
    adc e                                         ; $7b55: $8b
    ld d, c                                       ; $7b56: $51
    ld e, d                                       ; $7b57: $5a
    ld a, a                                       ; $7b58: $7f
    ld [bc], a                                    ; $7b59: $02
    nop                                           ; $7b5a: $00
    ld [hl], e                                    ; $7b5b: $73
    ld a, d                                       ; $7b5c: $7a
    ld e, a                                       ; $7b5d: $5f
    inc bc                                        ; $7b5e: $03
    xor h                                         ; $7b5f: $ac

jr_0d2_7b60:
    add hl, sp                                    ; $7b60: $39
    ld bc, $ef00                                  ; $7b61: $01 $00 $ef
    ld c, l                                       ; $7b64: $4d
    ld e, l                                       ; $7b65: $5d
    ld [bc], a                                    ; $7b66: $02
    ld h, d                                       ; $7b67: $62
    inc l                                         ; $7b68: $2c
    jp Jump_000_311c                              ; $7b69: $c3 $1c $31


    ld [hl], d                                    ; $7b6c: $72
    ld c, c                                       ; $7b6d: $49
    ld c, c                                       ; $7b6e: $49
    ld hl, sp+$7e                                 ; $7b6f: $f8 $7e
    nop                                           ; $7b71: $00
    nop                                           ; $7b72: $00
    and $4c                                       ; $7b73: $e6 $4c
    adc $61                                       ; $7b75: $ce $61
    and l                                         ; $7b77: $a5
    inc l                                         ; $7b78: $2c
    add l                                         ; $7b79: $85
    inc e                                         ; $7b7a: $1c
    ld e, a                                       ; $7b7b: $5f
    inc bc                                        ; $7b7c: $03
    adc $45                                       ; $7b7d: $ce $45
    ld [$0271], sp                                ; $7b7f: $08 $71 $02
    nop                                           ; $7b82: $00

jr_0d2_7b83:
    xor l                                         ; $7b83: $ad
    ld b, l                                       ; $7b84: $45

jr_0d2_7b85:
    ld e, l                                       ; $7b85: $5d
    ld [bc], a                                    ; $7b86: $02
    push de                                       ; $7b87: $d5
    halt                                          ; $7b88: $76
    jr nz, jr_0d2_7bbf                            ; $7b89: $20 $34

    ld l, e                                       ; $7b8b: $6b
    ld d, c                                       ; $7b8c: $51
    rst $20                                       ; $7b8d: $e7
    inc a                                         ; $7b8e: $3c
    call Call_000_2169                            ; $7b8f: $cd $69 $21
    jr z, jr_0d2_7b83                             ; $7b92: $28 $ef

    ld l, l                                       ; $7b94: $6d
    ld h, e                                       ; $7b95: $63
    ld h, b                                       ; $7b96: $60
    rst $20                                       ; $7b97: $e7
    ld b, b                                       ; $7b98: $40
    ld bc, $5208                                  ; $7b99: $01 $08 $52
    ld d, [hl]                                    ; $7b9c: $56
    ld e, a                                       ; $7b9d: $5f
    inc bc                                        ; $7b9e: $03
    ld [$0131], sp                                ; $7b9f: $08 $31 $01
    nop                                           ; $7ba2: $00
    db $10                                        ; $7ba3: $10
    halt                                          ; $7ba4: $76
    ld e, l                                       ; $7ba5: $5d
    ld [bc], a                                    ; $7ba6: $02
    ld h, e                                       ; $7ba7: $63
    inc l                                         ; $7ba8: $2c
    ld hl, $6b30                                  ; $7ba9: $21 $30 $6b
    ld d, c                                       ; $7bac: $51
    ld sp, $2172                                  ; $7bad: $31 $72 $21
    ld c, h                                       ; $7bb0: $4c
    add h                                         ; $7bb1: $84
    jr z, jr_0d2_7b60                             ; $7bb2: $28 $ac

    ld l, c                                       ; $7bb4: $69
    rst $20                                       ; $7bb5: $e7
    ld e, b                                       ; $7bb6: $58
    sub h                                         ; $7bb7: $94
    ld [hl], d                                    ; $7bb8: $72
    ld b, e                                       ; $7bb9: $43
    inc c                                         ; $7bba: $0c
    sub h                                         ; $7bbb: $94
    ld l, d                                       ; $7bbc: $6a
    ld e, a                                       ; $7bbd: $5f
    inc bc                                        ; $7bbe: $03

jr_0d2_7bbf:
    ld [$0135], sp                                ; $7bbf: $08 $35 $01
    nop                                           ; $7bc2: $00
    jr z, jr_0d2_7c26                             ; $7bc3: $28 $61

    ld e, l                                       ; $7bc5: $5d
    ld [bc], a                                    ; $7bc6: $02
    jr nz, jr_0d2_7bf9                            ; $7bc7: $20 $30

    ld h, e                                       ; $7bc9: $63
    jr nc, jr_0d2_7c3f                            ; $7bca: $30 $73

    ld l, [hl]                                    ; $7bcc: $6e
    add hl, sp                                    ; $7bcd: $39
    ld a, a                                       ; $7bce: $7f
    ld hl, $2144                                  ; $7bcf: $21 $44 $21
    inc c                                         ; $7bd2: $0c
    and $40                                       ; $7bd3: $e6 $40
    ld l, d                                       ; $7bd5: $6a
    ld [hl], l                                    ; $7bd6: $75
    ld b, d                                       ; $7bd7: $42
    ld d, h                                       ; $7bd8: $54
    ld [bc], a                                    ; $7bd9: $02
    nop                                           ; $7bda: $00
    ld c, d                                       ; $7bdb: $4a
    ld [hl], l                                    ; $7bdc: $75
    ld e, a                                       ; $7bdd: $5f
    inc bc                                        ; $7bde: $03
    ld [hl], e                                    ; $7bdf: $73
    ld a, d                                       ; $7be0: $7a
    ld [bc], a                                    ; $7be1: $02
    nop                                           ; $7be2: $00
    ld e, e                                       ; $7be3: $5b
    ld bc, $035f                                  ; $7be4: $01 $5f $03
    ld [hl], e                                    ; $7be7: $73
    ld a, d                                       ; $7be8: $7a
    ld e, e                                       ; $7be9: $5b
    ld bc, $035f                                  ; $7bea: $01 $5f $03
    ld e, a                                       ; $7bed: $5f
    inc bc                                        ; $7bee: $03
    ld [hl], e                                    ; $7bef: $73
    ld a, d                                       ; $7bf0: $7a
    ld e, e                                       ; $7bf1: $5b
    ld bc, $035f                                  ; $7bf2: $01 $5f $03
    ld e, a                                       ; $7bf5: $5f
    inc bc                                        ; $7bf6: $03
    ld [hl], e                                    ; $7bf7: $73
    ld a, d                                       ; $7bf8: $7a

jr_0d2_7bf9:
    ld [bc], a                                    ; $7bf9: $02
    nop                                           ; $7bfa: $00
    ld e, e                                       ; $7bfb: $5b
    ld bc, $035f                                  ; $7bfc: $01 $5f $03
    ld [hl], e                                    ; $7bff: $73
    ld a, d                                       ; $7c00: $7a
    ld bc, $5b00                                  ; $7c01: $01 $00 $5b
    ld bc, $6143                                  ; $7c04: $01 $43 $61
    ld e, a                                       ; $7c07: $5f
    inc bc                                        ; $7c08: $03
    ld b, b                                       ; $7c09: $40
    inc c                                         ; $7c0a: $0c
    ld e, a                                       ; $7c0b: $5f
    inc bc                                        ; $7c0c: $03
    adc h                                         ; $7c0d: $8c
    halt                                          ; $7c0e: $76
    xor [hl]                                      ; $7c0f: $ae
    ld a, d                                       ; $7c10: $7a
    ld b, b                                       ; $7c11: $40
    inc c                                         ; $7c12: $0c
    ld e, a                                       ; $7c13: $5f
    inc bc                                        ; $7c14: $03
    xor h                                         ; $7c15: $ac
    ld [hl], d                                    ; $7c16: $72
    rst $38                                       ; $7c17: $ff
    ld a, a                                       ; $7c18: $7f
    ld bc, $5f00                                  ; $7c19: $01 $00 $5f
    inc bc                                        ; $7c1c: $03
    and e                                         ; $7c1d: $a3
    ld e, l                                       ; $7c1e: $5d
    add b                                         ; $7c1f: $80
    jr nz, jr_0d2_7c23                            ; $7c20: $20 $01

    nop                                           ; $7c22: $00

jr_0d2_7c23:
    ld b, h                                       ; $7c23: $44
    dec a                                         ; $7c24: $3d
    ld e, l                                       ; $7c25: $5d

jr_0d2_7c26:
    ld [bc], a                                    ; $7c26: $02
    and $6d                                       ; $7c27: $e6 $6d
    ld b, b                                       ; $7c29: $40
    inc c                                         ; $7c2a: $0c
    rst $38                                       ; $7c2b: $ff
    ld a, a                                       ; $7c2c: $7f
    add l                                         ; $7c2d: $85
    ld e, d                                       ; $7c2e: $5a
    ld h, [hl]                                    ; $7c2f: $66
    dec l                                         ; $7c30: $2d
    ld b, b                                       ; $7c31: $40
    inc c                                         ; $7c32: $0c
    rst $38                                       ; $7c33: $ff
    ld a, a                                       ; $7c34: $7f
    and h                                         ; $7c35: $a4
    ld h, d                                       ; $7c36: $62
    dec bc                                        ; $7c37: $0b
    ld b, [hl]                                    ; $7c38: $46
    ld hl, $e708                                  ; $7c39: $21 $08 $e7
    ld e, l                                       ; $7c3c: $5d
    ld e, a                                       ; $7c3d: $5f
    inc bc                                        ; $7c3e: $03

jr_0d2_7c3f:
    rst $38                                       ; $7c3f: $ff
    ld a, a                                       ; $7c40: $7f
    ld bc, $5d00                                  ; $7c41: $01 $00 $5d
    ld [bc], a                                    ; $7c44: $02
    and [hl]                                      ; $7c45: $a6
    ld d, l                                       ; $7c46: $55
    rst $38                                       ; $7c47: $ff
    ld a, a                                       ; $7c48: $7f
    and h                                         ; $7c49: $a4
    ld h, d                                       ; $7c4a: $62
    rst $38                                       ; $7c4b: $ff
    ld a, a                                       ; $7c4c: $7f
    dec bc                                        ; $7c4d: $0b
    ld b, [hl]                                    ; $7c4e: $46
    rst $38                                       ; $7c4f: $ff
    ld a, a                                       ; $7c50: $7f
    ld b, b                                       ; $7c51: $40
    inc c                                         ; $7c52: $0c
    rst $38                                       ; $7c53: $ff
    ld a, a                                       ; $7c54: $7f
    and h                                         ; $7c55: $a4
    ld h, d                                       ; $7c56: $62
    dec bc                                        ; $7c57: $0b
    ld b, [hl]                                    ; $7c58: $46
    nop                                           ; $7c59: $00
    inc b                                         ; $7c5a: $04
    ld e, a                                       ; $7c5b: $5f
    inc bc                                        ; $7c5c: $03
    push hl                                       ; $7c5d: $e5
    ld d, c                                       ; $7c5e: $51
    rst $38                                       ; $7c5f: $ff
    ld a, a                                       ; $7c60: $7f
    ld bc, $5d00                                  ; $7c61: $01 $00 $5d
    ld [bc], a                                    ; $7c64: $02
    ld [$ff66], sp                                ; $7c65: $08 $66 $ff
    ld a, a                                       ; $7c68: $7f
    and h                                         ; $7c69: $a4
    ld h, d                                       ; $7c6a: $62
    rst $38                                       ; $7c6b: $ff
    ld a, a                                       ; $7c6c: $7f
    dec bc                                        ; $7c6d: $0b
    ld b, [hl]                                    ; $7c6e: $46
    rst $38                                       ; $7c6f: $ff
    ld a, a                                       ; $7c70: $7f
    ld b, b                                       ; $7c71: $40
    inc c                                         ; $7c72: $0c
    cp $7f                                        ; $7c73: $fe $7f
    and h                                         ; $7c75: $a4
    ld h, d                                       ; $7c76: $62
    dec bc                                        ; $7c77: $0b
    ld b, [hl]                                    ; $7c78: $46
    ld hl, $5f08                                  ; $7c79: $21 $08 $5f
    inc bc                                        ; $7c7c: $03
    ld b, $52                                     ; $7c7d: $06 $52
    rst $38                                       ; $7c7f: $ff
    ld a, a                                       ; $7c80: $7f
    ld bc, $5d00                                  ; $7c81: $01 $00 $5d
    ld [bc], a                                    ; $7c84: $02
    xor [hl]                                      ; $7c85: $ae
    halt                                          ; $7c86: $76
    ld bc, $a449                                  ; $7c87: $01 $49 $a4
    ld h, d                                       ; $7c8a: $62
    rst $38                                       ; $7c8b: $ff
    ld a, a                                       ; $7c8c: $7f
    dec bc                                        ; $7c8d: $0b
    ld b, [hl]                                    ; $7c8e: $46
    ld bc, $6149                                  ; $7c8f: $01 $49 $61
    db $10                                        ; $7c92: $10
    rst $38                                       ; $7c93: $ff
    ld a, a                                       ; $7c94: $7f
    and h                                         ; $7c95: $a4
    ld h, d                                       ; $7c96: $62
    dec bc                                        ; $7c97: $0b
    ld b, [hl]                                    ; $7c98: $46
    jr nz, @+$0a                                  ; $7c99: $20 $08

    daa                                           ; $7c9b: $27
    ld e, [hl]                                    ; $7c9c: $5e
    ld e, a                                       ; $7c9d: $5f
    inc bc                                        ; $7c9e: $03
    rst $38                                       ; $7c9f: $ff
    ld a, a                                       ; $7ca0: $7f
    ld bc, $5d00                                  ; $7ca1: $01 $00 $5d
    ld [bc], a                                    ; $7ca4: $02
    ld b, $66                                     ; $7ca5: $06 $66
    db $fc                                        ; $7ca7: $fc
    ld a, a                                       ; $7ca8: $7f
    ld b, b                                       ; $7ca9: $40
    inc c                                         ; $7caa: $0c
    db $fd                                        ; $7cab: $fd
    ld a, a                                       ; $7cac: $7f
    add $41                                       ; $7cad: $c6 $41
    push bc                                       ; $7caf: $c5
    ld h, [hl]                                    ; $7cb0: $66
    nop                                           ; $7cb1: $00
    inc b                                         ; $7cb2: $04
    adc c                                         ; $7cb3: $89
    ld [hl], a                                    ; $7cb4: $77
    rst $38                                       ; $7cb5: $ff
    ld a, a                                       ; $7cb6: $7f
    push bc                                       ; $7cb7: $c5
    ld b, c                                       ; $7cb8: $41
    ld hl, $5f04                                  ; $7cb9: $21 $04 $5f
    inc bc                                        ; $7cbc: $03
    jp hl                                         ; $7cbd: $e9


    ld c, l                                       ; $7cbe: $4d
    ld d, $7f                                     ; $7cbf: $16 $7f
    ld bc, $5d00                                  ; $7cc1: $01 $00 $5d
    ld [bc], a                                    ; $7cc4: $02
    rlca                                          ; $7cc5: $07
    ld e, d                                       ; $7cc6: $5a
    db $fd                                        ; $7cc7: $fd
    ld a, a                                       ; $7cc8: $7f
    nop                                           ; $7cc9: $00
    inc b                                         ; $7cca: $04
    push hl                                       ; $7ccb: $e5
    ld l, d                                       ; $7ccc: $6a
    cp $7f                                        ; $7ccd: $fe $7f
    and d                                         ; $7ccf: $a2
    dec a                                         ; $7cd0: $3d
    nop                                           ; $7cd1: $00
    nop                                           ; $7cd2: $00
    add e                                         ; $7cd3: $83
    add hl, sp                                    ; $7cd4: $39
    add e                                         ; $7cd5: $83
    ld h, d                                       ; $7cd6: $62
    jr z, jr_0d2_7d50                             ; $7cd7: $28 $77

    ld b, c                                       ; $7cd9: $41
    inc c                                         ; $7cda: $0c
    rst $20                                       ; $7cdb: $e7
    ld h, l                                       ; $7cdc: $65
    ld e, a                                       ; $7cdd: $5f
    inc bc                                        ; $7cde: $03
    rst $38                                       ; $7cdf: $ff
    ld a, a                                       ; $7ce0: $7f
    ld bc, $5d00                                  ; $7ce1: $01 $00 $5d
    ld [bc], a                                    ; $7ce4: $02
    jr z, jr_0d2_7d55                             ; $7ce5: $28 $6e

    db $fc                                        ; $7ce7: $fc
    ld a, a                                       ; $7ce8: $7f
    jr nz, jr_0d2_7cf3                            ; $7ce9: $20 $08

    ld [$dc6e], a                                 ; $7ceb: $ea $6e $dc
    ld a, e                                       ; $7cee: $7b
    dec bc                                        ; $7cef: $0b
    ld b, [hl]                                    ; $7cf0: $46
    nop                                           ; $7cf1: $00
    nop                                           ; $7cf2: $00

jr_0d2_7cf3:
    add h                                         ; $7cf3: $84
    ld e, [hl]                                    ; $7cf4: $5e
    db $dd                                        ; $7cf5: $dd
    ld a, e                                       ; $7cf6: $7b
    ld l, a                                       ; $7cf7: $6f
    ld [hl], a                                    ; $7cf8: $77
    nop                                           ; $7cf9: $00
    inc b                                         ; $7cfa: $04
    ld e, a                                       ; $7cfb: $5f
    inc bc                                        ; $7cfc: $03
    rla                                           ; $7cfd: $17
    ld a, a                                       ; $7cfe: $7f
    dec h                                         ; $7cff: $25
    dec [hl]                                      ; $7d00: $35
    ld bc, $5d00                                  ; $7d01: $01 $00 $5d
    ld [bc], a                                    ; $7d04: $02
    ret z                                         ; $7d05: $c8

    ld e, c                                       ; $7d06: $59
    rst $38                                       ; $7d07: $ff
    ld a, a                                       ; $7d08: $7f
    ld h, b                                       ; $7d09: $60
    inc d                                         ; $7d0a: $14
    ld c, a                                       ; $7d0b: $4f
    ld [hl], e                                    ; $7d0c: $73
    ld b, [hl]                                    ; $7d0d: $46
    ld d, d                                       ; $7d0e: $52
    rst $38                                       ; $7d0f: $ff
    ld a, a                                       ; $7d10: $7f
    ld b, b                                       ; $7d11: $40
    inc c                                         ; $7d12: $0c
    dec h                                         ; $7d13: $25
    ld d, d                                       ; $7d14: $52
    db $fd                                        ; $7d15: $fd

jr_0d2_7d16:
    ld a, a                                       ; $7d16: $7f
    cpl                                           ; $7d17: $2f
    ld l, e                                       ; $7d18: $6b
    ld h, d                                       ; $7d19: $62
    inc c                                         ; $7d1a: $0c
    ld e, a                                       ; $7d1b: $5f
    inc bc                                        ; $7d1c: $03
    ld b, a                                       ; $7d1d: $47
    ld h, d                                       ; $7d1e: $62
    rst $38                                       ; $7d1f: $ff
    ld a, a                                       ; $7d20: $7f
    ld bc, $5d00                                  ; $7d21: $01 $00 $5d
    ld [bc], a                                    ; $7d24: $02
    ld h, $62                                     ; $7d25: $26 $62
    rst $38                                       ; $7d27: $ff
    ld a, a                                       ; $7d28: $7f
    nop                                           ; $7d29: $00
    inc b                                         ; $7d2a: $04
    ld [$a57f], a                                 ; $7d2b: $ea $7f $a5
    add hl, sp                                    ; $7d2e: $39
    rst $38                                       ; $7d2f: $ff
    ld a, a                                       ; $7d30: $7f
    nop                                           ; $7d31: $00
    nop                                           ; $7d32: $00
    add e                                         ; $7d33: $83
    dec a                                         ; $7d34: $3d
    push bc                                       ; $7d35: $c5
    ld h, [hl]                                    ; $7d36: $66
    jr nz, jr_0d2_7d41                            ; $7d37: $20 $08

    ld hl, $5f08                                  ; $7d39: $21 $08 $5f
    inc bc                                        ; $7d3c: $03
    sbc e                                         ; $7d3d: $9b
    ld a, a                                       ; $7d3e: $7f
    ret                                           ; $7d3f: $c9


    ld c, c                                       ; $7d40: $49

jr_0d2_7d41:
    ld bc, $5d00                                  ; $7d41: $01 $00 $5d
    ld [bc], a                                    ; $7d44: $02
    jr z, jr_0d2_7db1                             ; $7d45: $28 $6a

    rst $38                                       ; $7d47: $ff
    ld a, a                                       ; $7d48: $7f
    and b                                         ; $7d49: $a0
    jr jr_0d2_7d16                                ; $7d4a: $18 $ca

    ld a, a                                       ; $7d4c: $7f
    ld b, a                                       ; $7d4d: $47
    ld d, d                                       ; $7d4e: $52
    rst $38                                       ; $7d4f: $ff

jr_0d2_7d50:
    ld a, a                                       ; $7d50: $7f
    nop                                           ; $7d51: $00
    inc b                                         ; $7d52: $04
    ld l, c                                       ; $7d53: $69
    ld [hl], e                                    ; $7d54: $73

jr_0d2_7d55:
    rst $38                                       ; $7d55: $ff
    ld a, a                                       ; $7d56: $7f
    ld h, d                                       ; $7d57: $62
    ld sp, $1462                                  ; $7d58: $31 $62 $14
    ld e, a                                       ; $7d5b: $5f
    inc bc                                        ; $7d5c: $03
    ld c, h                                       ; $7d5d: $4c
    ld h, [hl]                                    ; $7d5e: $66
    cp l                                          ; $7d5f: $bd
    ld a, a                                       ; $7d60: $7f
    ld bc, $5d00                                  ; $7d61: $01 $00 $5d
    ld [bc], a                                    ; $7d64: $02
    rlca                                          ; $7d65: $07
    ld e, [hl]                                    ; $7d66: $5e
    rst $38                                       ; $7d67: $ff
    ld a, a                                       ; $7d68: $7f
    nop                                           ; $7d69: $00
    inc b                                         ; $7d6a: $04
    pop de                                        ; $7d6b: $d1
    ld l, d                                       ; $7d6c: $6a
    dec h                                         ; $7d6d: $25
    ld d, d                                       ; $7d6e: $52
    rst $38                                       ; $7d6f: $ff
    ld a, a                                       ; $7d70: $7f
    nop                                           ; $7d71: $00
    inc b                                         ; $7d72: $04
    cp h                                          ; $7d73: $bc
    ld a, e                                       ; $7d74: $7b
    ld [hl+], a                                   ; $7d75: $22
    ld c, c                                       ; $7d76: $49
    ld b, l                                       ; $7d77: $45
    ld d, d                                       ; $7d78: $52
    ld hl, $5f04                                  ; $7d79: $21 $04 $5f
    inc bc                                        ; $7d7c: $03
    ld b, [hl]                                    ; $7d7d: $46
    ld e, [hl]                                    ; $7d7e: $5e
    rst $38                                       ; $7d7f: $ff
    ld a, a                                       ; $7d80: $7f
    ld bc, $5d00                                  ; $7d81: $01 $00 $5d
    ld [bc], a                                    ; $7d84: $02
    ld h, l                                       ; $7d85: $65
    ld e, d                                       ; $7d86: $5a
    rst $38                                       ; $7d87: $ff
    ld a, a                                       ; $7d88: $7f
    ld hl, $dd14                                  ; $7d89: $21 $14 $dd
    ld a, e                                       ; $7d8c: $7b
    ld [hl+], a                                   ; $7d8d: $22
    ld e, d                                       ; $7d8e: $5a
    dec c                                         ; $7d8f: $0d
    ld d, [hl]                                    ; $7d90: $56
    ld b, b                                       ; $7d91: $40
    inc d                                         ; $7d92: $14
    or e                                          ; $7d93: $b3
    ld l, d                                       ; $7d94: $6a
    call c, Call_000_077f                         ; $7d95: $dc $7f $07
    ld d, l                                       ; $7d98: $55
    ld hl, $5f04                                  ; $7d99: $21 $04 $5f
    inc bc                                        ; $7d9c: $03
    add hl, hl                                    ; $7d9d: $29
    ld c, d                                       ; $7d9e: $4a
    rst $38                                       ; $7d9f: $ff
    ld a, a                                       ; $7da0: $7f
    ld [bc], a                                    ; $7da1: $02
    nop                                           ; $7da2: $00
    ld c, b                                       ; $7da3: $48
    ld c, [hl]                                    ; $7da4: $4e
    rst $38                                       ; $7da5: $ff
    ld a, a                                       ; $7da6: $7f
    ld e, l                                       ; $7da7: $5d
    ld [bc], a                                    ; $7da8: $02
    nop                                           ; $7da9: $00
    inc b                                         ; $7daa: $04
    db $dd                                        ; $7dab: $dd
    ld a, e                                       ; $7dac: $7b
    and h                                         ; $7dad: $a4
    ld h, d                                       ; $7dae: $62
    adc c                                         ; $7daf: $89
    ld c, c                                       ; $7db0: $49

jr_0d2_7db1:
    add c                                         ; $7db1: $81
    jr c, @+$11                                   ; $7db2: $38 $0f

    ld e, [hl]                                    ; $7db4: $5e
    push af                                       ; $7db5: $f5
    ld l, [hl]                                    ; $7db6: $6e
    db $db                                        ; $7db7: $db
    ld a, a                                       ; $7db8: $7f
    jr nz, jr_0d2_7dbf                            ; $7db9: $20 $04

    ld e, a                                       ; $7dbb: $5f
    inc bc                                        ; $7dbc: $03
    ld c, b                                       ; $7dbd: $48
    ld c, [hl]                                    ; $7dbe: $4e

jr_0d2_7dbf:
    rst $38                                       ; $7dbf: $ff
    ld a, a                                       ; $7dc0: $7f
    ld bc, $a400                                  ; $7dc1: $01 $00 $a4
    ld h, d                                       ; $7dc4: $62
    cp a                                          ; $7dc5: $bf
    ld e, e                                       ; $7dc6: $5b
    ld e, e                                       ; $7dc7: $5b
    ld bc, $0400                                  ; $7dc8: $01 $00 $04
    db $dd                                        ; $7dcb: $dd
    ld a, e                                       ; $7dcc: $7b
    and h                                         ; $7dcd: $a4
    ld h, d                                       ; $7dce: $62
    jp z, $0049                                   ; $7dcf: $ca $49 $00

    inc e                                         ; $7dd2: $1c
    call nc, Call_000_0766                        ; $7dd3: $d4 $66 $07
    ld d, l                                       ; $7dd6: $55
    db $db                                        ; $7dd7: $db
    ld a, e                                       ; $7dd8: $7b
    ld hl, $5f04                                  ; $7dd9: $21 $04 $5f
    inc bc                                        ; $7ddc: $03
    ld b, a                                       ; $7ddd: $47
    ld d, d                                       ; $7dde: $52
    rst $38                                       ; $7ddf: $ff
    ld a, a                                       ; $7de0: $7f
    ld [bc], a                                    ; $7de1: $02
    nop                                           ; $7de2: $00
    ld e, e                                       ; $7de3: $5b
    ld bc, $035f                                  ; $7de4: $01 $5f $03
    rst $38                                       ; $7de7: $ff
    ld a, a                                       ; $7de8: $7f
    ld e, e                                       ; $7de9: $5b
    ld bc, $035f                                  ; $7dea: $01 $5f $03
    ld e, a                                       ; $7ded: $5f
    inc bc                                        ; $7dee: $03
    rst $38                                       ; $7def: $ff
    ld a, a                                       ; $7df0: $7f
    ld e, e                                       ; $7df1: $5b
    ld bc, $035f                                  ; $7df2: $01 $5f $03
    ld e, a                                       ; $7df5: $5f
    inc bc                                        ; $7df6: $03
    rst $38                                       ; $7df7: $ff
    ld a, a                                       ; $7df8: $7f
    ld [bc], a                                    ; $7df9: $02
    nop                                           ; $7dfa: $00
    ld e, e                                       ; $7dfb: $5b
    ld bc, $035f                                  ; $7dfc: $01 $5f $03
    rst $38                                       ; $7dff: $ff
    ld a, a                                       ; $7e00: $7f
    nop                                           ; $7e01: $00
    jr nz, @+$01                                  ; $7e02: $20 $ff

    ld a, a                                       ; $7e04: $7f
    ld d, d                                       ; $7e05: $52
    ld d, [hl]                                    ; $7e06: $56
    add $38                                       ; $7e07: $c6 $38
    nop                                           ; $7e09: $00
    jr nz, @+$01                                  ; $7e0a: $20 $ff

    ld a, a                                       ; $7e0c: $7f
    xor $41                                       ; $7e0d: $ee $41
    rra                                           ; $7e0f: $1f
    nop                                           ; $7e10: $00
    rra                                           ; $7e11: $1f
    nop                                           ; $7e12: $00
    rra                                           ; $7e13: $1f
    nop                                           ; $7e14: $00
    rra                                           ; $7e15: $1f
    nop                                           ; $7e16: $00
    rra                                           ; $7e17: $1f
    nop                                           ; $7e18: $00
    rra                                           ; $7e19: $1f
    nop                                           ; $7e1a: $00
    rra                                           ; $7e1b: $1f
    nop                                           ; $7e1c: $00
    rra                                           ; $7e1d: $1f
    nop                                           ; $7e1e: $00
    rra                                           ; $7e1f: $1f
    nop                                           ; $7e20: $00
    rra                                           ; $7e21: $1f
    nop                                           ; $7e22: $00
    rra                                           ; $7e23: $1f
    nop                                           ; $7e24: $00
    rra                                           ; $7e25: $1f
    nop                                           ; $7e26: $00
    rra                                           ; $7e27: $1f
    nop                                           ; $7e28: $00
    rra                                           ; $7e29: $1f
    nop                                           ; $7e2a: $00
    rra                                           ; $7e2b: $1f
    nop                                           ; $7e2c: $00
    rra                                           ; $7e2d: $1f
    nop                                           ; $7e2e: $00
    rra                                           ; $7e2f: $1f
    nop                                           ; $7e30: $00
    rra                                           ; $7e31: $1f
    nop                                           ; $7e32: $00
    rra                                           ; $7e33: $1f
    nop                                           ; $7e34: $00
    rra                                           ; $7e35: $1f
    nop                                           ; $7e36: $00
    rra                                           ; $7e37: $1f
    nop                                           ; $7e38: $00
    ld hl, $ff04                                  ; $7e39: $21 $04 $ff
    ld a, a                                       ; $7e3c: $7f
    rra                                           ; $7e3d: $1f
    nop                                           ; $7e3e: $00
    rra                                           ; $7e3f: $1f
    nop                                           ; $7e40: $00
    nop                                           ; $7e41: $00
    jr nz, @+$01                                  ; $7e42: $20 $ff

    ld a, a                                       ; $7e44: $7f
    ld d, d                                       ; $7e45: $52
    ld d, [hl]                                    ; $7e46: $56
    add $38                                       ; $7e47: $c6 $38
    nop                                           ; $7e49: $00
    jr nz, @+$01                                  ; $7e4a: $20 $ff

    ld a, a                                       ; $7e4c: $7f
    xor $41                                       ; $7e4d: $ee $41
    inc de                                        ; $7e4f: $13
    db $10                                        ; $7e50: $10
    rra                                           ; $7e51: $1f
    nop                                           ; $7e52: $00
    rra                                           ; $7e53: $1f
    nop                                           ; $7e54: $00
    rra                                           ; $7e55: $1f
    nop                                           ; $7e56: $00
    rra                                           ; $7e57: $1f
    nop                                           ; $7e58: $00
    rra                                           ; $7e59: $1f
    nop                                           ; $7e5a: $00
    rra                                           ; $7e5b: $1f
    nop                                           ; $7e5c: $00
    rra                                           ; $7e5d: $1f
    nop                                           ; $7e5e: $00
    rra                                           ; $7e5f: $1f
    nop                                           ; $7e60: $00
    rra                                           ; $7e61: $1f
    nop                                           ; $7e62: $00
    rra                                           ; $7e63: $1f
    nop                                           ; $7e64: $00
    rra                                           ; $7e65: $1f
    nop                                           ; $7e66: $00
    rra                                           ; $7e67: $1f
    nop                                           ; $7e68: $00
    rra                                           ; $7e69: $1f
    nop                                           ; $7e6a: $00
    rra                                           ; $7e6b: $1f
    nop                                           ; $7e6c: $00
    rra                                           ; $7e6d: $1f
    nop                                           ; $7e6e: $00
    rra                                           ; $7e6f: $1f
    nop                                           ; $7e70: $00
    rra                                           ; $7e71: $1f
    nop                                           ; $7e72: $00
    rra                                           ; $7e73: $1f
    nop                                           ; $7e74: $00
    rra                                           ; $7e75: $1f
    nop                                           ; $7e76: $00
    rra                                           ; $7e77: $1f
    nop                                           ; $7e78: $00
    ld hl, $ff04                                  ; $7e79: $21 $04 $ff
    ld a, a                                       ; $7e7c: $7f
    rra                                           ; $7e7d: $1f
    nop                                           ; $7e7e: $00
    rra                                           ; $7e7f: $1f
    nop                                           ; $7e80: $00
    nop                                           ; $7e81: $00
    jr nz, @+$01                                  ; $7e82: $20 $ff

    ld a, a                                       ; $7e84: $7f
    ld d, d                                       ; $7e85: $52
    ld d, [hl]                                    ; $7e86: $56
    add $38                                       ; $7e87: $c6 $38
    nop                                           ; $7e89: $00
    jr nz, @+$01                                  ; $7e8a: $20 $ff

    ld a, a                                       ; $7e8c: $7f
    xor $41                                       ; $7e8d: $ee $41
    inc de                                        ; $7e8f: $13
    ld c, h                                       ; $7e90: $4c
    rra                                           ; $7e91: $1f
    nop                                           ; $7e92: $00
    rra                                           ; $7e93: $1f
    nop                                           ; $7e94: $00
    rra                                           ; $7e95: $1f
    nop                                           ; $7e96: $00
    rra                                           ; $7e97: $1f
    nop                                           ; $7e98: $00
    rra                                           ; $7e99: $1f
    nop                                           ; $7e9a: $00
    rra                                           ; $7e9b: $1f
    nop                                           ; $7e9c: $00
    rra                                           ; $7e9d: $1f
    nop                                           ; $7e9e: $00
    rra                                           ; $7e9f: $1f
    nop                                           ; $7ea0: $00
    rra                                           ; $7ea1: $1f
    nop                                           ; $7ea2: $00
    rra                                           ; $7ea3: $1f
    nop                                           ; $7ea4: $00
    rra                                           ; $7ea5: $1f
    nop                                           ; $7ea6: $00
    rra                                           ; $7ea7: $1f
    nop                                           ; $7ea8: $00
    rra                                           ; $7ea9: $1f
    nop                                           ; $7eaa: $00
    rra                                           ; $7eab: $1f
    nop                                           ; $7eac: $00
    rra                                           ; $7ead: $1f
    nop                                           ; $7eae: $00
    rra                                           ; $7eaf: $1f
    nop                                           ; $7eb0: $00
    rra                                           ; $7eb1: $1f
    nop                                           ; $7eb2: $00
    rra                                           ; $7eb3: $1f
    nop                                           ; $7eb4: $00
    rra                                           ; $7eb5: $1f
    nop                                           ; $7eb6: $00
    rra                                           ; $7eb7: $1f
    nop                                           ; $7eb8: $00
    ld hl, $ff04                                  ; $7eb9: $21 $04 $ff
    ld a, a                                       ; $7ebc: $7f
    rra                                           ; $7ebd: $1f
    nop                                           ; $7ebe: $00
    rra                                           ; $7ebf: $1f
    nop                                           ; $7ec0: $00

    db $00, $20, $ff, $7f, $52, $56, $c6, $38, $00, $20, $ff, $7f, $ee, $41, $cc, $7c

    rra                                           ; $7ed1: $1f
    nop                                           ; $7ed2: $00
    rra                                           ; $7ed3: $1f
    nop                                           ; $7ed4: $00
    rra                                           ; $7ed5: $1f
    nop                                           ; $7ed6: $00
    rra                                           ; $7ed7: $1f
    nop                                           ; $7ed8: $00
    rra                                           ; $7ed9: $1f
    nop                                           ; $7eda: $00
    rra                                           ; $7edb: $1f
    nop                                           ; $7edc: $00
    rra                                           ; $7edd: $1f
    nop                                           ; $7ede: $00
    rra                                           ; $7edf: $1f
    nop                                           ; $7ee0: $00
    rra                                           ; $7ee1: $1f
    nop                                           ; $7ee2: $00
    rra                                           ; $7ee3: $1f
    nop                                           ; $7ee4: $00
    rra                                           ; $7ee5: $1f
    nop                                           ; $7ee6: $00
    rra                                           ; $7ee7: $1f
    nop                                           ; $7ee8: $00
    rra                                           ; $7ee9: $1f
    nop                                           ; $7eea: $00
    rra                                           ; $7eeb: $1f
    nop                                           ; $7eec: $00
    rra                                           ; $7eed: $1f
    nop                                           ; $7eee: $00
    rra                                           ; $7eef: $1f
    nop                                           ; $7ef0: $00
    rra                                           ; $7ef1: $1f
    nop                                           ; $7ef2: $00
    rra                                           ; $7ef3: $1f
    nop                                           ; $7ef4: $00
    rra                                           ; $7ef5: $1f
    nop                                           ; $7ef6: $00
    rra                                           ; $7ef7: $1f
    nop                                           ; $7ef8: $00
    ld hl, $ff04                                  ; $7ef9: $21 $04 $ff
    ld a, a                                       ; $7efc: $7f
    rra                                           ; $7efd: $1f
    nop                                           ; $7efe: $00
    rra                                           ; $7eff: $1f
    nop                                           ; $7f00: $00
    nop                                           ; $7f01: $00
    jr nz, @+$01                                  ; $7f02: $20 $ff

    ld a, a                                       ; $7f04: $7f
    ld d, d                                       ; $7f05: $52
    ld d, [hl]                                    ; $7f06: $56
    add $38                                       ; $7f07: $c6 $38
    nop                                           ; $7f09: $00
    jr nz, @+$01                                  ; $7f0a: $20 $ff

    ld a, a                                       ; $7f0c: $7f
    xor $41                                       ; $7f0d: $ee $41
    add b                                         ; $7f0f: $80
    ld sp, $001f                                  ; $7f10: $31 $1f $00
    rra                                           ; $7f13: $1f
    nop                                           ; $7f14: $00
    rra                                           ; $7f15: $1f
    nop                                           ; $7f16: $00
    rra                                           ; $7f17: $1f
    nop                                           ; $7f18: $00
    rra                                           ; $7f19: $1f
    nop                                           ; $7f1a: $00
    rra                                           ; $7f1b: $1f
    nop                                           ; $7f1c: $00
    rra                                           ; $7f1d: $1f
    nop                                           ; $7f1e: $00
    rra                                           ; $7f1f: $1f
    nop                                           ; $7f20: $00
    rra                                           ; $7f21: $1f
    nop                                           ; $7f22: $00
    rra                                           ; $7f23: $1f
    nop                                           ; $7f24: $00
    rra                                           ; $7f25: $1f
    nop                                           ; $7f26: $00
    rra                                           ; $7f27: $1f
    nop                                           ; $7f28: $00
    rra                                           ; $7f29: $1f
    nop                                           ; $7f2a: $00
    rra                                           ; $7f2b: $1f
    nop                                           ; $7f2c: $00
    rra                                           ; $7f2d: $1f
    nop                                           ; $7f2e: $00
    rra                                           ; $7f2f: $1f
    nop                                           ; $7f30: $00
    rra                                           ; $7f31: $1f
    nop                                           ; $7f32: $00
    rra                                           ; $7f33: $1f
    nop                                           ; $7f34: $00
    rra                                           ; $7f35: $1f
    nop                                           ; $7f36: $00
    rra                                           ; $7f37: $1f
    nop                                           ; $7f38: $00
    ld hl, $ff04                                  ; $7f39: $21 $04 $ff
    ld a, a                                       ; $7f3c: $7f
    rra                                           ; $7f3d: $1f
    nop                                           ; $7f3e: $00
    rra                                           ; $7f3f: $1f
    nop                                           ; $7f40: $00
    nop                                           ; $7f41: $00
    jr nz, @+$01                                  ; $7f42: $20 $ff

    ld a, a                                       ; $7f44: $7f
    ld d, d                                       ; $7f45: $52
    ld d, [hl]                                    ; $7f46: $56
    add $38                                       ; $7f47: $c6 $38
    nop                                           ; $7f49: $00
    jr nz, @+$01                                  ; $7f4a: $20 $ff

    ld a, a                                       ; $7f4c: $7f
    xor $41                                       ; $7f4d: $ee $41
    ldh [rSB], a                                  ; $7f4f: $e0 $01
    rra                                           ; $7f51: $1f
    nop                                           ; $7f52: $00
    rra                                           ; $7f53: $1f
    nop                                           ; $7f54: $00
    rra                                           ; $7f55: $1f
    nop                                           ; $7f56: $00
    rra                                           ; $7f57: $1f
    nop                                           ; $7f58: $00
    rra                                           ; $7f59: $1f
    nop                                           ; $7f5a: $00
    rra                                           ; $7f5b: $1f
    nop                                           ; $7f5c: $00
    rra                                           ; $7f5d: $1f
    nop                                           ; $7f5e: $00
    rra                                           ; $7f5f: $1f
    nop                                           ; $7f60: $00
    rra                                           ; $7f61: $1f
    nop                                           ; $7f62: $00
    rra                                           ; $7f63: $1f
    nop                                           ; $7f64: $00
    rra                                           ; $7f65: $1f
    nop                                           ; $7f66: $00
    rra                                           ; $7f67: $1f
    nop                                           ; $7f68: $00
    rra                                           ; $7f69: $1f
    nop                                           ; $7f6a: $00
    rra                                           ; $7f6b: $1f
    nop                                           ; $7f6c: $00
    rra                                           ; $7f6d: $1f
    nop                                           ; $7f6e: $00
    rra                                           ; $7f6f: $1f
    nop                                           ; $7f70: $00
    rra                                           ; $7f71: $1f
    nop                                           ; $7f72: $00
    rra                                           ; $7f73: $1f
    nop                                           ; $7f74: $00
    rra                                           ; $7f75: $1f
    nop                                           ; $7f76: $00
    rra                                           ; $7f77: $1f
    nop                                           ; $7f78: $00
    ld hl, $ff04                                  ; $7f79: $21 $04 $ff
    ld a, a                                       ; $7f7c: $7f
    rra                                           ; $7f7d: $1f
    nop                                           ; $7f7e: $00
    rra                                           ; $7f7f: $1f
    nop                                           ; $7f80: $00

    db $00, $20, $ff, $7f, $52, $56, $c6, $38, $00, $20, $ff, $7f, $ee, $41, $a9, $02

    rra                                           ; $7f91: $1f
    nop                                           ; $7f92: $00
    rra                                           ; $7f93: $1f
    nop                                           ; $7f94: $00
    rra                                           ; $7f95: $1f
    nop                                           ; $7f96: $00
    rra                                           ; $7f97: $1f
    nop                                           ; $7f98: $00
    rra                                           ; $7f99: $1f
    nop                                           ; $7f9a: $00
    rra                                           ; $7f9b: $1f
    nop                                           ; $7f9c: $00
    rra                                           ; $7f9d: $1f
    nop                                           ; $7f9e: $00
    rra                                           ; $7f9f: $1f
    nop                                           ; $7fa0: $00
    rra                                           ; $7fa1: $1f
    nop                                           ; $7fa2: $00
    rra                                           ; $7fa3: $1f
    nop                                           ; $7fa4: $00
    rra                                           ; $7fa5: $1f
    nop                                           ; $7fa6: $00
    rra                                           ; $7fa7: $1f
    nop                                           ; $7fa8: $00
    rra                                           ; $7fa9: $1f
    nop                                           ; $7faa: $00
    rra                                           ; $7fab: $1f
    nop                                           ; $7fac: $00
    rra                                           ; $7fad: $1f
    nop                                           ; $7fae: $00
    rra                                           ; $7faf: $1f
    nop                                           ; $7fb0: $00
    rra                                           ; $7fb1: $1f
    nop                                           ; $7fb2: $00
    rra                                           ; $7fb3: $1f
    nop                                           ; $7fb4: $00
    rra                                           ; $7fb5: $1f
    nop                                           ; $7fb6: $00
    rra                                           ; $7fb7: $1f
    nop                                           ; $7fb8: $00
    ld hl, $ff04                                  ; $7fb9: $21 $04 $ff
    ld a, a                                       ; $7fbc: $7f
    rra                                           ; $7fbd: $1f
    nop                                           ; $7fbe: $00
    rra                                           ; $7fbf: $1f
    nop                                           ; $7fc0: $00

    db $ff, $7f, $5f, $0b, $a8, $09, $40, $3c

    rst $38                                       ; $7fc9: $ff
    ld a, a                                       ; $7fca: $7f
    cp [hl]                                       ; $7fcb: $be
    ld [hl], a                                    ; $7fcc: $77
    ld a, a                                       ; $7fcd: $7f
    ld d, c                                       ; $7fce: $51
    db $e3                                        ; $7fcf: $e3
    db $38                                        ; $7fd0: $38

    db $ff, $7f, $9d, $03, $7e, $01, $66, $04

    rst $38                                       ; $7fd9: $ff
    ld a, a                                       ; $7fda: $7f
    ld e, [hl]                                    ; $7fdb: $5e
    ld a, c                                       ; $7fdc: $79
    ld l, b                                       ; $7fdd: $68
    ld c, c                                       ; $7fde: $49
    nop                                           ; $7fdf: $00
    db $10                                        ; $7fe0: $10
    rst $38                                       ; $7fe1: $ff
    ld a, a                                       ; $7fe2: $7f
    ld [de], a                                    ; $7fe3: $12
    ld a, l                                       ; $7fe4: $7d
    ld a, h                                       ; $7fe5: $7c
    nop                                           ; $7fe6: $00
    ld b, e                                       ; $7fe7: $43
    ld [$7fff], sp                                ; $7fe8: $08 $ff $7f
    rst $38                                       ; $7feb: $ff
    ld a, a                                       ; $7fec: $7f
    cp a                                          ; $7fed: $bf
    ld bc, $0c00                                  ; $7fee: $01 $00 $0c
    rst $38                                       ; $7ff1: $ff
    ld a, a                                       ; $7ff2: $7f
    ldh [rNR31], a                                ; $7ff3: $e0 $1b
    jp Jump_0d2_400d                              ; $7ff5: $c3 $0d $40


    ld [$ffff], sp                                ; $7ff8: $08 $ff $ff
    rst $38                                       ; $7ffb: $ff
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
