; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0e9", ROMX[$4000], BANK[$e9]

    jp hl                                         ; $4000: $e9


    dec c                                         ; $4001: $0d

Call_0e9_4002:
    inc b                                         ; $4002: $04
    ld sp, hl                                     ; $4003: $f9
    ld [$00f1], sp                                ; $4004: $08 $f1 $00
    rst $20                                       ; $4007: $e7
    ld a, [$ffe8]                                 ; $4008: $fa $e8 $ff
    rst $30                                       ; $400b: $f7
    ld a, [$fff7]                                 ; $400c: $fa $f7 $ff
    ld [bc], a                                    ; $400f: $02
    ld a, [bc]                                    ; $4010: $0a
    ld [bc], a                                    ; $4011: $02
    rrca                                          ; $4012: $0f
    ld [bc], a                                    ; $4013: $02
    ccf                                           ; $4014: $3f
    adc [hl]                                      ; $4015: $8e
    ld d, $1f                                     ; $4016: $16 $1f
    jr c, jr_0e9_4059                             ; $4018: $38 $3f

    dec d                                         ; $401a: $15
    rla                                           ; $401b: $17
    ld de, $2a1f                                  ; $401c: $11 $1f $2a
    ccf                                           ; $401f: $3f
    daa                                           ; $4020: $27
    ccf                                           ; $4021: $3f
    jr jr_0e9_4043                                ; $4022: $18 $1f

    ld [bc], a                                    ; $4024: $02
    ccf                                           ; $4025: $3f
    add h                                         ; $4026: $84
    scf                                           ; $4027: $37
    dec [hl]                                      ; $4028: $35
    ld l, a                                       ; $4029: $6f
    ld l, b                                       ; $402a: $68
    ld [bc], a                                    ; $402b: $02
    ld l, a                                       ; $402c: $6f
    inc b                                         ; $402d: $04
    and d                                         ; $402e: $a2
    ld [bc], a                                    ; $402f: $02
    ld [$1c02], sp                                ; $4030: $08 $02 $1c
    add d                                         ; $4033: $82
    inc c                                         ; $4034: $0c
    inc e                                         ; $4035: $1c
    ld [bc], a                                    ; $4036: $02
    jr jr_0e9_403c                                ; $4037: $18 $03

    ld [$1885], sp                                ; $4039: $08 $85 $18

jr_0e9_403c:
    inc d                                         ; $403c: $14
    inc e                                         ; $403d: $1c
    inc b                                         ; $403e: $04
    inc e                                         ; $403f: $1c
    ld [bc], a                                    ; $4040: $02
    jr jr_0e9_4045                                ; $4041: $18 $02

jr_0e9_4043:
    inc e                                         ; $4043: $1c
    ld [bc], a                                    ; $4044: $02

jr_0e9_4045:
    inc c                                         ; $4045: $0c
    inc b                                         ; $4046: $04
    ld d, $04                                     ; $4047: $16 $04
    dec b                                         ; $4049: $05
    add [hl]                                      ; $404a: $86
    or $f2                                        ; $404b: $f6 $f2
    ld l, b                                       ; $404d: $68
    ld c, b                                       ; $404e: $48
    add sp, -$48                                  ; $404f: $e8 $b8
    ld [bc], a                                    ; $4051: $02
    ld c, a                                       ; $4052: $4f
    ld [bc], a                                    ; $4053: $02
    sbc [hl]                                      ; $4054: $9e
    add h                                         ; $4055: $84
    ld a, l                                       ; $4056: $7d
    ld [hl], l                                    ; $4057: $75
    ccf                                           ; $4058: $3f

jr_0e9_4059:
    cpl                                           ; $4059: $2f
    ld [bc], a                                    ; $405a: $02
    db $10                                        ; $405b: $10
    inc d                                         ; $405c: $14
    nop                                           ; $405d: $00
    add d                                         ; $405e: $82
    rla                                           ; $405f: $17
    dec e                                         ; $4060: $1d
    ld [bc], a                                    ; $4061: $02
    ld [de], a                                    ; $4062: $12
    ld [bc], a                                    ; $4063: $02
    add hl, bc                                    ; $4064: $09
    ld [bc], a                                    ; $4065: $02
    ld e, $82                                     ; $4066: $1e $82
    inc e                                         ; $4068: $1c
    inc d                                         ; $4069: $14
    ld [bc], a                                    ; $406a: $02
    ld [$0012], sp                                ; $406b: $08 $12 $00
    rst $38                                       ; $406e: $ff
    add hl, bc                                    ; $406f: $09
    ld [bc], a                                    ; $4070: $02
    ld sp, hl                                     ; $4071: $f9
    ld [$00f1], sp                                ; $4072: $08 $f1 $00
    db $ec                                        ; $4075: $ec
    ei                                            ; $4076: $fb
    db $ec                                        ; $4077: $ec
    cp $02                                        ; $4078: $fe $02
    ld de, $000a                                  ; $407a: $11 $0a $00
    adc h                                         ; $407d: $8c
    ld de, $2000                                  ; $407e: $11 $00 $20
    nop                                           ; $4081: $00
    jr nz, jr_0e9_4084                            ; $4082: $20 $00

jr_0e9_4084:
    cp e                                          ; $4084: $bb
    nop                                           ; $4085: $00
    cp e                                          ; $4086: $bb
    nop                                           ; $4087: $00
    jr nz, jr_0e9_408a                            ; $4088: $20 $00

jr_0e9_408a:
    ld [bc], a                                    ; $408a: $02
    ld c, $02                                     ; $408b: $0e $02
    ld h, b                                       ; $408d: $60
    ld [bc], a                                    ; $408e: $02
    jp $0402                                      ; $408f: $c3 $02 $04


    ld c, $00                                     ; $4092: $0e $00
    adc c                                         ; $4094: $89
    inc b                                         ; $4095: $04
    nop                                           ; $4096: $00
    inc b                                         ; $4097: $04
    nop                                           ; $4098: $00
    dec b                                         ; $4099: $05
    nop                                           ; $409a: $00
    dec b                                         ; $409b: $05
    nop                                           ; $409c: $00
    inc b                                         ; $409d: $04
    inc bc                                        ; $409e: $03
    nop                                           ; $409f: $00
    ld [bc], a                                    ; $40a0: $02
    ld b, $02                                     ; $40a1: $06 $02
    inc bc                                        ; $40a3: $03
    ld [bc], a                                    ; $40a4: $02
    nop                                           ; $40a5: $00
    rst $38                                       ; $40a6: $ff
    dec c                                         ; $40a7: $0d
    inc b                                         ; $40a8: $04
    ld sp, hl                                     ; $40a9: $f9
    ld [$00f1], sp                                ; $40aa: $08 $f1 $00
    and $fb                                       ; $40ad: $e6 $fb
    and $fe                                       ; $40af: $e6 $fe
    or $fa                                        ; $40b1: $f6 $fa
    or $fc                                        ; $40b3: $f6 $fc
    ld [bc], a                                    ; $40b5: $02
    ld [bc], a                                    ; $40b6: $02
    ld [bc], a                                    ; $40b7: $02
    ccf                                           ; $40b8: $3f
    ld [bc], a                                    ; $40b9: $02
    ld a, a                                       ; $40ba: $7f
    adc [hl]                                      ; $40bb: $8e
    ld sp, $763f                                  ; $40bc: $31 $3f $76
    ld a, a                                       ; $40bf: $7f
    add hl, sp                                    ; $40c0: $39
    dec a                                         ; $40c1: $3d
    jr nc, jr_0e9_4103                            ; $40c2: $30 $3f

    inc h                                         ; $40c4: $24
    ccf                                           ; $40c5: $3f
    inc sp                                        ; $40c6: $33
    ccf                                           ; $40c7: $3f
    ld a, b                                       ; $40c8: $78
    ld c, a                                       ; $40c9: $4f
    ld [bc], a                                    ; $40ca: $02
    ld [hl], a                                    ; $40cb: $77
    add d                                         ; $40cc: $82
    ld l, e                                       ; $40cd: $6b
    ld l, d                                       ; $40ce: $6a
    ld [bc], a                                    ; $40cf: $02
    jp hl                                         ; $40d0: $e9


    inc b                                         ; $40d1: $04
    xor b                                         ; $40d2: $a8
    ld [bc], a                                    ; $40d3: $02
    ld l, h                                       ; $40d4: $6c
    ld [bc], a                                    ; $40d5: $02
    inc b                                         ; $40d6: $04
    inc b                                         ; $40d7: $04
    ld b, $04                                     ; $40d8: $06 $04
    inc b                                         ; $40da: $04
    add h                                         ; $40db: $84
    ld [bc], a                                    ; $40dc: $02
    ld b, $01                                     ; $40dd: $06 $01
    rlca                                          ; $40df: $07
    ld [bc], a                                    ; $40e0: $02
    ld b, $04                                     ; $40e1: $06 $04
    inc b                                         ; $40e3: $04
    ld [bc], a                                    ; $40e4: $02
    nop                                           ; $40e5: $00
    ld [bc], a                                    ; $40e6: $02
    inc b                                         ; $40e7: $04
    add d                                         ; $40e8: $82
    ld b, $02                                     ; $40e9: $06 $02
    ld [bc], a                                    ; $40eb: $02
    inc b                                         ; $40ec: $04
    inc b                                         ; $40ed: $04
    ld b, $88                                     ; $40ee: $06 $88
    ccf                                           ; $40f0: $3f
    add hl, sp                                    ; $40f1: $39
    ld e, a                                       ; $40f2: $5f
    ld d, a                                       ; $40f3: $57
    ld c, c                                       ; $40f4: $49
    ld c, a                                       ; $40f5: $4f
    ld e, l                                       ; $40f6: $5d
    ld e, a                                       ; $40f7: $5f
    ld [bc], a                                    ; $40f8: $02
    and a                                         ; $40f9: $a7
    ld [bc], a                                    ; $40fa: $02
    ld b, [hl]                                    ; $40fb: $46
    ld [bc], a                                    ; $40fc: $02
    dec c                                         ; $40fd: $0d
    add [hl]                                      ; $40fe: $86
    rra                                           ; $40ff: $1f
    rla                                           ; $4100: $17
    dec e                                         ; $4101: $1d
    dec d                                         ; $4102: $15

jr_0e9_4103:
    ld c, $0a                                     ; $4103: $0e $0a
    ld [bc], a                                    ; $4105: $02
    ld b, $0a                                     ; $4106: $06 $0a
    nop                                           ; $4108: $00
    ld [bc], a                                    ; $4109: $02
    ld bc, $0204                                  ; $410a: $01 $04 $02
    ld [bc], a                                    ; $410d: $02
    inc bc                                        ; $410e: $03
    ld [bc], a                                    ; $410f: $02
    ld bc, $0202                                  ; $4110: $01 $02 $02
    ld [bc], a                                    ; $4113: $02
    nop                                           ; $4114: $00
    inc b                                         ; $4115: $04
    ld [bc], a                                    ; $4116: $02
    ld c, $00                                     ; $4117: $0e $00
    rst $38                                       ; $4119: $ff
    add hl, bc                                    ; $411a: $09
    ld [bc], a                                    ; $411b: $02
    ld sp, hl                                     ; $411c: $f9
    ld [$00f1], sp                                ; $411d: $08 $f1 $00
    db $eb                                        ; $4120: $eb
    ei                                            ; $4121: $fb
    ei                                            ; $4122: $fb
    ei                                            ; $4123: $fb
    ld [bc], a                                    ; $4124: $02
    ld [bc], a                                    ; $4125: $02
    ld [$9600], sp                                ; $4126: $08 $00 $96
    ld [$1400], sp                                ; $4129: $08 $00 $14
    nop                                           ; $412c: $00
    ld d, $00                                     ; $412d: $16 $00
    ld d, a                                       ; $412f: $57
    nop                                           ; $4130: $00
    ld d, a                                       ; $4131: $57
    nop                                           ; $4132: $00
    inc de                                        ; $4133: $13
    nop                                           ; $4134: $00
    ld bc, $4000                                  ; $4135: $01 $00 $40
    nop                                           ; $4138: $00
    ld h, b                                       ; $4139: $60
    nop                                           ; $413a: $00
    ld b, b                                       ; $413b: $40
    nop                                           ; $413c: $00
    add c                                         ; $413d: $81
    ld bc, $0202                                  ; $413e: $01 $02 $02
    ld [bc], a                                    ; $4141: $02
    inc b                                         ; $4142: $04
    inc e                                         ; $4143: $1c
    nop                                           ; $4144: $00
    rst $38                                       ; $4145: $ff
    dec c                                         ; $4146: $0d
    inc b                                         ; $4147: $04
    ld sp, hl                                     ; $4148: $f9
    ld [$00f1], sp                                ; $4149: $08 $f1 $00
    rst $20                                       ; $414c: $e7
    ei                                            ; $414d: $fb
    rst $20                                       ; $414e: $e7
    cp $f7                                        ; $414f: $fe $f7
    ei                                            ; $4151: $fb
    rst $30                                       ; $4152: $f7
    rst $38                                       ; $4153: $ff
    ld [bc], a                                    ; $4154: $02
    ld [bc], a                                    ; $4155: $02
    ld [bc], a                                    ; $4156: $02
    ccf                                           ; $4157: $3f
    ld [bc], a                                    ; $4158: $02
    ld a, a                                       ; $4159: $7f
    adc [hl]                                      ; $415a: $8e
    ld sp, $763f                                  ; $415b: $31 $3f $76
    ld a, a                                       ; $415e: $7f
    add hl, sp                                    ; $415f: $39
    dec a                                         ; $4160: $3d
    jr nc, @+$41                                  ; $4161: $30 $3f

    inc h                                         ; $4163: $24
    ccf                                           ; $4164: $3f
    inc sp                                        ; $4165: $33
    ccf                                           ; $4166: $3f
    ld a, b                                       ; $4167: $78
    ld c, a                                       ; $4168: $4f
    ld [bc], a                                    ; $4169: $02
    ld [hl], a                                    ; $416a: $77
    add d                                         ; $416b: $82
    ei                                            ; $416c: $fb
    ld a, [$a902]                                 ; $416d: $fa $02 $a9
    ld [bc], a                                    ; $4170: $02
    xor b                                         ; $4171: $a8
    ld [bc], a                                    ; $4172: $02
    ld e, h                                       ; $4173: $5c
    ld [bc], a                                    ; $4174: $02
    ld h, l                                       ; $4175: $65
    ld [bc], a                                    ; $4176: $02
    inc b                                         ; $4177: $04
    inc b                                         ; $4178: $04
    ld b, $04                                     ; $4179: $06 $04
    inc b                                         ; $417b: $04
    add h                                         ; $417c: $84
    ld [bc], a                                    ; $417d: $02
    ld b, $01                                     ; $417e: $06 $01
    rlca                                          ; $4180: $07
    ld [bc], a                                    ; $4181: $02
    ld b, $04                                     ; $4182: $06 $04
    inc b                                         ; $4184: $04
    ld [bc], a                                    ; $4185: $02
    nop                                           ; $4186: $00
    ld [bc], a                                    ; $4187: $02
    inc b                                         ; $4188: $04
    add d                                         ; $4189: $82
    ld b, $02                                     ; $418a: $06 $02
    ld [bc], a                                    ; $418c: $02
    ld b, $02                                     ; $418d: $06 $02
    ld [bc], a                                    ; $418f: $02
    ld [bc], a                                    ; $4190: $02
    ld b, $84                                     ; $4191: $06 $84
    ld d, a                                       ; $4193: $57
    ld d, l                                       ; $4194: $55
    adc [hl]                                      ; $4195: $8e
    adc e                                         ; $4196: $8b
    ld [bc], a                                    ; $4197: $02
    sbc b                                         ; $4198: $98
    ld [bc], a                                    ; $4199: $02
    cp [hl]                                       ; $419a: $be
    add h                                         ; $419b: $84
    cp l                                          ; $419c: $bd
    or l                                          ; $419d: $b5
    rst $08                                       ; $419e: $cf
    rlc d                                         ; $419f: $cb $02
    ld b, $12                                     ; $41a1: $06 $12
    nop                                           ; $41a3: $00
    add d                                         ; $41a4: $82
    ld a, [bc]                                    ; $41a5: $0a
    ld c, $02                                     ; $41a6: $0e $02
    inc c                                         ; $41a8: $0c
    ld [bc], a                                    ; $41a9: $02
    ld b, $02                                     ; $41aa: $06 $02
    dec b                                         ; $41ac: $05
    ld [bc], a                                    ; $41ad: $02
    ld c, $04                                     ; $41ae: $0e $04
    ld [$0012], sp                                ; $41b0: $08 $12 $00
    rst $38                                       ; $41b3: $ff
    add hl, bc                                    ; $41b4: $09
    ld [bc], a                                    ; $41b5: $02
    ld sp, hl                                     ; $41b6: $f9
    ld [$00f1], sp                                ; $41b7: $08 $f1 $00
    db $ec                                        ; $41ba: $ec
    db $fc                                        ; $41bb: $fc
    db $ec                                        ; $41bc: $ec
    cp $02                                        ; $41bd: $fe $02
    inc b                                         ; $41bf: $04
    ld [$9600], sp                                ; $41c0: $08 $00 $96
    stop                                          ; $41c3: $10 $00
    ld [$ac00], sp                                ; $41c5: $08 $00 $ac
    nop                                           ; $41c8: $00
    xor [hl]                                      ; $41c9: $ae
    nop                                           ; $41ca: $00
    ld b, a                                       ; $41cb: $47
    nop                                           ; $41cc: $00
    inc [hl]                                      ; $41cd: $34
    nop                                           ; $41ce: $00
    ld d, b                                       ; $41cf: $50
    nop                                           ; $41d0: $00
    ldh [rP1], a                                  ; $41d1: $e0 $00
    rst $08                                       ; $41d3: $cf
    rrca                                          ; $41d4: $0f
    add e                                         ; $41d5: $83
    inc bc                                        ; $41d6: $03
    add h                                         ; $41d7: $84
    inc b                                         ; $41d8: $04
    inc e                                         ; $41d9: $1c
    nop                                           ; $41da: $00
    ld [bc], a                                    ; $41db: $02
    ld bc, $0002                                  ; $41dc: $01 $02 $00
    rst $38                                       ; $41df: $ff
    dec c                                         ; $41e0: $0d
    inc b                                         ; $41e1: $04
    ld sp, hl                                     ; $41e2: $f9
    ld [$00f1], sp                                ; $41e3: $08 $f1 $00
    and $fb                                       ; $41e6: $e6 $fb
    and $00                                       ; $41e8: $e6 $00
    or $fa                                        ; $41ea: $f6 $fa
    or $fc                                        ; $41ec: $f6 $fc
    ld [bc], a                                    ; $41ee: $02
    ld [bc], a                                    ; $41ef: $02
    ld [bc], a                                    ; $41f0: $02
    ccf                                           ; $41f1: $3f
    ld [bc], a                                    ; $41f2: $02
    ld a, a                                       ; $41f3: $7f
    adc [hl]                                      ; $41f4: $8e
    ld sp, $763f                                  ; $41f5: $31 $3f $76
    ld a, a                                       ; $41f8: $7f
    add hl, sp                                    ; $41f9: $39
    dec a                                         ; $41fa: $3d
    jr nc, jr_0e9_423c                            ; $41fb: $30 $3f

    inc h                                         ; $41fd: $24
    ccf                                           ; $41fe: $3f
    inc sp                                        ; $41ff: $33
    ccf                                           ; $4200: $3f
    ld a, b                                       ; $4201: $78
    ld c, a                                       ; $4202: $4f
    ld [bc], a                                    ; $4203: $02
    ld a, a                                       ; $4204: $7f
    adc b                                         ; $4205: $88
    ld l, d                                       ; $4206: $6a
    ld l, e                                       ; $4207: $6b
    xor [hl]                                      ; $4208: $ae
    xor l                                         ; $4209: $ad
    cp e                                          ; $420a: $bb
    cp c                                          ; $420b: $b9
    ld h, a                                       ; $420c: $67
    ld h, [hl]                                    ; $420d: $66
    ld [bc], a                                    ; $420e: $02
    ld e, c                                       ; $420f: $59
    ld [bc], a                                    ; $4210: $02
    db $10                                        ; $4211: $10
    inc b                                         ; $4212: $04
    jr @+$06                                      ; $4213: $18 $04

    db $10                                        ; $4215: $10
    add h                                         ; $4216: $84
    ld [$0418], sp                                ; $4217: $08 $18 $04
    inc e                                         ; $421a: $1c
    ld [bc], a                                    ; $421b: $02
    jr jr_0e9_4224                                ; $421c: $18 $06

    db $10                                        ; $421e: $10
    add h                                         ; $421f: $84
    ld a, [bc]                                    ; $4220: $0a
    ld a, [de]                                    ; $4221: $1a
    dec e                                         ; $4222: $1d
    rra                                           ; $4223: $1f

jr_0e9_4224:
    ld [bc], a                                    ; $4224: $02
    ld e, $02                                     ; $4225: $1e $02
    inc c                                         ; $4227: $0c
    ld [bc], a                                    ; $4228: $02
    jr jr_0e9_422d                                ; $4229: $18 $02

    ld b, b                                       ; $422b: $40
    ld [bc], a                                    ; $422c: $02

jr_0e9_422d:
    ld b, e                                       ; $422d: $43
    ld [bc], a                                    ; $422e: $02
    ld c, h                                       ; $422f: $4c
    ld [bc], a                                    ; $4230: $02
    ld e, [hl]                                    ; $4231: $5e
    ld [bc], a                                    ; $4232: $02
    and a                                         ; $4233: $a7
    ld [bc], a                                    ; $4234: $02
    ld b, [hl]                                    ; $4235: $46
    ld [bc], a                                    ; $4236: $02
    dec c                                         ; $4237: $0d
    add [hl]                                      ; $4238: $86
    rra                                           ; $4239: $1f
    rla                                           ; $423a: $17
    dec e                                         ; $423b: $1d

jr_0e9_423c:
    dec d                                         ; $423c: $15
    ld c, $0a                                     ; $423d: $0e $0a
    ld [bc], a                                    ; $423f: $02
    ld b, $0a                                     ; $4240: $06 $0a
    nop                                           ; $4242: $00
    ld [bc], a                                    ; $4243: $02
    ld bc, $0204                                  ; $4244: $01 $04 $02
    ld [bc], a                                    ; $4247: $02
    inc bc                                        ; $4248: $03
    ld [bc], a                                    ; $4249: $02
    ld bc, $0202                                  ; $424a: $01 $02 $02
    ld [bc], a                                    ; $424d: $02
    nop                                           ; $424e: $00
    inc b                                         ; $424f: $04
    ld [bc], a                                    ; $4250: $02
    ld c, $00                                     ; $4251: $0e $00
    rst $38                                       ; $4253: $ff
    add hl, bc                                    ; $4254: $09
    ld [bc], a                                    ; $4255: $02
    ld sp, hl                                     ; $4256: $f9
    ld [$00f1], sp                                ; $4257: $08 $f1 $00
    db $eb                                        ; $425a: $eb
    ei                                            ; $425b: $fb
    db $f4                                        ; $425c: $f4
    db $fc                                        ; $425d: $fc
    ld [bc], a                                    ; $425e: $02
    ld [bc], a                                    ; $425f: $02
    ld a, [bc]                                    ; $4260: $0a
    nop                                           ; $4261: $00
    sub e                                         ; $4262: $93
    inc d                                         ; $4263: $14
    nop                                           ; $4264: $00
    ld d, b                                       ; $4265: $50
    nop                                           ; $4266: $00
    ld b, h                                       ; $4267: $44
    nop                                           ; $4268: $00
    jr jr_0e9_426b                                ; $4269: $18 $00

jr_0e9_426b:
    ld h, $00                                     ; $426b: $26 $00
    ld a, a                                       ; $426d: $7f
    nop                                           ; $426e: $00
    ld a, b                                       ; $426f: $78
    nop                                           ; $4270: $00
    ld h, [hl]                                    ; $4271: $66
    ld b, $42                                     ; $4272: $06 $42
    ld [bc], a                                    ; $4274: $02
    add c                                         ; $4275: $81
    ld [bc], a                                    ; $4276: $02
    ld bc, $000d                                  ; $4277: $01 $0d $00
    ld [bc], a                                    ; $427a: $02
    inc b                                         ; $427b: $04
    ld [bc], a                                    ; $427c: $02
    ld [$000e], sp                                ; $427d: $08 $0e $00
    rst $38                                       ; $4280: $ff
    dec c                                         ; $4281: $0d
    inc b                                         ; $4282: $04
    ld sp, hl                                     ; $4283: $f9
    ld [$00f1], sp                                ; $4284: $08 $f1 $00
    and $fb                                       ; $4287: $e6 $fb
    and $00                                       ; $4289: $e6 $00
    or $fa                                        ; $428b: $f6 $fa
    or $fc                                        ; $428d: $f6 $fc
    ld [bc], a                                    ; $428f: $02
    ld [bc], a                                    ; $4290: $02
    ld [bc], a                                    ; $4291: $02
    ccf                                           ; $4292: $3f
    ld [bc], a                                    ; $4293: $02
    ld a, a                                       ; $4294: $7f
    adc [hl]                                      ; $4295: $8e
    ld sp, $763f                                  ; $4296: $31 $3f $76
    ld a, a                                       ; $4299: $7f
    add hl, sp                                    ; $429a: $39
    dec a                                         ; $429b: $3d
    jr nc, jr_0e9_42dd                            ; $429c: $30 $3f

    inc h                                         ; $429e: $24
    ccf                                           ; $429f: $3f
    inc sp                                        ; $42a0: $33
    ccf                                           ; $42a1: $3f
    ld a, b                                       ; $42a2: $78
    ld c, a                                       ; $42a3: $4f
    ld [bc], a                                    ; $42a4: $02
    ld a, a                                       ; $42a5: $7f
    ld [bc], a                                    ; $42a6: $02
    ld l, e                                       ; $42a7: $6b
    add [hl]                                      ; $42a8: $86
    xor [hl]                                      ; $42a9: $ae
    xor l                                         ; $42aa: $ad
    or e                                          ; $42ab: $b3
    or c                                          ; $42ac: $b1
    ld h, a                                       ; $42ad: $67
    ld h, [hl]                                    ; $42ae: $66
    ld [bc], a                                    ; $42af: $02
    ld e, c                                       ; $42b0: $59
    ld [bc], a                                    ; $42b1: $02
    db $10                                        ; $42b2: $10
    inc b                                         ; $42b3: $04
    jr @+$06                                      ; $42b4: $18 $04

    db $10                                        ; $42b6: $10
    add h                                         ; $42b7: $84
    ld [$0418], sp                                ; $42b8: $08 $18 $04
    inc e                                         ; $42bb: $1c
    ld [bc], a                                    ; $42bc: $02
    jr jr_0e9_42c3                                ; $42bd: $18 $04

    db $10                                        ; $42bf: $10
    ld [bc], a                                    ; $42c0: $02
    ld a, [de]                                    ; $42c1: $1a
    add h                                         ; $42c2: $84

jr_0e9_42c3:
    dec b                                         ; $42c3: $05
    rra                                           ; $42c4: $1f
    ld c, $1e                                     ; $42c5: $0e $1e
    ld [bc], a                                    ; $42c7: $02
    inc e                                         ; $42c8: $1c
    ld [bc], a                                    ; $42c9: $02
    ld [$1802], sp                                ; $42ca: $08 $02 $18
    ld [bc], a                                    ; $42cd: $02
    ld b, b                                       ; $42ce: $40
    ld [bc], a                                    ; $42cf: $02
    ld b, e                                       ; $42d0: $43
    ld [bc], a                                    ; $42d1: $02
    ld c, h                                       ; $42d2: $4c
    ld [bc], a                                    ; $42d3: $02
    ld e, [hl]                                    ; $42d4: $5e
    ld [bc], a                                    ; $42d5: $02
    and a                                         ; $42d6: $a7
    ld [bc], a                                    ; $42d7: $02
    ld b, [hl]                                    ; $42d8: $46
    ld [bc], a                                    ; $42d9: $02
    dec c                                         ; $42da: $0d
    add [hl]                                      ; $42db: $86
    rra                                           ; $42dc: $1f

jr_0e9_42dd:
    rla                                           ; $42dd: $17
    dec e                                         ; $42de: $1d
    dec d                                         ; $42df: $15
    ld c, $0a                                     ; $42e0: $0e $0a
    ld [bc], a                                    ; $42e2: $02
    ld b, $0a                                     ; $42e3: $06 $0a
    nop                                           ; $42e5: $00
    ld [bc], a                                    ; $42e6: $02
    ld bc, $0204                                  ; $42e7: $01 $04 $02
    ld [bc], a                                    ; $42ea: $02
    inc bc                                        ; $42eb: $03
    ld [bc], a                                    ; $42ec: $02
    ld bc, $0202                                  ; $42ed: $01 $02 $02
    ld [bc], a                                    ; $42f0: $02
    nop                                           ; $42f1: $00
    inc b                                         ; $42f2: $04
    ld [bc], a                                    ; $42f3: $02
    ld c, $00                                     ; $42f4: $0e $00
    rst $38                                       ; $42f6: $ff
    add hl, bc                                    ; $42f7: $09
    ld [bc], a                                    ; $42f8: $02
    ld sp, hl                                     ; $42f9: $f9
    ld [$00f1], sp                                ; $42fa: $08 $f1 $00
    db $eb                                        ; $42fd: $eb
    ei                                            ; $42fe: $fb
    db $f4                                        ; $42ff: $f4
    db $fc                                        ; $4300: $fc
    ld [bc], a                                    ; $4301: $02
    ld [bc], a                                    ; $4302: $02
    ld a, [bc]                                    ; $4303: $0a
    nop                                           ; $4304: $00
    sub e                                         ; $4305: $93
    inc d                                         ; $4306: $14
    nop                                           ; $4307: $00
    ld d, b                                       ; $4308: $50
    nop                                           ; $4309: $00
    ld c, h                                       ; $430a: $4c
    nop                                           ; $430b: $00
    jr jr_0e9_430e                                ; $430c: $18 $00

jr_0e9_430e:
    ld h, $00                                     ; $430e: $26 $00
    ld a, a                                       ; $4310: $7f
    nop                                           ; $4311: $00
    ld a, b                                       ; $4312: $78
    nop                                           ; $4313: $00
    ld h, [hl]                                    ; $4314: $66
    ld b, $42                                     ; $4315: $06 $42
    ld [bc], a                                    ; $4317: $02
    add c                                         ; $4318: $81
    ld [bc], a                                    ; $4319: $02
    ld bc, $000d                                  ; $431a: $01 $0d $00
    ld [bc], a                                    ; $431d: $02
    inc b                                         ; $431e: $04
    ld [bc], a                                    ; $431f: $02
    ld [$000e], sp                                ; $4320: $08 $0e $00
    rst $38                                       ; $4323: $ff
    dec c                                         ; $4324: $0d
    inc b                                         ; $4325: $04
    ld sp, hl                                     ; $4326: $f9
    ld [$00f1], sp                                ; $4327: $08 $f1 $00
    and $fb                                       ; $432a: $e6 $fb
    and $03                                       ; $432c: $e6 $03
    or $fa                                        ; $432e: $f6 $fa
    or $fd                                        ; $4330: $f6 $fd
    ld [bc], a                                    ; $4332: $02
    ld bc, $1f02                                  ; $4333: $01 $02 $1f
    ld [bc], a                                    ; $4336: $02
    ccf                                           ; $4337: $3f
    adc [hl]                                      ; $4338: $8e
    jr jr_0e9_435a                                ; $4339: $18 $1f

    dec sp                                        ; $433b: $3b
    ccf                                           ; $433c: $3f
    inc e                                         ; $433d: $1c
    ld e, $18                                     ; $433e: $1e $18
    rra                                           ; $4340: $1f
    ld [de], a                                    ; $4341: $12
    rra                                           ; $4342: $1f
    add hl, de                                    ; $4343: $19
    rra                                           ; $4344: $1f
    inc a                                         ; $4345: $3c
    daa                                           ; $4346: $27
    ld [bc], a                                    ; $4347: $02
    dec sp                                        ; $4348: $3b
    ld [bc], a                                    ; $4349: $02
    ld [hl], l                                    ; $434a: $75
    ld [bc], a                                    ; $434b: $02
    ld d, e                                       ; $434c: $53
    ld [bc], a                                    ; $434d: $02
    ld c, h                                       ; $434e: $4c
    ld [bc], a                                    ; $434f: $02
    ld b, a                                       ; $4350: $47
    ld [bc], a                                    ; $4351: $02
    add b                                         ; $4352: $80
    ld [bc], a                                    ; $4353: $02
    ld b, b                                       ; $4354: $40
    inc b                                         ; $4355: $04
    ldh [rSC], a                                  ; $4356: $e0 $02
    ret nz                                        ; $4358: $c0

    adc b                                         ; $4359: $88

jr_0e9_435a:
    ld b, b                                       ; $435a: $40
    ret nz                                        ; $435b: $c0

    and b                                         ; $435c: $a0
    ldh [rNR10], a                                ; $435d: $e0 $10
    ldh a, [$60]                                  ; $435f: $f0 $60
    ldh [rSC], a                                  ; $4361: $e0 $02
    ret nz                                        ; $4363: $c0

    add d                                         ; $4364: $82
    ld b, b                                       ; $4365: $40
    ret nz                                        ; $4366: $c0

    ld [bc], a                                    ; $4367: $02
    add b                                         ; $4368: $80
    adc b                                         ; $4369: $88
    xor $6e                                       ; $436a: $ee $6e
    ld a, [c]                                     ; $436c: $f2
    cp $65                                        ; $436d: $fe $65
    ld e, a                                       ; $436f: $5f
    ld a, [hl]                                    ; $4370: $7e
    ld e, [hl]                                    ; $4371: $5e
    ld [bc], a                                    ; $4372: $02
    add sp, $02                                   ; $4373: $e8 $02
    ld b, b                                       ; $4375: $40
    ld [bc], a                                    ; $4376: $02
    ld b, a                                       ; $4377: $47
    ld [bc], a                                    ; $4378: $02
    sbc l                                         ; $4379: $9d
    ld [bc], a                                    ; $437a: $02
    cp h                                          ; $437b: $bc
    ld [bc], a                                    ; $437c: $02
    ld c, [hl]                                    ; $437d: $4e
    ld [bc], a                                    ; $437e: $02
    dec de                                        ; $437f: $1b
    add [hl]                                      ; $4380: $86
    ccf                                           ; $4381: $3f
    cpl                                           ; $4382: $2f
    ld a, [hl-]                                   ; $4383: $3a
    ld a, [hl+]                                   ; $4384: $2a
    inc e                                         ; $4385: $1c
    inc d                                         ; $4386: $14
    ld [bc], a                                    ; $4387: $02
    jr jr_0e9_4396                                ; $4388: $18 $0c

    nop                                           ; $438a: $00
    ld [bc], a                                    ; $438b: $02
    rlca                                          ; $438c: $07
    ld [bc], a                                    ; $438d: $02
    ld b, $06                                     ; $438e: $06 $06
    inc b                                         ; $4390: $04
    ld d, $00                                     ; $4391: $16 $00
    rst $38                                       ; $4393: $ff
    add hl, bc                                    ; $4394: $09
    ld [bc], a                                    ; $4395: $02

jr_0e9_4396:
    ld sp, hl                                     ; $4396: $f9
    ld [$00f1], sp                                ; $4397: $08 $f1 $00
    db $eb                                        ; $439a: $eb
    ei                                            ; $439b: $fb
    di                                            ; $439c: $f3
    db $fc                                        ; $439d: $fc
    ld [bc], a                                    ; $439e: $02
    ld bc, $0008                                  ; $439f: $01 $08 $00
    sub h                                         ; $43a2: $94
    inc b                                         ; $43a3: $04
    nop                                           ; $43a4: $00
    ld a, [bc]                                    ; $43a5: $0a
    nop                                           ; $43a6: $00
    inc l                                         ; $43a7: $2c
    nop                                           ; $43a8: $00
    inc sp                                        ; $43a9: $33
    nop                                           ; $43aa: $00
    jr c, jr_0e9_43ad                             ; $43ab: $38 $00

jr_0e9_43ad:
    ld a, a                                       ; $43ad: $7f
    nop                                           ; $43ae: $00
    ld a, [hl]                                    ; $43af: $7e
    nop                                           ; $43b0: $00
    ld [hl], b                                    ; $43b1: $70
    nop                                           ; $43b2: $00
    call nz, $8604                                ; $43b3: $c4 $04 $86
    ld b, $02                                     ; $43b6: $06 $02
    ld [bc], a                                    ; $43b8: $02
    add e                                         ; $43b9: $83
    ld bc, $0100                                  ; $43ba: $01 $00 $01
    dec c                                         ; $43bd: $0d
    nop                                           ; $43be: $00
    ld [bc], a                                    ; $43bf: $02
    db $10                                        ; $43c0: $10
    ld c, $00                                     ; $43c1: $0e $00
    rst $38                                       ; $43c3: $ff
    dec c                                         ; $43c4: $0d
    inc b                                         ; $43c5: $04
    ld sp, hl                                     ; $43c6: $f9
    ld [$00f1], sp                                ; $43c7: $08 $f1 $00
    rst $20                                       ; $43ca: $e7
    ei                                            ; $43cb: $fb
    rst $20                                       ; $43cc: $e7
    nop                                           ; $43cd: $00
    rst $30                                       ; $43ce: $f7
    ei                                            ; $43cf: $fb
    rst $30                                       ; $43d0: $f7
    rst $38                                       ; $43d1: $ff
    ld [bc], a                                    ; $43d2: $02
    ld [bc], a                                    ; $43d3: $02
    ld [bc], a                                    ; $43d4: $02
    ccf                                           ; $43d5: $3f
    ld [bc], a                                    ; $43d6: $02
    ld a, a                                       ; $43d7: $7f
    adc [hl]                                      ; $43d8: $8e
    ld sp, $763f                                  ; $43d9: $31 $3f $76
    ld a, a                                       ; $43dc: $7f
    add hl, sp                                    ; $43dd: $39
    dec a                                         ; $43de: $3d
    jr nc, jr_0e9_4420                            ; $43df: $30 $3f

    inc h                                         ; $43e1: $24
    ccf                                           ; $43e2: $3f
    inc sp                                        ; $43e3: $33
    ccf                                           ; $43e4: $3f
    ld a, b                                       ; $43e5: $78
    ld c, a                                       ; $43e6: $4f
    ld [bc], a                                    ; $43e7: $02
    ld a, a                                       ; $43e8: $7f
    adc b                                         ; $43e9: $88
    ld l, d                                       ; $43ea: $6a
    ld l, e                                       ; $43eb: $6b
    xor [hl]                                      ; $43ec: $ae
    xor l                                         ; $43ed: $ad
    cp e                                          ; $43ee: $bb
    cp c                                          ; $43ef: $b9
    ld h, a                                       ; $43f0: $67
    ld h, [hl]                                    ; $43f1: $66
    ld [bc], a                                    ; $43f2: $02
    ld e, c                                       ; $43f3: $59
    ld [bc], a                                    ; $43f4: $02
    db $10                                        ; $43f5: $10
    inc b                                         ; $43f6: $04
    jr @+$06                                      ; $43f7: $18 $04

    db $10                                        ; $43f9: $10
    add h                                         ; $43fa: $84
    ld [$0418], sp                                ; $43fb: $08 $18 $04
    inc e                                         ; $43fe: $1c
    ld [bc], a                                    ; $43ff: $02
    jr jr_0e9_4408                                ; $4400: $18 $06

    db $10                                        ; $4402: $10
    add h                                         ; $4403: $84
    ld a, [bc]                                    ; $4404: $0a
    ld a, [de]                                    ; $4405: $1a
    dec e                                         ; $4406: $1d
    rra                                           ; $4407: $1f

jr_0e9_4408:
    ld [bc], a                                    ; $4408: $02
    ld e, $02                                     ; $4409: $1e $02
    inc c                                         ; $440b: $0c
    ld [bc], a                                    ; $440c: $02
    jr jr_0e9_4411                                ; $440d: $18 $02

    add a                                         ; $440f: $87
    ld [bc], a                                    ; $4410: $02

jr_0e9_4411:
    adc a                                         ; $4411: $8f
    ld [bc], a                                    ; $4412: $02
    sbc b                                         ; $4413: $98
    ld [bc], a                                    ; $4414: $02
    cp [hl]                                       ; $4415: $be
    add h                                         ; $4416: $84
    cp l                                          ; $4417: $bd
    or l                                          ; $4418: $b5
    ld c, a                                       ; $4419: $4f
    ld c, e                                       ; $441a: $4b
    ld [bc], a                                    ; $441b: $02
    ld b, $12                                     ; $441c: $06 $12
    nop                                           ; $441e: $00
    ld [bc], a                                    ; $441f: $02

jr_0e9_4420:
    ld [$0c02], sp                                ; $4420: $08 $02 $0c
    ld [bc], a                                    ; $4423: $02
    ld b, $02                                     ; $4424: $06 $02
    dec b                                         ; $4426: $05
    ld [bc], a                                    ; $4427: $02
    ld c, $04                                     ; $4428: $0e $04
    ld [$0012], sp                                ; $442a: $08 $12 $00
    rst $38                                       ; $442d: $ff
    add hl, bc                                    ; $442e: $09
    ld [bc], a                                    ; $442f: $02
    ld sp, hl                                     ; $4430: $f9
    ld [$00f1], sp                                ; $4431: $08 $f1 $00
    db $ec                                        ; $4434: $ec
    db $fc                                        ; $4435: $fc
    db $ec                                        ; $4436: $ec
    cp $02                                        ; $4437: $fe $02
    inc b                                         ; $4439: $04
    ld a, [bc]                                    ; $443a: $0a
    nop                                           ; $443b: $00
    sub h                                         ; $443c: $94
    jr z, jr_0e9_443f                             ; $443d: $28 $00

jr_0e9_443f:
    and b                                         ; $443f: $a0
    nop                                           ; $4440: $00
    adc b                                         ; $4441: $88
    nop                                           ; $4442: $00
    ld sp, $4c00                                  ; $4443: $31 $00 $4c
    nop                                           ; $4446: $00
    ldh a, [rP1]                                  ; $4447: $f0 $00
    ldh [rP1], a                                  ; $4449: $e0 $00
    rst $08                                       ; $444b: $cf
    rrca                                          ; $444c: $0f
    add e                                         ; $444d: $83
    inc bc                                        ; $444e: $03
    add h                                         ; $444f: $84
    inc b                                         ; $4450: $04
    inc e                                         ; $4451: $1c
    nop                                           ; $4452: $00
    ld [bc], a                                    ; $4453: $02
    ld bc, $0002                                  ; $4454: $01 $02 $00
    rst $38                                       ; $4457: $ff
    dec c                                         ; $4458: $0d
    inc b                                         ; $4459: $04
    ld sp, hl                                     ; $445a: $f9
    ld [$00f1], sp                                ; $445b: $08 $f1 $00
    rst $20                                       ; $445e: $e7
    ei                                            ; $445f: $fb
    rst $20                                       ; $4460: $e7
    nop                                           ; $4461: $00
    rst $30                                       ; $4462: $f7
    ei                                            ; $4463: $fb
    rst $30                                       ; $4464: $f7
    rst $38                                       ; $4465: $ff
    ld [bc], a                                    ; $4466: $02
    ld [bc], a                                    ; $4467: $02
    ld [bc], a                                    ; $4468: $02
    ccf                                           ; $4469: $3f
    ld [bc], a                                    ; $446a: $02
    ld a, a                                       ; $446b: $7f
    adc [hl]                                      ; $446c: $8e
    ld sp, $763f                                  ; $446d: $31 $3f $76
    ld a, a                                       ; $4470: $7f
    add hl, sp                                    ; $4471: $39
    dec a                                         ; $4472: $3d
    jr nc, jr_0e9_44b4                            ; $4473: $30 $3f

    inc h                                         ; $4475: $24
    ccf                                           ; $4476: $3f
    inc sp                                        ; $4477: $33
    ccf                                           ; $4478: $3f
    ld a, b                                       ; $4479: $78
    ld c, a                                       ; $447a: $4f
    ld [bc], a                                    ; $447b: $02
    ld a, a                                       ; $447c: $7f
    ld [bc], a                                    ; $447d: $02
    ld l, e                                       ; $447e: $6b
    add [hl]                                      ; $447f: $86
    xor [hl]                                      ; $4480: $ae
    xor l                                         ; $4481: $ad
    or e                                          ; $4482: $b3
    or c                                          ; $4483: $b1
    ld h, a                                       ; $4484: $67
    ld h, [hl]                                    ; $4485: $66
    ld [bc], a                                    ; $4486: $02
    ld e, c                                       ; $4487: $59
    ld [bc], a                                    ; $4488: $02
    db $10                                        ; $4489: $10
    inc b                                         ; $448a: $04
    jr @+$06                                      ; $448b: $18 $04

    db $10                                        ; $448d: $10
    add h                                         ; $448e: $84
    ld [$0418], sp                                ; $448f: $08 $18 $04
    inc e                                         ; $4492: $1c
    ld [bc], a                                    ; $4493: $02
    jr jr_0e9_449a                                ; $4494: $18 $04

    db $10                                        ; $4496: $10
    ld [bc], a                                    ; $4497: $02
    ld a, [de]                                    ; $4498: $1a
    add h                                         ; $4499: $84

jr_0e9_449a:
    dec b                                         ; $449a: $05
    rra                                           ; $449b: $1f
    ld c, $1e                                     ; $449c: $0e $1e
    ld [bc], a                                    ; $449e: $02
    inc e                                         ; $449f: $1c
    ld [bc], a                                    ; $44a0: $02
    ld [$1802], sp                                ; $44a1: $08 $02 $18
    ld [bc], a                                    ; $44a4: $02
    add a                                         ; $44a5: $87
    ld [bc], a                                    ; $44a6: $02
    adc a                                         ; $44a7: $8f
    ld [bc], a                                    ; $44a8: $02
    sbc b                                         ; $44a9: $98
    ld [bc], a                                    ; $44aa: $02
    cp [hl]                                       ; $44ab: $be
    add h                                         ; $44ac: $84
    cp l                                          ; $44ad: $bd
    or l                                          ; $44ae: $b5
    ld c, a                                       ; $44af: $4f
    ld c, e                                       ; $44b0: $4b
    ld [bc], a                                    ; $44b1: $02
    ld b, $12                                     ; $44b2: $06 $12

jr_0e9_44b4:
    nop                                           ; $44b4: $00
    ld [bc], a                                    ; $44b5: $02
    ld [$0c02], sp                                ; $44b6: $08 $02 $0c
    ld [bc], a                                    ; $44b9: $02
    ld b, $02                                     ; $44ba: $06 $02
    dec b                                         ; $44bc: $05
    ld [bc], a                                    ; $44bd: $02
    ld c, $04                                     ; $44be: $0e $04
    ld [$0012], sp                                ; $44c0: $08 $12 $00
    rst $38                                       ; $44c3: $ff
    add hl, bc                                    ; $44c4: $09
    ld [bc], a                                    ; $44c5: $02
    ld sp, hl                                     ; $44c6: $f9
    ld [$00f1], sp                                ; $44c7: $08 $f1 $00
    db $ec                                        ; $44ca: $ec
    db $fc                                        ; $44cb: $fc
    db $ec                                        ; $44cc: $ec
    cp $02                                        ; $44cd: $fe $02
    inc b                                         ; $44cf: $04
    ld a, [bc]                                    ; $44d0: $0a
    nop                                           ; $44d1: $00
    sub h                                         ; $44d2: $94
    jr z, jr_0e9_44d5                             ; $44d3: $28 $00

jr_0e9_44d5:
    and b                                         ; $44d5: $a0
    nop                                           ; $44d6: $00
    sbc b                                         ; $44d7: $98
    nop                                           ; $44d8: $00
    ld sp, $4c00                                  ; $44d9: $31 $00 $4c
    nop                                           ; $44dc: $00
    ldh a, [rP1]                                  ; $44dd: $f0 $00
    ldh [rP1], a                                  ; $44df: $e0 $00
    rst $08                                       ; $44e1: $cf
    rrca                                          ; $44e2: $0f
    add e                                         ; $44e3: $83
    inc bc                                        ; $44e4: $03
    add h                                         ; $44e5: $84
    inc b                                         ; $44e6: $04
    inc e                                         ; $44e7: $1c
    nop                                           ; $44e8: $00
    ld [bc], a                                    ; $44e9: $02
    ld bc, $0002                                  ; $44ea: $01 $02 $00
    rst $38                                       ; $44ed: $ff
    dec c                                         ; $44ee: $0d
    inc b                                         ; $44ef: $04
    ld sp, hl                                     ; $44f0: $f9
    ld [$00f1], sp                                ; $44f1: $08 $f1 $00
    rst $20                                       ; $44f4: $e7
    ei                                            ; $44f5: $fb
    rst $20                                       ; $44f6: $e7
    inc bc                                        ; $44f7: $03
    rst $30                                       ; $44f8: $f7
    ei                                            ; $44f9: $fb
    rst $30                                       ; $44fa: $f7
    cp $02                                        ; $44fb: $fe $02
    ld bc, $1f02                                  ; $44fd: $01 $02 $1f
    ld [bc], a                                    ; $4500: $02
    ccf                                           ; $4501: $3f
    adc [hl]                                      ; $4502: $8e
    jr jr_0e9_4524                                ; $4503: $18 $1f

    dec sp                                        ; $4505: $3b
    ccf                                           ; $4506: $3f
    inc e                                         ; $4507: $1c
    ld e, $18                                     ; $4508: $1e $18
    rra                                           ; $450a: $1f
    ld [de], a                                    ; $450b: $12
    rra                                           ; $450c: $1f
    add hl, de                                    ; $450d: $19
    rra                                           ; $450e: $1f
    inc a                                         ; $450f: $3c
    daa                                           ; $4510: $27
    ld [bc], a                                    ; $4511: $02
    dec sp                                        ; $4512: $3b
    ld [bc], a                                    ; $4513: $02
    ld [hl], l                                    ; $4514: $75
    ld [bc], a                                    ; $4515: $02
    ld d, e                                       ; $4516: $53
    ld [bc], a                                    ; $4517: $02
    ld c, h                                       ; $4518: $4c
    ld [bc], a                                    ; $4519: $02
    ld b, a                                       ; $451a: $47
    ld [bc], a                                    ; $451b: $02
    add c                                         ; $451c: $81
    ld [bc], a                                    ; $451d: $02
    ld b, b                                       ; $451e: $40
    inc b                                         ; $451f: $04
    ldh [rSC], a                                  ; $4520: $e0 $02
    ret nz                                        ; $4522: $c0

    adc b                                         ; $4523: $88

jr_0e9_4524:
    ld b, b                                       ; $4524: $40
    ret nz                                        ; $4525: $c0

    and b                                         ; $4526: $a0
    ldh [rNR10], a                                ; $4527: $e0 $10
    ldh a, [$60]                                  ; $4529: $f0 $60
    ldh [rSC], a                                  ; $452b: $e0 $02
    ret nz                                        ; $452d: $c0

    add d                                         ; $452e: $82
    ld b, b                                       ; $452f: $40
    ret nz                                        ; $4530: $c0

    ld [bc], a                                    ; $4531: $02
    add b                                         ; $4532: $80
    adc b                                         ; $4533: $88
    xor $6e                                       ; $4534: $ee $6e
    ld a, [c]                                     ; $4536: $f2
    cp $65                                        ; $4537: $fe $65
    ld e, a                                       ; $4539: $5f
    ld a, [hl]                                    ; $453a: $7e
    ld e, [hl]                                    ; $453b: $5e
    ld [bc], a                                    ; $453c: $02
    add sp, $02                                   ; $453d: $e8 $02
    add a                                         ; $453f: $87
    ld [bc], a                                    ; $4540: $02
    sbc a                                         ; $4541: $9f
    ld [bc], a                                    ; $4542: $02
    sub b                                         ; $4543: $90
    ld [bc], a                                    ; $4544: $02
    cp h                                          ; $4545: $bc
    add h                                         ; $4546: $84
    ei                                            ; $4547: $fb
    db $eb                                        ; $4548: $eb
    ld e, a                                       ; $4549: $5f
    ld d, a                                       ; $454a: $57
    ld [bc], a                                    ; $454b: $02
    dec c                                         ; $454c: $0d
    ld [de], a                                    ; $454d: $12
    nop                                           ; $454e: $00
    ld [bc], a                                    ; $454f: $02
    ld b, $02                                     ; $4550: $06 $02
    inc b                                         ; $4552: $04
    ld [bc], a                                    ; $4553: $02
    ld b, $02                                     ; $4554: $06 $02
    dec b                                         ; $4556: $05
    ld [bc], a                                    ; $4557: $02
    ld b, $16                                     ; $4558: $06 $16
    nop                                           ; $455a: $00
    rst $38                                       ; $455b: $ff
    add hl, bc                                    ; $455c: $09
    ld [bc], a                                    ; $455d: $02
    ld sp, hl                                     ; $455e: $f9
    ld [$00f1], sp                                ; $455f: $08 $f1 $00
    db $ec                                        ; $4562: $ec
    db $fc                                        ; $4563: $fc
    db $ec                                        ; $4564: $ec
    db $fd                                        ; $4565: $fd
    ld [bc], a                                    ; $4566: $02
    ld [bc], a                                    ; $4567: $02
    ld [$9400], sp                                ; $4568: $08 $00 $94
    ld [$1400], sp                                ; $456b: $08 $00 $14
    nop                                           ; $456e: $00
    ld e, b                                       ; $456f: $58
    nop                                           ; $4570: $00
    ld h, a                                       ; $4571: $67
    nop                                           ; $4572: $00
    ld [hl], c                                    ; $4573: $71
    nop                                           ; $4574: $00
    db $fc                                        ; $4575: $fc
    nop                                           ; $4576: $00
    ldh a, [rP1]                                  ; $4577: $f0 $00
    ret nz                                        ; $4579: $c0

    nop                                           ; $457a: $00
    sbc $1e                                       ; $457b: $de $1e
    add [hl]                                      ; $457d: $86
    ld b, $02                                     ; $457e: $06 $02
    ld [$001c], sp                                ; $4580: $08 $1c $00
    ld [bc], a                                    ; $4583: $02
    ld bc, $0002                                  ; $4584: $01 $02 $00
    rst $38                                       ; $4587: $ff
    dec c                                         ; $4588: $0d
    inc b                                         ; $4589: $04
    ei                                            ; $458a: $fb
    dec b                                         ; $458b: $05
    ld a, [c]                                     ; $458c: $f2
    ei                                            ; $458d: $fb
    ld [c], a                                     ; $458e: $e2
    ld a, [$ffe2]                                 ; $458f: $fa $e2 $ff
    ld a, [c]                                     ; $4592: $f2
    ld sp, hl                                     ; $4593: $f9
    ld a, [c]                                     ; $4594: $f2
    nop                                           ; $4595: $00
    ld [bc], a                                    ; $4596: $02
    rrca                                          ; $4597: $0f
    add l                                         ; $4598: $85
    db $10                                        ; $4599: $10
    rra                                           ; $459a: $1f
    ccf                                           ; $459b: $3f
    cpl                                           ; $459c: $2f
    jr nc, jr_0e9_45a2                            ; $459d: $30 $03

    ccf                                           ; $459f: $3f
    add h                                         ; $45a0: $84
    ld a, a                                       ; $45a1: $7f

jr_0e9_45a2:
    ld l, [hl]                                    ; $45a2: $6e
    ld a, a                                       ; $45a3: $7f
    ld a, l                                       ; $45a4: $7d
    ld [bc], a                                    ; $45a5: $02
    ld a, a                                       ; $45a6: $7f
    ld [bc], a                                    ; $45a7: $02
    ccf                                           ; $45a8: $3f
    add d                                         ; $45a9: $82
    rra                                           ; $45aa: $1f
    ld a, [de]                                    ; $45ab: $1a
    ld [bc], a                                    ; $45ac: $02
    rrca                                          ; $45ad: $0f
    adc d                                         ; $45ae: $8a
    jr nc, jr_0e9_45f0                            ; $45af: $30 $3f

    ld l, a                                       ; $45b1: $6f
    ld e, a                                       ; $45b2: $5f
    and b                                         ; $45b3: $a0
    rst $38                                       ; $45b4: $ff
    or b                                          ; $45b5: $b0
    rst $28                                       ; $45b6: $ef
    ldh a, [$bf]                                  ; $45b7: $f0 $bf
    ld [bc], a                                    ; $45b9: $02
    db $10                                        ; $45ba: $10
    add l                                         ; $45bb: $85
    ld [$1c18], sp                                ; $45bc: $08 $18 $1c
    inc d                                         ; $45bf: $14
    inc c                                         ; $45c0: $0c
    inc bc                                        ; $45c1: $03
    inc e                                         ; $45c2: $1c
    add [hl]                                      ; $45c3: $86
    ld e, $1a                                     ; $45c4: $1e $1a
    ld e, $1a                                     ; $45c6: $1e $1a
    ld e, $16                                     ; $45c8: $1e $16
    ld [bc], a                                    ; $45ca: $02
    inc e                                         ; $45cb: $1c
    ld [bc], a                                    ; $45cc: $02
    jr jr_0e9_45d1                                ; $45cd: $18 $02

    db $10                                        ; $45cf: $10
    and [hl]                                      ; $45d0: $a6

jr_0e9_45d1:
    inc c                                         ; $45d1: $0c
    inc e                                         ; $45d2: $1c
    ld d, $1a                                     ; $45d3: $16 $1a
    dec b                                         ; $45d5: $05

jr_0e9_45d6:
    rra                                           ; $45d6: $1f
    dec c                                         ; $45d7: $0d
    rla                                           ; $45d8: $17
    rrca                                          ; $45d9: $0f
    dec e                                         ; $45da: $1d
    rst $38                                       ; $45db: $ff
    cp h                                          ; $45dc: $bc
    cp a                                          ; $45dd: $bf
    rst $18                                       ; $45de: $df
    cp l                                          ; $45df: $bd
    sbc $db                                       ; $45e0: $de $db
    rst $38                                       ; $45e2: $ff
    db $f4                                        ; $45e3: $f4
    cp e                                          ; $45e4: $bb
    ldh a, [$9f]                                  ; $45e5: $f0 $9f
    ld [hl], b                                    ; $45e7: $70
    ld l, a                                       ; $45e8: $6f
    ld h, b                                       ; $45e9: $60
    ld a, a                                       ; $45ea: $7f
    ld h, b                                       ; $45eb: $60
    ld e, a                                       ; $45ec: $5f
    ld h, b                                       ; $45ed: $60
    ld e, a                                       ; $45ee: $5f
    ld b, b                                       ; $45ef: $40

jr_0e9_45f0:
    ld a, a                                       ; $45f0: $7f
    ld b, b                                       ; $45f1: $40
    ld a, a                                       ; $45f2: $7f
    ld b, b                                       ; $45f3: $40
    ld a, a                                       ; $45f4: $7f
    jr nc, jr_0e9_4636                            ; $45f5: $30 $3f

    ld [bc], a                                    ; $45f7: $02
    rra                                           ; $45f8: $1f
    ld [bc], a                                    ; $45f9: $02
    inc c                                         ; $45fa: $0c
    sbc h                                         ; $45fb: $9c
    ld a, a                                       ; $45fc: $7f
    dec a                                         ; $45fd: $3d
    ld a, l                                       ; $45fe: $7d
    ld a, e                                       ; $45ff: $7b
    dec a                                         ; $4600: $3d
    ld a, e                                       ; $4601: $7b
    ld e, e                                       ; $4602: $5b
    ld a, a                                       ; $4603: $7f
    cpl                                           ; $4604: $2f
    ld a, l                                       ; $4605: $7d
    cpl                                           ; $4606: $2f
    ld e, c                                       ; $4607: $59
    ld c, $76                                     ; $4608: $0e $76
    ld b, $7e                                     ; $460a: $06 $7e
    ld b, $7a                                     ; $460c: $06 $7a
    ld b, $7a                                     ; $460e: $06 $7a
    ld [bc], a                                    ; $4610: $02
    ld a, [hl]                                    ; $4611: $7e
    ld [bc], a                                    ; $4612: $02
    ld a, [hl]                                    ; $4613: $7e
    ld [bc], a                                    ; $4614: $02
    ld a, [hl]                                    ; $4615: $7e
    inc c                                         ; $4616: $0c
    ld a, h                                       ; $4617: $7c
    ld [bc], a                                    ; $4618: $02
    ld a, b                                       ; $4619: $78
    ld [bc], a                                    ; $461a: $02
    jr nc, @+$01                                  ; $461b: $30 $ff

    dec c                                         ; $461d: $0d
    inc b                                         ; $461e: $04
    ei                                            ; $461f: $fb
    dec b                                         ; $4620: $05
    ld a, [c]                                     ; $4621: $f2
    ei                                            ; $4622: $fb
    ld [c], a                                     ; $4623: $e2
    ld sp, hl                                     ; $4624: $f9
    ld [c], a                                     ; $4625: $e2
    rst $38                                       ; $4626: $ff
    ld a, [c]                                     ; $4627: $f2
    ld sp, hl                                     ; $4628: $f9
    ld a, [c]                                     ; $4629: $f2
    nop                                           ; $462a: $00
    ld [bc], a                                    ; $462b: $02
    rlca                                          ; $462c: $07
    add l                                         ; $462d: $85
    ld [$1f0f], sp                                ; $462e: $08 $0f $1f
    rla                                           ; $4631: $17
    jr jr_0e9_4637                                ; $4632: $18 $03

    rra                                           ; $4634: $1f
    add h                                         ; $4635: $84

jr_0e9_4636:
    ccf                                           ; $4636: $3f

jr_0e9_4637:
    scf                                           ; $4637: $37
    ccf                                           ; $4638: $3f
    ld a, $02                                     ; $4639: $3e $02
    ccf                                           ; $463b: $3f
    ld [bc], a                                    ; $463c: $02
    rra                                           ; $463d: $1f
    add d                                         ; $463e: $82
    rrca                                          ; $463f: $0f
    dec c                                         ; $4640: $0d
    ld [bc], a                                    ; $4641: $02
    rlca                                          ; $4642: $07
    adc d                                         ; $4643: $8a
    inc e                                         ; $4644: $1c
    dec de                                        ; $4645: $1b
    scf                                           ; $4646: $37
    cpl                                           ; $4647: $2f
    ld d, b                                       ; $4648: $50
    ld a, a                                       ; $4649: $7f
    ld e, b                                       ; $464a: $58
    ld [hl], a                                    ; $464b: $77
    call c, Call_000_02bb                         ; $464c: $dc $bb $02
    jr nc, jr_0e9_45d6                            ; $464f: $30 $85

    ld [$3c38], sp                                ; $4651: $08 $38 $3c
    inc [hl]                                      ; $4654: $34
    inc c                                         ; $4655: $0c
    inc bc                                        ; $4656: $03
    inc a                                         ; $4657: $3c
    add [hl]                                      ; $4658: $86
    ld a, $1a                                     ; $4659: $3e $1a
    ld a, $3a                                     ; $465b: $3e $3a
    ld a, $36                                     ; $465d: $3e $36
    ld [bc], a                                    ; $465f: $02
    inc a                                         ; $4660: $3c
    add d                                         ; $4661: $82
    jr c, @+$1a                                   ; $4662: $38 $18

    ld [bc], a                                    ; $4664: $02
    jr nc, @-$58                                  ; $4665: $30 $a6

    inc c                                         ; $4667: $0c
    inc a                                         ; $4668: $3c
    ld [hl], $3a                                  ; $4669: $36 $3a
    dec b                                         ; $466b: $05

jr_0e9_466c:
    ccf                                           ; $466c: $3f
    dec c                                         ; $466d: $0d
    scf                                           ; $466e: $37
    rrca                                          ; $466f: $0f
    scf                                           ; $4670: $37
    rst $38                                       ; $4671: $ff
    sbc h                                         ; $4672: $9c
    cp a                                          ; $4673: $bf
    rst $18                                       ; $4674: $df
    sbc l                                         ; $4675: $9d
    cp $fb                                        ; $4676: $fe $fb
    rst $38                                       ; $4678: $ff
    db $f4                                        ; $4679: $f4
    sbc e                                         ; $467a: $9b
    ldh a, [$bf]                                  ; $467b: $f0 $bf
    ld [hl], b                                    ; $467d: $70
    ld l, a                                       ; $467e: $6f
    ld h, b                                       ; $467f: $60
    ld a, a                                       ; $4680: $7f
    ld h, b                                       ; $4681: $60
    ld e, a                                       ; $4682: $5f
    ld h, h                                       ; $4683: $64
    ld e, e                                       ; $4684: $5b
    ld h, b                                       ; $4685: $60
    ld e, a                                       ; $4686: $5f
    ld h, d                                       ; $4687: $62
    ld e, l                                       ; $4688: $5d
    jr nz, jr_0e9_46ca                            ; $4689: $20 $3f

    inc sp                                        ; $468b: $33
    inc a                                         ; $468c: $3c
    ld [bc], a                                    ; $468d: $02
    rrca                                          ; $468e: $0f
    ld [bc], a                                    ; $468f: $02
    nop                                           ; $4690: $00
    sbc [hl]                                      ; $4691: $9e
    ld a, a                                       ; $4692: $7f
    dec e                                         ; $4693: $1d
    ld a, l                                       ; $4694: $7d
    ld a, e                                       ; $4695: $7b
    dec sp                                        ; $4696: $3b
    ld a, l                                       ; $4697: $7d
    ld e, [hl]                                    ; $4698: $5e
    ld a, [hl]                                    ; $4699: $7e
    ld l, $7a                                     ; $469a: $2e $7a
    ld l, $5e                                     ; $469c: $2e $5e
    ld b, $7e                                     ; $469e: $06 $7e
    ld b, $7e                                     ; $46a0: $06 $7e
    ld b, $7a                                     ; $46a2: $06 $7a
    ld [bc], a                                    ; $46a4: $02
    ld a, [hl]                                    ; $46a5: $7e
    ld [bc], a                                    ; $46a6: $02
    ld a, [hl]                                    ; $46a7: $7e
    ld [bc], a                                    ; $46a8: $02
    ld a, [hl]                                    ; $46a9: $7e
    ld [hl-], a                                   ; $46aa: $32
    ld c, [hl]                                    ; $46ab: $4e
    ld a, [hl]                                    ; $46ac: $7e
    ld a, [hl-]                                   ; $46ad: $3a
    ld e, h                                       ; $46ae: $5c
    ld a, h                                       ; $46af: $7c
    ld [bc], a                                    ; $46b0: $02
    ld [hl], b                                    ; $46b1: $70
    rst $38                                       ; $46b2: $ff
    dec c                                         ; $46b3: $0d
    inc b                                         ; $46b4: $04
    ei                                            ; $46b5: $fb
    dec b                                         ; $46b6: $05
    ld a, [c]                                     ; $46b7: $f2
    ei                                            ; $46b8: $fb
    db $e3                                        ; $46b9: $e3
    ld sp, hl                                     ; $46ba: $f9
    db $e3                                        ; $46bb: $e3
    rst $38                                       ; $46bc: $ff
    di                                            ; $46bd: $f3
    ld sp, hl                                     ; $46be: $f9
    di                                            ; $46bf: $f3
    nop                                           ; $46c0: $00
    ld [bc], a                                    ; $46c1: $02
    rlca                                          ; $46c2: $07
    add l                                         ; $46c3: $85
    ld [$1f0f], sp                                ; $46c4: $08 $0f $1f
    rla                                           ; $46c7: $17
    jr jr_0e9_46cd                                ; $46c8: $18 $03

jr_0e9_46ca:
    rra                                           ; $46ca: $1f
    add h                                         ; $46cb: $84
    ccf                                           ; $46cc: $3f

jr_0e9_46cd:
    scf                                           ; $46cd: $37
    ccf                                           ; $46ce: $3f
    ld a, $02                                     ; $46cf: $3e $02
    ccf                                           ; $46d1: $3f
    ld [bc], a                                    ; $46d2: $02
    rra                                           ; $46d3: $1f
    add d                                         ; $46d4: $82
    rrca                                          ; $46d5: $0f
    dec c                                         ; $46d6: $0d
    ld [bc], a                                    ; $46d7: $02
    rlca                                          ; $46d8: $07
    adc d                                         ; $46d9: $8a
    jr jr_0e9_46fb                                ; $46da: $18 $1f

    scf                                           ; $46dc: $37
    cpl                                           ; $46dd: $2f
    ld d, b                                       ; $46de: $50
    ld a, a                                       ; $46df: $7f
    ld e, b                                       ; $46e0: $58
    ld [hl], a                                    ; $46e1: $77
    call c, Call_000_02bb                         ; $46e2: $dc $bb $02
    jr nc, jr_0e9_466c                            ; $46e5: $30 $85

    ld [$3c38], sp                                ; $46e7: $08 $38 $3c
    inc [hl]                                      ; $46ea: $34
    inc c                                         ; $46eb: $0c
    inc bc                                        ; $46ec: $03
    inc a                                         ; $46ed: $3c
    add [hl]                                      ; $46ee: $86
    ld a, $1a                                     ; $46ef: $3e $1a
    ld a, $3a                                     ; $46f1: $3e $3a
    ld a, $36                                     ; $46f3: $3e $36
    ld [bc], a                                    ; $46f5: $02
    inc a                                         ; $46f6: $3c
    add d                                         ; $46f7: $82
    jr c, @+$1a                                   ; $46f8: $38 $18

    ld [bc], a                                    ; $46fa: $02

jr_0e9_46fb:
    jr nc, @-$5a                                  ; $46fb: $30 $a4

    inc c                                         ; $46fd: $0c
    inc a                                         ; $46fe: $3c
    ld [hl], $3a                                  ; $46ff: $36 $3a
    dec b                                         ; $4701: $05
    ccf                                           ; $4702: $3f
    dec c                                         ; $4703: $0d
    scf                                           ; $4704: $37
    rrca                                          ; $4705: $0f
    scf                                           ; $4706: $37
    rst $38                                       ; $4707: $ff
    sbc h                                         ; $4708: $9c
    cp a                                          ; $4709: $bf
    rst $18                                       ; $470a: $df
    sbc l                                         ; $470b: $9d
    ld a, [$f7fb]                                 ; $470c: $fa $fb $f7
    db $f4                                        ; $470f: $f4
    sbc e                                         ; $4710: $9b
    ldh a, [$bf]                                  ; $4711: $f0 $bf
    ld [hl], b                                    ; $4713: $70
    ld l, a                                       ; $4714: $6f
    ld h, b                                       ; $4715: $60
    ld e, a                                       ; $4716: $5f
    ld h, b                                       ; $4717: $60
    ld e, a                                       ; $4718: $5f
    ld h, b                                       ; $4719: $60
    ld e, a                                       ; $471a: $5f
    ld b, b                                       ; $471b: $40
    ld a, a                                       ; $471c: $7f
    ld b, b                                       ; $471d: $40
    ld a, a                                       ; $471e: $7f
    inc sp                                        ; $471f: $33
    dec l                                         ; $4720: $2d
    ld [bc], a                                    ; $4721: $02
    rra                                           ; $4722: $1f
    inc b                                         ; $4723: $04
    nop                                           ; $4724: $00
    add l                                         ; $4725: $85
    ld a, a                                       ; $4726: $7f
    dec e                                         ; $4727: $1d
    ld a, l                                       ; $4728: $7d
    ld a, e                                       ; $4729: $7b
    add hl, sp                                    ; $472a: $39
    ld [bc], a                                    ; $472b: $02
    ld e, a                                       ; $472c: $5f
    sub e                                         ; $472d: $93
    ld l, a                                       ; $472e: $6f
    ld l, $7a                                     ; $472f: $2e $7a
    ld l, $5e                                     ; $4731: $2e $5e
    ld c, $76                                     ; $4733: $0e $76
    ld b, $7a                                     ; $4735: $06 $7a
    ld b, $7a                                     ; $4737: $06 $7a
    ld [hl+], a                                   ; $4739: $22
    ld e, [hl]                                    ; $473a: $5e
    ld [bc], a                                    ; $473b: $02
    ld a, [hl]                                    ; $473c: $7e
    ld a, d                                       ; $473d: $7a
    ld [hl], $5a                                  ; $473e: $36 $5a
    ld a, [hl]                                    ; $4740: $7e
    ld [bc], a                                    ; $4741: $02
    ld a, h                                       ; $4742: $7c
    ld [bc], a                                    ; $4743: $02
    jr nc, jr_0e9_4748                            ; $4744: $30 $02

    nop                                           ; $4746: $00
    rst $38                                       ; $4747: $ff

jr_0e9_4748:
    dec c                                         ; $4748: $0d
    inc b                                         ; $4749: $04
    ei                                            ; $474a: $fb
    dec b                                         ; $474b: $05
    ld a, [c]                                     ; $474c: $f2
    ei                                            ; $474d: $fb
    ld [c], a                                     ; $474e: $e2
    ld a, [$ffe2]                                 ; $474f: $fa $e2 $ff
    ld a, [c]                                     ; $4752: $f2
    ld sp, hl                                     ; $4753: $f9
    ld a, [c]                                     ; $4754: $f2
    nop                                           ; $4755: $00
    ld [bc], a                                    ; $4756: $02
    rrca                                          ; $4757: $0f
    add l                                         ; $4758: $85
    db $10                                        ; $4759: $10
    rra                                           ; $475a: $1f
    ccf                                           ; $475b: $3f
    cpl                                           ; $475c: $2f
    jr nc, jr_0e9_4762                            ; $475d: $30 $03

    ccf                                           ; $475f: $3f
    add h                                         ; $4760: $84
    ld a, a                                       ; $4761: $7f

jr_0e9_4762:
    ld l, [hl]                                    ; $4762: $6e
    ld a, a                                       ; $4763: $7f
    ld a, l                                       ; $4764: $7d
    ld [bc], a                                    ; $4765: $02
    ld a, a                                       ; $4766: $7f
    ld [bc], a                                    ; $4767: $02
    ccf                                           ; $4768: $3f
    add d                                         ; $4769: $82
    rra                                           ; $476a: $1f
    ld a, [de]                                    ; $476b: $1a
    ld [bc], a                                    ; $476c: $02
    rrca                                          ; $476d: $0f
    adc d                                         ; $476e: $8a
    jr nc, jr_0e9_47b0                            ; $476f: $30 $3f

    ld l, a                                       ; $4771: $6f
    ld e, a                                       ; $4772: $5f
    and b                                         ; $4773: $a0
    rst $38                                       ; $4774: $ff
    or b                                          ; $4775: $b0
    rst $28                                       ; $4776: $ef
    ldh a, [$bf]                                  ; $4777: $f0 $bf
    ld [bc], a                                    ; $4779: $02
    db $10                                        ; $477a: $10
    add l                                         ; $477b: $85
    ld [$1c18], sp                                ; $477c: $08 $18 $1c
    inc d                                         ; $477f: $14
    inc c                                         ; $4780: $0c
    inc bc                                        ; $4781: $03
    inc e                                         ; $4782: $1c
    add [hl]                                      ; $4783: $86
    ld e, $1a                                     ; $4784: $1e $1a
    ld e, $1a                                     ; $4786: $1e $1a
    ld e, $16                                     ; $4788: $1e $16
    ld [bc], a                                    ; $478a: $02
    inc e                                         ; $478b: $1c
    ld [bc], a                                    ; $478c: $02
    jr jr_0e9_4791                                ; $478d: $18 $02

    db $10                                        ; $478f: $10
    and [hl]                                      ; $4790: $a6

jr_0e9_4791:
    inc c                                         ; $4791: $0c
    inc e                                         ; $4792: $1c
    ld d, $1a                                     ; $4793: $16 $1a
    dec b                                         ; $4795: $05

jr_0e9_4796:
    rra                                           ; $4796: $1f
    dec c                                         ; $4797: $0d
    rla                                           ; $4798: $17
    rrca                                          ; $4799: $0f
    dec e                                         ; $479a: $1d
    rst $38                                       ; $479b: $ff
    cp h                                          ; $479c: $bc
    cp a                                          ; $479d: $bf
    rst $18                                       ; $479e: $df

jr_0e9_479f:
    cp l                                          ; $479f: $bd
    sbc $db                                       ; $47a0: $de $db
    rst $38                                       ; $47a2: $ff
    db $f4                                        ; $47a3: $f4
    cp e                                          ; $47a4: $bb
    ldh a, [$9f]                                  ; $47a5: $f0 $9f
    ld [hl], b                                    ; $47a7: $70
    ld l, a                                       ; $47a8: $6f
    ld h, b                                       ; $47a9: $60
    ld a, a                                       ; $47aa: $7f
    ld h, b                                       ; $47ab: $60
    ld e, a                                       ; $47ac: $5f
    ld h, b                                       ; $47ad: $60
    ld e, a                                       ; $47ae: $5f
    ld b, b                                       ; $47af: $40

jr_0e9_47b0:
    ld a, a                                       ; $47b0: $7f
    ld b, b                                       ; $47b1: $40
    ld a, a                                       ; $47b2: $7f
    ld b, b                                       ; $47b3: $40
    ld a, a                                       ; $47b4: $7f
    ld sp, $023e                                  ; $47b5: $31 $3e $02
    rra                                           ; $47b8: $1f
    ld [bc], a                                    ; $47b9: $02
    inc c                                         ; $47ba: $0c
    sbc h                                         ; $47bb: $9c
    ld a, a                                       ; $47bc: $7f
    dec a                                         ; $47bd: $3d
    ld a, l                                       ; $47be: $7d
    ld a, e                                       ; $47bf: $7b
    dec a                                         ; $47c0: $3d
    ld a, e                                       ; $47c1: $7b
    ld e, e                                       ; $47c2: $5b
    ld a, a                                       ; $47c3: $7f
    cpl                                           ; $47c4: $2f
    ld a, l                                       ; $47c5: $7d
    cpl                                           ; $47c6: $2f
    ld e, c                                       ; $47c7: $59
    ld c, $76                                     ; $47c8: $0e $76
    ld b, $7e                                     ; $47ca: $06 $7e
    ld b, $7a                                     ; $47cc: $06 $7a

jr_0e9_47ce:
    ld [hl], $4a                                  ; $47ce: $36 $4a
    ld b, [hl]                                    ; $47d0: $46
    ld a, [hl-]                                   ; $47d1: $3a
    ld b, $7a                                     ; $47d2: $06 $7a
    ld h, [hl]                                    ; $47d4: $66
    ld a, [de]                                    ; $47d5: $1a
    ld a, h                                       ; $47d6: $7c
    inc [hl]                                      ; $47d7: $34
    ld [bc], a                                    ; $47d8: $02
    ld a, b                                       ; $47d9: $78
    ld [bc], a                                    ; $47da: $02
    nop                                           ; $47db: $00
    rst $38                                       ; $47dc: $ff
    dec c                                         ; $47dd: $0d
    inc b                                         ; $47de: $04
    ei                                            ; $47df: $fb
    dec b                                         ; $47e0: $05
    ld a, [c]                                     ; $47e1: $f2
    ei                                            ; $47e2: $fb
    ld [c], a                                     ; $47e3: $e2
    ld a, [$00e2]                                 ; $47e4: $fa $e2 $00
    ld a, [c]                                     ; $47e7: $f2
    ld sp, hl                                     ; $47e8: $f9
    ld a, [c]                                     ; $47e9: $f2
    nop                                           ; $47ea: $00
    ld [bc], a                                    ; $47eb: $02
    rrca                                          ; $47ec: $0f
    add l                                         ; $47ed: $85
    db $10                                        ; $47ee: $10
    rra                                           ; $47ef: $1f
    ccf                                           ; $47f0: $3f
    cpl                                           ; $47f1: $2f
    jr nc, jr_0e9_47f7                            ; $47f2: $30 $03

    ccf                                           ; $47f4: $3f
    add h                                         ; $47f5: $84
    ld a, a                                       ; $47f6: $7f

jr_0e9_47f7:
    ld l, [hl]                                    ; $47f7: $6e
    ld a, a                                       ; $47f8: $7f
    ld a, l                                       ; $47f9: $7d
    ld [bc], a                                    ; $47fa: $02
    ld a, a                                       ; $47fb: $7f
    ld [bc], a                                    ; $47fc: $02
    ccf                                           ; $47fd: $3f
    add d                                         ; $47fe: $82
    rra                                           ; $47ff: $1f
    ld a, [de]                                    ; $4800: $1a
    ld [bc], a                                    ; $4801: $02
    rrca                                          ; $4802: $0f
    adc d                                         ; $4803: $8a
    jr nc, jr_0e9_4845                            ; $4804: $30 $3f

    ld l, a                                       ; $4806: $6f
    ld e, a                                       ; $4807: $5f
    and b                                         ; $4808: $a0
    rst $38                                       ; $4809: $ff
    or b                                          ; $480a: $b0
    rst $28                                       ; $480b: $ef
    ldh a, [$ef]                                  ; $480c: $f0 $ef
    ld [bc], a                                    ; $480e: $02
    jr nz, jr_0e9_4796                            ; $480f: $20 $85

    db $10                                        ; $4811: $10
    jr nc, jr_0e9_484c                            ; $4812: $30 $38

    jr z, @+$1a                                   ; $4814: $28 $18

    inc bc                                        ; $4816: $03
    jr c, jr_0e9_479f                             ; $4817: $38 $86

    inc a                                         ; $4819: $3c
    inc [hl]                                      ; $481a: $34
    inc a                                         ; $481b: $3c
    inc [hl]                                      ; $481c: $34
    inc a                                         ; $481d: $3c
    inc l                                         ; $481e: $2c
    ld [bc], a                                    ; $481f: $02
    jr c, jr_0e9_4824                             ; $4820: $38 $02

    jr nc, jr_0e9_4826                            ; $4822: $30 $02

jr_0e9_4824:
    jr nz, jr_0e9_47ce                            ; $4824: $20 $a8

jr_0e9_4826:
    jr c, jr_0e9_4840                             ; $4826: $38 $18

    inc l                                         ; $4828: $2c
    inc [hl]                                      ; $4829: $34
    ld a, [bc]                                    ; $482a: $0a

jr_0e9_482b:
    ld a, $1a                                     ; $482b: $3e $1a
    ld l, $3b                                     ; $482d: $2e $3b
    dec e                                         ; $482f: $1d
    rst $38                                       ; $4830: $ff
    cp b                                          ; $4831: $b8
    cp a                                          ; $4832: $bf
    rst $18                                       ; $4833: $df

jr_0e9_4834:
    db $dd                                        ; $4834: $dd
    cp [hl]                                       ; $4835: $be
    ld a, e                                       ; $4836: $7b
    ld a, a                                       ; $4837: $7f
    ld [hl], h                                    ; $4838: $74
    ld e, e                                       ; $4839: $5b
    ld [hl], b                                    ; $483a: $70
    ld a, a                                       ; $483b: $7f
    ld h, b                                       ; $483c: $60
    ld a, a                                       ; $483d: $7f
    ld h, b                                       ; $483e: $60
    ld a, a                                       ; $483f: $7f

jr_0e9_4840:
    ld h, b                                       ; $4840: $60
    ld e, a                                       ; $4841: $5f
    ld b, b                                       ; $4842: $40
    ld a, a                                       ; $4843: $7f
    ld b, b                                       ; $4844: $40

jr_0e9_4845:
    ld a, a                                       ; $4845: $7f
    ld b, b                                       ; $4846: $40
    ld a, a                                       ; $4847: $7f
    ld c, h                                       ; $4848: $4c
    ld [hl], e                                    ; $4849: $73
    ld a, a                                       ; $484a: $7f
    ld e, h                                       ; $484b: $5c

jr_0e9_484c:
    dec sp                                        ; $484c: $3b
    ccf                                           ; $484d: $3f
    ld [bc], a                                    ; $484e: $02
    ld c, $9c                                     ; $484f: $0e $9c
    ld a, a                                       ; $4851: $7f
    add hl, sp                                    ; $4852: $39
    ld a, l                                       ; $4853: $7d
    ld a, e                                       ; $4854: $7b
    add hl, sp                                    ; $4855: $39
    ld a, a                                       ; $4856: $7f
    ld e, a                                       ; $4857: $5f
    ld a, a                                       ; $4858: $7f
    cpl                                           ; $4859: $2f
    ld a, c                                       ; $485a: $79
    cpl                                           ; $485b: $2f
    ld e, l                                       ; $485c: $5d
    ld c, $76                                     ; $485d: $0e $76

jr_0e9_485f:
    ld b, $7e                                     ; $485f: $06 $7e
    ld b, $7a                                     ; $4861: $06 $7a
    ld h, $5a                                     ; $4863: $26 $5a
    ld b, $7a                                     ; $4865: $06 $7a
    ld b, [hl]                                    ; $4867: $46
    ld a, [hl-]                                   ; $4868: $3a
    inc b                                         ; $4869: $04
    ld a, h                                       ; $486a: $7c
    ld c, h                                       ; $486b: $4c
    inc a                                         ; $486c: $3c
    ld [bc], a                                    ; $486d: $02
    ld [hl], b                                    ; $486e: $70
    ld [bc], a                                    ; $486f: $02
    nop                                           ; $4870: $00
    rst $38                                       ; $4871: $ff
    dec c                                         ; $4872: $0d
    inc b                                         ; $4873: $04
    ei                                            ; $4874: $fb
    dec b                                         ; $4875: $05
    ld a, [c]                                     ; $4876: $f2
    ei                                            ; $4877: $fb
    db $e3                                        ; $4878: $e3
    ld a, [$00e3]                                 ; $4879: $fa $e3 $00
    di                                            ; $487c: $f3
    ld sp, hl                                     ; $487d: $f9
    di                                            ; $487e: $f3
    nop                                           ; $487f: $00
    ld [bc], a                                    ; $4880: $02
    rrca                                          ; $4881: $0f
    add l                                         ; $4882: $85
    db $10                                        ; $4883: $10
    rra                                           ; $4884: $1f
    ccf                                           ; $4885: $3f
    cpl                                           ; $4886: $2f
    jr nc, jr_0e9_488c                            ; $4887: $30 $03

    ccf                                           ; $4889: $3f
    add h                                         ; $488a: $84
    ld a, a                                       ; $488b: $7f

jr_0e9_488c:
    ld l, [hl]                                    ; $488c: $6e
    ld a, a                                       ; $488d: $7f
    ld a, l                                       ; $488e: $7d
    ld [bc], a                                    ; $488f: $02
    ld a, a                                       ; $4890: $7f
    ld [bc], a                                    ; $4891: $02
    ccf                                           ; $4892: $3f
    add d                                         ; $4893: $82
    rra                                           ; $4894: $1f
    ld a, [de]                                    ; $4895: $1a
    ld [bc], a                                    ; $4896: $02
    rrca                                          ; $4897: $0f
    adc d                                         ; $4898: $8a
    jr nc, jr_0e9_48da                            ; $4899: $30 $3f

    ld l, a                                       ; $489b: $6f
    ld e, a                                       ; $489c: $5f
    and b                                         ; $489d: $a0
    rst $38                                       ; $489e: $ff
    or b                                          ; $489f: $b0
    rst $28                                       ; $48a0: $ef
    ldh a, [$ef]                                  ; $48a1: $f0 $ef
    ld [bc], a                                    ; $48a3: $02
    jr nz, jr_0e9_482b                            ; $48a4: $20 $85

    db $10                                        ; $48a6: $10
    jr nc, jr_0e9_48e1                            ; $48a7: $30 $38

    jr z, @+$1a                                   ; $48a9: $28 $18

    inc bc                                        ; $48ab: $03
    jr c, jr_0e9_4834                             ; $48ac: $38 $86

    inc a                                         ; $48ae: $3c
    inc [hl]                                      ; $48af: $34
    inc a                                         ; $48b0: $3c
    inc [hl]                                      ; $48b1: $34
    inc a                                         ; $48b2: $3c
    inc l                                         ; $48b3: $2c
    ld [bc], a                                    ; $48b4: $02
    jr c, jr_0e9_48b9                             ; $48b5: $38 $02

    jr nc, jr_0e9_48bb                            ; $48b7: $30 $02

jr_0e9_48b9:
    jr nz, jr_0e9_485f                            ; $48b9: $20 $a4

jr_0e9_48bb:
    jr jr_0e9_48f5                                ; $48bb: $18 $38

    inc l                                         ; $48bd: $2c
    inc [hl]                                      ; $48be: $34
    ld a, [bc]                                    ; $48bf: $0a
    ld a, $1a                                     ; $48c0: $3e $1a
    ld l, $3b                                     ; $48c2: $2e $3b
    dec e                                         ; $48c4: $1d
    rst $38                                       ; $48c5: $ff
    cp b                                          ; $48c6: $b8
    cp a                                          ; $48c7: $bf
    rst $18                                       ; $48c8: $df
    sbc l                                         ; $48c9: $9d
    ld a, [$f7fb]                                 ; $48ca: $fa $fb $f7
    ld [hl], h                                    ; $48cd: $74
    ld e, e                                       ; $48ce: $5b
    ld [hl], b                                    ; $48cf: $70
    ld a, a                                       ; $48d0: $7f
    ld [hl], b                                    ; $48d1: $70
    ld l, a                                       ; $48d2: $6f
    ld h, b                                       ; $48d3: $60
    ld e, a                                       ; $48d4: $5f
    ld h, b                                       ; $48d5: $60
    ld e, a                                       ; $48d6: $5f
    ld b, h                                       ; $48d7: $44
    ld a, e                                       ; $48d8: $7b
    ld b, b                                       ; $48d9: $40

jr_0e9_48da:
    ld a, a                                       ; $48da: $7f
    ld e, [hl]                                    ; $48db: $5e
    ld l, l                                       ; $48dc: $6d
    ld e, e                                       ; $48dd: $5b
    ld a, a                                       ; $48de: $7f
    ld [bc], a                                    ; $48df: $02
    ccf                                           ; $48e0: $3f

jr_0e9_48e1:
    ld [bc], a                                    ; $48e1: $02
    inc c                                         ; $48e2: $0c
    ld [bc], a                                    ; $48e3: $02
    nop                                           ; $48e4: $00
    add l                                         ; $48e5: $85
    ld a, a                                       ; $48e6: $7f
    add hl, sp                                    ; $48e7: $39
    ld a, l                                       ; $48e8: $7d
    ld a, e                                       ; $48e9: $7b
    add hl, sp                                    ; $48ea: $39
    ld [bc], a                                    ; $48eb: $02
    ld e, a                                       ; $48ec: $5f
    sub e                                         ; $48ed: $93
    ld l, a                                       ; $48ee: $6f
    cpl                                           ; $48ef: $2f
    ld a, c                                       ; $48f0: $79
    cpl                                           ; $48f1: $2f
    ld e, l                                       ; $48f2: $5d
    ld c, $76                                     ; $48f3: $0e $76

jr_0e9_48f5:
    ld b, $7a                                     ; $48f5: $06 $7a
    ld b, $7a                                     ; $48f7: $06 $7a
    ld b, $7a                                     ; $48f9: $06 $7a
    ld [bc], a                                    ; $48fb: $02
    ld a, [hl]                                    ; $48fc: $7e
    ld [bc], a                                    ; $48fd: $02
    ld a, [hl]                                    ; $48fe: $7e
    ld c, h                                       ; $48ff: $4c
    inc [hl]                                      ; $4900: $34
    ld [bc], a                                    ; $4901: $02
    ld a, b                                       ; $4902: $78
    inc b                                         ; $4903: $04
    nop                                           ; $4904: $00
    rst $38                                       ; $4905: $ff
    dec c                                         ; $4906: $0d
    inc b                                         ; $4907: $04
    ei                                            ; $4908: $fb
    dec b                                         ; $4909: $05
    ld a, [c]                                     ; $490a: $f2
    ei                                            ; $490b: $fb
    ld [c], a                                     ; $490c: $e2
    ld a, [$ffe2]                                 ; $490d: $fa $e2 $ff
    ld a, [c]                                     ; $4910: $f2
    ld sp, hl                                     ; $4911: $f9
    ld a, [c]                                     ; $4912: $f2
    nop                                           ; $4913: $00
    ld [bc], a                                    ; $4914: $02
    rrca                                          ; $4915: $0f
    add l                                         ; $4916: $85
    db $10                                        ; $4917: $10
    rra                                           ; $4918: $1f
    ccf                                           ; $4919: $3f
    cpl                                           ; $491a: $2f
    jr nc, jr_0e9_4920                            ; $491b: $30 $03

    ccf                                           ; $491d: $3f
    add h                                         ; $491e: $84
    ld a, a                                       ; $491f: $7f

jr_0e9_4920:
    ld l, [hl]                                    ; $4920: $6e
    ld a, a                                       ; $4921: $7f
    ld a, l                                       ; $4922: $7d
    ld [bc], a                                    ; $4923: $02
    ld a, a                                       ; $4924: $7f
    ld [bc], a                                    ; $4925: $02
    ccf                                           ; $4926: $3f
    add d                                         ; $4927: $82
    rra                                           ; $4928: $1f
    ld a, [de]                                    ; $4929: $1a
    ld [bc], a                                    ; $492a: $02
    rrca                                          ; $492b: $0f
    adc d                                         ; $492c: $8a
    jr nc, jr_0e9_496e                            ; $492d: $30 $3f

    ld l, a                                       ; $492f: $6f
    ld e, a                                       ; $4930: $5f
    and b                                         ; $4931: $a0
    rst $38                                       ; $4932: $ff
    or b                                          ; $4933: $b0
    rst $28                                       ; $4934: $ef
    ldh a, [$bf]                                  ; $4935: $f0 $bf
    ld [bc], a                                    ; $4937: $02
    db $10                                        ; $4938: $10
    add l                                         ; $4939: $85
    ld [$1c18], sp                                ; $493a: $08 $18 $1c
    inc d                                         ; $493d: $14
    inc c                                         ; $493e: $0c
    inc bc                                        ; $493f: $03
    inc e                                         ; $4940: $1c
    add [hl]                                      ; $4941: $86
    ld e, $1a                                     ; $4942: $1e $1a
    ld e, $1a                                     ; $4944: $1e $1a
    ld e, $16                                     ; $4946: $1e $16
    ld [bc], a                                    ; $4948: $02
    inc e                                         ; $4949: $1c
    ld [bc], a                                    ; $494a: $02
    jr jr_0e9_494f                                ; $494b: $18 $02

    db $10                                        ; $494d: $10
    and [hl]                                      ; $494e: $a6

jr_0e9_494f:
    inc c                                         ; $494f: $0c
    inc e                                         ; $4950: $1c
    ld d, $1a                                     ; $4951: $16 $1a
    dec b                                         ; $4953: $05
    rra                                           ; $4954: $1f
    dec c                                         ; $4955: $0d
    rla                                           ; $4956: $17
    rrca                                          ; $4957: $0f
    dec e                                         ; $4958: $1d
    rst $38                                       ; $4959: $ff
    cp h                                          ; $495a: $bc
    cp a                                          ; $495b: $bf
    rst $18                                       ; $495c: $df
    cp l                                          ; $495d: $bd
    sbc $db                                       ; $495e: $de $db
    rst $38                                       ; $4960: $ff
    db $f4                                        ; $4961: $f4
    cp e                                          ; $4962: $bb
    ldh a, [$9f]                                  ; $4963: $f0 $9f
    ld [hl], b                                    ; $4965: $70
    ld l, a                                       ; $4966: $6f
    ld h, b                                       ; $4967: $60
    ld a, a                                       ; $4968: $7f
    ld h, b                                       ; $4969: $60
    ld e, a                                       ; $496a: $5f
    ld l, h                                       ; $496b: $6c
    ld d, e                                       ; $496c: $53
    ld h, d                                       ; $496d: $62

jr_0e9_496e:
    ld e, l                                       ; $496e: $5d
    ld h, b                                       ; $496f: $60
    ld e, a                                       ; $4970: $5f
    ld h, [hl]                                    ; $4971: $66
    ld e, c                                       ; $4972: $59
    ccf                                           ; $4973: $3f
    inc l                                         ; $4974: $2c
    ld [bc], a                                    ; $4975: $02
    rra                                           ; $4976: $1f
    ld [bc], a                                    ; $4977: $02
    nop                                           ; $4978: $00
    sbc h                                         ; $4979: $9c
    ld a, a                                       ; $497a: $7f
    dec a                                         ; $497b: $3d
    ld a, l                                       ; $497c: $7d
    ld a, e                                       ; $497d: $7b
    dec a                                         ; $497e: $3d
    ld a, e                                       ; $497f: $7b
    ld e, e                                       ; $4980: $5b
    ld a, a                                       ; $4981: $7f
    cpl                                           ; $4982: $2f
    ld a, l                                       ; $4983: $7d
    cpl                                           ; $4984: $2f
    ld e, c                                       ; $4985: $59
    ld c, $76                                     ; $4986: $0e $76
    ld b, $7e                                     ; $4988: $06 $7e
    ld b, $7a                                     ; $498a: $06 $7a
    ld b, $7a                                     ; $498c: $06 $7a
    ld [bc], a                                    ; $498e: $02
    ld a, [hl]                                    ; $498f: $7e
    ld [bc], a                                    ; $4990: $02
    ld a, [hl]                                    ; $4991: $7e
    ld [bc], a                                    ; $4992: $02
    ld a, [hl]                                    ; $4993: $7e
    inc c                                         ; $4994: $0c
    ld a, h                                       ; $4995: $7c
    ld [bc], a                                    ; $4996: $02
    ld a, b                                       ; $4997: $78
    ld [bc], a                                    ; $4998: $02
    jr nc, @+$01                                  ; $4999: $30 $ff

    dec c                                         ; $499b: $0d
    inc b                                         ; $499c: $04
    ei                                            ; $499d: $fb
    dec b                                         ; $499e: $05
    ld a, [c]                                     ; $499f: $f2
    ei                                            ; $49a0: $fb
    ld [c], a                                     ; $49a1: $e2
    ld a, [$ffe2]                                 ; $49a2: $fa $e2 $ff
    ld a, [c]                                     ; $49a5: $f2
    ld sp, hl                                     ; $49a6: $f9
    ld a, [c]                                     ; $49a7: $f2
    nop                                           ; $49a8: $00
    ld [bc], a                                    ; $49a9: $02
    rrca                                          ; $49aa: $0f
    add h                                         ; $49ab: $84
    ld [de], a                                    ; $49ac: $12
    dec e                                         ; $49ad: $1d
    scf                                           ; $49ae: $37
    jr z, jr_0e9_49b3                             ; $49af: $28 $02

    ccf                                           ; $49b1: $3f
    sbc b                                         ; $49b2: $98

jr_0e9_49b3:
    ld a, a                                       ; $49b3: $7f
    ld a, b                                       ; $49b4: $78
    ld a, a                                       ; $49b5: $7f
    ld [hl], b                                    ; $49b6: $70
    ld a, a                                       ; $49b7: $7f
    ld l, l                                       ; $49b8: $6d
    ccf                                           ; $49b9: $3f
    jr nz, jr_0e9_49db                            ; $49ba: $20 $1f

    inc d                                         ; $49bc: $14
    rra                                           ; $49bd: $1f
    inc de                                        ; $49be: $13
    rrca                                          ; $49bf: $0f
    ld [$3f37], sp                                ; $49c0: $08 $37 $3f
    ld l, b                                       ; $49c3: $68
    ld a, a                                       ; $49c4: $7f
    xor a                                         ; $49c5: $af
    rst $38                                       ; $49c6: $ff
    push de                                       ; $49c7: $d5
    rst $38                                       ; $49c8: $ff
    jp nc, Jump_000_02ff                          ; $49c9: $d2 $ff $02

    db $10                                        ; $49cc: $10
    add h                                         ; $49cd: $84
    ld [$0c18], sp                                ; $49ce: $08 $18 $0c
    inc d                                         ; $49d1: $14
    ld [bc], a                                    ; $49d2: $02
    inc e                                         ; $49d3: $1c
    adc h                                         ; $49d4: $8c
    ld e, $1a                                     ; $49d5: $1e $1a
    ld e, $0e                                     ; $49d7: $1e $0e
    ld e, $16                                     ; $49d9: $1e $16

jr_0e9_49db:
    inc e                                         ; $49db: $1c
    inc b                                         ; $49dc: $04
    jr @+$0a                                      ; $49dd: $18 $08

    jr jr_0e9_49e9                                ; $49df: $18 $08

    ld [bc], a                                    ; $49e1: $02
    db $10                                        ; $49e2: $10
    adc a                                         ; $49e3: $8f
    inc c                                         ; $49e4: $0c
    inc e                                         ; $49e5: $1c
    ld d, $1e                                     ; $49e6: $16 $1e
    dec d                                         ; $49e8: $15

jr_0e9_49e9:
    rra                                           ; $49e9: $1f
    dec bc                                        ; $49ea: $0b
    rra                                           ; $49eb: $1f
    dec bc                                        ; $49ec: $0b
    rra                                           ; $49ed: $1f
    rst $38                                       ; $49ee: $ff
    and a                                         ; $49ef: $a7
    cp a                                          ; $49f0: $bf
    rst $30                                       ; $49f1: $f7
    cp h                                          ; $49f2: $bc
    ld [bc], a                                    ; $49f3: $02
    rst $38                                       ; $49f4: $ff
    sub a                                         ; $49f5: $97
    rst $30                                       ; $49f6: $f7
    or $9d                                        ; $49f7: $f6 $9d
    db $f4                                        ; $49f9: $f4
    xor a                                         ; $49fa: $af
    ld l, h                                       ; $49fb: $6c
    ld a, e                                       ; $49fc: $7b
    ld l, h                                       ; $49fd: $6c
    ld a, e                                       ; $49fe: $7b
    ld l, b                                       ; $49ff: $68
    ld e, a                                       ; $4a00: $5f
    ld c, b                                       ; $4a01: $48
    ld a, a                                       ; $4a02: $7f
    ld c, b                                       ; $4a03: $48
    ld a, a                                       ; $4a04: $7f
    ld c, b                                       ; $4a05: $48
    ld a, a                                       ; $4a06: $7f
    ld l, b                                       ; $4a07: $68
    ld e, a                                       ; $4a08: $5f
    jr c, jr_0e9_4a4a                             ; $4a09: $38 $3f

    rla                                           ; $4a0b: $17
    rra                                           ; $4a0c: $1f
    ld [bc], a                                    ; $4a0d: $02
    inc e                                         ; $4a0e: $1c
    add l                                         ; $4a0f: $85
    ld a, a                                       ; $4a10: $7f
    ld h, l                                       ; $4a11: $65
    ld a, l                                       ; $4a12: $7d
    ld l, a                                       ; $4a13: $6f
    dec a                                         ; $4a14: $3d
    ld [bc], a                                    ; $4a15: $02
    ld a, a                                       ; $4a16: $7f
    ld [bc], a                                    ; $4a17: $02
    ld l, a                                       ; $4a18: $6f
    sub l                                         ; $4a19: $95
    add hl, sp                                    ; $4a1a: $39
    cpl                                           ; $4a1b: $2f
    ld [hl], l                                    ; $4a1c: $75
    ld [hl], $5e                                  ; $4a1d: $36 $5e
    ld [hl], $5e                                  ; $4a1f: $36 $5e

jr_0e9_4a21:
    ld d, $7a                                     ; $4a21: $16 $7a
    ld [de], a                                    ; $4a23: $12
    ld a, [hl]                                    ; $4a24: $7e
    ld [de], a                                    ; $4a25: $12
    ld a, [hl]                                    ; $4a26: $7e
    ld [de], a                                    ; $4a27: $12
    ld a, [hl]                                    ; $4a28: $7e
    ld d, $7a                                     ; $4a29: $16 $7a
    inc e                                         ; $4a2b: $1c
    ld a, h                                       ; $4a2c: $7c
    ld l, b                                       ; $4a2d: $68
    ld a, b                                       ; $4a2e: $78
    ld [bc], a                                    ; $4a2f: $02
    jr c, @+$01                                   ; $4a30: $38 $ff

    dec c                                         ; $4a32: $0d
    inc b                                         ; $4a33: $04
    ei                                            ; $4a34: $fb
    dec b                                         ; $4a35: $05
    ld a, [c]                                     ; $4a36: $f2
    ei                                            ; $4a37: $fb
    ld [c], a                                     ; $4a38: $e2
    ld a, [$00e2]                                 ; $4a39: $fa $e2 $00
    ld a, [c]                                     ; $4a3c: $f2
    ld sp, hl                                     ; $4a3d: $f9
    ld a, [c]                                     ; $4a3e: $f2
    nop                                           ; $4a3f: $00
    ld [bc], a                                    ; $4a40: $02
    rrca                                          ; $4a41: $0f
    add h                                         ; $4a42: $84
    ld [de], a                                    ; $4a43: $12
    dec e                                         ; $4a44: $1d
    scf                                           ; $4a45: $37
    jr z, jr_0e9_4a4a                             ; $4a46: $28 $02

    ccf                                           ; $4a48: $3f
    sbc b                                         ; $4a49: $98

jr_0e9_4a4a:
    ld a, a                                       ; $4a4a: $7f
    ld a, b                                       ; $4a4b: $78
    ld a, a                                       ; $4a4c: $7f
    ld [hl], b                                    ; $4a4d: $70
    ld a, a                                       ; $4a4e: $7f
    ld l, l                                       ; $4a4f: $6d
    ccf                                           ; $4a50: $3f
    jr nz, jr_0e9_4a72                            ; $4a51: $20 $1f

    inc d                                         ; $4a53: $14
    rra                                           ; $4a54: $1f
    inc de                                        ; $4a55: $13
    rrca                                          ; $4a56: $0f
    ld [$3f37], sp                                ; $4a57: $08 $37 $3f
    ld l, b                                       ; $4a5a: $68
    ld a, a                                       ; $4a5b: $7f
    xor a                                         ; $4a5c: $af
    rst $38                                       ; $4a5d: $ff
    db $dd                                        ; $4a5e: $dd
    xor a                                         ; $4a5f: $af
    jp nc, Jump_000_02ff                          ; $4a60: $d2 $ff $02

    jr nz, jr_0e9_49e9                            ; $4a63: $20 $84

    db $10                                        ; $4a65: $10
    jr nc, jr_0e9_4a80                            ; $4a66: $30 $18

    jr z, jr_0e9_4a6c                             ; $4a68: $28 $02

    jr c, @-$72                                   ; $4a6a: $38 $8c

jr_0e9_4a6c:
    inc a                                         ; $4a6c: $3c
    inc [hl]                                      ; $4a6d: $34
    inc a                                         ; $4a6e: $3c
    inc e                                         ; $4a6f: $1c
    inc a                                         ; $4a70: $3c
    inc l                                         ; $4a71: $2c

jr_0e9_4a72:
    jr c, @+$0a                                   ; $4a72: $38 $08

    jr nc, jr_0e9_4a86                            ; $4a74: $30 $10

    jr nc, jr_0e9_4a88                            ; $4a76: $30 $10

    ld [bc], a                                    ; $4a78: $02
    jr nz, jr_0e9_4a21                            ; $4a79: $20 $a6

    jr jr_0e9_4ab5                                ; $4a7b: $18 $38

    inc l                                         ; $4a7d: $2c
    inc [hl]                                      ; $4a7e: $34

jr_0e9_4a7f:
    ld a, [hl+]                                   ; $4a7f: $2a

jr_0e9_4a80:
    ld a, $16                                     ; $4a80: $3e $16
    ld a, $17                                     ; $4a82: $3e $17
    dec a                                         ; $4a84: $3d
    rst $38                                       ; $4a85: $ff

jr_0e9_4a86:
    and a                                         ; $4a86: $a7
    cp a                                          ; $4a87: $bf

jr_0e9_4a88:
    rst $30                                       ; $4a88: $f7
    cp h                                          ; $4a89: $bc
    rst $18                                       ; $4a8a: $df
    ld a, a                                       ; $4a8b: $7f
    ld [hl], a                                    ; $4a8c: $77
    or $9d                                        ; $4a8d: $f6 $9d
    ld [hl], h                                    ; $4a8f: $74
    ld e, a                                       ; $4a90: $5f
    ld l, h                                       ; $4a91: $6c
    ld [hl], a                                    ; $4a92: $77
    ld l, h                                       ; $4a93: $6c
    ld [hl], a                                    ; $4a94: $77
    ld l, h                                       ; $4a95: $6c
    ld e, e                                       ; $4a96: $5b
    ld l, h                                       ; $4a97: $6c
    ld e, e                                       ; $4a98: $5b
    ld c, h                                       ; $4a99: $4c
    ld a, e                                       ; $4a9a: $7b
    ld c, h                                       ; $4a9b: $4c
    ld a, e                                       ; $4a9c: $7b
    ld l, b                                       ; $4a9d: $68
    ld e, a                                       ; $4a9e: $5f
    add hl, sp                                    ; $4a9f: $39
    ccf                                           ; $4aa0: $3f
    ld [bc], a                                    ; $4aa1: $02
    rra                                           ; $4aa2: $1f
    ld [bc], a                                    ; $4aa3: $02
    nop                                           ; $4aa4: $00
    add l                                         ; $4aa5: $85
    ld a, a                                       ; $4aa6: $7f
    ld h, l                                       ; $4aa7: $65
    ld a, l                                       ; $4aa8: $7d
    ld l, a                                       ; $4aa9: $6f
    ccf                                           ; $4aaa: $3f
    ld [bc], a                                    ; $4aab: $02
    ld a, a                                       ; $4aac: $7f
    sub l                                         ; $4aad: $95
    ld l, l                                       ; $4aae: $6d
    ld l, a                                       ; $4aaf: $6f
    dec a                                         ; $4ab0: $3d
    ld a, $56                                     ; $4ab1: $3e $56
    ld [hl], $5e                                  ; $4ab3: $36 $5e

jr_0e9_4ab5:
    ld d, $7a                                     ; $4ab5: $16 $7a
    ld a, [de]                                    ; $4ab7: $1a
    ld l, [hl]                                    ; $4ab8: $6e
    ld a, [de]                                    ; $4ab9: $1a
    ld l, [hl]                                    ; $4aba: $6e
    ld a, [bc]                                    ; $4abb: $0a
    ld a, [hl]                                    ; $4abc: $7e
    ld c, $7a                                     ; $4abd: $0e $7a
    ld a, [hl]                                    ; $4abf: $7e
    ld a, [hl-]                                   ; $4ac0: $3a
    ld l, h                                       ; $4ac1: $6c
    ld a, h                                       ; $4ac2: $7c
    ld [bc], a                                    ; $4ac3: $02
    ld a, b                                       ; $4ac4: $78
    ld [bc], a                                    ; $4ac5: $02
    jr nc, @+$01                                  ; $4ac6: $30 $ff

    dec c                                         ; $4ac8: $0d
    inc b                                         ; $4ac9: $04
    ei                                            ; $4aca: $fb
    dec b                                         ; $4acb: $05
    ld a, [c]                                     ; $4acc: $f2
    ei                                            ; $4acd: $fb
    db $e3                                        ; $4ace: $e3
    ld a, [$00e3]                                 ; $4acf: $fa $e3 $00
    di                                            ; $4ad2: $f3
    ld sp, hl                                     ; $4ad3: $f9
    di                                            ; $4ad4: $f3
    nop                                           ; $4ad5: $00
    ld [bc], a                                    ; $4ad6: $02
    rrca                                          ; $4ad7: $0f
    add h                                         ; $4ad8: $84
    ld [de], a                                    ; $4ad9: $12
    dec e                                         ; $4ada: $1d
    scf                                           ; $4adb: $37
    jr z, jr_0e9_4ae0                             ; $4adc: $28 $02

    ccf                                           ; $4ade: $3f
    sbc b                                         ; $4adf: $98

jr_0e9_4ae0:
    ld a, a                                       ; $4ae0: $7f
    ld a, b                                       ; $4ae1: $78
    ld a, a                                       ; $4ae2: $7f
    ld [hl], b                                    ; $4ae3: $70
    ld a, a                                       ; $4ae4: $7f
    ld l, l                                       ; $4ae5: $6d
    ccf                                           ; $4ae6: $3f
    jr nz, jr_0e9_4b08                            ; $4ae7: $20 $1f

    inc d                                         ; $4ae9: $14
    rra                                           ; $4aea: $1f
    inc de                                        ; $4aeb: $13
    rrca                                          ; $4aec: $0f
    ld [$3f37], sp                                ; $4aed: $08 $37 $3f
    ld l, b                                       ; $4af0: $68
    ld a, a                                       ; $4af1: $7f
    xor a                                         ; $4af2: $af
    rst $38                                       ; $4af3: $ff
    db $dd                                        ; $4af4: $dd
    or a                                          ; $4af5: $b7
    jp nc, Jump_000_02ff                          ; $4af6: $d2 $ff $02

    jr nz, jr_0e9_4a7f                            ; $4af9: $20 $84

    db $10                                        ; $4afb: $10
    jr nc, jr_0e9_4b16                            ; $4afc: $30 $18

    jr z, jr_0e9_4b02                             ; $4afe: $28 $02

    jr c, @-$72                                   ; $4b00: $38 $8c

jr_0e9_4b02:
    inc a                                         ; $4b02: $3c
    inc [hl]                                      ; $4b03: $34
    inc a                                         ; $4b04: $3c
    inc e                                         ; $4b05: $1c
    inc a                                         ; $4b06: $3c
    inc l                                         ; $4b07: $2c

jr_0e9_4b08:
    jr c, @+$0a                                   ; $4b08: $38 $08

    jr nc, jr_0e9_4b1c                            ; $4b0a: $30 $10

    jr nc, jr_0e9_4b1e                            ; $4b0c: $30 $10

    ld [bc], a                                    ; $4b0e: $02
    jr nz, jr_0e9_4ab5                            ; $4b0f: $20 $a4

    jr jr_0e9_4b4b                                ; $4b11: $18 $38

    inc l                                         ; $4b13: $2c
    inc [hl]                                      ; $4b14: $34
    ld a, [hl+]                                   ; $4b15: $2a

jr_0e9_4b16:
    ld a, $16                                     ; $4b16: $3e $16
    ld a, $17                                     ; $4b18: $3e $17
    dec a                                         ; $4b1a: $3d
    rst $38                                       ; $4b1b: $ff

jr_0e9_4b1c:
    and a                                         ; $4b1c: $a7
    cp a                                          ; $4b1d: $bf

jr_0e9_4b1e:
    rst $30                                       ; $4b1e: $f7
    cp h                                          ; $4b1f: $bc
    rst $18                                       ; $4b20: $df
    ld a, a                                       ; $4b21: $7f
    ld [hl], a                                    ; $4b22: $77
    or $9d                                        ; $4b23: $f6 $9d
    ld [hl], h                                    ; $4b25: $74
    ld e, a                                       ; $4b26: $5f
    ld l, h                                       ; $4b27: $6c
    ld a, e                                       ; $4b28: $7b
    ld l, h                                       ; $4b29: $6c
    ld e, e                                       ; $4b2a: $5b
    ld c, h                                       ; $4b2b: $4c
    ld a, e                                       ; $4b2c: $7b
    ld c, b                                       ; $4b2d: $48
    ld a, a                                       ; $4b2e: $7f
    ld c, b                                       ; $4b2f: $48
    ld a, a                                       ; $4b30: $7f
    ld l, b                                       ; $4b31: $68
    ld e, a                                       ; $4b32: $5f
    add hl, sp                                    ; $4b33: $39
    ld a, $02                                     ; $4b34: $3e $02
    rrca                                          ; $4b36: $0f
    inc b                                         ; $4b37: $04
    nop                                           ; $4b38: $00
    add l                                         ; $4b39: $85
    ld a, a                                       ; $4b3a: $7f
    ld h, l                                       ; $4b3b: $65
    ld a, l                                       ; $4b3c: $7d
    ld l, a                                       ; $4b3d: $6f
    ccf                                           ; $4b3e: $3f
    ld [bc], a                                    ; $4b3f: $02
    ld a, a                                       ; $4b40: $7f
    sub l                                         ; $4b41: $95
    ld l, l                                       ; $4b42: $6d
    ld l, a                                       ; $4b43: $6f
    dec a                                         ; $4b44: $3d
    ld l, $76                                     ; $4b45: $2e $76
    ld [hl], $5e                                  ; $4b47: $36 $5e
    ld d, $7a                                     ; $4b49: $16 $7a

jr_0e9_4b4b:
    ld [de], a                                    ; $4b4b: $12
    ld a, [hl]                                    ; $4b4c: $7e
    ld a, [de]                                    ; $4b4d: $1a
    ld l, [hl]                                    ; $4b4e: $6e
    ld a, [de]                                    ; $4b4f: $1a
    ld l, [hl]                                    ; $4b50: $6e
    ld c, $7a                                     ; $4b51: $0e $7a
    ld a, h                                       ; $4b53: $7c
    inc a                                         ; $4b54: $3c
    ld l, b                                       ; $4b55: $68
    ld e, b                                       ; $4b56: $58
    ld [bc], a                                    ; $4b57: $02
    jr c, jr_0e9_4b5c                             ; $4b58: $38 $02

    nop                                           ; $4b5a: $00
    rst $38                                       ; $4b5b: $ff

jr_0e9_4b5c:
    dec c                                         ; $4b5c: $0d
    inc b                                         ; $4b5d: $04
    ei                                            ; $4b5e: $fb
    dec b                                         ; $4b5f: $05
    ld a, [c]                                     ; $4b60: $f2
    ei                                            ; $4b61: $fb
    ld [c], a                                     ; $4b62: $e2
    ld a, [$ffe2]                                 ; $4b63: $fa $e2 $ff
    ld a, [c]                                     ; $4b66: $f2
    ld sp, hl                                     ; $4b67: $f9
    ld a, [c]                                     ; $4b68: $f2
    nop                                           ; $4b69: $00
    ld [bc], a                                    ; $4b6a: $02
    rrca                                          ; $4b6b: $0f
    add h                                         ; $4b6c: $84
    ld [de], a                                    ; $4b6d: $12
    dec e                                         ; $4b6e: $1d
    scf                                           ; $4b6f: $37
    jr z, jr_0e9_4b74                             ; $4b70: $28 $02

    ccf                                           ; $4b72: $3f
    sbc b                                         ; $4b73: $98

jr_0e9_4b74:
    ld a, a                                       ; $4b74: $7f
    ld a, b                                       ; $4b75: $78
    ld a, a                                       ; $4b76: $7f
    ld [hl], b                                    ; $4b77: $70
    ld a, a                                       ; $4b78: $7f
    ld l, l                                       ; $4b79: $6d
    ccf                                           ; $4b7a: $3f
    jr nz, jr_0e9_4b9c                            ; $4b7b: $20 $1f

    inc d                                         ; $4b7d: $14
    rra                                           ; $4b7e: $1f
    inc de                                        ; $4b7f: $13
    rrca                                          ; $4b80: $0f
    ld [$3f37], sp                                ; $4b81: $08 $37 $3f
    ld l, b                                       ; $4b84: $68
    ld a, a                                       ; $4b85: $7f
    xor a                                         ; $4b86: $af
    rst $38                                       ; $4b87: $ff
    push de                                       ; $4b88: $d5
    rst $38                                       ; $4b89: $ff
    jp nc, Jump_000_02ff                          ; $4b8a: $d2 $ff $02

    db $10                                        ; $4b8d: $10
    add h                                         ; $4b8e: $84
    ld [$0c18], sp                                ; $4b8f: $08 $18 $0c
    inc d                                         ; $4b92: $14
    ld [bc], a                                    ; $4b93: $02
    inc e                                         ; $4b94: $1c
    adc h                                         ; $4b95: $8c
    ld e, $1a                                     ; $4b96: $1e $1a
    ld e, $0e                                     ; $4b98: $1e $0e
    ld e, $16                                     ; $4b9a: $1e $16

jr_0e9_4b9c:
    inc e                                         ; $4b9c: $1c
    inc b                                         ; $4b9d: $04
    jr @+$0a                                      ; $4b9e: $18 $08

    jr jr_0e9_4baa                                ; $4ba0: $18 $08

    ld [bc], a                                    ; $4ba2: $02
    db $10                                        ; $4ba3: $10
    adc a                                         ; $4ba4: $8f
    inc c                                         ; $4ba5: $0c
    inc e                                         ; $4ba6: $1c
    ld d, $1e                                     ; $4ba7: $16 $1e
    dec d                                         ; $4ba9: $15

jr_0e9_4baa:
    rra                                           ; $4baa: $1f
    dec de                                        ; $4bab: $1b
    rrca                                          ; $4bac: $0f
    dec bc                                        ; $4bad: $0b
    rra                                           ; $4bae: $1f
    rst $38                                       ; $4baf: $ff
    and a                                         ; $4bb0: $a7
    cp a                                          ; $4bb1: $bf
    rst $30                                       ; $4bb2: $f7
    cp h                                          ; $4bb3: $bc
    ld [bc], a                                    ; $4bb4: $02
    rst $38                                       ; $4bb5: $ff
    sub l                                         ; $4bb6: $95
    rst $30                                       ; $4bb7: $f7
    or $9d                                        ; $4bb8: $f6 $9d
    db $f4                                        ; $4bba: $f4
    xor a                                         ; $4bbb: $af
    ld l, h                                       ; $4bbc: $6c
    ld a, e                                       ; $4bbd: $7b
    ld l, h                                       ; $4bbe: $6c
    ld e, e                                       ; $4bbf: $5b
    ld l, b                                       ; $4bc0: $68
    ld e, a                                       ; $4bc1: $5f
    ld e, b                                       ; $4bc2: $58
    ld l, a                                       ; $4bc3: $6f
    ld e, b                                       ; $4bc4: $58
    ld [hl], a                                    ; $4bc5: $77
    ld e, b                                       ; $4bc6: $58
    ld [hl], a                                    ; $4bc7: $77
    ld a, b                                       ; $4bc8: $78
    ld d, a                                       ; $4bc9: $57
    jr c, jr_0e9_4c0b                             ; $4bca: $38 $3f

    ld [bc], a                                    ; $4bcc: $02
    rra                                           ; $4bcd: $1f
    ld [bc], a                                    ; $4bce: $02
    nop                                           ; $4bcf: $00
    add l                                         ; $4bd0: $85
    ld a, a                                       ; $4bd1: $7f
    ld h, l                                       ; $4bd2: $65
    ld a, l                                       ; $4bd3: $7d
    ld l, a                                       ; $4bd4: $6f
    dec a                                         ; $4bd5: $3d
    ld [bc], a                                    ; $4bd6: $02
    ld a, a                                       ; $4bd7: $7f
    ld [bc], a                                    ; $4bd8: $02
    ld l, a                                       ; $4bd9: $6f
    sub e                                         ; $4bda: $93
    add hl, sp                                    ; $4bdb: $39
    cpl                                           ; $4bdc: $2f
    ld [hl], l                                    ; $4bdd: $75
    ld [hl], $5e                                  ; $4bde: $36 $5e
    ld [hl], $5e                                  ; $4be0: $36 $5e
    ld d, $7a                                     ; $4be2: $16 $7a
    ld [de], a                                    ; $4be4: $12
    ld a, [hl]                                    ; $4be5: $7e
    ld [de], a                                    ; $4be6: $12
    ld a, [hl]                                    ; $4be7: $7e
    ld [de], a                                    ; $4be8: $12
    ld a, [hl]                                    ; $4be9: $7e
    ld d, $7a                                     ; $4bea: $16 $7a
    inc e                                         ; $4bec: $1c
    ld a, h                                       ; $4bed: $7c
    ld [bc], a                                    ; $4bee: $02
    ld a, b                                       ; $4bef: $78
    ld [bc], a                                    ; $4bf0: $02
    jr nc, @+$01                                  ; $4bf1: $30 $ff

    dec c                                         ; $4bf3: $0d
    inc b                                         ; $4bf4: $04
    ei                                            ; $4bf5: $fb
    dec b                                         ; $4bf6: $05
    ld a, [c]                                     ; $4bf7: $f2
    ei                                            ; $4bf8: $fb
    ld [c], a                                     ; $4bf9: $e2
    ld sp, hl                                     ; $4bfa: $f9
    ld [c], a                                     ; $4bfb: $e2
    rst $38                                       ; $4bfc: $ff
    ld a, [c]                                     ; $4bfd: $f2
    ld sp, hl                                     ; $4bfe: $f9
    ld a, [c]                                     ; $4bff: $f2
    nop                                           ; $4c00: $00
    ld [bc], a                                    ; $4c01: $02
    rlca                                          ; $4c02: $07
    add h                                         ; $4c03: $84
    add hl, bc                                    ; $4c04: $09
    ld c, $1b                                     ; $4c05: $0e $1b
    inc d                                         ; $4c07: $14
    ld [bc], a                                    ; $4c08: $02
    rra                                           ; $4c09: $1f
    sbc b                                         ; $4c0a: $98

jr_0e9_4c0b:
    ccf                                           ; $4c0b: $3f
    inc a                                         ; $4c0c: $3c
    ccf                                           ; $4c0d: $3f
    jr c, @+$41                                   ; $4c0e: $38 $3f

    ld [hl], $1f                                  ; $4c10: $36 $1f
    db $10                                        ; $4c12: $10
    rrca                                          ; $4c13: $0f
    ld a, [bc]                                    ; $4c14: $0a
    rrca                                          ; $4c15: $0f
    add hl, bc                                    ; $4c16: $09
    rlca                                          ; $4c17: $07
    inc b                                         ; $4c18: $04
    dec de                                        ; $4c19: $1b
    rra                                           ; $4c1a: $1f
    inc [hl]                                      ; $4c1b: $34
    cpl                                           ; $4c1c: $2f
    ld d, a                                       ; $4c1d: $57
    ld a, a                                       ; $4c1e: $7f
    ld l, d                                       ; $4c1f: $6a
    ld a, a                                       ; $4c20: $7f
    jp hl                                         ; $4c21: $e9


    cp a                                          ; $4c22: $bf
    ld [bc], a                                    ; $4c23: $02
    jr nc, jr_0e9_4baa                            ; $4c24: $30 $84

    ld [$2c38], sp                                ; $4c26: $08 $38 $2c
    inc d                                         ; $4c29: $14
    ld [bc], a                                    ; $4c2a: $02
    inc a                                         ; $4c2b: $3c
    sbc l                                         ; $4c2c: $9d
    ld a, $1a                                     ; $4c2d: $3e $1a
    ld a, $0e                                     ; $4c2f: $3e $0e
    ld a, $36                                     ; $4c31: $3e $36
    inc a                                         ; $4c33: $3c
    inc b                                         ; $4c34: $04
    jr c, jr_0e9_4c3f                             ; $4c35: $38 $08

    jr c, jr_0e9_4c61                             ; $4c37: $38 $28

    jr nc, jr_0e9_4c4b                            ; $4c39: $30 $10

    inc l                                         ; $4c3b: $2c
    inc a                                         ; $4c3c: $3c
    ld d, $3e                                     ; $4c3d: $16 $3e

jr_0e9_4c3f:
    dec [hl]                                      ; $4c3f: $35
    ccf                                           ; $4c40: $3f
    dec sp                                        ; $4c41: $3b
    dec [hl]                                      ; $4c42: $35
    dec bc                                        ; $4c43: $0b
    ccf                                           ; $4c44: $3f
    rst $38                                       ; $4c45: $ff
    and a                                         ; $4c46: $a7
    cp a                                          ; $4c47: $bf
    rst $30                                       ; $4c48: $f7
    db $fc                                        ; $4c49: $fc
    ld [bc], a                                    ; $4c4a: $02

jr_0e9_4c4b:
    rst $38                                       ; $4c4b: $ff
    sub l                                         ; $4c4c: $95
    or a                                          ; $4c4d: $b7
    or $bd                                        ; $4c4e: $f6 $bd
    ld a, h                                       ; $4c50: $7c
    ld l, e                                       ; $4c51: $6b
    ld l, h                                       ; $4c52: $6c
    ld a, e                                       ; $4c53: $7b
    ld l, b                                       ; $4c54: $68
    ld e, a                                       ; $4c55: $5f
    ld e, b                                       ; $4c56: $58
    ld [hl], a                                    ; $4c57: $77
    ld e, b                                       ; $4c58: $58
    ld [hl], a                                    ; $4c59: $77
    ld d, b                                       ; $4c5a: $50
    ld a, a                                       ; $4c5b: $7f
    ld [hl], b                                    ; $4c5c: $70
    ld e, a                                       ; $4c5d: $5f
    ld a, [hl]                                    ; $4c5e: $7e
    ld e, l                                       ; $4c5f: $5d
    scf                                           ; $4c60: $37

jr_0e9_4c61:
    ccf                                           ; $4c61: $3f
    ld [bc], a                                    ; $4c62: $02
    rra                                           ; $4c63: $1f
    ld [bc], a                                    ; $4c64: $02
    inc c                                         ; $4c65: $0c
    sbc h                                         ; $4c66: $9c
    ld a, a                                       ; $4c67: $7f
    ld h, l                                       ; $4c68: $65
    ld a, l                                       ; $4c69: $7d
    ld l, a                                       ; $4c6a: $6f
    dec a                                         ; $4c6b: $3d
    ld a, e                                       ; $4c6c: $7b
    ld a, [hl]                                    ; $4c6d: $7e
    ld l, [hl]                                    ; $4c6e: $6e
    ld l, a                                       ; $4c6f: $6f
    add hl, sp                                    ; $4c70: $39
    ld l, $7a                                     ; $4c71: $2e $7a
    ld [hl], $6e                                  ; $4c73: $36 $6e
    ld [hl], $6e                                  ; $4c75: $36 $6e
    ld [hl], $5a                                  ; $4c77: $36 $5a
    ld [hl], $5a                                  ; $4c79: $36 $5a
    ld [hl-], a                                   ; $4c7b: $32
    ld e, [hl]                                    ; $4c7c: $5e
    ld [hl-], a                                   ; $4c7d: $32
    ld e, [hl]                                    ; $4c7e: $5e
    ld d, $7a                                     ; $4c7f: $16 $7a
    inc e                                         ; $4c81: $1c
    ld a, h                                       ; $4c82: $7c
    ld [bc], a                                    ; $4c83: $02
    ld a, b                                       ; $4c84: $78
    ld [bc], a                                    ; $4c85: $02
    nop                                           ; $4c86: $00
    rst $38                                       ; $4c87: $ff
    dec c                                         ; $4c88: $0d
    inc b                                         ; $4c89: $04
    ei                                            ; $4c8a: $fb
    dec b                                         ; $4c8b: $05
    ld a, [c]                                     ; $4c8c: $f2
    ei                                            ; $4c8d: $fb
    db $e3                                        ; $4c8e: $e3
    ld sp, hl                                     ; $4c8f: $f9
    db $e3                                        ; $4c90: $e3
    rst $38                                       ; $4c91: $ff
    di                                            ; $4c92: $f3
    ld sp, hl                                     ; $4c93: $f9
    di                                            ; $4c94: $f3
    nop                                           ; $4c95: $00
    ld [bc], a                                    ; $4c96: $02
    rlca                                          ; $4c97: $07
    add h                                         ; $4c98: $84
    add hl, bc                                    ; $4c99: $09
    ld c, $1b                                     ; $4c9a: $0e $1b
    inc d                                         ; $4c9c: $14
    ld [bc], a                                    ; $4c9d: $02
    rra                                           ; $4c9e: $1f
    sbc b                                         ; $4c9f: $98
    ccf                                           ; $4ca0: $3f
    inc a                                         ; $4ca1: $3c
    ccf                                           ; $4ca2: $3f
    jr c, @+$41                                   ; $4ca3: $38 $3f

    ld [hl], $1f                                  ; $4ca5: $36 $1f
    db $10                                        ; $4ca7: $10
    rrca                                          ; $4ca8: $0f
    ld a, [bc]                                    ; $4ca9: $0a
    rrca                                          ; $4caa: $0f
    add hl, bc                                    ; $4cab: $09
    rlca                                          ; $4cac: $07
    inc b                                         ; $4cad: $04
    dec de                                        ; $4cae: $1b
    rra                                           ; $4caf: $1f
    inc [hl]                                      ; $4cb0: $34
    cpl                                           ; $4cb1: $2f
    ld d, a                                       ; $4cb2: $57
    ld a, a                                       ; $4cb3: $7f
    ld l, d                                       ; $4cb4: $6a
    ld a, a                                       ; $4cb5: $7f
    jp hl                                         ; $4cb6: $e9


    cp a                                          ; $4cb7: $bf
    ld [bc], a                                    ; $4cb8: $02
    jr nc, jr_0e9_4c3f                            ; $4cb9: $30 $84

    ld [$2c38], sp                                ; $4cbb: $08 $38 $2c
    inc d                                         ; $4cbe: $14
    ld [bc], a                                    ; $4cbf: $02
    inc a                                         ; $4cc0: $3c
    sbc l                                         ; $4cc1: $9d
    ld a, $1a                                     ; $4cc2: $3e $1a
    ld a, $0e                                     ; $4cc4: $3e $0e
    ld a, $36                                     ; $4cc6: $3e $36
    inc a                                         ; $4cc8: $3c
    inc b                                         ; $4cc9: $04
    jr c, jr_0e9_4cd4                             ; $4cca: $38 $08

    jr c, jr_0e9_4cf6                             ; $4ccc: $38 $28

    jr nc, jr_0e9_4ce0                            ; $4cce: $30 $10

    inc l                                         ; $4cd0: $2c
    inc a                                         ; $4cd1: $3c
    ld d, $3e                                     ; $4cd2: $16 $3e

jr_0e9_4cd4:
    dec [hl]                                      ; $4cd4: $35
    ccf                                           ; $4cd5: $3f
    dec sp                                        ; $4cd6: $3b
    dec l                                         ; $4cd7: $2d
    dec bc                                        ; $4cd8: $0b
    ccf                                           ; $4cd9: $3f
    rst $38                                       ; $4cda: $ff
    and a                                         ; $4cdb: $a7
    cp a                                          ; $4cdc: $bf
    rst $30                                       ; $4cdd: $f7
    db $fc                                        ; $4cde: $fc
    ld [bc], a                                    ; $4cdf: $02

jr_0e9_4ce0:
    rst $38                                       ; $4ce0: $ff
    sub l                                         ; $4ce1: $95
    or a                                          ; $4ce2: $b7
    or $bd                                        ; $4ce3: $f6 $bd
    ld [hl], h                                    ; $4ce5: $74
    ld l, a                                       ; $4ce6: $6f
    ld l, h                                       ; $4ce7: $6c
    ld a, e                                       ; $4ce8: $7b
    ld l, b                                       ; $4ce9: $68
    ld e, a                                       ; $4cea: $5f
    ld c, b                                       ; $4ceb: $48
    ld a, a                                       ; $4cec: $7f
    ld e, b                                       ; $4ced: $58
    ld [hl], a                                    ; $4cee: $77
    ld e, b                                       ; $4cef: $58
    ld [hl], a                                    ; $4cf0: $77
    ld [hl], b                                    ; $4cf1: $70
    ld e, a                                       ; $4cf2: $5f
    ccf                                           ; $4cf3: $3f
    inc a                                         ; $4cf4: $3c
    rla                                           ; $4cf5: $17

jr_0e9_4cf6:
    dec de                                        ; $4cf6: $1b
    ld [bc], a                                    ; $4cf7: $02
    inc e                                         ; $4cf8: $1c
    ld [bc], a                                    ; $4cf9: $02
    nop                                           ; $4cfa: $00
    sbc d                                         ; $4cfb: $9a
    ld a, a                                       ; $4cfc: $7f
    ld h, l                                       ; $4cfd: $65
    ld a, l                                       ; $4cfe: $7d
    ld l, a                                       ; $4cff: $6f
    dec a                                         ; $4d00: $3d
    ld a, e                                       ; $4d01: $7b
    ld a, [hl]                                    ; $4d02: $7e
    ld l, [hl]                                    ; $4d03: $6e
    ld l, a                                       ; $4d04: $6f
    add hl, sp                                    ; $4d05: $39
    ld l, $7a                                     ; $4d06: $2e $7a
    ld [hl], $5e                                  ; $4d08: $36 $5e
    ld [hl], $5a                                  ; $4d0a: $36 $5a
    ld [hl-], a                                   ; $4d0c: $32
    ld e, [hl]                                    ; $4d0d: $5e
    ld [de], a                                    ; $4d0e: $12
    ld a, [hl]                                    ; $4d0f: $7e
    ld [de], a                                    ; $4d10: $12
    ld a, [hl]                                    ; $4d11: $7e
    ld d, $7a                                     ; $4d12: $16 $7a
    inc e                                         ; $4d14: $1c
    ld a, h                                       ; $4d15: $7c
    ld [bc], a                                    ; $4d16: $02
    ld [hl], b                                    ; $4d17: $70
    inc b                                         ; $4d18: $04
    nop                                           ; $4d19: $00
    rst $38                                       ; $4d1a: $ff
    dec c                                         ; $4d1b: $0d
    inc b                                         ; $4d1c: $04
    ei                                            ; $4d1d: $fb
    dec b                                         ; $4d1e: $05
    ld a, [c]                                     ; $4d1f: $f2
    ei                                            ; $4d20: $fb
    ld [c], a                                     ; $4d21: $e2
    ld a, [$ffe2]                                 ; $4d22: $fa $e2 $ff
    ld a, [c]                                     ; $4d25: $f2
    ld sp, hl                                     ; $4d26: $f9
    ld a, [c]                                     ; $4d27: $f2
    nop                                           ; $4d28: $00
    ld [bc], a                                    ; $4d29: $02
    rrca                                          ; $4d2a: $0f
    add h                                         ; $4d2b: $84
    ld [de], a                                    ; $4d2c: $12
    dec e                                         ; $4d2d: $1d
    scf                                           ; $4d2e: $37
    jr z, jr_0e9_4d33                             ; $4d2f: $28 $02

    ccf                                           ; $4d31: $3f
    sbc b                                         ; $4d32: $98

jr_0e9_4d33:
    ld a, a                                       ; $4d33: $7f
    ld a, b                                       ; $4d34: $78
    ld a, a                                       ; $4d35: $7f
    ld [hl], b                                    ; $4d36: $70
    ld a, a                                       ; $4d37: $7f
    ld l, l                                       ; $4d38: $6d
    ccf                                           ; $4d39: $3f
    jr nz, jr_0e9_4d5b                            ; $4d3a: $20 $1f

    inc d                                         ; $4d3c: $14
    rra                                           ; $4d3d: $1f
    inc de                                        ; $4d3e: $13
    rrca                                          ; $4d3f: $0f
    ld [$3f37], sp                                ; $4d40: $08 $37 $3f
    ld l, b                                       ; $4d43: $68
    ld a, a                                       ; $4d44: $7f
    xor a                                         ; $4d45: $af
    rst $38                                       ; $4d46: $ff
    db $dd                                        ; $4d47: $dd
    rst $30                                       ; $4d48: $f7
    jp nc, Jump_000_02ff                          ; $4d49: $d2 $ff $02

    db $10                                        ; $4d4c: $10
    add h                                         ; $4d4d: $84
    ld [$0c18], sp                                ; $4d4e: $08 $18 $0c
    inc d                                         ; $4d51: $14
    ld [bc], a                                    ; $4d52: $02
    inc e                                         ; $4d53: $1c
    adc h                                         ; $4d54: $8c
    ld e, $1a                                     ; $4d55: $1e $1a
    ld e, $0e                                     ; $4d57: $1e $0e
    ld e, $16                                     ; $4d59: $1e $16

jr_0e9_4d5b:
    inc e                                         ; $4d5b: $1c
    inc b                                         ; $4d5c: $04
    jr @+$0a                                      ; $4d5d: $18 $08

    jr jr_0e9_4d69                                ; $4d5f: $18 $08

    ld [bc], a                                    ; $4d61: $02
    db $10                                        ; $4d62: $10
    adc a                                         ; $4d63: $8f
    inc c                                         ; $4d64: $0c
    inc e                                         ; $4d65: $1c
    ld d, $1e                                     ; $4d66: $16 $1e
    dec d                                         ; $4d68: $15

jr_0e9_4d69:
    rra                                           ; $4d69: $1f
    dec bc                                        ; $4d6a: $0b
    rra                                           ; $4d6b: $1f
    dec bc                                        ; $4d6c: $0b
    rra                                           ; $4d6d: $1f
    rst $38                                       ; $4d6e: $ff
    and a                                         ; $4d6f: $a7
    cp a                                          ; $4d70: $bf
    rst $30                                       ; $4d71: $f7
    cp h                                          ; $4d72: $bc
    ld [bc], a                                    ; $4d73: $02
    rst $38                                       ; $4d74: $ff
    sub l                                         ; $4d75: $95
    rst $30                                       ; $4d76: $f7
    or $9d                                        ; $4d77: $f6 $9d
    db $f4                                        ; $4d79: $f4
    xor a                                         ; $4d7a: $af
    ld l, h                                       ; $4d7b: $6c
    ld a, e                                       ; $4d7c: $7b
    ld l, h                                       ; $4d7d: $6c
    ld a, e                                       ; $4d7e: $7b
    ld l, b                                       ; $4d7f: $68
    ld e, a                                       ; $4d80: $5f
    ld c, b                                       ; $4d81: $48
    ld a, a                                       ; $4d82: $7f
    ld c, b                                       ; $4d83: $48
    ld a, a                                       ; $4d84: $7f
    ld c, b                                       ; $4d85: $48
    ld a, a                                       ; $4d86: $7f
    ld l, b                                       ; $4d87: $68
    ld e, a                                       ; $4d88: $5f
    jr c, jr_0e9_4dca                             ; $4d89: $38 $3f

    ld [bc], a                                    ; $4d8b: $02
    rra                                           ; $4d8c: $1f
    ld [bc], a                                    ; $4d8d: $02
    inc c                                         ; $4d8e: $0c
    add l                                         ; $4d8f: $85
    ld a, a                                       ; $4d90: $7f
    ld h, l                                       ; $4d91: $65
    ld a, l                                       ; $4d92: $7d
    ld l, a                                       ; $4d93: $6f
    dec a                                         ; $4d94: $3d
    ld [bc], a                                    ; $4d95: $02
    ld a, a                                       ; $4d96: $7f
    ld [bc], a                                    ; $4d97: $02
    ld l, a                                       ; $4d98: $6f
    sub e                                         ; $4d99: $93
    add hl, sp                                    ; $4d9a: $39
    cpl                                           ; $4d9b: $2f
    ld [hl], l                                    ; $4d9c: $75
    ld [hl], $5e                                  ; $4d9d: $36 $5e
    ld [hl], $5a                                  ; $4d9f: $36 $5a
    ld d, $7a                                     ; $4da1: $16 $7a
    ld a, [de]                                    ; $4da3: $1a
    halt                                          ; $4da4: $76
    ld a, [de]                                    ; $4da5: $1a
    ld l, [hl]                                    ; $4da6: $6e
    ld a, [de]                                    ; $4da7: $1a
    ld l, [hl]                                    ; $4da8: $6e
    ld e, $6a                                     ; $4da9: $1e $6a
    inc e                                         ; $4dab: $1c
    ld a, h                                       ; $4dac: $7c
    ld [bc], a                                    ; $4dad: $02
    ld a, b                                       ; $4dae: $78
    ld [bc], a                                    ; $4daf: $02
    nop                                           ; $4db0: $00
    rst $38                                       ; $4db1: $ff
    dec c                                         ; $4db2: $0d
    inc b                                         ; $4db3: $04
    ei                                            ; $4db4: $fb
    dec b                                         ; $4db5: $05
    ld a, [c]                                     ; $4db6: $f2
    ei                                            ; $4db7: $fb
    ld [c], a                                     ; $4db8: $e2
    ei                                            ; $4db9: $fb
    db $e3                                        ; $4dba: $e3
    cp $f2                                        ; $4dbb: $fe $f2
    ld a, [$fef2]                                 ; $4dbd: $fa $f2 $fe
    ld [bc], a                                    ; $4dc0: $02
    rlca                                          ; $4dc1: $07
    sbc [hl]                                      ; $4dc2: $9e
    ld a, [bc]                                    ; $4dc3: $0a
    dec c                                         ; $4dc4: $0d
    ld de, $771e                                  ; $4dc5: $11 $1e $77
    ld a, a                                       ; $4dc8: $7f
    rst $38                                       ; $4dc9: $ff

jr_0e9_4dca:
    sbc $ff                                       ; $4dca: $de $ff
    cp h                                          ; $4dcc: $bc
    rst $38                                       ; $4dcd: $ff
    ei                                            ; $4dce: $fb
    rst $38                                       ; $4dcf: $ff
    or b                                          ; $4dd0: $b0
    ld a, a                                       ; $4dd1: $7f
    ld [hl], b                                    ; $4dd2: $70
    ccf                                           ; $4dd3: $3f
    jr c, jr_0e9_4df5                             ; $4dd4: $38 $1f

    jr @+$19                                      ; $4dd6: $18 $17

    rra                                           ; $4dd8: $1f
    jr c, jr_0e9_4e1a                             ; $4dd9: $38 $3f

    ld h, a                                       ; $4ddb: $67
    ld a, a                                       ; $4ddc: $7f
    ld l, e                                       ; $4ddd: $6b
    ld e, [hl]                                    ; $4dde: $5e
    ld h, l                                       ; $4ddf: $65
    ld e, a                                       ; $4de0: $5f
    ld b, $04                                     ; $4de1: $06 $04
    adc h                                         ; $4de3: $8c
    ld b, $02                                     ; $4de4: $06 $02
    ld b, $02                                     ; $4de6: $06 $02
    ld b, $02                                     ; $4de8: $06 $02
    rlca                                          ; $4dea: $07
    ld bc, $0206                                  ; $4deb: $01 $06 $02
    ld b, $02                                     ; $4dee: $06 $02
    ld [bc], a                                    ; $4df0: $02
    inc b                                         ; $4df1: $04
    ld [bc], a                                    ; $4df2: $02
    nop                                           ; $4df3: $00
    inc b                                         ; $4df4: $04

jr_0e9_4df5:
    inc b                                         ; $4df5: $04
    and d                                         ; $4df6: $a2
    ld [bc], a                                    ; $4df7: $02
    ld b, $01                                     ; $4df8: $06 $01
    rlca                                          ; $4dfa: $07
    rst $38                                       ; $4dfb: $ff
    rst $28                                       ; $4dfc: $ef
    jr nc, jr_0e9_4e1f                            ; $4dfd: $30 $20

    scf                                           ; $4dff: $37
    ccf                                           ; $4e00: $3f
    daa                                           ; $4e01: $27
    dec sp                                        ; $4e02: $3b
    inc sp                                        ; $4e03: $33
    cpl                                           ; $4e04: $2f
    scf                                           ; $4e05: $37
    dec a                                         ; $4e06: $3d
    ld a, a                                       ; $4e07: $7f
    ld a, c                                       ; $4e08: $79
    ld [hl], a                                    ; $4e09: $77
    ld l, a                                       ; $4e0a: $6f
    pop hl                                        ; $4e0b: $e1
    rst $18                                       ; $4e0c: $df
    jp $c3fe                                      ; $4e0d: $c3 $fe $c3


    cp [hl]                                       ; $4e10: $be
    add d                                         ; $4e11: $82
    rst $38                                       ; $4e12: $ff
    add d                                         ; $4e13: $82
    rst $38                                       ; $4e14: $ff
    add d                                         ; $4e15: $82
    rst $38                                       ; $4e16: $ff
    jp nz, Jump_000_02ff                          ; $4e17: $c2 $ff $02

jr_0e9_4e1a:
    ccf                                           ; $4e1a: $3f
    ld [bc], a                                    ; $4e1b: $02
    dec bc                                        ; $4e1c: $0b
    ld [bc], a                                    ; $4e1d: $02
    nop                                           ; $4e1e: $00

jr_0e9_4e1f:
    ld [bc], a                                    ; $4e1f: $02
    ld c, $81                                     ; $4e20: $0e $81
    inc b                                         ; $4e22: $04
    inc bc                                        ; $4e23: $03
    inc c                                         ; $4e24: $0c
    add c                                         ; $4e25: $81
    ld c, $02                                     ; $4e26: $0e $02
    ld a, [bc]                                    ; $4e28: $0a
    sub c                                         ; $4e29: $91
    ld b, $02                                     ; $4e2a: $06 $02
    ld c, $03                                     ; $4e2c: $0e $03
    dec c                                         ; $4e2e: $0d
    inc bc                                        ; $4e2f: $03
    dec c                                         ; $4e30: $0d
    ld bc, $010f                                  ; $4e31: $01 $0f $01
    rrca                                          ; $4e34: $0f
    ld bc, $010f                                  ; $4e35: $01 $0f $01
    rrca                                          ; $4e38: $0f
    ld b, $0e                                     ; $4e39: $06 $0e
    ld [bc], a                                    ; $4e3b: $02
    ld [$0c02], sp                                ; $4e3c: $08 $02 $0c
    rst $38                                       ; $4e3f: $ff
    dec c                                         ; $4e40: $0d
    inc b                                         ; $4e41: $04
    ei                                            ; $4e42: $fb
    dec b                                         ; $4e43: $05
    ld a, [c]                                     ; $4e44: $f2
    ei                                            ; $4e45: $fb
    ld [c], a                                     ; $4e46: $e2
    ei                                            ; $4e47: $fb
    db $e3                                        ; $4e48: $e3
    cp $f2                                        ; $4e49: $fe $f2
    ld a, [$fff2]                                 ; $4e4b: $fa $f2 $ff
    ld [bc], a                                    ; $4e4e: $02
    rlca                                          ; $4e4f: $07
    sbc [hl]                                      ; $4e50: $9e
    ld a, [bc]                                    ; $4e51: $0a
    dec c                                         ; $4e52: $0d
    ld de, $771e                                  ; $4e53: $11 $1e $77
    ld a, a                                       ; $4e56: $7f
    rst $38                                       ; $4e57: $ff
    sbc $ff                                       ; $4e58: $de $ff
    cp h                                          ; $4e5a: $bc
    rst $38                                       ; $4e5b: $ff
    ei                                            ; $4e5c: $fb
    rst $38                                       ; $4e5d: $ff
    or b                                          ; $4e5e: $b0
    ld a, a                                       ; $4e5f: $7f
    ld [hl], b                                    ; $4e60: $70
    ccf                                           ; $4e61: $3f
    jr c, jr_0e9_4e83                             ; $4e62: $38 $1f

    jr @+$19                                      ; $4e64: $18 $17

    rra                                           ; $4e66: $1f
    jr c, jr_0e9_4ea8                             ; $4e67: $38 $3f

    scf                                           ; $4e69: $37
    cpl                                           ; $4e6a: $2f
    ld c, e                                       ; $4e6b: $4b
    ld a, l                                       ; $4e6c: $7d
    ld h, l                                       ; $4e6d: $65
    ld e, a                                       ; $4e6e: $5f
    ld b, $04                                     ; $4e6f: $06 $04
    adc h                                         ; $4e71: $8c
    ld b, $02                                     ; $4e72: $06 $02
    ld b, $02                                     ; $4e74: $06 $02
    ld b, $02                                     ; $4e76: $06 $02
    rlca                                          ; $4e78: $07
    ld bc, $0206                                  ; $4e79: $01 $06 $02
    ld b, $02                                     ; $4e7c: $06 $02
    ld [bc], a                                    ; $4e7e: $02
    inc b                                         ; $4e7f: $04
    ld [bc], a                                    ; $4e80: $02
    nop                                           ; $4e81: $00
    inc b                                         ; $4e82: $04

jr_0e9_4e83:
    inc b                                         ; $4e83: $04
    and d                                         ; $4e84: $a2
    ld [bc], a                                    ; $4e85: $02
    ld b, $01                                     ; $4e86: $06 $01
    rlca                                          ; $4e88: $07
    rst $38                                       ; $4e89: $ff
    rst $28                                       ; $4e8a: $ef
    jr nc, jr_0e9_4ead                            ; $4e8b: $30 $20

    inc sp                                        ; $4e8d: $33
    ccf                                           ; $4e8e: $3f
    inc sp                                        ; $4e8f: $33
    dec l                                         ; $4e90: $2d
    dec sp                                        ; $4e91: $3b
    scf                                           ; $4e92: $37
    ld a, a                                       ; $4e93: $7f
    ld a, h                                       ; $4e94: $7c
    ld a, a                                       ; $4e95: $7f
    ld h, l                                       ; $4e96: $65
    ld [hl], a                                    ; $4e97: $77
    ld c, e                                       ; $4e98: $4b
    pop hl                                        ; $4e99: $e1
    rst $18                                       ; $4e9a: $df
    pop bc                                        ; $4e9b: $c1
    cp a                                          ; $4e9c: $bf
    jp $83bd                                      ; $4e9d: $c3 $bd $83


    db $fd                                        ; $4ea0: $fd
    add e                                         ; $4ea1: $83
    cp $83                                        ; $4ea2: $fe $83
    cp $c3                                        ; $4ea4: $fe $c3
    cp [hl]                                       ; $4ea6: $be
    ld [bc], a                                    ; $4ea7: $02

jr_0e9_4ea8:
    ld a, a                                       ; $4ea8: $7f
    ld [bc], a                                    ; $4ea9: $02
    ld c, $02                                     ; $4eaa: $0e $02
    nop                                           ; $4eac: $00

jr_0e9_4ead:
    ld [bc], a                                    ; $4ead: $02
    inc e                                         ; $4eae: $1c
    add c                                         ; $4eaf: $81
    ld [$1803], sp                                ; $4eb0: $08 $03 $18
    add c                                         ; $4eb3: $81
    inc e                                         ; $4eb4: $1c
    ld [bc], a                                    ; $4eb5: $02
    inc d                                         ; $4eb6: $14
    sub c                                         ; $4eb7: $91
    inc c                                         ; $4eb8: $0c
    inc d                                         ; $4eb9: $14
    inc c                                         ; $4eba: $0c
    ld b, $1a                                     ; $4ebb: $06 $1a
    ld b, $1a                                     ; $4ebd: $06 $1a
    ld [bc], a                                    ; $4ebf: $02
    ld e, $03                                     ; $4ec0: $1e $03
    dec e                                         ; $4ec2: $1d
    ld bc, $031f                                  ; $4ec3: $01 $1f $03
    rra                                           ; $4ec6: $1f
    ld c, $1e                                     ; $4ec7: $0e $1e
    ld [bc], a                                    ; $4ec9: $02
    jr jr_0e9_4ece                                ; $4eca: $18 $02

    nop                                           ; $4ecc: $00
    rst $38                                       ; $4ecd: $ff

jr_0e9_4ece:
    dec c                                         ; $4ece: $0d
    inc b                                         ; $4ecf: $04
    ei                                            ; $4ed0: $fb
    dec b                                         ; $4ed1: $05
    ld a, [c]                                     ; $4ed2: $f2
    ei                                            ; $4ed3: $fb
    db $e3                                        ; $4ed4: $e3
    ei                                            ; $4ed5: $fb
    db $e4                                        ; $4ed6: $e4
    cp $f3                                        ; $4ed7: $fe $f3
    ld a, [$fef3]                                 ; $4ed9: $fa $f3 $fe
    ld [bc], a                                    ; $4edc: $02
    rlca                                          ; $4edd: $07
    sbc [hl]                                      ; $4ede: $9e
    ld a, [bc]                                    ; $4edf: $0a
    dec c                                         ; $4ee0: $0d
    ld de, $771e                                  ; $4ee1: $11 $1e $77
    ld a, a                                       ; $4ee4: $7f
    rst $38                                       ; $4ee5: $ff
    sbc $ff                                       ; $4ee6: $de $ff
    cp h                                          ; $4ee8: $bc
    rst $38                                       ; $4ee9: $ff
    ei                                            ; $4eea: $fb
    rst $38                                       ; $4eeb: $ff
    or b                                          ; $4eec: $b0
    ld a, a                                       ; $4eed: $7f
    ld [hl], b                                    ; $4eee: $70
    ccf                                           ; $4eef: $3f
    jr c, jr_0e9_4f11                             ; $4ef0: $38 $1f

    jr @+$19                                      ; $4ef2: $18 $17

    rra                                           ; $4ef4: $1f
    jr c, jr_0e9_4f36                             ; $4ef5: $38 $3f

    scf                                           ; $4ef7: $37
    cpl                                           ; $4ef8: $2f
    ld c, e                                       ; $4ef9: $4b
    ld a, l                                       ; $4efa: $7d
    ld h, l                                       ; $4efb: $65
    ld e, a                                       ; $4efc: $5f
    ld b, $04                                     ; $4efd: $06 $04
    adc h                                         ; $4eff: $8c
    ld b, $02                                     ; $4f00: $06 $02
    ld b, $02                                     ; $4f02: $06 $02
    ld b, $02                                     ; $4f04: $06 $02
    rlca                                          ; $4f06: $07
    ld bc, $0206                                  ; $4f07: $01 $06 $02
    ld b, $02                                     ; $4f0a: $06 $02
    ld [bc], a                                    ; $4f0c: $02
    inc b                                         ; $4f0d: $04
    ld [bc], a                                    ; $4f0e: $02
    nop                                           ; $4f0f: $00
    inc b                                         ; $4f10: $04

jr_0e9_4f11:
    inc b                                         ; $4f11: $04
    and b                                         ; $4f12: $a0
    ld [bc], a                                    ; $4f13: $02
    ld b, $01                                     ; $4f14: $06 $01
    rlca                                          ; $4f16: $07
    rst $38                                       ; $4f17: $ff
    rst $28                                       ; $4f18: $ef
    jr nc, @+$22                                  ; $4f19: $30 $20

    scf                                           ; $4f1b: $37
    dec sp                                        ; $4f1c: $3b
    inc sp                                        ; $4f1d: $33
    cpl                                           ; $4f1e: $2f
    inc sp                                        ; $4f1f: $33
    cpl                                           ; $4f20: $2f
    ld a, a                                       ; $4f21: $7f
    ld [hl], h                                    ; $4f22: $74
    ld a, a                                       ; $4f23: $7f
    ld l, l                                       ; $4f24: $6d
    ld [hl], a                                    ; $4f25: $77
    ld c, a                                       ; $4f26: $4f
    jp $c3bd                                      ; $4f27: $c3 $bd $c3


    cp l                                          ; $4f2a: $bd
    add e                                         ; $4f2b: $83
    db $fd                                        ; $4f2c: $fd
    add e                                         ; $4f2d: $83
    cp $c3                                        ; $4f2e: $fe $c3
    cp [hl]                                       ; $4f30: $be
    jp nz, Jump_000_02ff                          ; $4f31: $c2 $ff $02

    ccf                                           ; $4f34: $3f
    ld [bc], a                                    ; $4f35: $02

jr_0e9_4f36:
    inc c                                         ; $4f36: $0c
    inc b                                         ; $4f37: $04
    nop                                           ; $4f38: $00
    ld [bc], a                                    ; $4f39: $02
    ld c, $81                                     ; $4f3a: $0e $81
    inc b                                         ; $4f3c: $04
    inc bc                                        ; $4f3d: $03
    inc c                                         ; $4f3e: $0c
    add c                                         ; $4f3f: $81
    ld c, $02                                     ; $4f40: $0e $02
    ld a, [bc]                                    ; $4f42: $0a
    adc a                                         ; $4f43: $8f
    ld b, $0a                                     ; $4f44: $06 $0a
    ld b, $03                                     ; $4f46: $06 $03
    dec c                                         ; $4f48: $0d
    inc bc                                        ; $4f49: $03
    dec c                                         ; $4f4a: $0d
    ld bc, $010f                                  ; $4f4b: $01 $0f $01
    rrca                                          ; $4f4e: $0f
    ld bc, $060f                                  ; $4f4f: $01 $0f $06
    ld c, $02                                     ; $4f52: $0e $02
    rrca                                          ; $4f54: $0f
    inc b                                         ; $4f55: $04
    nop                                           ; $4f56: $00
    rst $38                                       ; $4f57: $ff
    dec c                                         ; $4f58: $0d
    inc b                                         ; $4f59: $04
    ei                                            ; $4f5a: $fb
    dec b                                         ; $4f5b: $05
    ld a, [c]                                     ; $4f5c: $f2
    ei                                            ; $4f5d: $fb
    ld [c], a                                     ; $4f5e: $e2
    ei                                            ; $4f5f: $fb
    db $e3                                        ; $4f60: $e3
    cp $f2                                        ; $4f61: $fe $f2
    ld a, [$fef2]                                 ; $4f63: $fa $f2 $fe
    ld [bc], a                                    ; $4f66: $02
    rlca                                          ; $4f67: $07
    sbc [hl]                                      ; $4f68: $9e
    ld a, [bc]                                    ; $4f69: $0a
    dec c                                         ; $4f6a: $0d
    ld de, $771e                                  ; $4f6b: $11 $1e $77
    ld a, a                                       ; $4f6e: $7f
    rst $38                                       ; $4f6f: $ff
    sbc $ff                                       ; $4f70: $de $ff
    cp h                                          ; $4f72: $bc
    rst $38                                       ; $4f73: $ff
    ei                                            ; $4f74: $fb
    rst $38                                       ; $4f75: $ff
    or b                                          ; $4f76: $b0
    ld a, a                                       ; $4f77: $7f
    ld [hl], b                                    ; $4f78: $70
    ccf                                           ; $4f79: $3f
    jr c, jr_0e9_4f9b                             ; $4f7a: $38 $1f

    jr @+$19                                      ; $4f7c: $18 $17

    rra                                           ; $4f7e: $1f
    jr c, jr_0e9_4fc0                             ; $4f7f: $38 $3f

    ld h, a                                       ; $4f81: $67
    ld a, a                                       ; $4f82: $7f
    ld l, e                                       ; $4f83: $6b
    ld e, a                                       ; $4f84: $5f
    ld h, l                                       ; $4f85: $65
    ld e, a                                       ; $4f86: $5f
    ld b, $04                                     ; $4f87: $06 $04
    adc h                                         ; $4f89: $8c
    ld b, $02                                     ; $4f8a: $06 $02
    ld b, $02                                     ; $4f8c: $06 $02
    ld b, $02                                     ; $4f8e: $06 $02
    rlca                                          ; $4f90: $07
    ld bc, $0206                                  ; $4f91: $01 $06 $02
    ld b, $02                                     ; $4f94: $06 $02
    ld [bc], a                                    ; $4f96: $02
    inc b                                         ; $4f97: $04
    ld [bc], a                                    ; $4f98: $02
    nop                                           ; $4f99: $00
    inc b                                         ; $4f9a: $04

jr_0e9_4f9b:
    inc b                                         ; $4f9b: $04
    and d                                         ; $4f9c: $a2
    ld [bc], a                                    ; $4f9d: $02
    ld b, $01                                     ; $4f9e: $06 $01
    rlca                                          ; $4fa0: $07
    rst $38                                       ; $4fa1: $ff
    rst $28                                       ; $4fa2: $ef
    jr nc, @+$22                                  ; $4fa3: $30 $20

    scf                                           ; $4fa5: $37
    ccf                                           ; $4fa6: $3f
    daa                                           ; $4fa7: $27
    dec sp                                        ; $4fa8: $3b
    inc sp                                        ; $4fa9: $33
    cpl                                           ; $4faa: $2f
    scf                                           ; $4fab: $37
    dec a                                         ; $4fac: $3d
    ld a, a                                       ; $4fad: $7f
    ld a, c                                       ; $4fae: $79
    ld [hl], a                                    ; $4faf: $77
    ld l, a                                       ; $4fb0: $6f
    db $e3                                        ; $4fb1: $e3
    db $dd                                        ; $4fb2: $dd
    jp $c3be                                      ; $4fb3: $c3 $be $c3


    cp [hl]                                       ; $4fb6: $be
    add d                                         ; $4fb7: $82
    rst $38                                       ; $4fb8: $ff
    add d                                         ; $4fb9: $82
    rst $38                                       ; $4fba: $ff
    jp nz, $f2bf                                  ; $4fbb: $c2 $bf $f2

    rst $28                                       ; $4fbe: $ef
    ld [bc], a                                    ; $4fbf: $02

jr_0e9_4fc0:
    rra                                           ; $4fc0: $1f
    inc b                                         ; $4fc1: $04
    nop                                           ; $4fc2: $00
    ld [bc], a                                    ; $4fc3: $02
    ld c, $81                                     ; $4fc4: $0e $81
    inc b                                         ; $4fc6: $04
    inc bc                                        ; $4fc7: $03
    inc c                                         ; $4fc8: $0c
    add c                                         ; $4fc9: $81
    ld c, $02                                     ; $4fca: $0e $02
    ld a, [bc]                                    ; $4fcc: $0a
    sub b                                         ; $4fcd: $90
    ld b, $02                                     ; $4fce: $06 $02
    ld c, $02                                     ; $4fd0: $0e $02
    ld c, $03                                     ; $4fd2: $0e $03
    dec c                                         ; $4fd4: $0d
    inc bc                                        ; $4fd5: $03
    dec c                                         ; $4fd6: $0d
    inc bc                                        ; $4fd7: $03
    dec c                                         ; $4fd8: $0d
    ld bc, $010f                                  ; $4fd9: $01 $0f $01
    rrca                                          ; $4fdc: $0f
    ld b, $03                                     ; $4fdd: $06 $03
    ld c, $02                                     ; $4fdf: $0e $02
    nop                                           ; $4fe1: $00
    rst $38                                       ; $4fe2: $ff
    dec c                                         ; $4fe3: $0d
    inc b                                         ; $4fe4: $04
    ei                                            ; $4fe5: $fb
    dec b                                         ; $4fe6: $05
    ld a, [c]                                     ; $4fe7: $f2
    ei                                            ; $4fe8: $fb
    ld [c], a                                     ; $4fe9: $e2
    ei                                            ; $4fea: $fb
    db $e3                                        ; $4feb: $e3
    cp $f2                                        ; $4fec: $fe $f2
    ld a, [$fff2]                                 ; $4fee: $fa $f2 $ff
    ld [bc], a                                    ; $4ff1: $02
    rlca                                          ; $4ff2: $07
    sbc [hl]                                      ; $4ff3: $9e
    ld a, [bc]                                    ; $4ff4: $0a
    dec c                                         ; $4ff5: $0d
    ld de, $771e                                  ; $4ff6: $11 $1e $77
    ld a, a                                       ; $4ff9: $7f
    rst $38                                       ; $4ffa: $ff
    sbc $ff                                       ; $4ffb: $de $ff
    cp h                                          ; $4ffd: $bc
    rst $38                                       ; $4ffe: $ff
    ei                                            ; $4fff: $fb
    rst $38                                       ; $5000: $ff
    or b                                          ; $5001: $b0
    ld a, a                                       ; $5002: $7f
    ld [hl], b                                    ; $5003: $70
    ccf                                           ; $5004: $3f
    jr c, jr_0e9_5026                             ; $5005: $38 $1f

    jr @+$19                                      ; $5007: $18 $17

    rra                                           ; $5009: $1f
    jr c, jr_0e9_504b                             ; $500a: $38 $3f

    ld h, a                                       ; $500c: $67
    ld e, a                                       ; $500d: $5f
    ld c, e                                       ; $500e: $4b
    ld a, [hl]                                    ; $500f: $7e
    call Call_000_06b7                            ; $5010: $cd $b7 $06
    inc b                                         ; $5013: $04
    adc h                                         ; $5014: $8c
    ld b, $02                                     ; $5015: $06 $02
    ld b, $02                                     ; $5017: $06 $02
    ld b, $02                                     ; $5019: $06 $02
    rlca                                          ; $501b: $07
    ld bc, $0206                                  ; $501c: $01 $06 $02
    ld b, $02                                     ; $501f: $06 $02
    ld [bc], a                                    ; $5021: $02
    inc b                                         ; $5022: $04
    ld [bc], a                                    ; $5023: $02
    nop                                           ; $5024: $00
    inc b                                         ; $5025: $04

jr_0e9_5026:
    inc b                                         ; $5026: $04
    and d                                         ; $5027: $a2
    ld [bc], a                                    ; $5028: $02
    ld b, $01                                     ; $5029: $06 $01
    rlca                                          ; $502b: $07
    rst $38                                       ; $502c: $ff
    rst $28                                       ; $502d: $ef
    ld [hl], b                                    ; $502e: $70
    ld h, b                                       ; $502f: $60
    ccf                                           ; $5030: $3f
    scf                                           ; $5031: $37
    ld h, a                                       ; $5032: $67
    ld e, [hl]                                    ; $5033: $5e
    ld h, a                                       ; $5034: $67
    ld e, a                                       ; $5035: $5f
    ccf                                           ; $5036: $3f
    ld a, $7f                                     ; $5037: $3e $7f
    ld h, l                                       ; $5039: $65
    ld a, a                                       ; $503a: $7f
    ld [hl], l                                    ; $503b: $75
    ld l, e                                       ; $503c: $6b
    ld e, l                                       ; $503d: $5d
    db $e3                                        ; $503e: $e3
    sbc $c2                                       ; $503f: $de $c2
    cp a                                          ; $5041: $bf
    jp nz, $c2bf                                  ; $5042: $c2 $bf $c2

    cp a                                          ; $5045: $bf
    add [hl]                                      ; $5046: $86
    db $fd                                        ; $5047: $fd
    and $fd                                       ; $5048: $e6 $fd
    ld [bc], a                                    ; $504a: $02

jr_0e9_504b:
    rra                                           ; $504b: $1f
    inc b                                         ; $504c: $04
    nop                                           ; $504d: $00
    ld [bc], a                                    ; $504e: $02
    inc e                                         ; $504f: $1c
    add c                                         ; $5050: $81
    ld [$1803], sp                                ; $5051: $08 $03 $18
    add c                                         ; $5054: $81
    inc e                                         ; $5055: $1c
    ld [bc], a                                    ; $5056: $02
    inc d                                         ; $5057: $14
    sub c                                         ; $5058: $91
    inc c                                         ; $5059: $0c
    ld b, $1a                                     ; $505a: $06 $1a
    ld b, $1a                                     ; $505c: $06 $1a
    ld b, $1a                                     ; $505e: $06 $1a
    ld [bc], a                                    ; $5060: $02
    ld e, $02                                     ; $5061: $1e $02
    ld e, $01                                     ; $5063: $1e $01
    rra                                           ; $5065: $1f
    ld b, $1e                                     ; $5066: $06 $1e
    dec e                                         ; $5068: $1d
    rrca                                          ; $5069: $0f
    ld [bc], a                                    ; $506a: $02
    ld e, $02                                     ; $506b: $1e $02
    db $10                                        ; $506d: $10
    rst $38                                       ; $506e: $ff
    dec c                                         ; $506f: $0d
    inc b                                         ; $5070: $04
    ei                                            ; $5071: $fb
    dec b                                         ; $5072: $05
    ld a, [c]                                     ; $5073: $f2
    ei                                            ; $5074: $fb
    db $e3                                        ; $5075: $e3
    ei                                            ; $5076: $fb
    db $e4                                        ; $5077: $e4
    cp $f3                                        ; $5078: $fe $f3
    ld a, [$fef3]                                 ; $507a: $fa $f3 $fe
    ld [bc], a                                    ; $507d: $02
    rlca                                          ; $507e: $07
    sbc [hl]                                      ; $507f: $9e
    ld a, [bc]                                    ; $5080: $0a
    dec c                                         ; $5081: $0d
    ld de, $771e                                  ; $5082: $11 $1e $77
    ld a, a                                       ; $5085: $7f
    rst $38                                       ; $5086: $ff
    sbc $ff                                       ; $5087: $de $ff
    cp h                                          ; $5089: $bc
    rst $38                                       ; $508a: $ff
    ei                                            ; $508b: $fb
    rst $38                                       ; $508c: $ff
    or b                                          ; $508d: $b0
    ld a, a                                       ; $508e: $7f
    ld [hl], b                                    ; $508f: $70
    ccf                                           ; $5090: $3f
    jr c, jr_0e9_50b2                             ; $5091: $38 $1f

    jr @+$19                                      ; $5093: $18 $17

    rra                                           ; $5095: $1f
    jr c, jr_0e9_50d7                             ; $5096: $38 $3f

    ld h, a                                       ; $5098: $67
    ld a, a                                       ; $5099: $7f
    ld l, e                                       ; $509a: $6b
    ld e, [hl]                                    ; $509b: $5e
    call Call_000_06b7                            ; $509c: $cd $b7 $06
    inc b                                         ; $509f: $04
    adc h                                         ; $50a0: $8c
    ld b, $02                                     ; $50a1: $06 $02
    ld b, $02                                     ; $50a3: $06 $02
    ld b, $02                                     ; $50a5: $06 $02
    rlca                                          ; $50a7: $07
    ld bc, $0206                                  ; $50a8: $01 $06 $02
    ld b, $02                                     ; $50ab: $06 $02
    ld [bc], a                                    ; $50ad: $02
    inc b                                         ; $50ae: $04
    ld [bc], a                                    ; $50af: $02
    nop                                           ; $50b0: $00
    inc b                                         ; $50b1: $04

jr_0e9_50b2:
    inc b                                         ; $50b2: $04
    and b                                         ; $50b3: $a0
    ld [bc], a                                    ; $50b4: $02
    ld b, $01                                     ; $50b5: $06 $01
    rlca                                          ; $50b7: $07
    rst $38                                       ; $50b8: $ff
    rst $28                                       ; $50b9: $ef
    ld h, b                                       ; $50ba: $60
    ld [hl], b                                    ; $50bb: $70
    ccf                                           ; $50bc: $3f
    scf                                           ; $50bd: $37
    daa                                           ; $50be: $27
    ld a, $67                                     ; $50bf: $3e $67
    ld e, e                                       ; $50c1: $5b
    ccf                                           ; $50c2: $3f
    ld a, $3f                                     ; $50c3: $3e $3f
    inc sp                                        ; $50c5: $33
    ld a, a                                       ; $50c6: $7f
    ld l, e                                       ; $50c7: $6b
    ld h, a                                       ; $50c8: $67
    ld e, l                                       ; $50c9: $5d
    jp $c2be                                      ; $50ca: $c3 $be $c2


    cp a                                          ; $50cd: $bf
    add d                                         ; $50ce: $82
    rst $38                                       ; $50cf: $ff
    add d                                         ; $50d0: $82
    rst $38                                       ; $50d1: $ff
    add $fd                                       ; $50d2: $c6 $fd
    ld [bc], a                                    ; $50d4: $02
    ccf                                           ; $50d5: $3f
    ld [bc], a                                    ; $50d6: $02

jr_0e9_50d7:
    ld [bc], a                                    ; $50d7: $02
    inc b                                         ; $50d8: $04
    nop                                           ; $50d9: $00
    ld [bc], a                                    ; $50da: $02
    ld c, $81                                     ; $50db: $0e $81
    inc b                                         ; $50dd: $04
    inc bc                                        ; $50de: $03
    inc c                                         ; $50df: $0c
    add c                                         ; $50e0: $81
    ld c, $02                                     ; $50e1: $0e $02
    ld a, [bc]                                    ; $50e3: $0a
    sub b                                         ; $50e4: $90
    ld b, $02                                     ; $50e5: $06 $02
    ld c, $03                                     ; $50e7: $0e $03
    dec c                                         ; $50e9: $0d
    ld bc, $010f                                  ; $50ea: $01 $0f $01
    rrca                                          ; $50ed: $0f
    ld bc, $010f                                  ; $50ee: $01 $0f $01
    rrca                                          ; $50f1: $0f
    ld b, $0a                                     ; $50f2: $06 $0a
    dec c                                         ; $50f4: $0d
    inc bc                                        ; $50f5: $03
    rrca                                          ; $50f6: $0f
    ld [bc], a                                    ; $50f7: $02
    nop                                           ; $50f8: $00
    rst $38                                       ; $50f9: $ff
    dec c                                         ; $50fa: $0d
    inc b                                         ; $50fb: $04
    ei                                            ; $50fc: $fb
    dec b                                         ; $50fd: $05
    ld a, [c]                                     ; $50fe: $f2
    ei                                            ; $50ff: $fb
    ld [c], a                                     ; $5100: $e2
    ei                                            ; $5101: $fb
    db $e3                                        ; $5102: $e3
    cp $f2                                        ; $5103: $fe $f2
    ld a, [$fef2]                                 ; $5105: $fa $f2 $fe
    ld [bc], a                                    ; $5108: $02
    rlca                                          ; $5109: $07
    sbc [hl]                                      ; $510a: $9e
    ld a, [bc]                                    ; $510b: $0a
    dec c                                         ; $510c: $0d
    ld de, $771e                                  ; $510d: $11 $1e $77
    ld a, a                                       ; $5110: $7f
    rst $38                                       ; $5111: $ff
    sbc $ff                                       ; $5112: $de $ff
    cp h                                          ; $5114: $bc
    rst $38                                       ; $5115: $ff
    ei                                            ; $5116: $fb
    rst $38                                       ; $5117: $ff
    or b                                          ; $5118: $b0
    ld a, a                                       ; $5119: $7f
    ld [hl], b                                    ; $511a: $70
    ccf                                           ; $511b: $3f
    jr c, jr_0e9_513d                             ; $511c: $38 $1f

    jr @+$19                                      ; $511e: $18 $17

    rra                                           ; $5120: $1f
    jr c, jr_0e9_5162                             ; $5121: $38 $3f

    ld h, a                                       ; $5123: $67
    ld a, a                                       ; $5124: $7f
    ld l, e                                       ; $5125: $6b
    ld e, [hl]                                    ; $5126: $5e
    ld h, l                                       ; $5127: $65
    ld e, a                                       ; $5128: $5f
    ld b, $04                                     ; $5129: $06 $04
    adc h                                         ; $512b: $8c
    ld b, $02                                     ; $512c: $06 $02
    ld b, $02                                     ; $512e: $06 $02
    ld b, $02                                     ; $5130: $06 $02
    rlca                                          ; $5132: $07
    ld bc, $0206                                  ; $5133: $01 $06 $02
    ld b, $02                                     ; $5136: $06 $02
    ld [bc], a                                    ; $5138: $02
    inc b                                         ; $5139: $04
    ld [bc], a                                    ; $513a: $02
    nop                                           ; $513b: $00
    inc b                                         ; $513c: $04

jr_0e9_513d:
    inc b                                         ; $513d: $04
    and d                                         ; $513e: $a2
    ld [bc], a                                    ; $513f: $02
    ld b, $01                                     ; $5140: $06 $01
    rlca                                          ; $5142: $07
    rst $38                                       ; $5143: $ff
    rst $28                                       ; $5144: $ef
    jr nc, jr_0e9_5167                            ; $5145: $30 $20

    scf                                           ; $5147: $37
    ccf                                           ; $5148: $3f
    daa                                           ; $5149: $27
    dec sp                                        ; $514a: $3b
    inc sp                                        ; $514b: $33
    cpl                                           ; $514c: $2f
    scf                                           ; $514d: $37
    dec a                                         ; $514e: $3d
    ld a, a                                       ; $514f: $7f
    ld a, c                                       ; $5150: $79
    ld [hl], a                                    ; $5151: $77
    ld l, a                                       ; $5152: $6f
    pop hl                                        ; $5153: $e1
    rst $18                                       ; $5154: $df
    jp $c3fe                                      ; $5155: $c3 $fe $c3


    cp [hl]                                       ; $5158: $be
    add d                                         ; $5159: $82
    rst $38                                       ; $515a: $ff
    add d                                         ; $515b: $82
    rst $38                                       ; $515c: $ff
    add d                                         ; $515d: $82
    rst $38                                       ; $515e: $ff
    add $bb                                       ; $515f: $c6 $bb
    ld [bc], a                                    ; $5161: $02

jr_0e9_5162:
    ld a, a                                       ; $5162: $7f
    ld [bc], a                                    ; $5163: $02
    rla                                           ; $5164: $17
    ld [bc], a                                    ; $5165: $02
    nop                                           ; $5166: $00

jr_0e9_5167:
    ld [bc], a                                    ; $5167: $02
    ld c, $81                                     ; $5168: $0e $81
    inc b                                         ; $516a: $04
    inc bc                                        ; $516b: $03
    inc c                                         ; $516c: $0c
    add c                                         ; $516d: $81
    ld c, $02                                     ; $516e: $0e $02
    ld a, [bc]                                    ; $5170: $0a
    sub c                                         ; $5171: $91
    ld b, $02                                     ; $5172: $06 $02
    ld c, $02                                     ; $5174: $0e $02
    ld c, $03                                     ; $5176: $0e $03
    dec c                                         ; $5178: $0d
    inc bc                                        ; $5179: $03
    dec c                                         ; $517a: $0d
    ld bc, $010f                                  ; $517b: $01 $0f $01
    rrca                                          ; $517e: $0f
    ld bc, $060f                                  ; $517f: $01 $0f $06
    ld c, $04                                     ; $5182: $0e $04
    ld [$0fff], sp                                ; $5184: $08 $ff $0f
    dec b                                         ; $5187: $05
    di                                            ; $5188: $f3
    ld a, [bc]                                    ; $5189: $0a
    db $f4                                        ; $518a: $f4
    inc bc                                        ; $518b: $03
    ld hl, sp-$0d                                 ; $518c: $f8 $f3
    db $ec                                        ; $518e: $ec
    ei                                            ; $518f: $fb
    db $fc                                        ; $5190: $fc
    ei                                            ; $5191: $fb
    db $eb                                        ; $5192: $eb
    inc bc                                        ; $5193: $03
    ei                                            ; $5194: $fb
    inc bc                                        ; $5195: $03
    ld [bc], a                                    ; $5196: $02
    ld bc, $1e90                                  ; $5197: $01 $90 $1e
    rra                                           ; $519a: $1f
    jr nz, @+$41                                  ; $519b: $20 $3f

    ld hl, $3e3f                                  ; $519d: $21 $3f $3e
    ccf                                           ; $51a0: $3f
    ld [hl], c                                    ; $51a1: $71
    ld a, a                                       ; $51a2: $7f
    rst $38                                       ; $51a3: $ff
    rst $18                                       ; $51a4: $df
    rst $38                                       ; $51a5: $ff
    and a                                         ; $51a6: $a7
    cp $df                                        ; $51a7: $fe $df
    ld [bc], a                                    ; $51a9: $02
    ld l, a                                       ; $51aa: $6f
    ld [bc], a                                    ; $51ab: $02
    rrca                                          ; $51ac: $0f
    ld [bc], a                                    ; $51ad: $02
    inc c                                         ; $51ae: $0c
    ld [$0200], sp                                ; $51af: $08 $00 $02
    inc bc                                        ; $51b2: $03
    add [hl]                                      ; $51b3: $86
    dec c                                         ; $51b4: $0d
    rrca                                          ; $51b5: $0f
    ld b, $07                                     ; $51b6: $06 $07
    dec de                                        ; $51b8: $1b
    rra                                           ; $51b9: $1f
    inc b                                         ; $51ba: $04
    rrca                                          ; $51bb: $0f
    sub [hl]                                      ; $51bc: $96
    rra                                           ; $51bd: $1f
    dec e                                         ; $51be: $1d
    cpl                                           ; $51bf: $2f
    ccf                                           ; $51c0: $3f
    ld b, e                                       ; $51c1: $43
    ld a, a                                       ; $51c2: $7f
    add hl, sp                                    ; $51c3: $39
    ccf                                           ; $51c4: $3f
    ld a, $3f                                     ; $51c5: $3e $3f
    dec hl                                        ; $51c7: $2b
    ccf                                           ; $51c8: $3f
    set 7, a                                      ; $51c9: $cb $ff
    inc sp                                        ; $51cb: $33
    rst $38                                       ; $51cc: $ff
    dec de                                        ; $51cd: $1b
    rst $38                                       ; $51ce: $ff
    db $fc                                        ; $51cf: $fc
    rst $38                                       ; $51d0: $ff
    ccf                                           ; $51d1: $3f
    rst $38                                       ; $51d2: $ff
    ld [bc], a                                    ; $51d3: $02
    ei                                            ; $51d4: $fb
    ld [bc], a                                    ; $51d5: $02
    rst $38                                       ; $51d6: $ff
    add h                                         ; $51d7: $84
    cp [hl]                                       ; $51d8: $be
    cp $50                                        ; $51d9: $fe $50
    ldh a, [rSC]                                  ; $51db: $f0 $02
    ldh [rDIV], a                                 ; $51dd: $e0 $04
    ret nz                                        ; $51df: $c0

    stop                                          ; $51e0: $10 $00
    ld [bc], a                                    ; $51e2: $02
    jr nz, jr_0e9_51e7                            ; $51e3: $20 $02

    add sp, -$7e                                  ; $51e5: $e8 $82

jr_0e9_51e7:
    call c, Call_000_03fc                         ; $51e7: $dc $fc $03
    ld hl, sp-$73                                 ; $51ea: $f8 $8d
    adc b                                         ; $51ec: $88
    ld hl, sp-$58                                 ; $51ed: $f8 $a8
    ld hl, sp+$68                                 ; $51ef: $f8 $68
    db $fc                                        ; $51f1: $fc
    inc b                                         ; $51f2: $04
    ld hl, sp-$68                                 ; $51f3: $f8 $98
    ld hl, sp+$28                                 ; $51f5: $f8 $28
    ld hl, sp-$48                                 ; $51f7: $f8 $b8
    ld [bc], a                                    ; $51f9: $02
    ldh a, [rDIV]                                 ; $51fa: $f0 $04
    add b                                         ; $51fc: $80
    ld [bc], a                                    ; $51fd: $02
    ret nz                                        ; $51fe: $c0

    add d                                         ; $51ff: $82
    ld [hl], a                                    ; $5200: $77
    rst $30                                       ; $5201: $f7
    ld [bc], a                                    ; $5202: $02
    rst $38                                       ; $5203: $ff
    add h                                         ; $5204: $84
    db $fc                                        ; $5205: $fc
    sbc h                                         ; $5206: $9c
    db $fc                                        ; $5207: $fc
    or h                                          ; $5208: $b4
    ld [bc], a                                    ; $5209: $02
    add sp, $18                                   ; $520a: $e8 $18
    nop                                           ; $520c: $00
    rst $38                                       ; $520d: $ff
    rrca                                          ; $520e: $0f
    dec b                                         ; $520f: $05
    di                                            ; $5210: $f3
    ld a, [bc]                                    ; $5211: $0a
    db $f4                                        ; $5212: $f4
    inc bc                                        ; $5213: $03
    rst $30                                       ; $5214: $f7
    di                                            ; $5215: $f3
    db $ec                                        ; $5216: $ec
    ei                                            ; $5217: $fb
    db $fc                                        ; $5218: $fc
    ei                                            ; $5219: $fb
    db $eb                                        ; $521a: $eb
    inc bc                                        ; $521b: $03
    ei                                            ; $521c: $fb
    inc bc                                        ; $521d: $03
    ld [bc], a                                    ; $521e: $02
    inc bc                                        ; $521f: $03
    sub d                                         ; $5220: $92
    inc b                                         ; $5221: $04
    rlca                                          ; $5222: $07
    ld [$110f], sp                                ; $5223: $08 $0f $11
    rra                                           ; $5226: $1f
    ld [de], a                                    ; $5227: $12
    rra                                           ; $5228: $1f
    dec e                                         ; $5229: $1d
    rra                                           ; $522a: $1f
    ld l, e                                       ; $522b: $6b
    ld l, a                                       ; $522c: $6f
    rst $38                                       ; $522d: $ff
    rst $18                                       ; $522e: $df
    rst $38                                       ; $522f: $ff
    and a                                         ; $5230: $a7
    cp $df                                        ; $5231: $fe $df
    ld [bc], a                                    ; $5233: $02
    ld l, a                                       ; $5234: $6f
    ld [bc], a                                    ; $5235: $02
    rrca                                          ; $5236: $0f
    ld [bc], a                                    ; $5237: $02
    inc c                                         ; $5238: $0c
    ld b, $00                                     ; $5239: $06 $00
    ld [bc], a                                    ; $523b: $02
    inc bc                                        ; $523c: $03
    add l                                         ; $523d: $85
    dec c                                         ; $523e: $0d
    rrca                                          ; $523f: $0f
    ld b, $07                                     ; $5240: $06 $07
    dec c                                         ; $5242: $0d
    dec b                                         ; $5243: $05
    rrca                                          ; $5244: $0f
    sub [hl]                                      ; $5245: $96
    rra                                           ; $5246: $1f
    dec e                                         ; $5247: $1d
    daa                                           ; $5248: $27
    ccf                                           ; $5249: $3f
    ld b, e                                       ; $524a: $43
    ld a, a                                       ; $524b: $7f
    dec a                                         ; $524c: $3d
    ccf                                           ; $524d: $3f
    ld a, [$0bff]                                 ; $524e: $fa $ff $0b
    rst $38                                       ; $5251: $ff
    dec bc                                        ; $5252: $0b
    rst $38                                       ; $5253: $ff
    ld [hl], e                                    ; $5254: $73
    rst $38                                       ; $5255: $ff
    sub c                                         ; $5256: $91
    rst $38                                       ; $5257: $ff
    ld a, [hl]                                    ; $5258: $7e
    rst $38                                       ; $5259: $ff
    db $fd                                        ; $525a: $fd
    rst $38                                       ; $525b: $ff
    ld [bc], a                                    ; $525c: $02
    ei                                            ; $525d: $fb
    ld [bc], a                                    ; $525e: $02
    rst $38                                       ; $525f: $ff
    add h                                         ; $5260: $84
    cp [hl]                                       ; $5261: $be
    cp $50                                        ; $5262: $fe $50
    ldh a, [rSC]                                  ; $5264: $f0 $02
    ldh [rDIV], a                                 ; $5266: $e0 $04
    ret nz                                        ; $5268: $c0

    stop                                          ; $5269: $10 $00
    ld [bc], a                                    ; $526b: $02
    ld b, b                                       ; $526c: $40
    ld [bc], a                                    ; $526d: $02
    db $f4                                        ; $526e: $f4
    add c                                         ; $526f: $81
    db $ec                                        ; $5270: $ec
    inc bc                                        ; $5271: $03
    db $fc                                        ; $5272: $fc
    adc [hl]                                      ; $5273: $8e
    ld hl, sp-$78                                 ; $5274: $f8 $88
    ld hl, sp-$58                                 ; $5276: $f8 $a8
    ld hl, sp+$68                                 ; $5278: $f8 $68
    db $fc                                        ; $527a: $fc
    inc b                                         ; $527b: $04
    ld hl, sp-$68                                 ; $527c: $f8 $98
    ld hl, sp+$28                                 ; $527e: $f8 $28
    ld hl, sp-$48                                 ; $5280: $f8 $b8
    ld [bc], a                                    ; $5282: $02
    ldh a, [rDIV]                                 ; $5283: $f0 $04
    add b                                         ; $5285: $80
    ld [bc], a                                    ; $5286: $02
    ret nz                                        ; $5287: $c0

    add d                                         ; $5288: $82
    ld [hl], a                                    ; $5289: $77
    rst $30                                       ; $528a: $f7
    ld [bc], a                                    ; $528b: $02
    rst $38                                       ; $528c: $ff
    add h                                         ; $528d: $84
    db $fc                                        ; $528e: $fc
    sbc h                                         ; $528f: $9c
    db $fc                                        ; $5290: $fc
    or h                                          ; $5291: $b4
    ld [bc], a                                    ; $5292: $02
    add sp, $18                                   ; $5293: $e8 $18
    nop                                           ; $5295: $00
    rst $38                                       ; $5296: $ff
    rrca                                          ; $5297: $0f
    dec b                                         ; $5298: $05
    di                                            ; $5299: $f3
    ld a, [bc]                                    ; $529a: $0a
    db $f4                                        ; $529b: $f4
    inc bc                                        ; $529c: $03
    rst $30                                       ; $529d: $f7
    di                                            ; $529e: $f3
    db $ec                                        ; $529f: $ec
    ei                                            ; $52a0: $fb
    db $fc                                        ; $52a1: $fc
    ei                                            ; $52a2: $fb
    db $eb                                        ; $52a3: $eb
    inc bc                                        ; $52a4: $03
    ei                                            ; $52a5: $fb
    inc bc                                        ; $52a6: $03
    ld [bc], a                                    ; $52a7: $02
    ld b, $88                                     ; $52a8: $06 $88
    add hl, bc                                    ; $52aa: $09
    rrca                                          ; $52ab: $0f
    ld de, $201f                                  ; $52ac: $11 $1f $20
    ccf                                           ; $52af: $3f
    jr nc, jr_0e9_52f1                            ; $52b0: $30 $3f

    ld [bc], a                                    ; $52b2: $02
    rrca                                          ; $52b3: $0f
    adc b                                         ; $52b4: $88
    ld l, h                                       ; $52b5: $6c
    ld l, a                                       ; $52b6: $6f
    rst $38                                       ; $52b7: $ff
    rst $18                                       ; $52b8: $df
    rst $38                                       ; $52b9: $ff
    and a                                         ; $52ba: $a7
    cp $df                                        ; $52bb: $fe $df
    ld [bc], a                                    ; $52bd: $02
    ld l, a                                       ; $52be: $6f
    ld [bc], a                                    ; $52bf: $02
    rrca                                          ; $52c0: $0f
    ld [bc], a                                    ; $52c1: $02
    inc c                                         ; $52c2: $0c
    ld b, $00                                     ; $52c3: $06 $00
    ld [bc], a                                    ; $52c5: $02
    rlca                                          ; $52c6: $07
    add d                                         ; $52c7: $82
    dec e                                         ; $52c8: $1d
    rra                                           ; $52c9: $1f
    ld [bc], a                                    ; $52ca: $02
    rlca                                          ; $52cb: $07
    add d                                         ; $52cc: $82
    add hl, bc                                    ; $52cd: $09
    rrca                                          ; $52ce: $0f
    ld [bc], a                                    ; $52cf: $02
    rra                                           ; $52d0: $1f
    ld [bc], a                                    ; $52d1: $02
    rrca                                          ; $52d2: $0f
    sbc b                                         ; $52d3: $98
    ccf                                           ; $52d4: $3f
    dec a                                         ; $52d5: $3d
    ld b, a                                       ; $52d6: $47
    ld a, a                                       ; $52d7: $7f
    inc hl                                        ; $52d8: $23
    ccf                                           ; $52d9: $3f
    dec a                                         ; $52da: $3d
    ccf                                           ; $52db: $3f
    ld a, [de]                                    ; $52dc: $1a
    rra                                           ; $52dd: $1f
    ld a, [hl+]                                   ; $52de: $2a
    ccf                                           ; $52df: $3f
    ld d, e                                       ; $52e0: $53
    ld a, a                                       ; $52e1: $7f
    di                                            ; $52e2: $f3
    rst $38                                       ; $52e3: $ff
    ld a, [hl-]                                   ; $52e4: $3a
    rst $38                                       ; $52e5: $ff
    dec e                                         ; $52e6: $1d
    rst $38                                       ; $52e7: $ff
    db $fd                                        ; $52e8: $fd
    rst $38                                       ; $52e9: $ff
    dec sp                                        ; $52ea: $3b
    ei                                            ; $52eb: $fb
    ld [bc], a                                    ; $52ec: $02
    rst $38                                       ; $52ed: $ff
    ld [bc], a                                    ; $52ee: $02
    cp $82                                        ; $52ef: $fe $82

jr_0e9_52f1:
    ld d, b                                       ; $52f1: $50
    ldh a, [rSC]                                  ; $52f2: $f0 $02
    ldh [rDIV], a                                 ; $52f4: $e0 $04
    ret nz                                        ; $52f6: $c0

    stop                                          ; $52f7: $10 $00
    ld [bc], a                                    ; $52f9: $02
    add b                                         ; $52fa: $80
    ld [bc], a                                    ; $52fb: $02
    add sp, -$7f                                  ; $52fc: $e8 $81
    sbc b                                         ; $52fe: $98
    inc b                                         ; $52ff: $04
    ld hl, sp-$73                                 ; $5300: $f8 $8d
    adc b                                         ; $5302: $88
    ld hl, sp-$58                                 ; $5303: $f8 $a8
    ld hl, sp+$68                                 ; $5305: $f8 $68
    db $fc                                        ; $5307: $fc
    inc b                                         ; $5308: $04
    ld hl, sp-$68                                 ; $5309: $f8 $98
    ld hl, sp+$28                                 ; $530b: $f8 $28
    ld hl, sp-$48                                 ; $530d: $f8 $b8
    ld [bc], a                                    ; $530f: $02
    ldh a, [rDIV]                                 ; $5310: $f0 $04
    add b                                         ; $5312: $80
    ld [bc], a                                    ; $5313: $02
    ret nz                                        ; $5314: $c0

    add d                                         ; $5315: $82
    ld h, a                                       ; $5316: $67
    rst $20                                       ; $5317: $e7
    ld [bc], a                                    ; $5318: $02
    rst $38                                       ; $5319: $ff
    add h                                         ; $531a: $84
    db $fc                                        ; $531b: $fc
    sbc h                                         ; $531c: $9c
    db $fc                                        ; $531d: $fc
    or h                                          ; $531e: $b4
    ld [bc], a                                    ; $531f: $02
    add sp, $18                                   ; $5320: $e8 $18
    nop                                           ; $5322: $00
    rst $38                                       ; $5323: $ff
    rrca                                          ; $5324: $0f
    dec b                                         ; $5325: $05
    di                                            ; $5326: $f3
    ld a, [bc]                                    ; $5327: $0a
    db $f4                                        ; $5328: $f4
    inc bc                                        ; $5329: $03
    or $f3                                        ; $532a: $f6 $f3
    db $ec                                        ; $532c: $ec
    ei                                            ; $532d: $fb
    db $fc                                        ; $532e: $fc
    ei                                            ; $532f: $fb
    db $ed                                        ; $5330: $ed
    inc bc                                        ; $5331: $03
    db $fd                                        ; $5332: $fd
    inc bc                                        ; $5333: $03
    ld [bc], a                                    ; $5334: $02
    inc bc                                        ; $5335: $03
    add c                                         ; $5336: $81
    inc b                                         ; $5337: $04
    inc bc                                        ; $5338: $03
    rlca                                          ; $5339: $07
    add [hl]                                      ; $533a: $86
    inc e                                         ; $533b: $1c
    rra                                           ; $533c: $1f
    db $10                                        ; $533d: $10
    rra                                           ; $533e: $1f
    inc de                                        ; $533f: $13
    rra                                           ; $5340: $1f
    ld [bc], a                                    ; $5341: $02
    rrca                                          ; $5342: $0f
    adc b                                         ; $5343: $88
    ld d, [hl]                                    ; $5344: $56
    ld d, a                                       ; $5345: $57
    rst $38                                       ; $5346: $ff
    xor a                                         ; $5347: $af
    ld a, a                                       ; $5348: $7f
    ld e, e                                       ; $5349: $5b
    rst $38                                       ; $534a: $ff
    xor a                                         ; $534b: $af
    ld [bc], a                                    ; $534c: $02
    ld d, e                                       ; $534d: $53
    add c                                         ; $534e: $81
    ld [bc], a                                    ; $534f: $02
    inc bc                                        ; $5350: $03
    inc bc                                        ; $5351: $03
    inc b                                         ; $5352: $04
    nop                                           ; $5353: $00
    ld [bc], a                                    ; $5354: $02
    ld bc, $0002                                  ; $5355: $01 $02 $00
    ld [bc], a                                    ; $5358: $02
    rla                                           ; $5359: $17
    ld [bc], a                                    ; $535a: $02
    rrca                                          ; $535b: $0f
    inc b                                         ; $535c: $04
    ccf                                           ; $535d: $3f
    ld [bc], a                                    ; $535e: $02
    ld a, a                                       ; $535f: $7f
    ld [bc], a                                    ; $5360: $02
    rra                                           ; $5361: $1f
    sbc d                                         ; $5362: $9a
    add hl, bc                                    ; $5363: $09
    rrca                                          ; $5364: $0f
    inc e                                         ; $5365: $1c
    rra                                           ; $5366: $1f
    cp $ff                                        ; $5367: $fe $ff
    ld sp, $c7ff                                  ; $5369: $31 $ff $c7
    rst $38                                       ; $536c: $ff
    dec e                                         ; $536d: $1d
    rst $38                                       ; $536e: $ff
    ld a, h                                       ; $536f: $7c
    rst $38                                       ; $5370: $ff
    rst $30                                       ; $5371: $f7
    rst $38                                       ; $5372: $ff
    cp [hl]                                       ; $5373: $be
    rst $38                                       ; $5374: $ff
    or a                                          ; $5375: $b7
    rst $38                                       ; $5376: $ff
    ld b, a                                       ; $5377: $47
    rst $38                                       ; $5378: $ff
    ld a, [hl]                                    ; $5379: $7e
    cp $18                                        ; $537a: $fe $18
    ld hl, sp+$02                                 ; $537c: $f8 $02
    ldh a, [rSC]                                  ; $537e: $f0 $02
    or b                                          ; $5380: $b0
    ld [de], a                                    ; $5381: $12
    nop                                           ; $5382: $00
    ld [bc], a                                    ; $5383: $02
    ldh [$03], a                                  ; $5384: $e0 $03
    ld hl, sp-$6f                                 ; $5386: $f8 $91
    add sp, -$04                                  ; $5388: $e8 $fc
    call nz, $d4fc                                ; $538a: $c4 $fc $d4
    cp $82                                        ; $538d: $fe $82
    db $fc                                        ; $538f: $fc
    ld b, h                                       ; $5390: $44
    db $fc                                        ; $5391: $fc
    add h                                         ; $5392: $84
    ld hl, sp-$38                                 ; $5393: $f8 $c8
    ldh a, [$b0]                                  ; $5395: $f0 $b0
    ld b, b                                       ; $5397: $40
    ret nz                                        ; $5398: $c0

    ld [bc], a                                    ; $5399: $02
    ldh [$85], a                                  ; $539a: $e0 $85
    and b                                         ; $539c: $a0
    ldh [$d8], a                                  ; $539d: $e0 $d8
    ld hl, sp+$7f                                 ; $539f: $f8 $7f
    ld [bc], a                                    ; $53a1: $02
    rst $38                                       ; $53a2: $ff
    add e                                         ; $53a3: $83
    rst $08                                       ; $53a4: $cf
    cp $da                                        ; $53a5: $fe $da
    ld [bc], a                                    ; $53a7: $02
    db $f4                                        ; $53a8: $f4
    inc e                                         ; $53a9: $1c
    nop                                           ; $53aa: $00
    rst $38                                       ; $53ab: $ff
    rrca                                          ; $53ac: $0f
    dec b                                         ; $53ad: $05
    di                                            ; $53ae: $f3
    ld a, [bc]                                    ; $53af: $0a
    db $f4                                        ; $53b0: $f4
    inc bc                                        ; $53b1: $03
    push af                                       ; $53b2: $f5
    di                                            ; $53b3: $f3
    db $ed                                        ; $53b4: $ed
    ei                                            ; $53b5: $fb
    db $fd                                        ; $53b6: $fd
    ei                                            ; $53b7: $fb
    db $ed                                        ; $53b8: $ed
    inc bc                                        ; $53b9: $03
    db $fd                                        ; $53ba: $fd
    inc bc                                        ; $53bb: $03
    ld [bc], a                                    ; $53bc: $02
    inc bc                                        ; $53bd: $03
    ld [bc], a                                    ; $53be: $02
    rlca                                          ; $53bf: $07
    adc d                                         ; $53c0: $8a
    ld [$100f], sp                                ; $53c1: $08 $0f $10
    rra                                           ; $53c4: $1f
    db $10                                        ; $53c5: $10
    rra                                           ; $53c6: $1f
    inc de                                        ; $53c7: $13
    rra                                           ; $53c8: $1f
    dec d                                         ; $53c9: $15
    dec e                                         ; $53ca: $1d
    ld [bc], a                                    ; $53cb: $02
    rrca                                          ; $53cc: $0f
    adc e                                         ; $53cd: $8b
    ld d, [hl]                                    ; $53ce: $56
    ld d, a                                       ; $53cf: $57
    rst $38                                       ; $53d0: $ff
    xor a                                         ; $53d1: $af
    ld a, a                                       ; $53d2: $7f
    ld e, e                                       ; $53d3: $5b
    rst $38                                       ; $53d4: $ff
    xor a                                         ; $53d5: $af
    ld d, d                                       ; $53d6: $52
    ld d, e                                       ; $53d7: $53
    ld [bc], a                                    ; $53d8: $02
    inc bc                                        ; $53d9: $03
    inc bc                                        ; $53da: $03
    ld [bc], a                                    ; $53db: $02
    nop                                           ; $53dc: $00
    ld [bc], a                                    ; $53dd: $02
    inc bc                                        ; $53de: $03
    ld [bc], a                                    ; $53df: $02
    rrca                                          ; $53e0: $0f
    ld [bc], a                                    ; $53e1: $02
    rra                                           ; $53e2: $1f
    ld b, $3f                                     ; $53e3: $06 $3f
    ld [bc], a                                    ; $53e5: $02
    rrca                                          ; $53e6: $0f
    sbc d                                         ; $53e7: $9a
    add hl, de                                    ; $53e8: $19
    rra                                           ; $53e9: $1f
    ld sp, hl                                     ; $53ea: $f9
    rst $38                                       ; $53eb: $ff
    ld c, $ff                                     ; $53ec: $0e $ff
    ld bc, $3fff                                  ; $53ee: $01 $ff $3f
    rst $38                                       ; $53f1: $ff
    db $fd                                        ; $53f2: $fd
    rst $38                                       ; $53f3: $ff
    db $ec                                        ; $53f4: $ec
    rst $38                                       ; $53f5: $ff
    rst $30                                       ; $53f6: $f7
    rst $38                                       ; $53f7: $ff
    cp [hl]                                       ; $53f8: $be
    rst $38                                       ; $53f9: $ff
    add a                                         ; $53fa: $87
    rst $38                                       ; $53fb: $ff
    ld c, a                                       ; $53fc: $4f
    rst $38                                       ; $53fd: $ff
    ld a, $fe                                     ; $53fe: $3e $fe
    adc b                                         ; $5400: $88
    ld hl, sp+$02                                 ; $5401: $f8 $02
    ldh a, [rSC]                                  ; $5403: $f0 $02
    or b                                          ; $5405: $b0
    inc d                                         ; $5406: $14
    nop                                           ; $5407: $00
    ld [bc], a                                    ; $5408: $02
    ldh a, [$03]                                  ; $5409: $f0 $03
    ld hl, sp-$6f                                 ; $540b: $f8 $91
    add sp, -$04                                  ; $540d: $e8 $fc
    call nz, $d4fc                                ; $540f: $c4 $fc $d4
    cp $82                                        ; $5412: $fe $82
    db $fc                                        ; $5414: $fc
    ld b, h                                       ; $5415: $44
    db $fc                                        ; $5416: $fc
    add h                                         ; $5417: $84
    ld hl, sp-$38                                 ; $5418: $f8 $c8
    ldh a, [$b0]                                  ; $541a: $f0 $b0
    ld b, b                                       ; $541c: $40
    ret nz                                        ; $541d: $c0

    inc b                                         ; $541e: $04
    ldh [$88], a                                  ; $541f: $e0 $88
    ret c                                         ; $5421: $d8

    ld hl, sp+$7f                                 ; $5422: $f8 $7f
    rst $38                                       ; $5424: $ff
    ld a, a                                       ; $5425: $7f
    rst $08                                       ; $5426: $cf
    cp $da                                        ; $5427: $fe $da
    ld [bc], a                                    ; $5429: $02
    db $f4                                        ; $542a: $f4
    inc e                                         ; $542b: $1c
    nop                                           ; $542c: $00
    rst $38                                       ; $542d: $ff
    rrca                                          ; $542e: $0f
    dec b                                         ; $542f: $05
    di                                            ; $5430: $f3
    ld a, [bc]                                    ; $5431: $0a
    db $f4                                        ; $5432: $f4
    inc bc                                        ; $5433: $03
    rst $30                                       ; $5434: $f7
    di                                            ; $5435: $f3
    db $ed                                        ; $5436: $ed
    ei                                            ; $5437: $fb
    db $fd                                        ; $5438: $fd
    ei                                            ; $5439: $fb
    db $ec                                        ; $543a: $ec
    inc bc                                        ; $543b: $03
    db $fc                                        ; $543c: $fc
    inc bc                                        ; $543d: $03
    ld [bc], a                                    ; $543e: $02
    rrca                                          ; $543f: $0f
    adc b                                         ; $5440: $88
    db $10                                        ; $5441: $10
    rra                                           ; $5442: $1f
    jr nz, jr_0e9_5484                            ; $5443: $20 $3f

    inc e                                         ; $5445: $1c
    rra                                           ; $5446: $1f
    ld [bc], a                                    ; $5447: $02
    inc bc                                        ; $5448: $03
    ld [bc], a                                    ; $5449: $02
    rlca                                          ; $544a: $07
    adc e                                         ; $544b: $8b
    ld d, [hl]                                    ; $544c: $56
    ld d, a                                       ; $544d: $57
    cp $af                                        ; $544e: $fe $af
    ld a, [hl]                                    ; $5450: $7e
    ld e, e                                       ; $5451: $5b
    rst $38                                       ; $5452: $ff
    xor a                                         ; $5453: $af
    ld d, d                                       ; $5454: $52
    ld d, e                                       ; $5455: $53
    ld [bc], a                                    ; $5456: $02
    inc bc                                        ; $5457: $03
    inc bc                                        ; $5458: $03
    ld b, $00                                     ; $5459: $06 $00
    ld [bc], a                                    ; $545b: $02
    inc de                                        ; $545c: $13
    ld [bc], a                                    ; $545d: $02
    dec a                                         ; $545e: $3d
    ld [bc], a                                    ; $545f: $02
    ld a, a                                       ; $5460: $7f
    inc b                                         ; $5461: $04
    ccf                                           ; $5462: $3f
    inc b                                         ; $5463: $04
    rra                                           ; $5464: $1f
    sbc d                                         ; $5465: $9a
    dec bc                                        ; $5466: $0b
    rrca                                          ; $5467: $0f
    db $10                                        ; $5468: $10
    rra                                           ; $5469: $1f
    cp $ff                                        ; $546a: $fe $ff
    ld a, e                                       ; $546c: $7b
    rst $38                                       ; $546d: $ff
    db $e3                                        ; $546e: $e3
    rst $38                                       ; $546f: $ff
    dec b                                         ; $5470: $05
    rst $38                                       ; $5471: $ff
    dec c                                         ; $5472: $0d
    rst $38                                       ; $5473: $ff
    ld d, $ff                                     ; $5474: $16 $ff
    ld a, [$afff]                                 ; $5476: $fa $ff $af
    rst $38                                       ; $5479: $ff
    rst $00                                       ; $547a: $c7
    rst $38                                       ; $547b: $ff
    ld a, [hl]                                    ; $547c: $7e
    cp $08                                        ; $547d: $fe $08
    ld hl, sp+$02                                 ; $547f: $f8 $02
    ldh a, [rSC]                                  ; $5481: $f0 $02
    or b                                          ; $5483: $b0

jr_0e9_5484:
    inc d                                         ; $5484: $14
    nop                                           ; $5485: $00
    ld [bc], a                                    ; $5486: $02
    add b                                         ; $5487: $80
    ld [bc], a                                    ; $5488: $02
    ld [hl], b                                    ; $5489: $70
    inc bc                                        ; $548a: $03
    ld hl, sp-$6f                                 ; $548b: $f8 $91
    add sp, -$04                                  ; $548d: $e8 $fc
    call nz, $d4fc                                ; $548f: $c4 $fc $d4
    cp $82                                        ; $5492: $fe $82
    db $fc                                        ; $5494: $fc
    ld b, h                                       ; $5495: $44
    db $fc                                        ; $5496: $fc
    add h                                         ; $5497: $84
    ld hl, sp-$38                                 ; $5498: $f8 $c8
    ldh a, [$b0]                                  ; $549a: $f0 $b0
    ld b, b                                       ; $549c: $40
    ret nz                                        ; $549d: $c0

    ld [bc], a                                    ; $549e: $02
    ldh [$85], a                                  ; $549f: $e0 $85
    and b                                         ; $54a1: $a0
    ldh [$d0], a                                  ; $54a2: $e0 $d0
    ldh a, [$7f]                                  ; $54a4: $f0 $7f
    ld [bc], a                                    ; $54a6: $02
    rst $38                                       ; $54a7: $ff
    add e                                         ; $54a8: $83
    rst $08                                       ; $54a9: $cf
    cp $da                                        ; $54aa: $fe $da
    ld [bc], a                                    ; $54ac: $02
    db $f4                                        ; $54ad: $f4
    ld a, [de]                                    ; $54ae: $1a
    nop                                           ; $54af: $00
    rst $38                                       ; $54b0: $ff
    dec c                                         ; $54b1: $0d
    inc b                                         ; $54b2: $04
    ld sp, hl                                     ; $54b3: $f9
    ld [$01f2], sp                                ; $54b4: $08 $f2 $01
    push hl                                       ; $54b7: $e5
    ld sp, hl                                     ; $54b8: $f9
    push hl                                       ; $54b9: $e5
    ld bc, $faf5                                  ; $54ba: $01 $f5 $fa
    push af                                       ; $54bd: $f5
    nop                                           ; $54be: $00
    and c                                         ; $54bf: $a1
    nop                                           ; $54c0: $00
    inc bc                                        ; $54c1: $03
    nop                                           ; $54c2: $00
    dec b                                         ; $54c3: $05
    nop                                           ; $54c4: $00
    add hl, bc                                    ; $54c5: $09
    nop                                           ; $54c6: $00
    ld a, [bc]                                    ; $54c7: $0a
    inc b                                         ; $54c8: $04
    inc bc                                        ; $54c9: $03
    ld b, $09                                     ; $54ca: $06 $09
    dec b                                         ; $54cc: $05
    ld a, [bc]                                    ; $54cd: $0a
    ld [bc], a                                    ; $54ce: $02
    dec b                                         ; $54cf: $05
    inc bc                                        ; $54d0: $03
    ld [$2100], sp                                ; $54d1: $08 $00 $21
    nop                                           ; $54d4: $00
    ld [hl], h                                    ; $54d5: $74
    jr nz, jr_0e9_5527                            ; $54d6: $20 $4f

    inc b                                         ; $54d8: $04
    xor e                                         ; $54d9: $ab
    inc hl                                        ; $54da: $23
    ld d, h                                       ; $54db: $54
    ld e, b                                       ; $54dc: $58
    and a                                         ; $54dd: $a7
    ld d, b                                       ; $54de: $50
    xor e                                         ; $54df: $ab
    nop                                           ; $54e0: $00
    ld [bc], a                                    ; $54e1: $02
    ret nz                                        ; $54e2: $c0

    or l                                          ; $54e3: $b5
    jr nz, jr_0e9_54e6                            ; $54e4: $20 $00

jr_0e9_54e6:
    ld [hl], b                                    ; $54e6: $70
    nop                                           ; $54e7: $00
    or b                                          ; $54e8: $b0
    and b                                         ; $54e9: $a0
    ld b, b                                       ; $54ea: $40
    ldh [rNR10], a                                ; $54eb: $e0 $10
    and b                                         ; $54ed: $a0
    ld d, b                                       ; $54ee: $50
    ld b, b                                       ; $54ef: $40
    and b                                         ; $54f0: $a0
    ret nz                                        ; $54f1: $c0

    jr nc, @+$22                                  ; $54f2: $30 $20

    call c, Call_0e9_5a24                         ; $54f4: $dc $24 $5a
    ld d, h                                       ; $54f7: $54
    xor d                                         ; $54f8: $aa
    ld [hl-], a                                   ; $54f9: $32
    call Call_000_1be4                            ; $54fa: $cd $e4 $1b
    ld e, d                                       ; $54fd: $5a
    and l                                         ; $54fe: $a5
    ld a, [bc]                                    ; $54ff: $0a
    push de                                       ; $5500: $d5
    ld b, h                                       ; $5501: $44
    and c                                         ; $5502: $a1
    ld bc, $020a                                  ; $5503: $01 $0a $02
    ld c, h                                       ; $5506: $4c
    inc b                                         ; $5507: $04
    ld e, e                                       ; $5508: $5b
    nop                                           ; $5509: $00
    ld e, a                                       ; $550a: $5f
    nop                                           ; $550b: $00
    ld e, a                                       ; $550c: $5f
    add hl, bc                                    ; $550d: $09
    ld d, [hl]                                    ; $550e: $56
    add hl, bc                                    ; $550f: $09
    sub [hl]                                      ; $5510: $96
    add hl, bc                                    ; $5511: $09
    sub [hl]                                      ; $5512: $96
    ld de, $006a                                  ; $5513: $11 $6a $00
    inc sp                                        ; $5516: $33
    nop                                           ; $5517: $00
    ld c, $08                                     ; $5518: $0e $08
    nop                                           ; $551a: $00
    sbc b                                         ; $551b: $98
    ld [hl+], a                                   ; $551c: $22
    dec d                                         ; $551d: $15
    nop                                           ; $551e: $00
    ld c, $24                                     ; $551f: $0e $24
    ld a, [de]                                    ; $5521: $1a
    inc l                                         ; $5522: $2c
    ld [de], a                                    ; $5523: $12
    inc c                                         ; $5524: $0c
    ld [de], a                                    ; $5525: $12
    inc c                                         ; $5526: $0c

jr_0e9_5527:
    ld [hl-], a                                   ; $5527: $32
    inc c                                         ; $5528: $0c
    ld [hl-], a                                   ; $5529: $32
    ld l, $11                                     ; $552a: $2e $11
    ld a, $01                                     ; $552c: $3e $01
    inc a                                         ; $552e: $3c
    ld [bc], a                                    ; $552f: $02
    jr nc, jr_0e9_553e                            ; $5530: $30 $0c

    nop                                           ; $5532: $00
    jr nc, jr_0e9_553d                            ; $5533: $30 $08

    nop                                           ; $5535: $00
    rst $38                                       ; $5536: $ff
    dec c                                         ; $5537: $0d
    inc b                                         ; $5538: $04
    ld sp, hl                                     ; $5539: $f9
    ld [$01f2], sp                                ; $553a: $08 $f2 $01

jr_0e9_553d:
    ld [c], a                                     ; $553d: $e2

jr_0e9_553e:
    ei                                            ; $553e: $fb
    db $e3                                        ; $553f: $e3
    nop                                           ; $5540: $00
    ld a, [c]                                     ; $5541: $f2
    ld a, [$00f2]                                 ; $5542: $fa $f2 $00
    sbc $00                                       ; $5545: $de $00
    rrca                                          ; $5547: $0f
    nop                                           ; $5548: $00
    dec d                                         ; $5549: $15
    rrca                                          ; $554a: $0f
    jr nc, jr_0e9_5563                            ; $554b: $30 $16

    add hl, hl                                    ; $554d: $29
    rrca                                          ; $554e: $0f
    jr nc, jr_0e9_5567                            ; $554f: $30 $16

    add hl, hl                                    ; $5551: $29
    dec bc                                        ; $5552: $0b
    inc [hl]                                      ; $5553: $34
    add hl, bc                                    ; $5554: $09
    ld d, $06                                     ; $5555: $16 $06
    add hl, hl                                    ; $5557: $29
    nop                                           ; $5558: $00
    ld b, $00                                     ; $5559: $06 $00
    inc hl                                        ; $555b: $23
    rrca                                          ; $555c: $0f
    ld d, b                                       ; $555d: $50
    nop                                           ; $555e: $00
    rst $38                                       ; $555f: $ff
    ld e, a                                       ; $5560: $5f
    and b                                         ; $5561: $a0
    rrca                                          ; $5562: $0f

jr_0e9_5563:
    ld [hl], b                                    ; $5563: $70
    nop                                           ; $5564: $00
    rst $08                                       ; $5565: $cf
    nop                                           ; $5566: $00

jr_0e9_5567:
    stop                                          ; $5567: $10 $00
    jr @+$12                                      ; $5569: $18 $10

    ld [$1800], sp                                ; $556b: $08 $00 $18
    db $10                                        ; $556e: $10
    ld [$1800], sp                                ; $556f: $08 $00 $18
    nop                                           ; $5572: $00
    jr jr_0e9_5575                                ; $5573: $18 $00

jr_0e9_5575:
    ld [$0800], sp                                ; $5575: $08 $00 $08
    nop                                           ; $5578: $00
    ld [$1400], sp                                ; $5579: $08 $00 $14
    inc b                                         ; $557c: $04
    ld a, [de]                                    ; $557d: $1a
    inc d                                         ; $557e: $14
    ld a, [bc]                                    ; $557f: $0a
    inc b                                         ; $5580: $04
    ld a, [de]                                    ; $5581: $1a
    nop                                           ; $5582: $00
    ld d, $c2                                     ; $5583: $16 $c2
    dec [hl]                                      ; $5585: $35
    ld b, b                                       ; $5586: $40
    and h                                         ; $5587: $a4
    ld h, h                                       ; $5588: $64
    sub e                                         ; $5589: $93
    ld b, h                                       ; $558a: $44
    and e                                         ; $558b: $a3
    inc h                                         ; $558c: $24
    adc d                                         ; $558d: $8a
    ld a, [hl+]                                   ; $558e: $2a
    push bc                                       ; $558f: $c5
    dec bc                                        ; $5590: $0b
    ld [hl], h                                    ; $5591: $74
    dec bc                                        ; $5592: $0b
    inc [hl]                                      ; $5593: $34
    rla                                           ; $5594: $17
    jr z, jr_0e9_55ae                             ; $5595: $28 $17

    jr z, jr_0e9_55b0                             ; $5597: $28 $17

    jr z, jr_0e9_55ca                             ; $5599: $28 $2f

    ld d, b                                       ; $559b: $50
    cpl                                           ; $559c: $2f
    ld d, b                                       ; $559d: $50
    rrca                                          ; $559e: $0f
    ld [hl], b                                    ; $559f: $70
    rrca                                          ; $55a0: $0f
    jr nz, jr_0e9_55a3                            ; $55a1: $20 $00

jr_0e9_55a3:
    rrca                                          ; $55a3: $0f
    inc b                                         ; $55a4: $04
    nop                                           ; $55a5: $00
    sbc h                                         ; $55a6: $9c
    ld h, $19                                     ; $55a7: $26 $19
    ld [hl+], a                                   ; $55a9: $22
    dec d                                         ; $55aa: $15
    inc d                                         ; $55ab: $14
    add hl, hl                                    ; $55ac: $29
    inc d                                         ; $55ad: $14

jr_0e9_55ae:
    dec hl                                        ; $55ae: $2b
    db $10                                        ; $55af: $10

jr_0e9_55b0:
    ld l, $08                                     ; $55b0: $2e $08
    inc d                                         ; $55b2: $14
    ld [$2834], sp                                ; $55b3: $08 $34 $28
    inc d                                         ; $55b6: $14
    jr z, @+$16                                   ; $55b7: $28 $14

    inc h                                         ; $55b9: $24
    ld a, [de]                                    ; $55ba: $1a
    inc h                                         ; $55bb: $24
    ld a, [de]                                    ; $55bc: $1a
    jr nc, @+$10                                  ; $55bd: $30 $0e

    jr nc, @+$0e                                  ; $55bf: $30 $0c

    nop                                           ; $55c1: $00
    jr nc, jr_0e9_55c6                            ; $55c2: $30 $02

    nop                                           ; $55c4: $00
    rst $38                                       ; $55c5: $ff

jr_0e9_55c6:
    inc de                                        ; $55c6: $13
    rlca                                          ; $55c7: $07
    pop af                                        ; $55c8: $f1
    db $10                                        ; $55c9: $10

jr_0e9_55ca:
    jp hl                                         ; $55ca: $e9


    ld [$f3e1], sp                                ; $55cb: $08 $e1 $f3
    db $e3                                        ; $55ce: $e3
    ei                                            ; $55cf: $fb
    jp hl                                         ; $55d0: $e9


    inc bc                                        ; $55d1: $03
    pop af                                        ; $55d2: $f1
    pop af                                        ; $55d3: $f1
    pop af                                        ; $55d4: $f1
    ld sp, hl                                     ; $55d5: $f9
    pop af                                        ; $55d6: $f1
    ld bc, $09f1                                  ; $55d7: $01 $f1 $09
    ld [bc], a                                    ; $55da: $02
    jr c, @-$60                                   ; $55db: $38 $9e

    ld a, [hl]                                    ; $55dd: $7e
    ld c, [hl]                                    ; $55de: $4e
    rst $38                                       ; $55df: $ff
    sub l                                         ; $55e0: $95
    rst $38                                       ; $55e1: $ff
    db $eb                                        ; $55e2: $eb
    rst $38                                       ; $55e3: $ff
    xor l                                         ; $55e4: $ad
    rst $38                                       ; $55e5: $ff
    ldh a, [$7f]                                  ; $55e6: $f0 $7f
    ld d, e                                       ; $55e8: $53
    ld a, a                                       ; $55e9: $7f
    ld l, b                                       ; $55ea: $68
    ccf                                           ; $55eb: $3f
    jr nc, jr_0e9_566d                            ; $55ec: $30 $7f

    ld d, d                                       ; $55ee: $52
    cpl                                           ; $55ef: $2f
    add hl, sp                                    ; $55f0: $39
    ld d, [hl]                                    ; $55f1: $56
    ld a, [hl]                                    ; $55f2: $7e
    ld c, h                                       ; $55f3: $4c
    ld a, h                                       ; $55f4: $7c
    xor e                                         ; $55f5: $ab
    rst $38                                       ; $55f6: $ff
    and l                                         ; $55f7: $a5
    rst $38                                       ; $55f8: $ff
    sbc a                                         ; $55f9: $9f
    di                                            ; $55fa: $f3
    ld [bc], a                                    ; $55fb: $02
    ld b, b                                       ; $55fc: $40
    ld a, [bc]                                    ; $55fd: $0a
    add b                                         ; $55fe: $80
    adc b                                         ; $55ff: $88
    pop bc                                        ; $5600: $c1
    ld b, c                                       ; $5601: $41
    add d                                         ; $5602: $82
    add e                                         ; $5603: $83
    rlca                                          ; $5604: $07
    inc b                                         ; $5605: $04
    rrca                                          ; $5606: $0f
    dec bc                                        ; $5607: $0b
    ld [bc], a                                    ; $5608: $02
    inc e                                         ; $5609: $1c
    ld [bc], a                                    ; $560a: $02
    ld de, $8688                                  ; $560b: $11 $88 $86
    add a                                         ; $560e: $87
    db $ed                                        ; $560f: $ed
    rst $28                                       ; $5610: $ef
    ld hl, sp-$61                                 ; $5611: $f8 $9f
    ld a, a                                       ; $5613: $7f
    ld e, a                                       ; $5614: $5f
    inc b                                         ; $5615: $04
    add b                                         ; $5616: $80
    add c                                         ; $5617: $81
    ld b, b                                       ; $5618: $40
    inc bc                                        ; $5619: $03
    ret nz                                        ; $561a: $c0

    ld [bc], a                                    ; $561b: $02

jr_0e9_561c:
    ld b, b                                       ; $561c: $40
    ld [bc], a                                    ; $561d: $02
    ldh [$86], a                                  ; $561e: $e0 $86
    cp b                                          ; $5620: $b8
    ld hl, sp+$6c                                 ; $5621: $f8 $6c
    db $fc                                        ; $5623: $fc
    sub h                                         ; $5624: $94
    db $fc                                        ; $5625: $fc
    inc bc                                        ; $5626: $03
    rst $38                                       ; $5627: $ff
    add d                                         ; $5628: $82
    xor a                                         ; $5629: $af
    ei                                            ; $562a: $fb
    inc b                                         ; $562b: $04
    rst $38                                       ; $562c: $ff
    add c                                         ; $562d: $81
    ld d, h                                       ; $562e: $54
    ld [bc], a                                    ; $562f: $02
    rst $38                                       ; $5630: $ff
    sbc d                                         ; $5631: $9a
    call nc, $177c                                ; $5632: $d4 $7c $17
    ld e, $1b                                     ; $5635: $1e $1b
    rra                                           ; $5637: $1f
    inc sp                                        ; $5638: $33
    ccf                                           ; $5639: $3f
    ld hl, $413f                                  ; $563a: $21 $3f $41
    ld a, a                                       ; $563d: $7f
    ld b, c                                       ; $563e: $41
    ld a, a                                       ; $563f: $7f
    ld b, b                                       ; $5640: $40
    ld a, a                                       ; $5641: $7f
    add b                                         ; $5642: $80
    rst $38                                       ; $5643: $ff
    add b                                         ; $5644: $80
    rst $38                                       ; $5645: $ff
    add b                                         ; $5646: $80
    rst $38                                       ; $5647: $ff
    and b                                         ; $5648: $a0
    rst $38                                       ; $5649: $ff
    pop hl                                        ; $564a: $e1
    rst $38                                       ; $564b: $ff
    ld [bc], a                                    ; $564c: $02
    ld a, a                                       ; $564d: $7f
    add h                                         ; $564e: $84
    ld a, $2e                                     ; $564f: $3e $2e
    inc a                                         ; $5651: $3c
    inc [hl]                                      ; $5652: $34
    ld [bc], a                                    ; $5653: $02
    ld l, $82                                     ; $5654: $2e $82
    ret nz                                        ; $5656: $c0

    nop                                           ; $5657: $00
    ld [bc], a                                    ; $5658: $02
    ret nz                                        ; $5659: $c0

    adc b                                         ; $565a: $88
    rrca                                          ; $565b: $0f
    ld a, [bc]                                    ; $565c: $0a
    adc a                                         ; $565d: $8f
    adc e                                         ; $565e: $8b
    add a                                         ; $565f: $87
    add l                                         ; $5660: $85
    add e                                         ; $5661: $83
    add d                                         ; $5662: $82
    inc b                                         ; $5663: $04
    add c                                         ; $5664: $81
    ld [bc], a                                    ; $5665: $02
    add e                                         ; $5666: $83
    ld [bc], a                                    ; $5667: $02
    rst $00                                       ; $5668: $c7
    add d                                         ; $5669: $82
    push bc                                       ; $566a: $c5
    rst $00                                       ; $566b: $c7
    ld [bc], a                                    ; $566c: $02

jr_0e9_566d:
    jp $8386                                      ; $566d: $c3 $86 $83


    add d                                         ; $5670: $82
    rlca                                          ; $5671: $07
    ld b, $05                                     ; $5672: $06 $05
    rlca                                          ; $5674: $07
    ld [bc], a                                    ; $5675: $02
    inc bc                                        ; $5676: $03
    inc b                                         ; $5677: $04
    nop                                           ; $5678: $00
    add d                                         ; $5679: $82
    ret nz                                        ; $567a: $c0

    add b                                         ; $567b: $80
    dec b                                         ; $567c: $05
    ret nz                                        ; $567d: $c0

    add c                                         ; $567e: $81
    add b                                         ; $567f: $80
    inc bc                                        ; $5680: $03
    ret nz                                        ; $5681: $c0

    add a                                         ; $5682: $87
    ld b, b                                       ; $5683: $40
    ld sp, hl                                     ; $5684: $f9
    ld l, a                                       ; $5685: $6f
    ld a, [c]                                     ; $5686: $f2
    ld l, a                                       ; $5687: $6f
    rst $38                                       ; $5688: $ff
    ld e, l                                       ; $5689: $5d
    inc bc                                        ; $568a: $03
    rst $38                                       ; $568b: $ff
    add c                                         ; $568c: $81
    ld a, a                                       ; $568d: $7f
    inc b                                         ; $568e: $04
    add b                                         ; $568f: $80
    ld [bc], a                                    ; $5690: $02
    nop                                           ; $5691: $00
    ld [bc], a                                    ; $5692: $02
    jr c, jr_0e9_561c                             ; $5693: $38 $87

    cpl                                           ; $5695: $2f
    ccf                                           ; $5696: $3f
    scf                                           ; $5697: $37
    dec c                                         ; $5698: $0d
    rrca                                          ; $5699: $0f
    dec a                                         ; $569a: $3d
    rla                                           ; $569b: $17
    ld [bc], a                                    ; $569c: $02
    ccf                                           ; $569d: $3f
    add c                                         ; $569e: $81
    add hl, sp                                    ; $569f: $39
    ld [bc], a                                    ; $56a0: $02
    ccf                                           ; $56a1: $3f
    adc b                                         ; $56a2: $88
    ld c, $0a                                     ; $56a3: $0e $0a
    db $fd                                        ; $56a5: $fd
    rst $38                                       ; $56a6: $ff
    xor [hl]                                      ; $56a7: $ae
    ld a, [$fafe]                                 ; $56a8: $fa $fe $fa
    inc bc                                        ; $56ab: $03
    cp $85                                        ; $56ac: $fe $85
    ld a, [c]                                     ; $56ae: $f2
    inc a                                         ; $56af: $3c

jr_0e9_56b0:
    inc [hl]                                      ; $56b0: $34
    inc l                                         ; $56b1: $2c
    inc a                                         ; $56b2: $3c
    ld [bc], a                                    ; $56b3: $02
    jr @+$01                                      ; $56b4: $18 $ff

    inc de                                        ; $56b6: $13
    rlca                                          ; $56b7: $07
    pop af                                        ; $56b8: $f1
    db $10                                        ; $56b9: $10
    jp hl                                         ; $56ba: $e9


    ld [$f3e2], sp                                ; $56bb: $08 $e2 $f3
    db $e4                                        ; $56be: $e4
    ei                                            ; $56bf: $fb
    jp hl                                         ; $56c0: $e9


    inc bc                                        ; $56c1: $03
    pop af                                        ; $56c2: $f1
    add hl, bc                                    ; $56c3: $09
    ld a, [c]                                     ; $56c4: $f2
    pop af                                        ; $56c5: $f1
    ld a, [c]                                     ; $56c6: $f2
    ld sp, hl                                     ; $56c7: $f9
    ld a, [c]                                     ; $56c8: $f2
    ld bc, $3802                                  ; $56c9: $01 $02 $38
    sbc [hl]                                      ; $56cc: $9e
    ld a, [hl]                                    ; $56cd: $7e
    ld c, [hl]                                    ; $56ce: $4e
    rst $38                                       ; $56cf: $ff
    sub l                                         ; $56d0: $95
    rst $38                                       ; $56d1: $ff
    db $eb                                        ; $56d2: $eb
    rst $38                                       ; $56d3: $ff
    xor l                                         ; $56d4: $ad
    rst $38                                       ; $56d5: $ff
    ldh a, [$7f]                                  ; $56d6: $f0 $7f
    ld d, e                                       ; $56d8: $53
    ld a, a                                       ; $56d9: $7f
    ld l, b                                       ; $56da: $68
    ccf                                           ; $56db: $3f
    jr nc, jr_0e9_575d                            ; $56dc: $30 $7f

    ld d, d                                       ; $56de: $52
    cpl                                           ; $56df: $2f

jr_0e9_56e0:
    add hl, sp                                    ; $56e0: $39
    ld d, [hl]                                    ; $56e1: $56
    ld a, [hl]                                    ; $56e2: $7e
    call z, $abfc                                 ; $56e3: $cc $fc $ab
    rst $38                                       ; $56e6: $ff
    or l                                          ; $56e7: $b5
    rst $38                                       ; $56e8: $ff
    sbc a                                         ; $56e9: $9f
    di                                            ; $56ea: $f3
    ld [bc], a                                    ; $56eb: $02
    ld b, b                                       ; $56ec: $40
    ld [$0280], sp                                ; $56ed: $08 $80 $02
    add c                                         ; $56f0: $81
    add [hl]                                      ; $56f1: $86
    add $47                                       ; $56f2: $c6 $47
    adc a                                         ; $56f4: $8f
    adc b                                         ; $56f5: $88
    rla                                           ; $56f6: $17
    rra                                           ; $56f7: $1f
    ld [bc], a                                    ; $56f8: $02
    jr @+$04                                      ; $56f9: $18 $02

    ld bc, $068a                                  ; $56fb: $01 $8a $06
    rlca                                          ; $56fe: $07
    db $ed                                        ; $56ff: $ed
    rst $28                                       ; $5700: $ef
    ld hl, sp+$1f                                 ; $5701: $f8 $1f
    rst $38                                       ; $5703: $ff
    rst $18                                       ; $5704: $df
    ccf                                           ; $5705: $3f
    ld a, [hl+]                                   ; $5706: $2a
    inc b                                         ; $5707: $04
    add b                                         ; $5708: $80
    add c                                         ; $5709: $81
    ld b, b                                       ; $570a: $40
    inc bc                                        ; $570b: $03
    ret nz                                        ; $570c: $c0

    ld [bc], a                                    ; $570d: $02
    ld b, b                                       ; $570e: $40
    ld [bc], a                                    ; $570f: $02
    ldh [$86], a                                  ; $5710: $e0 $86
    cp b                                          ; $5712: $b8
    ld hl, sp+$6c                                 ; $5713: $f8 $6c
    db $fc                                        ; $5715: $fc
    sub h                                         ; $5716: $94
    db $fc                                        ; $5717: $fc
    inc bc                                        ; $5718: $03
    rst $38                                       ; $5719: $ff
    add d                                         ; $571a: $82
    xor a                                         ; $571b: $af
    ei                                            ; $571c: $fb
    inc b                                         ; $571d: $04
    rst $38                                       ; $571e: $ff
    add c                                         ; $571f: $81
    ld d, h                                       ; $5720: $54
    ld [bc], a                                    ; $5721: $02
    rst $38                                       ; $5722: $ff
    add d                                         ; $5723: $82
    call nc, Call_000_027c                        ; $5724: $d4 $7c $02
    jr c, jr_0e9_56b0                             ; $5727: $38 $87

    cpl                                           ; $5729: $2f
    ccf                                           ; $572a: $3f
    scf                                           ; $572b: $37
    dec c                                         ; $572c: $0d
    rrca                                          ; $572d: $0f
    dec a                                         ; $572e: $3d
    rla                                           ; $572f: $17
    ld [bc], a                                    ; $5730: $02
    ccf                                           ; $5731: $3f
    add c                                         ; $5732: $81
    add hl, sp                                    ; $5733: $39
    ld [bc], a                                    ; $5734: $02
    ccf                                           ; $5735: $3f
    adc b                                         ; $5736: $88
    ld c, $0a                                     ; $5737: $0e $0a
    db $fd                                        ; $5739: $fd
    rst $38                                       ; $573a: $ff
    xor [hl]                                      ; $573b: $ae
    ld a, [$fafe]                                 ; $573c: $fa $fe $fa
    inc bc                                        ; $573f: $03
    cp $85                                        ; $5740: $fe $85
    ld a, [c]                                     ; $5742: $f2
    inc a                                         ; $5743: $3c
    inc [hl]                                      ; $5744: $34
    inc l                                         ; $5745: $2c
    inc a                                         ; $5746: $3c
    ld [bc], a                                    ; $5747: $02
    jr jr_0e9_56e0                                ; $5748: $18 $96

    rla                                           ; $574a: $17
    ld e, $1b                                     ; $574b: $1e $1b
    rra                                           ; $574d: $1f
    ld hl, $213f                                  ; $574e: $21 $3f $21
    ccf                                           ; $5751: $3f
    ld hl, $403f                                  ; $5752: $21 $3f $40
    ld a, a                                       ; $5755: $7f
    ld b, b                                       ; $5756: $40
    ld a, a                                       ; $5757: $7f
    ld b, b                                       ; $5758: $40

jr_0e9_5759:
    ld a, a                                       ; $5759: $7f
    ld b, b                                       ; $575a: $40
    ld a, a                                       ; $575b: $7f
    add b                                         ; $575c: $80

jr_0e9_575d:
    rst $38                                       ; $575d: $ff
    ret nz                                        ; $575e: $c0

    rst $38                                       ; $575f: $ff
    ld [bc], a                                    ; $5760: $02
    ld a, a                                       ; $5761: $7f
    add d                                         ; $5762: $82
    inc [hl]                                      ; $5763: $34
    inc a                                         ; $5764: $3c
    ld [bc], a                                    ; $5765: $02
    ld c, $04                                     ; $5766: $0e $04
    nop                                           ; $5768: $00
    add d                                         ; $5769: $82
    ret nz                                        ; $576a: $c0

    nop                                           ; $576b: $00
    ld [bc], a                                    ; $576c: $02
    ret nz                                        ; $576d: $c0

    add [hl]                                      ; $576e: $86
    rrca                                          ; $576f: $0f
    dec bc                                        ; $5770: $0b
    add a                                         ; $5771: $87
    add l                                         ; $5772: $85
    add e                                         ; $5773: $83
    add d                                         ; $5774: $82
    ld [bc], a                                    ; $5775: $02
    add c                                         ; $5776: $81
    ld [bc], a                                    ; $5777: $02
    pop bc                                        ; $5778: $c1
    add [hl]                                      ; $5779: $86
    ld b, e                                       ; $577a: $43
    jp $c747                                      ; $577b: $c3 $47 $c7


    push bc                                       ; $577e: $c5
    rst $00                                       ; $577f: $c7
    ld [bc], a                                    ; $5780: $02
    jp $8386                                      ; $5781: $c3 $86 $83


    add d                                         ; $5784: $82
    rlca                                          ; $5785: $07
    ld b, $05                                     ; $5786: $06 $05
    rlca                                          ; $5788: $07
    ld [bc], a                                    ; $5789: $02
    inc bc                                        ; $578a: $03
    ld b, $00                                     ; $578b: $06 $00
    dec b                                         ; $578d: $05
    ret nz                                        ; $578e: $c0

    add c                                         ; $578f: $81
    add b                                         ; $5790: $80
    inc bc                                        ; $5791: $03
    ret nz                                        ; $5792: $c0

    add a                                         ; $5793: $87
    ld b, b                                       ; $5794: $40
    ld sp, hl                                     ; $5795: $f9
    ld l, a                                       ; $5796: $6f
    ld a, [c]                                     ; $5797: $f2
    ld l, a                                       ; $5798: $6f
    rst $38                                       ; $5799: $ff
    ld e, l                                       ; $579a: $5d
    inc bc                                        ; $579b: $03
    rst $38                                       ; $579c: $ff
    add c                                         ; $579d: $81
    ld a, a                                       ; $579e: $7f
    inc b                                         ; $579f: $04
    add b                                         ; $57a0: $80
    inc b                                         ; $57a1: $04
    nop                                           ; $57a2: $00
    rst $38                                       ; $57a3: $ff
    inc de                                        ; $57a4: $13
    rlca                                          ; $57a5: $07
    pop af                                        ; $57a6: $f1
    db $10                                        ; $57a7: $10
    jp hl                                         ; $57a8: $e9


    ld [$f3e1], sp                                ; $57a9: $08 $e1 $f3
    db $e3                                        ; $57ac: $e3
    ei                                            ; $57ad: $fb
    jp hl                                         ; $57ae: $e9


    inc bc                                        ; $57af: $03
    pop af                                        ; $57b0: $f1
    ld a, [c]                                     ; $57b1: $f2
    pop af                                        ; $57b2: $f1
    ld a, [$02f1]                                 ; $57b3: $fa $f1 $02
    pop af                                        ; $57b6: $f1
    add hl, bc                                    ; $57b7: $09
    ld [bc], a                                    ; $57b8: $02
    jr c, jr_0e9_5759                             ; $57b9: $38 $9e

    ld a, [hl]                                    ; $57bb: $7e
    ld c, [hl]                                    ; $57bc: $4e
    rst $38                                       ; $57bd: $ff
    sub l                                         ; $57be: $95
    rst $38                                       ; $57bf: $ff
    db $eb                                        ; $57c0: $eb
    rst $38                                       ; $57c1: $ff
    xor l                                         ; $57c2: $ad
    rst $38                                       ; $57c3: $ff
    ldh a, [$7f]                                  ; $57c4: $f0 $7f
    ld d, e                                       ; $57c6: $53
    ld a, a                                       ; $57c7: $7f
    ld l, b                                       ; $57c8: $68
    ccf                                           ; $57c9: $3f
    jr nc, jr_0e9_584b                            ; $57ca: $30 $7f

    ld d, d                                       ; $57cc: $52
    cpl                                           ; $57cd: $2f
    add hl, sp                                    ; $57ce: $39
    ld d, [hl]                                    ; $57cf: $56
    ld a, [hl]                                    ; $57d0: $7e
    ld c, h                                       ; $57d1: $4c
    ld a, h                                       ; $57d2: $7c
    xor e                                         ; $57d3: $ab
    rst $38                                       ; $57d4: $ff
    and l                                         ; $57d5: $a5
    rst $38                                       ; $57d6: $ff
    sbc a                                         ; $57d7: $9f
    di                                            ; $57d8: $f3
    ld [bc], a                                    ; $57d9: $02
    ld b, b                                       ; $57da: $40
    ld a, [bc]                                    ; $57db: $0a
    add b                                         ; $57dc: $80
    adc b                                         ; $57dd: $88
    pop bc                                        ; $57de: $c1
    ld b, c                                       ; $57df: $41
    add d                                         ; $57e0: $82
    add e                                         ; $57e1: $83
    rlca                                          ; $57e2: $07
    inc b                                         ; $57e3: $04
    rrca                                          ; $57e4: $0f
    dec bc                                        ; $57e5: $0b
    ld [bc], a                                    ; $57e6: $02
    inc e                                         ; $57e7: $1c
    ld [bc], a                                    ; $57e8: $02
    ld de, $8688                                  ; $57e9: $11 $88 $86
    add a                                         ; $57ec: $87
    db $ed                                        ; $57ed: $ed
    rst $28                                       ; $57ee: $ef
    ld hl, sp-$61                                 ; $57ef: $f8 $9f
    ld a, a                                       ; $57f1: $7f
    ld e, a                                       ; $57f2: $5f
    inc b                                         ; $57f3: $04
    add b                                         ; $57f4: $80
    add c                                         ; $57f5: $81

jr_0e9_57f6:
    ld b, b                                       ; $57f6: $40
    inc bc                                        ; $57f7: $03
    ret nz                                        ; $57f8: $c0

    ld [bc], a                                    ; $57f9: $02
    ld b, b                                       ; $57fa: $40
    ld [bc], a                                    ; $57fb: $02
    ldh [$86], a                                  ; $57fc: $e0 $86
    cp b                                          ; $57fe: $b8
    ld hl, sp+$6c                                 ; $57ff: $f8 $6c
    db $fc                                        ; $5801: $fc
    sub h                                         ; $5802: $94
    db $fc                                        ; $5803: $fc
    inc bc                                        ; $5804: $03
    rst $38                                       ; $5805: $ff
    add d                                         ; $5806: $82
    xor a                                         ; $5807: $af
    ei                                            ; $5808: $fb
    inc b                                         ; $5809: $04
    rst $38                                       ; $580a: $ff
    add c                                         ; $580b: $81
    ld d, h                                       ; $580c: $54
    ld [bc], a                                    ; $580d: $02
    rst $38                                       ; $580e: $ff
    sbc d                                         ; $580f: $9a
    call nc, Call_000_2f7c                        ; $5810: $d4 $7c $2f
    inc a                                         ; $5813: $3c
    scf                                           ; $5814: $37
    ccf                                           ; $5815: $3f
    ld h, [hl]                                    ; $5816: $66
    ld a, [hl]                                    ; $5817: $7e
    ld b, e                                       ; $5818: $43
    ld a, a                                       ; $5819: $7f
    ld b, e                                       ; $581a: $43
    ld a, a                                       ; $581b: $7f
    ld b, c                                       ; $581c: $41
    ld a, a                                       ; $581d: $7f
    pop bc                                        ; $581e: $c1
    rst $38                                       ; $581f: $ff
    add c                                         ; $5820: $81
    rst $38                                       ; $5821: $ff
    add c                                         ; $5822: $81
    rst $38                                       ; $5823: $ff
    add b                                         ; $5824: $80
    rst $38                                       ; $5825: $ff
    add b                                         ; $5826: $80
    rst $38                                       ; $5827: $ff
    ret nz                                        ; $5828: $c0

    rst $38                                       ; $5829: $ff
    ld [bc], a                                    ; $582a: $02
    ld a, a                                       ; $582b: $7f
    add h                                         ; $582c: $84
    ld l, d                                       ; $582d: $6a
    ld l, [hl]                                    ; $582e: $6e
    ccf                                           ; $582f: $3f
    dec a                                         ; $5830: $3d
    ld [bc], a                                    ; $5831: $02
    dec bc                                        ; $5832: $0b
    add d                                         ; $5833: $82
    add b                                         ; $5834: $80
    nop                                           ; $5835: $00
    ld [bc], a                                    ; $5836: $02
    add b                                         ; $5837: $80
    adc b                                         ; $5838: $88
    rra                                           ; $5839: $1f
    dec d                                         ; $583a: $15
    rra                                           ; $583b: $1f
    rla                                           ; $583c: $17
    rrca                                          ; $583d: $0f
    dec bc                                        ; $583e: $0b
    rlca                                          ; $583f: $07
    dec b                                         ; $5840: $05
    inc bc                                        ; $5841: $03
    inc bc                                        ; $5842: $03
    add a                                         ; $5843: $87
    ld [bc], a                                    ; $5844: $02
    rlca                                          ; $5845: $07
    ld b, $8f                                     ; $5846: $06 $8f
    adc [hl]                                      ; $5848: $8e
    adc e                                         ; $5849: $8b
    adc [hl]                                      ; $584a: $8e

jr_0e9_584b:
    ld [bc], a                                    ; $584b: $02
    add a                                         ; $584c: $87
    add [hl]                                      ; $584d: $86
    rlca                                          ; $584e: $07
    inc b                                         ; $584f: $04
    rrca                                          ; $5850: $0f
    dec c                                         ; $5851: $0d
    adc e                                         ; $5852: $8b
    adc a                                         ; $5853: $8f
    ld [bc], a                                    ; $5854: $02
    ld b, $04                                     ; $5855: $06 $04
    nop                                           ; $5857: $00
    add d                                         ; $5858: $82
    add b                                         ; $5859: $80
    nop                                           ; $585a: $00
    dec b                                         ; $585b: $05
    add b                                         ; $585c: $80
    add c                                         ; $585d: $81
    nop                                           ; $585e: $00
    inc b                                         ; $585f: $04
    add b                                         ; $5860: $80
    add [hl]                                      ; $5861: $86
    di                                            ; $5862: $f3
    rst $18                                       ; $5863: $df
    push hl                                       ; $5864: $e5
    rst $18                                       ; $5865: $df
    rst $38                                       ; $5866: $ff
    cp e                                          ; $5867: $bb
    inc b                                         ; $5868: $04
    rst $38                                       ; $5869: $ff
    ld b, $00                                     ; $586a: $06 $00
    ld [bc], a                                    ; $586c: $02
    jr c, jr_0e9_57f6                             ; $586d: $38 $87

    rrca                                          ; $586f: $0f
    ccf                                           ; $5870: $3f
    cpl                                           ; $5871: $2f
    dec e                                         ; $5872: $1d
    daa                                           ; $5873: $27
    dec e                                         ; $5874: $1d
    rla                                           ; $5875: $17
    ld [bc], a                                    ; $5876: $02
    ccf                                           ; $5877: $3f
    add c                                         ; $5878: $81
    add hl, sp                                    ; $5879: $39
    ld [bc], a                                    ; $587a: $02
    ccf                                           ; $587b: $3f
    adc b                                         ; $587c: $88
    ld c, $0a                                     ; $587d: $0e $0a
    ld a, l                                       ; $587f: $7d
    ld a, a                                       ; $5880: $7f
    ld l, $7a                                     ; $5881: $2e $7a
    ld a, [hl]                                    ; $5883: $7e
    ld a, d                                       ; $5884: $7a
    inc bc                                        ; $5885: $03
    ld a, [hl]                                    ; $5886: $7e
    add l                                         ; $5887: $85
    ld [hl], d                                    ; $5888: $72
    inc a                                         ; $5889: $3c

jr_0e9_588a:
    inc [hl]                                      ; $588a: $34
    inc l                                         ; $588b: $2c
    inc a                                         ; $588c: $3c
    ld [bc], a                                    ; $588d: $02
    jr @+$01                                      ; $588e: $18 $ff

    inc de                                        ; $5890: $13
    rlca                                          ; $5891: $07
    pop af                                        ; $5892: $f1
    db $10                                        ; $5893: $10
    jp hl                                         ; $5894: $e9


    ld [$f3e2], sp                                ; $5895: $08 $e2 $f3
    db $e4                                        ; $5898: $e4
    ei                                            ; $5899: $fb
    jp hl                                         ; $589a: $e9


    inc bc                                        ; $589b: $03
    pop af                                        ; $589c: $f1
    add hl, bc                                    ; $589d: $09
    ld a, [c]                                     ; $589e: $f2
    pop af                                        ; $589f: $f1
    ld a, [c]                                     ; $58a0: $f2
    ld sp, hl                                     ; $58a1: $f9
    ld a, [c]                                     ; $58a2: $f2
    ld bc, $3802                                  ; $58a3: $01 $02 $38
    sbc [hl]                                      ; $58a6: $9e
    ld a, [hl]                                    ; $58a7: $7e
    ld c, [hl]                                    ; $58a8: $4e
    rst $38                                       ; $58a9: $ff
    sub l                                         ; $58aa: $95
    rst $38                                       ; $58ab: $ff
    db $eb                                        ; $58ac: $eb
    rst $38                                       ; $58ad: $ff
    xor l                                         ; $58ae: $ad
    rst $38                                       ; $58af: $ff
    ldh a, [$7f]                                  ; $58b0: $f0 $7f
    ld d, e                                       ; $58b2: $53
    ld a, a                                       ; $58b3: $7f
    ld l, b                                       ; $58b4: $68
    ccf                                           ; $58b5: $3f
    jr nc, jr_0e9_5937                            ; $58b6: $30 $7f

    ld d, d                                       ; $58b8: $52
    cpl                                           ; $58b9: $2f

jr_0e9_58ba:
    add hl, sp                                    ; $58ba: $39
    ld d, [hl]                                    ; $58bb: $56
    ld a, [hl]                                    ; $58bc: $7e
    call z, $abfc                                 ; $58bd: $cc $fc $ab
    rst $38                                       ; $58c0: $ff
    or l                                          ; $58c1: $b5
    rst $38                                       ; $58c2: $ff
    sbc a                                         ; $58c3: $9f
    di                                            ; $58c4: $f3
    ld [bc], a                                    ; $58c5: $02
    ld b, b                                       ; $58c6: $40
    ld [$0280], sp                                ; $58c7: $08 $80 $02
    add c                                         ; $58ca: $81
    add [hl]                                      ; $58cb: $86
    add $47                                       ; $58cc: $c6 $47
    adc a                                         ; $58ce: $8f
    adc b                                         ; $58cf: $88
    rla                                           ; $58d0: $17
    rra                                           ; $58d1: $1f
    ld [bc], a                                    ; $58d2: $02
    jr @+$04                                      ; $58d3: $18 $02

    ld bc, $068a                                  ; $58d5: $01 $8a $06
    rlca                                          ; $58d8: $07
    db $ed                                        ; $58d9: $ed
    rst $28                                       ; $58da: $ef
    ld hl, sp+$1f                                 ; $58db: $f8 $1f
    rst $38                                       ; $58dd: $ff
    rst $18                                       ; $58de: $df
    ccf                                           ; $58df: $3f
    ld a, [hl+]                                   ; $58e0: $2a
    inc b                                         ; $58e1: $04
    add b                                         ; $58e2: $80
    add c                                         ; $58e3: $81
    ld b, b                                       ; $58e4: $40
    inc bc                                        ; $58e5: $03
    ret nz                                        ; $58e6: $c0

    ld [bc], a                                    ; $58e7: $02
    ld b, b                                       ; $58e8: $40
    ld [bc], a                                    ; $58e9: $02
    ldh [$86], a                                  ; $58ea: $e0 $86
    cp b                                          ; $58ec: $b8
    ld hl, sp+$6c                                 ; $58ed: $f8 $6c
    db $fc                                        ; $58ef: $fc
    sub h                                         ; $58f0: $94
    db $fc                                        ; $58f1: $fc
    inc bc                                        ; $58f2: $03
    rst $38                                       ; $58f3: $ff
    add d                                         ; $58f4: $82
    xor a                                         ; $58f5: $af
    ei                                            ; $58f6: $fb
    inc b                                         ; $58f7: $04
    rst $38                                       ; $58f8: $ff
    add c                                         ; $58f9: $81
    ld d, h                                       ; $58fa: $54
    ld [bc], a                                    ; $58fb: $02
    rst $38                                       ; $58fc: $ff
    add d                                         ; $58fd: $82
    call nc, Call_000_027c                        ; $58fe: $d4 $7c $02
    jr c, jr_0e9_588a                             ; $5901: $38 $87

    cpl                                           ; $5903: $2f
    ccf                                           ; $5904: $3f
    scf                                           ; $5905: $37
    dec c                                         ; $5906: $0d
    rrca                                          ; $5907: $0f
    dec a                                         ; $5908: $3d
    rla                                           ; $5909: $17
    ld [bc], a                                    ; $590a: $02
    ccf                                           ; $590b: $3f
    add c                                         ; $590c: $81
    add hl, sp                                    ; $590d: $39
    ld [bc], a                                    ; $590e: $02
    ccf                                           ; $590f: $3f
    adc b                                         ; $5910: $88
    ld c, $0a                                     ; $5911: $0e $0a
    db $fd                                        ; $5913: $fd
    rst $38                                       ; $5914: $ff
    xor [hl]                                      ; $5915: $ae
    ld a, [$fafe]                                 ; $5916: $fa $fe $fa
    inc bc                                        ; $5919: $03
    cp $85                                        ; $591a: $fe $85
    ld a, [c]                                     ; $591c: $f2
    inc a                                         ; $591d: $3c
    inc [hl]                                      ; $591e: $34
    inc l                                         ; $591f: $2c
    inc a                                         ; $5920: $3c
    ld [bc], a                                    ; $5921: $02
    jr jr_0e9_58ba                                ; $5922: $18 $96

    rla                                           ; $5924: $17
    ld e, $1b                                     ; $5925: $1e $1b
    rra                                           ; $5927: $1f
    ld hl, $213f                                  ; $5928: $21 $3f $21
    ccf                                           ; $592b: $3f
    ld b, c                                       ; $592c: $41
    ld a, a                                       ; $592d: $7f
    ld b, b                                       ; $592e: $40
    ld a, a                                       ; $592f: $7f
    ld b, b                                       ; $5930: $40
    ld a, a                                       ; $5931: $7f
    ld b, b                                       ; $5932: $40

jr_0e9_5933:
    ld a, a                                       ; $5933: $7f
    add b                                         ; $5934: $80
    rst $38                                       ; $5935: $ff
    add b                                         ; $5936: $80

jr_0e9_5937:
    rst $38                                       ; $5937: $ff
    ret nz                                        ; $5938: $c0

    rst $38                                       ; $5939: $ff
    ld [bc], a                                    ; $593a: $02
    ld a, a                                       ; $593b: $7f
    add h                                         ; $593c: $84
    ld l, $3e                                     ; $593d: $2e $3e
    inc a                                         ; $593f: $3c
    inc [hl]                                      ; $5940: $34
    ld [bc], a                                    ; $5941: $02
    ld l, $02                                     ; $5942: $2e $02
    nop                                           ; $5944: $00
    add d                                         ; $5945: $82
    ret nz                                        ; $5946: $c0

    nop                                           ; $5947: $00
    ld [bc], a                                    ; $5948: $02
    ret nz                                        ; $5949: $c0

    add [hl]                                      ; $594a: $86
    rrca                                          ; $594b: $0f
    dec bc                                        ; $594c: $0b
    add a                                         ; $594d: $87
    add l                                         ; $594e: $85
    add e                                         ; $594f: $83
    add d                                         ; $5950: $82
    inc b                                         ; $5951: $04
    add c                                         ; $5952: $81
    ld [bc], a                                    ; $5953: $02
    add e                                         ; $5954: $83
    ld [bc], a                                    ; $5955: $02
    rst $00                                       ; $5956: $c7
    add d                                         ; $5957: $82
    push bc                                       ; $5958: $c5
    rst $00                                       ; $5959: $c7
    ld [bc], a                                    ; $595a: $02
    jp $8386                                      ; $595b: $c3 $86 $83


    add d                                         ; $595e: $82
    rlca                                          ; $595f: $07
    ld b, $05                                     ; $5960: $06 $05
    rlca                                          ; $5962: $07
    ld [bc], a                                    ; $5963: $02
    inc bc                                        ; $5964: $03
    ld b, $00                                     ; $5965: $06 $00
    dec b                                         ; $5967: $05
    ret nz                                        ; $5968: $c0

    add c                                         ; $5969: $81
    add b                                         ; $596a: $80
    inc bc                                        ; $596b: $03
    ret nz                                        ; $596c: $c0

    add a                                         ; $596d: $87
    ld b, b                                       ; $596e: $40
    ld sp, hl                                     ; $596f: $f9
    ld l, a                                       ; $5970: $6f
    ld a, [c]                                     ; $5971: $f2
    ld l, a                                       ; $5972: $6f
    rst $38                                       ; $5973: $ff
    ld e, l                                       ; $5974: $5d
    inc bc                                        ; $5975: $03
    rst $38                                       ; $5976: $ff
    add c                                         ; $5977: $81
    ld a, a                                       ; $5978: $7f
    inc b                                         ; $5979: $04
    add b                                         ; $597a: $80
    inc b                                         ; $597b: $04
    nop                                           ; $597c: $00
    rst $38                                       ; $597d: $ff
    inc de                                        ; $597e: $13
    rlca                                          ; $597f: $07
    pop af                                        ; $5980: $f1
    db $10                                        ; $5981: $10
    jp hl                                         ; $5982: $e9


    ld [$f3e1], sp                                ; $5983: $08 $e1 $f3
    db $e3                                        ; $5986: $e3
    ei                                            ; $5987: $fb
    jp hl                                         ; $5988: $e9


    inc bc                                        ; $5989: $03
    pop af                                        ; $598a: $f1
    pop af                                        ; $598b: $f1
    pop af                                        ; $598c: $f1
    ld sp, hl                                     ; $598d: $f9

jr_0e9_598e:
    pop af                                        ; $598e: $f1
    ld bc, $09f1                                  ; $598f: $01 $f1 $09
    ld [bc], a                                    ; $5992: $02
    jr c, jr_0e9_5933                             ; $5993: $38 $9e

    ld a, [hl]                                    ; $5995: $7e
    ld c, [hl]                                    ; $5996: $4e
    rst $38                                       ; $5997: $ff
    sub l                                         ; $5998: $95
    rst $38                                       ; $5999: $ff
    db $eb                                        ; $599a: $eb
    rst $38                                       ; $599b: $ff
    xor l                                         ; $599c: $ad
    rst $38                                       ; $599d: $ff
    ldh a, [$7f]                                  ; $599e: $f0 $7f
    ld d, e                                       ; $59a0: $53
    ld a, a                                       ; $59a1: $7f
    ld l, b                                       ; $59a2: $68
    ccf                                           ; $59a3: $3f
    jr nc, jr_0e9_5a25                            ; $59a4: $30 $7f

    ld d, d                                       ; $59a6: $52
    cpl                                           ; $59a7: $2f
    add hl, sp                                    ; $59a8: $39
    ld d, [hl]                                    ; $59a9: $56
    ld a, [hl]                                    ; $59aa: $7e
    ld c, h                                       ; $59ab: $4c
    ld a, h                                       ; $59ac: $7c
    xor e                                         ; $59ad: $ab
    rst $38                                       ; $59ae: $ff
    and l                                         ; $59af: $a5
    rst $38                                       ; $59b0: $ff
    sbc a                                         ; $59b1: $9f
    di                                            ; $59b2: $f3
    ld [bc], a                                    ; $59b3: $02
    ld b, b                                       ; $59b4: $40
    ld a, [bc]                                    ; $59b5: $0a
    add b                                         ; $59b6: $80
    adc b                                         ; $59b7: $88
    pop bc                                        ; $59b8: $c1
    ld b, c                                       ; $59b9: $41
    add d                                         ; $59ba: $82
    add e                                         ; $59bb: $83
    rlca                                          ; $59bc: $07
    inc b                                         ; $59bd: $04
    rrca                                          ; $59be: $0f
    dec bc                                        ; $59bf: $0b
    ld [bc], a                                    ; $59c0: $02
    inc e                                         ; $59c1: $1c
    ld [bc], a                                    ; $59c2: $02
    ld de, $8688                                  ; $59c3: $11 $88 $86
    add a                                         ; $59c6: $87
    db $ed                                        ; $59c7: $ed
    rst $28                                       ; $59c8: $ef
    ld hl, sp-$61                                 ; $59c9: $f8 $9f
    ld a, a                                       ; $59cb: $7f

jr_0e9_59cc:
    ld e, a                                       ; $59cc: $5f
    inc b                                         ; $59cd: $04
    add b                                         ; $59ce: $80
    add c                                         ; $59cf: $81
    ld b, b                                       ; $59d0: $40
    inc bc                                        ; $59d1: $03
    ret nz                                        ; $59d2: $c0

    ld [bc], a                                    ; $59d3: $02
    ld b, b                                       ; $59d4: $40
    ld [bc], a                                    ; $59d5: $02
    ldh [$86], a                                  ; $59d6: $e0 $86
    cp b                                          ; $59d8: $b8
    ld hl, sp+$6c                                 ; $59d9: $f8 $6c
    db $fc                                        ; $59db: $fc
    sub h                                         ; $59dc: $94
    db $fc                                        ; $59dd: $fc
    inc bc                                        ; $59de: $03
    rst $38                                       ; $59df: $ff
    add d                                         ; $59e0: $82
    xor a                                         ; $59e1: $af
    ei                                            ; $59e2: $fb
    inc b                                         ; $59e3: $04
    rst $38                                       ; $59e4: $ff
    add c                                         ; $59e5: $81
    ld d, h                                       ; $59e6: $54
    ld [bc], a                                    ; $59e7: $02
    rst $38                                       ; $59e8: $ff
    sbc d                                         ; $59e9: $9a
    call nc, $177c                                ; $59ea: $d4 $7c $17
    ld e, $1b                                     ; $59ed: $1e $1b
    rra                                           ; $59ef: $1f
    inc sp                                        ; $59f0: $33
    ccf                                           ; $59f1: $3f
    ld hl, $413f                                  ; $59f2: $21 $3f $41
    ld a, a                                       ; $59f5: $7f
    ld b, c                                       ; $59f6: $41
    ld a, a                                       ; $59f7: $7f
    add c                                         ; $59f8: $81
    rst $38                                       ; $59f9: $ff
    add c                                         ; $59fa: $81
    rst $38                                       ; $59fb: $ff
    add c                                         ; $59fc: $81
    rst $38                                       ; $59fd: $ff
    add c                                         ; $59fe: $81
    rst $38                                       ; $59ff: $ff
    add c                                         ; $5a00: $81
    rst $38                                       ; $5a01: $ff
    add e                                         ; $5a02: $83
    rst $38                                       ; $5a03: $ff
    inc b                                         ; $5a04: $04
    ld a, a                                       ; $5a05: $7f
    add d                                         ; $5a06: $82
    ld a, h                                       ; $5a07: $7c
    ld l, h                                       ; $5a08: $6c
    ld [bc], a                                    ; $5a09: $02
    jr jr_0e9_598e                                ; $5a0a: $18 $82

    ret nz                                        ; $5a0c: $c0

    nop                                           ; $5a0d: $00
    ld [bc], a                                    ; $5a0e: $02
    ret nz                                        ; $5a0f: $c0

    adc b                                         ; $5a10: $88
    rrca                                          ; $5a11: $0f
    ld a, [bc]                                    ; $5a12: $0a
    rrca                                          ; $5a13: $0f
    dec bc                                        ; $5a14: $0b
    rlca                                          ; $5a15: $07
    dec b                                         ; $5a16: $05
    add e                                         ; $5a17: $83
    add d                                         ; $5a18: $82
    inc b                                         ; $5a19: $04
    add c                                         ; $5a1a: $81
    ld [bc], a                                    ; $5a1b: $02
    add e                                         ; $5a1c: $83
    ld [bc], a                                    ; $5a1d: $02
    add a                                         ; $5a1e: $87
    add d                                         ; $5a1f: $82
    add l                                         ; $5a20: $85
    add a                                         ; $5a21: $87
    ld [bc], a                                    ; $5a22: $02
    add e                                         ; $5a23: $83

Call_0e9_5a24:
    add [hl]                                      ; $5a24: $86

jr_0e9_5a25:
    inc bc                                        ; $5a25: $03
    ld [bc], a                                    ; $5a26: $02
    add a                                         ; $5a27: $87
    add [hl]                                      ; $5a28: $86
    dec b                                         ; $5a29: $05
    rlca                                          ; $5a2a: $07
    ld [bc], a                                    ; $5a2b: $02
    inc bc                                        ; $5a2c: $03
    inc b                                         ; $5a2d: $04
    nop                                           ; $5a2e: $00
    add d                                         ; $5a2f: $82
    ret nz                                        ; $5a30: $c0

    add b                                         ; $5a31: $80
    dec b                                         ; $5a32: $05
    ret nz                                        ; $5a33: $c0

    add c                                         ; $5a34: $81
    add b                                         ; $5a35: $80
    inc bc                                        ; $5a36: $03
    ret nz                                        ; $5a37: $c0

    add a                                         ; $5a38: $87
    ld b, b                                       ; $5a39: $40
    ld sp, hl                                     ; $5a3a: $f9
    ld l, a                                       ; $5a3b: $6f
    ld a, [c]                                     ; $5a3c: $f2
    ld l, a                                       ; $5a3d: $6f
    rst $38                                       ; $5a3e: $ff
    ld e, l                                       ; $5a3f: $5d
    inc bc                                        ; $5a40: $03
    rst $38                                       ; $5a41: $ff
    add c                                         ; $5a42: $81
    ld a, a                                       ; $5a43: $7f
    inc b                                         ; $5a44: $04
    add b                                         ; $5a45: $80
    ld [bc], a                                    ; $5a46: $02
    nop                                           ; $5a47: $00
    ld [bc], a                                    ; $5a48: $02
    jr c, jr_0e9_59cc                             ; $5a49: $38 $81

    daa                                           ; $5a4b: $27
    ld [bc], a                                    ; $5a4c: $02
    ccf                                           ; $5a4d: $3f
    add h                                         ; $5a4e: $84
    dec h                                         ; $5a4f: $25
    daa                                           ; $5a50: $27
    dec e                                         ; $5a51: $1d
    rla                                           ; $5a52: $17
    ld [bc], a                                    ; $5a53: $02
    ccf                                           ; $5a54: $3f
    add c                                         ; $5a55: $81
    add hl, sp                                    ; $5a56: $39
    ld [bc], a                                    ; $5a57: $02
    ccf                                           ; $5a58: $3f
    adc b                                         ; $5a59: $88
    ld c, $0a                                     ; $5a5a: $0e $0a
    db $fd                                        ; $5a5c: $fd
    rst $38                                       ; $5a5d: $ff
    xor [hl]                                      ; $5a5e: $ae
    ld a, [$fafe]                                 ; $5a5f: $fa $fe $fa
    inc bc                                        ; $5a62: $03
    cp $85                                        ; $5a63: $fe $85
    ld a, [c]                                     ; $5a65: $f2
    inc a                                         ; $5a66: $3c
    inc [hl]                                      ; $5a67: $34
    inc l                                         ; $5a68: $2c
    inc a                                         ; $5a69: $3c
    ld [bc], a                                    ; $5a6a: $02
    jr @+$01                                      ; $5a6b: $18 $ff

    ld de, $f606                                  ; $5a6d: $11 $06 $f6
    ld a, [bc]                                    ; $5a70: $0a
    ld a, [c]                                     ; $5a71: $f2
    ld bc, $f6e4                                  ; $5a72: $01 $e4 $f6
    ld [c], a                                     ; $5a75: $e2
    cp $ea                                        ; $5a76: $fe $ea
    dec b                                         ; $5a78: $05
    ld a, [c]                                     ; $5a79: $f2
    or $f2                                        ; $5a7a: $f6 $f2
    cp $f2                                        ; $5a7c: $fe $f2
    ld bc, $0102                                  ; $5a7e: $01 $02 $01
    ld [bc], a                                    ; $5a81: $02
    inc bc                                        ; $5a82: $03
    add h                                         ; $5a83: $84
    rlca                                          ; $5a84: $07
    dec b                                         ; $5a85: $05
    inc b                                         ; $5a86: $04
    rlca                                          ; $5a87: $07
    ld [bc], a                                    ; $5a88: $02
    inc bc                                        ; $5a89: $03
    ld [bc], a                                    ; $5a8a: $02
    ld bc, $0f02                                  ; $5a8b: $01 $02 $0f
    sub d                                         ; $5a8e: $92
    inc de                                        ; $5a8f: $13
    rra                                           ; $5a90: $1f
    dec sp                                        ; $5a91: $3b
    daa                                           ; $5a92: $27
    dec sp                                        ; $5a93: $3b
    daa                                           ; $5a94: $27
    ld b, a                                       ; $5a95: $47
    ld a, a                                       ; $5a96: $7f
    ld e, a                                       ; $5a97: $5f
    ld l, a                                       ; $5a98: $6f
    ld e, a                                       ; $5a99: $5f
    ld l, a                                       ; $5a9a: $6f
    xor a                                         ; $5a9b: $af
    rst $38                                       ; $5a9c: $ff
    db $dd                                        ; $5a9d: $dd
    cp $db                                        ; $5a9e: $fe $db
    cp h                                          ; $5aa0: $bc
    ld [bc], a                                    ; $5aa1: $02
    ld [hl], b                                    ; $5aa2: $70
    adc [hl]                                      ; $5aa3: $8e
    ld hl, sp-$78                                 ; $5aa4: $f8 $88
    ld a, h                                       ; $5aa6: $7c
    add h                                         ; $5aa7: $84
    ld a, $c6                                     ; $5aa8: $3e $c6
    rla                                           ; $5aaa: $17
    db $ed                                        ; $5aab: $ed
    adc c                                         ; $5aac: $89
    rst $38                                       ; $5aad: $ff
    halt                                          ; $5aae: $76
    cp $74                                        ; $5aaf: $fe $74
    call z, $ff02                                 ; $5ab1: $cc $02 $ff
    add l                                         ; $5ab4: $85
    cp $ff                                        ; $5ab5: $fe $ff
    cp $ff                                        ; $5ab7: $fe $ff
    cp $09                                        ; $5ab9: $fe $09
    rst $38                                       ; $5abb: $ff
    ld [bc], a                                    ; $5abc: $02
    ld b, b                                       ; $5abd: $40
    sub a                                         ; $5abe: $97
    jr nz, jr_0e9_5b21                            ; $5abf: $20 $60

    ld [hl], b                                    ; $5ac1: $70
    db $10                                        ; $5ac2: $10
    ld a, b                                       ; $5ac3: $78
    jr jr_0e9_5ace                                ; $5ac4: $18 $08

    ld a, b                                       ; $5ac6: $78
    ld l, b                                       ; $5ac7: $68
    ld e, b                                       ; $5ac8: $58
    ld a, b                                       ; $5ac9: $78
    ld c, b                                       ; $5aca: $48
    ld d, h                                       ; $5acb: $54
    ld a, h                                       ; $5acc: $7c
    db $ec                                        ; $5acd: $ec

jr_0e9_5ace:
    db $fc                                        ; $5ace: $fc
    ld l, a                                       ; $5acf: $6f
    rst $30                                       ; $5ad0: $f7
    ld a, l                                       ; $5ad1: $7d
    rst $28                                       ; $5ad2: $ef
    ld a, [hl-]                                   ; $5ad3: $3a
    cp $6e                                        ; $5ad4: $fe $6e
    ld [bc], a                                    ; $5ad6: $02
    cp $02                                        ; $5ad7: $fe $02
    or $83                                        ; $5ad9: $f6 $83
    jp c, $fc6c                                   ; $5adb: $da $6c $fc

    inc b                                         ; $5ade: $04
    nop                                           ; $5adf: $00
    add a                                         ; $5ae0: $87
    db $db                                        ; $5ae1: $db
    cp h                                          ; $5ae2: $bc
    di                                            ; $5ae3: $f3
    sbc h                                         ; $5ae4: $9c
    ei                                            ; $5ae5: $fb
    cp a                                          ; $5ae6: $bf
    sbc a                                         ; $5ae7: $9f
    ld [bc], a                                    ; $5ae8: $02
    rst $38                                       ; $5ae9: $ff
    sub c                                         ; $5aea: $91
    xor l                                         ; $5aeb: $ad
    ld e, e                                       ; $5aec: $5b
    ld l, l                                       ; $5aed: $6d
    dec a                                         ; $5aee: $3d
    ccf                                           ; $5aef: $3f
    dec c                                         ; $5af0: $0d
    rrca                                          ; $5af1: $0f
    ld a, [de]                                    ; $5af2: $1a
    dec e                                         ; $5af3: $1d
    ld d, $19                                     ; $5af4: $16 $19
    rla                                           ; $5af6: $17
    jr @+$2f                                      ; $5af7: $18 $2d

    ld a, $2f                                     ; $5af9: $3e $2f
    ld sp, $1f02                                  ; $5afb: $31 $02 $1f
    adc b                                         ; $5afe: $88
    adc h                                         ; $5aff: $8c
    ld [hl], d                                    ; $5b00: $72
    sbc [hl]                                      ; $5b01: $9e
    ld h, b                                       ; $5b02: $60
    adc $30                                       ; $5b03: $ce $30
    and [hl]                                      ; $5b05: $a6
    ld a, b                                       ; $5b06: $78
    dec b                                         ; $5b07: $05
    cp $91                                        ; $5b08: $fe $91
    db $fc                                        ; $5b0a: $fc
    cp $fc                                        ; $5b0b: $fe $fc
    db $fd                                        ; $5b0d: $fd
    rst $38                                       ; $5b0e: $ff
    db $fd                                        ; $5b0f: $fd
    rst $38                                       ; $5b10: $ff
    ld a, [$abfd]                                 ; $5b11: $fa $fd $ab
    cp h                                          ; $5b14: $bc
    xor a                                         ; $5b15: $af
    cp b                                          ; $5b16: $b8
    cp l                                          ; $5b17: $bd
    cp e                                          ; $5b18: $bb
    sbc a                                         ; $5b19: $9f
    sbc h                                         ; $5b1a: $9c
    ld [bc], a                                    ; $5b1b: $02
    adc a                                         ; $5b1c: $8f
    stop                                          ; $5b1d: $10 $00
    ld [bc], a                                    ; $5b1f: $02
    rlca                                          ; $5b20: $07

jr_0e9_5b21:
    inc b                                         ; $5b21: $04
    ld b, $88                                     ; $5b22: $06 $88
    ld [bc], a                                    ; $5b24: $02
    ld b, $02                                     ; $5b25: $06 $02
    ld b, $05                                     ; $5b27: $06 $05
    rlca                                          ; $5b29: $07
    dec b                                         ; $5b2a: $05
    inc bc                                        ; $5b2b: $03
    ld [bc], a                                    ; $5b2c: $02
    ld b, $ff                                     ; $5b2d: $06 $ff
    ld de, $f606                                  ; $5b2f: $11 $06 $f6
    ld a, [bc]                                    ; $5b32: $0a
    ld a, [c]                                     ; $5b33: $f2
    ld bc, $f6e4                                  ; $5b34: $01 $e4 $f6
    ld [c], a                                     ; $5b37: $e2
    cp $ea                                        ; $5b38: $fe $ea
    dec b                                         ; $5b3a: $05
    ld a, [c]                                     ; $5b3b: $f2
    or $f2                                        ; $5b3c: $f6 $f2
    cp $f2                                        ; $5b3e: $fe $f2
    nop                                           ; $5b40: $00
    ld [bc], a                                    ; $5b41: $02
    ld bc, $0302                                  ; $5b42: $01 $02 $03
    add h                                         ; $5b45: $84
    dec b                                         ; $5b46: $05
    rlca                                          ; $5b47: $07
    dec b                                         ; $5b48: $05
    rlca                                          ; $5b49: $07
    ld [bc], a                                    ; $5b4a: $02
    inc bc                                        ; $5b4b: $03
    ld [bc], a                                    ; $5b4c: $02
    ld bc, $0f02                                  ; $5b4d: $01 $02 $0f
    add a                                         ; $5b50: $87
    dec de                                        ; $5b51: $1b
    rla                                           ; $5b52: $17
    ccf                                           ; $5b53: $3f
    inc hl                                        ; $5b54: $23
    dec hl                                        ; $5b55: $2b
    scf                                           ; $5b56: $37
    ld c, e                                       ; $5b57: $4b
    ld [bc], a                                    ; $5b58: $02
    ld a, a                                       ; $5b59: $7f
    adc c                                         ; $5b5a: $89
    ld h, a                                       ; $5b5b: $67
    rst $10                                       ; $5b5c: $d7
    rst $38                                       ; $5b5d: $ff
    xor a                                         ; $5b5e: $af
    rst $38                                       ; $5b5f: $ff
    xor a                                         ; $5b60: $af
    sbc $eb                                       ; $5b61: $de $eb
    sbc h                                         ; $5b63: $9c
    ld [bc], a                                    ; $5b64: $02
    ld [hl], b                                    ; $5b65: $70
    adc [hl]                                      ; $5b66: $8e
    ld hl, sp-$78                                 ; $5b67: $f8 $88
    ld a, h                                       ; $5b69: $7c
    add h                                         ; $5b6a: $84
    ld a, [hl]                                    ; $5b6b: $7e
    add [hl]                                      ; $5b6c: $86
    dec hl                                        ; $5b6d: $2b
    db $dd                                        ; $5b6e: $dd
    sbc e                                         ; $5b6f: $9b
    db $fd                                        ; $5b70: $fd
    ld h, [hl]                                    ; $5b71: $66
    cp $64                                        ; $5b72: $fe $64
    call c, $ff02                                 ; $5b74: $dc $02 $ff
    add e                                         ; $5b77: $83
    cp $ff                                        ; $5b78: $fe $ff
    cp $0b                                        ; $5b7a: $fe $0b
    rst $38                                       ; $5b7c: $ff
    ld [bc], a                                    ; $5b7d: $02
    ld b, b                                       ; $5b7e: $40
    add e                                         ; $5b7f: $83
    ld h, b                                       ; $5b80: $60
    jr nz, @+$72                                  ; $5b81: $20 $70

    ld [bc], a                                    ; $5b83: $02
    db $10                                        ; $5b84: $10
    add d                                         ; $5b85: $82
    ld [hl], b                                    ; $5b86: $70
    jr jr_0e9_5b8b                                ; $5b87: $18 $02

    ld l, b                                       ; $5b89: $68
    sub l                                         ; $5b8a: $95

jr_0e9_5b8b:
    ld e, b                                       ; $5b8b: $58
    ld l, b                                       ; $5b8c: $68
    ld e, b                                       ; $5b8d: $58
    ld c, b                                       ; $5b8e: $48
    ld a, b                                       ; $5b8f: $78
    ld [hl], h                                    ; $5b90: $74
    db $fc                                        ; $5b91: $fc
    ld l, h                                       ; $5b92: $6c
    db $fc                                        ; $5b93: $fc
    ld a, h                                       ; $5b94: $7c
    db $e4                                        ; $5b95: $e4
    scf                                           ; $5b96: $37
    rst $28                                       ; $5b97: $ef
    ld a, c                                       ; $5b98: $79
    rst $38                                       ; $5b99: $ff
    or $fe                                        ; $5b9a: $f6 $fe
    ret c                                         ; $5b9c: $d8

    ld hl, sp+$70                                 ; $5b9d: $f8 $70
    ldh a, [rDIV]                                 ; $5b9f: $f0 $04
    nop                                           ; $5ba1: $00
    adc [hl]                                      ; $5ba2: $8e
    db $eb                                        ; $5ba3: $eb
    sbc h                                         ; $5ba4: $9c
    db $eb                                        ; $5ba5: $eb
    sbc h                                         ; $5ba6: $9c
    db $db                                        ; $5ba7: $db
    cp a                                          ; $5ba8: $bf
    sbc a                                         ; $5ba9: $9f
    rst $38                                       ; $5baa: $ff
    jp hl                                         ; $5bab: $e9


    cp a                                          ; $5bac: $bf
    cp e                                          ; $5bad: $bb
    db $dd                                        ; $5bae: $dd
    ld l, a                                       ; $5baf: $6f
    ld l, l                                       ; $5bb0: $6d
    ld [bc], a                                    ; $5bb1: $02
    rrca                                          ; $5bb2: $0f
    adc b                                         ; $5bb3: $88
    add hl, de                                    ; $5bb4: $19
    rra                                           ; $5bb5: $1f
    add hl, de                                    ; $5bb6: $19
    ld e, $17                                     ; $5bb7: $1e $17
    rra                                           ; $5bb9: $1f
    dec bc                                        ; $5bba: $0b
    inc c                                         ; $5bbb: $0c
    ld [bc], a                                    ; $5bbc: $02
    rlca                                          ; $5bbd: $07
    ld [bc], a                                    ; $5bbe: $02
    nop                                           ; $5bbf: $00
    adc c                                         ; $5bc0: $89
    sbc h                                         ; $5bc1: $9c
    ld h, d                                       ; $5bc2: $62
    sbc [hl]                                      ; $5bc3: $9e
    ld h, b                                       ; $5bc4: $60
    adc [hl]                                      ; $5bc5: $8e
    ld [hl], b                                    ; $5bc6: $70
    ld h, [hl]                                    ; $5bc7: $66
    ld hl, sp-$04                                 ; $5bc8: $f8 $fc
    inc b                                         ; $5bca: $04
    cp $91                                        ; $5bcb: $fe $91
    db $fc                                        ; $5bcd: $fc
    ld a, [$fdfc]                                 ; $5bce: $fa $fc $fd
    ei                                            ; $5bd1: $fb
    ld sp, hl                                     ; $5bd2: $f9
    rst $38                                       ; $5bd3: $ff
    cp $f9                                        ; $5bd4: $fe $f9
    rst $10                                       ; $5bd6: $d7
    ld hl, sp+$77                                 ; $5bd7: $f8 $77
    ld hl, sp+$52                                 ; $5bd9: $f8 $52
    rst $18                                       ; $5bdb: $df
    sub a                                         ; $5bdc: $97
    sbc b                                         ; $5bdd: $98
    ld [bc], a                                    ; $5bde: $02
    rra                                           ; $5bdf: $1f
    stop                                          ; $5be0: $10 $00
    inc b                                         ; $5be2: $04
    inc bc                                        ; $5be3: $03
    ld [bc], a                                    ; $5be4: $02
    ld [bc], a                                    ; $5be5: $02
    ld [bc], a                                    ; $5be6: $02
    inc bc                                        ; $5be7: $03
    add l                                         ; $5be8: $85
    ld bc, $0103                                  ; $5be9: $01 $03 $01
    inc bc                                        ; $5bec: $03
    ld bc, $0303                                  ; $5bed: $01 $03 $03
    rst $38                                       ; $5bf0: $ff
    ld de, $f606                                  ; $5bf1: $11 $06 $f6
    ld a, [bc]                                    ; $5bf4: $0a
    ld a, [c]                                     ; $5bf5: $f2
    ld bc, $f6e5                                  ; $5bf6: $01 $e5 $f6
    db $e3                                        ; $5bf9: $e3
    cp $eb                                        ; $5bfa: $fe $eb
    dec b                                         ; $5bfc: $05
    di                                            ; $5bfd: $f3
    or $f3                                        ; $5bfe: $f6 $f3
    cp $f3                                        ; $5c00: $fe $f3
    nop                                           ; $5c02: $00
    ld [bc], a                                    ; $5c03: $02
    ld bc, $0302                                  ; $5c04: $01 $02 $03
    add h                                         ; $5c07: $84
    dec b                                         ; $5c08: $05
    rlca                                          ; $5c09: $07
    dec b                                         ; $5c0a: $05
    rlca                                          ; $5c0b: $07
    ld [bc], a                                    ; $5c0c: $02
    inc bc                                        ; $5c0d: $03
    ld [bc], a                                    ; $5c0e: $02
    ld bc, $0f02                                  ; $5c0f: $01 $02 $0f
    add a                                         ; $5c12: $87
    dec de                                        ; $5c13: $1b
    rla                                           ; $5c14: $17
    dec sp                                        ; $5c15: $3b
    daa                                           ; $5c16: $27
    dec hl                                        ; $5c17: $2b
    scf                                           ; $5c18: $37
    ld c, e                                       ; $5c19: $4b
    ld [bc], a                                    ; $5c1a: $02
    ld a, a                                       ; $5c1b: $7f
    adc c                                         ; $5c1c: $89
    ld h, a                                       ; $5c1d: $67
    ld d, a                                       ; $5c1e: $57
    ld a, a                                       ; $5c1f: $7f
    xor a                                         ; $5c20: $af
    rst $38                                       ; $5c21: $ff
    xor a                                         ; $5c22: $af
    sbc $eb                                       ; $5c23: $de $eb
    sbc h                                         ; $5c25: $9c
    ld [bc], a                                    ; $5c26: $02
    ld [hl], b                                    ; $5c27: $70
    adc [hl]                                      ; $5c28: $8e
    ld hl, sp-$78                                 ; $5c29: $f8 $88
    ld a, h                                       ; $5c2b: $7c
    add h                                         ; $5c2c: $84
    ld a, [hl]                                    ; $5c2d: $7e
    add [hl]                                      ; $5c2e: $86
    dec hl                                        ; $5c2f: $2b
    db $dd                                        ; $5c30: $dd
    sbc e                                         ; $5c31: $9b
    db $fd                                        ; $5c32: $fd
    ld h, [hl]                                    ; $5c33: $66
    cp $64                                        ; $5c34: $fe $64
    call c, $ff02                                 ; $5c36: $dc $02 $ff
    add e                                         ; $5c39: $83
    cp $ff                                        ; $5c3a: $fe $ff
    cp $0b                                        ; $5c3c: $fe $0b
    rst $38                                       ; $5c3e: $ff
    ld [bc], a                                    ; $5c3f: $02
    ld b, b                                       ; $5c40: $40
    sbc h                                         ; $5c41: $9c
    ld h, b                                       ; $5c42: $60
    jr nz, jr_0e9_5cb5                            ; $5c43: $20 $70

    db $10                                        ; $5c45: $10
    jr nc, jr_0e9_5c98                            ; $5c46: $30 $50

    ld [$6878], sp                                ; $5c48: $08 $78 $68
    ld e, b                                       ; $5c4b: $58
    ld l, b                                       ; $5c4c: $68
    ld e, b                                       ; $5c4d: $58
    ld d, h                                       ; $5c4e: $54
    ld a, h                                       ; $5c4f: $7c
    db $ec                                        ; $5c50: $ec
    db $fc                                        ; $5c51: $fc
    ld l, h                                       ; $5c52: $6c
    db $fc                                        ; $5c53: $fc
    ld l, h                                       ; $5c54: $6c
    db $f4                                        ; $5c55: $f4
    ld [hl], $ee                                  ; $5c56: $36 $ee
    ld sp, hl                                     ; $5c58: $f9
    rst $38                                       ; $5c59: $ff
    or $fe                                        ; $5c5a: $f6 $fe
    ld e, h                                       ; $5c5c: $5c
    db $ec                                        ; $5c5d: $ec
    ld [bc], a                                    ; $5c5e: $02
    ld hl, sp+$04                                 ; $5c5f: $f8 $04
    nop                                           ; $5c61: $00
    adc c                                         ; $5c62: $89
    db $eb                                        ; $5c63: $eb
    sbc h                                         ; $5c64: $9c
    db $db                                        ; $5c65: $db
    cp a                                          ; $5c66: $bf
    rst $18                                       ; $5c67: $df
    cp a                                          ; $5c68: $bf
    sbc a                                         ; $5c69: $9f
    rst $38                                       ; $5c6a: $ff
    db $eb                                        ; $5c6b: $eb
    ld [bc], a                                    ; $5c6c: $02
    cp l                                          ; $5c6d: $bd
    adc e                                         ; $5c6e: $8b
    rst $08                                       ; $5c6f: $cf
    ld a, l                                       ; $5c70: $7d
    ld a, a                                       ; $5c71: $7f
    dec bc                                        ; $5c72: $0b
    inc c                                         ; $5c73: $0c
    dec bc                                        ; $5c74: $0b
    inc c                                         ; $5c75: $0c
    ld d, $1f                                     ; $5c76: $16 $1f
    rla                                           ; $5c78: $17
    jr jr_0e9_5c7d                                ; $5c79: $18 $02

    rra                                           ; $5c7b: $1f
    inc b                                         ; $5c7c: $04

jr_0e9_5c7d:
    nop                                           ; $5c7d: $00
    add [hl]                                      ; $5c7e: $86
    sbc h                                         ; $5c7f: $9c
    ld h, d                                       ; $5c80: $62
    sbc [hl]                                      ; $5c81: $9e
    ld h, b                                       ; $5c82: $60
    ld b, [hl]                                    ; $5c83: $46
    ld hl, sp+$07                                 ; $5c84: $f8 $07
    cp $02                                        ; $5c86: $fe $02
    db $fc                                        ; $5c88: $fc
    add d                                         ; $5c89: $82
    cp $f8                                        ; $5c8a: $fe $f8
    ld [bc], a                                    ; $5c8c: $02
    rst $38                                       ; $5c8d: $ff
    adc c                                         ; $5c8e: $89
    ld hl, sp-$11                                 ; $5c8f: $f8 $ef
    ld a, b                                       ; $5c91: $78
    rst $30                                       ; $5c92: $f7
    ld a, b                                       ; $5c93: $78
    rst $10                                       ; $5c94: $d7
    rst $18                                       ; $5c95: $df
    ret c                                         ; $5c96: $d8

    rst $18                                       ; $5c97: $df

jr_0e9_5c98:
    ld [bc], a                                    ; $5c98: $02
    rrca                                          ; $5c99: $0f
    ld [de], a                                    ; $5c9a: $12
    nop                                           ; $5c9b: $00
    ld [bc], a                                    ; $5c9c: $02
    inc bc                                        ; $5c9d: $03
    ld [bc], a                                    ; $5c9e: $02
    ld [bc], a                                    ; $5c9f: $02
    add a                                         ; $5ca0: $87
    ld bc, $0103                                  ; $5ca1: $01 $03 $01
    inc bc                                        ; $5ca4: $03
    ld bc, $0103                                  ; $5ca5: $01 $03 $01
    inc bc                                        ; $5ca8: $03
    inc bc                                        ; $5ca9: $03
    ld [bc], a                                    ; $5caa: $02
    nop                                           ; $5cab: $00
    rst $38                                       ; $5cac: $ff
    ld de, $f606                                  ; $5cad: $11 $06 $f6
    ld a, [bc]                                    ; $5cb0: $0a
    ld a, [c]                                     ; $5cb1: $f2
    ld bc, $f6e4                                  ; $5cb2: $01 $e4 $f6

jr_0e9_5cb5:
    ld [c], a                                     ; $5cb5: $e2
    cp $ea                                        ; $5cb6: $fe $ea
    dec b                                         ; $5cb8: $05
    ld a, [c]                                     ; $5cb9: $f2
    or $f2                                        ; $5cba: $f6 $f2
    cp $f2                                        ; $5cbc: $fe $f2
    ld bc, $0102                                  ; $5cbe: $01 $02 $01
    ld [bc], a                                    ; $5cc1: $02
    inc bc                                        ; $5cc2: $03
    add h                                         ; $5cc3: $84
    rlca                                          ; $5cc4: $07
    dec b                                         ; $5cc5: $05
    inc b                                         ; $5cc6: $04
    rlca                                          ; $5cc7: $07
    ld [bc], a                                    ; $5cc8: $02
    inc bc                                        ; $5cc9: $03
    ld [bc], a                                    ; $5cca: $02
    ld bc, $0f02                                  ; $5ccb: $01 $02 $0f
    sub d                                         ; $5cce: $92
    inc de                                        ; $5ccf: $13
    rra                                           ; $5cd0: $1f
    dec sp                                        ; $5cd1: $3b
    daa                                           ; $5cd2: $27
    dec sp                                        ; $5cd3: $3b
    daa                                           ; $5cd4: $27
    ld b, a                                       ; $5cd5: $47
    ld a, a                                       ; $5cd6: $7f
    ld e, a                                       ; $5cd7: $5f
    ld l, a                                       ; $5cd8: $6f
    ld e, a                                       ; $5cd9: $5f
    ld l, a                                       ; $5cda: $6f
    xor a                                         ; $5cdb: $af
    rst $38                                       ; $5cdc: $ff
    db $dd                                        ; $5cdd: $dd
    cp $db                                        ; $5cde: $fe $db
    cp h                                          ; $5ce0: $bc
    ld [bc], a                                    ; $5ce1: $02
    ld [hl], b                                    ; $5ce2: $70
    adc [hl]                                      ; $5ce3: $8e
    ld hl, sp-$78                                 ; $5ce4: $f8 $88
    ld a, h                                       ; $5ce6: $7c
    add h                                         ; $5ce7: $84
    ld a, $c6                                     ; $5ce8: $3e $c6
    rla                                           ; $5cea: $17
    db $ed                                        ; $5ceb: $ed
    adc c                                         ; $5cec: $89
    rst $38                                       ; $5ced: $ff
    halt                                          ; $5cee: $76
    cp $74                                        ; $5cef: $fe $74
    call z, $ff02                                 ; $5cf1: $cc $02 $ff
    add l                                         ; $5cf4: $85
    cp $ff                                        ; $5cf5: $fe $ff
    cp $ff                                        ; $5cf7: $fe $ff
    cp $09                                        ; $5cf9: $fe $09
    rst $38                                       ; $5cfb: $ff
    ld [bc], a                                    ; $5cfc: $02
    ld b, b                                       ; $5cfd: $40
    sub a                                         ; $5cfe: $97
    jr nz, jr_0e9_5d61                            ; $5cff: $20 $60

    ld [hl], b                                    ; $5d01: $70
    db $10                                        ; $5d02: $10
    ld a, b                                       ; $5d03: $78
    jr jr_0e9_5d0e                                ; $5d04: $18 $08

    ld a, b                                       ; $5d06: $78
    ld l, b                                       ; $5d07: $68
    ld e, b                                       ; $5d08: $58
    ld a, b                                       ; $5d09: $78
    ld c, b                                       ; $5d0a: $48
    ld d, h                                       ; $5d0b: $54
    ld a, h                                       ; $5d0c: $7c
    db $ec                                        ; $5d0d: $ec

jr_0e9_5d0e:
    db $fc                                        ; $5d0e: $fc
    ld l, a                                       ; $5d0f: $6f
    rst $30                                       ; $5d10: $f7
    ld a, l                                       ; $5d11: $7d
    rst $28                                       ; $5d12: $ef
    ld a, [hl-]                                   ; $5d13: $3a
    cp $6e                                        ; $5d14: $fe $6e
    ld [bc], a                                    ; $5d16: $02
    cp $85                                        ; $5d17: $fe $85
    or $76                                        ; $5d19: $f6 $76
    jp c, $fc6c                                   ; $5d1b: $da $6c $fc

    inc b                                         ; $5d1e: $04
    nop                                           ; $5d1f: $00
    add a                                         ; $5d20: $87
    db $db                                        ; $5d21: $db
    cp h                                          ; $5d22: $bc
    di                                            ; $5d23: $f3
    sbc h                                         ; $5d24: $9c
    ei                                            ; $5d25: $fb
    cp a                                          ; $5d26: $bf
    sbc a                                         ; $5d27: $9f
    ld [bc], a                                    ; $5d28: $02
    rst $38                                       ; $5d29: $ff
    sub c                                         ; $5d2a: $91
    xor l                                         ; $5d2b: $ad
    ld e, e                                       ; $5d2c: $5b
    ld l, l                                       ; $5d2d: $6d
    inc a                                         ; $5d2e: $3c
    ccf                                           ; $5d2f: $3f
    inc e                                         ; $5d30: $1c
    rra                                           ; $5d31: $1f
    dec c                                         ; $5d32: $0d
    ld c, $0b                                     ; $5d33: $0e $0b
    inc c                                         ; $5d35: $0c
    dec bc                                        ; $5d36: $0b
    inc c                                         ; $5d37: $0c
    ld d, $1f                                     ; $5d38: $16 $1f
    rla                                           ; $5d3a: $17
    jr jr_0e9_5d3f                                ; $5d3b: $18 $02

    rrca                                          ; $5d3d: $0f
    adc b                                         ; $5d3e: $88

jr_0e9_5d3f:
    adc h                                         ; $5d3f: $8c
    ld [hl], d                                    ; $5d40: $72
    sbc [hl]                                      ; $5d41: $9e
    ld h, b                                       ; $5d42: $60
    adc $30                                       ; $5d43: $ce $30
    and [hl]                                      ; $5d45: $a6
    ld a, b                                       ; $5d46: $78
    dec b                                         ; $5d47: $05
    cp $84                                        ; $5d48: $fe $84
    db $fc                                        ; $5d4a: $fc
    cp $fc                                        ; $5d4b: $fe $fc
    db $fd                                        ; $5d4d: $fd
    inc bc                                        ; $5d4e: $03
    rst $38                                       ; $5d4f: $ff
    adc b                                         ; $5d50: $88
    ld a, l                                       ; $5d51: $7d
    cp $7b                                        ; $5d52: $fe $7b
    db $fc                                        ; $5d54: $fc
    db $eb                                        ; $5d55: $eb
    ld l, a                                       ; $5d56: $6f
    db $ec                                        ; $5d57: $ec
    ld l, a                                       ; $5d58: $6f
    ld [bc], a                                    ; $5d59: $02
    rst $00                                       ; $5d5a: $c7
    ld [bc], a                                    ; $5d5b: $02
    ret nz                                        ; $5d5c: $c0

    stop                                          ; $5d5d: $10 $00
    ld [bc], a                                    ; $5d5f: $02
    rlca                                          ; $5d60: $07

jr_0e9_5d61:
    ld [bc], a                                    ; $5d61: $02
    ld b, $88                                     ; $5d62: $06 $88
    ld [bc], a                                    ; $5d64: $02
    ld b, $01                                     ; $5d65: $06 $01
    rlca                                          ; $5d67: $07
    dec b                                         ; $5d68: $05
    rlca                                          ; $5d69: $07
    inc bc                                        ; $5d6a: $03
    rlca                                          ; $5d6b: $07
    ld [bc], a                                    ; $5d6c: $02
    ld b, $02                                     ; $5d6d: $06 $02
    nop                                           ; $5d6f: $00
    rst $38                                       ; $5d70: $ff
    ld de, $f606                                  ; $5d71: $11 $06 $f6
    ld a, [bc]                                    ; $5d74: $0a
    ld a, [c]                                     ; $5d75: $f2
    ld bc, $f7e3                                  ; $5d76: $01 $e3 $f7
    ld [c], a                                     ; $5d79: $e2
    rst $38                                       ; $5d7a: $ff
    db $eb                                        ; $5d7b: $eb
    inc b                                         ; $5d7c: $04
    ld a, [c]                                     ; $5d7d: $f2
    or $f2                                        ; $5d7e: $f6 $f2
    cp $f2                                        ; $5d80: $fe $f2
    nop                                           ; $5d82: $00
    ld [bc], a                                    ; $5d83: $02
    ld bc, $0288                                  ; $5d84: $01 $88 $02
    inc bc                                        ; $5d87: $03
    ld b, $07                                     ; $5d88: $06 $07
    dec c                                         ; $5d8a: $0d
    dec bc                                        ; $5d8b: $0b
    dec c                                         ; $5d8c: $0d
    dec bc                                        ; $5d8d: $0b
    ld [bc], a                                    ; $5d8e: $02
    rlca                                          ; $5d8f: $07
    add d                                         ; $5d90: $82
    ld [bc], a                                    ; $5d91: $02
    inc bc                                        ; $5d92: $03
    ld [bc], a                                    ; $5d93: $02
    rra                                           ; $5d94: $1f
    add e                                         ; $5d95: $83
    scf                                           ; $5d96: $37
    cpl                                           ; $5d97: $2f
    ld [hl], a                                    ; $5d98: $77
    ld [bc], a                                    ; $5d99: $02
    ld c, a                                       ; $5d9a: $4f
    add d                                         ; $5d9b: $82
    ld a, a                                       ; $5d9c: $7f
    rst $08                                       ; $5d9d: $cf
    ld [bc], a                                    ; $5d9e: $02
    cp a                                          ; $5d9f: $bf
    add a                                         ; $5da0: $87
    rst $18                                       ; $5da1: $df
    cp a                                          ; $5da2: $bf
    rst $18                                       ; $5da3: $df
    sbc a                                         ; $5da4: $9f
    rst $38                                       ; $5da5: $ff
    ld [hl], e                                    ; $5da6: $73
    db $fc                                        ; $5da7: $fc
    ld [bc], a                                    ; $5da8: $02
    ldh [$8e], a                                  ; $5da9: $e0 $8e
    ldh a, [rNR10]                                ; $5dab: $f0 $10
    ld hl, sp+$08                                 ; $5dad: $f8 $08
    inc a                                         ; $5daf: $3c
    call z, $fe0a                                 ; $5db0: $cc $0a $fe
    sbc d                                         ; $5db3: $9a
    cp $6c                                        ; $5db4: $fe $6c
    db $fc                                        ; $5db6: $fc
    ld hl, sp-$78                                 ; $5db7: $f8 $88
    ld [bc], a                                    ; $5db9: $02
    rst $38                                       ; $5dba: $ff
    add a                                         ; $5dbb: $87
    db $fd                                        ; $5dbc: $fd
    cp $ff                                        ; $5dbd: $fe $ff
    db $fc                                        ; $5dbf: $fc
    db $fd                                        ; $5dc0: $fd
    cp $fd                                        ; $5dc1: $fe $fd
    ld [bc], a                                    ; $5dc3: $02
    rst $38                                       ; $5dc4: $ff

jr_0e9_5dc5:
    ld [bc], a                                    ; $5dc5: $02
    cp $03                                        ; $5dc6: $fe $03
    rst $38                                       ; $5dc8: $ff
    ld [bc], a                                    ; $5dc9: $02
    db $10                                        ; $5dca: $10
    add c                                         ; $5dcb: $81
    jr @+$04                                      ; $5dcc: $18 $02

    ld [$1882], sp                                ; $5dce: $08 $82 $18
    inc b                                         ; $5dd1: $04
    ld [bc], a                                    ; $5dd2: $02
    inc e                                         ; $5dd3: $1c
    sub a                                         ; $5dd4: $97
    inc c                                         ; $5dd5: $0c
    ld d, $1e                                     ; $5dd6: $16 $1e
    ld a, [bc]                                    ; $5dd8: $0a
    ld e, $eb                                     ; $5dd9: $1e $eb
    rst $30                                       ; $5ddb: $f7
    xor l                                         ; $5ddc: $ad
    ld [hl], a                                    ; $5ddd: $77
    xor l                                         ; $5dde: $ad
    ld [hl], a                                    ; $5ddf: $77
    xor d                                         ; $5de0: $aa
    ld a, [hl]                                    ; $5de1: $7e
    cp d                                          ; $5de2: $ba
    cp $ff                                        ; $5de3: $fe $ff
    db $ed                                        ; $5de5: $ed
    ccf                                           ; $5de6: $3f
    ld sp, hl                                     ; $5de7: $f9
    or [hl]                                       ; $5de8: $b6
    ld a, [hl]                                    ; $5de9: $7e
    ld hl, sp+$78                                 ; $5dea: $f8 $78
    ld [bc], a                                    ; $5dec: $02
    add b                                         ; $5ded: $80
    sbc h                                         ; $5dee: $9c
    db $db                                        ; $5def: $db
    db $fc                                        ; $5df0: $fc
    ei                                            ; $5df1: $fb
    sbc h                                         ; $5df2: $9c
    or e                                          ; $5df3: $b3
    call c, Call_0e9_7f59                         ; $5df4: $dc $59 $7f
    ld e, a                                       ; $5df7: $5f
    ld a, a                                       ; $5df8: $7f
    cpl                                           ; $5df9: $2f
    dec a                                         ; $5dfa: $3d
    ld a, [hl-]                                   ; $5dfb: $3a
    dec a                                         ; $5dfc: $3d
    dec c                                         ; $5dfd: $0d
    ld c, $0c                                     ; $5dfe: $0e $0c
    rrca                                          ; $5e00: $0f
    dec bc                                        ; $5e01: $0b
    inc c                                         ; $5e02: $0c
    rra                                           ; $5e03: $1f
    jr jr_0e9_5e1d                                ; $5e04: $18 $17

    jr jr_0e9_5e1a                                ; $5e06: $18 $12

    rra                                           ; $5e08: $1f
    rla                                           ; $5e09: $17
    jr jr_0e9_5e0e                                ; $5e0a: $18 $02

    rra                                           ; $5e0c: $1f
    adc b                                         ; $5e0d: $88

jr_0e9_5e0e:
    inc c                                         ; $5e0e: $0c
    ld [hl], b                                    ; $5e0f: $70
    call c, $cc20                                 ; $5e10: $dc $20 $cc
    jr nc, jr_0e9_5dc5                            ; $5e13: $30 $b0

    ld a, h                                       ; $5e15: $7c
    ld a, [bc]                                    ; $5e16: $0a
    db $fc                                        ; $5e17: $fc
    ld [bc], a                                    ; $5e18: $02
    rst $38                                       ; $5e19: $ff

jr_0e9_5e1a:
    adc d                                         ; $5e1a: $8a
    db $fc                                        ; $5e1b: $fc
    rst $38                                       ; $5e1c: $ff

jr_0e9_5e1d:
    ld a, h                                       ; $5e1d: $7c
    ei                                            ; $5e1e: $fb
    ld [hl], a                                    ; $5e1f: $77
    rst $38                                       ; $5e20: $ff
    ld d, [hl]                                    ; $5e21: $56
    reti                                          ; $5e22: $d9


    ld c, a                                       ; $5e23: $4f
    rst $08                                       ; $5e24: $cf
    ld [bc], a                                    ; $5e25: $02
    ret nz                                        ; $5e26: $c0

    ld [de], a                                    ; $5e27: $12
    nop                                           ; $5e28: $00
    ld b, $03                                     ; $5e29: $06 $03
    add d                                         ; $5e2b: $82
    ld bc, $0203                                  ; $5e2c: $01 $03 $02
    ld [bc], a                                    ; $5e2f: $02
    inc b                                         ; $5e30: $04
    nop                                           ; $5e31: $00
    rst $38                                       ; $5e32: $ff
    ld de, $f606                                  ; $5e33: $11 $06 $f6
    ld a, [bc]                                    ; $5e36: $0a
    ld a, [c]                                     ; $5e37: $f2
    ld bc, $f6e5                                  ; $5e38: $01 $e5 $f6
    db $e3                                        ; $5e3b: $e3
    cp $eb                                        ; $5e3c: $fe $eb
    inc b                                         ; $5e3e: $04
    di                                            ; $5e3f: $f3
    or $f3                                        ; $5e40: $f6 $f3
    cp $f3                                        ; $5e42: $fe $f3
    ld bc, $0102                                  ; $5e44: $01 $02 $01
    ld [bc], a                                    ; $5e47: $02
    inc bc                                        ; $5e48: $03
    add h                                         ; $5e49: $84
    ld b, $05                                     ; $5e4a: $06 $05
    ld b, $05                                     ; $5e4c: $06 $05
    ld [bc], a                                    ; $5e4e: $02
    inc bc                                        ; $5e4f: $03
    ld [bc], a                                    ; $5e50: $02
    ld bc, $0f02                                  ; $5e51: $01 $02 $0f
    sub d                                         ; $5e54: $92
    dec de                                        ; $5e55: $1b
    rla                                           ; $5e56: $17
    dec sp                                        ; $5e57: $3b
    daa                                           ; $5e58: $27
    scf                                           ; $5e59: $37
    cpl                                           ; $5e5a: $2f
    ld b, a                                       ; $5e5b: $47

jr_0e9_5e5c:
    ld a, a                                       ; $5e5c: $7f
    ld e, a                                       ; $5e5d: $5f
    ld l, a                                       ; $5e5e: $6f
    ld e, a                                       ; $5e5f: $5f
    ld l, a                                       ; $5e60: $6f
    xor a                                         ; $5e61: $af
    rst $38                                       ; $5e62: $ff
    db $dd                                        ; $5e63: $dd
    cp $db                                        ; $5e64: $fe $db
    db $fc                                        ; $5e66: $fc
    ld [bc], a                                    ; $5e67: $02
    ld [hl], b                                    ; $5e68: $70
    adc [hl]                                      ; $5e69: $8e
    ld hl, sp-$78                                 ; $5e6a: $f8 $88
    ld a, h                                       ; $5e6c: $7c
    add h                                         ; $5e6d: $84
    ld e, $e6                                     ; $5e6e: $1e $e6
    add l                                         ; $5e70: $85
    rst $38                                       ; $5e71: $ff
    call $b6ff                                    ; $5e72: $cd $ff $b6
    cp $7c                                        ; $5e75: $fe $7c
    call nz, $ff02                                ; $5e77: $c4 $02 $ff
    add a                                         ; $5e7a: $87
    cp $ff                                        ; $5e7b: $fe $ff
    cp $ff                                        ; $5e7d: $fe $ff
    cp $ff                                        ; $5e7f: $fe $ff
    cp $07                                        ; $5e81: $fe $07
    rst $38                                       ; $5e83: $ff
    ld [bc], a                                    ; $5e84: $02
    jr nz, jr_0e9_5e0e                            ; $5e85: $20 $87

    jr nc, jr_0e9_5e99                            ; $5e87: $30 $10

    jr c, jr_0e9_5e93                             ; $5e89: $38 $08

    jr z, jr_0e9_5ea5                             ; $5e8b: $28 $18

    inc h                                         ; $5e8d: $24
    ld [bc], a                                    ; $5e8e: $02
    inc a                                         ; $5e8f: $3c
    sub l                                         ; $5e90: $95
    inc c                                         ; $5e91: $0c
    inc d                                         ; $5e92: $14

jr_0e9_5e93:
    inc a                                         ; $5e93: $3c
    ld a, [hl+]                                   ; $5e94: $2a
    ld a, $ea                                     ; $5e95: $3e $ea
    or $af                                        ; $5e97: $f6 $af

jr_0e9_5e99:
    ld [hl], a                                    ; $5e99: $77
    xor l                                         ; $5e9a: $ad
    ld [hl], a                                    ; $5e9b: $77
    xor c                                         ; $5e9c: $a9
    rst $38                                       ; $5e9d: $ff
    ld a, [$fffe]                                 ; $5e9e: $fa $fe $ff
    db $ed                                        ; $5ea1: $ed
    cp e                                          ; $5ea2: $bb
    ld a, l                                       ; $5ea3: $7d
    halt                                          ; $5ea4: $76

jr_0e9_5ea5:
    cp $04                                        ; $5ea5: $fe $04
    nop                                           ; $5ea7: $00
    adc c                                         ; $5ea8: $89
    db $db                                        ; $5ea9: $db
    cp h                                          ; $5eaa: $bc
    di                                            ; $5eab: $f3
    sbc a                                         ; $5eac: $9f
    cp a                                          ; $5ead: $bf
    rst $18                                       ; $5eae: $df
    ld e, a                                       ; $5eaf: $5f
    ld a, a                                       ; $5eb0: $7f
    dec hl                                        ; $5eb1: $2b
    ld [bc], a                                    ; $5eb2: $02
    dec a                                         ; $5eb3: $3d
    add d                                         ; $5eb4: $82
    ccf                                           ; $5eb5: $3f
    ld [$0f02], sp                                ; $5eb6: $08 $02 $0f
    adc b                                         ; $5eb9: $88
    ld [$1817], sp                                ; $5eba: $08 $17 $18
    rla                                           ; $5ebd: $17
    jr jr_0e9_5ed7                                ; $5ebe: $18 $17

    rra                                           ; $5ec0: $1f
    db $10                                        ; $5ec1: $10
    inc bc                                        ; $5ec2: $03
    rra                                           ; $5ec3: $1f
    ld [bc], a                                    ; $5ec4: $02
    nop                                           ; $5ec5: $00
    add [hl]                                      ; $5ec6: $86
    call z, $cc30                                 ; $5ec7: $cc $30 $cc
    jr nc, jr_0e9_5e5c                            ; $5eca: $30 $90

    ld a, h                                       ; $5ecc: $7c
    ld a, [bc]                                    ; $5ecd: $0a
    db $fc                                        ; $5ece: $fc
    adc d                                         ; $5ecf: $8a
    db $fd                                        ; $5ed0: $fd
    rst $38                                       ; $5ed1: $ff
    cp $f9                                        ; $5ed2: $fe $f9
    cp [hl]                                       ; $5ed4: $be
    or c                                          ; $5ed5: $b1
    ld a, e                                       ; $5ed6: $7b

jr_0e9_5ed7:
    rst $30                                       ; $5ed7: $f7
    ld e, a                                       ; $5ed8: $5f
    ret c                                         ; $5ed9: $d8

    ld [bc], a                                    ; $5eda: $02
    rst $18                                       ; $5edb: $df
    ld [bc], a                                    ; $5edc: $02
    add b                                         ; $5edd: $80
    ld [de], a                                    ; $5ede: $12
    nop                                           ; $5edf: $00
    ld [bc], a                                    ; $5ee0: $02
    rlca                                          ; $5ee1: $07
    inc b                                         ; $5ee2: $04
    ld b, $83                                     ; $5ee3: $06 $83
    ld [bc], a                                    ; $5ee5: $02
    ld b, $02                                     ; $5ee6: $06 $02
    inc bc                                        ; $5ee8: $03
    ld b, $04                                     ; $5ee9: $06 $04
    nop                                           ; $5eeb: $00
    rst $38                                       ; $5eec: $ff
    ld de, $f606                                  ; $5eed: $11 $06 $f6
    ld a, [bc]                                    ; $5ef0: $0a
    ld a, [c]                                     ; $5ef1: $f2
    ld bc, $f6e4                                  ; $5ef2: $01 $e4 $f6
    ld [c], a                                     ; $5ef5: $e2
    cp $ea                                        ; $5ef6: $fe $ea
    dec b                                         ; $5ef8: $05
    ld a, [c]                                     ; $5ef9: $f2
    or $f2                                        ; $5efa: $f6 $f2
    cp $f2                                        ; $5efc: $fe $f2
    ld bc, $0102                                  ; $5efe: $01 $02 $01
    ld [bc], a                                    ; $5f01: $02
    inc bc                                        ; $5f02: $03
    add h                                         ; $5f03: $84
    rlca                                          ; $5f04: $07
    dec b                                         ; $5f05: $05
    inc b                                         ; $5f06: $04
    rlca                                          ; $5f07: $07
    ld [bc], a                                    ; $5f08: $02
    inc bc                                        ; $5f09: $03
    ld [bc], a                                    ; $5f0a: $02
    ld bc, $0f02                                  ; $5f0b: $01 $02 $0f
    sub d                                         ; $5f0e: $92
    inc de                                        ; $5f0f: $13
    rra                                           ; $5f10: $1f
    dec sp                                        ; $5f11: $3b
    daa                                           ; $5f12: $27
    dec sp                                        ; $5f13: $3b
    daa                                           ; $5f14: $27
    ld b, a                                       ; $5f15: $47
    ld a, a                                       ; $5f16: $7f
    ld e, a                                       ; $5f17: $5f
    ld l, a                                       ; $5f18: $6f
    ld e, a                                       ; $5f19: $5f
    ld l, a                                       ; $5f1a: $6f
    xor a                                         ; $5f1b: $af
    rst $38                                       ; $5f1c: $ff
    db $dd                                        ; $5f1d: $dd
    cp $db                                        ; $5f1e: $fe $db
    cp h                                          ; $5f20: $bc
    ld [bc], a                                    ; $5f21: $02
    ld [hl], b                                    ; $5f22: $70
    adc [hl]                                      ; $5f23: $8e
    ld hl, sp-$78                                 ; $5f24: $f8 $88
    ld a, h                                       ; $5f26: $7c
    add h                                         ; $5f27: $84
    ld a, $c6                                     ; $5f28: $3e $c6
    rla                                           ; $5f2a: $17
    db $ed                                        ; $5f2b: $ed
    adc c                                         ; $5f2c: $89
    rst $38                                       ; $5f2d: $ff
    halt                                          ; $5f2e: $76
    cp $74                                        ; $5f2f: $fe $74
    call z, $ff02                                 ; $5f31: $cc $02 $ff
    add l                                         ; $5f34: $85
    cp $ff                                        ; $5f35: $fe $ff
    cp $ff                                        ; $5f37: $fe $ff
    cp $09                                        ; $5f39: $fe $09
    rst $38                                       ; $5f3b: $ff
    ld [bc], a                                    ; $5f3c: $02
    ld b, b                                       ; $5f3d: $40
    sub a                                         ; $5f3e: $97
    jr nz, jr_0e9_5fa1                            ; $5f3f: $20 $60

    ld [hl], b                                    ; $5f41: $70
    db $10                                        ; $5f42: $10
    ld a, b                                       ; $5f43: $78
    jr jr_0e9_5f4e                                ; $5f44: $18 $08

    ld a, b                                       ; $5f46: $78
    ld l, b                                       ; $5f47: $68
    ld e, b                                       ; $5f48: $58
    ld a, b                                       ; $5f49: $78
    ld c, b                                       ; $5f4a: $48
    ld d, h                                       ; $5f4b: $54
    ld a, h                                       ; $5f4c: $7c
    db $ec                                        ; $5f4d: $ec

jr_0e9_5f4e:
    db $fc                                        ; $5f4e: $fc
    ld l, a                                       ; $5f4f: $6f
    rst $30                                       ; $5f50: $f7
    ld a, l                                       ; $5f51: $7d
    rst $28                                       ; $5f52: $ef
    ld a, [hl-]                                   ; $5f53: $3a
    cp $6e                                        ; $5f54: $fe $6e
    ld [bc], a                                    ; $5f56: $02
    cp $02                                        ; $5f57: $fe $02
    or $83                                        ; $5f59: $f6 $83
    jp c, $fc6c                                   ; $5f5b: $da $6c $fc

    inc b                                         ; $5f5e: $04
    nop                                           ; $5f5f: $00
    adc [hl]                                      ; $5f60: $8e
    db $db                                        ; $5f61: $db
    cp h                                          ; $5f62: $bc
    di                                            ; $5f63: $f3
    sbc h                                         ; $5f64: $9c
    ei                                            ; $5f65: $fb
    cp a                                          ; $5f66: $bf
    sbc a                                         ; $5f67: $9f
    rst $38                                       ; $5f68: $ff
    ei                                            ; $5f69: $fb
    xor l                                         ; $5f6a: $ad
    ld e, e                                       ; $5f6b: $5b
    ld l, l                                       ; $5f6c: $6d
    dec a                                         ; $5f6d: $3d
    ccf                                           ; $5f6e: $3f
    ld [bc], a                                    ; $5f6f: $02
    rra                                           ; $5f70: $1f
    adc b                                         ; $5f71: $88
    dec d                                         ; $5f72: $15
    dec de                                        ; $5f73: $1b
    ld h, $39                                     ; $5f74: $26 $39
    ld l, $3f                                     ; $5f76: $2e $3f
    ld sp, $023f                                  ; $5f78: $31 $3f $02
    rra                                           ; $5f7b: $1f
    ld [bc], a                                    ; $5f7c: $02
    nop                                           ; $5f7d: $00
    adc b                                         ; $5f7e: $88
    adc h                                         ; $5f7f: $8c
    ld [hl], d                                    ; $5f80: $72
    sbc [hl]                                      ; $5f81: $9e
    ld h, b                                       ; $5f82: $60

jr_0e9_5f83:
    adc $30                                       ; $5f83: $ce $30
    and [hl]                                      ; $5f85: $a6
    ld a, b                                       ; $5f86: $78
    dec b                                         ; $5f87: $05
    cp $91                                        ; $5f88: $fe $91
    db $fc                                        ; $5f8a: $fc
    cp $fc                                        ; $5f8b: $fe $fc

jr_0e9_5f8d:
    ld sp, hl                                     ; $5f8d: $f9
    rst $38                                       ; $5f8e: $ff
    ld sp, hl                                     ; $5f8f: $f9
    rst $38                                       ; $5f90: $ff
    push af                                       ; $5f91: $f5
    ei                                            ; $5f92: $fb
    or [hl]                                       ; $5f93: $b6
    cp c                                          ; $5f94: $b9
    cp [hl]                                       ; $5f95: $be
    or c                                          ; $5f96: $b1
    cp e                                          ; $5f97: $bb
    or a                                          ; $5f98: $b7
    rra                                           ; $5f99: $1f
    jr @+$04                                      ; $5f9a: $18 $02

    rra                                           ; $5f9c: $1f
    stop                                          ; $5f9d: $10 $00
    ld [bc], a                                    ; $5f9f: $02
    rlca                                          ; $5fa0: $07

jr_0e9_5fa1:
    ld [bc], a                                    ; $5fa1: $02
    ld b, $06                                     ; $5fa2: $06 $06
    inc b                                         ; $5fa4: $04
    add h                                         ; $5fa5: $84
    ld [bc], a                                    ; $5fa6: $02
    ld b, $02                                     ; $5fa7: $06 $02
    ld b, $02                                     ; $5fa9: $06 $02
    inc b                                         ; $5fab: $04
    rst $38                                       ; $5fac: $ff
    ld de, $f606                                  ; $5fad: $11 $06 $f6
    ld a, [bc]                                    ; $5fb0: $0a
    ld a, [c]                                     ; $5fb1: $f2
    ld bc, $f5e5                                  ; $5fb2: $01 $e5 $f5
    ld [c], a                                     ; $5fb5: $e2
    db $fd                                        ; $5fb6: $fd
    and $03                                       ; $5fb7: $e6 $03
    ld a, [c]                                     ; $5fb9: $f2
    db $f4                                        ; $5fba: $f4
    ld a, [c]                                     ; $5fbb: $f2
    db $fc                                        ; $5fbc: $fc
    ld a, [c]                                     ; $5fbd: $f2
    inc bc                                        ; $5fbe: $03
    ld [bc], a                                    ; $5fbf: $02
    ld bc, $0381                                  ; $5fc0: $01 $81 $03
    ld [bc], a                                    ; $5fc3: $02
    ld [bc], a                                    ; $5fc4: $02
    add c                                         ; $5fc5: $81
    inc bc                                        ; $5fc6: $03
    ld [bc], a                                    ; $5fc7: $02
    ld bc, $0002                                  ; $5fc8: $01 $02 $00
    ld [bc], a                                    ; $5fcb: $02
    inc bc                                        ; $5fcc: $03
    ld [bc], a                                    ; $5fcd: $02
    rrca                                          ; $5fce: $0f
    sub d                                         ; $5fcf: $92
    rla                                           ; $5fd0: $17
    dec de                                        ; $5fd1: $1b
    ld e, $17                                     ; $5fd2: $1e $17
    ld l, $3f                                     ; $5fd4: $2e $3f
    scf                                           ; $5fd6: $37
    cpl                                           ; $5fd7: $2f
    ld [hl], $2f                                  ; $5fd8: $36 $2f
    db $ed                                        ; $5fda: $ed
    cp $5f                                        ; $5fdb: $fe $5f
    db $fc                                        ; $5fdd: $fc
    ld l, e                                       ; $5fde: $6b
    call c, $dceb                                 ; $5fdf: $dc $eb $dc
    ld [bc], a                                    ; $5fe2: $02
    jr c, jr_0e9_5f83                             ; $5fe3: $38 $9e

    ld e, h                                       ; $5fe5: $5c
    ld h, h                                       ; $5fe6: $64
    cp d                                          ; $5fe7: $ba
    add $d7                                       ; $5fe8: $c6 $d7
    rst $28                                       ; $5fea: $ef
    xor e                                         ; $5feb: $ab
    cp $de                                        ; $5fec: $fe $de
    xor e                                         ; $5fee: $ab
    rst $38                                       ; $5fef: $ff
    sub e                                         ; $5ff0: $93
    cp [hl]                                       ; $5ff1: $be
    ld a, [$c7bb]                                 ; $5ff2: $fa $bb $c7
    ld a, l                                       ; $5ff5: $7d
    rst $38                                       ; $5ff6: $ff
    add hl, sp                                    ; $5ff7: $39
    rst $38                                       ; $5ff8: $ff
    xor $11                                       ; $5ff9: $ee $11
    ld d, a                                       ; $5ffb: $57
    cp b                                          ; $5ffc: $b8
    rst $28                                       ; $5ffd: $ef
    rst $10                                       ; $5ffe: $d7
    cp $01                                        ; $5fff: $fe $01
    cp a                                          ; $6001: $bf
    ld b, b                                       ; $6002: $40
    inc b                                         ; $6003: $04
    jr nz, jr_0e9_600a                            ; $6004: $20 $04

    nop                                           ; $6006: $00
    ld [bc], a                                    ; $6007: $02
    jr nz, jr_0e9_600c                            ; $6008: $20 $02

jr_0e9_600a:
    jr c, jr_0e9_5f8d                             ; $600a: $38 $81

jr_0e9_600c:
    inc [hl]                                      ; $600c: $34
    ld [bc], a                                    ; $600d: $02
    inc l                                         ; $600e: $2c
    ld [bc], a                                    ; $600f: $02
    inc [hl]                                      ; $6010: $34
    adc a                                         ; $6011: $8f
    inc a                                         ; $6012: $3c
    ld a, $3a                                     ; $6013: $3e $3a
    ld [hl], $3a                                  ; $6015: $36 $3a
    ld d, $3a                                     ; $6017: $16 $3a
    db $fd                                        ; $6019: $fd
    rra                                           ; $601a: $1f
    xor e                                         ; $601b: $ab
    ld e, l                                       ; $601c: $5d
    xor e                                         ; $601d: $ab
    ld e, l                                       ; $601e: $5d
    rst $28                                       ; $601f: $ef
    add hl, de                                    ; $6020: $19
    inc b                                         ; $6021: $04
    add b                                         ; $6022: $80
    ld [bc], a                                    ; $6023: $02
    nop                                           ; $6024: $00
    add e                                         ; $6025: $83
    ld l, l                                       ; $6026: $6d
    halt                                          ; $6027: $76
    ld [hl], $02                                  ; $6028: $36 $02
    cpl                                           ; $602a: $2f
    adc a                                         ; $602b: $8f
    inc sp                                        ; $602c: $33
    dec [hl]                                      ; $602d: $35
    cpl                                           ; $602e: $2f
    ccf                                           ; $602f: $3f
    cpl                                           ; $6030: $2f
    jr jr_0e9_6052                                ; $6031: $18 $1f

    inc b                                         ; $6033: $04
    rlca                                          ; $6034: $07
    dec b                                         ; $6035: $05
    rlca                                          ; $6036: $07
    ld b, $07                                     ; $6037: $06 $07
    ld c, $0b                                     ; $6039: $0e $0b
    ld [bc], a                                    ; $603b: $02
    rlca                                          ; $603c: $07
    add d                                         ; $603d: $82
    rrca                                          ; $603e: $0f
    dec bc                                        ; $603f: $0b
    ld [bc], a                                    ; $6040: $02
    rlca                                          ; $6041: $07
    adc h                                         ; $6042: $8c
    ld a, [hl]                                    ; $6043: $7e
    nop                                           ; $6044: $00
    halt                                          ; $6045: $76
    ld [$4836], sp                                ; $6046: $08 $36 $48
    ld [hl-], a                                   ; $6049: $32
    call z, Call_000_1eed                         ; $604a: $cc $ed $1e
    and d                                         ; $604d: $a2
    db $dd                                        ; $604e: $dd
    ld b, $ff                                     ; $604f: $06 $ff
    adc h                                         ; $6051: $8c

jr_0e9_6052:
    ld a, a                                       ; $6052: $7f
    rst $38                                       ; $6053: $ff
    ccf                                           ; $6054: $3f
    rst $38                                       ; $6055: $ff
    sbc [hl]                                      ; $6056: $9e
    rst $38                                       ; $6057: $ff
    db $eb                                        ; $6058: $eb
    ld a, [$fb8a]                                 ; $6059: $fa $8a $fb
    inc de                                        ; $605c: $13
    di                                            ; $605d: $f3
    ld [bc], a                                    ; $605e: $02
    db $e3                                        ; $605f: $e3
    ld [$9600], sp                                ; $6060: $08 $00 $96
    ld e, a                                       ; $6063: $5f
    ld sp, $7b6d                                  ; $6064: $31 $6d $7b
    ld a, l                                       ; $6067: $7d
    ld a, e                                       ; $6068: $7b
    ld a, d                                       ; $6069: $7a
    ld d, [hl]                                    ; $606a: $56
    ld e, h                                       ; $606b: $5c
    inc a                                         ; $606c: $3c
    jr nc, jr_0e9_60df                            ; $606d: $30 $70

    ld l, b                                       ; $606f: $68
    jr jr_0e9_60ea                                ; $6070: $18 $78

    ld [$346c], sp                                ; $6072: $08 $6c $34
    ld a, b                                       ; $6075: $78
    ld e, b                                       ; $6076: $58
    inc a                                         ; $6077: $3c
    ld d, h                                       ; $6078: $54
    ld [bc], a                                    ; $6079: $02
    ld a, b                                       ; $607a: $78
    rst $38                                       ; $607b: $ff
    ld de, $f606                                  ; $607c: $11 $06 $f6
    ld a, [bc]                                    ; $607f: $0a
    ld a, [c]                                     ; $6080: $f2
    ld bc, $f7e3                                  ; $6081: $01 $e3 $f7
    ld [c], a                                     ; $6084: $e2

jr_0e9_6085:
    rst $38                                       ; $6085: $ff
    db $eb                                        ; $6086: $eb
    inc bc                                        ; $6087: $03
    ld a, [c]                                     ; $6088: $f2
    db $f4                                        ; $6089: $f4
    ld a, [c]                                     ; $608a: $f2
    db $fc                                        ; $608b: $fc
    ld a, [c]                                     ; $608c: $f2
    ld [bc], a                                    ; $608d: $02
    ld [bc], a                                    ; $608e: $02
    ld bc, $0281                                  ; $608f: $01 $81 $02
    inc bc                                        ; $6092: $03
    inc bc                                        ; $6093: $03
    inc bc                                        ; $6094: $03
    rlca                                          ; $6095: $07
    add d                                         ; $6096: $82
    dec b                                         ; $6097: $05
    ld [bc], a                                    ; $6098: $02
    ld [bc], a                                    ; $6099: $02
    inc bc                                        ; $609a: $03
    sub e                                         ; $609b: $93
    ld [bc], a                                    ; $609c: $02

jr_0e9_609d:
    ld b, $07                                     ; $609d: $06 $07
    dec e                                         ; $609f: $1d
    rra                                           ; $60a0: $1f
    inc a                                         ; $60a1: $3c
    cpl                                           ; $60a2: $2f
    ld a, e                                       ; $60a3: $7b
    ld c, h                                       ; $60a4: $4c
    ld e, e                                       ; $60a5: $5b
    ld a, h                                       ; $60a6: $7c
    sbc $bf                                       ; $60a7: $de $bf
    ei                                            ; $60a9: $fb
    sbc h                                         ; $60aa: $9c
    sub [hl]                                      ; $60ab: $96
    ld sp, hl                                     ; $60ac: $f9
    ld a, a                                       ; $60ad: $7f
    ldh a, [rSC]                                  ; $60ae: $f0 $02
    ldh [$9e], a                                  ; $60b0: $e0 $9e
    ret nc                                        ; $60b2: $d0

jr_0e9_60b3:
    jr nc, jr_0e9_609d                            ; $60b3: $30 $e8

    jr jr_0e9_60b3                                ; $60b5: $18 $fc

    inc a                                         ; $60b7: $3c
    xor [hl]                                      ; $60b8: $ae
    ld a, [$6a96]                                 ; $60b9: $fa $96 $6a
    db $fc                                        ; $60bc: $fc
    adc h                                         ; $60bd: $8c
    add sp, -$28                                  ; $60be: $e8 $d8
    rst $28                                       ; $60c0: $ef
    rra                                           ; $60c1: $1f
    or $ff                                        ; $60c2: $f6 $ff
    jp $bafe                                      ; $60c4: $c3 $fe $ba


    ld b, a                                       ; $60c7: $47
    ld e, a                                       ; $60c8: $5f
    db $e3                                        ; $60c9: $e3
    xor a                                         ; $60ca: $af
    ld e, a                                       ; $60cb: $5f
    ei                                            ; $60cc: $fb
    rlca                                          ; $60cd: $07
    db $fd                                        ; $60ce: $fd
    inc bc                                        ; $60cf: $03
    ld [bc], a                                    ; $60d0: $02
    ld [$0c81], sp                                ; $60d1: $08 $81 $0c
    ld [bc], a                                    ; $60d4: $02
    inc b                                         ; $60d5: $04
    inc bc                                        ; $60d6: $03
    inc c                                         ; $60d7: $0c
    sbc b                                         ; $60d8: $98
    ld b, $0a                                     ; $60d9: $06 $0a
    ld c, $0a                                     ; $60db: $0e $0a
    dec c                                         ; $60dd: $0d
    rrca                                          ; $60de: $0f

jr_0e9_60df:
    ei                                            ; $60df: $fb
    dec e                                         ; $60e0: $1d
    xor a                                         ; $60e1: $af
    ld e, c                                       ; $60e2: $59
    xor a                                         ; $60e3: $af
    ld e, c                                       ; $60e4: $59
    db $eb                                        ; $60e5: $eb
    dec e                                         ; $60e6: $1d
    push de                                       ; $60e7: $d5
    dec sp                                        ; $60e8: $3b
    ld a, [hl]                                    ; $60e9: $7e

jr_0e9_60ea:
    ld a, [$fef2]                                 ; $60ea: $fa $f2 $fe
    cp h                                          ; $60ed: $bc
    call c, $b8d8                                 ; $60ee: $dc $d8 $b8
    ld [bc], a                                    ; $60f1: $02
    jr nz, jr_0e9_6085                            ; $60f2: $20 $91

    dec l                                         ; $60f4: $2d
    ld [hl], $7b                                  ; $60f5: $36 $7b
    ld h, [hl]                                    ; $60f7: $66
    cp e                                          ; $60f8: $bb
    and $b2                                       ; $60f9: $e6 $b2
    rst $38                                       ; $60fb: $ff
    ld l, l                                       ; $60fc: $6d
    ld [hl], e                                    ; $60fd: $73
    ccf                                           ; $60fe: $3f
    daa                                           ; $60ff: $27
    inc l                                         ; $6100: $2c
    scf                                           ; $6101: $37
    inc e                                         ; $6102: $1c
    rra                                           ; $6103: $1f
    ld b, $03                                     ; $6104: $06 $03
    rlca                                          ; $6106: $07
    add d                                         ; $6107: $82
    inc b                                         ; $6108: $04
    rlca                                          ; $6109: $07
    ld [bc], a                                    ; $610a: $02
    inc bc                                        ; $610b: $03
    add d                                         ; $610c: $82
    dec b                                         ; $610d: $05
    rlca                                          ; $610e: $07
    ld [bc], a                                    ; $610f: $02
    inc bc                                        ; $6110: $03
    ld [bc], a                                    ; $6111: $02
    nop                                           ; $6112: $00
    adc h                                         ; $6113: $8c
    ld e, $00                                     ; $6114: $1e $00
    or $08                                        ; $6116: $f6 $08
    or [hl]                                       ; $6118: $b6
    ld c, b                                       ; $6119: $48
    ld [hl-], a                                   ; $611a: $32
    call z, Call_000_1eec                         ; $611b: $cc $ec $1e
    and d                                         ; $611e: $a2
    call c, $fe04                                 ; $611f: $dc $04 $fe
    adc [hl]                                      ; $6122: $8e
    ld a, $fe                                     ; $6123: $3e $fe
    adc [hl]                                      ; $6125: $8e
    rst $38                                       ; $6126: $ff
    ld b, d                                       ; $6127: $42
    rst $38                                       ; $6128: $ff
    or l                                          ; $6129: $b5
    rst $38                                       ; $612a: $ff
    reti                                          ; $612b: $d9


    rst $38                                       ; $612c: $ff
    ld d, e                                       ; $612d: $53
    rst $38                                       ; $612e: $ff
    rst $30                                       ; $612f: $f7
    rst $38                                       ; $6130: $ff
    ld [bc], a                                    ; $6131: $02
    add hl, de                                    ; $6132: $19
    ld [de], a                                    ; $6133: $12
    nop                                           ; $6134: $00
    adc d                                         ; $6135: $8a
    inc [hl]                                      ; $6136: $34
    inc c                                         ; $6137: $0c
    inc a                                         ; $6138: $3c
    inc b                                         ; $6139: $04
    ld a, [hl+]                                   ; $613a: $2a
    ld d, $36                                     ; $613b: $16 $36
    ld a, $3f                                     ; $613d: $3e $3f
    add hl, bc                                    ; $613f: $09
    ld [bc], a                                    ; $6140: $02
    ld a, $02                                     ; $6141: $3e $02
    jr nc, @+$01                                  ; $6143: $30 $ff

    ld de, $f606                                  ; $6145: $11 $06 $f6
    ld a, [bc]                                    ; $6148: $0a
    ld a, [c]                                     ; $6149: $f2
    ld bc, $f7e4                                  ; $614a: $01 $e4 $f7
    db $e3                                        ; $614d: $e3
    rst $38                                       ; $614e: $ff
    db $ec                                        ; $614f: $ec

jr_0e9_6150:
    inc bc                                        ; $6150: $03
    di                                            ; $6151: $f3
    db $f4                                        ; $6152: $f4
    di                                            ; $6153: $f3
    db $fc                                        ; $6154: $fc
    di                                            ; $6155: $f3
    ld bc, $0102                                  ; $6156: $01 $02 $01
    add c                                         ; $6159: $81
    ld [bc], a                                    ; $615a: $02
    inc bc                                        ; $615b: $03
    inc bc                                        ; $615c: $03
    inc bc                                        ; $615d: $03
    rlca                                          ; $615e: $07
    add d                                         ; $615f: $82
    dec b                                         ; $6160: $05
    ld [bc], a                                    ; $6161: $02
    ld [bc], a                                    ; $6162: $02
    inc bc                                        ; $6163: $03
    sub e                                         ; $6164: $93
    ld [bc], a                                    ; $6165: $02

jr_0e9_6166:
    ld c, $0f                                     ; $6166: $0e $0f
    dec e                                         ; $6168: $1d
    rra                                           ; $6169: $1f
    add hl, sp                                    ; $616a: $39
    ld l, $6b                                     ; $616b: $2e $6b
    ld e, h                                       ; $616d: $5c
    cp a                                          ; $616e: $bf
    rst $38                                       ; $616f: $ff
    db $dd                                        ; $6170: $dd
    cp [hl]                                       ; $6171: $be
    sub $b9                                       ; $6172: $d6 $b9
    or a                                          ; $6174: $b7
    ld hl, sp+$6f                                 ; $6175: $f8 $6f
    ldh a, [rSC]                                  ; $6177: $f0 $02
    ldh [$9e], a                                  ; $6179: $e0 $9e
    ret nc                                        ; $617b: $d0

jr_0e9_617c:
    jr nc, jr_0e9_6166                            ; $617c: $30 $e8

    jr jr_0e9_617c                                ; $617e: $18 $fc

    inc a                                         ; $6180: $3c
    xor [hl]                                      ; $6181: $ae
    ld a, [$6a96]                                 ; $6182: $fa $96 $6a
    db $fc                                        ; $6185: $fc
    adc h                                         ; $6186: $8c
    add sp, -$28                                  ; $6187: $e8 $d8
    rst $28                                       ; $6189: $ef
    rra                                           ; $618a: $1f
    or $ff                                        ; $618b: $f6 $ff
    ld a, e                                       ; $618d: $7b
    add $be                                       ; $618e: $c6 $be
    ld b, e                                       ; $6190: $43
    ld e, a                                       ; $6191: $5f
    rst $38                                       ; $6192: $ff
    rst $30                                       ; $6193: $f7
    rrca                                          ; $6194: $0f
    db $fd                                        ; $6195: $fd
    inc bc                                        ; $6196: $03
    db $fd                                        ; $6197: $fd
    inc bc                                        ; $6198: $03
    ld [bc], a                                    ; $6199: $02
    ld [$0c8a], sp                                ; $619a: $08 $8a $0c
    inc b                                         ; $619d: $04
    inc c                                         ; $619e: $0c
    inc b                                         ; $619f: $04
    ld a, [bc]                                    ; $61a0: $0a
    ld c, $06                                     ; $61a1: $0e $06
    ld a, [bc]                                    ; $61a3: $0a
    ld b, $0a                                     ; $61a4: $06 $0a
    ld [bc], a                                    ; $61a6: $02
    ld c, $92                                     ; $61a7: $0e $92
    db $eb                                        ; $61a9: $eb
    dec e                                         ; $61aa: $1d
    xor a                                         ; $61ab: $af
    ld e, c                                       ; $61ac: $59
    rst $28                                       ; $61ad: $ef
    add hl, de                                    ; $61ae: $19
    db $db                                        ; $61af: $db
    dec a                                         ; $61b0: $3d
    push de                                       ; $61b1: $d5
    dec sp                                        ; $61b2: $3b
    cp $fa                                        ; $61b3: $fe $fa
    ld a, [c]                                     ; $61b5: $f2
    cp $dc                                        ; $61b6: $fe $dc
    cp h                                          ; $61b8: $bc
    cp b                                          ; $61b9: $b8
    ld hl, sp+$02                                 ; $61ba: $f8 $02
    jr nz, jr_0e9_6150                            ; $61bc: $20 $92

    dec l                                         ; $61be: $2d
    ld [hl], $7f                                  ; $61bf: $36 $7f
    ld h, [hl]                                    ; $61c1: $66
    xor d                                         ; $61c2: $aa
    rst $30                                       ; $61c3: $f7
    or d                                          ; $61c4: $b2
    rst $38                                       ; $61c5: $ff
    ld l, l                                       ; $61c6: $6d
    ld [hl], e                                    ; $61c7: $73
    ccf                                           ; $61c8: $3f
    daa                                           ; $61c9: $27
    inc l                                         ; $61ca: $2c
    scf                                           ; $61cb: $37
    inc e                                         ; $61cc: $1c
    rra                                           ; $61cd: $1f
    ld b, $07                                     ; $61ce: $06 $07
    inc b                                         ; $61d0: $04
    inc bc                                        ; $61d1: $03
    add c                                         ; $61d2: $81
    ld [bc], a                                    ; $61d3: $02
    inc bc                                        ; $61d4: $03
    inc bc                                        ; $61d5: $03
    inc b                                         ; $61d6: $04
    nop                                           ; $61d7: $00
    adc e                                         ; $61d8: $8b
    ld d, $08                                     ; $61d9: $16 $08
    cp $00                                        ; $61db: $fe $00

jr_0e9_61dd:
    ld [hl], $c8                                  ; $61dd: $36 $c8
    xor d                                         ; $61df: $aa
    ld e, h                                       ; $61e0: $5c
    ld [$c01c], a                                 ; $61e1: $ea $1c $c0
    dec b                                         ; $61e4: $05
    cp $8c                                        ; $61e5: $fe $8c

jr_0e9_61e7:
    ld e, $fe                                     ; $61e7: $1e $fe
    add a                                         ; $61e9: $87
    rst $38                                       ; $61ea: $ff
    ld b, l                                       ; $61eb: $45
    rst $38                                       ; $61ec: $ff
    cp c                                          ; $61ed: $b9
    rst $38                                       ; $61ee: $ff
    db $db                                        ; $61ef: $db
    rst $38                                       ; $61f0: $ff
    di                                            ; $61f1: $f3
    rst $38                                       ; $61f2: $ff
    ld [bc], a                                    ; $61f3: $02
    ccf                                           ; $61f4: $3f
    inc d                                         ; $61f5: $14
    nop                                           ; $61f6: $00
    adc d                                         ; $61f7: $8a
    ld a, [de]                                    ; $61f8: $1a
    ld b, $1e                                     ; $61f9: $06 $1e
    ld [bc], a                                    ; $61fb: $02
    dec de                                        ; $61fc: $1b
    dec c                                         ; $61fd: $0d
    ld e, $16                                     ; $61fe: $1e $16
    rrca                                          ; $6200: $0f
    dec d                                         ; $6201: $15
    ld [bc], a                                    ; $6202: $02
    rra                                           ; $6203: $1f
    ld [bc], a                                    ; $6204: $02
    nop                                           ; $6205: $00
    rst $38                                       ; $6206: $ff
    ld de, $f606                                  ; $6207: $11 $06 $f6
    ld a, [bc]                                    ; $620a: $0a
    ld a, [c]                                     ; $620b: $f2
    ld bc, $f5e5                                  ; $620c: $01 $e5 $f5
    ld [c], a                                     ; $620f: $e2
    db $fd                                        ; $6210: $fd
    and $03                                       ; $6211: $e6 $03
    ld a, [c]                                     ; $6213: $f2
    db $f4                                        ; $6214: $f4
    ld a, [c]                                     ; $6215: $f2
    db $fc                                        ; $6216: $fc
    ld a, [c]                                     ; $6217: $f2
    inc bc                                        ; $6218: $03
    ld [bc], a                                    ; $6219: $02
    ld bc, $0381                                  ; $621a: $01 $81 $03
    ld [bc], a                                    ; $621d: $02
    ld [bc], a                                    ; $621e: $02
    add c                                         ; $621f: $81
    inc bc                                        ; $6220: $03
    ld [bc], a                                    ; $6221: $02
    ld bc, $0002                                  ; $6222: $01 $02 $00
    ld [bc], a                                    ; $6225: $02
    inc bc                                        ; $6226: $03
    ld [bc], a                                    ; $6227: $02
    rrca                                          ; $6228: $0f
    sub d                                         ; $6229: $92
    rla                                           ; $622a: $17
    dec de                                        ; $622b: $1b
    ld e, $17                                     ; $622c: $1e $17
    ld l, $3f                                     ; $622e: $2e $3f
    scf                                           ; $6230: $37
    cpl                                           ; $6231: $2f
    ld [hl], $2f                                  ; $6232: $36 $2f
    rst $28                                       ; $6234: $ef
    cp $5d                                        ; $6235: $fe $5d
    cp $6f                                        ; $6237: $fe $6f
    call c, $ccfb                                 ; $6239: $dc $fb $cc
    ld [bc], a                                    ; $623c: $02
    jr c, jr_0e9_61dd                             ; $623d: $38 $9e

    ld e, h                                       ; $623f: $5c
    ld h, h                                       ; $6240: $64
    cp d                                          ; $6241: $ba
    add $d7                                       ; $6242: $c6 $d7
    rst $28                                       ; $6244: $ef
    xor e                                         ; $6245: $ab
    cp $de                                        ; $6246: $fe $de
    xor e                                         ; $6248: $ab
    rst $38                                       ; $6249: $ff
    sub e                                         ; $624a: $93
    cp [hl]                                       ; $624b: $be
    ld a, [$c7bb]                                 ; $624c: $fa $bb $c7
    ld a, l                                       ; $624f: $7d
    rst $38                                       ; $6250: $ff
    add hl, sp                                    ; $6251: $39
    rst $38                                       ; $6252: $ff
    xor $11                                       ; $6253: $ee $11
    ld a, a                                       ; $6255: $7f
    sub b                                         ; $6256: $90
    rst $10                                       ; $6257: $d7
    rst $38                                       ; $6258: $ff
    cp $01                                        ; $6259: $fe $01
    cp a                                          ; $625b: $bf
    ld b, b                                       ; $625c: $40
    inc b                                         ; $625d: $04
    jr nz, jr_0e9_6264                            ; $625e: $20 $04

    nop                                           ; $6260: $00
    ld [bc], a                                    ; $6261: $02
    jr nz, jr_0e9_6266                            ; $6262: $20 $02

jr_0e9_6264:
    jr c, jr_0e9_61e7                             ; $6264: $38 $81

jr_0e9_6266:
    inc [hl]                                      ; $6266: $34
    ld [bc], a                                    ; $6267: $02
    inc l                                         ; $6268: $2c
    ld [bc], a                                    ; $6269: $02
    inc [hl]                                      ; $626a: $34
    adc a                                         ; $626b: $8f
    inc a                                         ; $626c: $3c
    ld a, $3a                                     ; $626d: $3e $3a
    ld [hl], $3a                                  ; $626f: $36 $3a
    ld [hl], $3a                                  ; $6271: $36 $3a
    db $dd                                        ; $6273: $dd
    ccf                                           ; $6274: $3f
    cp e                                          ; $6275: $bb
    ld e, l                                       ; $6276: $5d
    xor e                                         ; $6277: $ab
    ld e, l                                       ; $6278: $5d
    rst $28                                       ; $6279: $ef
    add hl, de                                    ; $627a: $19
    inc b                                         ; $627b: $04
    add b                                         ; $627c: $80
    ld [bc], a                                    ; $627d: $02
    nop                                           ; $627e: $00
    add e                                         ; $627f: $83
    ld l, a                                       ; $6280: $6f
    halt                                          ; $6281: $76
    ld [hl-], a                                   ; $6282: $32
    ld [bc], a                                    ; $6283: $02
    cpl                                           ; $6284: $2f
    adc a                                         ; $6285: $8f
    inc sp                                        ; $6286: $33
    dec [hl]                                      ; $6287: $35
    cpl                                           ; $6288: $2f
    ccf                                           ; $6289: $3f
    cpl                                           ; $628a: $2f
    jr jr_0e9_62ac                                ; $628b: $18 $1f

    inc b                                         ; $628d: $04
    rlca                                          ; $628e: $07
    dec b                                         ; $628f: $05
    rlca                                          ; $6290: $07
    ld b, $07                                     ; $6291: $06 $07
    ld [bc], a                                    ; $6293: $02
    inc bc                                        ; $6294: $03
    ld [bc], a                                    ; $6295: $02
    rlca                                          ; $6296: $07
    ld [bc], a                                    ; $6297: $02
    inc bc                                        ; $6298: $03
    ld [bc], a                                    ; $6299: $02
    ld bc, $5e9e                                  ; $629a: $01 $9e $5e
    jr nz, jr_0e9_631d                            ; $629d: $20 $7e

    nop                                           ; $629f: $00
    ld [hl], $48                                  ; $62a0: $36 $48
    ld h, $d8                                     ; $62a2: $26 $d8
    db $db                                        ; $62a4: $db
    inc a                                         ; $62a5: $3c
    ld h, a                                       ; $62a6: $67
    sbc b                                         ; $62a7: $98
    db $e3                                        ; $62a8: $e3
    rst $38                                       ; $62a9: $ff
    ld a, a                                       ; $62aa: $7f
    rst $38                                       ; $62ab: $ff

jr_0e9_62ac:
    cp a                                          ; $62ac: $bf
    rst $38                                       ; $62ad: $ff

jr_0e9_62ae:
    ld a, a                                       ; $62ae: $7f
    rst $38                                       ; $62af: $ff
    ccf                                           ; $62b0: $3f
    rst $38                                       ; $62b1: $ff
    sbc [hl]                                      ; $62b2: $9e
    rst $38                                       ; $62b3: $ff
    ld [$8afb], a                                 ; $62b4: $ea $fb $8a
    ei                                            ; $62b7: $fb
    inc de                                        ; $62b8: $13
    di                                            ; $62b9: $f3
    ld [bc], a                                    ; $62ba: $02
    db $e3                                        ; $62bb: $e3
    ld [$9200], sp                                ; $62bc: $08 $00 $92
    ld e, a                                       ; $62bf: $5f
    ld sp, $7b2d                                  ; $62c0: $31 $2d $7b
    ld a, l                                       ; $62c3: $7d
    ld a, e                                       ; $62c4: $7b
    ld a, d                                       ; $62c5: $7a
    ld d, [hl]                                    ; $62c6: $56
    inc a                                         ; $62c7: $3c
    ld e, h                                       ; $62c8: $5c
    db $10                                        ; $62c9: $10
    ld [hl], b                                    ; $62ca: $70
    ld a, b                                       ; $62cb: $78
    jr jr_0e9_6336                                ; $62cc: $18 $68

    jr jr_0e9_6328                                ; $62ce: $18 $58

    jr z, jr_0e9_62d4                             ; $62d0: $28 $02

    ld a, b                                       ; $62d2: $78
    add d                                         ; $62d3: $82

jr_0e9_62d4:
    inc a                                         ; $62d4: $3c
    ld d, h                                       ; $62d5: $54
    ld [bc], a                                    ; $62d6: $02
    ld a, h                                       ; $62d7: $7c
    rst $38                                       ; $62d8: $ff
    ld de, $f606                                  ; $62d9: $11 $06 $f6
    ld a, [bc]                                    ; $62dc: $0a
    ld a, [c]                                     ; $62dd: $f2
    ld bc, $f5e5                                  ; $62de: $01 $e5 $f5
    ld [c], a                                     ; $62e1: $e2
    db $fd                                        ; $62e2: $fd
    ld [$f203], a                                 ; $62e3: $ea $03 $f2
    or $f2                                        ; $62e6: $f6 $f2
    cp $f2                                        ; $62e8: $fe $f2
    nop                                           ; $62ea: $00
    ld [bc], a                                    ; $62eb: $02
    ld bc, $0384                                  ; $62ec: $01 $84 $03
    ld [bc], a                                    ; $62ef: $02
    inc bc                                        ; $62f0: $03
    ld [bc], a                                    ; $62f1: $02
    ld [bc], a                                    ; $62f2: $02
    ld bc, $0002                                  ; $62f3: $01 $02 $00
    ld [bc], a                                    ; $62f6: $02
    rlca                                          ; $62f7: $07
    sub h                                         ; $62f8: $94
    dec bc                                        ; $62f9: $0b
    rrca                                          ; $62fa: $0f
    ld e, $13                                     ; $62fb: $1e $13
    ld d, $1f                                     ; $62fd: $16 $1f
    ld l, $3f                                     ; $62ff: $2e $3f
    scf                                           ; $6301: $37
    cpl                                           ; $6302: $2f
    halt                                          ; $6303: $76
    ld l, a                                       ; $6304: $6f
    db $dd                                        ; $6305: $dd
    cp $ef                                        ; $6306: $fe $ef
    call c, $ccfb                                 ; $6308: $dc $fb $cc
    ld l, e                                       ; $630b: $6b
    ld e, h                                       ; $630c: $5c
    ld [bc], a                                    ; $630d: $02
    jr c, jr_0e9_62ae                             ; $630e: $38 $9e

    ld e, h                                       ; $6310: $5c

jr_0e9_6311:
    ld h, h                                       ; $6311: $64
    cp d                                          ; $6312: $ba
    add $fe                                       ; $6313: $c6 $fe
    and $af                                       ; $6315: $e6 $af
    rst $38                                       ; $6317: $ff
    ld c, a                                       ; $6318: $4f
    or l                                          ; $6319: $b5
    ld a, [$de8e]                                 ; $631a: $fa $8e $de

jr_0e9_631d:
    cp d                                          ; $631d: $ba
    cp e                                          ; $631e: $bb
    rst $00                                       ; $631f: $c7
    ld a, l                                       ; $6320: $7d
    rst $38                                       ; $6321: $ff
    add hl, de                                    ; $6322: $19
    rst $38                                       ; $6323: $ff
    rst $28                                       ; $6324: $ef
    db $10                                        ; $6325: $10
    ld d, a                                       ; $6326: $57
    cp b                                          ; $6327: $b8

jr_0e9_6328:
    xor e                                         ; $6328: $ab
    rst $10                                       ; $6329: $d7
    cp $01                                        ; $632a: $fe $01
    cp a                                          ; $632c: $bf
    ld b, b                                       ; $632d: $40
    ld [bc], a                                    ; $632e: $02
    jr nz, jr_0e9_6333                            ; $632f: $20 $02

    jr nc, @-$7b                                  ; $6331: $30 $83

jr_0e9_6333:
    jr c, jr_0e9_635d                             ; $6333: $38 $28

    inc a                                         ; $6335: $3c

jr_0e9_6336:
    ld [bc], a                                    ; $6336: $02
    inc h                                         ; $6337: $24
    sbc d                                         ; $6338: $9a
    inc a                                         ; $6339: $3c
    ld a, $3a                                     ; $633a: $3e $3a
    ld [hl], $3a                                  ; $633c: $36 $3a
    ld e, $32                                     ; $633e: $1e $32
    ld a, [$ab1e]                                 ; $6340: $fa $1e $ab
    ld e, l                                       ; $6343: $5d
    or a                                          ; $6344: $b7
    ld e, c                                       ; $6345: $59
    db $fd                                        ; $6346: $fd
    inc de                                        ; $6347: $13
    db $fd                                        ; $6348: $fd
    inc hl                                        ; $6349: $23
    ld e, d                                       ; $634a: $5a
    or $ee                                        ; $634b: $f6 $ee
    ld a, [c]                                     ; $634d: $f2
    db $f4                                        ; $634e: $f4

jr_0e9_634f:
    db $ec                                        ; $634f: $ec
    ld bc, $0100                                  ; $6350: $01 $00 $01
    ld [bc], a                                    ; $6353: $02
    nop                                           ; $6354: $00
    sub a                                         ; $6355: $97
    ld bc, $fbb4                                  ; $6356: $01 $b4 $fb
    xor e                                         ; $6359: $ab
    call c, $bfde                                 ; $635a: $dc $de $bf

jr_0e9_635d:
    rst $20                                       ; $635d: $e7
    cp a                                          ; $635e: $bf
    ld h, e                                       ; $635f: $63
    ld a, a                                       ; $6360: $7f
    add hl, hl                                    ; $6361: $29
    ccf                                           ; $6362: $3f
    jr z, jr_0e9_63a4                             ; $6363: $28 $3f

    rla                                           ; $6365: $17
    rra                                           ; $6366: $1f
    jr c, jr_0e9_63a8                             ; $6367: $38 $3f

    jr nc, @+$41                                  ; $6369: $30 $3f

    ld a, b                                       ; $636b: $78
    ld c, a                                       ; $636c: $4f
    ld [bc], a                                    ; $636d: $02
    ccf                                           ; $636e: $3f
    ld [bc], a                                    ; $636f: $02
    rlca                                          ; $6370: $07
    adc h                                         ; $6371: $8c
    ld hl, sp+$00                                 ; $6372: $f8 $00
    ret c                                         ; $6374: $d8

    jr nz, jr_0e9_634f                            ; $6375: $20 $d8

    jr nz, jr_0e9_6311                            ; $6377: $20 $98

jr_0e9_6379:
    ld h, b                                       ; $6379: $60
    ld l, b                                       ; $637a: $68
    ldh a, [$88]                                  ; $637b: $f0 $88
    ld [hl], b                                    ; $637d: $70
    inc b                                         ; $637e: $04
    ld hl, sp-$74                                 ; $637f: $f8 $8c
    rst $38                                       ; $6381: $ff
    cp $fd                                        ; $6382: $fe $fd
    cp $ff                                        ; $6384: $fe $ff
    db $fc                                        ; $6386: $fc
    ld a, d                                       ; $6387: $7a
    db $fd                                        ; $6388: $fd
    ld a, a                                       ; $6389: $7f
    rst $38                                       ; $638a: $ff
    db $db                                        ; $638b: $db
    db $dd                                        ; $638c: $dd
    ld [bc], a                                    ; $638d: $02
    sbc a                                         ; $638e: $9f
    ld [de], a                                    ; $638f: $12
    nop                                           ; $6390: $00
    ld [bc], a                                    ; $6391: $02
    inc bc                                        ; $6392: $03
    add c                                         ; $6393: $81
    ld bc, $0303                                  ; $6394: $01 $03 $03
    add d                                         ; $6397: $82
    ld bc, $0203                                  ; $6398: $01 $03 $02
    ld [bc], a                                    ; $639b: $02
    add d                                         ; $639c: $82

jr_0e9_639d:
    ld bc, $0203                                  ; $639d: $01 $03 $02
    ld [bc], a                                    ; $63a0: $02
    ld [bc], a                                    ; $63a1: $02
    nop                                           ; $63a2: $00
    rst $38                                       ; $63a3: $ff

jr_0e9_63a4:
    ld de, $f606                                  ; $63a4: $11 $06 $f6
    ld a, [bc]                                    ; $63a7: $0a

jr_0e9_63a8:
    ld a, [c]                                     ; $63a8: $f2
    ld bc, $f5e6                                  ; $63a9: $01 $e6 $f5
    db $e3                                        ; $63ac: $e3
    db $fd                                        ; $63ad: $fd
    db $eb                                        ; $63ae: $eb
    inc bc                                        ; $63af: $03
    di                                            ; $63b0: $f3
    or $f3                                        ; $63b1: $f6 $f3
    cp $f3                                        ; $63b3: $fe $f3
    ld bc, $0102                                  ; $63b5: $01 $02 $01
    add h                                         ; $63b8: $84
    inc bc                                        ; $63b9: $03
    ld [bc], a                                    ; $63ba: $02
    inc bc                                        ; $63bb: $03
    ld [bc], a                                    ; $63bc: $02
    ld [bc], a                                    ; $63bd: $02
    ld bc, $0002                                  ; $63be: $01 $02 $00
    ld [bc], a                                    ; $63c1: $02
    rlca                                          ; $63c2: $07
    sub h                                         ; $63c3: $94
    dec bc                                        ; $63c4: $0b
    rrca                                          ; $63c5: $0f
    ld e, $13                                     ; $63c6: $1e $13
    ld d, $1f                                     ; $63c8: $16 $1f
    cpl                                           ; $63ca: $2f
    ccf                                           ; $63cb: $3f
    scf                                           ; $63cc: $37
    cpl                                           ; $63cd: $2f
    ld [hl], l                                    ; $63ce: $75
    ld l, [hl]                                    ; $63cf: $6e
    db $dd                                        ; $63d0: $dd
    cp $eb                                        ; $63d1: $fe $eb
    call c, $ccfb                                 ; $63d3: $dc $fb $cc
    ld l, d                                       ; $63d6: $6a
    ld e, l                                       ; $63d7: $5d
    ld [bc], a                                    ; $63d8: $02
    jr c, jr_0e9_6379                             ; $63d9: $38 $9e

    ld e, h                                       ; $63db: $5c
    ld h, h                                       ; $63dc: $64
    cp d                                          ; $63dd: $ba
    add $fe                                       ; $63de: $c6 $fe
    and $af                                       ; $63e0: $e6 $af
    rst $38                                       ; $63e2: $ff
    ld c, a                                       ; $63e3: $4f
    or l                                          ; $63e4: $b5
    ld a, [$de8e]                                 ; $63e5: $fa $8e $de
    cp d                                          ; $63e8: $ba
    cp e                                          ; $63e9: $bb
    rst $00                                       ; $63ea: $c7

jr_0e9_63eb:
    ld a, l                                       ; $63eb: $7d
    rst $38                                       ; $63ec: $ff
    halt                                          ; $63ed: $76
    sbc c                                         ; $63ee: $99
    rst $28                                       ; $63ef: $ef
    db $10                                        ; $63f0: $10
    rst $10                                       ; $63f1: $d7
    rst $38                                       ; $63f2: $ff
    ld a, l                                       ; $63f3: $7d
    add e                                         ; $63f4: $83
    cp a                                          ; $63f5: $bf
    ld b, b                                       ; $63f6: $40
    rst $38                                       ; $63f7: $ff
    nop                                           ; $63f8: $00
    ld [bc], a                                    ; $63f9: $02
    jr nz, jr_0e9_63fe                            ; $63fa: $20 $02

    jr nc, jr_0e9_639d                            ; $63fc: $30 $9f

jr_0e9_63fe:
    jr c, jr_0e9_6428                             ; $63fe: $38 $28

    inc l                                         ; $6400: $2c
    inc [hl]                                      ; $6401: $34
    inc h                                         ; $6402: $24
    inc a                                         ; $6403: $3c
    ld a, $3a                                     ; $6404: $3e $3a
    ld d, $3a                                     ; $6406: $16 $3a
    ld d, $3a                                     ; $6408: $16 $3a
    jp hl                                         ; $640a: $e9


    rra                                           ; $640b: $1f
    xor e                                         ; $640c: $ab
    ld e, l                                       ; $640d: $5d
    rst $28                                       ; $640e: $ef
    add hl, de                                    ; $640f: $19
    rst $18                                       ; $6410: $df
    ld sp, $33ed                                  ; $6411: $31 $ed $33
    db $fd                                        ; $6414: $fd
    db $e3                                        ; $6415: $e3
    cp $f2                                        ; $6416: $fe $f2
    xor d                                         ; $6418: $aa
    or $01                                        ; $6419: $f6 $01
    nop                                           ; $641b: $00
    ld bc, $0002                                  ; $641c: $01 $02 $00
    sub a                                         ; $641f: $97
    ld bc, $fdba                                  ; $6420: $01 $ba $fd
    cp e                                          ; $6423: $bb
    call z, $bfdf                                 ; $6424: $cc $df $bf
    rst $30                                       ; $6427: $f7

jr_0e9_6428:
    cp a                                          ; $6428: $bf
    ld h, e                                       ; $6429: $63
    ld a, a                                       ; $642a: $7f
    jr z, jr_0e9_646c                             ; $642b: $28 $3f

    inc d                                         ; $642d: $14
    rra                                           ; $642e: $1f
    rla                                           ; $642f: $17
    rra                                           ; $6430: $1f
    inc a                                         ; $6431: $3c
    ccf                                           ; $6432: $3f
    jr jr_0e9_6454                                ; $6433: $18 $1f

    inc a                                         ; $6435: $3c
    cpl                                           ; $6436: $2f

jr_0e9_6437:
    ld [bc], a                                    ; $6437: $02
    ccf                                           ; $6438: $3f

jr_0e9_6439:
    ld [bc], a                                    ; $6439: $02
    nop                                           ; $643a: $00
    adc e                                         ; $643b: $8b
    ret c                                         ; $643c: $d8

    jr nz, jr_0e9_6437                            ; $643d: $20 $f8

    nop                                           ; $643f: $00
    ret c                                         ; $6440: $d8

    jr nz, jr_0e9_63eb                            ; $6441: $20 $a8

jr_0e9_6443:
    ld [hl], b                                    ; $6443: $70
    xor b                                         ; $6444: $a8
    ld [hl], b                                    ; $6445: $70
    nop                                           ; $6446: $00
    dec b                                         ; $6447: $05
    ld hl, sp-$76                                 ; $6448: $f8 $8a
    db $fd                                        ; $644a: $fd
    cp $7e                                        ; $644b: $fe $7e
    db $fd                                        ; $644d: $fd
    ld a, [$5ffd]                                 ; $644e: $fa $fd $5f
    rst $18                                       ; $6451: $df
    ld e, d                                       ; $6452: $5a
    rst $18                                       ; $6453: $df

jr_0e9_6454:
    ld [bc], a                                    ; $6454: $02
    adc a                                         ; $6455: $8f
    ld [bc], a                                    ; $6456: $02
    add b                                         ; $6457: $80
    ld [de], a                                    ; $6458: $12
    nop                                           ; $6459: $00
    ld [bc], a                                    ; $645a: $02
    rlca                                          ; $645b: $07
    ld [bc], a                                    ; $645c: $02
    ld b, $08                                     ; $645d: $06 $08
    inc b                                         ; $645f: $04
    inc b                                         ; $6460: $04
    nop                                           ; $6461: $00
    rst $38                                       ; $6462: $ff
    ld de, $f606                                  ; $6463: $11 $06 $f6
    ld a, [bc]                                    ; $6466: $0a
    ld a, [c]                                     ; $6467: $f2
    ld bc, $f5e5                                  ; $6468: $01 $e5 $f5
    ld [c], a                                     ; $646b: $e2

jr_0e9_646c:
    db $fd                                        ; $646c: $fd
    and $03                                       ; $646d: $e6 $03
    ld a, [c]                                     ; $646f: $f2
    db $f4                                        ; $6470: $f4
    ld a, [c]                                     ; $6471: $f2
    db $fc                                        ; $6472: $fc
    ld a, [c]                                     ; $6473: $f2
    inc bc                                        ; $6474: $03
    ld [bc], a                                    ; $6475: $02
    ld bc, $0381                                  ; $6476: $01 $81 $03
    ld [bc], a                                    ; $6479: $02
    ld [bc], a                                    ; $647a: $02
    add c                                         ; $647b: $81
    inc bc                                        ; $647c: $03
    ld [bc], a                                    ; $647d: $02
    ld bc, $0002                                  ; $647e: $01 $02 $00
    ld [bc], a                                    ; $6481: $02
    inc bc                                        ; $6482: $03
    ld [bc], a                                    ; $6483: $02
    rrca                                          ; $6484: $0f
    sub d                                         ; $6485: $92
    rla                                           ; $6486: $17
    dec de                                        ; $6487: $1b
    ld e, $17                                     ; $6488: $1e $17
    ld l, $3f                                     ; $648a: $2e $3f
    scf                                           ; $648c: $37
    cpl                                           ; $648d: $2f
    ld [hl], $2f                                  ; $648e: $36 $2f
    rst $28                                       ; $6490: $ef
    cp $5d                                        ; $6491: $fe $5d
    cp $6f                                        ; $6493: $fe $6f
    call c, $dceb                                 ; $6495: $dc $eb $dc
    ld [bc], a                                    ; $6498: $02
    jr c, jr_0e9_6439                             ; $6499: $38 $9e

    ld e, h                                       ; $649b: $5c
    ld h, h                                       ; $649c: $64
    cp d                                          ; $649d: $ba
    add $d7                                       ; $649e: $c6 $d7
    rst $28                                       ; $64a0: $ef
    xor e                                         ; $64a1: $ab
    cp $de                                        ; $64a2: $fe $de
    xor e                                         ; $64a4: $ab
    rst $38                                       ; $64a5: $ff
    sub e                                         ; $64a6: $93
    cp [hl]                                       ; $64a7: $be
    ld a, [$c7bb]                                 ; $64a8: $fa $bb $c7
    ld a, l                                       ; $64ab: $7d
    rst $38                                       ; $64ac: $ff
    add hl, sp                                    ; $64ad: $39
    rst $38                                       ; $64ae: $ff
    xor $11                                       ; $64af: $ee $11
    ld a, a                                       ; $64b1: $7f
    sub b                                         ; $64b2: $90
    rst $10                                       ; $64b3: $d7
    rst $38                                       ; $64b4: $ff
    cp $01                                        ; $64b5: $fe $01
    cp a                                          ; $64b7: $bf
    ld b, b                                       ; $64b8: $40
    inc b                                         ; $64b9: $04
    jr nz, jr_0e9_64c0                            ; $64ba: $20 $04

    nop                                           ; $64bc: $00
    ld [bc], a                                    ; $64bd: $02
    jr nz, jr_0e9_64c2                            ; $64be: $20 $02

jr_0e9_64c0:
    jr c, jr_0e9_6443                             ; $64c0: $38 $81

jr_0e9_64c2:
    inc [hl]                                      ; $64c2: $34
    ld [bc], a                                    ; $64c3: $02
    inc l                                         ; $64c4: $2c
    ld [bc], a                                    ; $64c5: $02
    inc [hl]                                      ; $64c6: $34
    adc a                                         ; $64c7: $8f
    inc a                                         ; $64c8: $3c
    ld a, $3a                                     ; $64c9: $3e $3a
    ld [hl], $3a                                  ; $64cb: $36 $3a
    ld [hl], $3a                                  ; $64cd: $36 $3a
    db $dd                                        ; $64cf: $dd
    ccf                                           ; $64d0: $3f
    cp e                                          ; $64d1: $bb
    ld e, l                                       ; $64d2: $5d
    xor e                                         ; $64d3: $ab
    ld e, l                                       ; $64d4: $5d
    rst $28                                       ; $64d5: $ef
    add hl, de                                    ; $64d6: $19
    inc b                                         ; $64d7: $04
    add b                                         ; $64d8: $80
    ld [bc], a                                    ; $64d9: $02
    nop                                           ; $64da: $00
    add e                                         ; $64db: $83
    ld l, l                                       ; $64dc: $6d
    halt                                          ; $64dd: $76
    ld [hl], $02                                  ; $64de: $36 $02
    cpl                                           ; $64e0: $2f
    adc [hl]                                      ; $64e1: $8e
    inc sp                                        ; $64e2: $33
    dec [hl]                                      ; $64e3: $35
    cpl                                           ; $64e4: $2f
    ccf                                           ; $64e5: $3f
    cpl                                           ; $64e6: $2f
    jr jr_0e9_6508                                ; $64e7: $18 $1f

    inc b                                         ; $64e9: $04

jr_0e9_64ea:
    rlca                                          ; $64ea: $07
    dec b                                         ; $64eb: $05
    rlca                                          ; $64ec: $07
    ld b, $07                                     ; $64ed: $06 $07
    ld b, $03                                     ; $64ef: $06 $03
    rlca                                          ; $64f1: $07
    add d                                         ; $64f2: $82
    rrca                                          ; $64f3: $0f
    dec bc                                        ; $64f4: $0b
    ld [bc], a                                    ; $64f5: $02
    rrca                                          ; $64f6: $0f

jr_0e9_64f7:
    adc l                                         ; $64f7: $8d
    ld e, [hl]                                    ; $64f8: $5e
    jr nz, @+$80                                  ; $64f9: $20 $7e

    nop                                           ; $64fb: $00
    ld [hl], $48                                  ; $64fc: $36 $48
    ld [hl-], a                                   ; $64fe: $32
    call z, Call_000_1eed                         ; $64ff: $cc $ed $1e
    ld [hl], e                                    ; $6502: $73
    adc h                                         ; $6503: $8c
    db $e3                                        ; $6504: $e3
    inc bc                                        ; $6505: $03
    rst $38                                       ; $6506: $ff
    adc [hl]                                      ; $6507: $8e

jr_0e9_6508:
    cp $ff                                        ; $6508: $fe $ff
    ld a, [hl]                                    ; $650a: $7e
    rst $38                                       ; $650b: $ff
    ld a, $ff                                     ; $650c: $3e $ff
    sbc [hl]                                      ; $650e: $9e
    rst $38                                       ; $650f: $ff
    rst $28                                       ; $6510: $ef
    rst $38                                       ; $6511: $ff
    adc d                                         ; $6512: $8a
    ei                                            ; $6513: $fb
    ld de, $02f1                                  ; $6514: $11 $f1 $02
    ldh [$08], a                                  ; $6517: $e0 $08
    nop                                           ; $6519: $00
    sub b                                         ; $651a: $90
    ld e, a                                       ; $651b: $5f
    ld sp, $7b2d                                  ; $651c: $31 $2d $7b
    ld a, l                                       ; $651f: $7d
    ld a, e                                       ; $6520: $7b
    ld a, [hl-]                                   ; $6521: $3a
    ld d, [hl]                                    ; $6522: $56
    ld l, h                                       ; $6523: $6c
    inc e                                         ; $6524: $1c
    ld a, b                                       ; $6525: $78
    ld [$1868], sp                                ; $6526: $08 $68 $18
    ld e, b                                       ; $6529: $58
    jr c, jr_0e9_652e                             ; $652a: $38 $02

    ld [hl], b                                    ; $652c: $70
    add d                                         ; $652d: $82

jr_0e9_652e:
    jr z, jr_0e9_65a8                             ; $652e: $28 $78

    ld [bc], a                                    ; $6530: $02
    ld [hl], b                                    ; $6531: $70
    ld [bc], a                                    ; $6532: $02
    nop                                           ; $6533: $00
    rst $38                                       ; $6534: $ff
    rrca                                          ; $6535: $0f
    dec b                                         ; $6536: $05
    or $0a                                        ; $6537: $f6 $0a
    ld a, [c]                                     ; $6539: $f2
    ld bc, $f9e2                                  ; $653a: $01 $e2 $f9
    db $e4                                        ; $653d: $e4
    rst $38                                       ; $653e: $ff
    ld a, [c]                                     ; $653f: $f2
    rst $30                                       ; $6540: $f7
    ld a, [c]                                     ; $6541: $f2
    rst $38                                       ; $6542: $ff
    ld a, [c]                                     ; $6543: $f2
    ld [bc], a                                    ; $6544: $02
    ld [bc], a                                    ; $6545: $02
    ld b, $91                                     ; $6546: $06 $91
    rrca                                          ; $6548: $0f
    add hl, bc                                    ; $6549: $09
    inc de                                        ; $654a: $13
    inc e                                         ; $654b: $1c
    ld [hl-], a                                   ; $654c: $32
    ccf                                           ; $654d: $3f
    ld a, l                                       ; $654e: $7d
    ld c, e                                       ; $654f: $4b
    ld d, a                                       ; $6550: $57
    ld l, b                                       ; $6551: $68
    scf                                           ; $6552: $37
    jr c, jr_0e9_6567                             ; $6553: $38 $12

    dec e                                         ; $6555: $1d
    dec d                                         ; $6556: $15
    ld e, $3b                                     ; $6557: $1e $3b
    inc bc                                        ; $6559: $03
    ccf                                           ; $655a: $3f
    adc d                                         ; $655b: $8a
    ld a, e                                       ; $655c: $7b
    ld h, a                                       ; $655d: $67
    ld e, a                                       ; $655e: $5f
    ld h, e                                       ; $655f: $63
    ld l, a                                       ; $6560: $6f
    ld [hl], a                                    ; $6561: $77
    rst $08                                       ; $6562: $cf
    rst $38                                       ; $6563: $ff
    rst $18                                       ; $6564: $df
    rst $20                                       ; $6565: $e7
    ld [bc], a                                    ; $6566: $02

jr_0e9_6567:
    jr nz, jr_0e9_64ea                            ; $6567: $20 $81

    jr nc, jr_0e9_656d                            ; $6569: $30 $02

    db $10                                        ; $656b: $10
    add l                                         ; $656c: $85

jr_0e9_656d:
    jr nc, @+$1a                                  ; $656d: $30 $18

    jr z, @+$32                                   ; $656f: $28 $30

    db $10                                        ; $6571: $10
    ld [bc], a                                    ; $6572: $02
    jr c, jr_0e9_64f7                             ; $6573: $38 $82

    jr z, jr_0e9_658f                             ; $6575: $28 $18

    ld [bc], a                                    ; $6577: $02
    jr nc, @-$78                                  ; $6578: $30 $86

    db $10                                        ; $657a: $10
    jr nc, @+$1a                                  ; $657b: $30 $18

    jr z, jr_0e9_65ab                             ; $657d: $28 $2c

    inc [hl]                                      ; $657f: $34
    ld [bc], a                                    ; $6580: $02
    inc a                                         ; $6581: $3c
    and [hl]                                      ; $6582: $a6
    inc h                                         ; $6583: $24
    inc a                                         ; $6584: $3c
    ld a, [hl+]                                   ; $6585: $2a
    ld [hl], $ee                                  ; $6586: $36 $ee
    ld a, [c]                                     ; $6588: $f2
    sbc l                                         ; $6589: $9d
    db $e3                                        ; $658a: $e3
    ld e, e                                       ; $658b: $5b
    ld d, a                                       ; $658c: $57
    cp l                                          ; $658d: $bd
    di                                            ; $658e: $f3

jr_0e9_658f:
    ld d, l                                       ; $658f: $55
    ld a, e                                       ; $6590: $7b
    add hl, hl                                    ; $6591: $29
    ccf                                           ; $6592: $3f
    dec e                                         ; $6593: $1d
    ld e, $16                                     ; $6594: $1e $16
    add hl, de                                    ; $6596: $19
    ld a, [de]                                    ; $6597: $1a
    dec e                                         ; $6598: $1d
    rra                                           ; $6599: $1f
    dec d                                         ; $659a: $15

jr_0e9_659b:
    inc de                                        ; $659b: $13
    rra                                           ; $659c: $1f
    dec bc                                        ; $659d: $0b
    inc c                                         ; $659e: $0c
    dec b                                         ; $659f: $05
    ld b, $04                                     ; $65a0: $06 $04
    rlca                                          ; $65a2: $07
    ld a, [bc]                                    ; $65a3: $0a

jr_0e9_65a4:
    dec c                                         ; $65a4: $0d
    ld c, $09                                     ; $65a5: $0e $09
    dec d                                         ; $65a7: $15

jr_0e9_65a8:
    ld a, [de]                                    ; $65a8: $1a
    ld [bc], a                                    ; $65a9: $02
    rrca                                          ; $65aa: $0f

jr_0e9_65ab:
    inc b                                         ; $65ab: $04
    nop                                           ; $65ac: $00
    adc b                                         ; $65ad: $88
    scf                                           ; $65ae: $37
    ret                                           ; $65af: $c9


    scf                                           ; $65b0: $37
    ret                                           ; $65b1: $c9


    sbc l                                         ; $65b2: $9d
    db $e3                                        ; $65b3: $e3
    ld a, [c]                                     ; $65b4: $f2
    ld a, [hl]                                    ; $65b5: $7e
    ld [bc], a                                    ; $65b6: $02
    db $fc                                        ; $65b7: $fc
    sub b                                         ; $65b8: $90
    call c, $8efc                                 ; $65b9: $dc $fc $8e
    cp $63                                        ; $65bc: $fe $63
    rst $38                                       ; $65be: $ff
    cp b                                          ; $65bf: $b8
    rst $38                                       ; $65c0: $ff
    ld [hl], h                                    ; $65c1: $74
    rst $38                                       ; $65c2: $ff
    xor e                                         ; $65c3: $ab
    ld l, a                                       ; $65c4: $6f
    cp h                                          ; $65c5: $bc
    ld a, a                                       ; $65c6: $7f
    ld e, a                                       ; $65c7: $5f
    rst $28                                       ; $65c8: $ef
    ld [bc], a                                    ; $65c9: $02
    ei                                            ; $65ca: $fb
    inc d                                         ; $65cb: $14
    nop                                           ; $65cc: $00
    ld [bc], a                                    ; $65cd: $02
    ld b, $88                                     ; $65ce: $06 $88
    ld bc, $0107                                  ; $65d0: $01 $07 $01
    rlca                                          ; $65d3: $07
    dec b                                         ; $65d4: $05
    rlca                                          ; $65d5: $07
    ld [bc], a                                    ; $65d6: $02
    ld b, $02                                     ; $65d7: $06 $02
    inc b                                         ; $65d9: $04
    rst $38                                       ; $65da: $ff
    rrca                                          ; $65db: $0f
    dec b                                         ; $65dc: $05
    or $0a                                        ; $65dd: $f6 $0a
    ld a, [c]                                     ; $65df: $f2
    ld bc, $f9e2                                  ; $65e0: $01 $e2 $f9
    db $e4                                        ; $65e3: $e4
    rst $38                                       ; $65e4: $ff
    ld a, [c]                                     ; $65e5: $f2
    rst $30                                       ; $65e6: $f7
    ld a, [c]                                     ; $65e7: $f2
    rst $38                                       ; $65e8: $ff
    ld a, [c]                                     ; $65e9: $f2
    dec b                                         ; $65ea: $05
    ld [bc], a                                    ; $65eb: $02
    ld b, $91                                     ; $65ec: $06 $91
    rrca                                          ; $65ee: $0f
    add hl, bc                                    ; $65ef: $09
    rla                                           ; $65f0: $17
    jr jr_0e9_6626                                ; $65f1: $18 $33

    ld a, $77                                     ; $65f3: $3e $77
    ld e, e                                       ; $65f5: $5b
    ld h, [hl]                                    ; $65f6: $66
    ld e, c                                       ; $65f7: $59
    scf                                           ; $65f8: $37
    jr c, jr_0e9_6616                             ; $65f9: $38 $1b

    dec e                                         ; $65fb: $1d
    rla                                           ; $65fc: $17
    inc e                                         ; $65fd: $1c
    dec sp                                        ; $65fe: $3b
    inc bc                                        ; $65ff: $03

jr_0e9_6600:
    ccf                                           ; $6600: $3f
    adc d                                         ; $6601: $8a
    ld l, e                                       ; $6602: $6b
    ld [hl], a                                    ; $6603: $77
    ld a, a                                       ; $6604: $7f
    ld h, e                                       ; $6605: $63
    ld c, e                                       ; $6606: $4b
    ld [hl], a                                    ; $6607: $77
    rst $20                                       ; $6608: $e7
    rst $38                                       ; $6609: $ff
    db $db                                        ; $660a: $db
    rst $20                                       ; $660b: $e7
    inc bc                                        ; $660c: $03
    jr nc, jr_0e9_6611                            ; $660d: $30 $02

    db $10                                        ; $660f: $10
    add l                                         ; $6610: $85

jr_0e9_6611:
    jr nc, jr_0e9_664b                            ; $6611: $30 $38

    ld [$3010], sp                                ; $6613: $08 $10 $30

jr_0e9_6616:
    ld [bc], a                                    ; $6616: $02
    jr c, jr_0e9_659b                             ; $6617: $38 $82

    jr z, jr_0e9_6633                             ; $6619: $28 $18

    ld [bc], a                                    ; $661b: $02
    jr nc, jr_0e9_65a4                            ; $661c: $30 $86

    db $10                                        ; $661e: $10
    jr nc, jr_0e9_6639                            ; $661f: $30 $18

    jr z, jr_0e9_664f                             ; $6621: $28 $2c

    inc [hl]                                      ; $6623: $34
    ld [bc], a                                    ; $6624: $02
    inc a                                         ; $6625: $3c

jr_0e9_6626:
    and [hl]                                      ; $6626: $a6
    inc h                                         ; $6627: $24
    inc a                                         ; $6628: $3c
    ld a, [hl+]                                   ; $6629: $2a
    ld [hl], $ee                                  ; $662a: $36 $ee
    ld a, [c]                                     ; $662c: $f2
    sbc l                                         ; $662d: $9d
    db $e3                                        ; $662e: $e3
    ld de, $171f                                  ; $662f: $11 $1f $17
    add hl, de                                    ; $6632: $19

jr_0e9_6633:
    cp $f9                                        ; $6633: $fe $f9
    sbc d                                         ; $6635: $9a
    db $fd                                        ; $6636: $fd
    ld h, l                                       ; $6637: $65
    ld a, [hl]                                    ; $6638: $7e

jr_0e9_6639:
    dec e                                         ; $6639: $1d
    ld e, $1f                                     ; $663a: $1e $1f
    inc e                                         ; $663c: $1c
    ld [de], a                                    ; $663d: $12
    rra                                           ; $663e: $1f
    rla                                           ; $663f: $17
    dec de                                        ; $6640: $1b
    dec c                                         ; $6641: $0d
    rrca                                          ; $6642: $0f
    dec de                                        ; $6643: $1b
    dec e                                         ; $6644: $1d

jr_0e9_6645:
    jr z, @+$39                                   ; $6645: $28 $37

    ld e, d                                       ; $6647: $5a
    ld h, l                                       ; $6648: $65
    ld [hl-], a                                   ; $6649: $32
    dec a                                         ; $664a: $3d

jr_0e9_664b:
    dec c                                         ; $664b: $0d
    dec bc                                        ; $664c: $0b
    ld [bc], a                                    ; $664d: $02
    rlca                                          ; $664e: $07

jr_0e9_664f:
    inc b                                         ; $664f: $04
    nop                                           ; $6650: $00
    sub [hl]                                      ; $6651: $96
    or a                                          ; $6652: $b7
    ret                                           ; $6653: $c9


    or a                                          ; $6654: $b7
    ret                                           ; $6655: $c9


    db $dd                                        ; $6656: $dd
    db $e3                                        ; $6657: $e3
    ld a, [$c73e]                                 ; $6658: $fa $3e $c7
    ld a, a                                       ; $665b: $7f
    ldh a, [$7f]                                  ; $665c: $f0 $7f
    db $ec                                        ; $665e: $ec
    rst $38                                       ; $665f: $ff
    ei                                            ; $6660: $fb
    rst $38                                       ; $6661: $ff
    ld a, [hl]                                    ; $6662: $7e
    rst $38                                       ; $6663: $ff
    push de                                       ; $6664: $d5
    rst $38                                       ; $6665: $ff
    add a                                         ; $6666: $87
    rst $38                                       ; $6667: $ff
    ld [bc], a                                    ; $6668: $02
    ld hl, sp-$7e                                 ; $6669: $f8 $82
    ld h, b                                       ; $666b: $60
    and b                                         ; $666c: $a0
    ld [bc], a                                    ; $666d: $02
    ldh [$0c], a                                  ; $666e: $e0 $0c
    nop                                           ; $6670: $00
    ld [bc], a                                    ; $6671: $02
    jr nz, jr_0e9_6600                            ; $6672: $20 $8c

    inc e                                         ; $6674: $1c
    inc a                                         ; $6675: $3c
    ld [bc], a                                    ; $6676: $02
    ld a, $01                                     ; $6677: $3e $01
    ccf                                           ; $6679: $3f
    ld sp, $0e3f                                  ; $667a: $31 $3f $0e
    ld a, $34                                     ; $667d: $3e $34
    inc a                                         ; $667f: $3c
    ld [bc], a                                    ; $6680: $02
    ld [$0004], sp                                ; $6681: $08 $04 $00
    rst $38                                       ; $6684: $ff
    rrca                                          ; $6685: $0f
    dec b                                         ; $6686: $05
    or $0a                                        ; $6687: $f6 $0a
    ld a, [c]                                     ; $6689: $f2
    ld bc, $f9e3                                  ; $668a: $01 $e3 $f9
    push hl                                       ; $668d: $e5
    rst $38                                       ; $668e: $ff
    di                                            ; $668f: $f3
    rst $30                                       ; $6690: $f7
    di                                            ; $6691: $f3
    rst $38                                       ; $6692: $ff
    di                                            ; $6693: $f3
    dec b                                         ; $6694: $05
    ld [bc], a                                    ; $6695: $02
    ld b, $91                                     ; $6696: $06 $91
    rrca                                          ; $6698: $0f
    add hl, bc                                    ; $6699: $09
    rla                                           ; $669a: $17
    jr jr_0e9_66d0                                ; $669b: $18 $33

    ld a, $77                                     ; $669d: $3e $77
    ld e, e                                       ; $669f: $5b
    ld h, [hl]                                    ; $66a0: $66
    ld e, c                                       ; $66a1: $59
    scf                                           ; $66a2: $37
    jr c, jr_0e9_66c0                             ; $66a3: $38 $1b

    dec e                                         ; $66a5: $1d
    rla                                           ; $66a6: $17
    inc e                                         ; $66a7: $1c
    dec sp                                        ; $66a8: $3b
    inc bc                                        ; $66a9: $03
    ccf                                           ; $66aa: $3f
    adc d                                         ; $66ab: $8a
    ld l, e                                       ; $66ac: $6b
    ld [hl], a                                    ; $66ad: $77
    ld a, a                                       ; $66ae: $7f
    ld h, e                                       ; $66af: $63
    ld c, e                                       ; $66b0: $4b
    ld [hl], a                                    ; $66b1: $77
    rst $20                                       ; $66b2: $e7
    rst $38                                       ; $66b3: $ff
    db $db                                        ; $66b4: $db
    rst $20                                       ; $66b5: $e7
    inc bc                                        ; $66b6: $03
    jr nc, jr_0e9_66bb                            ; $66b7: $30 $02

    db $10                                        ; $66b9: $10
    add l                                         ; $66ba: $85

jr_0e9_66bb:
    jr nc, jr_0e9_66f5                            ; $66bb: $30 $38

    ld [$3010], sp                                ; $66bd: $08 $10 $30

jr_0e9_66c0:
    ld [bc], a                                    ; $66c0: $02
    jr c, jr_0e9_6645                             ; $66c1: $38 $82

    jr z, jr_0e9_66dd                             ; $66c3: $28 $18

    ld [bc], a                                    ; $66c5: $02
    jr nc, jr_0e9_664b                            ; $66c6: $30 $83

    jr @+$3a                                      ; $66c8: $18 $38

    inc a                                         ; $66ca: $3c
    ld [bc], a                                    ; $66cb: $02
    inc h                                         ; $66cc: $24
    inc bc                                        ; $66cd: $03
    inc a                                         ; $66ce: $3c
    and h                                         ; $66cf: $a4

jr_0e9_66d0:
    inc h                                         ; $66d0: $24
    inc a                                         ; $66d1: $3c
    ld a, [hl+]                                   ; $66d2: $2a
    ld [hl], $dd                                  ; $66d3: $36 $dd
    db $e3                                        ; $66d5: $e3
    rra                                           ; $66d6: $1f
    pop hl                                        ; $66d7: $e1
    ld de, $771f                                  ; $66d8: $11 $1f $77
    ld a, c                                       ; $66db: $79
    sbc [hl]                                      ; $66dc: $9e

jr_0e9_66dd:
    ld sp, hl                                     ; $66dd: $f9
    ld l, d                                       ; $66de: $6a
    ld a, l                                       ; $66df: $7d
    dec a                                         ; $66e0: $3d
    ld a, $1d                                     ; $66e1: $3e $1d
    ld e, $1f                                     ; $66e3: $1e $1f
    inc e                                         ; $66e5: $1c
    ld d, $1f                                     ; $66e6: $16 $1f
    dec sp                                        ; $66e8: $3b
    ccf                                           ; $66e9: $3f
    ld d, a                                       ; $66ea: $57
    ld l, l                                       ; $66eb: $6d
    ld [hl], b                                    ; $66ec: $70
    ld c, a                                       ; $66ed: $4f
    dec h                                         ; $66ee: $25
    dec sp                                        ; $66ef: $3b
    dec l                                         ; $66f0: $2d
    inc sp                                        ; $66f1: $33
    ld [de], a                                    ; $66f2: $12
    rra                                           ; $66f3: $1f

jr_0e9_66f4:
    ld [bc], a                                    ; $66f4: $02

jr_0e9_66f5:
    rrca                                          ; $66f5: $0f
    ld b, $00                                     ; $66f6: $06 $00
    sbc b                                         ; $66f8: $98
    or a                                          ; $66f9: $b7
    ret                                           ; $66fa: $c9


    cp a                                          ; $66fb: $bf
    pop bc                                        ; $66fc: $c1
    sbc $e2                                       ; $66fd: $de $e2
    db $f4                                        ; $66ff: $f4
    inc a                                         ; $6700: $3c
    xor $7e                                       ; $6701: $ee $7e
    pop bc                                        ; $6703: $c1
    ld a, a                                       ; $6704: $7f
    ld hl, sp-$01                                 ; $6705: $f8 $ff
    halt                                          ; $6707: $76
    rst $38                                       ; $6708: $ff
    sbc c                                         ; $6709: $99
    rst $38                                       ; $670a: $ff
    ld c, $ff                                     ; $670b: $0e $ff
    sub e                                         ; $670d: $93
    rst $38                                       ; $670e: $ff
    cp $7e                                        ; $670f: $fe $7e
    ld [bc], a                                    ; $6711: $02
    ret nz                                        ; $6712: $c0

    stop                                          ; $6713: $10 $00
    ld [bc], a                                    ; $6715: $02
    jr nz, @-$72                                  ; $6716: $20 $8c

    jr jr_0e9_6752                                ; $6718: $18 $38

    ld b, $3e                                     ; $671a: $06 $3e
    inc bc                                        ; $671c: $03
    ccf                                           ; $671d: $3f
    ld [hl-], a                                   ; $671e: $32
    ld a, $0a                                     ; $671f: $3e $0a
    ld a, $2c                                     ; $6721: $3e $2c
    inc a                                         ; $6723: $3c
    ld [bc], a                                    ; $6724: $02
    db $10                                        ; $6725: $10
    ld [bc], a                                    ; $6726: $02
    nop                                           ; $6727: $00
    rst $38                                       ; $6728: $ff
    rrca                                          ; $6729: $0f
    dec b                                         ; $672a: $05
    or $0a                                        ; $672b: $f6 $0a
    ld a, [c]                                     ; $672d: $f2
    ld bc, $f9e2                                  ; $672e: $01 $e2 $f9
    db $e4                                        ; $6731: $e4
    cp $f2                                        ; $6732: $fe $f2
    rst $30                                       ; $6734: $f7
    ld a, [c]                                     ; $6735: $f2
    rst $38                                       ; $6736: $ff
    ld a, [c]                                     ; $6737: $f2
    ld [bc], a                                    ; $6738: $02
    ld [bc], a                                    ; $6739: $02
    ld b, $91                                     ; $673a: $06 $91
    rrca                                          ; $673c: $0f
    add hl, bc                                    ; $673d: $09
    inc de                                        ; $673e: $13
    inc e                                         ; $673f: $1c
    ld [hl-], a                                   ; $6740: $32
    ccf                                           ; $6741: $3f
    ld a, l                                       ; $6742: $7d
    ld c, e                                       ; $6743: $4b
    ld d, a                                       ; $6744: $57
    ld l, b                                       ; $6745: $68
    scf                                           ; $6746: $37
    jr c, jr_0e9_675b                             ; $6747: $38 $12

    dec e                                         ; $6749: $1d
    dec d                                         ; $674a: $15
    ld e, $3b                                     ; $674b: $1e $3b
    inc bc                                        ; $674d: $03
    ccf                                           ; $674e: $3f
    adc d                                         ; $674f: $8a
    ld a, e                                       ; $6750: $7b
    ld h, a                                       ; $6751: $67

jr_0e9_6752:
    ld e, a                                       ; $6752: $5f
    ld h, e                                       ; $6753: $63
    ld l, a                                       ; $6754: $6f
    ld [hl], a                                    ; $6755: $77
    rst $08                                       ; $6756: $cf
    rst $38                                       ; $6757: $ff
    rst $18                                       ; $6758: $df
    rst $20                                       ; $6759: $e7
    ld [bc], a                                    ; $675a: $02

jr_0e9_675b:
    db $10                                        ; $675b: $10
    add c                                         ; $675c: $81
    jr @+$04                                      ; $675d: $18 $02

    ld [$1885], sp                                ; $675f: $08 $85 $18
    inc c                                         ; $6762: $0c
    inc d                                         ; $6763: $14
    jr jr_0e9_676e                                ; $6764: $18 $08

    ld [bc], a                                    ; $6766: $02
    inc e                                         ; $6767: $1c
    add d                                         ; $6768: $82
    inc d                                         ; $6769: $14
    inc c                                         ; $676a: $0c
    ld [bc], a                                    ; $676b: $02
    jr jr_0e9_66f4                                ; $676c: $18 $86

jr_0e9_676e:
    ld [$0c18], sp                                ; $676e: $08 $18 $0c
    inc d                                         ; $6771: $14
    ld d, $1a                                     ; $6772: $16 $1a
    ld [bc], a                                    ; $6774: $02
    inc e                                         ; $6775: $1c
    sbc c                                         ; $6776: $99
    ld [de], a                                    ; $6777: $12
    ld e, $16                                     ; $6778: $1e $16
    ld a, [de]                                    ; $677a: $1a
    rst $30                                       ; $677b: $f7
    ld sp, hl                                     ; $677c: $f9
    rst $08                                       ; $677d: $cf
    pop af                                        ; $677e: $f1
    ld e, d                                       ; $677f: $5a
    ld d, [hl]                                    ; $6780: $56
    cp h                                          ; $6781: $bc
    ld a, [c]                                     ; $6782: $f2
    ld d, l                                       ; $6783: $55
    ld a, e                                       ; $6784: $7b
    add hl, hl                                    ; $6785: $29
    ccf                                           ; $6786: $3f
    dec e                                         ; $6787: $1d
    ld e, $16                                     ; $6788: $1e $16
    add hl, de                                    ; $678a: $19
    ld a, [de]                                    ; $678b: $1a
    dec e                                         ; $678c: $1d
    rra                                           ; $678d: $1f
    dec e                                         ; $678e: $1d
    dec de                                        ; $678f: $1b
    inc bc                                        ; $6790: $03
    rra                                           ; $6791: $1f
    adc b                                         ; $6792: $88
    ld c, $0f                                     ; $6793: $0e $0f
    inc c                                         ; $6795: $0c
    rrca                                          ; $6796: $0f
    add hl, bc                                    ; $6797: $09
    ld c, $17                                     ; $6798: $0e $17
    rra                                           ; $679a: $1f
    ld [bc], a                                    ; $679b: $02
    rrca                                          ; $679c: $0f
    ld b, $00                                     ; $679d: $06 $00
    adc b                                         ; $679f: $88
    scf                                           ; $67a0: $37
    ret                                           ; $67a1: $c9


    scf                                           ; $67a2: $37
    ret                                           ; $67a3: $c9


    sbc l                                         ; $67a4: $9d
    db $e3                                        ; $67a5: $e3
    pop hl                                        ; $67a6: $e1
    ld a, a                                       ; $67a7: $7f
    ld [bc], a                                    ; $67a8: $02
    cp $8e                                        ; $67a9: $fe $8e
    sbc h                                         ; $67ab: $9c
    db $fc                                        ; $67ac: $fc
    adc $fe                                       ; $67ad: $ce $fe
    db $e3                                        ; $67af: $e3
    rst $38                                       ; $67b0: $ff
    jr c, @+$01                                   ; $67b1: $38 $ff

    or h                                          ; $67b3: $b4
    ld a, a                                       ; $67b4: $7f
    cp e                                          ; $67b5: $bb
    ld a, a                                       ; $67b6: $7f
    ld e, h                                       ; $67b7: $5c
    rst $28                                       ; $67b8: $ef
    ld [bc], a                                    ; $67b9: $02
    rst $38                                       ; $67ba: $ff
    ld [bc], a                                    ; $67bb: $02
    inc bc                                        ; $67bc: $03
    inc d                                         ; $67bd: $14
    nop                                           ; $67be: $00
    ld [bc], a                                    ; $67bf: $02
    ld b, $88                                     ; $67c0: $06 $88
    ld bc, $0107                                  ; $67c2: $01 $07 $01
    rlca                                          ; $67c5: $07
    dec b                                         ; $67c6: $05
    rlca                                          ; $67c7: $07
    ld [bc], a                                    ; $67c8: $02
    ld b, $02                                     ; $67c9: $06 $02
    inc b                                         ; $67cb: $04
    rst $38                                       ; $67cc: $ff
    rrca                                          ; $67cd: $0f
    dec b                                         ; $67ce: $05
    or $0a                                        ; $67cf: $f6 $0a
    ld a, [c]                                     ; $67d1: $f2
    ld bc, $f7e2                                  ; $67d2: $01 $e2 $f7
    ld [c], a                                     ; $67d5: $e2
    cp $f2                                        ; $67d6: $fe $f2
    or $f2                                        ; $67d8: $f6 $f2
    cp $f2                                        ; $67da: $fe $f2
    nop                                           ; $67dc: $00
    ld [bc], a                                    ; $67dd: $02
    ld bc, $0391                                  ; $67de: $01 $91 $03
    ld [bc], a                                    ; $67e1: $02
    inc b                                         ; $67e2: $04
    rlca                                          ; $67e3: $07
    ld b, $07                                     ; $67e4: $06 $07
    rrca                                          ; $67e6: $0f
    add hl, bc                                    ; $67e7: $09
    dec bc                                        ; $67e8: $0b
    inc c                                         ; $67e9: $0c
    rlca                                          ; $67ea: $07
    ld b, $04                                     ; $67eb: $06 $04
    rlca                                          ; $67ed: $07
    dec b                                         ; $67ee: $05
    rlca                                          ; $67ef: $07
    ld c, $03                                     ; $67f0: $0e $03
    rrca                                          ; $67f2: $0f
    adc d                                         ; $67f3: $8a
    dec e                                         ; $67f4: $1d
    dec de                                        ; $67f5: $1b
    ld e, $11                                     ; $67f6: $1e $11
    dec [hl]                                      ; $67f8: $35
    dec sp                                        ; $67f9: $3b
    cpl                                           ; $67fa: $2f
    scf                                           ; $67fb: $37
    xor a                                         ; $67fc: $af
    or e                                          ; $67fd: $b3
    ld [bc], a                                    ; $67fe: $02
    ld b, b                                       ; $67ff: $40
    sub b                                         ; $6800: $90
    ld h, b                                       ; $6801: $60
    jr nz, jr_0e9_6834                            ; $6802: $20 $30

    ld d, b                                       ; $6804: $50
    jr c, jr_0e9_686f                             ; $6805: $38 $68

    jr jr_0e9_6881                                ; $6807: $18 $78

    ld l, h                                       ; $6809: $6c
    inc d                                         ; $680a: $14
    ld a, b                                       ; $680b: $78
    ld [$1c7c], sp                                ; $680c: $08 $7c $1c
    inc [hl]                                      ; $680f: $34
    ld c, h                                       ; $6810: $4c
    ld [bc], a                                    ; $6811: $02
    ld a, b                                       ; $6812: $78
    add [hl]                                      ; $6813: $86
    ld l, b                                       ; $6814: $68
    ld a, b                                       ; $6815: $78
    ld a, h                                       ; $6816: $7c
    ld h, h                                       ; $6817: $64
    ld h, [hl]                                    ; $6818: $66
    ld a, d                                       ; $6819: $7a
    ld [bc], a                                    ; $681a: $02
    ld a, [hl]                                    ; $681b: $7e
    sub h                                         ; $681c: $94
    ld h, d                                       ; $681d: $62
    ld a, [hl]                                    ; $681e: $7e
    ld h, l                                       ; $681f: $65
    ld a, e                                       ; $6820: $7b
    cp e                                          ; $6821: $bb
    rst $38                                       ; $6822: $ff
    ld d, l                                       ; $6823: $55
    ld a, e                                       ; $6824: $7b
    scf                                           ; $6825: $37
    add hl, sp                                    ; $6826: $39
    dec d                                         ; $6827: $15
    dec de                                        ; $6828: $1b
    add hl, bc                                    ; $6829: $09

jr_0e9_682a:
    ld c, $0b                                     ; $682a: $0e $0b
    inc c                                         ; $682c: $0c
    ld c, $09                                     ; $682d: $0e $09
    dec bc                                        ; $682f: $0b
    dec c                                         ; $6830: $0d

jr_0e9_6831:
    inc b                                         ; $6831: $04
    rrca                                          ; $6832: $0f
    adc b                                         ; $6833: $88

jr_0e9_6834:
    inc d                                         ; $6834: $14
    rra                                           ; $6835: $1f

jr_0e9_6836:
    inc l                                         ; $6836: $2c
    inc sp                                        ; $6837: $33
    jr jr_0e9_6859                                ; $6838: $18 $1f

    rlca                                          ; $683a: $07
    inc b                                         ; $683b: $04
    ld [bc], a                                    ; $683c: $02
    inc bc                                        ; $683d: $03

jr_0e9_683e:
    ld [bc], a                                    ; $683e: $02
    nop                                           ; $683f: $00
    adc h                                         ; $6840: $8c
    rst $28                                       ; $6841: $ef
    pop af                                        ; $6842: $f1
    sbc $e1                                       ; $6843: $de $e1
    sbc e                                         ; $6845: $9b
    db $e4                                        ; $6846: $e4
    sbc e                                         ; $6847: $9b
    db $e4                                        ; $6848: $e4
    adc $f1                                       ; $6849: $ce $f1
    ld a, c                                       ; $684b: $79
    rst $38                                       ; $684c: $ff
    ld [bc], a                                    ; $684d: $02
    cp $90                                        ; $684e: $fe $90
    ld a, $fe                                     ; $6850: $3e $fe
    adc h                                         ; $6852: $8c
    db $fc                                        ; $6853: $fc
    add $fe                                       ; $6854: $c6 $fe
    pop af                                        ; $6856: $f1
    rst $38                                       ; $6857: $ff
    xor b                                         ; $6858: $a8

jr_0e9_6859:
    rst $38                                       ; $6859: $ff
    ld [hl], h                                    ; $685a: $74
    rst $18                                       ; $685b: $df
    jp c, $edff                                   ; $685c: $da $ff $ed

    rst $18                                       ; $685f: $df
    ld [bc], a                                    ; $6860: $02
    ld [hl-], a                                   ; $6861: $32
    ld [bc], a                                    ; $6862: $02
    nop                                           ; $6863: $00
    ld [$0a02], sp                                ; $6864: $08 $02 $0a
    nop                                           ; $6867: $00
    ld [bc], a                                    ; $6868: $02
    ld [bc], a                                    ; $6869: $02
    add h                                         ; $686a: $84
    ld bc, $0103                                  ; $686b: $01 $03 $01
    inc bc                                        ; $686e: $03

jr_0e9_686f:
    inc b                                         ; $686f: $04
    ld [bc], a                                    ; $6870: $02
    ld [bc], a                                    ; $6871: $02
    nop                                           ; $6872: $00
    rst $38                                       ; $6873: $ff
    rrca                                          ; $6874: $0f
    dec b                                         ; $6875: $05
    or $0a                                        ; $6876: $f6 $0a
    ld a, [c]                                     ; $6878: $f2
    ld bc, $f9e3                                  ; $6879: $01 $e3 $f9
    push hl                                       ; $687c: $e5
    rst $38                                       ; $687d: $ff
    di                                            ; $687e: $f3
    rst $30                                       ; $687f: $f7
    di                                            ; $6880: $f3

jr_0e9_6881:
    rst $38                                       ; $6881: $ff
    di                                            ; $6882: $f3
    ld bc, $0602                                  ; $6883: $01 $02 $06
    sub d                                         ; $6886: $92
    rrca                                          ; $6887: $0f
    add hl, bc                                    ; $6888: $09
    ld de, $191e                                  ; $6889: $11 $1e $19
    rra                                           ; $688c: $1f
    inc a                                         ; $688d: $3c
    daa                                           ; $688e: $27
    cpl                                           ; $688f: $2f
    jr nc, jr_0e9_68b1                            ; $6890: $30 $1f

    jr @+$15                                      ; $6892: $18 $13

    inc e                                         ; $6894: $1c
    dec d                                         ; $6895: $15
    ld e, $3b                                     ; $6896: $1e $3b
    ccf                                           ; $6898: $3f
    inc bc                                        ; $6899: $03
    ld a, a                                       ; $689a: $7f
    adc c                                         ; $689b: $89
    ld h, a                                       ; $689c: $67
    ld e, a                                       ; $689d: $5f
    ld h, e                                       ; $689e: $63
    ld d, a                                       ; $689f: $57
    ld l, a                                       ; $68a0: $6f
    rst $18                                       ; $68a1: $df
    rst $38                                       ; $68a2: $ff
    cp a                                          ; $68a3: $bf
    rst $08                                       ; $68a4: $cf
    ld [bc], a                                    ; $68a5: $02
    jr nz, jr_0e9_682a                            ; $68a6: $20 $82

    jr nc, @+$12                                  ; $68a8: $30 $10

    ld [bc], a                                    ; $68aa: $02
    jr nc, jr_0e9_6831                            ; $68ab: $30 $84

    jr jr_0e9_68d7                                ; $68ad: $18 $28

    jr nc, jr_0e9_68c1                            ; $68af: $30 $10

jr_0e9_68b1:
    ld [bc], a                                    ; $68b1: $02
    jr c, jr_0e9_6836                             ; $68b2: $38 $82

    jr z, jr_0e9_68ce                             ; $68b4: $28 $18

    ld [bc], a                                    ; $68b6: $02
    jr nc, jr_0e9_683e                            ; $68b7: $30 $85

    jr jr_0e9_68f3                                ; $68b9: $18 $38

    inc e                                         ; $68bb: $1c
    inc h                                         ; $68bc: $24
    inc b                                         ; $68bd: $04
    inc bc                                        ; $68be: $03
    inc a                                         ; $68bf: $3c
    sub c                                         ; $68c0: $91

jr_0e9_68c1:
    inc b                                         ; $68c1: $04
    inc a                                         ; $68c2: $3c
    ld a, [de]                                    ; $68c3: $1a
    ld h, $dd                                     ; $68c4: $26 $dd
    db $e3                                        ; $68c6: $e3
    ccf                                           ; $68c7: $3f
    pop bc                                        ; $68c8: $c1
    rst $20                                       ; $68c9: $e7
    rst $38                                       ; $68ca: $ff
    xor e                                         ; $68cb: $ab
    rst $30                                       ; $68cc: $f7
    ld l, a                                       ; $68cd: $6f

jr_0e9_68ce:
    ld [hl], e                                    ; $68ce: $73
    dec hl                                        ; $68cf: $2b
    scf                                           ; $68d0: $37
    inc de                                        ; $68d1: $13
    ld [bc], a                                    ; $68d2: $02
    dec e                                         ; $68d3: $1d
    sub c                                         ; $68d4: $91
    ld [de], a                                    ; $68d5: $12
    dec d                                         ; $68d6: $15

jr_0e9_68d7:
    dec de                                        ; $68d7: $1b
    ccf                                           ; $68d8: $3f
    dec sp                                        ; $68d9: $3b
    ld e, a                                       ; $68da: $5f
    ld a, a                                       ; $68db: $7f
    ld d, d                                       ; $68dc: $52

jr_0e9_68dd:
    ld l, a                                       ; $68dd: $6f
    ld a, [hl-]                                   ; $68de: $3a
    daa                                           ; $68df: $27
    ld [hl+], a                                   ; $68e0: $22
    ccf                                           ; $68e1: $3f
    rra                                           ; $68e2: $1f
    ld e, $05                                     ; $68e3: $1e $05
    ld b, $02                                     ; $68e5: $06 $02
    inc bc                                        ; $68e7: $03
    ld b, $00                                     ; $68e8: $06 $00
    add a                                         ; $68ea: $87
    scf                                           ; $68eb: $37
    ret                                           ; $68ec: $c9


    ccf                                           ; $68ed: $3f
    pop bc                                        ; $68ee: $c1
    sbc [hl]                                      ; $68ef: $9e
    ld [c], a                                     ; $68f0: $e2
    db $f4                                        ; $68f1: $f4
    inc bc                                        ; $68f2: $03

jr_0e9_68f3:
    db $fc                                        ; $68f3: $fc
    adc [hl]                                      ; $68f4: $8e
    inc a                                         ; $68f5: $3c
    db $fc                                        ; $68f6: $fc
    inc c                                         ; $68f7: $0c
    db $fc                                        ; $68f8: $fc
    jp $70ff                                      ; $68f9: $c3 $ff $70


    rst $38                                       ; $68fc: $ff
    xor h                                         ; $68fd: $ac
    ld a, a                                       ; $68fe: $7f
    or [hl]                                       ; $68ff: $b6
    ld e, a                                       ; $6900: $5f
    ld e, c                                       ; $6901: $59
    cp a                                          ; $6902: $bf
    ld [bc], a                                    ; $6903: $02
    rst $38                                       ; $6904: $ff
    ld d, $00                                     ; $6905: $16 $00
    ld [bc], a                                    ; $6907: $02
    ld [bc], a                                    ; $6908: $02
    add c                                         ; $6909: $81
    ld bc, $0303                                  ; $690a: $01 $03 $03
    ld [bc], a                                    ; $690d: $02
    ld [bc], a                                    ; $690e: $02
    inc b                                         ; $690f: $04
    nop                                           ; $6910: $00
    rst $38                                       ; $6911: $ff
    rrca                                          ; $6912: $0f
    dec b                                         ; $6913: $05
    or $0a                                        ; $6914: $f6 $0a
    ld a, [c]                                     ; $6916: $f2
    ld bc, $f9e2                                  ; $6917: $01 $e2 $f9
    db $e4                                        ; $691a: $e4
    cp $f2                                        ; $691b: $fe $f2
    rst $30                                       ; $691d: $f7
    ld a, [c]                                     ; $691e: $f2
    rst $38                                       ; $691f: $ff
    ld a, [c]                                     ; $6920: $f2
    ld [bc], a                                    ; $6921: $02
    ld [bc], a                                    ; $6922: $02
    ld b, $91                                     ; $6923: $06 $91
    rrca                                          ; $6925: $0f
    add hl, bc                                    ; $6926: $09
    inc de                                        ; $6927: $13
    inc e                                         ; $6928: $1c
    ld [hl-], a                                   ; $6929: $32
    ccf                                           ; $692a: $3f
    ld a, l                                       ; $692b: $7d
    ld c, e                                       ; $692c: $4b
    ld d, a                                       ; $692d: $57
    ld l, b                                       ; $692e: $68
    scf                                           ; $692f: $37
    jr c, jr_0e9_6944                             ; $6930: $38 $12

    dec e                                         ; $6932: $1d
    dec d                                         ; $6933: $15
    ld e, $3b                                     ; $6934: $1e $3b
    inc bc                                        ; $6936: $03
    ccf                                           ; $6937: $3f
    adc d                                         ; $6938: $8a
    ld a, e                                       ; $6939: $7b
    ld h, a                                       ; $693a: $67
    ld e, a                                       ; $693b: $5f
    ld h, e                                       ; $693c: $63
    ld l, a                                       ; $693d: $6f
    ld [hl], a                                    ; $693e: $77
    rst $08                                       ; $693f: $cf
    rst $38                                       ; $6940: $ff
    rst $18                                       ; $6941: $df
    rst $20                                       ; $6942: $e7
    ld [bc], a                                    ; $6943: $02

jr_0e9_6944:
    db $10                                        ; $6944: $10
    add c                                         ; $6945: $81
    jr @+$04                                      ; $6946: $18 $02

    ld [$1885], sp                                ; $6948: $08 $85 $18
    inc c                                         ; $694b: $0c
    inc d                                         ; $694c: $14
    jr jr_0e9_6957                                ; $694d: $18 $08

    ld [bc], a                                    ; $694f: $02
    inc e                                         ; $6950: $1c
    add d                                         ; $6951: $82
    inc d                                         ; $6952: $14
    inc c                                         ; $6953: $0c
    ld [bc], a                                    ; $6954: $02
    jr jr_0e9_68dd                                ; $6955: $18 $86

jr_0e9_6957:
    ld [$0c18], sp                                ; $6957: $08 $18 $0c
    inc d                                         ; $695a: $14
    ld d, $1a                                     ; $695b: $16 $1a
    ld [bc], a                                    ; $695d: $02
    inc e                                         ; $695e: $1c
    and [hl]                                      ; $695f: $a6
    ld [de], a                                    ; $6960: $12
    ld e, $16                                     ; $6961: $1e $16
    ld a, [de]                                    ; $6963: $1a
    rst $30                                       ; $6964: $f7
    ld sp, hl                                     ; $6965: $f9
    rst $08                                       ; $6966: $cf
    pop af                                        ; $6967: $f1
    ld e, d                                       ; $6968: $5a
    ld d, [hl]                                    ; $6969: $56
    cp h                                          ; $696a: $bc
    ld a, [c]                                     ; $696b: $f2
    ld d, l                                       ; $696c: $55
    ld a, e                                       ; $696d: $7b
    add hl, hl                                    ; $696e: $29
    ccf                                           ; $696f: $3f
    dec e                                         ; $6970: $1d
    ld e, $16                                     ; $6971: $1e $16
    add hl, de                                    ; $6973: $19
    ld a, [de]                                    ; $6974: $1a
    dec e                                         ; $6975: $1d
    rra                                           ; $6976: $1f
    dec d                                         ; $6977: $15
    inc de                                        ; $6978: $13
    rra                                           ; $6979: $1f
    dec bc                                        ; $697a: $0b
    inc c                                         ; $697b: $0c
    dec b                                         ; $697c: $05
    ld b, $0c                                     ; $697d: $06 $0c
    rrca                                          ; $697f: $0f
    ld a, [bc]                                    ; $6980: $0a
    dec c                                         ; $6981: $0d
    ld c, $09                                     ; $6982: $0e $09
    dec d                                         ; $6984: $15
    ld a, [de]                                    ; $6985: $1a
    ld [bc], a                                    ; $6986: $02
    rrca                                          ; $6987: $0f
    inc b                                         ; $6988: $04
    nop                                           ; $6989: $00
    adc b                                         ; $698a: $88
    scf                                           ; $698b: $37
    ret                                           ; $698c: $c9


    scf                                           ; $698d: $37
    ret                                           ; $698e: $c9


    sbc l                                         ; $698f: $9d
    db $e3                                        ; $6990: $e3
    pop hl                                        ; $6991: $e1
    ld a, a                                       ; $6992: $7f
    ld [bc], a                                    ; $6993: $02
    cp $90                                        ; $6994: $fe $90
    sbc h                                         ; $6996: $9c
    db $fc                                        ; $6997: $fc
    adc [hl]                                      ; $6998: $8e
    cp $63                                        ; $6999: $fe $63
    rst $38                                       ; $699b: $ff
    cp b                                          ; $699c: $b8
    rst $38                                       ; $699d: $ff
    ld [hl], h                                    ; $699e: $74
    rst $38                                       ; $699f: $ff
    cp e                                          ; $69a0: $bb
    ld a, a                                       ; $69a1: $7f
    cp h                                          ; $69a2: $bc
    ld a, a                                       ; $69a3: $7f
    ld e, a                                       ; $69a4: $5f
    rst $28                                       ; $69a5: $ef
    ld [bc], a                                    ; $69a6: $02
    ei                                            ; $69a7: $fb
    inc d                                         ; $69a8: $14
    nop                                           ; $69a9: $00
    ld [bc], a                                    ; $69aa: $02
    ld b, $88                                     ; $69ab: $06 $88
    ld bc, $0107                                  ; $69ad: $01 $07 $01
    rlca                                          ; $69b0: $07
    dec b                                         ; $69b1: $05
    rlca                                          ; $69b2: $07
    ld [bc], a                                    ; $69b3: $02
    ld b, $02                                     ; $69b4: $06 $02
    inc b                                         ; $69b6: $04
    rst $38                                       ; $69b7: $ff
    dec bc                                        ; $69b8: $0b
    inc bc                                        ; $69b9: $03
    ld sp, hl                                     ; $69ba: $f9
    ld [$01f2], sp                                ; $69bb: $08 $f2 $01
    ldh a, [$fb]                                  ; $69be: $f0 $fb
    pop af                                        ; $69c0: $f1
    cp $00                                        ; $69c1: $fe $00
    db $fc                                        ; $69c3: $fc
    ld [bc], a                                    ; $69c4: $02
    rra                                           ; $69c5: $1f
    sbc e                                         ; $69c6: $9b
    ld a, [hl+]                                   ; $69c7: $2a
    ccf                                           ; $69c8: $3f
    ld e, a                                       ; $69c9: $5f
    ld a, a                                       ; $69ca: $7f
    ld l, h                                       ; $69cb: $6c
    ld a, a                                       ; $69cc: $7f
    ld d, [hl]                                    ; $69cd: $56
    ld a, a                                       ; $69ce: $7f
    xor a                                         ; $69cf: $af
    rst $38                                       ; $69d0: $ff
    xor b                                         ; $69d1: $a8
    rst $38                                       ; $69d2: $ff
    xor b                                         ; $69d3: $a8
    rst $38                                       ; $69d4: $ff
    or [hl]                                       ; $69d5: $b6
    rst $38                                       ; $69d6: $ff
    sbc d                                         ; $69d7: $9a
    rst $38                                       ; $69d8: $ff
    adc h                                         ; $69d9: $8c
    rst $38                                       ; $69da: $ff
    adc [hl]                                      ; $69db: $8e
    rst $38                                       ; $69dc: $ff
    ld e, a                                       ; $69dd: $5f
    ld a, a                                       ; $69de: $7f
    ld c, [hl]                                    ; $69df: $4e
    ld a, a                                       ; $69e0: $7f
    ld a, [hl+]                                   ; $69e1: $2a
    inc bc                                        ; $69e2: $03
    dec sp                                        ; $69e3: $3b
    ld [bc], a                                    ; $69e4: $02
    inc b                                         ; $69e5: $04
    add c                                         ; $69e6: $81
    ld [bc], a                                    ; $69e7: $02
    inc bc                                        ; $69e8: $03
    ld b, $94                                     ; $69e9: $06 $94
    ld [bc], a                                    ; $69eb: $02
    ld b, $01                                     ; $69ec: $06 $01
    rlca                                          ; $69ee: $07
    dec b                                         ; $69ef: $05
    rlca                                          ; $69f0: $07
    ld bc, $0107                                  ; $69f1: $01 $07 $01
    rlca                                          ; $69f4: $07
    ld bc, $0107                                  ; $69f5: $01 $07 $01
    rlca                                          ; $69f8: $07
    ld bc, $0207                                  ; $69f9: $01 $07 $02
    ld b, $02                                     ; $69fc: $06 $02
    ld b, $04                                     ; $69fe: $06 $04
    inc b                                         ; $6a00: $04
    add d                                         ; $6a01: $82
    ld d, h                                       ; $6a02: $54
    call c, Call_0e9_4002                         ; $6a03: $dc $02 $40
    ld [bc], a                                    ; $6a06: $02
    ld [hl], a                                    ; $6a07: $77
    inc e                                         ; $6a08: $1c
    nop                                           ; $6a09: $00
    rst $38                                       ; $6a0a: $ff
    add hl, bc                                    ; $6a0b: $09
    ld [bc], a                                    ; $6a0c: $02
    ld sp, hl                                     ; $6a0d: $f9
    ld [$01f2], sp                                ; $6a0e: $08 $f2 $01
    pop af                                        ; $6a11: $f1
    ei                                            ; $6a12: $fb
    ld a, [c]                                     ; $6a13: $f2
    cp $02                                        ; $6a14: $fe $02
    rra                                           ; $6a16: $1f
    ld [bc], a                                    ; $6a17: $02
    ld a, a                                       ; $6a18: $7f
    sbc h                                         ; $6a19: $9c
    ld l, b                                       ; $6a1a: $68
    ld a, a                                       ; $6a1b: $7f
    ld d, h                                       ; $6a1c: $54
    ld a, a                                       ; $6a1d: $7f
    xor b                                         ; $6a1e: $a8
    rst $38                                       ; $6a1f: $ff
    xor a                                         ; $6a20: $af
    rst $38                                       ; $6a21: $ff
    xor b                                         ; $6a22: $a8
    rst $38                                       ; $6a23: $ff
    or [hl]                                       ; $6a24: $b6
    rst $38                                       ; $6a25: $ff
    sbc d                                         ; $6a26: $9a
    rst $38                                       ; $6a27: $ff
    adc h                                         ; $6a28: $8c
    rst $38                                       ; $6a29: $ff
    adc [hl]                                      ; $6a2a: $8e
    rst $38                                       ; $6a2b: $ff
    cp a                                          ; $6a2c: $bf
    rst $38                                       ; $6a2d: $ff
    ld c, a                                       ; $6a2e: $4f
    ld a, a                                       ; $6a2f: $7f
    ld a, d                                       ; $6a30: $7a
    ld a, e                                       ; $6a31: $7b
    dec hl                                        ; $6a32: $2b
    dec sp                                        ; $6a33: $3b
    ld [hl-], a                                   ; $6a34: $32
    inc sp                                        ; $6a35: $33
    inc b                                         ; $6a36: $04
    ld b, $96                                     ; $6a37: $06 $96
    ld [bc], a                                    ; $6a39: $02
    ld b, $03                                     ; $6a3a: $06 $03
    rlca                                          ; $6a3c: $07
    ld bc, $0507                                  ; $6a3d: $01 $07 $05
    rlca                                          ; $6a40: $07
    ld bc, $0107                                  ; $6a41: $01 $07 $01
    rlca                                          ; $6a44: $07
    ld bc, $0307                                  ; $6a45: $01 $07 $03
    rlca                                          ; $6a48: $07
    ld [bc], a                                    ; $6a49: $02
    ld b, $02                                     ; $6a4a: $06 $02
    ld b, $02                                     ; $6a4c: $06 $02
    ld b, $04                                     ; $6a4e: $06 $04
    inc b                                         ; $6a50: $04
    ld [bc], a                                    ; $6a51: $02
    inc c                                         ; $6a52: $0c
    rst $38                                       ; $6a53: $ff
    dec bc                                        ; $6a54: $0b
    inc bc                                        ; $6a55: $03
    ld sp, hl                                     ; $6a56: $f9
    ld [$01f2], sp                                ; $6a57: $08 $f2 $01
    ldh a, [$fb]                                  ; $6a5a: $f0 $fb
    pop af                                        ; $6a5c: $f1
    cp $00                                        ; $6a5d: $fe $00
    ei                                            ; $6a5f: $fb
    ld [bc], a                                    ; $6a60: $02
    rra                                           ; $6a61: $1f
    add d                                         ; $6a62: $82
    ld a, [hl+]                                   ; $6a63: $2a
    ccf                                           ; $6a64: $3f
    ld [bc], a                                    ; $6a65: $02
    ld a, a                                       ; $6a66: $7f
    sbc d                                         ; $6a67: $9a
    ld h, b                                       ; $6a68: $60
    ld a, a                                       ; $6a69: $7f
    ld b, b                                       ; $6a6a: $40
    ld a, a                                       ; $6a6b: $7f
    sbc a                                         ; $6a6c: $9f
    rst $38                                       ; $6a6d: $ff
    xor b                                         ; $6a6e: $a8
    rst $38                                       ; $6a6f: $ff
    xor b                                         ; $6a70: $a8
    rst $38                                       ; $6a71: $ff
    xor [hl]                                      ; $6a72: $ae
    rst $38                                       ; $6a73: $ff
    or d                                          ; $6a74: $b2
    rst $38                                       ; $6a75: $ff
    sbc h                                         ; $6a76: $9c
    rst $38                                       ; $6a77: $ff
    adc [hl]                                      ; $6a78: $8e
    rst $38                                       ; $6a79: $ff
    ld e, a                                       ; $6a7a: $5f
    ld a, a                                       ; $6a7b: $7f
    ld c, a                                       ; $6a7c: $4f
    ld a, a                                       ; $6a7d: $7f
    dec hl                                        ; $6a7e: $2b
    dec sp                                        ; $6a7f: $3b
    ld a, [hl-]                                   ; $6a80: $3a
    dec sp                                        ; $6a81: $3b
    ld [bc], a                                    ; $6a82: $02
    inc b                                         ; $6a83: $04
    inc b                                         ; $6a84: $04
    ld b, $96                                     ; $6a85: $06 $96
    ld [bc], a                                    ; $6a87: $02
    ld b, $01                                     ; $6a88: $06 $01
    rlca                                          ; $6a8a: $07
    dec b                                         ; $6a8b: $05
    rlca                                          ; $6a8c: $07
    ld bc, $0107                                  ; $6a8d: $01 $07 $01
    rlca                                          ; $6a90: $07
    ld bc, $0107                                  ; $6a91: $01 $07 $01
    rlca                                          ; $6a94: $07
    ld [bc], a                                    ; $6a95: $02
    ld b, $02                                     ; $6a96: $06 $02
    ld b, $02                                     ; $6a98: $06 $02
    ld b, $02                                     ; $6a9a: $06 $02
    ld b, $02                                     ; $6a9c: $06 $02
    inc b                                         ; $6a9e: $04
    add d                                         ; $6a9f: $82
    call nc, Call_000_02dc                        ; $6aa0: $d4 $dc $02
    jr nz, @+$04                                  ; $6aa3: $20 $02

    ld bc, $001c                                  ; $6aa5: $01 $1c $00
    rst $38                                       ; $6aa8: $ff
    dec bc                                        ; $6aa9: $0b
    inc bc                                        ; $6aaa: $03
    ld sp, hl                                     ; $6aab: $f9
    ld [$01f2], sp                                ; $6aac: $08 $f2 $01
    ldh a, [$fb]                                  ; $6aaf: $f0 $fb
    pop af                                        ; $6ab1: $f1
    cp $00                                        ; $6ab2: $fe $00
    ei                                            ; $6ab4: $fb
    ld [bc], a                                    ; $6ab5: $02
    rra                                           ; $6ab6: $1f
    sbc [hl]                                      ; $6ab7: $9e
    ld a, [hl+]                                   ; $6ab8: $2a
    ccf                                           ; $6ab9: $3f
    ld e, a                                       ; $6aba: $5f
    ld a, a                                       ; $6abb: $7f
    ld h, b                                       ; $6abc: $60
    ld a, a                                       ; $6abd: $7f
    ld b, b                                       ; $6abe: $40
    ld a, a                                       ; $6abf: $7f
    ld e, a                                       ; $6ac0: $5f
    ld a, a                                       ; $6ac1: $7f
    or h                                          ; $6ac2: $b4
    rst $38                                       ; $6ac3: $ff
    sbc d                                         ; $6ac4: $9a
    rst $38                                       ; $6ac5: $ff
    adc e                                         ; $6ac6: $8b
    rst $38                                       ; $6ac7: $ff
    adc l                                         ; $6ac8: $8d
    rst $38                                       ; $6ac9: $ff
    add l                                         ; $6aca: $85
    rst $38                                       ; $6acb: $ff
    adc [hl]                                      ; $6acc: $8e
    rst $38                                       ; $6acd: $ff
    ld e, a                                       ; $6ace: $5f
    ld a, a                                       ; $6acf: $7f
    ld c, a                                       ; $6ad0: $4f
    ld a, a                                       ; $6ad1: $7f
    ld a, [hl+]                                   ; $6ad2: $2a
    dec sp                                        ; $6ad3: $3b
    ld a, [hl+]                                   ; $6ad4: $2a
    dec sp                                        ; $6ad5: $3b
    ld [bc], a                                    ; $6ad6: $02
    inc b                                         ; $6ad7: $04
    add c                                         ; $6ad8: $81
    ld [bc], a                                    ; $6ad9: $02
    inc bc                                        ; $6ada: $03
    ld b, $94                                     ; $6adb: $06 $94
    ld [bc], a                                    ; $6add: $02
    ld b, $01                                     ; $6ade: $06 $01
    rlca                                          ; $6ae0: $07
    dec b                                         ; $6ae1: $05
    rlca                                          ; $6ae2: $07
    ld bc, $0107                                  ; $6ae3: $01 $07 $01
    rlca                                          ; $6ae6: $07
    ld bc, $0107                                  ; $6ae7: $01 $07 $01
    rlca                                          ; $6aea: $07
    inc bc                                        ; $6aeb: $03
    rlca                                          ; $6aec: $07
    ld [bc], a                                    ; $6aed: $02
    ld b, $02                                     ; $6aee: $06 $02
    ld b, $04                                     ; $6af0: $06 $04
    inc b                                         ; $6af2: $04
    add d                                         ; $6af3: $82
    call nc, Call_000_02dc                        ; $6af4: $d4 $dc $02
    jr nz, jr_0e9_6afb                            ; $6af7: $20 $02

    add hl, sp                                    ; $6af9: $39
    inc e                                         ; $6afa: $1c

jr_0e9_6afb:
    nop                                           ; $6afb: $00
    rst $38                                       ; $6afc: $ff
    dec bc                                        ; $6afd: $0b
    inc bc                                        ; $6afe: $03
    ld sp, hl                                     ; $6aff: $f9
    ld [$01f2], sp                                ; $6b00: $08 $f2 $01
    pop af                                        ; $6b03: $f1
    ei                                            ; $6b04: $fb
    ld a, [c]                                     ; $6b05: $f2
    cp $01                                        ; $6b06: $fe $01
    ei                                            ; $6b08: $fb
    ld [bc], a                                    ; $6b09: $02
    rra                                           ; $6b0a: $1f
    ld [bc], a                                    ; $6b0b: $02
    ld a, a                                       ; $6b0c: $7f
    sbc h                                         ; $6b0d: $9c
    ld h, c                                       ; $6b0e: $61
    ld a, a                                       ; $6b0f: $7f
    ld b, d                                       ; $6b10: $42
    ld a, a                                       ; $6b11: $7f
    pop bc                                        ; $6b12: $c1
    rst $38                                       ; $6b13: $ff
    sbc a                                         ; $6b14: $9f
    rst $38                                       ; $6b15: $ff
    and c                                         ; $6b16: $a1
    rst $38                                       ; $6b17: $ff
    add [hl]                                      ; $6b18: $86
    rst $38                                       ; $6b19: $ff
    add l                                         ; $6b1a: $85
    rst $38                                       ; $6b1b: $ff
    add d                                         ; $6b1c: $82
    rst $38                                       ; $6b1d: $ff
    adc $ff                                       ; $6b1e: $ce $ff
    ld e, a                                       ; $6b20: $5f
    ld a, a                                       ; $6b21: $7f
    ld e, [hl]                                    ; $6b22: $5e
    ld a, a                                       ; $6b23: $7f
    ld c, e                                       ; $6b24: $4b
    ld a, e                                       ; $6b25: $7b
    ld a, [hl-]                                   ; $6b26: $3a
    dec sp                                        ; $6b27: $3b
    add hl, hl                                    ; $6b28: $29
    add hl, sp                                    ; $6b29: $39
    ld b, $06                                     ; $6b2a: $06 $06
    sub c                                         ; $6b2c: $91
    inc bc                                        ; $6b2d: $03
    rlca                                          ; $6b2e: $07
    inc bc                                        ; $6b2f: $03
    rlca                                          ; $6b30: $07
    inc bc                                        ; $6b31: $03
    rlca                                          ; $6b32: $07
    dec b                                         ; $6b33: $05
    rlca                                          ; $6b34: $07
    ld bc, $0107                                  ; $6b35: $01 $07 $01
    rlca                                          ; $6b38: $07
    ld bc, $0507                                  ; $6b39: $01 $07 $05
    rlca                                          ; $6b3c: $07
    ld [bc], a                                    ; $6b3d: $02
    inc bc                                        ; $6b3e: $03
    ld b, $04                                     ; $6b3f: $06 $04
    inc b                                         ; $6b41: $04
    ld [bc], a                                    ; $6b42: $02
    add b                                         ; $6b43: $80
    ld [bc], a                                    ; $6b44: $02
    jr nz, jr_0e9_6b65                            ; $6b45: $20 $1e

    nop                                           ; $6b47: $00
    rst $38                                       ; $6b48: $ff
    dec bc                                        ; $6b49: $0b
    inc bc                                        ; $6b4a: $03
    ld sp, hl                                     ; $6b4b: $f9
    ld [$01f2], sp                                ; $6b4c: $08 $f2 $01
    ldh a, [$fb]                                  ; $6b4f: $f0 $fb
    pop af                                        ; $6b51: $f1
    cp $00                                        ; $6b52: $fe $00
    ei                                            ; $6b54: $fb
    ld [bc], a                                    ; $6b55: $02
    rra                                           ; $6b56: $1f
    add d                                         ; $6b57: $82
    ld a, [hl+]                                   ; $6b58: $2a
    ccf                                           ; $6b59: $3f
    ld [bc], a                                    ; $6b5a: $02
    ld a, a                                       ; $6b5b: $7f
    sbc d                                         ; $6b5c: $9a
    ld h, b                                       ; $6b5d: $60
    ld a, a                                       ; $6b5e: $7f
    ld b, b                                       ; $6b5f: $40
    ld a, a                                       ; $6b60: $7f
    sbc a                                         ; $6b61: $9f
    rst $38                                       ; $6b62: $ff
    and c                                         ; $6b63: $a1
    rst $38                                       ; $6b64: $ff

jr_0e9_6b65:
    add c                                         ; $6b65: $81
    rst $38                                       ; $6b66: $ff
    add d                                         ; $6b67: $82
    rst $38                                       ; $6b68: $ff
    add h                                         ; $6b69: $84
    rst $38                                       ; $6b6a: $ff
    add e                                         ; $6b6b: $83
    rst $38                                       ; $6b6c: $ff
    ld c, [hl]                                    ; $6b6d: $4e
    ld a, a                                       ; $6b6e: $7f
    ld e, a                                       ; $6b6f: $5f
    ld a, a                                       ; $6b70: $7f
    ld e, [hl]                                    ; $6b71: $5e
    ld a, a                                       ; $6b72: $7f
    ld e, d                                       ; $6b73: $5a
    ld a, e                                       ; $6b74: $7b
    dec hl                                        ; $6b75: $2b
    dec sp                                        ; $6b76: $3b
    ld [bc], a                                    ; $6b77: $02
    inc b                                         ; $6b78: $04
    ld b, $06                                     ; $6b79: $06 $06
    sub d                                         ; $6b7b: $92
    inc bc                                        ; $6b7c: $03
    rlca                                          ; $6b7d: $07
    inc bc                                        ; $6b7e: $03
    rlca                                          ; $6b7f: $07
    inc bc                                        ; $6b80: $03
    rlca                                          ; $6b81: $07
    dec b                                         ; $6b82: $05
    rlca                                          ; $6b83: $07
    dec b                                         ; $6b84: $05
    rlca                                          ; $6b85: $07
    ld bc, $0107                                  ; $6b86: $01 $07 $01
    rlca                                          ; $6b89: $07
    ld [bc], a                                    ; $6b8a: $02
    ld b, $02                                     ; $6b8b: $06 $02
    ld b, $04                                     ; $6b8d: $06 $04
    inc b                                         ; $6b8f: $04
    add d                                         ; $6b90: $82
    ld e, h                                       ; $6b91: $5c
    call c, Call_000_2002                         ; $6b92: $dc $02 $20
    ld [bc], a                                    ; $6b95: $02
    db $10                                        ; $6b96: $10
    inc e                                         ; $6b97: $1c
    nop                                           ; $6b98: $00
    rst $38                                       ; $6b99: $ff
    dec bc                                        ; $6b9a: $0b
    inc bc                                        ; $6b9b: $03
    ld sp, hl                                     ; $6b9c: $f9
    ld [$01f2], sp                                ; $6b9d: $08 $f2 $01
    ldh a, [$fb]                                  ; $6ba0: $f0 $fb
    pop af                                        ; $6ba2: $f1
    cp $00                                        ; $6ba3: $fe $00
    db $fc                                        ; $6ba5: $fc
    ld [bc], a                                    ; $6ba6: $02
    rra                                           ; $6ba7: $1f
    sbc [hl]                                      ; $6ba8: $9e
    ld a, [hl+]                                   ; $6ba9: $2a
    ccf                                           ; $6baa: $3f
    ld e, a                                       ; $6bab: $5f
    ld a, a                                       ; $6bac: $7f
    ld h, b                                       ; $6bad: $60
    ld a, a                                       ; $6bae: $7f
    ld b, b                                       ; $6baf: $40
    ld a, a                                       ; $6bb0: $7f
    sbc a                                         ; $6bb1: $9f
    rst $38                                       ; $6bb2: $ff
    and d                                         ; $6bb3: $a2
    rst $38                                       ; $6bb4: $ff
    add l                                         ; $6bb5: $85
    rst $38                                       ; $6bb6: $ff
    adc l                                         ; $6bb7: $8d
    rst $38                                       ; $6bb8: $ff
    adc e                                         ; $6bb9: $8b
    rst $38                                       ; $6bba: $ff
    adc d                                         ; $6bbb: $8a
    rst $38                                       ; $6bbc: $ff
    adc $ff                                       ; $6bbd: $ce $ff
    ld e, a                                       ; $6bbf: $5f
    ld a, a                                       ; $6bc0: $7f
    ld e, [hl]                                    ; $6bc1: $5e
    ld a, a                                       ; $6bc2: $7f
    ld a, [hl+]                                   ; $6bc3: $2a
    dec sp                                        ; $6bc4: $3b
    ld a, [hl+]                                   ; $6bc5: $2a
    dec sp                                        ; $6bc6: $3b
    ld [bc], a                                    ; $6bc7: $02
    inc b                                         ; $6bc8: $04
    add c                                         ; $6bc9: $81
    ld [bc], a                                    ; $6bca: $02
    inc bc                                        ; $6bcb: $03
    ld b, $94                                     ; $6bcc: $06 $94
    ld [bc], a                                    ; $6bce: $02
    ld b, $02                                     ; $6bcf: $06 $02
    ld b, $05                                     ; $6bd1: $06 $05
    rlca                                          ; $6bd3: $07
    dec b                                         ; $6bd4: $05
    rlca                                          ; $6bd5: $07
    ld bc, $0107                                  ; $6bd6: $01 $07 $01
    rlca                                          ; $6bd9: $07
    ld bc, $0107                                  ; $6bda: $01 $07 $01
    rlca                                          ; $6bdd: $07
    ld [bc], a                                    ; $6bde: $02
    ld b, $02                                     ; $6bdf: $06 $02
    ld b, $04                                     ; $6be1: $06 $04
    inc b                                         ; $6be3: $04
    add d                                         ; $6be4: $82
    ld e, h                                       ; $6be5: $5c
    call c, Call_0e9_4002                         ; $6be6: $dc $02 $40
    ld [bc], a                                    ; $6be9: $02
    daa                                           ; $6bea: $27
    inc e                                         ; $6beb: $1c
    nop                                           ; $6bec: $00
    rst $38                                       ; $6bed: $ff
    dec bc                                        ; $6bee: $0b
    inc bc                                        ; $6bef: $03
    ld sp, hl                                     ; $6bf0: $f9
    ld [$01f2], sp                                ; $6bf1: $08 $f2 $01
    ld a, [c]                                     ; $6bf4: $f2
    or $ec                                        ; $6bf5: $f6 $ec
    cp $fc                                        ; $6bf7: $fe $fc
    cp $02                                        ; $6bf9: $fe $02
    ld bc, $0281                                  ; $6bfb: $01 $81 $02
    inc bc                                        ; $6bfe: $03
    inc bc                                        ; $6bff: $03
    add l                                         ; $6c00: $85
    ld b, $07                                     ; $6c01: $06 $07
    dec b                                         ; $6c03: $05
    rlca                                          ; $6c04: $07
    dec b                                         ; $6c05: $05
    dec b                                         ; $6c06: $05
    rlca                                          ; $6c07: $07
    adc b                                         ; $6c08: $88
    dec b                                         ; $6c09: $05
    rlca                                          ; $6c0a: $07
    ld [bc], a                                    ; $6c0b: $02
    inc bc                                        ; $6c0c: $03
    ld [bc], a                                    ; $6c0d: $02
    inc bc                                        ; $6c0e: $03
    ld [bc], a                                    ; $6c0f: $02
    inc bc                                        ; $6c10: $03
    inc b                                         ; $6c11: $04
    ld bc, $0282                                  ; $6c12: $01 $82 $02
    inc bc                                        ; $6c15: $03
    ld [bc], a                                    ; $6c16: $02
    ld bc, $1002                                  ; $6c17: $01 $02 $10
    adc b                                         ; $6c1a: $88
    jr z, jr_0e9_6c55                             ; $6c1b: $28 $38

    inc d                                         ; $6c1d: $14
    inc e                                         ; $6c1e: $1c
    inc d                                         ; $6c1f: $14
    inc e                                         ; $6c20: $1c
    jr z, @+$3a                                   ; $6c21: $28 $38

    ld [bc], a                                    ; $6c23: $02
    ld hl, sp-$62                                 ; $6c24: $f8 $9e
    inc b                                         ; $6c26: $04
    db $fc                                        ; $6c27: $fc
    ld a, [$26fe]                                 ; $6c28: $fa $fe $26
    cp $fb                                        ; $6c2b: $fe $fb
    rst $38                                       ; $6c2d: $ff
    adc l                                         ; $6c2e: $8d
    rst $38                                       ; $6c2f: $ff
    dec b                                         ; $6c30: $05
    rst $38                                       ; $6c31: $ff
    ld [hl], a                                    ; $6c32: $77
    rst $38                                       ; $6c33: $ff
    daa                                           ; $6c34: $27
    rst $38                                       ; $6c35: $ff
    ld d, l                                       ; $6c36: $55
    rst $38                                       ; $6c37: $ff
    ld a, [$02fe]                                 ; $6c38: $fa $fe $02
    cp $72                                        ; $6c3b: $fe $72
    cp $54                                        ; $6c3d: $fe $54
    call c, $dc54                                 ; $6c3f: $dc $54 $dc
    ld d, d                                       ; $6c42: $52
    sbc $02                                       ; $6c43: $de $02
    adc h                                         ; $6c45: $8c
    inc d                                         ; $6c46: $14
    nop                                           ; $6c47: $00
    rst $38                                       ; $6c48: $ff
    dec bc                                        ; $6c49: $0b
    inc bc                                        ; $6c4a: $03
    ld sp, hl                                     ; $6c4b: $f9
    ld [$01f2], sp                                ; $6c4c: $08 $f2 $01
    pop af                                        ; $6c4f: $f1
    ld hl, sp-$14                                 ; $6c50: $f8 $ec
    nop                                           ; $6c52: $00
    db $fc                                        ; $6c53: $fc
    nop                                           ; $6c54: $00

jr_0e9_6c55:
    ld [bc], a                                    ; $6c55: $02
    inc bc                                        ; $6c56: $03
    add e                                         ; $6c57: $83
    inc b                                         ; $6c58: $04
    rlca                                          ; $6c59: $07
    ld [$0f03], sp                                ; $6c5a: $08 $03 $0f
    adc h                                         ; $6c5d: $8c
    jr jr_0e9_6c7f                                ; $6c5e: $18 $1f

    rla                                           ; $6c60: $17
    rra                                           ; $6c61: $1f
    ld d, $1f                                     ; $6c62: $16 $1f
    inc e                                         ; $6c64: $1c
    rra                                           ; $6c65: $1f
    dec e                                         ; $6c66: $1d
    rra                                           ; $6c67: $1f
    inc d                                         ; $6c68: $14
    rra                                           ; $6c69: $1f
    ld [bc], a                                    ; $6c6a: $02
    rrca                                          ; $6c6b: $0f
    adc b                                         ; $6c6c: $88
    dec bc                                        ; $6c6d: $0b
    rrca                                          ; $6c6e: $0f
    dec bc                                        ; $6c6f: $0b
    rrca                                          ; $6c70: $0f
    dec b                                         ; $6c71: $05
    rlca                                          ; $6c72: $07
    dec b                                         ; $6c73: $05
    rlca                                          ; $6c74: $07
    ld [bc], a                                    ; $6c75: $02
    inc bc                                        ; $6c76: $03
    ld [bc], a                                    ; $6c77: $02
    ld b, b                                       ; $6c78: $40
    add a                                         ; $6c79: $87
    and b                                         ; $6c7a: $a0
    ldh [$50], a                                  ; $6c7b: $e0 $50
    ld [hl], b                                    ; $6c7d: $70
    ld d, b                                       ; $6c7e: $50

jr_0e9_6c7f:
    ld [hl], b                                    ; $6c7f: $70
    and b                                         ; $6c80: $a0
    inc bc                                        ; $6c81: $03
    ldh [$83], a                                  ; $6c82: $e0 $83
    db $10                                        ; $6c84: $10
    ldh a, [$08]                                  ; $6c85: $f0 $08
    inc bc                                        ; $6c87: $03
    ld hl, sp-$68                                 ; $6c88: $f8 $98
    adc h                                         ; $6c8a: $8c
    db $fc                                        ; $6c8b: $fc
    db $f4                                        ; $6c8c: $f4
    db $fc                                        ; $6c8d: $fc
    inc [hl]                                      ; $6c8e: $34
    db $fc                                        ; $6c8f: $fc
    inc e                                         ; $6c90: $1c
    db $fc                                        ; $6c91: $fc
    call nc, $94fc                                ; $6c92: $d4 $fc $94
    db $fc                                        ; $6c95: $fc
    ld a, b                                       ; $6c96: $78
    ld hl, sp-$18                                 ; $6c97: $f8 $e8
    ld hl, sp-$38                                 ; $6c99: $f8 $c8
    ld hl, sp+$50                                 ; $6c9b: $f8 $50
    ld [hl], b                                    ; $6c9d: $70
    ld d, b                                       ; $6c9e: $50
    ld [hl], b                                    ; $6c9f: $70
    ld c, b                                       ; $6ca0: $48
    ld a, b                                       ; $6ca1: $78
    ld [bc], a                                    ; $6ca2: $02
    jr nc, jr_0e9_6cb9                            ; $6ca3: $30 $14

    nop                                           ; $6ca5: $00
    rst $38                                       ; $6ca6: $ff
    dec bc                                        ; $6ca7: $0b
    inc bc                                        ; $6ca8: $03
    ld sp, hl                                     ; $6ca9: $f9
    ld [$01f2], sp                                ; $6caa: $08 $f2 $01
    xor $fb                                       ; $6cad: $ee $fb
    rst $28                                       ; $6caf: $ef
    cp $fe                                        ; $6cb0: $fe $fe
    db $fc                                        ; $6cb2: $fc
    ld [bc], a                                    ; $6cb3: $02
    inc bc                                        ; $6cb4: $03
    add h                                         ; $6cb5: $84
    ld [bc], a                                    ; $6cb6: $02
    inc bc                                        ; $6cb7: $03
    ld [bc], a                                    ; $6cb8: $02

jr_0e9_6cb9:
    inc bc                                        ; $6cb9: $03
    ld [bc], a                                    ; $6cba: $02
    rra                                           ; $6cbb: $1f
    add d                                         ; $6cbc: $82
    jr nc, jr_0e9_6cfe                            ; $6cbd: $30 $3f

    ld [bc], a                                    ; $6cbf: $02
    ld a, a                                       ; $6cc0: $7f
    adc [hl]                                      ; $6cc1: $8e
    ld h, h                                       ; $6cc2: $64
    ld a, a                                       ; $6cc3: $7f
    rst $18                                       ; $6cc4: $df
    rst $38                                       ; $6cc5: $ff
    or c                                          ; $6cc6: $b1
    rst $38                                       ; $6cc7: $ff
    and b                                         ; $6cc8: $a0
    rst $38                                       ; $6cc9: $ff
    xor $ff                                       ; $6cca: $ee $ff
    db $e4                                        ; $6ccc: $e4
    rst $38                                       ; $6ccd: $ff
    xor d                                         ; $6cce: $aa
    rst $38                                       ; $6ccf: $ff
    ld [bc], a                                    ; $6cd0: $02
    ld a, a                                       ; $6cd1: $7f
    add h                                         ; $6cd2: $84
    ld h, h                                       ; $6cd3: $64
    ld a, a                                       ; $6cd4: $7f
    ld c, d                                       ; $6cd5: $4a
    ld a, e                                       ; $6cd6: $7b
    ld b, $04                                     ; $6cd7: $06 $04
    ld [bc], a                                    ; $6cd9: $02
    ld b, $81                                     ; $6cda: $06 $81
    ld [bc], a                                    ; $6cdc: $02
    inc bc                                        ; $6cdd: $03
    ld b, $85                                     ; $6cde: $06 $85
    inc bc                                        ; $6ce0: $03
    rlca                                          ; $6ce1: $07
    dec b                                         ; $6ce2: $05
    rlca                                          ; $6ce3: $07
    dec b                                         ; $6ce4: $05
    dec b                                         ; $6ce5: $05
    rlca                                          ; $6ce6: $07
    add d                                         ; $6ce7: $82
    dec b                                         ; $6ce8: $05
    rlca                                          ; $6ce9: $07
    ld [bc], a                                    ; $6cea: $02
    ld b, $8c                                     ; $6ceb: $06 $8c
    ld [bc], a                                    ; $6ced: $02
    ld b, $02                                     ; $6cee: $06 $02
    ld b, $d4                                     ; $6cf0: $06 $d4
    call c, $c080                                 ; $6cf2: $dc $80 $c0
    ld d, l                                       ; $6cf5: $55
    ld [hl], a                                    ; $6cf6: $77
    dec h                                         ; $6cf7: $25
    daa                                           ; $6cf8: $27
    ld [bc], a                                    ; $6cf9: $02
    inc bc                                        ; $6cfa: $03
    jr jr_0e9_6cfd                                ; $6cfb: $18 $00

jr_0e9_6cfd:
    rst $38                                       ; $6cfd: $ff

jr_0e9_6cfe:
    dec bc                                        ; $6cfe: $0b
    inc bc                                        ; $6cff: $03
    ld sp, hl                                     ; $6d00: $f9
    ld [$01f2], sp                                ; $6d01: $08 $f2 $01
    db $ed                                        ; $6d04: $ed
    ei                                            ; $6d05: $fb
    pop af                                        ; $6d06: $f1
    cp $fd                                        ; $6d07: $fe $fd
    ei                                            ; $6d09: $fb
    ld [bc], a                                    ; $6d0a: $02
    inc bc                                        ; $6d0b: $03
    add [hl]                                      ; $6d0c: $86
    dec b                                         ; $6d0d: $05
    rlca                                          ; $6d0e: $07
    dec b                                         ; $6d0f: $05
    rlca                                          ; $6d10: $07
    dec b                                         ; $6d11: $05
    rlca                                          ; $6d12: $07
    ld [bc], a                                    ; $6d13: $02
    rra                                           ; $6d14: $1f
    add d                                         ; $6d15: $82
    jr nz, jr_0e9_6d57                            ; $6d16: $20 $3f

    ld [bc], a                                    ; $6d18: $02
    ld a, a                                       ; $6d19: $7f
    sub d                                         ; $6d1a: $92
    ld h, h                                       ; $6d1b: $64
    ld a, a                                       ; $6d1c: $7f
    ld e, a                                       ; $6d1d: $5f
    ld a, a                                       ; $6d1e: $7f
    or c                                          ; $6d1f: $b1
    rst $38                                       ; $6d20: $ff
    and b                                         ; $6d21: $a0
    rst $38                                       ; $6d22: $ff
    xor $ff                                       ; $6d23: $ee $ff
    db $e4                                        ; $6d25: $e4
    rst $38                                       ; $6d26: $ff
    xor d                                         ; $6d27: $aa
    rst $38                                       ; $6d28: $ff
    ld e, a                                       ; $6d29: $5f
    ld a, a                                       ; $6d2a: $7f
    ld b, b                                       ; $6d2b: $40
    ld a, a                                       ; $6d2c: $7f
    inc b                                         ; $6d2d: $04
    inc b                                         ; $6d2e: $04

jr_0e9_6d2f:
    add c                                         ; $6d2f: $81
    ld [bc], a                                    ; $6d30: $02
    inc bc                                        ; $6d31: $03
    ld b, $85                                     ; $6d32: $06 $85
    ld [bc], a                                    ; $6d34: $02
    ld b, $05                                     ; $6d35: $06 $05
    rlca                                          ; $6d37: $07
    dec b                                         ; $6d38: $05
    dec b                                         ; $6d39: $05
    rlca                                          ; $6d3a: $07
    adc e                                         ; $6d3b: $8b
    dec b                                         ; $6d3c: $05
    rlca                                          ; $6d3d: $07
    ld [bc], a                                    ; $6d3e: $02
    ld b, $02                                     ; $6d3f: $06 $02
    ld b, $72                                     ; $6d41: $06 $72
    cp $54                                        ; $6d43: $fe $54
    call c, $0394                                 ; $6d45: $dc $94 $03
    sbc h                                         ; $6d48: $9c
    adc b                                         ; $6d49: $88
    ld b, b                                       ; $6d4a: $40
    ld h, b                                       ; $6d4b: $60
    ld b, b                                       ; $6d4c: $40
    ld h, b                                       ; $6d4d: $60
    ld b, b                                       ; $6d4e: $40
    ld h, b                                       ; $6d4f: $60
    ld b, b                                       ; $6d50: $40
    ld h, b                                       ; $6d51: $60
    ld [bc], a                                    ; $6d52: $02
    jr nc, jr_0e9_6d6b                            ; $6d53: $30 $16

    nop                                           ; $6d55: $00
    rst $38                                       ; $6d56: $ff

jr_0e9_6d57:
    dec bc                                        ; $6d57: $0b
    inc bc                                        ; $6d58: $03
    ld sp, hl                                     ; $6d59: $f9
    ld [$01f2], sp                                ; $6d5a: $08 $f2 $01
    db $ec                                        ; $6d5d: $ec
    ei                                            ; $6d5e: $fb
    ld a, [c]                                     ; $6d5f: $f2
    cp $fc                                        ; $6d60: $fe $fc
    ei                                            ; $6d62: $fb
    ld [bc], a                                    ; $6d63: $02
    inc b                                         ; $6d64: $04
    adc b                                         ; $6d65: $88
    ld a, [bc]                                    ; $6d66: $0a
    ld c, $14                                     ; $6d67: $0e $14
    inc e                                         ; $6d69: $1c
    inc d                                         ; $6d6a: $14

jr_0e9_6d6b:
    inc e                                         ; $6d6b: $1c
    ld a, [bc]                                    ; $6d6c: $0a
    ld c, $02                                     ; $6d6d: $0e $02
    rra                                           ; $6d6f: $1f
    add e                                         ; $6d70: $83
    jr nz, jr_0e9_6db2                            ; $6d71: $20 $3f

    ld b, b                                       ; $6d73: $40
    inc bc                                        ; $6d74: $03
    ld a, a                                       ; $6d75: $7f
    adc [hl]                                      ; $6d76: $8e
    call nz, $bfff                                ; $6d77: $c4 $ff $bf
    rst $38                                       ; $6d7a: $ff
    or c                                          ; $6d7b: $b1
    rst $38                                       ; $6d7c: $ff
    ldh [rIE], a                                  ; $6d7d: $e0 $ff
    xor [hl]                                      ; $6d7f: $ae
    rst $38                                       ; $6d80: $ff
    and h                                         ; $6d81: $a4
    rst $38                                       ; $6d82: $ff
    ld a, e                                       ; $6d83: $7b
    ld a, a                                       ; $6d84: $7f
    ld [bc], a                                    ; $6d85: $02
    inc b                                         ; $6d86: $04
    add c                                         ; $6d87: $81
    ld [bc], a                                    ; $6d88: $02
    inc bc                                        ; $6d89: $03
    ld b, $85                                     ; $6d8a: $06 $85
    inc bc                                        ; $6d8c: $03
    rlca                                          ; $6d8d: $07
    dec b                                         ; $6d8e: $05
    rlca                                          ; $6d8f: $07
    dec b                                         ; $6d90: $05
    dec b                                         ; $6d91: $05
    rlca                                          ; $6d92: $07
    add d                                         ; $6d93: $82
    dec b                                         ; $6d94: $05
    rlca                                          ; $6d95: $07
    ld [bc], a                                    ; $6d96: $02
    ld b, $8a                                     ; $6d97: $06 $8a
    ld a, [$7afe]                                 ; $6d99: $fa $fe $7a
    cp $54                                        ; $6d9c: $fe $54
    call c, $dc54                                 ; $6d9e: $dc $54 $dc
    ld e, b                                       ; $6da1: $58
    ret c                                         ; $6da2: $d8

    ld [bc], a                                    ; $6da3: $02
    add b                                         ; $6da4: $80
    add h                                         ; $6da5: $84
    ld b, b                                       ; $6da6: $40
    ld h, b                                       ; $6da7: $60
    ld b, b                                       ; $6da8: $40
    ld h, b                                       ; $6da9: $60
    inc b                                         ; $6daa: $04
    jr nz, jr_0e9_6d2f                            ; $6dab: $20 $82

    ld b, b                                       ; $6dad: $40
    ld h, b                                       ; $6dae: $60
    ld [bc], a                                    ; $6daf: $02
    jr nz, jr_0e9_6dc6                            ; $6db0: $20 $14

jr_0e9_6db2:
    nop                                           ; $6db2: $00
    rst $38                                       ; $6db3: $ff
    dec bc                                        ; $6db4: $0b
    inc bc                                        ; $6db5: $03
    ld sp, hl                                     ; $6db6: $f9
    ld [$01f2], sp                                ; $6db7: $08 $f2 $01
    db $ed                                        ; $6dba: $ed
    ei                                            ; $6dbb: $fb
    ld a, [c]                                     ; $6dbc: $f2
    cp $fd                                        ; $6dbd: $fe $fd
    ei                                            ; $6dbf: $fb
    ld [bc], a                                    ; $6dc0: $02
    ld [$1486], sp                                ; $6dc1: $08 $86 $14
    inc e                                         ; $6dc4: $1c
    inc d                                         ; $6dc5: $14

jr_0e9_6dc6:
    inc e                                         ; $6dc6: $1c
    ld d, $1e                                     ; $6dc7: $16 $1e
    ld [bc], a                                    ; $6dc9: $02
    ccf                                           ; $6dca: $3f
    sub d                                         ; $6dcb: $92
    ld h, c                                       ; $6dcc: $61
    ld a, a                                       ; $6dcd: $7f
    ld e, a                                       ; $6dce: $5f
    ld a, a                                       ; $6dcf: $7f
    ld h, h                                       ; $6dd0: $64
    ld a, a                                       ; $6dd1: $7f
    rst $18                                       ; $6dd2: $df
    rst $38                                       ; $6dd3: $ff
    or c                                          ; $6dd4: $b1
    rst $38                                       ; $6dd5: $ff
    and b                                         ; $6dd6: $a0
    rst $38                                       ; $6dd7: $ff
    xor $ff                                       ; $6dd8: $ee $ff
    db $e4                                        ; $6dda: $e4
    rst $38                                       ; $6ddb: $ff
    xor d                                         ; $6ddc: $aa
    rst $38                                       ; $6ddd: $ff
    ld [bc], a                                    ; $6dde: $02
    ld a, a                                       ; $6ddf: $7f
    add d                                         ; $6de0: $82
    ld b, h                                       ; $6de1: $44
    ld a, a                                       ; $6de2: $7f
    ld [bc], a                                    ; $6de3: $02
    inc b                                         ; $6de4: $04
    inc b                                         ; $6de5: $04
    ld b, $85                                     ; $6de6: $06 $85
    inc bc                                        ; $6de8: $03
    rlca                                          ; $6de9: $07
    dec b                                         ; $6dea: $05
    rlca                                          ; $6deb: $07
    dec b                                         ; $6dec: $05
    dec b                                         ; $6ded: $05
    rlca                                          ; $6dee: $07
    add d                                         ; $6def: $82
    dec b                                         ; $6df0: $05
    rlca                                          ; $6df1: $07
    inc b                                         ; $6df2: $04
    ld b, $88                                     ; $6df3: $06 $88
    ld d, d                                       ; $6df5: $52
    sbc $5a                                       ; $6df6: $de $5a
    sbc $54                                       ; $6df8: $de $54
    call c, $c848                                 ; $6dfa: $dc $48 $c8
    ld [bc], a                                    ; $6dfd: $02
    add b                                         ; $6dfe: $80
    add d                                         ; $6dff: $82
    ld b, b                                       ; $6e00: $40
    ld h, b                                       ; $6e01: $60
    ld [$1620], sp                                ; $6e02: $08 $20 $16

jr_0e9_6e05:
    nop                                           ; $6e05: $00
    rst $38                                       ; $6e06: $ff
    dec bc                                        ; $6e07: $0b
    inc bc                                        ; $6e08: $03
    ld sp, hl                                     ; $6e09: $f9
    ld [$01f2], sp                                ; $6e0a: $08 $f2 $01
    db $ed                                        ; $6e0d: $ed
    ei                                            ; $6e0e: $fb
    ld a, [c]                                     ; $6e0f: $f2
    cp $fd                                        ; $6e10: $fe $fd
    ei                                            ; $6e12: $fb
    ld [bc], a                                    ; $6e13: $02
    inc c                                         ; $6e14: $0c
    add [hl]                                      ; $6e15: $86
    ld a, [bc]                                    ; $6e16: $0a
    ld c, $0a                                     ; $6e17: $0e $0a
    ld c, $0a                                     ; $6e19: $0e $0a
    ld c, $02                                     ; $6e1b: $0e $02
    ccf                                           ; $6e1d: $3f
    sub [hl]                                      ; $6e1e: $96
    jr nz, @+$41                                  ; $6e1f: $20 $3f

    ld e, a                                       ; $6e21: $5f
    ld a, a                                       ; $6e22: $7f
    ld h, h                                       ; $6e23: $64
    ld a, a                                       ; $6e24: $7f
    ld e, a                                       ; $6e25: $5f
    ld a, a                                       ; $6e26: $7f
    or c                                          ; $6e27: $b1
    rst $38                                       ; $6e28: $ff
    and b                                         ; $6e29: $a0
    rst $38                                       ; $6e2a: $ff
    xor $ff                                       ; $6e2b: $ee $ff
    db $e4                                        ; $6e2d: $e4
    rst $38                                       ; $6e2e: $ff
    xor d                                         ; $6e2f: $aa
    rst $38                                       ; $6e30: $ff
    ld e, a                                       ; $6e31: $5f
    ld a, a                                       ; $6e32: $7f
    ld b, b                                       ; $6e33: $40
    ld a, a                                       ; $6e34: $7f
    ld [bc], a                                    ; $6e35: $02
    inc b                                         ; $6e36: $04
    inc b                                         ; $6e37: $04
    ld b, $85                                     ; $6e38: $06 $85
    ld [bc], a                                    ; $6e3a: $02
    ld b, $05                                     ; $6e3b: $06 $05
    rlca                                          ; $6e3d: $07
    dec b                                         ; $6e3e: $05
    dec b                                         ; $6e3f: $05
    rlca                                          ; $6e40: $07
    adc [hl]                                      ; $6e41: $8e
    dec b                                         ; $6e42: $05
    rlca                                          ; $6e43: $07
    ld [bc], a                                    ; $6e44: $02
    ld b, $02                                     ; $6e45: $06 $02
    ld b, $72                                     ; $6e47: $06 $72
    cp $52                                        ; $6e49: $fe $52
    sbc $4a                                       ; $6e4b: $de $4a
    adc $ca                                       ; $6e4d: $ce $ca
    adc $02                                       ; $6e4f: $ce $02
    inc c                                         ; $6e51: $0c
    add d                                         ; $6e52: $82
    ld b, b                                       ; $6e53: $40
    ld h, b                                       ; $6e54: $60
    ld b, $20                                     ; $6e55: $06 $20
    jr jr_0e9_6e59                                ; $6e57: $18 $00

jr_0e9_6e59:
    rst $38                                       ; $6e59: $ff
    dec bc                                        ; $6e5a: $0b
    inc bc                                        ; $6e5b: $03
    db $f4                                        ; $6e5c: $f4
    dec bc                                        ; $6e5d: $0b
    ld a, [c]                                     ; $6e5e: $f2
    ld bc, $f3f2                                  ; $6e5f: $01 $f2 $f3
    ld a, [c]                                     ; $6e62: $f2
    ei                                            ; $6e63: $fb
    ld a, [c]                                     ; $6e64: $f2
    inc bc                                        ; $6e65: $03
    ld [bc], a                                    ; $6e66: $02
    nop                                           ; $6e67: $00
    ld [bc], a                                    ; $6e68: $02
    jr nz, jr_0e9_6e05                            ; $6e69: $20 $9a

    ld d, b                                       ; $6e6b: $50
    ld [hl], b                                    ; $6e6c: $70
    and b                                         ; $6e6d: $a0
    ldh [$a7], a                                  ; $6e6e: $e0 $a7
    rst $20                                       ; $6e70: $e7
    ld e, b                                       ; $6e71: $58

jr_0e9_6e72:
    ld a, a                                       ; $6e72: $7f
    jr nz, jr_0e9_6eb4                            ; $6e73: $20 $3f

    jr @+$21                                      ; $6e75: $18 $1f

    jr jr_0e9_6e98                                ; $6e77: $18 $1f

    ld [$040f], sp                                ; $6e79: $08 $0f $04
    rlca                                          ; $6e7c: $07
    add hl, bc                                    ; $6e7d: $09
    rrca                                          ; $6e7e: $0f
    ld a, [bc]                                    ; $6e7f: $0a
    rrca                                          ; $6e80: $0f
    dec bc                                        ; $6e81: $0b
    rrca                                          ; $6e82: $0f
    dec b                                         ; $6e83: $05
    rlca                                          ; $6e84: $07
    ld [bc], a                                    ; $6e85: $02
    ld b, $02                                     ; $6e86: $06 $02
    nop                                           ; $6e88: $00
    ld [bc], a                                    ; $6e89: $02
    ld bc, $0282                                  ; $6e8a: $01 $82 $02
    inc bc                                        ; $6e8d: $03
    ld [bc], a                                    ; $6e8e: $02
    rrca                                          ; $6e8f: $0f
    sub l                                         ; $6e90: $95
    ei                                            ; $6e91: $fb
    rst $38                                       ; $6e92: $ff
    ld h, e                                       ; $6e93: $63
    rst $38                                       ; $6e94: $ff
    ld bc, $01ff                                  ; $6e95: $01 $ff $01

jr_0e9_6e98:
    rst $38                                       ; $6e98: $ff
    ld [$40ff], sp                                ; $6e99: $08 $ff $40
    rst $38                                       ; $6e9c: $ff
    ld a, b                                       ; $6e9d: $78
    rst $38                                       ; $6e9e: $ff
    adc b                                         ; $6e9f: $88
    adc a                                         ; $6ea0: $8f
    add l                                         ; $6ea1: $85
    add a                                         ; $6ea2: $87
    dec b                                         ; $6ea3: $05
    rlca                                          ; $6ea4: $07
    ld [bc], a                                    ; $6ea5: $02
    inc bc                                        ; $6ea6: $03
    inc bc                                        ; $6ea7: $03
    ld [bc], a                                    ; $6ea8: $02
    ret nz                                        ; $6ea9: $c0

    sub d                                         ; $6eaa: $92
    ld a, b                                       ; $6eab: $78
    ld hl, sp+$2f                                 ; $6eac: $f8 $2f
    rst $38                                       ; $6eae: $ff
    dec hl                                        ; $6eaf: $2b
    rst $38                                       ; $6eb0: $ff
    or c                                          ; $6eb1: $b1
    rst $38                                       ; $6eb2: $ff
    ld b, c                                       ; $6eb3: $41

jr_0e9_6eb4:
    rst $38                                       ; $6eb4: $ff
    ld bc, $06ff                                  ; $6eb5: $01 $ff $06
    cp $b8                                        ; $6eb8: $fe $b8
    ld hl, sp+$60                                 ; $6eba: $f8 $60
    ldh [rSC], a                                  ; $6ebc: $e0 $02
    ret nz                                        ; $6ebe: $c0

    ld [bc], a                                    ; $6ebf: $02
    add b                                         ; $6ec0: $80
    add d                                         ; $6ec1: $82
    ld b, b                                       ; $6ec2: $40
    ret nz                                        ; $6ec3: $c0

    inc b                                         ; $6ec4: $04
    add b                                         ; $6ec5: $80
    ld [bc], a                                    ; $6ec6: $02
    nop                                           ; $6ec7: $00
    rst $38                                       ; $6ec8: $ff
    dec bc                                        ; $6ec9: $0b
    inc bc                                        ; $6eca: $03
    db $f4                                        ; $6ecb: $f4
    dec bc                                        ; $6ecc: $0b
    ld a, [c]                                     ; $6ecd: $f2
    ld bc, $f3f3                                  ; $6ece: $01 $f3 $f3
    di                                            ; $6ed1: $f3
    ei                                            ; $6ed2: $fb
    di                                            ; $6ed3: $f3
    inc bc                                        ; $6ed4: $03
    ld [bc], a                                    ; $6ed5: $02
    jr nz, jr_0e9_6e72                            ; $6ed6: $20 $9a

    ld d, b                                       ; $6ed8: $50
    ld [hl], b                                    ; $6ed9: $70
    and b                                         ; $6eda: $a0
    ldh [$a7], a                                  ; $6edb: $e0 $a7
    rst $20                                       ; $6edd: $e7
    ld e, b                                       ; $6ede: $58
    ld a, a                                       ; $6edf: $7f
    jr nz, jr_0e9_6f21                            ; $6ee0: $20 $3f

    jr @+$21                                      ; $6ee2: $18 $1f

    ld [$0c0f], sp                                ; $6ee4: $08 $0f $0c
    rrca                                          ; $6ee7: $0f
    inc b                                         ; $6ee8: $04
    rlca                                          ; $6ee9: $07
    add hl, bc                                    ; $6eea: $09
    rrca                                          ; $6eeb: $0f
    ld a, [bc]                                    ; $6eec: $0a
    rrca                                          ; $6eed: $0f
    dec bc                                        ; $6eee: $0b
    rrca                                          ; $6eef: $0f
    ld a, [bc]                                    ; $6ef0: $0a
    ld c, $02                                     ; $6ef1: $0e $02
    ld b, $04                                     ; $6ef3: $06 $04
    nop                                           ; $6ef5: $00
    ld [bc], a                                    ; $6ef6: $02
    ld bc, $0695                                  ; $6ef7: $01 $95 $06
    rlca                                          ; $6efa: $07
    ei                                            ; $6efb: $fb
    rst $38                                       ; $6efc: $ff
    db $e3                                        ; $6efd: $e3
    rst $38                                       ; $6efe: $ff
    inc bc                                        ; $6eff: $03
    rst $38                                       ; $6f00: $ff
    ld bc, $09ff                                  ; $6f01: $01 $ff $09
    rst $38                                       ; $6f04: $ff
    ld c, b                                       ; $6f05: $48
    rst $38                                       ; $6f06: $ff
    ld a, b                                       ; $6f07: $78
    rst $38                                       ; $6f08: $ff
    adc h                                         ; $6f09: $8c
    adc a                                         ; $6f0a: $8f
    add l                                         ; $6f0b: $85
    add a                                         ; $6f0c: $87
    dec b                                         ; $6f0d: $05
    inc bc                                        ; $6f0e: $03

jr_0e9_6f0f:
    rlca                                          ; $6f0f: $07
    inc b                                         ; $6f10: $04
    nop                                           ; $6f11: $00
    ld [bc], a                                    ; $6f12: $02
    ret nz                                        ; $6f13: $c0

    adc [hl]                                      ; $6f14: $8e
    jr c, jr_0e9_6f0f                             ; $6f15: $38 $f8

    cpl                                           ; $6f17: $2f
    rst $38                                       ; $6f18: $ff
    dec hl                                        ; $6f19: $2b
    rst $38                                       ; $6f1a: $ff
    pop af                                        ; $6f1b: $f1
    rst $38                                       ; $6f1c: $ff
    ld bc, $01ff                                  ; $6f1d: $01 $ff $01
    rst $38                                       ; $6f20: $ff

jr_0e9_6f21:
    ld b, $fe                                     ; $6f21: $06 $fe
    ld [bc], a                                    ; $6f23: $02
    ld hl, sp-$7e                                 ; $6f24: $f8 $82
    ld b, b                                       ; $6f26: $40
    ret nz                                        ; $6f27: $c0

    ld [bc], a                                    ; $6f28: $02
    add b                                         ; $6f29: $80
    ld [bc], a                                    ; $6f2a: $02
    nop                                           ; $6f2b: $00
    ld [bc], a                                    ; $6f2c: $02
    add b                                         ; $6f2d: $80
    ld b, $00                                     ; $6f2e: $06 $00
    rst $38                                       ; $6f30: $ff
    dec bc                                        ; $6f31: $0b
    inc bc                                        ; $6f32: $03
    db $f4                                        ; $6f33: $f4
    dec bc                                        ; $6f34: $0b
    ld a, [c]                                     ; $6f35: $f2
    ld bc, $f3f2                                  ; $6f36: $01 $f2 $f3
    ld a, [c]                                     ; $6f39: $f2
    ei                                            ; $6f3a: $fb
    ld a, [c]                                     ; $6f3b: $f2
    inc bc                                        ; $6f3c: $03
    inc b                                         ; $6f3d: $04
    nop                                           ; $6f3e: $00
    ld [bc], a                                    ; $6f3f: $02
    ld b, b                                       ; $6f40: $40
    sbc b                                         ; $6f41: $98
    and b                                         ; $6f42: $a0
    ldh [$a3], a                                  ; $6f43: $e0 $a3
    db $e3                                        ; $6f45: $e3
    cp h                                          ; $6f46: $bc
    rst $38                                       ; $6f47: $ff
    ld b, b                                       ; $6f48: $40
    ld a, a                                       ; $6f49: $7f
    jr c, jr_0e9_6f8b                             ; $6f4a: $38 $3f

    ld [$0c0f], sp                                ; $6f4c: $08 $0f $0c
    rrca                                          ; $6f4f: $0f
    ld [$090f], sp                                ; $6f50: $08 $0f $09
    rrca                                          ; $6f53: $0f
    rla                                           ; $6f54: $17
    rra                                           ; $6f55: $1f
    ld d, $1f                                     ; $6f56: $16 $1f
    rla                                           ; $6f58: $17
    rra                                           ; $6f59: $1f
    ld [bc], a                                    ; $6f5a: $02
    inc c                                         ; $6f5b: $0c
    ld [bc], a                                    ; $6f5c: $02
    nop                                           ; $6f5d: $00
    ld [bc], a                                    ; $6f5e: $02
    ld bc, $0282                                  ; $6f5f: $01 $82 $02
    inc bc                                        ; $6f62: $03
    ld [bc], a                                    ; $6f63: $02
    rrca                                          ; $6f64: $0f
    sub h                                         ; $6f65: $94
    ei                                            ; $6f66: $fb
    rst $38                                       ; $6f67: $ff
    ld h, e                                       ; $6f68: $63
    rst $38                                       ; $6f69: $ff
    ld bc, $01ff                                  ; $6f6a: $01 $ff $01
    rst $38                                       ; $6f6d: $ff
    nop                                           ; $6f6e: $00
    rst $38                                       ; $6f6f: $ff
    ld c, b                                       ; $6f70: $48
    rst $38                                       ; $6f71: $ff
    ld hl, sp-$01                                 ; $6f72: $f8 $ff
    adc h                                         ; $6f74: $8c
    adc a                                         ; $6f75: $8f
    ld b, $07                                     ; $6f76: $06 $07
    add l                                         ; $6f78: $85
    add a                                         ; $6f79: $87
    ld [bc], a                                    ; $6f7a: $02
    inc bc                                        ; $6f7b: $03
    ld [bc], a                                    ; $6f7c: $02
    nop                                           ; $6f7d: $00
    ld [bc], a                                    ; $6f7e: $02
    ret nz                                        ; $6f7f: $c0

    sub e                                         ; $6f80: $93
    ld a, b                                       ; $6f81: $78
    ld hl, sp+$2f                                 ; $6f82: $f8 $2f
    rst $38                                       ; $6f84: $ff
    dec hl                                        ; $6f85: $2b
    rst $38                                       ; $6f86: $ff
    or c                                          ; $6f87: $b1
    rst $38                                       ; $6f88: $ff
    ld b, c                                       ; $6f89: $41
    rst $38                                       ; $6f8a: $ff

jr_0e9_6f8b:
    ld bc, $02ff                                  ; $6f8b: $01 $ff $02
    cp $bc                                        ; $6f8e: $fe $bc
    db $fc                                        ; $6f90: $fc
    ld h, b                                       ; $6f91: $60
    ldh [rLCDC], a                                ; $6f92: $e0 $40
    inc bc                                        ; $6f94: $03
    ret nz                                        ; $6f95: $c0

    add h                                         ; $6f96: $84
    ld b, b                                       ; $6f97: $40
    ret nz                                        ; $6f98: $c0

    ld b, b                                       ; $6f99: $40
    ret nz                                        ; $6f9a: $c0

    ld [bc], a                                    ; $6f9b: $02
    add b                                         ; $6f9c: $80
    ld [bc], a                                    ; $6f9d: $02
    nop                                           ; $6f9e: $00
    rst $38                                       ; $6f9f: $ff
    dec bc                                        ; $6fa0: $0b
    inc bc                                        ; $6fa1: $03
    db $f4                                        ; $6fa2: $f4
    dec bc                                        ; $6fa3: $0b
    ld a, [c]                                     ; $6fa4: $f2
    ld bc, $f3f2                                  ; $6fa5: $01 $f2 $f3
    ld a, [c]                                     ; $6fa8: $f2
    ei                                            ; $6fa9: $fb
    ld a, [c]                                     ; $6faa: $f2
    inc bc                                        ; $6fab: $03
    inc b                                         ; $6fac: $04
    nop                                           ; $6fad: $00
    ld [bc], a                                    ; $6fae: $02
    ld h, b                                       ; $6faf: $60
    sub [hl]                                      ; $6fb0: $96
    and b                                         ; $6fb1: $a0
    ldh [$a7], a                                  ; $6fb2: $e0 $a7

jr_0e9_6fb4:
    rst $20                                       ; $6fb4: $e7
    cp b                                          ; $6fb5: $b8
    rst $38                                       ; $6fb6: $ff
    ld b, b                                       ; $6fb7: $40
    ld a, a                                       ; $6fb8: $7f
    jr c, @+$41                                   ; $6fb9: $38 $3f

    ld [$080f], sp                                ; $6fbb: $08 $0f $08
    rrca                                          ; $6fbe: $0f
    inc c                                         ; $6fbf: $0c
    rrca                                          ; $6fc0: $0f
    add hl, bc                                    ; $6fc1: $09
    rrca                                          ; $6fc2: $0f
    ld a, [bc]                                    ; $6fc3: $0a
    ld c, $0b                                     ; $6fc4: $0e $0b
    rrca                                          ; $6fc6: $0f
    ld [bc], a                                    ; $6fc7: $02
    ld c, $04                                     ; $6fc8: $0e $04
    nop                                           ; $6fca: $00
    ld [bc], a                                    ; $6fcb: $02
    ld bc, $0282                                  ; $6fcc: $01 $82 $02
    inc bc                                        ; $6fcf: $03
    ld [bc], a                                    ; $6fd0: $02
    rrca                                          ; $6fd1: $0f
    sub h                                         ; $6fd2: $94
    ei                                            ; $6fd3: $fb
    rst $38                                       ; $6fd4: $ff
    ld h, e                                       ; $6fd5: $63
    rst $38                                       ; $6fd6: $ff
    ld bc, $01ff                                  ; $6fd7: $01 $ff $01
    rst $38                                       ; $6fda: $ff
    ld b, b                                       ; $6fdb: $40
    rst $38                                       ; $6fdc: $ff
    ld c, b                                       ; $6fdd: $48
    rst $38                                       ; $6fde: $ff
    ld a, b                                       ; $6fdf: $78
    rst $38                                       ; $6fe0: $ff
    adc h                                         ; $6fe1: $8c
    adc a                                         ; $6fe2: $8f
    ld c, $0f                                     ; $6fe3: $0e $0f
    dec bc                                        ; $6fe5: $0b
    rrca                                          ; $6fe6: $0f
    ld [bc], a                                    ; $6fe7: $02
    rlca                                          ; $6fe8: $07
    ld [bc], a                                    ; $6fe9: $02
    nop                                           ; $6fea: $00
    ld [bc], a                                    ; $6feb: $02
    ret nz                                        ; $6fec: $c0

    sub e                                         ; $6fed: $93
    ld a, b                                       ; $6fee: $78
    ld hl, sp+$2f                                 ; $6fef: $f8 $2f
    rst $38                                       ; $6ff1: $ff
    dec hl                                        ; $6ff2: $2b
    rst $38                                       ; $6ff3: $ff
    or c                                          ; $6ff4: $b1
    rst $38                                       ; $6ff5: $ff
    ld b, c                                       ; $6ff6: $41
    rst $38                                       ; $6ff7: $ff
    ld bc, $06ff                                  ; $6ff8: $01 $ff $06
    cp $b8                                        ; $6ffb: $fe $b8
    ld hl, sp+$60                                 ; $6ffd: $f8 $60
    ldh [rLCDC], a                                ; $6fff: $e0 $40
    inc bc                                        ; $7001: $03
    ret nz                                        ; $7002: $c0

    ld [bc], a                                    ; $7003: $02
    add b                                         ; $7004: $80
    add h                                         ; $7005: $84
    ld b, b                                       ; $7006: $40
    ret nz                                        ; $7007: $c0

    ld b, b                                       ; $7008: $40
    ret nz                                        ; $7009: $c0

    ld [bc], a                                    ; $700a: $02
    add b                                         ; $700b: $80
    rst $38                                       ; $700c: $ff
    dec bc                                        ; $700d: $0b
    inc bc                                        ; $700e: $03
    db $f4                                        ; $700f: $f4
    dec bc                                        ; $7010: $0b
    ld a, [c]                                     ; $7011: $f2
    ld bc, $f3f3                                  ; $7012: $01 $f3 $f3
    di                                            ; $7015: $f3
    ei                                            ; $7016: $fb
    di                                            ; $7017: $f3
    inc bc                                        ; $7018: $03
    ld [bc], a                                    ; $7019: $02
    jr nz, jr_0e9_6fb4                            ; $701a: $20 $98

    ld d, b                                       ; $701c: $50
    ld [hl], b                                    ; $701d: $70
    and b                                         ; $701e: $a0
    ldh [$a7], a                                  ; $701f: $e0 $a7
    rst $20                                       ; $7021: $e7
    ld e, b                                       ; $7022: $58
    ld a, a                                       ; $7023: $7f
    jr nz, jr_0e9_7065                            ; $7024: $20 $3f

    jr jr_0e9_7047                                ; $7026: $18 $1f

    ld [$0c0f], sp                                ; $7028: $08 $0f $0c
    rrca                                          ; $702b: $0f
    ld c, $0f                                     ; $702c: $0e $0f
    inc c                                         ; $702e: $0c
    rrca                                          ; $702f: $0f
    dec c                                         ; $7030: $0d
    rrca                                          ; $7031: $0f
    ld a, [bc]                                    ; $7032: $0a
    rrca                                          ; $7033: $0f
    ld [bc], a                                    ; $7034: $02
    rlca                                          ; $7035: $07
    ld b, $00                                     ; $7036: $06 $00
    ld [bc], a                                    ; $7038: $02
    ld bc, $0697                                  ; $7039: $01 $97 $06
    rlca                                          ; $703c: $07
    ei                                            ; $703d: $fb
    rst $38                                       ; $703e: $ff
    db $e3                                        ; $703f: $e3
    rst $38                                       ; $7040: $ff
    inc bc                                        ; $7041: $03
    rst $38                                       ; $7042: $ff
    ld bc, $41ff                                  ; $7043: $01 $ff $41
    rst $38                                       ; $7046: $ff

jr_0e9_7047:
    jr z, @+$01                                   ; $7047: $28 $ff

    jr c, @+$01                                   ; $7049: $38 $ff

    ret z                                         ; $704b: $c8

    rst $08                                       ; $704c: $cf
    dec b                                         ; $704d: $05
    rlca                                          ; $704e: $07
    add l                                         ; $704f: $85
    add a                                         ; $7050: $87
    ld [bc], a                                    ; $7051: $02
    inc bc                                        ; $7052: $03

jr_0e9_7053:
    inc bc                                        ; $7053: $03
    ld [bc], a                                    ; $7054: $02
    nop                                           ; $7055: $00
    ld [bc], a                                    ; $7056: $02
    ret nz                                        ; $7057: $c0

    adc [hl]                                      ; $7058: $8e
    jr c, jr_0e9_7053                             ; $7059: $38 $f8

    cpl                                           ; $705b: $2f
    rst $38                                       ; $705c: $ff
    dec hl                                        ; $705d: $2b
    rst $38                                       ; $705e: $ff
    pop af                                        ; $705f: $f1
    rst $38                                       ; $7060: $ff
    ld bc, $01ff                                  ; $7061: $01 $ff $01
    rst $38                                       ; $7064: $ff

jr_0e9_7065:
    ld b, $fe                                     ; $7065: $06 $fe
    ld [bc], a                                    ; $7067: $02
    ld hl, sp-$7e                                 ; $7068: $f8 $82
    ld b, b                                       ; $706a: $40
    ret nz                                        ; $706b: $c0

    ld [bc], a                                    ; $706c: $02
    add b                                         ; $706d: $80
    inc b                                         ; $706e: $04
    nop                                           ; $706f: $00
    ld [bc], a                                    ; $7070: $02
    add b                                         ; $7071: $80
    inc b                                         ; $7072: $04
    nop                                           ; $7073: $00
    rst $38                                       ; $7074: $ff
    dec bc                                        ; $7075: $0b
    inc bc                                        ; $7076: $03
    db $f4                                        ; $7077: $f4
    dec bc                                        ; $7078: $0b
    ld a, [c]                                     ; $7079: $f2
    ld bc, $f3f2                                  ; $707a: $01 $f2 $f3
    ld a, [c]                                     ; $707d: $f2
    ei                                            ; $707e: $fb
    ld a, [c]                                     ; $707f: $f2
    inc bc                                        ; $7080: $03
    inc b                                         ; $7081: $04
    nop                                           ; $7082: $00
    ld [bc], a                                    ; $7083: $02
    ld h, b                                       ; $7084: $60
    sbc b                                         ; $7085: $98
    and b                                         ; $7086: $a0
    ldh [$a7], a                                  ; $7087: $e0 $a7
    rst $20                                       ; $7089: $e7
    cp b                                          ; $708a: $b8
    rst $38                                       ; $708b: $ff

jr_0e9_708c:
    ld b, b                                       ; $708c: $40
    ld a, a                                       ; $708d: $7f
    jr c, jr_0e9_70cf                             ; $708e: $38 $3f

    ld [$080f], sp                                ; $7090: $08 $0f $08
    rrca                                          ; $7093: $0f
    inc c                                         ; $7094: $0c
    rrca                                          ; $7095: $0f
    add hl, de                                    ; $7096: $19
    rra                                           ; $7097: $1f
    dec d                                         ; $7098: $15
    rra                                           ; $7099: $1f
    dec d                                         ; $709a: $15
    rra                                           ; $709b: $1f
    ld c, $0f                                     ; $709c: $0e $0f
    ld [bc], a                                    ; $709e: $02
    inc bc                                        ; $709f: $03
    ld [bc], a                                    ; $70a0: $02
    nop                                           ; $70a1: $00
    ld [bc], a                                    ; $70a2: $02
    ld bc, $0282                                  ; $70a3: $01 $82 $02
    inc bc                                        ; $70a6: $03
    ld [bc], a                                    ; $70a7: $02
    rrca                                          ; $70a8: $0f
    sub [hl]                                      ; $70a9: $96
    ei                                            ; $70aa: $fb
    rst $38                                       ; $70ab: $ff
    ld h, e                                       ; $70ac: $63
    rst $38                                       ; $70ad: $ff
    ld bc, $01ff                                  ; $70ae: $01 $ff $01
    rst $38                                       ; $70b1: $ff
    ld [$40ff], sp                                ; $70b2: $08 $ff $40
    rst $38                                       ; $70b5: $ff
    ld a, b                                       ; $70b6: $78
    rst $38                                       ; $70b7: $ff
    adc b                                         ; $70b8: $88
    adc a                                         ; $70b9: $8f
    add hl, bc                                    ; $70ba: $09
    rrca                                          ; $70bb: $0f
    dec b                                         ; $70bc: $05
    rlca                                          ; $70bd: $07
    add l                                         ; $70be: $85
    add a                                         ; $70bf: $87
    ld [bc], a                                    ; $70c0: $02
    inc bc                                        ; $70c1: $03
    ld [bc], a                                    ; $70c2: $02
    ret nz                                        ; $70c3: $c0

    sub d                                         ; $70c4: $92
    ld a, b                                       ; $70c5: $78
    ld hl, sp+$2f                                 ; $70c6: $f8 $2f
    rst $38                                       ; $70c8: $ff
    dec hl                                        ; $70c9: $2b
    rst $38                                       ; $70ca: $ff
    or c                                          ; $70cb: $b1
    rst $38                                       ; $70cc: $ff
    ld b, c                                       ; $70cd: $41
    rst $38                                       ; $70ce: $ff

jr_0e9_70cf:
    ld bc, $02ff                                  ; $70cf: $01 $ff $02
    cp $bc                                        ; $70d2: $fe $bc
    db $fc                                        ; $70d4: $fc
    ld h, b                                       ; $70d5: $60
    ldh [rDIV], a                                 ; $70d6: $e0 $04
    ret nz                                        ; $70d8: $c0

    add d                                         ; $70d9: $82
    ld b, b                                       ; $70da: $40
    ret nz                                        ; $70db: $c0

    ld [bc], a                                    ; $70dc: $02
    add b                                         ; $70dd: $80
    inc b                                         ; $70de: $04
    nop                                           ; $70df: $00
    rst $38                                       ; $70e0: $ff
    dec bc                                        ; $70e1: $0b
    inc bc                                        ; $70e2: $03
    db $f4                                        ; $70e3: $f4
    dec bc                                        ; $70e4: $0b
    ld a, [c]                                     ; $70e5: $f2
    ld bc, $f3f2                                  ; $70e6: $01 $f2 $f3
    ld a, [c]                                     ; $70e9: $f2
    ei                                            ; $70ea: $fb
    ld a, [c]                                     ; $70eb: $f2
    inc bc                                        ; $70ec: $03
    ld [bc], a                                    ; $70ed: $02
    nop                                           ; $70ee: $00
    ld [bc], a                                    ; $70ef: $02
    jr nz, jr_0e9_708c                            ; $70f0: $20 $9a

    ld d, b                                       ; $70f2: $50
    ld [hl], b                                    ; $70f3: $70
    and b                                         ; $70f4: $a0
    ldh [$a7], a                                  ; $70f5: $e0 $a7
    rst $20                                       ; $70f7: $e7
    ld e, b                                       ; $70f8: $58
    ld a, a                                       ; $70f9: $7f
    jr nz, jr_0e9_713b                            ; $70fa: $20 $3f

    jr @+$21                                      ; $70fc: $18 $1f

    ld [$080f], sp                                ; $70fe: $08 $0f $08
    rrca                                          ; $7101: $0f
    inc c                                         ; $7102: $0c
    rrca                                          ; $7103: $0f
    add hl, bc                                    ; $7104: $09
    rrca                                          ; $7105: $0f
    ld a, [bc]                                    ; $7106: $0a
    ld c, $0a                                     ; $7107: $0e $0a
    ld c, $05                                     ; $7109: $0e $05
    rlca                                          ; $710b: $07
    ld [bc], a                                    ; $710c: $02
    ld b, $02                                     ; $710d: $06 $02
    nop                                           ; $710f: $00
    ld [bc], a                                    ; $7110: $02
    ld bc, $0282                                  ; $7111: $01 $82 $02
    inc bc                                        ; $7114: $03
    ld [bc], a                                    ; $7115: $02
    rrca                                          ; $7116: $0f
    sub [hl]                                      ; $7117: $96
    ei                                            ; $7118: $fb
    rst $38                                       ; $7119: $ff
    ld h, e                                       ; $711a: $63
    rst $38                                       ; $711b: $ff
    ld bc, $01ff                                  ; $711c: $01 $ff $01
    rst $38                                       ; $711f: $ff
    ld [$40ff], sp                                ; $7120: $08 $ff $40
    rst $38                                       ; $7123: $ff
    ld a, b                                       ; $7124: $78
    rst $38                                       ; $7125: $ff
    adc b                                         ; $7126: $88
    adc a                                         ; $7127: $8f
    add hl, bc                                    ; $7128: $09
    rrca                                          ; $7129: $0f
    dec bc                                        ; $712a: $0b
    rrca                                          ; $712b: $0f
    ld a, [bc]                                    ; $712c: $0a
    ld c, $02                                     ; $712d: $0e $02
    ld b, $02                                     ; $712f: $06 $02
    ret nz                                        ; $7131: $c0

    sub d                                         ; $7132: $92
    ld a, b                                       ; $7133: $78
    ld hl, sp+$2f                                 ; $7134: $f8 $2f
    rst $38                                       ; $7136: $ff
    dec hl                                        ; $7137: $2b
    rst $38                                       ; $7138: $ff
    or c                                          ; $7139: $b1
    rst $38                                       ; $713a: $ff

jr_0e9_713b:
    ld b, c                                       ; $713b: $41
    rst $38                                       ; $713c: $ff
    ld bc, $06ff                                  ; $713d: $01 $ff $06
    cp $b8                                        ; $7140: $fe $b8
    ld hl, sp+$60                                 ; $7142: $f8 $60
    ldh [rSC], a                                  ; $7144: $e0 $02
    ret nz                                        ; $7146: $c0

    ld [bc], a                                    ; $7147: $02
    add b                                         ; $7148: $80
    add h                                         ; $7149: $84
    ld b, b                                       ; $714a: $40
    ret nz                                        ; $714b: $c0

    ld b, b                                       ; $714c: $40
    ret nz                                        ; $714d: $c0

    ld [bc], a                                    ; $714e: $02
    add b                                         ; $714f: $80
    ld [bc], a                                    ; $7150: $02
    nop                                           ; $7151: $00

jr_0e9_7152:
    rst $38                                       ; $7152: $ff
    rrca                                          ; $7153: $0f
    dec b                                         ; $7154: $05
    ld hl, sp+$08                                 ; $7155: $f8 $08
    ld [c], a                                     ; $7157: $e2
    ld bc, $f8e2                                  ; $7158: $01 $e2 $f8
    ld [c], a                                     ; $715b: $e2
    nop                                           ; $715c: $00
    ldh a, [rSB]                                  ; $715d: $f0 $01
    ld a, [c]                                     ; $715f: $f2
    ld hl, sp-$0e                                 ; $7160: $f8 $f2
    db $fd                                        ; $7162: $fd
    ld [bc], a                                    ; $7163: $02
    rlca                                          ; $7164: $07
    add d                                         ; $7165: $82
    ld d, $17                                     ; $7166: $16 $17
    ld [bc], a                                    ; $7168: $02
    rrca                                          ; $7169: $0f
    adc d                                         ; $716a: $8a
    dec e                                         ; $716b: $1d
    rra                                           ; $716c: $1f
    ld d, $1f                                     ; $716d: $16 $1f
    rla                                           ; $716f: $17
    rra                                           ; $7170: $1f
    add hl, bc                                    ; $7171: $09
    rrca                                          ; $7172: $0f
    dec e                                         ; $7173: $1d
    rra                                           ; $7174: $1f
    ld [bc], a                                    ; $7175: $02
    rrca                                          ; $7176: $0f
    adc [hl]                                      ; $7177: $8e
    ccf                                           ; $7178: $3f
    add hl, sp                                    ; $7179: $39
    ld e, a                                       ; $717a: $5f
    ld h, b                                       ; $717b: $60
    ld [hl], a                                    ; $717c: $77
    ld c, b                                       ; $717d: $48
    ld a, c                                       ; $717e: $79
    ld e, [hl]                                    ; $717f: $5e
    ld l, [hl]                                    ; $7180: $6e
    ld e, l                                       ; $7181: $5d
    db $db                                        ; $7182: $db
    cp a                                          ; $7183: $bf
    call c, $02bf                                 ; $7184: $dc $bf $02
    ldh [$8e], a                                  ; $7187: $e0 $8e
    cp b                                          ; $7189: $b8
    ld hl, sp-$14                                 ; $718a: $f8 $ec
    db $fc                                        ; $718c: $fc
    ld [hl], h                                    ; $718d: $74
    db $fc                                        ; $718e: $fc
    add sp, -$08                                  ; $718f: $e8 $f8
    ld [hl], h                                    ; $7191: $74
    db $fc                                        ; $7192: $fc
    and h                                         ; $7193: $a4
    db $fc                                        ; $7194: $fc
    ld e, b                                       ; $7195: $58
    ld hl, sp+$02                                 ; $7196: $f8 $02
    db $fc                                        ; $7198: $fc
    adc [hl]                                      ; $7199: $8e
    cp $6e                                        ; $719a: $fe $6e
    ld a, l                                       ; $719c: $7d
    add e                                         ; $719d: $83
    ld [hl], a                                    ; $719e: $77
    adc c                                         ; $719f: $89
    rst $08                                       ; $71a0: $cf
    cp l                                          ; $71a1: $bd
    cp e                                          ; $71a2: $bb
    db $dd                                        ; $71a3: $dd
    db $ed                                        ; $71a4: $ed
    cp $1d                                        ; $71a5: $fe $1d
    cp $04                                        ; $71a7: $fe $04
    ld bc, $1f8a                                  ; $71a9: $01 $8a $1f
    db $fd                                        ; $71ac: $fd
    adc l                                         ; $71ad: $8d
    ei                                            ; $71ae: $fb
    rst $18                                       ; $71af: $df
    db $fd                                        ; $71b0: $fd
    xor d                                         ; $71b1: $aa
    ld a, [$f8c8]                                 ; $71b2: $fa $c8 $f8
    ld [bc], a                                    ; $71b5: $02
    ldh a, [$81]                                  ; $71b6: $f0 $81
    ret nc                                        ; $71b8: $d0

    inc bc                                        ; $71b9: $03
    ldh a, [$85]                                  ; $71ba: $f0 $85
    ret nc                                        ; $71bc: $d0

    ldh a, [rSVBK]                                ; $71bd: $f0 $70
    ldh a, [$60]                                  ; $71bf: $f0 $60
    inc bc                                        ; $71c1: $03
    ldh [rSC], a                                  ; $71c2: $e0 $02
    ld h, b                                       ; $71c4: $60
    ld [bc], a                                    ; $71c5: $02
    jr nz, jr_0e9_7152                            ; $71c6: $20 $8a

    ld sp, hl                                     ; $71c8: $f9
    cp a                                          ; $71c9: $bf
    cp d                                          ; $71ca: $ba
    rst $18                                       ; $71cb: $df
    push af                                       ; $71cc: $f5
    cp a                                          ; $71cd: $bf
    ld e, e                                       ; $71ce: $5b
    ld e, a                                       ; $71cf: $5f
    rla                                           ; $71d0: $17
    rra                                           ; $71d1: $1f
    ld [bc], a                                    ; $71d2: $02
    rrca                                          ; $71d3: $0f
    add c                                         ; $71d4: $81
    dec bc                                        ; $71d5: $0b
    inc bc                                        ; $71d6: $03
    rrca                                          ; $71d7: $0f
    add l                                         ; $71d8: $85
    ld a, [bc]                                    ; $71d9: $0a
    rrca                                          ; $71da: $0f
    ld c, $0f                                     ; $71db: $0e $0f
    ld b, $03                                     ; $71dd: $06 $03
    rlca                                          ; $71df: $07
    ld [bc], a                                    ; $71e0: $02
    ld b, $02                                     ; $71e1: $06 $02
    inc b                                         ; $71e3: $04
    inc b                                         ; $71e4: $04
    ld c, $81                                     ; $71e5: $0e $81
    nop                                           ; $71e7: $00
    rlca                                          ; $71e8: $07
    db $10                                        ; $71e9: $10
    adc a                                         ; $71ea: $8f
    nop                                           ; $71eb: $00
    stop                                          ; $71ec: $10 $00
    stop                                          ; $71ee: $10 $00
    stop                                          ; $71f0: $10 $00
    stop                                          ; $71f2: $10 $00
    stop                                          ; $71f4: $10 $00
    stop                                          ; $71f6: $10 $00
    stop                                          ; $71f8: $10 $00
    inc bc                                        ; $71fa: $03
    db $10                                        ; $71fb: $10
    ld [bc], a                                    ; $71fc: $02
    nop                                           ; $71fd: $00
    inc b                                         ; $71fe: $04
    rlca                                          ; $71ff: $07
    rst $38                                       ; $7200: $ff
    rrca                                          ; $7201: $0f
    dec b                                         ; $7202: $05
    ld hl, sp+$08                                 ; $7203: $f8 $08
    ld [c], a                                     ; $7205: $e2
    ld bc, $f8e2                                  ; $7206: $01 $e2 $f8
    ld [c], a                                     ; $7209: $e2
    nop                                           ; $720a: $00
    ldh a, [rSB]                                  ; $720b: $f0 $01
    ld a, [c]                                     ; $720d: $f2
    ld hl, sp-$0e                                 ; $720e: $f8 $f2
    db $fd                                        ; $7210: $fd
    ld [bc], a                                    ; $7211: $02
    rlca                                          ; $7212: $07
    add d                                         ; $7213: $82
    ld d, $17                                     ; $7214: $16 $17
    ld [bc], a                                    ; $7216: $02
    rrca                                          ; $7217: $0f
    adc c                                         ; $7218: $89
    dec e                                         ; $7219: $1d
    rra                                           ; $721a: $1f
    ld d, $1f                                     ; $721b: $16 $1f
    rla                                           ; $721d: $17
    rra                                           ; $721e: $1f
    add hl, bc                                    ; $721f: $09
    rrca                                          ; $7220: $0f
    dec e                                         ; $7221: $1d
    inc bc                                        ; $7222: $03
    rra                                           ; $7223: $1f
    adc [hl]                                      ; $7224: $8e
    ccf                                           ; $7225: $3f
    add hl, sp                                    ; $7226: $39
    ld e, a                                       ; $7227: $5f
    ld h, b                                       ; $7228: $60
    ld a, a                                       ; $7229: $7f
    ld c, b                                       ; $722a: $48
    ld l, c                                       ; $722b: $69
    ld e, [hl]                                    ; $722c: $5e
    ld a, [hl]                                    ; $722d: $7e
    ld e, l                                       ; $722e: $5d
    db $db                                        ; $722f: $db
    cp a                                          ; $7230: $bf
    db $fc                                        ; $7231: $fc
    cp a                                          ; $7232: $bf
    ld [bc], a                                    ; $7233: $02
    ldh [$8e], a                                  ; $7234: $e0 $8e
    cp b                                          ; $7236: $b8
    ld hl, sp-$14                                 ; $7237: $f8 $ec
    db $fc                                        ; $7239: $fc
    ld [hl], h                                    ; $723a: $74
    db $fc                                        ; $723b: $fc
    add sp, -$08                                  ; $723c: $e8 $f8
    ld [hl], h                                    ; $723e: $74
    db $fc                                        ; $723f: $fc
    and h                                         ; $7240: $a4
    db $fc                                        ; $7241: $fc
    ld e, b                                       ; $7242: $58
    ld hl, sp+$02                                 ; $7243: $f8 $02
    db $fc                                        ; $7245: $fc
    adc [hl]                                      ; $7246: $8e
    cp $6e                                        ; $7247: $fe $6e
    ld a, l                                       ; $7249: $7d
    add e                                         ; $724a: $83
    ld [hl], a                                    ; $724b: $77
    adc c                                         ; $724c: $89
    rst $08                                       ; $724d: $cf
    cp c                                          ; $724e: $b9
    cp l                                          ; $724f: $bd
    rst $18                                       ; $7250: $df
    xor $fd                                       ; $7251: $ee $fd
    dec e                                         ; $7253: $1d
    cp $04                                        ; $7254: $fe $04
    ld bc, $1b8d                                  ; $7256: $01 $8d $1b
    db $fd                                        ; $7259: $fd
    dec c                                         ; $725a: $0d
    ei                                            ; $725b: $fb
    set 7, l                                      ; $725c: $cb $fd
    sbc $fe                                       ; $725e: $de $fe
    add sp, -$08                                  ; $7260: $e8 $f8
    add sp, -$08                                  ; $7262: $e8 $f8
    ret c                                         ; $7264: $d8

    inc bc                                        ; $7265: $03
    ld hl, sp-$7a                                 ; $7266: $f8 $86
    ld l, b                                       ; $7268: $68
    ld hl, sp+$78                                 ; $7269: $f8 $78
    ld hl, sp+$70                                 ; $726b: $f8 $70
    ldh a, [rSC]                                  ; $726d: $f0 $02
    or b                                          ; $726f: $b0
    ld [bc], a                                    ; $7270: $02
    jr nz, jr_0e9_7275                            ; $7271: $20 $02

    ld [hl], b                                    ; $7273: $70
    adc l                                         ; $7274: $8d

jr_0e9_7275:
    sbc l                                         ; $7275: $9d
    rst $38                                       ; $7276: $ff
    ld a, d                                       ; $7277: $7a
    ld e, a                                       ; $7278: $5f
    dec [hl]                                      ; $7279: $35
    ccf                                           ; $727a: $3f
    dec de                                        ; $727b: $1b
    rra                                           ; $727c: $1f
    rla                                           ; $727d: $17
    rra                                           ; $727e: $1f
    dec bc                                        ; $727f: $0b
    rrca                                          ; $7280: $0f
    dec bc                                        ; $7281: $0b
    inc bc                                        ; $7282: $03
    rrca                                          ; $7283: $0f
    add l                                         ; $7284: $85
    dec bc                                        ; $7285: $0b
    rrca                                          ; $7286: $0f
    ld c, $0f                                     ; $7287: $0e $0f
    ld b, $03                                     ; $7289: $06 $03
    rlca                                          ; $728b: $07
    ld [bc], a                                    ; $728c: $02
    inc b                                         ; $728d: $04
    inc b                                         ; $728e: $04
    ld b, $03                                     ; $728f: $06 $03
    nop                                           ; $7291: $00
    rlca                                          ; $7292: $07
    db $10                                        ; $7293: $10
    adc a                                         ; $7294: $8f
    nop                                           ; $7295: $00
    stop                                          ; $7296: $10 $00
    stop                                          ; $7298: $10 $00
    stop                                          ; $729a: $10 $00
    stop                                          ; $729c: $10 $00
    stop                                          ; $729e: $10 $00
    stop                                          ; $72a0: $10 $00
    stop                                          ; $72a2: $10 $00
    inc bc                                        ; $72a4: $03
    db $10                                        ; $72a5: $10
    ld [bc], a                                    ; $72a6: $02
    nop                                           ; $72a7: $00
    ld [bc], a                                    ; $72a8: $02
    inc bc                                        ; $72a9: $03
    ld [bc], a                                    ; $72aa: $02
    nop                                           ; $72ab: $00
    rst $38                                       ; $72ac: $ff
    rrca                                          ; $72ad: $0f
    dec b                                         ; $72ae: $05
    ld hl, sp+$08                                 ; $72af: $f8 $08
    ld [c], a                                     ; $72b1: $e2
    ld bc, $f8e3                                  ; $72b2: $01 $e3 $f8
    db $e3                                        ; $72b5: $e3
    nop                                           ; $72b6: $00
    pop af                                        ; $72b7: $f1
    ld bc, $f8f3                                  ; $72b8: $01 $f3 $f8
    di                                            ; $72bb: $f3
    ld sp, hl                                     ; $72bc: $f9
    ld [bc], a                                    ; $72bd: $02
    inc bc                                        ; $72be: $03
    add d                                         ; $72bf: $82
    ld e, $1f                                     ; $72c0: $1e $1f
    ld [bc], a                                    ; $72c2: $02
    rrca                                          ; $72c3: $0f
    adc d                                         ; $72c4: $8a
    dec e                                         ; $72c5: $1d
    rra                                           ; $72c6: $1f
    ld d, $1f                                     ; $72c7: $16 $1f
    dec bc                                        ; $72c9: $0b
    rrca                                          ; $72ca: $0f
    add hl, bc                                    ; $72cb: $09
    rrca                                          ; $72cc: $0f
    dec c                                         ; $72cd: $0d
    rrca                                          ; $72ce: $0f
    ld [bc], a                                    ; $72cf: $02
    rra                                           ; $72d0: $1f
    adc [hl]                                      ; $72d1: $8e
    ccf                                           ; $72d2: $3f
    add hl, sp                                    ; $72d3: $39
    ld e, a                                       ; $72d4: $5f
    ld h, b                                       ; $72d5: $60
    ld a, a                                       ; $72d6: $7f
    ld c, b                                       ; $72d7: $48
    ld l, c                                       ; $72d8: $69
    ld e, [hl]                                    ; $72d9: $5e
    ld a, a                                       ; $72da: $7f
    ld e, a                                       ; $72db: $5f
    call c, $fabf                                 ; $72dc: $dc $bf $fa
    cp a                                          ; $72df: $bf
    ld [bc], a                                    ; $72e0: $02
    ldh a, [$8e]                                  ; $72e1: $f0 $8e
    cp b                                          ; $72e3: $b8
    ld hl, sp-$14                                 ; $72e4: $f8 $ec
    db $fc                                        ; $72e6: $fc
    ld [hl], h                                    ; $72e7: $74
    db $fc                                        ; $72e8: $fc
    add sp, -$08                                  ; $72e9: $e8 $f8
    inc h                                         ; $72eb: $24
    db $fc                                        ; $72ec: $fc
    xor b                                         ; $72ed: $a8
    ld hl, sp+$78                                 ; $72ee: $f8 $78
    ld hl, sp+$02                                 ; $72f0: $f8 $02
    db $fc                                        ; $72f2: $fc
    adc [hl]                                      ; $72f3: $8e
    cp $6e                                        ; $72f4: $fe $6e
    ld a, l                                       ; $72f6: $7d
    add e                                         ; $72f7: $83
    ld a, a                                       ; $72f8: $7f
    adc c                                         ; $72f9: $89
    res 7, l                                      ; $72fa: $cb $bd
    db $fd                                        ; $72fc: $fd
    rst $38                                       ; $72fd: $ff
    ld e, $fd                                     ; $72fe: $1e $fd
    dec c                                         ; $7300: $0d
    cp $04                                        ; $7301: $fe $04
    ld bc, $8f96                                  ; $7303: $01 $96 $8f
    db $fd                                        ; $7306: $fd
    call $fffb                                    ; $7307: $cd $fb $ff
    db $fd                                        ; $730a: $fd
    xor $fe                                       ; $730b: $ee $fe
    ret c                                         ; $730d: $d8

    ld hl, sp+$78                                 ; $730e: $f8 $78
    ld hl, sp+$78                                 ; $7310: $f8 $78
    ld hl, sp+$68                                 ; $7312: $f8 $68
    ld hl, sp+$70                                 ; $7314: $f8 $70
    ldh a, [rSVBK]                                ; $7316: $f0 $70
    ldh a, [$50]                                  ; $7318: $f0 $50
    ret nc                                        ; $731a: $d0

    ld [bc], a                                    ; $731b: $02
    or b                                          ; $731c: $b0
    ld [bc], a                                    ; $731d: $02
    jr nc, jr_0e9_7322                            ; $731e: $30 $02

    nop                                           ; $7320: $00
    adc d                                         ; $7321: $8a

jr_0e9_7322:
    sub l                                         ; $7322: $95
    rst $38                                       ; $7323: $ff
    ld a, e                                       ; $7324: $7b
    ld e, a                                       ; $7325: $5f
    ld [hl], a                                    ; $7326: $77
    ld a, a                                       ; $7327: $7f
    rla                                           ; $7328: $17
    rra                                           ; $7329: $1f
    inc de                                        ; $732a: $13
    rra                                           ; $732b: $1f
    ld [bc], a                                    ; $732c: $02
    rrca                                          ; $732d: $0f
    add e                                         ; $732e: $83
    dec bc                                        ; $732f: $0b
    rrca                                          ; $7330: $0f
    add hl, bc                                    ; $7331: $09
    dec b                                         ; $7332: $05
    rrca                                          ; $7333: $0f
    ld b, $04                                     ; $7334: $06 $04
    inc b                                         ; $7336: $04
    ld c, $02                                     ; $7337: $0e $02
    nop                                           ; $7339: $00
    ld b, $01                                     ; $733a: $06 $01
    adc l                                         ; $733c: $8d
    nop                                           ; $733d: $00
    ld bc, $0100                                  ; $733e: $01 $00 $01
    nop                                           ; $7341: $00
    ld bc, $0100                                  ; $7342: $01 $00 $01
    nop                                           ; $7345: $00
    ld bc, $0100                                  ; $7346: $01 $00 $01
    nop                                           ; $7349: $00
    dec b                                         ; $734a: $05
    ld bc, $0008                                  ; $734b: $01 $08 $00
    rst $38                                       ; $734e: $ff
    rrca                                          ; $734f: $0f
    dec b                                         ; $7350: $05
    ld hl, sp+$08                                 ; $7351: $f8 $08
    ld [c], a                                     ; $7353: $e2
    ld bc, $f8e2                                  ; $7354: $01 $e2 $f8
    ld [c], a                                     ; $7357: $e2
    nop                                           ; $7358: $00
    ldh a, [rSB]                                  ; $7359: $f0 $01
    ld a, [c]                                     ; $735b: $f2
    ld hl, sp-$0e                                 ; $735c: $f8 $f2
    ld sp, hl                                     ; $735e: $f9
    ld [bc], a                                    ; $735f: $02
    inc bc                                        ; $7360: $03
    add d                                         ; $7361: $82
    ld d, $17                                     ; $7362: $16 $17
    ld [bc], a                                    ; $7364: $02
    rrca                                          ; $7365: $0f
    adc c                                         ; $7366: $89
    dec e                                         ; $7367: $1d
    rra                                           ; $7368: $1f
    ld d, $1f                                     ; $7369: $16 $1f
    inc de                                        ; $736b: $13
    rra                                           ; $736c: $1f
    dec c                                         ; $736d: $0d
    rrca                                          ; $736e: $0f
    dec e                                         ; $736f: $1d
    inc bc                                        ; $7370: $03
    rra                                           ; $7371: $1f
    adc [hl]                                      ; $7372: $8e
    ccf                                           ; $7373: $3f
    add hl, sp                                    ; $7374: $39
    ld e, a                                       ; $7375: $5f
    ld h, b                                       ; $7376: $60
    ld [hl], a                                    ; $7377: $77
    ld c, b                                       ; $7378: $48
    ld a, c                                       ; $7379: $79
    ld e, [hl]                                    ; $737a: $5e
    ld l, [hl]                                    ; $737b: $6e
    ld e, l                                       ; $737c: $5d
    db $db                                        ; $737d: $db
    cp a                                          ; $737e: $bf
    call c, $02bf                                 ; $737f: $dc $bf $02
    ldh [$8e], a                                  ; $7382: $e0 $8e
    cp b                                          ; $7384: $b8
    ld hl, sp-$14                                 ; $7385: $f8 $ec
    db $fc                                        ; $7387: $fc
    ld [hl], h                                    ; $7388: $74
    db $fc                                        ; $7389: $fc
    add sp, -$08                                  ; $738a: $e8 $f8
    ld [hl], h                                    ; $738c: $74
    db $fc                                        ; $738d: $fc
    xor h                                         ; $738e: $ac
    db $fc                                        ; $738f: $fc
    ld e, b                                       ; $7390: $58
    ld hl, sp+$02                                 ; $7391: $f8 $02
    db $fc                                        ; $7393: $fc
    adc [hl]                                      ; $7394: $8e
    cp $6e                                        ; $7395: $fe $6e
    ld a, l                                       ; $7397: $7d
    add e                                         ; $7398: $83
    ld [hl], a                                    ; $7399: $77
    adc c                                         ; $739a: $89
    rst $08                                       ; $739b: $cf
    cp l                                          ; $739c: $bd
    cp e                                          ; $739d: $bb
    db $dd                                        ; $739e: $dd
    db $ed                                        ; $739f: $ed
    cp $1d                                        ; $73a0: $fe $1d
    cp $04                                        ; $73a2: $fe $04
    ld bc, $1f8a                                  ; $73a4: $01 $8a $1f
    db $fd                                        ; $73a7: $fd
    adc l                                         ; $73a8: $8d
    ei                                            ; $73a9: $fb
    rst $18                                       ; $73aa: $df
    db $fd                                        ; $73ab: $fd
    xor d                                         ; $73ac: $aa
    ld a, [$f8c8]                                 ; $73ad: $fa $c8 $f8
    ld [bc], a                                    ; $73b0: $02
    ldh a, [$8b]                                  ; $73b1: $f0 $8b
    ret nc                                        ; $73b3: $d0

    ldh a, [rSVBK]                                ; $73b4: $f0 $70
    ldh a, [$50]                                  ; $73b6: $f0 $50
    ldh a, [rSVBK]                                ; $73b8: $f0 $70
    ldh a, [rNR41]                                ; $73ba: $f0 $20
    ldh [$60], a                                  ; $73bc: $e0 $60
    inc bc                                        ; $73be: $03
    ldh [rSC], a                                  ; $73bf: $e0 $02
    ld h, b                                       ; $73c1: $60
    adc c                                         ; $73c2: $89
    ld sp, hl                                     ; $73c3: $f9
    cp a                                          ; $73c4: $bf
    cp d                                          ; $73c5: $ba
    rst $18                                       ; $73c6: $df
    push af                                       ; $73c7: $f5
    cp a                                          ; $73c8: $bf
    ld e, e                                       ; $73c9: $5b
    ld e, a                                       ; $73ca: $5f
    rla                                           ; $73cb: $17
    inc bc                                        ; $73cc: $03
    rra                                           ; $73cd: $1f
    adc b                                         ; $73ce: $88
    dec de                                        ; $73cf: $1b
    rra                                           ; $73d0: $1f
    dec bc                                        ; $73d1: $0b
    rrca                                          ; $73d2: $0f
    add hl, bc                                    ; $73d3: $09
    rrca                                          ; $73d4: $0f
    dec bc                                        ; $73d5: $0b
    rrca                                          ; $73d6: $0f
    ld [bc], a                                    ; $73d7: $02
    ld c, $02                                     ; $73d8: $0e $02
    ld b, $04                                     ; $73da: $06 $04
    inc b                                         ; $73dc: $04
    ld [bc], a                                    ; $73dd: $02
    ld c, $02                                     ; $73de: $0e $02
    ld b, $81                                     ; $73e0: $06 $81
    nop                                           ; $73e2: $00
    rlca                                          ; $73e3: $07
    ld bc, $008b                                  ; $73e4: $01 $8b $00
    ld bc, $0100                                  ; $73e7: $01 $00 $01
    nop                                           ; $73ea: $00
    ld bc, $0100                                  ; $73eb: $01 $00 $01
    nop                                           ; $73ee: $00
    ld bc, $0500                                  ; $73ef: $01 $00 $05
    ld bc, $0008                                  ; $73f2: $01 $08 $00
    rst $38                                       ; $73f5: $ff
    rrca                                          ; $73f6: $0f
    dec b                                         ; $73f7: $05
    ld hl, sp+$08                                 ; $73f8: $f8 $08
    ld [c], a                                     ; $73fa: $e2
    ld bc, $f8e2                                  ; $73fb: $01 $e2 $f8
    ld [c], a                                     ; $73fe: $e2
    nop                                           ; $73ff: $00
    ldh a, [rSB]                                  ; $7400: $f0 $01
    ld a, [c]                                     ; $7402: $f2
    ld hl, sp-$0e                                 ; $7403: $f8 $f2
    db $fc                                        ; $7405: $fc
    ld [bc], a                                    ; $7406: $02
    rlca                                          ; $7407: $07
    add d                                         ; $7408: $82
    ld d, $17                                     ; $7409: $16 $17
    ld [bc], a                                    ; $740b: $02
    rrca                                          ; $740c: $0f
    adc c                                         ; $740d: $89
    dec e                                         ; $740e: $1d
    rra                                           ; $740f: $1f
    ld d, $1f                                     ; $7410: $16 $1f
    rla                                           ; $7412: $17
    rra                                           ; $7413: $1f
    add hl, bc                                    ; $7414: $09
    rrca                                          ; $7415: $0f
    dec e                                         ; $7416: $1d
    inc bc                                        ; $7417: $03
    rra                                           ; $7418: $1f
    adc [hl]                                      ; $7419: $8e
    ccf                                           ; $741a: $3f
    add hl, sp                                    ; $741b: $39
    ld e, a                                       ; $741c: $5f
    ld h, b                                       ; $741d: $60
    ld [hl], a                                    ; $741e: $77
    ld c, b                                       ; $741f: $48
    ld a, c                                       ; $7420: $79
    ld c, [hl]                                    ; $7421: $4e
    ld e, [hl]                                    ; $7422: $5e
    ld a, l                                       ; $7423: $7d
    cp e                                          ; $7424: $bb
    rst $18                                       ; $7425: $df
    call c, $02bf                                 ; $7426: $dc $bf $02
    ldh [$8e], a                                  ; $7429: $e0 $8e
    cp b                                          ; $742b: $b8
    ld hl, sp-$14                                 ; $742c: $f8 $ec
    db $fc                                        ; $742e: $fc
    ld [hl], h                                    ; $742f: $74
    db $fc                                        ; $7430: $fc
    add sp, -$08                                  ; $7431: $e8 $f8
    ld [hl], h                                    ; $7433: $74
    db $fc                                        ; $7434: $fc
    and h                                         ; $7435: $a4
    db $fc                                        ; $7436: $fc
    ld e, b                                       ; $7437: $58
    ld hl, sp+$02                                 ; $7438: $f8 $02
    db $fc                                        ; $743a: $fc
    adc [hl]                                      ; $743b: $8e
    cp $6e                                        ; $743c: $fe $6e
    ld a, l                                       ; $743e: $7d
    add e                                         ; $743f: $83
    ld a, a                                       ; $7440: $7f
    adc c                                         ; $7441: $89
    res 7, l                                      ; $7442: $cb $bd
    cp a                                          ; $7444: $bf
    db $dd                                        ; $7445: $dd
    db $ed                                        ; $7446: $ed
    cp $1f                                        ; $7447: $fe $1f
    cp $04                                        ; $7449: $fe $04
    ld bc, $198d                                  ; $744b: $01 $8d $19
    rst $38                                       ; $744e: $ff
    adc [hl]                                      ; $744f: $8e
    ld a, [$fcdc]                                 ; $7450: $fa $dc $fc
    add sp, -$08                                  ; $7453: $e8 $f8
    add sp, -$08                                  ; $7455: $e8 $f8
    ret nc                                        ; $7457: $d0

    ldh a, [$d0]                                  ; $7458: $f0 $d0
    inc bc                                        ; $745a: $03
    ldh a, [$85]                                  ; $745b: $f0 $85
    ld d, b                                       ; $745d: $50
    ldh a, [rSVBK]                                ; $745e: $f0 $70
    ldh a, [$60]                                  ; $7460: $f0 $60
    inc bc                                        ; $7462: $03
    ldh [rSC], a                                  ; $7463: $e0 $02
    jr nz, jr_0e9_7469                            ; $7465: $20 $02

    ld h, b                                       ; $7467: $60
    adc l                                         ; $7468: $8d

jr_0e9_7469:
    jp c, $b5bf                                   ; $7469: $da $bf $b5

    rst $18                                       ; $746c: $df
    db $db                                        ; $746d: $db
    cp a                                          ; $746e: $bf
    ld [hl], a                                    ; $746f: $77
    ld a, a                                       ; $7470: $7f
    rla                                           ; $7471: $17
    rra                                           ; $7472: $1f
    rla                                           ; $7473: $17
    rra                                           ; $7474: $1f
    dec de                                        ; $7475: $1b
    inc bc                                        ; $7476: $03
    rra                                           ; $7477: $1f
    add [hl]                                      ; $7478: $86
    rla                                           ; $7479: $17
    rra                                           ; $747a: $1f
    ld e, $1f                                     ; $747b: $1e $1f
    ld c, $0f                                     ; $747d: $0e $0f
    ld [bc], a                                    ; $747f: $02
    dec c                                         ; $7480: $0d
    ld [bc], a                                    ; $7481: $02
    inc b                                         ; $7482: $04
    ld [bc], a                                    ; $7483: $02
    ld c, $02                                     ; $7484: $0e $02
    inc c                                         ; $7486: $0c
    inc bc                                        ; $7487: $03
    nop                                           ; $7488: $00
    rlca                                          ; $7489: $07
    ld [$008f], sp                                ; $748a: $08 $8f $00
    ld [$0800], sp                                ; $748d: $08 $00 $08
    nop                                           ; $7490: $00
    ld [$0800], sp                                ; $7491: $08 $00 $08
    nop                                           ; $7494: $00
    ld [$0800], sp                                ; $7495: $08 $00 $08
    nop                                           ; $7498: $00
    ld [$0300], sp                                ; $7499: $08 $00 $03
    ld [$0002], sp                                ; $749c: $08 $02 $00
    ld [bc], a                                    ; $749f: $02
    inc bc                                        ; $74a0: $03
    ld [bc], a                                    ; $74a1: $02
    nop                                           ; $74a2: $00
    rst $38                                       ; $74a3: $ff
    rrca                                          ; $74a4: $0f
    dec b                                         ; $74a5: $05
    ld hl, sp+$08                                 ; $74a6: $f8 $08
    ld [c], a                                     ; $74a8: $e2
    ld bc, $f8e3                                  ; $74a9: $01 $e3 $f8
    db $e3                                        ; $74ac: $e3
    nop                                           ; $74ad: $00
    pop af                                        ; $74ae: $f1
    ld bc, $f8f3                                  ; $74af: $01 $f3 $f8
    di                                            ; $74b2: $f3
    db $fd                                        ; $74b3: $fd
    ld [bc], a                                    ; $74b4: $02
    inc bc                                        ; $74b5: $03
    add d                                         ; $74b6: $82
    ld e, $1f                                     ; $74b7: $1e $1f
    ld [bc], a                                    ; $74b9: $02
    rrca                                          ; $74ba: $0f
    adc d                                         ; $74bb: $8a
    dec e                                         ; $74bc: $1d
    rra                                           ; $74bd: $1f
    ld d, $1f                                     ; $74be: $16 $1f
    dec bc                                        ; $74c0: $0b
    rrca                                          ; $74c1: $0f
    add hl, bc                                    ; $74c2: $09
    rrca                                          ; $74c3: $0f
    dec c                                         ; $74c4: $0d
    rrca                                          ; $74c5: $0f
    ld [bc], a                                    ; $74c6: $02
    rra                                           ; $74c7: $1f
    adc [hl]                                      ; $74c8: $8e
    ccf                                           ; $74c9: $3f
    add hl, sp                                    ; $74ca: $39
    ld e, a                                       ; $74cb: $5f
    ld h, b                                       ; $74cc: $60
    ld a, a                                       ; $74cd: $7f
    ld c, b                                       ; $74ce: $48
    ld l, c                                       ; $74cf: $69
    ld e, [hl]                                    ; $74d0: $5e
    ld e, a                                       ; $74d1: $5f
    ld a, a                                       ; $74d2: $7f
    cp h                                          ; $74d3: $bc
    rst $18                                       ; $74d4: $df
    db $dd                                        ; $74d5: $dd
    cp a                                          ; $74d6: $bf
    ld [bc], a                                    ; $74d7: $02
    ldh a, [$8e]                                  ; $74d8: $f0 $8e
    cp b                                          ; $74da: $b8
    ld hl, sp-$14                                 ; $74db: $f8 $ec
    db $fc                                        ; $74dd: $fc
    ld [hl], h                                    ; $74de: $74
    db $fc                                        ; $74df: $fc
    add sp, -$08                                  ; $74e0: $e8 $f8
    inc h                                         ; $74e2: $24
    db $fc                                        ; $74e3: $fc
    xor b                                         ; $74e4: $a8
    ld hl, sp+$78                                 ; $74e5: $f8 $78
    ld hl, sp+$02                                 ; $74e7: $f8 $02
    db $fc                                        ; $74e9: $fc
    adc [hl]                                      ; $74ea: $8e
    cp $6e                                        ; $74eb: $fe $6e
    ld a, l                                       ; $74ed: $7d
    add e                                         ; $74ee: $83
    ld a, a                                       ; $74ef: $7f
    adc c                                         ; $74f0: $89
    res 7, l                                      ; $74f1: $cb $bd
    rst $38                                       ; $74f3: $ff
    db $fd                                        ; $74f4: $fd
    dec e                                         ; $74f5: $1d
    cp $0f                                        ; $74f6: $fe $0f
    cp $04                                        ; $74f8: $fe $04
    ld bc, $898a                                  ; $74fa: $01 $8a $89
    rst $38                                       ; $74fd: $ff
    adc [hl]                                      ; $74fe: $8e
    ld a, [$fede]                                 ; $74ff: $fa $de $fe
    add sp, -$08                                  ; $7502: $e8 $f8
    ret z                                         ; $7504: $c8

    ld hl, sp+$02                                 ; $7505: $f8 $02
    ldh a, [$83]                                  ; $7507: $f0 $83
    ret nc                                        ; $7509: $d0

    ldh a, [$90]                                  ; $750a: $f0 $90
    dec b                                         ; $750c: $05
    ldh a, [rTMA]                                 ; $750d: $f0 $06
    jr nz, jr_0e9_7513                            ; $750f: $20 $02

    ld [hl], b                                    ; $7511: $70
    sub [hl]                                      ; $7512: $96

jr_0e9_7513:
    ld a, [$b5bf]                                 ; $7513: $fa $bf $b5
    rst $18                                       ; $7516: $df
    rst $38                                       ; $7517: $ff
    cp a                                          ; $7518: $bf
    ld [hl], a                                    ; $7519: $77
    ld a, a                                       ; $751a: $7f
    dec de                                        ; $751b: $1b
    rra                                           ; $751c: $1f
    ld e, $1f                                     ; $751d: $1e $1f
    ld e, $1f                                     ; $751f: $1e $1f
    ld d, $1f                                     ; $7521: $16 $1f
    ld c, $0f                                     ; $7523: $0e $0f
    ld c, $0f                                     ; $7525: $0e $0f
    ld a, [bc]                                    ; $7527: $0a
    dec bc                                        ; $7528: $0b
    ld [bc], a                                    ; $7529: $02
    dec c                                         ; $752a: $0d
    ld [bc], a                                    ; $752b: $02
    inc c                                         ; $752c: $0c
    ld b, $00                                     ; $752d: $06 $00
    ld b, $10                                     ; $752f: $06 $10
    adc l                                         ; $7531: $8d
    nop                                           ; $7532: $00
    stop                                          ; $7533: $10 $00
    stop                                          ; $7535: $10 $00
    stop                                          ; $7537: $10 $00
    stop                                          ; $7539: $10 $00
    stop                                          ; $753b: $10 $00
    stop                                          ; $753d: $10 $00
    dec b                                         ; $753f: $05
    db $10                                        ; $7540: $10
    inc b                                         ; $7541: $04

jr_0e9_7542:
    nop                                           ; $7542: $00
    ld [bc], a                                    ; $7543: $02
    rlca                                          ; $7544: $07
    ld [bc], a                                    ; $7545: $02
    nop                                           ; $7546: $00
    rst $38                                       ; $7547: $ff
    rrca                                          ; $7548: $0f
    dec b                                         ; $7549: $05
    ld hl, sp+$08                                 ; $754a: $f8 $08
    ld [c], a                                     ; $754c: $e2
    ld bc, $f8e2                                  ; $754d: $01 $e2 $f8
    ld [c], a                                     ; $7550: $e2
    nop                                           ; $7551: $00
    ldh a, [rSB]                                  ; $7552: $f0 $01
    ld a, [c]                                     ; $7554: $f2
    ld hl, sp-$0e                                 ; $7555: $f8 $f2
    db $fd                                        ; $7557: $fd
    ld [bc], a                                    ; $7558: $02
    inc bc                                        ; $7559: $03
    add d                                         ; $755a: $82
    ld d, $17                                     ; $755b: $16 $17
    ld [bc], a                                    ; $755d: $02
    rrca                                          ; $755e: $0f
    adc c                                         ; $755f: $89
    dec e                                         ; $7560: $1d
    rra                                           ; $7561: $1f
    ld d, $1f                                     ; $7562: $16 $1f
    inc de                                        ; $7564: $13
    rra                                           ; $7565: $1f
    dec c                                         ; $7566: $0d
    rrca                                          ; $7567: $0f
    dec e                                         ; $7568: $1d
    inc bc                                        ; $7569: $03
    rra                                           ; $756a: $1f
    adc [hl]                                      ; $756b: $8e
    ccf                                           ; $756c: $3f
    add hl, sp                                    ; $756d: $39
    ld e, a                                       ; $756e: $5f
    ld h, b                                       ; $756f: $60
    ld [hl], a                                    ; $7570: $77
    ld c, b                                       ; $7571: $48
    ld a, c                                       ; $7572: $79
    ld e, [hl]                                    ; $7573: $5e
    ld l, [hl]                                    ; $7574: $6e
    ld e, l                                       ; $7575: $5d
    db $db                                        ; $7576: $db
    cp a                                          ; $7577: $bf
    call c, $02bf                                 ; $7578: $dc $bf $02
    ldh [$8e], a                                  ; $757b: $e0 $8e
    cp b                                          ; $757d: $b8
    ld hl, sp-$14                                 ; $757e: $f8 $ec
    db $fc                                        ; $7580: $fc
    ld [hl], h                                    ; $7581: $74
    db $fc                                        ; $7582: $fc
    add sp, -$08                                  ; $7583: $e8 $f8
    ld [hl], h                                    ; $7585: $74
    db $fc                                        ; $7586: $fc
    xor h                                         ; $7587: $ac
    db $fc                                        ; $7588: $fc
    ld e, b                                       ; $7589: $58
    ld hl, sp+$02                                 ; $758a: $f8 $02
    db $fc                                        ; $758c: $fc
    adc [hl]                                      ; $758d: $8e
    cp $6e                                        ; $758e: $fe $6e
    ld a, l                                       ; $7590: $7d
    add e                                         ; $7591: $83
    ld [hl], a                                    ; $7592: $77
    adc c                                         ; $7593: $89
    rst $08                                       ; $7594: $cf
    cp l                                          ; $7595: $bd
    cp e                                          ; $7596: $bb
    db $dd                                        ; $7597: $dd
    db $ed                                        ; $7598: $ed
    cp $1d                                        ; $7599: $fe $1d
    cp $04                                        ; $759b: $fe $04
    ld bc, $1f94                                  ; $759d: $01 $94 $1f
    db $fd                                        ; $75a0: $fd
    dec c                                         ; $75a1: $0d
    ei                                            ; $75a2: $fb
    adc a                                         ; $75a3: $8f
    db $fd                                        ; $75a4: $fd
    jp z, $e8fa                                   ; $75a5: $ca $fa $e8

    ld hl, sp-$18                                 ; $75a8: $f8 $e8
    ld hl, sp-$28                                 ; $75aa: $f8 $d8
    ld hl, sp-$30                                 ; $75ac: $f8 $d0
    ldh a, [$90]                                  ; $75ae: $f0 $90
    ldh a, [$d0]                                  ; $75b0: $f0 $d0
    ldh a, [rSC]                                  ; $75b2: $f0 $02
    ld [hl], b                                    ; $75b4: $70
    ld [bc], a                                    ; $75b5: $02
    ld h, b                                       ; $75b6: $60
    inc b                                         ; $75b7: $04
    jr nz, jr_0e9_7542                            ; $75b8: $20 $88

    ld a, [$b5bf]                                 ; $75ba: $fa $bf $b5
    rst $18                                       ; $75bd: $df
    ei                                            ; $75be: $fb
    cp a                                          ; $75bf: $bf
    ld d, a                                       ; $75c0: $57
    ld e, a                                       ; $75c1: $5f
    ld [bc], a                                    ; $75c2: $02
    rra                                           ; $75c3: $1f
    ld [bc], a                                    ; $75c4: $02
    rrca                                          ; $75c5: $0f
    adc e                                         ; $75c6: $8b
    dec bc                                        ; $75c7: $0b
    rrca                                          ; $75c8: $0f
    ld c, $0f                                     ; $75c9: $0e $0f
    ld a, [bc]                                    ; $75cb: $0a
    rrca                                          ; $75cc: $0f
    ld c, $0f                                     ; $75cd: $0e $0f
    inc b                                         ; $75cf: $04
    rlca                                          ; $75d0: $07
    ld b, $03                                     ; $75d1: $06 $03
    rlca                                          ; $75d3: $07
    ld [bc], a                                    ; $75d4: $02
    ld b, $05                                     ; $75d5: $06 $05
    nop                                           ; $75d7: $00
    rlca                                          ; $75d8: $07
    db $10                                        ; $75d9: $10
    adc e                                         ; $75da: $8b
    nop                                           ; $75db: $00
    stop                                          ; $75dc: $10 $00
    stop                                          ; $75de: $10 $00
    stop                                          ; $75e0: $10 $00
    stop                                          ; $75e2: $10 $00
    stop                                          ; $75e4: $10 $00
    dec b                                         ; $75e6: $05
    db $10                                        ; $75e7: $10
    inc b                                         ; $75e8: $04
    nop                                           ; $75e9: $00
    ld [bc], a                                    ; $75ea: $02
    rlca                                          ; $75eb: $07
    ld [bc], a                                    ; $75ec: $02
    ld b, $ff                                     ; $75ed: $06 $ff

jr_0e9_75ef:
    rrca                                          ; $75ef: $0f
    dec b                                         ; $75f0: $05
    ld hl, sp+$08                                 ; $75f1: $f8 $08
    ld [c], a                                     ; $75f3: $e2
    ld bc, $f8e2                                  ; $75f4: $01 $e2 $f8
    ld [c], a                                     ; $75f7: $e2
    nop                                           ; $75f8: $00
    ldh a, [rSB]                                  ; $75f9: $f0 $01
    ld a, [c]                                     ; $75fb: $f2
    ld hl, sp-$0e                                 ; $75fc: $f8 $f2
    db $fd                                        ; $75fe: $fd
    ld [bc], a                                    ; $75ff: $02
    inc bc                                        ; $7600: $03
    sub b                                         ; $7601: $90
    ld c, $0f                                     ; $7602: $0e $0f
    rla                                           ; $7604: $17
    dec e                                         ; $7605: $1d
    inc e                                         ; $7606: $1c
    rla                                           ; $7607: $17
    rra                                           ; $7608: $1f
    rla                                           ; $7609: $17
    rra                                           ; $760a: $1f
    inc e                                         ; $760b: $1c
    rla                                           ; $760c: $17
    dec e                                         ; $760d: $1d
    ld a, [bc]                                    ; $760e: $0a
    rrca                                          ; $760f: $0f
    ld e, $1f                                     ; $7610: $1e $1f
    ld [bc], a                                    ; $7612: $02
    rrca                                          ; $7613: $0f
    adc h                                         ; $7614: $8c
    ld a, $3f                                     ; $7615: $3e $3f
    ld a, a                                       ; $7617: $7f
    ld c, b                                       ; $7618: $48
    ld l, a                                       ; $7619: $6f
    ld e, b                                       ; $761a: $58
    ld e, [hl]                                    ; $761b: $5e
    ld a, a                                       ; $761c: $7f
    db $eb                                        ; $761d: $eb
    sbc h                                         ; $761e: $9c
    xor a                                         ; $761f: $af
    ret c                                         ; $7620: $d8

    ld [bc], a                                    ; $7621: $02
    ldh a, [$8f]                                  ; $7622: $f0 $8f
    call nc, $f8f4                                ; $7624: $d4 $f4 $f8
    cp b                                          ; $7627: $b8
    sbc h                                         ; $7628: $9c
    ld [hl], h                                    ; $7629: $74
    db $fc                                        ; $762a: $fc
    ld [hl], h                                    ; $762b: $74
    db $fc                                        ; $762c: $fc
    call c, $dc74                                 ; $762d: $dc $74 $dc
    xor h                                         ; $7630: $ac
    db $fc                                        ; $7631: $fc
    ld e, b                                       ; $7632: $58
    inc bc                                        ; $7633: $03
    ld hl, sp-$74                                 ; $7634: $f8 $8c
    cp [hl]                                       ; $7636: $be
    ld a, [hl]                                    ; $7637: $7e
    rst $38                                       ; $7638: $ff
    adc c                                         ; $7639: $89
    ei                                            ; $763a: $fb
    adc l                                         ; $763b: $8d
    db $fd                                        ; $763c: $fd
    ccf                                           ; $763d: $3f
    db $eb                                        ; $763e: $eb
    sbc h                                         ; $763f: $9c
    ld a, [$040d]                                 ; $7640: $fa $0d $04
    ld bc, $fb8f                                  ; $7643: $01 $8f $fb
    dec e                                         ; $7646: $1d
    db $db                                        ; $7647: $db
    dec a                                         ; $7648: $3d
    cp a                                          ; $7649: $bf
    db $fd                                        ; $764a: $fd
    rst $38                                       ; $764b: $ff
    ld sp, hl                                     ; $764c: $f9
    db $ed                                        ; $764d: $ed
    ei                                            ; $764e: $fb
    sbc [hl]                                      ; $764f: $9e
    cp $98                                        ; $7650: $fe $98
    ld hl, sp-$50                                 ; $7652: $f8 $b0
    inc bc                                        ; $7654: $03
    ldh a, [$82]                                  ; $7655: $f0 $82
    ret nc                                        ; $7657: $d0

    ldh a, [rSC]                                  ; $7658: $f0 $02
    ld [hl], b                                    ; $765a: $70
    inc b                                         ; $765b: $04
    ld h, b                                       ; $765c: $60
    ld [bc], a                                    ; $765d: $02
    jr nz, jr_0e9_75ef                            ; $765e: $20 $8f

    rst $18                                       ; $7660: $df
    cp b                                          ; $7661: $b8
    db $db                                        ; $7662: $db
    cp h                                          ; $7663: $bc
    db $fd                                        ; $7664: $fd
    cp a                                          ; $7665: $bf
    rst $38                                       ; $7666: $ff
    sbc a                                         ; $7667: $9f
    or a                                          ; $7668: $b7
    rst $18                                       ; $7669: $df
    ld a, c                                       ; $766a: $79
    ld a, a                                       ; $766b: $7f
    dec de                                        ; $766c: $1b
    rra                                           ; $766d: $1f
    dec c                                         ; $766e: $0d
    inc bc                                        ; $766f: $03
    rrca                                          ; $7670: $0f
    add d                                         ; $7671: $82
    dec bc                                        ; $7672: $0b
    rrca                                          ; $7673: $0f
    ld [bc], a                                    ; $7674: $02
    ld c, $04                                     ; $7675: $0e $04
    ld b, $02                                     ; $7677: $06 $02
    inc b                                         ; $7679: $04
    inc b                                         ; $767a: $04
    ld c, $83                                     ; $767b: $0e $83
    nop                                           ; $767d: $00
    stop                                          ; $767e: $10 $00
    dec c                                         ; $7680: $0d
    db $10                                        ; $7681: $10
    inc c                                         ; $7682: $0c
    nop                                           ; $7683: $00
    inc b                                         ; $7684: $04
    rlca                                          ; $7685: $07
    rst $38                                       ; $7686: $ff
    rrca                                          ; $7687: $0f
    dec b                                         ; $7688: $05
    ld hl, sp+$08                                 ; $7689: $f8 $08
    ld [c], a                                     ; $768b: $e2
    ld bc, $f8e2                                  ; $768c: $01 $e2 $f8
    ld [c], a                                     ; $768f: $e2
    nop                                           ; $7690: $00
    pop af                                        ; $7691: $f1
    ld bc, $f8f2                                  ; $7692: $01 $f2 $f8
    ld a, [c]                                     ; $7695: $f2
    ld sp, hl                                     ; $7696: $f9
    ld [bc], a                                    ; $7697: $02
    inc bc                                        ; $7698: $03
    sub b                                         ; $7699: $90
    ld c, $0f                                     ; $769a: $0e $0f
    rla                                           ; $769c: $17
    dec e                                         ; $769d: $1d
    inc e                                         ; $769e: $1c
    rla                                           ; $769f: $17
    rra                                           ; $76a0: $1f
    rla                                           ; $76a1: $17
    rra                                           ; $76a2: $1f
    inc e                                         ; $76a3: $1c
    rla                                           ; $76a4: $17
    dec e                                         ; $76a5: $1d
    ld a, [bc]                                    ; $76a6: $0a
    rrca                                          ; $76a7: $0f
    ld e, $1f                                     ; $76a8: $1e $1f
    ld [bc], a                                    ; $76aa: $02
    rrca                                          ; $76ab: $0f
    adc h                                         ; $76ac: $8c
    ld a, $3f                                     ; $76ad: $3e $3f
    ld e, a                                       ; $76af: $5f
    ld l, b                                       ; $76b0: $68
    ld l, a                                       ; $76b1: $6f
    ld e, b                                       ; $76b2: $58
    ld e, [hl]                                    ; $76b3: $5e
    ld a, a                                       ; $76b4: $7f
    ld l, e                                       ; $76b5: $6b
    ld e, h                                       ; $76b6: $5c
    rst $38                                       ; $76b7: $ff
    cp b                                          ; $76b8: $b8
    ld [bc], a                                    ; $76b9: $02
    ldh a, [$8f]                                  ; $76ba: $f0 $8f
    call nc, $f8f4                                ; $76bc: $d4 $f4 $f8
    cp b                                          ; $76bf: $b8
    sbc h                                         ; $76c0: $9c
    ld [hl], h                                    ; $76c1: $74
    db $fc                                        ; $76c2: $fc
    ld [hl], h                                    ; $76c3: $74
    db $fc                                        ; $76c4: $fc
    call c, $dc74                                 ; $76c5: $dc $74 $dc
    xor h                                         ; $76c8: $ac
    db $fc                                        ; $76c9: $fc
    ld e, b                                       ; $76ca: $58
    inc bc                                        ; $76cb: $03
    ld hl, sp-$74                                 ; $76cc: $f8 $8c
    cp [hl]                                       ; $76ce: $be
    ld a, [hl]                                    ; $76cf: $7e
    ld sp, hl                                     ; $76d0: $f9
    adc a                                         ; $76d1: $8f
    rst $30                                       ; $76d2: $f7
    adc c                                         ; $76d3: $89
    rst $38                                       ; $76d4: $ff
    dec a                                         ; $76d5: $3d
    rst $28                                       ; $76d6: $ef
    sbc c                                         ; $76d7: $99
    ld a, [$020f]                                 ; $76d8: $fa $0f $02
    ld bc, $ff8f                                  ; $76db: $01 $8f $ff
    add hl, de                                    ; $76de: $19
    rst $18                                       ; $76df: $df
    add hl, sp                                    ; $76e0: $39
    cp l                                          ; $76e1: $bd
    ei                                            ; $76e2: $fb
    cp $f2                                        ; $76e3: $fe $f2
    cp $f2                                        ; $76e5: $fe $f2
    call c, $98fc                                 ; $76e7: $dc $fc $98
    ld hl, sp-$50                                 ; $76ea: $f8 $b0
    inc bc                                        ; $76ec: $03
    ldh a, [$81]                                  ; $76ed: $f0 $81
    and b                                         ; $76ef: $a0
    inc bc                                        ; $76f0: $03

jr_0e9_76f1:
    ldh [rDIV], a                                 ; $76f1: $e0 $04
    ld b, b                                       ; $76f3: $40
    inc b                                         ; $76f4: $04
    ld h, b                                       ; $76f5: $60
    add l                                         ; $76f6: $85
    rst $18                                       ; $76f7: $df
    cp b                                          ; $76f8: $b8
    ei                                            ; $76f9: $fb
    cp h                                          ; $76fa: $bc
    sbc l                                         ; $76fb: $9d
    ld [bc], a                                    ; $76fc: $02
    rst $38                                       ; $76fd: $ff
    add h                                         ; $76fe: $84
    sbc a                                         ; $76ff: $9f
    ld [hl], a                                    ; $7700: $77
    ld a, a                                       ; $7701: $7f
    add hl, de                                    ; $7702: $19
    inc bc                                        ; $7703: $03
    rra                                           ; $7704: $1f
    ld [bc], a                                    ; $7705: $02
    rrca                                          ; $7706: $0f
    add e                                         ; $7707: $83
    dec bc                                        ; $7708: $0b
    rrca                                          ; $7709: $0f
    ld a, [bc]                                    ; $770a: $0a
    inc bc                                        ; $770b: $03
    ld c, $04                                     ; $770c: $0e $04
    inc b                                         ; $770e: $04
    inc b                                         ; $770f: $04
    ld c, $02                                     ; $7710: $0e $02
    inc b                                         ; $7712: $04
    add e                                         ; $7713: $83
    nop                                           ; $7714: $00
    ld bc, $0d00                                  ; $7715: $01 $00 $0d
    ld bc, $0010                                  ; $7718: $01 $10 $00
    rst $38                                       ; $771b: $ff
    rrca                                          ; $771c: $0f
    dec b                                         ; $771d: $05
    ld hl, sp+$08                                 ; $771e: $f8 $08
    ld [c], a                                     ; $7720: $e2
    ld bc, $f8e3                                  ; $7721: $01 $e3 $f8
    db $e3                                        ; $7724: $e3
    nop                                           ; $7725: $00
    di                                            ; $7726: $f3
    ld hl, sp-$0d                                 ; $7727: $f8 $f3
    nop                                           ; $7729: $00
    di                                            ; $772a: $f3
    ld bc, $0702                                  ; $772b: $01 $02 $07
    adc a                                         ; $772e: $8f
    ld c, $0f                                     ; $772f: $0e $0f
    rla                                           ; $7731: $17
    dec e                                         ; $7732: $1d
    inc e                                         ; $7733: $1c
    rla                                           ; $7734: $17
    rra                                           ; $7735: $1f
    rla                                           ; $7736: $17
    rra                                           ; $7737: $1f
    inc e                                         ; $7738: $1c
    rla                                           ; $7739: $17
    dec e                                         ; $773a: $1d
    ld a, [bc]                                    ; $773b: $0a
    rrca                                          ; $773c: $0f
    ld c, $03                                     ; $773d: $0e $03
    rrca                                          ; $773f: $0f
    adc h                                         ; $7740: $8c
    ld a, $3f                                     ; $7741: $3e $3f
    ld e, a                                       ; $7743: $5f
    ld l, b                                       ; $7744: $68
    ld l, a                                       ; $7745: $6f
    ld e, b                                       ; $7746: $58
    ld e, a                                       ; $7747: $5f
    ld a, a                                       ; $7748: $7f
    ld l, e                                       ; $7749: $6b
    ld e, h                                       ; $774a: $5c
    rst $38                                       ; $774b: $ff
    cp b                                          ; $774c: $b8
    ld [bc], a                                    ; $774d: $02
    ldh [$8f], a                                  ; $774e: $e0 $8f
    call c, $f8fc                                 ; $7750: $dc $fc $f8
    jr c, jr_0e9_76f1                             ; $7753: $38 $9c

    ld [hl], h                                    ; $7755: $74
    db $fc                                        ; $7756: $fc
    ld [hl], h                                    ; $7757: $74
    db $fc                                        ; $7758: $fc
    call c, $dc74                                 ; $7759: $dc $74 $dc
    xor b                                         ; $775c: $a8
    ld hl, sp+$58                                 ; $775d: $f8 $58
    inc bc                                        ; $775f: $03
    ld hl, sp-$6f                                 ; $7760: $f8 $91
    cp [hl]                                       ; $7762: $be
    ld a, [hl]                                    ; $7763: $7e
    ld sp, hl                                     ; $7764: $f9
    adc a                                         ; $7765: $8f
    rst $30                                       ; $7766: $f7
    adc c                                         ; $7767: $89
    ccf                                           ; $7768: $3f
    db $fd                                        ; $7769: $fd
    rst $28                                       ; $776a: $ef
    sbc c                                         ; $776b: $99
    ld sp, hl                                     ; $776c: $f9
    rrca                                          ; $776d: $0f
    rst $18                                       ; $776e: $df
    cp b                                          ; $776f: $b8
    ei                                            ; $7770: $fb
    cp h                                          ; $7771: $bc
    sbc l                                         ; $7772: $9d
    ld [bc], a                                    ; $7773: $02
    rst $38                                       ; $7774: $ff
    add l                                         ; $7775: $85
    sbc a                                         ; $7776: $9f
    ld [hl], e                                    ; $7777: $73
    ld a, a                                       ; $7778: $7f
    add hl, de                                    ; $7779: $19
    rra                                           ; $777a: $1f
    inc b                                         ; $777b: $04
    rrca                                          ; $777c: $0f
    add h                                         ; $777d: $84
    dec bc                                        ; $777e: $0b
    rrca                                          ; $777f: $0f
    dec b                                         ; $7780: $05
    rlca                                          ; $7781: $07
    inc b                                         ; $7782: $04
    ld b, $02                                     ; $7783: $06 $02
    ld [bc], a                                    ; $7785: $02
    inc b                                         ; $7786: $04
    rlca                                          ; $7787: $07
    ld [bc], a                                    ; $7788: $02
    nop                                           ; $7789: $00
    adc [hl]                                      ; $778a: $8e
    ld a, a                                       ; $778b: $7f
    adc h                                         ; $778c: $8c
    ld l, a                                       ; $778d: $6f
    sbc h                                         ; $778e: $9c
    sbc $fd                                       ; $778f: $de $fd
    ei                                            ; $7791: $fb
    db $fd                                        ; $7792: $fd
    rst $38                                       ; $7793: $ff
    ld sp, hl                                     ; $7794: $f9
    xor $fe                                       ; $7795: $ee $fe
    ret z                                         ; $7797: $c8

    ld hl, sp+$02                                 ; $7798: $f8 $02
    ld a, b                                       ; $779a: $78
    add d                                         ; $779b: $82
    ld l, b                                       ; $779c: $68
    ld a, b                                       ; $779d: $78
    ld [bc], a                                    ; $779e: $02
    jr c, jr_0e9_77a3                             ; $779f: $38 $02

    jr @+$06                                      ; $77a1: $18 $04

jr_0e9_77a3:
    jr nc, jr_0e9_77ab                            ; $77a3: $30 $06

    nop                                           ; $77a5: $00
    ld b, $01                                     ; $77a6: $06 $01
    ld a, [de]                                    ; $77a8: $1a
    nop                                           ; $77a9: $00
    rst $38                                       ; $77aa: $ff

jr_0e9_77ab:
    rrca                                          ; $77ab: $0f
    dec b                                         ; $77ac: $05
    ld hl, sp+$08                                 ; $77ad: $f8 $08
    ld [c], a                                     ; $77af: $e2
    ld bc, $f8e2                                  ; $77b0: $01 $e2 $f8
    ld [c], a                                     ; $77b3: $e2
    nop                                           ; $77b4: $00
    ldh a, [rSB]                                  ; $77b5: $f0 $01
    ld a, [c]                                     ; $77b7: $f2
    ld hl, sp-$0e                                 ; $77b8: $f8 $f2
    db $fc                                        ; $77ba: $fc
    ld [bc], a                                    ; $77bb: $02
    inc bc                                        ; $77bc: $03
    sub b                                         ; $77bd: $90
    ld c, $0f                                     ; $77be: $0e $0f
    rla                                           ; $77c0: $17
    dec e                                         ; $77c1: $1d
    inc e                                         ; $77c2: $1c
    rla                                           ; $77c3: $17
    rra                                           ; $77c4: $1f
    rla                                           ; $77c5: $17
    rra                                           ; $77c6: $1f
    inc e                                         ; $77c7: $1c
    rla                                           ; $77c8: $17
    dec e                                         ; $77c9: $1d
    ld a, [bc]                                    ; $77ca: $0a
    rrca                                          ; $77cb: $0f
    ld e, $1f                                     ; $77cc: $1e $1f
    ld [bc], a                                    ; $77ce: $02
    rrca                                          ; $77cf: $0f
    adc h                                         ; $77d0: $8c
    ld a, $3f                                     ; $77d1: $3e $3f
    ld a, a                                       ; $77d3: $7f
    ld c, b                                       ; $77d4: $48
    ld l, a                                       ; $77d5: $6f
    ld e, b                                       ; $77d6: $58
    ld e, [hl]                                    ; $77d7: $5e
    ld a, a                                       ; $77d8: $7f
    db $eb                                        ; $77d9: $eb
    sbc h                                         ; $77da: $9c
    xor a                                         ; $77db: $af
    ret c                                         ; $77dc: $d8

    ld [bc], a                                    ; $77dd: $02
    ldh [$8f], a                                  ; $77de: $e0 $8f
    call nc, $f8f4                                ; $77e0: $d4 $f4 $f8
    cp b                                          ; $77e3: $b8
    sbc h                                         ; $77e4: $9c
    ld [hl], h                                    ; $77e5: $74
    db $fc                                        ; $77e6: $fc
    ld [hl], h                                    ; $77e7: $74
    db $fc                                        ; $77e8: $fc
    call c, $dc74                                 ; $77e9: $dc $74 $dc
    xor h                                         ; $77ec: $ac
    db $fc                                        ; $77ed: $fc
    ld e, b                                       ; $77ee: $58
    inc bc                                        ; $77ef: $03
    ld hl, sp-$74                                 ; $77f0: $f8 $8c
    cp [hl]                                       ; $77f2: $be
    ld a, [hl]                                    ; $77f3: $7e
    rst $38                                       ; $77f4: $ff
    adc c                                         ; $77f5: $89
    ei                                            ; $77f6: $fb
    adc l                                         ; $77f7: $8d
    db $fd                                        ; $77f8: $fd
    ccf                                           ; $77f9: $3f
    db $eb                                        ; $77fa: $eb
    sbc h                                         ; $77fb: $9c
    ld a, [$040d]                                 ; $77fc: $fa $0d $04
    ld bc, $fb8e                                  ; $77ff: $01 $8e $fb
    dec e                                         ; $7802: $1d
    db $db                                        ; $7803: $db
    dec a                                         ; $7804: $3d
    cp a                                          ; $7805: $bf
    db $fd                                        ; $7806: $fd
    rst $38                                       ; $7807: $ff
    ld sp, hl                                     ; $7808: $f9
    db $ed                                        ; $7809: $ed
    ei                                            ; $780a: $fb
    sbc $fe                                       ; $780b: $de $fe
    sbc b                                         ; $780d: $98
    ld hl, sp+$02                                 ; $780e: $f8 $02
    ldh a, [$83]                                  ; $7810: $f0 $83
    sub b                                         ; $7812: $90
    ldh a, [$50]                                  ; $7813: $f0 $50
    inc bc                                        ; $7815: $03
    ld [hl], b                                    ; $7816: $70
    ld [bc], a                                    ; $7817: $02
    jr nc, jr_0e9_781e                            ; $7818: $30 $04

    ld [hl], b                                    ; $781a: $70
    adc a                                         ; $781b: $8f
    rst $18                                       ; $781c: $df
    cp b                                          ; $781d: $b8

jr_0e9_781e:
    db $db                                        ; $781e: $db
    cp h                                          ; $781f: $bc
    db $fd                                        ; $7820: $fd
    cp a                                          ; $7821: $bf
    rst $38                                       ; $7822: $ff
    sbc a                                         ; $7823: $9f
    or a                                          ; $7824: $b7
    rst $18                                       ; $7825: $df
    ld a, c                                       ; $7826: $79
    ld a, a                                       ; $7827: $7f
    add hl, de                                    ; $7828: $19
    rra                                           ; $7829: $1f
    dec c                                         ; $782a: $0d
    inc bc                                        ; $782b: $03
    rrca                                          ; $782c: $0f
    add d                                         ; $782d: $82
    dec bc                                        ; $782e: $0b
    rrca                                          ; $782f: $0f
    ld [bc], a                                    ; $7830: $02
    rlca                                          ; $7831: $07
    ld [bc], a                                    ; $7832: $02
    ld b, $04                                     ; $7833: $06 $04
    ld [bc], a                                    ; $7835: $02
    ld [bc], a                                    ; $7836: $02
    rlca                                          ; $7837: $07
    ld [bc], a                                    ; $7838: $02
    ld b, $83                                     ; $7839: $06 $83
    nop                                           ; $783b: $00
    ld [$0d00], sp                                ; $783c: $08 $00 $0d
    ld [$000c], sp                                ; $783f: $08 $0c $00
    ld [bc], a                                    ; $7842: $02
    ld bc, $0002                                  ; $7843: $01 $02 $00
    rst $38                                       ; $7846: $ff
    rrca                                          ; $7847: $0f
    dec b                                         ; $7848: $05
    ld hl, sp+$08                                 ; $7849: $f8 $08
    ld [c], a                                     ; $784b: $e2
    ld bc, $f8e2                                  ; $784c: $01 $e2 $f8
    ld [c], a                                     ; $784f: $e2
    nop                                           ; $7850: $00
    pop af                                        ; $7851: $f1
    ld bc, $f8f2                                  ; $7852: $01 $f2 $f8
    ld a, [c]                                     ; $7855: $f2
    db $fc                                        ; $7856: $fc
    ld [bc], a                                    ; $7857: $02
    inc bc                                        ; $7858: $03
    sub b                                         ; $7859: $90
    ld c, $0f                                     ; $785a: $0e $0f
    rla                                           ; $785c: $17
    dec e                                         ; $785d: $1d
    inc e                                         ; $785e: $1c
    rla                                           ; $785f: $17
    rra                                           ; $7860: $1f
    rla                                           ; $7861: $17
    rra                                           ; $7862: $1f
    inc e                                         ; $7863: $1c
    rla                                           ; $7864: $17
    dec e                                         ; $7865: $1d
    ld a, [bc]                                    ; $7866: $0a
    rrca                                          ; $7867: $0f
    ld e, $1f                                     ; $7868: $1e $1f
    ld [bc], a                                    ; $786a: $02
    rrca                                          ; $786b: $0f
    adc h                                         ; $786c: $8c
    ld a, $3f                                     ; $786d: $3e $3f
    ld c, a                                       ; $786f: $4f
    ld a, b                                       ; $7870: $78
    ld [hl], a                                    ; $7871: $77
    ld c, b                                       ; $7872: $48
    ld a, [hl]                                    ; $7873: $7e
    ld e, a                                       ; $7874: $5f
    ld a, e                                       ; $7875: $7b
    ld c, h                                       ; $7876: $4c
    xor a                                         ; $7877: $af
    ld hl, sp+$02                                 ; $7878: $f8 $02
    ldh a, [$8f]                                  ; $787a: $f0 $8f
    call nc, $f8f4                                ; $787c: $d4 $f4 $f8
    cp b                                          ; $787f: $b8
    sbc h                                         ; $7880: $9c
    ld [hl], h                                    ; $7881: $74
    db $fc                                        ; $7882: $fc
    ld [hl], h                                    ; $7883: $74
    db $fc                                        ; $7884: $fc
    call c, $dc74                                 ; $7885: $dc $74 $dc
    xor h                                         ; $7888: $ac
    db $fc                                        ; $7889: $fc
    ld e, b                                       ; $788a: $58
    inc bc                                        ; $788b: $03
    ld hl, sp-$74                                 ; $788c: $f8 $8c
    cp [hl]                                       ; $788e: $be
    ld a, [hl]                                    ; $788f: $7e
    db $fd                                        ; $7890: $fd
    adc e                                         ; $7891: $8b
    ei                                            ; $7892: $fb
    adc l                                         ; $7893: $8d
    db $fd                                        ; $7894: $fd
    ccf                                           ; $7895: $3f
    db $eb                                        ; $7896: $eb
    sbc l                                         ; $7897: $9d
    rst $38                                       ; $7898: $ff
    ld c, $02                                     ; $7899: $0e $02
    ld bc, $fb85                                  ; $789b: $01 $85 $fb
    dec e                                         ; $789e: $1d
    rst $18                                       ; $789f: $df
    dec a                                         ; $78a0: $3d
    cp c                                          ; $78a1: $b9
    ld [bc], a                                    ; $78a2: $02
    rst $38                                       ; $78a3: $ff
    add h                                         ; $78a4: $84
    ld sp, hl                                     ; $78a5: $f9
    xor $fe                                       ; $78a6: $ee $fe
    sbc b                                         ; $78a8: $98
    inc bc                                        ; $78a9: $03
    ld hl, sp+$02                                 ; $78aa: $f8 $02
    ldh a, [$83]                                  ; $78ac: $f0 $83
    ret nc                                        ; $78ae: $d0

    ldh a, [$50]                                  ; $78af: $f0 $50
    inc bc                                        ; $78b1: $03
    ld [hl], b                                    ; $78b2: $70
    inc b                                         ; $78b3: $04
    jr nz, jr_0e9_78ba                            ; $78b4: $20 $04

    ld [hl], b                                    ; $78b6: $70
    adc a                                         ; $78b7: $8f
    rst $38                                       ; $78b8: $ff
    sbc b                                         ; $78b9: $98

jr_0e9_78ba:
    ei                                            ; $78ba: $fb
    sbc h                                         ; $78bb: $9c
    cp l                                          ; $78bc: $bd
    rst $18                                       ; $78bd: $df
    ld a, a                                       ; $78be: $7f
    ld c, a                                       ; $78bf: $4f
    ld a, a                                       ; $78c0: $7f
    ld c, a                                       ; $78c1: $4f
    dec sp                                        ; $78c2: $3b
    ccf                                           ; $78c3: $3f
    add hl, de                                    ; $78c4: $19
    rra                                           ; $78c5: $1f
    dec c                                         ; $78c6: $0d
    inc bc                                        ; $78c7: $03
    rrca                                          ; $78c8: $0f
    add c                                         ; $78c9: $81
    dec b                                         ; $78ca: $05
    inc bc                                        ; $78cb: $03
    rlca                                          ; $78cc: $07
    inc b                                         ; $78cd: $04
    ld [bc], a                                    ; $78ce: $02
    inc b                                         ; $78cf: $04
    ld b, $03                                     ; $78d0: $06 $03
    nop                                           ; $78d2: $00
    add d                                         ; $78d3: $82
    ld [$0d00], sp                                ; $78d4: $08 $00 $0d
    ld [$000e], sp                                ; $78d7: $08 $0e $00
    ld [bc], a                                    ; $78da: $02
    ld bc, $0fff                                  ; $78db: $01 $ff $0f
    dec b                                         ; $78de: $05
    ld hl, sp+$08                                 ; $78df: $f8 $08
    ld [c], a                                     ; $78e1: $e2
    ld bc, $f9e3                                  ; $78e2: $01 $e3 $f9
    db $e3                                        ; $78e5: $e3
    ld bc, $f8f3                                  ; $78e6: $01 $f3 $f8
    di                                            ; $78e9: $f3
    nop                                           ; $78ea: $00
    di                                            ; $78eb: $f3
    ld bc, $0f02                                  ; $78ec: $01 $02 $0f
    adc a                                         ; $78ef: $8f
    dec e                                         ; $78f0: $1d
    rra                                           ; $78f1: $1f
    cpl                                           ; $78f2: $2f
    ld a, [hl-]                                   ; $78f3: $3a
    add hl, sp                                    ; $78f4: $39
    ld l, $3f                                     ; $78f5: $2e $3f
    ld l, $3f                                     ; $78f7: $2e $3f
    add hl, sp                                    ; $78f9: $39
    ld l, $3b                                     ; $78fa: $2e $3b
    dec d                                         ; $78fc: $15
    rra                                           ; $78fd: $1f
    inc e                                         ; $78fe: $1c

jr_0e9_78ff:
    inc bc                                        ; $78ff: $03
    rra                                           ; $7900: $1f
    adc h                                         ; $7901: $8c
    ld a, l                                       ; $7902: $7d
    ld a, [hl]                                    ; $7903: $7e
    sbc a                                         ; $7904: $9f
    pop af                                        ; $7905: $f1
    rst $28                                       ; $7906: $ef
    sub c                                         ; $7907: $91
    cp $bf                                        ; $7908: $fe $bf
    rst $30                                       ; $790a: $f7
    sbc c                                         ; $790b: $99
    sbc a                                         ; $790c: $9f
    ldh a, [rSC]                                  ; $790d: $f0 $02
    ret nz                                        ; $790f: $c0

    adc a                                         ; $7910: $8f
    cp b                                          ; $7911: $b8
    ld hl, sp-$10                                 ; $7912: $f8 $f0
    ld [hl], b                                    ; $7914: $70
    jr c, jr_0e9_78ff                             ; $7915: $38 $e8

    ld hl, sp-$18                                 ; $7917: $f8 $e8
    ld hl, sp-$48                                 ; $7919: $f8 $b8
    add sp, -$48                                  ; $791b: $e8 $b8
    ld d, b                                       ; $791d: $50
    ldh a, [$b0]                                  ; $791e: $f0 $b0
    inc bc                                        ; $7920: $03
    ldh a, [$99]                                  ; $7921: $f0 $99
    ld a, h                                       ; $7923: $7c
    db $fc                                        ; $7924: $fc
    ld a, [$f616]                                 ; $7925: $fa $16 $f6
    ld a, [de]                                    ; $7928: $1a
    ld a, d                                       ; $7929: $7a
    cp $d6                                        ; $792a: $fe $d6
    ld a, [hl-]                                   ; $792c: $3a
    rst $38                                       ; $792d: $ff
    dec e                                         ; $792e: $1d
    rst $38                                       ; $792f: $ff
    sbc b                                         ; $7930: $98
    ei                                            ; $7931: $fb
    sbc h                                         ; $7932: $9c
    cp l                                          ; $7933: $bd
    rst $18                                       ; $7934: $df
    ld l, a                                       ; $7935: $6f
    ld e, a                                       ; $7936: $5f
    ld a, a                                       ; $7937: $7f
    ld c, a                                       ; $7938: $4f
    dec sp                                        ; $7939: $3b
    ccf                                           ; $793a: $3f
    add hl, bc                                    ; $793b: $09
    inc bc                                        ; $793c: $03
    rrca                                          ; $793d: $0f
    add d                                         ; $793e: $82
    dec bc                                        ; $793f: $0b
    rrca                                          ; $7940: $0f
    ld [bc], a                                    ; $7941: $02
    ld c, $02                                     ; $7942: $0e $02
    inc c                                         ; $7944: $0c
    inc b                                         ; $7945: $04
    ld b, $06                                     ; $7946: $06 $06
    nop                                           ; $7948: $00
    add l                                         ; $7949: $85
    ld a, l                                       ; $794a: $7d
    adc [hl]                                      ; $794b: $8e
    ld l, a                                       ; $794c: $6f
    sbc [hl]                                      ; $794d: $9e
    call c, $ff02                                 ; $794e: $dc $02 $ff
    add l                                         ; $7951: $85
    db $fc                                        ; $7952: $fc
    rst $20                                       ; $7953: $e7
    rst $38                                       ; $7954: $ff
    call z, Call_000_02fc                         ; $7955: $cc $fc $02
    ld hl, sp+$02                                 ; $7958: $f8 $02
    ld a, b                                       ; $795a: $78
    add h                                         ; $795b: $84
    ld l, b                                       ; $795c: $68
    ld a, b                                       ; $795d: $78
    ld d, b                                       ; $795e: $50
    ld [hl], b                                    ; $795f: $70
    inc b                                         ; $7960: $04
    jr nc, jr_0e9_7965                            ; $7961: $30 $02

    jr nz, @+$06                                  ; $7963: $20 $04

jr_0e9_7965:
    ld [hl], b                                    ; $7965: $70
    ld [bc], a                                    ; $7966: $02
    nop                                           ; $7967: $00
    ld [$1801], sp                                ; $7968: $08 $01 $18
    nop                                           ; $796b: $00
    rst $38                                       ; $796c: $ff
    rrca                                          ; $796d: $0f
    dec b                                         ; $796e: $05
    ld hl, sp+$08                                 ; $796f: $f8 $08
    ld [c], a                                     ; $7971: $e2
    ld bc, $f8e2                                  ; $7972: $01 $e2 $f8
    ld [c], a                                     ; $7975: $e2
    nop                                           ; $7976: $00
    ldh a, [rSB]                                  ; $7977: $f0 $01
    ld a, [c]                                     ; $7979: $f2
    ld hl, sp-$0e                                 ; $797a: $f8 $f2
    db $fc                                        ; $797c: $fc
    ld [bc], a                                    ; $797d: $02
    inc bc                                        ; $797e: $03
    adc a                                         ; $797f: $8f
    ld c, $0f                                     ; $7980: $0e $0f
    rla                                           ; $7982: $17
    dec e                                         ; $7983: $1d
    inc e                                         ; $7984: $1c
    rla                                           ; $7985: $17
    rra                                           ; $7986: $1f
    rla                                           ; $7987: $17
    rra                                           ; $7988: $1f
    inc e                                         ; $7989: $1c
    rla                                           ; $798a: $17
    dec e                                         ; $798b: $1d
    ld a, [bc]                                    ; $798c: $0a
    rrca                                          ; $798d: $0f
    ld c, $03                                     ; $798e: $0e $03
    rrca                                          ; $7990: $0f
    adc h                                         ; $7991: $8c
    ld a, $3f                                     ; $7992: $3e $3f
    ld a, a                                       ; $7994: $7f
    ld c, b                                       ; $7995: $48
    ld l, a                                       ; $7996: $6f
    ld e, b                                       ; $7997: $58
    ld e, [hl]                                    ; $7998: $5e
    ld a, a                                       ; $7999: $7f
    db $eb                                        ; $799a: $eb
    sbc h                                         ; $799b: $9c
    xor a                                         ; $799c: $af
    ret c                                         ; $799d: $d8

    ld [bc], a                                    ; $799e: $02
    ldh [$8f], a                                  ; $799f: $e0 $8f
    call nc, $f8f4                                ; $79a1: $d4 $f4 $f8
    cp b                                          ; $79a4: $b8
    sbc h                                         ; $79a5: $9c
    ld [hl], h                                    ; $79a6: $74
    db $fc                                        ; $79a7: $fc
    ld [hl], h                                    ; $79a8: $74
    db $fc                                        ; $79a9: $fc
    call c, $dc74                                 ; $79aa: $dc $74 $dc
    xor h                                         ; $79ad: $ac
    db $fc                                        ; $79ae: $fc
    ld e, b                                       ; $79af: $58
    inc bc                                        ; $79b0: $03
    ld hl, sp-$74                                 ; $79b1: $f8 $8c
    cp [hl]                                       ; $79b3: $be
    ld a, [hl]                                    ; $79b4: $7e
    rst $38                                       ; $79b5: $ff
    adc c                                         ; $79b6: $89
    ei                                            ; $79b7: $fb
    adc l                                         ; $79b8: $8d
    db $fd                                        ; $79b9: $fd
    ccf                                           ; $79ba: $3f
    db $eb                                        ; $79bb: $eb
    sbc h                                         ; $79bc: $9c
    ld a, [$040d]                                 ; $79bd: $fa $0d $04
    ld bc, $fb8f                                  ; $79c0: $01 $8f $fb
    dec e                                         ; $79c3: $1d
    db $db                                        ; $79c4: $db
    dec a                                         ; $79c5: $3d
    cp a                                          ; $79c6: $bf
    db $fd                                        ; $79c7: $fd
    rst $38                                       ; $79c8: $ff
    ld sp, hl                                     ; $79c9: $f9
    db $ed                                        ; $79ca: $ed
    ei                                            ; $79cb: $fb
    sbc [hl]                                      ; $79cc: $9e
    cp $98                                        ; $79cd: $fe $98
    ld hl, sp-$50                                 ; $79cf: $f8 $b0
    inc bc                                        ; $79d1: $03
    ldh a, [$82]                                  ; $79d2: $f0 $82
    ret nc                                        ; $79d4: $d0

    ldh a, [rSC]                                  ; $79d5: $f0 $02
    ldh [rSC], a                                  ; $79d7: $e0 $02
    ld h, b                                       ; $79d9: $60
    inc b                                         ; $79da: $04
    ld b, b                                       ; $79db: $40
    adc [hl]                                      ; $79dc: $8e
    rst $18                                       ; $79dd: $df
    cp b                                          ; $79de: $b8
    db $db                                        ; $79df: $db
    cp h                                          ; $79e0: $bc
    db $fd                                        ; $79e1: $fd
    cp a                                          ; $79e2: $bf
    rst $38                                       ; $79e3: $ff
    sbc a                                         ; $79e4: $9f
    or a                                          ; $79e5: $b7
    rst $18                                       ; $79e6: $df
    ld a, e                                       ; $79e7: $7b
    ld a, a                                       ; $79e8: $7f
    add hl, de                                    ; $79e9: $19
    rra                                           ; $79ea: $1f
    ld [bc], a                                    ; $79eb: $02
    rrca                                          ; $79ec: $0f
    add e                                         ; $79ed: $83
    add hl, bc                                    ; $79ee: $09
    rrca                                          ; $79ef: $0f
    ld a, [bc]                                    ; $79f0: $0a
    inc bc                                        ; $79f1: $03
    ld c, $02                                     ; $79f2: $0e $02
    inc c                                         ; $79f4: $0c
    inc b                                         ; $79f5: $04
    ld c, $02                                     ; $79f6: $0e $02
    inc b                                         ; $79f8: $04
    inc bc                                        ; $79f9: $03
    nop                                           ; $79fa: $00
    add d                                         ; $79fb: $82
    ld [$0d00], sp                                ; $79fc: $08 $00 $0d
    ld [$000c], sp                                ; $79ff: $08 $0c $00
    ld [bc], a                                    ; $7a02: $02
    rlca                                          ; $7a03: $07

jr_0e9_7a04:
    ld [bc], a                                    ; $7a04: $02
    inc bc                                        ; $7a05: $03
    rst $38                                       ; $7a06: $ff
    ld de, $f606                                  ; $7a07: $11 $06 $f6
    ld a, [bc]                                    ; $7a0a: $0a
    ld [c], a                                     ; $7a0b: $e2
    ld bc, $f8f0                                  ; $7a0c: $01 $f0 $f8
    ld [c], a                                     ; $7a0f: $e2
    nop                                           ; $7a10: $00
    db $e3                                        ; $7a11: $e3
    inc bc                                        ; $7a12: $03
    ld a, [c]                                     ; $7a13: $f2
    db $f4                                        ; $7a14: $f4
    ld a, [c]                                     ; $7a15: $f2
    db $fc                                        ; $7a16: $fc
    ld a, [c]                                     ; $7a17: $f2
    inc bc                                        ; $7a18: $03
    ld [bc], a                                    ; $7a19: $02
    ld a, $92                                     ; $7a1a: $3e $92
    db $e3                                        ; $7a1c: $e3
    rst $38                                       ; $7a1d: $ff
    add b                                         ; $7a1e: $80
    rst $38                                       ; $7a1f: $ff
    inc bc                                        ; $7a20: $03
    rst $38                                       ; $7a21: $ff
    ld b, a                                       ; $7a22: $47
    rst $38                                       ; $7a23: $ff
    xor a                                         ; $7a24: $af
    rst $38                                       ; $7a25: $ff
    ld d, a                                       ; $7a26: $57
    rst $38                                       ; $7a27: $ff
    cp a                                          ; $7a28: $bf
    rst $38                                       ; $7a29: $ff
    rst $28                                       ; $7a2a: $ef
    rst $38                                       ; $7a2b: $ff
    ld l, [hl]                                    ; $7a2c: $6e
    ld a, [hl]                                    ; $7a2d: $7e
    ld [bc], a                                    ; $7a2e: $02
    ld a, h                                       ; $7a2f: $7c
    add d                                         ; $7a30: $82
    cp h                                          ; $7a31: $bc
    db $fc                                        ; $7a32: $fc
    ld [bc], a                                    ; $7a33: $02
    ld hl, sp+$02                                 ; $7a34: $f8 $02
    ret c                                         ; $7a36: $d8

    ld [bc], a                                    ; $7a37: $02
    sbc b                                         ; $7a38: $98
    ld [bc], a                                    ; $7a39: $02
    adc h                                         ; $7a3a: $8c
    ld [bc], a                                    ; $7a3b: $02
    rra                                           ; $7a3c: $1f
    sub b                                         ; $7a3d: $90
    halt                                          ; $7a3e: $76
    ld a, a                                       ; $7a3f: $7f
    ld e, a                                       ; $7a40: $5f
    ld a, l                                       ; $7a41: $7d
    ld a, h                                       ; $7a42: $7c
    ld l, e                                       ; $7a43: $6b
    rst $38                                       ; $7a44: $ff
    push hl                                       ; $7a45: $e5
    ld a, a                                       ; $7a46: $7f
    ld a, h                                       ; $7a47: $7c
    db $db                                        ; $7a48: $db
    cp $9d                                        ; $7a49: $fe $9d
    rst $38                                       ; $7a4b: $ff
    ld a, a                                       ; $7a4c: $7f
    ld a, e                                       ; $7a4d: $7b
    inc bc                                        ; $7a4e: $03
    ccf                                           ; $7a4f: $3f
    add h                                         ; $7a50: $84
    ld sp, $312f                                  ; $7a51: $31 $2f $31
    rla                                           ; $7a54: $17
    ld [bc], a                                    ; $7a55: $02
    dec de                                        ; $7a56: $1b
    add l                                         ; $7a57: $85
    dec d                                         ; $7a58: $15
    scf                                           ; $7a59: $37
    add hl, sp                                    ; $7a5a: $39
    rst $38                                       ; $7a5b: $ff
    pop af                                        ; $7a5c: $f1
    inc b                                         ; $7a5d: $04
    inc b                                         ; $7a5e: $04
    add d                                         ; $7a5f: $82
    ld b, $02                                     ; $7a60: $06 $02
    ld [bc], a                                    ; $7a62: $02
    ld b, $82                                     ; $7a63: $06 $82
    rlca                                          ; $7a65: $07
    ld bc, $0602                                  ; $7a66: $01 $02 $06
    add h                                         ; $7a69: $84
    dec b                                         ; $7a6a: $05
    rlca                                          ; $7a6b: $07
    inc bc                                        ; $7a6c: $03
    rlca                                          ; $7a6d: $07
    inc bc                                        ; $7a6e: $03
    ld b, $8d                                     ; $7a6f: $06 $8d
    ld [bc], a                                    ; $7a71: $02
    rlca                                          ; $7a72: $07
    ld bc, $0503                                  ; $7a73: $01 $03 $05
    inc bc                                        ; $7a76: $03
    rlca                                          ; $7a77: $07
    dec b                                         ; $7a78: $05
    inc bc                                        ; $7a79: $03
    rlca                                          ; $7a7a: $07
    ld bc, $9fed                                  ; $7a7b: $01 $ed $9f
    ld [bc], a                                    ; $7a7e: $02
    db $10                                        ; $7a7f: $10
    inc b                                         ; $7a80: $04
    jr nc, jr_0e9_7a04                            ; $7a81: $30 $81

    ld d, b                                       ; $7a83: $50
    inc bc                                        ; $7a84: $03
    ld [hl], b                                    ; $7a85: $70
    adc [hl]                                      ; $7a86: $8e
    or b                                          ; $7a87: $b0
    ldh a, [$a0]                                  ; $7a88: $f0 $a0
    ldh [$a0], a                                  ; $7a8a: $e0 $a0
    ldh [$a0], a                                  ; $7a8c: $e0 $a0
    ldh [$a0], a                                  ; $7a8e: $e0 $a0
    ldh [$a0], a                                  ; $7a90: $e0 $a0
    ldh [$b0], a                                  ; $7a92: $e0 $b0
    ldh a, [rSC]                                  ; $7a94: $f0 $02
    ret nc                                        ; $7a96: $d0

    ld [bc], a                                    ; $7a97: $02
    db $10                                        ; $7a98: $10
    inc b                                         ; $7a99: $04
    inc c                                         ; $7a9a: $0c
    adc c                                         ; $7a9b: $89
    ld [bc], a                                    ; $7a9c: $02
    ld c, $05                                     ; $7a9d: $0e $05
    rrca                                          ; $7a9f: $0f
    add hl, bc                                    ; $7aa0: $09
    rrca                                          ; $7aa1: $0f
    inc b                                         ; $7aa2: $04
    rrca                                          ; $7aa3: $0f
    ld a, [bc]                                    ; $7aa4: $0a
    dec b                                         ; $7aa5: $05
    rrca                                          ; $7aa6: $0f
    ld [bc], a                                    ; $7aa7: $02
    rlca                                          ; $7aa8: $07
    inc c                                         ; $7aa9: $0c
    nop                                           ; $7aaa: $00
    ld [bc], a                                    ; $7aab: $02
    ret nz                                        ; $7aac: $c0

    inc b                                         ; $7aad: $04
    nop                                           ; $7aae: $00
    adc b                                         ; $7aaf: $88
    dec sp                                        ; $7ab0: $3b
    ld e, a                                       ; $7ab1: $5f
    dec a                                         ; $7ab2: $3d
    ld e, a                                       ; $7ab3: $5f
    ld a, a                                       ; $7ab4: $7f
    ld c, a                                       ; $7ab5: $4f
    ld a, a                                       ; $7ab6: $7f
    ld c, a                                       ; $7ab7: $4f
    ld [bc], a                                    ; $7ab8: $02
    ld a, a                                       ; $7ab9: $7f
    ld [bc], a                                    ; $7aba: $02
    ld a, [hl]                                    ; $7abb: $7e
    add l                                         ; $7abc: $85
    ld a, d                                       ; $7abd: $7a
    ld a, [hl]                                    ; $7abe: $7e
    halt                                          ; $7abf: $76
    ld a, [hl]                                    ; $7ac0: $7e
    ld [hl], h                                    ; $7ac1: $74
    dec b                                         ; $7ac2: $05
    ld a, h                                       ; $7ac3: $7c
    inc b                                         ; $7ac4: $04

jr_0e9_7ac5:
    inc a                                         ; $7ac5: $3c
    ld [bc], a                                    ; $7ac6: $02
    ld [hl], $02                                  ; $7ac7: $36 $02
    ld b, $ff                                     ; $7ac9: $06 $ff
    ld de, $f606                                  ; $7acb: $11 $06 $f6
    ld a, [bc]                                    ; $7ace: $0a
    ld [c], a                                     ; $7acf: $e2
    ld bc, $f8f0                                  ; $7ad0: $01 $f0 $f8
    ld [c], a                                     ; $7ad3: $e2
    nop                                           ; $7ad4: $00
    db $e3                                        ; $7ad5: $e3
    inc bc                                        ; $7ad6: $03
    ld a, [c]                                     ; $7ad7: $f2
    db $f4                                        ; $7ad8: $f4
    ld a, [c]                                     ; $7ad9: $f2
    nop                                           ; $7ada: $00
    ld a, [c]                                     ; $7adb: $f2
    inc b                                         ; $7adc: $04
    ld [bc], a                                    ; $7add: $02
    ld a, [hl]                                    ; $7ade: $7e
    adc e                                         ; $7adf: $8b
    jp $80ff                                      ; $7ae0: $c3 $ff $80


    rst $38                                       ; $7ae3: $ff
    rlca                                          ; $7ae4: $07
    rst $38                                       ; $7ae5: $ff
    ld b, e                                       ; $7ae6: $43
    rst $38                                       ; $7ae7: $ff
    and e                                         ; $7ae8: $a3
    rst $38                                       ; $7ae9: $ff
    db $d3                                        ; $7aea: $d3
    inc bc                                        ; $7aeb: $03
    rst $38                                       ; $7aec: $ff
    adc b                                         ; $7aed: $88
    rst $30                                       ; $7aee: $f7
    rst $38                                       ; $7aef: $ff
    db $ec                                        ; $7af0: $ec
    db $fc                                        ; $7af1: $fc
    ld [hl], b                                    ; $7af2: $70
    ldh a, [$60]                                  ; $7af3: $f0 $60
    ldh [rTMA], a                                 ; $7af5: $e0 $06
    ret nz                                        ; $7af7: $c0

    ld [bc], a                                    ; $7af8: $02
    ld h, b                                       ; $7af9: $60
    ld [bc], a                                    ; $7afa: $02
    rra                                           ; $7afb: $1f
    sub b                                         ; $7afc: $90
    halt                                          ; $7afd: $76
    ld a, a                                       ; $7afe: $7f
    ld e, a                                       ; $7aff: $5f
    ld a, l                                       ; $7b00: $7d
    ld a, h                                       ; $7b01: $7c
    ld l, e                                       ; $7b02: $6b
    rst $38                                       ; $7b03: $ff
    push hl                                       ; $7b04: $e5
    ld a, a                                       ; $7b05: $7f
    ld a, h                                       ; $7b06: $7c
    db $db                                        ; $7b07: $db
    cp $9d                                        ; $7b08: $fe $9d
    rst $38                                       ; $7b0a: $ff
    ld a, a                                       ; $7b0b: $7f
    ld a, e                                       ; $7b0c: $7b
    ld [bc], a                                    ; $7b0d: $02
    ccf                                           ; $7b0e: $3f
    adc h                                         ; $7b0f: $8c
    scf                                           ; $7b10: $37
    add hl, sp                                    ; $7b11: $39
    ld e, $11                                     ; $7b12: $1e $11
    rra                                           ; $7b14: $1f
    rla                                           ; $7b15: $17
    scf                                           ; $7b16: $37
    dec hl                                        ; $7b17: $2b
    ld a, $33                                     ; $7b18: $3e $33
    xor $f7                                       ; $7b1a: $ee $f7
    inc b                                         ; $7b1c: $04
    inc b                                         ; $7b1d: $04
    add d                                         ; $7b1e: $82
    ld b, $02                                     ; $7b1f: $06 $02
    ld [bc], a                                    ; $7b21: $02
    ld b, $82                                     ; $7b22: $06 $82
    rlca                                          ; $7b24: $07
    ld bc, $0602                                  ; $7b25: $01 $02 $06
    add h                                         ; $7b28: $84
    dec b                                         ; $7b29: $05
    rlca                                          ; $7b2a: $07
    inc bc                                        ; $7b2b: $03
    rlca                                          ; $7b2c: $07
    inc bc                                        ; $7b2d: $03
    ld b, $8d                                     ; $7b2e: $06 $8d
    ld [bc], a                                    ; $7b30: $02
    rlca                                          ; $7b31: $07
    ld bc, $0503                                  ; $7b32: $01 $03 $05
    inc bc                                        ; $7b35: $03
    rlca                                          ; $7b36: $07
    dec b                                         ; $7b37: $05
    inc bc                                        ; $7b38: $03
    rlca                                          ; $7b39: $07
    ld bc, $3ffd                                  ; $7b3a: $01 $fd $3f
    ld [bc], a                                    ; $7b3d: $02
    db $10                                        ; $7b3e: $10

jr_0e9_7b3f:
    ld [bc], a                                    ; $7b3f: $02
    jr nc, jr_0e9_7ac5                            ; $7b40: $30 $83

    ld d, b                                       ; $7b42: $50
    ld [hl], b                                    ; $7b43: $70
    ld d, b                                       ; $7b44: $50
    inc bc                                        ; $7b45: $03
    ld [hl], b                                    ; $7b46: $70
    adc h                                         ; $7b47: $8c
    or b                                          ; $7b48: $b0
    ldh a, [$a0]                                  ; $7b49: $f0 $a0
    ldh [$a0], a                                  ; $7b4b: $e0 $a0
    ldh [$b0], a                                  ; $7b4d: $e0 $b0
    ldh a, [$b0]                                  ; $7b4f: $f0 $b0
    ldh a, [$b0]                                  ; $7b51: $f0 $b0
    ldh a, [rSC]                                  ; $7b53: $f0 $02
    ret nc                                        ; $7b55: $d0

    inc b                                         ; $7b56: $04
    jr nc, jr_0e9_7b5b                            ; $7b57: $30 $02

    ld b, $02                                     ; $7b59: $06 $02

jr_0e9_7b5b:
    nop                                           ; $7b5b: $00
    adc d                                         ; $7b5c: $8a
    jr nz, jr_0e9_7b3f                            ; $7b5d: $20 $e0

    xor a                                         ; $7b5f: $af
    rst $30                                       ; $7b60: $f7
    ld l, a                                       ; $7b61: $6f
    rst $30                                       ; $7b62: $f7
    cp a                                          ; $7b63: $bf
    di                                            ; $7b64: $f3
    ld e, a                                       ; $7b65: $5f
    di                                            ; $7b66: $f3
    inc b                                         ; $7b67: $04
    rst $38                                       ; $7b68: $ff
    ld [bc], a                                    ; $7b69: $02
    ld a, a                                       ; $7b6a: $7f
    inc b                                         ; $7b6b: $04
    rlca                                          ; $7b6c: $07
    inc b                                         ; $7b6d: $04
    ld b, $02                                     ; $7b6e: $06 $02
    inc b                                         ; $7b70: $04
    inc b                                         ; $7b71: $04
    ld b, $04                                     ; $7b72: $06 $04
    nop                                           ; $7b74: $00
    add e                                         ; $7b75: $83
    ld b, $0e                                     ; $7b76: $06 $0e
    ld a, [bc]                                    ; $7b78: $0a
    inc bc                                        ; $7b79: $03
    ld c, $81                                     ; $7b7a: $0e $81
    ld a, [bc]                                    ; $7b7c: $0a
    inc bc                                        ; $7b7d: $03
    ld c, $88                                     ; $7b7e: $0e $88
    inc b                                         ; $7b80: $04
    inc c                                         ; $7b81: $0c
    ld a, [bc]                                    ; $7b82: $0a
    ld c, $0a                                     ; $7b83: $0e $0a
    ld c, $0d                                     ; $7b85: $0e $0d
    rrca                                          ; $7b87: $0f
    ld [bc], a                                    ; $7b88: $02
    rlca                                          ; $7b89: $07
    ld [bc], a                                    ; $7b8a: $02
    inc bc                                        ; $7b8b: $03
    ld [bc], a                                    ; $7b8c: $02
    ld bc, $0304                                  ; $7b8d: $01 $04 $03
    ld [bc], a                                    ; $7b90: $02
    nop                                           ; $7b91: $00
    rst $38                                       ; $7b92: $ff
    ld de, $f606                                  ; $7b93: $11 $06 $f6
    ld a, [bc]                                    ; $7b96: $0a
    ld [c], a                                     ; $7b97: $e2
    ld bc, $f7f0                                  ; $7b98: $01 $f0 $f7
    db $e3                                        ; $7b9b: $e3

jr_0e9_7b9c:
    rst $38                                       ; $7b9c: $ff
    db $e3                                        ; $7b9d: $e3
    inc bc                                        ; $7b9e: $03
    di                                            ; $7b9f: $f3
    db $f4                                        ; $7ba0: $f4
    di                                            ; $7ba1: $f3
    rst $38                                       ; $7ba2: $ff
    di                                            ; $7ba3: $f3
    inc bc                                        ; $7ba4: $03
    ld [bc], a                                    ; $7ba5: $02
    rra                                           ; $7ba6: $1f
    adc e                                         ; $7ba7: $8b
    ld [hl], c                                    ; $7ba8: $71
    ld a, a                                       ; $7ba9: $7f
    ret nz                                        ; $7baa: $c0

    rst $38                                       ; $7bab: $ff
    and c                                         ; $7bac: $a1
    rst $38                                       ; $7bad: $ff
    db $d3                                        ; $7bae: $d3
    rst $38                                       ; $7baf: $ff
    xor c                                         ; $7bb0: $a9
    rst $38                                       ; $7bb1: $ff
    push af                                       ; $7bb2: $f5
    inc bc                                        ; $7bb3: $03
    rst $38                                       ; $7bb4: $ff
    add [hl]                                      ; $7bb5: $86
    ld a, e                                       ; $7bb6: $7b
    ld a, a                                       ; $7bb7: $7f
    rst $30                                       ; $7bb8: $f7
    rst $38                                       ; $7bb9: $ff
    call c, $06fc                                 ; $7bba: $dc $fc $06
    ldh [rSC], a                                  ; $7bbd: $e0 $02
    or b                                          ; $7bbf: $b0
    ld [bc], a                                    ; $7bc0: $02
    ldh [rSC], a                                  ; $7bc1: $e0 $02
    rlca                                          ; $7bc3: $07
    sub b                                         ; $7bc4: $90
    add hl, sp                                    ; $7bc5: $39
    ccf                                           ; $7bc6: $3f
    cpl                                           ; $7bc7: $2f
    ld a, $7e                                     ; $7bc8: $3e $7e
    ld [hl], l                                    ; $7bca: $75
    ld a, a                                       ; $7bcb: $7f
    ld [hl], d                                    ; $7bcc: $72
    cpl                                           ; $7bcd: $2f
    ld a, $6d                                     ; $7bce: $3e $6d
    ld a, a                                       ; $7bd0: $7f
    ld a, $3f                                     ; $7bd1: $3e $3f
    rra                                           ; $7bd3: $1f
    dec e                                         ; $7bd4: $1d
    ld [bc], a                                    ; $7bd5: $02
    rra                                           ; $7bd6: $1f
    adc h                                         ; $7bd7: $8c
    dec bc                                        ; $7bd8: $0b
    inc c                                         ; $7bd9: $0c
    rrca                                          ; $7bda: $0f
    ld [$0d0b], sp                                ; $7bdb: $08 $0b $0d
    inc e                                         ; $7bde: $1c
    dec de                                        ; $7bdf: $1b
    di                                            ; $7be0: $f3
    db $fd                                        ; $7be1: $fd
    dec d                                         ; $7be2: $15
    ei                                            ; $7be3: $fb
    ld [bc], a                                    ; $7be4: $02
    ld [$0682], sp                                ; $7be5: $08 $82 $06
    ld c, $02                                     ; $7be8: $0e $02
    inc c                                         ; $7bea: $0c
    add d                                         ; $7beb: $82
    ld b, $0a                                     ; $7bec: $06 $0a
    ld [bc], a                                    ; $7bee: $02
    ld c, $88                                     ; $7bef: $0e $88
    rrca                                          ; $7bf1: $0f
    ld bc, $060e                                  ; $7bf2: $01 $0e $06
    dec c                                         ; $7bf5: $0d
    rrca                                          ; $7bf6: $0f
    dec bc                                        ; $7bf7: $0b
    rrca                                          ; $7bf8: $0f
    inc bc                                        ; $7bf9: $03
    ld c, $82                                     ; $7bfa: $0e $82
    ld a, [bc]                                    ; $7bfc: $0a
    rlca                                          ; $7bfd: $07
    ld [bc], a                                    ; $7bfe: $02
    add hl, bc                                    ; $7bff: $09
    add d                                         ; $7c00: $82
    rrca                                          ; $7c01: $0f
    dec bc                                        ; $7c02: $0b
    ld [bc], a                                    ; $7c03: $02
    rrca                                          ; $7c04: $0f
    add e                                         ; $7c05: $83
    add hl, bc                                    ; $7c06: $09
    rlca                                          ; $7c07: $07
    add hl, bc                                    ; $7c08: $09
    ld [bc], a                                    ; $7c09: $02
    jr nz, jr_0e9_7b9c                            ; $7c0a: $20 $90

    ld b, b                                       ; $7c0c: $40
    ld h, b                                       ; $7c0d: $60
    ld b, b                                       ; $7c0e: $40
    ld h, b                                       ; $7c0f: $60
    and b                                         ; $7c10: $a0
    ldh [$a0], a                                  ; $7c11: $e0 $a0
    ldh [$a0], a                                  ; $7c13: $e0 $a0
    ldh [$a0], a                                  ; $7c15: $e0 $a0
    ldh [$a0], a                                  ; $7c17: $e0 $a0
    ldh [$a0], a                                  ; $7c19: $e0 $a0
    ldh [rSC], a                                  ; $7c1b: $e0 $02
    ret nz                                        ; $7c1d: $c0

    ld b, $00                                     ; $7c1e: $06 $00
    ld [bc], a                                    ; $7c20: $02
    jr jr_0e9_7c27                                ; $7c21: $18 $04

    nop                                           ; $7c23: $00
    adc d                                         ; $7c24: $8a
    cp a                                          ; $7c25: $bf
    di                                            ; $7c26: $f3

jr_0e9_7c27:
    rst $10                                       ; $7c27: $d7
    ei                                            ; $7c28: $fb
    or a                                          ; $7c29: $b7
    ei                                            ; $7c2a: $fb
    rst $18                                       ; $7c2b: $df
    ld sp, hl                                     ; $7c2c: $f9
    rst $38                                       ; $7c2d: $ff
    ld sp, hl                                     ; $7c2e: $f9
    ld [bc], a                                    ; $7c2f: $02
    rst $38                                       ; $7c30: $ff
    ld [bc], a                                    ; $7c31: $02
    ccf                                           ; $7c32: $3f
    ld [bc], a                                    ; $7c33: $02
    ld bc, $0006                                  ; $7c34: $01 $06 $00
    inc b                                         ; $7c37: $04
    ld bc, $0006                                  ; $7c38: $01 $06 $00
    add l                                         ; $7c3b: $85
    dec c                                         ; $7c3c: $0d
    rrca                                          ; $7c3d: $0f
    dec bc                                        ; $7c3e: $0b
    rrca                                          ; $7c3f: $0f
    dec c                                         ; $7c40: $0d
    inc bc                                        ; $7c41: $03
    rrca                                          ; $7c42: $0f
    add a                                         ; $7c43: $87
    dec c                                         ; $7c44: $0d
    rrca                                          ; $7c45: $0f
    ld a, [bc]                                    ; $7c46: $0a
    ld c, $0a                                     ; $7c47: $0e $0a
    ld c, $0a                                     ; $7c49: $0e $0a
    inc bc                                        ; $7c4b: $03
    ld c, $81                                     ; $7c4c: $0e $81
    ld a, [bc]                                    ; $7c4e: $0a
    rlca                                          ; $7c4f: $07
    ld c, $04                                     ; $7c50: $0e $04

jr_0e9_7c52:
    inc bc                                        ; $7c52: $03
    ld [bc], a                                    ; $7c53: $02
    nop                                           ; $7c54: $00
    rst $38                                       ; $7c55: $ff
    ld de, $f606                                  ; $7c56: $11 $06 $f6
    ld a, [bc]                                    ; $7c59: $0a
    ld [c], a                                     ; $7c5a: $e2
    ld bc, $f8f0                                  ; $7c5b: $01 $f0 $f8
    ld [c], a                                     ; $7c5e: $e2
    nop                                           ; $7c5f: $00
    db $e3                                        ; $7c60: $e3
    inc bc                                        ; $7c61: $03
    ld a, [c]                                     ; $7c62: $f2
    db $f4                                        ; $7c63: $f4
    ld a, [c]                                     ; $7c64: $f2
    nop                                           ; $7c65: $00
    ld a, [c]                                     ; $7c66: $f2
    inc b                                         ; $7c67: $04
    ld [bc], a                                    ; $7c68: $02
    ld a, $8d                                     ; $7c69: $3e $8d
    db $e3                                        ; $7c6b: $e3
    rst $38                                       ; $7c6c: $ff
    add b                                         ; $7c6d: $80
    rst $38                                       ; $7c6e: $ff
    inc hl                                        ; $7c6f: $23
    rst $38                                       ; $7c70: $ff
    ld d, a                                       ; $7c71: $57
    rst $38                                       ; $7c72: $ff
    and e                                         ; $7c73: $a3
    rst $38                                       ; $7c74: $ff
    di                                            ; $7c75: $f3
    rst $38                                       ; $7c76: $ff
    ei                                            ; $7c77: $fb
    inc bc                                        ; $7c78: $03
    rst $38                                       ; $7c79: $ff
    add [hl]                                      ; $7c7a: $86
    or $fe                                        ; $7c7b: $f6 $fe
    db $ec                                        ; $7c7d: $ec
    db $fc                                        ; $7c7e: $fc
    or b                                          ; $7c7f: $b0
    ldh a, [rDIV]                                 ; $7c80: $f0 $04
    ret nz                                        ; $7c82: $c0

    ld [bc], a                                    ; $7c83: $02
    ld h, b                                       ; $7c84: $60
    ld [bc], a                                    ; $7c85: $02
    jr nc, jr_0e9_7c8a                            ; $7c86: $30 $02

    rra                                           ; $7c88: $1f
    sub b                                         ; $7c89: $90

jr_0e9_7c8a:
    halt                                          ; $7c8a: $76
    ld a, a                                       ; $7c8b: $7f
    ld e, a                                       ; $7c8c: $5f
    ld a, l                                       ; $7c8d: $7d
    db $fc                                        ; $7c8e: $fc
    db $eb                                        ; $7c8f: $eb
    rst $38                                       ; $7c90: $ff
    push hl                                       ; $7c91: $e5
    ld e, a                                       ; $7c92: $5f
    ld a, h                                       ; $7c93: $7c
    db $db                                        ; $7c94: $db
    cp $bd                                        ; $7c95: $fe $bd
    rst $38                                       ; $7c97: $ff
    ld a, a                                       ; $7c98: $7f
    ld a, e                                       ; $7c99: $7b
    ld [bc], a                                    ; $7c9a: $02
    ccf                                           ; $7c9b: $3f
    add l                                         ; $7c9c: $85
    ld e, $11                                     ; $7c9d: $1e $11
    rra                                           ; $7c9f: $1f
    ld de, $0217                                  ; $7ca0: $11 $17 $02
    dec de                                        ; $7ca3: $1b
    add l                                         ; $7ca4: $85
    dec d                                         ; $7ca5: $15
    scf                                           ; $7ca6: $37
    add hl, sp                                    ; $7ca7: $39
    db $fd                                        ; $7ca8: $fd
    di                                            ; $7ca9: $f3
    ld [bc], a                                    ; $7caa: $02
    inc b                                         ; $7cab: $04
    inc bc                                        ; $7cac: $03
    ld b, $81                                     ; $7cad: $06 $81
    ld [bc], a                                    ; $7caf: $02
    ld [bc], a                                    ; $7cb0: $02
    ld b, $82                                     ; $7cb1: $06 $82
    rlca                                          ; $7cb3: $07
    ld bc, $0602                                  ; $7cb4: $01 $02 $06
    add h                                         ; $7cb7: $84
    dec b                                         ; $7cb8: $05
    rlca                                          ; $7cb9: $07
    inc bc                                        ; $7cba: $03
    rlca                                          ; $7cbb: $07
    inc bc                                        ; $7cbc: $03
    ld b, $8d                                     ; $7cbd: $06 $8d
    ld [bc], a                                    ; $7cbf: $02
    rlca                                          ; $7cc0: $07
    ld bc, $0503                                  ; $7cc1: $01 $03 $05
    inc bc                                        ; $7cc4: $03
    rlca                                          ; $7cc5: $07
    dec b                                         ; $7cc6: $05
    inc bc                                        ; $7cc7: $03
    rlca                                          ; $7cc8: $07
    ld bc, $9fed                                  ; $7cc9: $01 $ed $9f
    ld [bc], a                                    ; $7ccc: $02
    db $10                                        ; $7ccd: $10
    ld [bc], a                                    ; $7cce: $02
    jr nc, jr_0e9_7c52                            ; $7ccf: $30 $81

    ld d, b                                       ; $7cd1: $50
    inc bc                                        ; $7cd2: $03
    ld [hl], b                                    ; $7cd3: $70
    adc e                                         ; $7cd4: $8b
    or b                                          ; $7cd5: $b0
    ldh a, [$b0]                                  ; $7cd6: $f0 $b0
    ldh a, [$b0]                                  ; $7cd8: $f0 $b0
    ldh a, [$b0]                                  ; $7cda: $f0 $b0
    ldh a, [$b0]                                  ; $7cdc: $f0 $b0
    ldh a, [$b0]                                  ; $7cde: $f0 $b0
    inc bc                                        ; $7ce0: $03
    ldh a, [rSC]                                  ; $7ce1: $f0 $02
    ld h, b                                       ; $7ce3: $60
    ld [bc], a                                    ; $7ce4: $02
    ld b, b                                       ; $7ce5: $40
    ld [bc], a                                    ; $7ce6: $02
    ld h, b                                       ; $7ce7: $60
    ld [bc], a                                    ; $7ce8: $02
    ld h, e                                       ; $7ce9: $63
    inc bc                                        ; $7cea: $03
    nop                                           ; $7ceb: $00
    adc c                                         ; $7cec: $89
    ldh [$97], a                                  ; $7ced: $e0 $97
    ei                                            ; $7cef: $fb
    ld e, a                                       ; $7cf0: $5f
    ld sp, hl                                     ; $7cf1: $f9
    xor a                                         ; $7cf2: $af
    ld hl, sp+$5f                                 ; $7cf3: $f8 $5f
    db $fd                                        ; $7cf5: $fd
    ld [bc], a                                    ; $7cf6: $02
    rst $38                                       ; $7cf7: $ff
    add d                                         ; $7cf8: $82
    db $fd                                        ; $7cf9: $fd
    rst $38                                       ; $7cfa: $ff
    ld [bc], a                                    ; $7cfb: $02
    ccf                                           ; $7cfc: $3f
    ld [bc], a                                    ; $7cfd: $02
    rlca                                          ; $7cfe: $07
    add e                                         ; $7cff: $83
    ld [bc], a                                    ; $7d00: $02
    inc bc                                        ; $7d01: $03
    ld [bc], a                                    ; $7d02: $02
    dec b                                         ; $7d03: $05
    inc bc                                        ; $7d04: $03
    ld b, $01                                     ; $7d05: $06 $01
    ld [bc], a                                    ; $7d07: $02
    nop                                           ; $7d08: $00
    add e                                         ; $7d09: $83
    ld b, $0e                                     ; $7d0a: $06 $0e
    ld a, [bc]                                    ; $7d0c: $0a
    rlca                                          ; $7d0d: $07
    ld c, $85                                     ; $7d0e: $0e $85
    ld b, $0e                                     ; $7d10: $06 $0e
    dec b                                         ; $7d12: $05
    rrca                                          ; $7d13: $0f
    ld b, $03                                     ; $7d14: $06 $03
    ld c, $02                                     ; $7d16: $0e $02
    inc c                                         ; $7d18: $0c
    inc b                                         ; $7d19: $04
    ld [$0002], sp                                ; $7d1a: $08 $02 $00
    inc b                                         ; $7d1d: $04
    ld [$11ff], sp                                ; $7d1e: $08 $ff $11
    ld b, $f6                                     ; $7d21: $06 $f6
    ld a, [bc]                                    ; $7d23: $0a
    ld [c], a                                     ; $7d24: $e2
    ld bc, $f8f0                                  ; $7d25: $01 $f0 $f8
    ld [c], a                                     ; $7d28: $e2
    nop                                           ; $7d29: $00
    db $e3                                        ; $7d2a: $e3
    inc bc                                        ; $7d2b: $03
    ld a, [c]                                     ; $7d2c: $f2
    db $f4                                        ; $7d2d: $f4
    ld a, [c]                                     ; $7d2e: $f2
    nop                                           ; $7d2f: $00
    ld a, [c]                                     ; $7d30: $f2
    inc b                                         ; $7d31: $04
    ld [bc], a                                    ; $7d32: $02
    ld a, $8d                                     ; $7d33: $3e $8d
    db $e3                                        ; $7d35: $e3
    rst $38                                       ; $7d36: $ff
    add b                                         ; $7d37: $80
    rst $38                                       ; $7d38: $ff
    ld b, e                                       ; $7d39: $43
    rst $38                                       ; $7d3a: $ff
    and e                                         ; $7d3b: $a3
    rst $38                                       ; $7d3c: $ff
    ld d, e                                       ; $7d3d: $53
    rst $38                                       ; $7d3e: $ff
    rst $20                                       ; $7d3f: $e7
    rst $38                                       ; $7d40: $ff
    rst $30                                       ; $7d41: $f7
    inc bc                                        ; $7d42: $03
    rst $38                                       ; $7d43: $ff
    ld [bc], a                                    ; $7d44: $02
    db $fc                                        ; $7d45: $fc
    add [hl]                                      ; $7d46: $86
    add sp, -$08                                  ; $7d47: $e8 $f8
    ret nc                                        ; $7d49: $d0

    ldh a, [$60]                                  ; $7d4a: $f0 $60
    ldh [rTMA], a                                 ; $7d4c: $e0 $06
    ret nz                                        ; $7d4e: $c0

    ld [bc], a                                    ; $7d4f: $02
    rra                                           ; $7d50: $1f
    sub b                                         ; $7d51: $90
    halt                                          ; $7d52: $76
    ld a, a                                       ; $7d53: $7f
    ld e, a                                       ; $7d54: $5f
    ld a, l                                       ; $7d55: $7d
    ld a, h                                       ; $7d56: $7c
    ld l, e                                       ; $7d57: $6b
    rst $38                                       ; $7d58: $ff
    push hl                                       ; $7d59: $e5
    ld a, a                                       ; $7d5a: $7f
    ld a, h                                       ; $7d5b: $7c
    db $db                                        ; $7d5c: $db
    cp $9d                                        ; $7d5d: $fe $9d
    rst $38                                       ; $7d5f: $ff
    ld a, a                                       ; $7d60: $7f
    ld a, e                                       ; $7d61: $7b
    ld [bc], a                                    ; $7d62: $02
    ccf                                           ; $7d63: $3f
    add l                                         ; $7d64: $85
    dec a                                         ; $7d65: $3d
    inc sp                                        ; $7d66: $33
    rra                                           ; $7d67: $1f
    ld de, $0217                                  ; $7d68: $11 $17 $02
    dec de                                        ; $7d6b: $1b
    add l                                         ; $7d6c: $85
    dec d                                         ; $7d6d: $15
    scf                                           ; $7d6e: $37
    dec sp                                        ; $7d6f: $3b
    rst $30                                       ; $7d70: $f7
    ld sp, hl                                     ; $7d71: $f9
    inc b                                         ; $7d72: $04
    inc b                                         ; $7d73: $04
    add d                                         ; $7d74: $82
    ld b, $02                                     ; $7d75: $06 $02
    ld [bc], a                                    ; $7d77: $02
    ld b, $82                                     ; $7d78: $06 $82
    rlca                                          ; $7d7a: $07
    ld bc, $0602                                  ; $7d7b: $01 $02 $06
    add h                                         ; $7d7e: $84
    dec b                                         ; $7d7f: $05
    rlca                                          ; $7d80: $07
    inc bc                                        ; $7d81: $03
    rlca                                          ; $7d82: $07
    inc bc                                        ; $7d83: $03
    ld b, $8d                                     ; $7d84: $06 $8d
    ld [bc], a                                    ; $7d86: $02
    rlca                                          ; $7d87: $07
    ld bc, $0503                                  ; $7d88: $01 $03 $05
    inc bc                                        ; $7d8b: $03
    rlca                                          ; $7d8c: $07
    dec b                                         ; $7d8d: $05
    inc bc                                        ; $7d8e: $03
    rlca                                          ; $7d8f: $07
    ld bc, $cffd                                  ; $7d90: $01 $fd $cf
    ld [bc], a                                    ; $7d93: $02
    db $10                                        ; $7d94: $10
    ld [bc], a                                    ; $7d95: $02
    jr nc, @-$7b                                  ; $7d96: $30 $83

    ld d, b                                       ; $7d98: $50
    ld [hl], b                                    ; $7d99: $70
    ld d, b                                       ; $7d9a: $50
    inc bc                                        ; $7d9b: $03
    ld [hl], b                                    ; $7d9c: $70
    adc e                                         ; $7d9d: $8b
    or b                                          ; $7d9e: $b0
    ldh a, [$a0]                                  ; $7d9f: $f0 $a0
    ldh [$b0], a                                  ; $7da1: $e0 $b0
    ldh a, [$b0]                                  ; $7da3: $f0 $b0
    ldh a, [$b0]                                  ; $7da5: $f0 $b0
    ldh a, [$b0]                                  ; $7da7: $f0 $b0
    inc bc                                        ; $7da9: $03
    ldh a, [rSC]                                  ; $7daa: $f0 $02
    jr nc, jr_0e9_7db0                            ; $7dac: $30 $02

    nop                                           ; $7dae: $00
    inc b                                         ; $7daf: $04

jr_0e9_7db0:
    ld b, $8e                                     ; $7db0: $06 $8e
    nop                                           ; $7db2: $00
    ldh [rVBK], a                                 ; $7db3: $e0 $4f
    db $fc                                        ; $7db5: $fc
    xor a                                         ; $7db6: $af
    cp $57                                        ; $7db7: $fe $57
    cp $af                                        ; $7db9: $fe $af
    rst $38                                       ; $7dbb: $ff
    db $fd                                        ; $7dbc: $fd
    rst $38                                       ; $7dbd: $ff
    db $fd                                        ; $7dbe: $fd
    rst $38                                       ; $7dbf: $ff
    ld [bc], a                                    ; $7dc0: $02
    ccf                                           ; $7dc1: $3f
    add [hl]                                      ; $7dc2: $86
    ld b, $07                                     ; $7dc3: $06 $07
    ld b, $07                                     ; $7dc5: $06 $07
    dec b                                         ; $7dc7: $05
    rlca                                          ; $7dc8: $07
    inc b                                         ; $7dc9: $04
    ld b, $02                                     ; $7dca: $06 $02
    inc b                                         ; $7dcc: $04
    inc b                                         ; $7dcd: $04
    ld b, $02                                     ; $7dce: $06 $02
    nop                                           ; $7dd0: $00
    inc bc                                        ; $7dd1: $03
    ld c, $83                                     ; $7dd2: $0e $83
    ld b, $0e                                     ; $7dd4: $06 $0e
    ld b, $04                                     ; $7dd6: $06 $04
    ld c, $85                                     ; $7dd8: $0e $85
    ld b, $0e                                     ; $7dda: $06 $0e
    ld b, $0e                                     ; $7ddc: $06 $0e
    dec c                                         ; $7dde: $0d
    inc bc                                        ; $7ddf: $03
    rrca                                          ; $7de0: $0f
    ld [bc], a                                    ; $7de1: $02
    inc bc                                        ; $7de2: $03
    ld [bc], a                                    ; $7de3: $02
    ld bc, $0304                                  ; $7de4: $01 $04 $03
    inc b                                         ; $7de7: $04
    nop                                           ; $7de8: $00
    rst $38                                       ; $7de9: $ff
    ld de, $f606                                  ; $7dea: $11 $06 $f6
    ld a, [bc]                                    ; $7ded: $0a
    ld [c], a                                     ; $7dee: $e2
    ld bc, $f7f0                                  ; $7def: $01 $f0 $f7
    db $e3                                        ; $7df2: $e3
    rst $38                                       ; $7df3: $ff
    db $e3                                        ; $7df4: $e3
    inc bc                                        ; $7df5: $03
    di                                            ; $7df6: $f3
    db $f4                                        ; $7df7: $f4
    di                                            ; $7df8: $f3

jr_0e9_7df9:
    rst $38                                       ; $7df9: $ff
    di                                            ; $7dfa: $f3
    inc bc                                        ; $7dfb: $03
    ld [bc], a                                    ; $7dfc: $02
    ld e, $8e                                     ; $7dfd: $1e $8e
    ld [hl], e                                    ; $7dff: $73
    ld a, a                                       ; $7e00: $7f
    ret nz                                        ; $7e01: $c0

    rst $38                                       ; $7e02: $ff
    add c                                         ; $7e03: $81
    rst $38                                       ; $7e04: $ff
    and c                                         ; $7e05: $a1
    rst $38                                       ; $7e06: $ff
    di                                            ; $7e07: $f3
    rst $38                                       ; $7e08: $ff
    db $e3                                        ; $7e09: $e3
    rst $38                                       ; $7e0a: $ff
    di                                            ; $7e0b: $f3
    rst $38                                       ; $7e0c: $ff
    ld [bc], a                                    ; $7e0d: $02
    ld a, a                                       ; $7e0e: $7f
    add [hl]                                      ; $7e0f: $86
    db $f4                                        ; $7e10: $f4
    db $fc                                        ; $7e11: $fc
    db $ec                                        ; $7e12: $ec
    db $fc                                        ; $7e13: $fc
    cp b                                          ; $7e14: $b8
    ld hl, sp+$02                                 ; $7e15: $f8 $02
    ldh [rSC], a                                  ; $7e17: $e0 $02
    ldh a, [rSC]                                  ; $7e19: $f0 $02
    ldh [rSC], a                                  ; $7e1b: $e0 $02
    add b                                         ; $7e1d: $80
    ld [bc], a                                    ; $7e1e: $02
    rlca                                          ; $7e1f: $07
    adc l                                         ; $7e20: $8d
    add hl, sp                                    ; $7e21: $39
    ccf                                           ; $7e22: $3f
    cpl                                           ; $7e23: $2f
    ld a, $7e                                     ; $7e24: $3e $7e
    ld [hl], l                                    ; $7e26: $75
    ld a, a                                       ; $7e27: $7f
    ld [hl], d                                    ; $7e28: $72
    cpl                                           ; $7e29: $2f
    ld a, $6d                                     ; $7e2a: $3e $6d
    ld a, a                                       ; $7e2c: $7f
    ld a, $02                                     ; $7e2d: $3e $02
    ccf                                           ; $7e2f: $3f
    add c                                         ; $7e30: $81
    dec a                                         ; $7e31: $3d
    ld [bc], a                                    ; $7e32: $02
    rra                                           ; $7e33: $1f
    adc h                                         ; $7e34: $8c
    ld c, $09                                     ; $7e35: $0e $09
    rrca                                          ; $7e37: $0f
    ld [$0d0b], sp                                ; $7e38: $08 $0b $0d
    rra                                           ; $7e3b: $1f
    ld a, [de]                                    ; $7e3c: $1a
    rst $38                                       ; $7e3d: $ff
    db $fd                                        ; $7e3e: $fd
    dec bc                                        ; $7e3f: $0b
    db $fc                                        ; $7e40: $fc
    ld [bc], a                                    ; $7e41: $02
    ld [$0682], sp                                ; $7e42: $08 $82 $06
    ld c, $02                                     ; $7e45: $0e $02
    inc c                                         ; $7e47: $0c
    add d                                         ; $7e48: $82
    ld b, $0a                                     ; $7e49: $06 $0a
    ld [bc], a                                    ; $7e4b: $02
    ld c, $88                                     ; $7e4c: $0e $88
    rrca                                          ; $7e4e: $0f
    ld bc, $060e                                  ; $7e4f: $01 $0e $06
    dec c                                         ; $7e52: $0d
    rrca                                          ; $7e53: $0f
    dec bc                                        ; $7e54: $0b
    rrca                                          ; $7e55: $0f
    inc bc                                        ; $7e56: $03
    ld c, $82                                     ; $7e57: $0e $82
    ld a, [bc]                                    ; $7e59: $0a
    rrca                                          ; $7e5a: $0f
    ld [bc], a                                    ; $7e5b: $02
    add hl, bc                                    ; $7e5c: $09
    add d                                         ; $7e5d: $82
    rrca                                          ; $7e5e: $0f
    dec bc                                        ; $7e5f: $0b
    ld [bc], a                                    ; $7e60: $02
    rrca                                          ; $7e61: $0f
    add e                                         ; $7e62: $83
    add hl, bc                                    ; $7e63: $09
    rrca                                          ; $7e64: $0f
    add hl, bc                                    ; $7e65: $09
    ld [bc], a                                    ; $7e66: $02
    jr nz, jr_0e9_7df9                            ; $7e67: $20 $90

    ld b, b                                       ; $7e69: $40
    ld h, b                                       ; $7e6a: $60
    ld b, b                                       ; $7e6b: $40
    ld h, b                                       ; $7e6c: $60
    and b                                         ; $7e6d: $a0
    ldh [$a0], a                                  ; $7e6e: $e0 $a0
    ldh [$a0], a                                  ; $7e70: $e0 $a0
    ldh [$a0], a                                  ; $7e72: $e0 $a0
    ldh [$a0], a                                  ; $7e74: $e0 $a0
    ldh [$a0], a                                  ; $7e76: $e0 $a0
    ldh [rSC], a                                  ; $7e78: $e0 $02
    ret nz                                        ; $7e7a: $c0

    ld b, $00                                     ; $7e7b: $06 $00
    inc b                                         ; $7e7d: $04
    jr jr_0e9_7e82                                ; $7e7e: $18 $02

    nop                                           ; $7e80: $00
    adc b                                         ; $7e81: $88

jr_0e9_7e82:
    rst $08                                       ; $7e82: $cf
    db $fc                                        ; $7e83: $fc
    xor a                                         ; $7e84: $af
    db $fc                                        ; $7e85: $fc
    rst $10                                       ; $7e86: $d7
    cp $ef                                        ; $7e87: $fe $ef
    cp $02                                        ; $7e89: $fe $02
    rst $38                                       ; $7e8b: $ff
    add d                                         ; $7e8c: $82
    cp $ff                                        ; $7e8d: $fe $ff
    ld [bc], a                                    ; $7e8f: $02
    ccf                                           ; $7e90: $3f
    ld [bc], a                                    ; $7e91: $02
    ld bc, $0008                                  ; $7e92: $01 $08 $00
    inc b                                         ; $7e95: $04
    ld bc, $0004                                  ; $7e96: $01 $04 $00
    adc b                                         ; $7e99: $88
    dec c                                         ; $7e9a: $0d
    rrca                                          ; $7e9b: $0f
    dec bc                                        ; $7e9c: $0b
    rrca                                          ; $7e9d: $0f
    dec c                                         ; $7e9e: $0d
    rlca                                          ; $7e9f: $07
    rrca                                          ; $7ea0: $0f
    rlca                                          ; $7ea1: $07
    ld [bc], a                                    ; $7ea2: $02
    rrca                                          ; $7ea3: $0f
    add l                                         ; $7ea4: $85
    ld a, [bc]                                    ; $7ea5: $0a
    ld c, $0a                                     ; $7ea6: $0e $0a
    ld c, $0a                                     ; $7ea8: $0e $0a
    inc bc                                        ; $7eaa: $03
    ld c, $04                                     ; $7eab: $0e $04
    ld b, $02                                     ; $7ead: $06 $02

jr_0e9_7eaf:
    ld c, $04                                     ; $7eaf: $0e $04
    dec bc                                        ; $7eb1: $0b
    inc b                                         ; $7eb2: $04
    nop                                           ; $7eb3: $00
    rst $38                                       ; $7eb4: $ff
    ld de, $f606                                  ; $7eb5: $11 $06 $f6
    ld a, [bc]                                    ; $7eb8: $0a
    ld [c], a                                     ; $7eb9: $e2
    ld bc, $f8f0                                  ; $7eba: $01 $f0 $f8
    ld [c], a                                     ; $7ebd: $e2
    nop                                           ; $7ebe: $00
    db $e3                                        ; $7ebf: $e3
    inc bc                                        ; $7ec0: $03
    ld a, [c]                                     ; $7ec1: $f2
    db $f4                                        ; $7ec2: $f4
    ld a, [c]                                     ; $7ec3: $f2
    nop                                           ; $7ec4: $00
    ld a, [c]                                     ; $7ec5: $f2
    inc b                                         ; $7ec6: $04
    ld [bc], a                                    ; $7ec7: $02
    ld a, h                                       ; $7ec8: $7c
    adc l                                         ; $7ec9: $8d
    rst $00                                       ; $7eca: $c7
    rst $38                                       ; $7ecb: $ff
    add b                                         ; $7ecc: $80
    rst $38                                       ; $7ecd: $ff
    ld b, e                                       ; $7ece: $43
    rst $38                                       ; $7ecf: $ff
    and a                                         ; $7ed0: $a7
    rst $38                                       ; $7ed1: $ff
    rst $00                                       ; $7ed2: $c7
    rst $38                                       ; $7ed3: $ff
    and a                                         ; $7ed4: $a7
    rst $38                                       ; $7ed5: $ff
    rst $28                                       ; $7ed6: $ef
    inc bc                                        ; $7ed7: $03
    rst $38                                       ; $7ed8: $ff
    add h                                         ; $7ed9: $84
    call c, $b0fc                                 ; $7eda: $dc $fc $b0
    ldh a, [rDIV]                                 ; $7edd: $f0 $04
    ret nz                                        ; $7edf: $c0

    ld [bc], a                                    ; $7ee0: $02
    ld h, b                                       ; $7ee1: $60
    inc b                                         ; $7ee2: $04
    jr nc, jr_0e9_7ee7                            ; $7ee3: $30 $02

    rra                                           ; $7ee5: $1f
    sub b                                         ; $7ee6: $90

jr_0e9_7ee7:
    halt                                          ; $7ee7: $76
    ld a, a                                       ; $7ee8: $7f
    ld e, a                                       ; $7ee9: $5f
    ld a, l                                       ; $7eea: $7d
    db $fc                                        ; $7eeb: $fc
    db $eb                                        ; $7eec: $eb
    rst $38                                       ; $7eed: $ff
    push hl                                       ; $7eee: $e5
    ld e, a                                       ; $7eef: $5f
    ld a, h                                       ; $7ef0: $7c
    db $db                                        ; $7ef1: $db
    cp $bd                                        ; $7ef2: $fe $bd
    rst $38                                       ; $7ef4: $ff
    ld a, a                                       ; $7ef5: $7f
    ld a, e                                       ; $7ef6: $7b
    ld [bc], a                                    ; $7ef7: $02
    ccf                                           ; $7ef8: $3f
    add l                                         ; $7ef9: $85
    ld e, $11                                     ; $7efa: $1e $11
    rra                                           ; $7efc: $1f
    ld de, $0217                                  ; $7efd: $11 $17 $02
    dec de                                        ; $7f00: $1b
    add l                                         ; $7f01: $85
    dec d                                         ; $7f02: $15
    scf                                           ; $7f03: $37
    add hl, sp                                    ; $7f04: $39
    db $fd                                        ; $7f05: $fd
    di                                            ; $7f06: $f3
    ld [bc], a                                    ; $7f07: $02
    inc b                                         ; $7f08: $04
    inc bc                                        ; $7f09: $03
    ld b, $81                                     ; $7f0a: $06 $81
    ld [bc], a                                    ; $7f0c: $02
    ld [bc], a                                    ; $7f0d: $02
    ld b, $82                                     ; $7f0e: $06 $82
    rlca                                          ; $7f10: $07
    ld bc, $0602                                  ; $7f11: $01 $02 $06
    add h                                         ; $7f14: $84
    dec b                                         ; $7f15: $05
    rlca                                          ; $7f16: $07
    inc bc                                        ; $7f17: $03
    rlca                                          ; $7f18: $07
    inc bc                                        ; $7f19: $03
    ld b, $8d                                     ; $7f1a: $06 $8d
    ld [bc], a                                    ; $7f1c: $02
    rlca                                          ; $7f1d: $07
    ld bc, $0503                                  ; $7f1e: $01 $03 $05
    inc bc                                        ; $7f21: $03
    rlca                                          ; $7f22: $07
    dec b                                         ; $7f23: $05
    inc bc                                        ; $7f24: $03
    rlca                                          ; $7f25: $07
    ld bc, $9fed                                  ; $7f26: $01 $ed $9f
    ld [bc], a                                    ; $7f29: $02
    db $10                                        ; $7f2a: $10
    ld [bc], a                                    ; $7f2b: $02
    jr nc, jr_0e9_7eaf                            ; $7f2c: $30 $81

    ld d, b                                       ; $7f2e: $50
    inc bc                                        ; $7f2f: $03
    ld [hl], b                                    ; $7f30: $70
    adc e                                         ; $7f31: $8b
    or b                                          ; $7f32: $b0
    ldh a, [$b0]                                  ; $7f33: $f0 $b0
    ldh a, [$b0]                                  ; $7f35: $f0 $b0
    ldh a, [$b0]                                  ; $7f37: $f0 $b0
    ldh a, [$b0]                                  ; $7f39: $f0 $b0
    ldh a, [$a0]                                  ; $7f3b: $f0 $a0
    inc bc                                        ; $7f3d: $03
    ldh a, [rSC]                                  ; $7f3e: $f0 $02
    ld [hl], b                                    ; $7f40: $70
    ld [bc], a                                    ; $7f41: $02
    ld h, b                                       ; $7f42: $60
    ld [bc], a                                    ; $7f43: $02
    ld b, b                                       ; $7f44: $40
    inc b                                         ; $7f45: $04
    ld h, b                                       ; $7f46: $60
    adc d                                         ; $7f47: $8a
    nop                                           ; $7f48: $00
    ldh [$57], a                                  ; $7f49: $e0 $57
    ei                                            ; $7f4b: $fb
    cp a                                          ; $7f4c: $bf
    ld sp, hl                                     ; $7f4d: $f9
    ld e, a                                       ; $7f4e: $5f
    ld hl, sp-$41                                 ; $7f4f: $f8 $bf
    db $fd                                        ; $7f51: $fd
    inc b                                         ; $7f52: $04
    rst $38                                       ; $7f53: $ff
    ld [bc], a                                    ; $7f54: $02
    ld a, a                                       ; $7f55: $7f
    ld [$0603], sp                                ; $7f56: $08 $03 $06

Call_0e9_7f59:
    ld bc, $0004                                  ; $7f59: $01 $04 $00
    add l                                         ; $7f5c: $85
    ld b, $0e                                     ; $7f5d: $06 $0e
    ld a, [bc]                                    ; $7f5f: $0a
    ld c, $0a                                     ; $7f60: $0e $0a
    inc bc                                        ; $7f62: $03
    ld c, $88                                     ; $7f63: $0e $88
    ld b, $0e                                     ; $7f65: $06 $0e
    ld a, [bc]                                    ; $7f67: $0a
    ld c, $0a                                     ; $7f68: $0e $0a
    ld c, $0d                                     ; $7f6a: $0e $0d
    rrca                                          ; $7f6c: $0f
    ld [bc], a                                    ; $7f6d: $02
    ld c, $02                                     ; $7f6e: $0e $02
    ld b, $02                                     ; $7f70: $06 $02
    inc c                                         ; $7f72: $0c
    ld b, $08                                     ; $7f73: $06 $08
    ld [bc], a                                    ; $7f75: $02
    nop                                           ; $7f76: $00
    rst $38                                       ; $7f77: $ff
    add hl, bc                                    ; $7f78: $09
    ld [bc], a                                    ; $7f79: $02
    ld sp, hl                                     ; $7f7a: $f9
    ld [$00f1], sp                                ; $7f7b: $08 $f1 $00
    db $f4                                        ; $7f7e: $f4
    ld sp, hl                                     ; $7f7f: $f9
    db $f4                                        ; $7f80: $f4
    ld bc, $b08d                                  ; $7f81: $01 $8d $b0
    rst $38                                       ; $7f84: $ff
    ld [hl], a                                    ; $7f85: $77
    cp b                                          ; $7f86: $b8
    rst $38                                       ; $7f87: $ff
    or b                                          ; $7f88: $b0
    ld a, a                                       ; $7f89: $7f
    or b                                          ; $7f8a: $b0
    or l                                          ; $7f8b: $b5
    ld a, [$b57a]                                 ; $7f8c: $fa $7a $b5
    or b                                          ; $7f8f: $b0
    inc b                                         ; $7f90: $04
    rst $38                                       ; $7f91: $ff
    add [hl]                                      ; $7f92: $86
    cp $d6                                        ; $7f93: $fe $d6
    xor e                                         ; $7f95: $ab
    xor c                                         ; $7f96: $a9
    rst $10                                       ; $7f97: $d7
    add b                                         ; $7f98: $80
    inc bc                                        ; $7f99: $03
    rst $38                                       ; $7f9a: $ff
    ld b, $00                                     ; $7f9b: $06 $00
    adc l                                         ; $7f9d: $8d
    dec c                                         ; $7f9e: $0d
    rst $38                                       ; $7f9f: $ff
    xor $1d                                       ; $7fa0: $ee $1d
    rst $38                                       ; $7fa2: $ff
    dec c                                         ; $7fa3: $0d
    cp $0d                                        ; $7fa4: $fe $0d
    ld e, l                                       ; $7fa6: $5d
    xor a                                         ; $7fa7: $af
    xor [hl]                                      ; $7fa8: $ae
    ld e, l                                       ; $7fa9: $5d
    dec c                                         ; $7faa: $0d
    inc b                                         ; $7fab: $04
    rst $38                                       ; $7fac: $ff
    add [hl]                                      ; $7fad: $86
    ld a, a                                       ; $7fae: $7f
    push de                                       ; $7faf: $d5
    ld l, e                                       ; $7fb0: $6b
    xor e                                         ; $7fb1: $ab
    push de                                       ; $7fb2: $d5
    ld bc, $ff03                                  ; $7fb3: $01 $03 $ff
    ld b, $00                                     ; $7fb6: $06 $00
    rst $38                                       ; $7fb8: $ff
    dec bc                                        ; $7fb9: $0b
    inc bc                                        ; $7fba: $03
    push af                                       ; $7fbb: $f5
    inc c                                         ; $7fbc: $0c
    ld a, [c]                                     ; $7fbd: $f2
    ld bc, $f7eb                                  ; $7fbe: $01 $eb $f7
    rst $28                                       ; $7fc1: $ef
    db $fd                                        ; $7fc2: $fd
    ei                                            ; $7fc3: $fb
    rst $30                                       ; $7fc4: $f7
    add d                                         ; $7fc5: $82
    nop                                           ; $7fc6: $00
    ld a, [bc]                                    ; $7fc7: $0a
    inc c                                         ; $7fc8: $0c
    nop                                           ; $7fc9: $00
    ld [bc], a                                    ; $7fca: $02
    inc b                                         ; $7fcb: $04
    ld [bc], a                                    ; $7fcc: $02
    jr nz, jr_0e9_7fd1                            ; $7fcd: $20 $02

    inc de                                        ; $7fcf: $13
    ld [bc], a                                    ; $7fd0: $02

jr_0e9_7fd1:
    adc d                                         ; $7fd1: $8a
    ld [bc], a                                    ; $7fd2: $02
    nop                                           ; $7fd3: $00
    ld [bc], a                                    ; $7fd4: $02
    ld [$0002], sp                                ; $7fd5: $08 $02 $00
    ld [bc], a                                    ; $7fd8: $02
    ld a, [bc]                                    ; $7fd9: $0a
    ld [bc], a                                    ; $7fda: $02
    nop                                           ; $7fdb: $00
    add d                                         ; $7fdc: $82
    jr nz, jr_0e9_7fdf                            ; $7fdd: $20 $00

jr_0e9_7fdf:
    ld [bc], a                                    ; $7fdf: $02
    ld bc, $000b                                  ; $7fe0: $01 $0b $00
    add c                                         ; $7fe3: $81
    ld [$0008], sp                                ; $7fe4: $08 $08 $00
    ld [bc], a                                    ; $7fe7: $02
    add b                                         ; $7fe8: $80
    ld [bc], a                                    ; $7fe9: $02
    nop                                           ; $7fea: $00
    ld [bc], a                                    ; $7feb: $02
    add b                                         ; $7fec: $80
    ld [bc], a                                    ; $7fed: $02
    nop                                           ; $7fee: $00
    ld [bc], a                                    ; $7fef: $02
    jr nz, @+$20                                  ; $7ff0: $20 $1e

    nop                                           ; $7ff2: $00
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
