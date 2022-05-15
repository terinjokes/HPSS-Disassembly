; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0d4", ROMX[$4000], BANK[$d4]

    call nc, $0002                                ; $4000: $d4 $02 $00
    ld h, b                                       ; $4003: $60
    inc de                                        ; $4004: $13
    ld e, e                                       ; $4005: $5b
    ld bc, $035f                                  ; $4006: $01 $5f $03
    ld h, b                                       ; $4009: $60
    inc de                                        ; $400a: $13
    ld e, a                                       ; $400b: $5f
    inc bc                                        ; $400c: $03
    ld h, $00                                     ; $400d: $26 $00
    ld [hl+], a                                   ; $400f: $22
    ld a, [bc]                                    ; $4010: $0a
    ld [hl+], a                                   ; $4011: $22
    ld a, [bc]                                    ; $4012: $0a
    ld e, a                                       ; $4013: $5f
    inc bc                                        ; $4014: $03
    ld h, $00                                     ; $4015: $26 $00
    ld [hl+], a                                   ; $4017: $22
    ld a, [bc]                                    ; $4018: $0a
    ld [bc], a                                    ; $4019: $02
    nop                                           ; $401a: $00
    ld e, a                                       ; $401b: $5f
    inc bc                                        ; $401c: $03
    ld h, b                                       ; $401d: $60
    inc de                                        ; $401e: $13
    ld [hl+], a                                   ; $401f: $22
    ld a, [bc]                                    ; $4020: $0a
    ld [bc], a                                    ; $4021: $02
    nop                                           ; $4022: $00
    jr nz, jr_0d4_4034                            ; $4023: $20 $0f

    ld e, e                                       ; $4025: $5b
    ld bc, $035f                                  ; $4026: $01 $5f $03
    pop bc                                        ; $4029: $c1
    ld c, $73                                     ; $402a: $0e $73
    dec e                                         ; $402c: $1d
    ld h, $00                                     ; $402d: $26 $00
    ld e, l                                       ; $402f: $5d
    ld [hl], $26                                  ; $4030: $36 $26

Jump_0d4_4032:
    nop                                           ; $4032: $00
    ld e, [hl]                                    ; $4033: $5e

jr_0d4_4034:
    ld [hl], $52                                  ; $4034: $36 $52
    add hl, de                                    ; $4036: $19
    sub l                                         ; $4037: $95
    dec h                                         ; $4038: $25
    inc b                                         ; $4039: $04
    nop                                           ; $403a: $00
    rst $18                                       ; $403b: $df
    ld b, [hl]                                    ; $403c: $46
    ldh [$0e], a                                  ; $403d: $e0 $0e
    ld e, a                                       ; $403f: $5f
    inc bc                                        ; $4040: $03
    ld [bc], a                                    ; $4041: $02
    nop                                           ; $4042: $00
    jr nz, jr_0d4_4054                            ; $4043: $20 $0f

    call c, $5f1d                                 ; $4045: $dc $1d $5f
    inc bc                                        ; $4048: $03
    ld l, d                                       ; $4049: $6a
    nop                                           ; $404a: $00
    ld e, h                                       ; $404b: $5c
    ld [hl], $73                                  ; $404c: $36 $73
    add hl, de                                    ; $404e: $19
    ld a, [hl]                                    ; $404f: $7e
    ld a, $00                                     ; $4050: $3e $00
    nop                                           ; $4052: $00
    dec sp                                        ; $4053: $3b

jr_0d4_4054:
    ld [hl-], a                                   ; $4054: $32
    jr nc, jr_0d4_406c                            ; $4055: $30 $15

    ld l, d                                       ; $4057: $6a
    nop                                           ; $4058: $00
    ld b, [hl]                                    ; $4059: $46
    nop                                           ; $405a: $00
    ld a, l                                       ; $405b: $7d
    ld [hl], $20                                  ; $405c: $36 $20
    rrca                                          ; $405e: $0f
    ld e, a                                       ; $405f: $5f
    inc bc                                        ; $4060: $03
    ld [bc], a                                    ; $4061: $02
    nop                                           ; $4062: $00
    nop                                           ; $4063: $00
    rrca                                          ; $4064: $0f
    inc [hl]                                      ; $4065: $34
    dec c                                         ; $4066: $0d
    sbc $1a                                       ; $4067: $de $1a
    ld [hl+], a                                   ; $4069: $22
    nop                                           ; $406a: $00
    or l                                          ; $406b: $b5

jr_0d4_406c:
    add hl, hl                                    ; $406c: $29
    ld e, l                                       ; $406d: $5d
    ld a, [hl-]                                   ; $406e: $3a
    adc e                                         ; $406f: $8b
    nop                                           ; $4070: $00
    inc b                                         ; $4071: $04
    nop                                           ; $4072: $00
    ld d, d                                       ; $4073: $52
    add hl, de                                    ; $4074: $19
    dec sp                                        ; $4075: $3b
    ld [hl], $6a                                  ; $4076: $36 $6a
    nop                                           ; $4078: $00
    dec h                                         ; $4079: $25
    nop                                           ; $407a: $00
    inc a                                         ; $407b: $3c
    ld [hl-], a                                   ; $407c: $32
    ldh [$0e], a                                  ; $407d: $e0 $0e
    ld e, a                                       ; $407f: $5f
    inc bc                                        ; $4080: $03
    ld [bc], a                                    ; $4081: $02
    nop                                           ; $4082: $00
    ld e, b                                       ; $4083: $58
    add hl, bc                                    ; $4084: $09
    ret nz                                        ; $4085: $c0

    ld c, $be                                     ; $4086: $0e $be
    ld e, $46                                     ; $4088: $1e $46
    nop                                           ; $408a: $00
    jr jr_0d4_40c3                                ; $408b: $18 $36

    ld [hl], c                                    ; $408d: $71
    ld hl, $4adf                                  ; $408e: $21 $df $4a
    ld h, $00                                     ; $4091: $26 $00
    rst $30                                       ; $4093: $f7
    ld sp, $571f                                  ; $4094: $31 $1f $57
    ld [hl], c                                    ; $4097: $71
    ld hl, $1700                                  ; $4098: $21 $00 $17
    ld sp, hl                                     ; $409b: $f9
    add hl, hl                                    ; $409c: $29
    inc b                                         ; $409d: $04
    nop                                           ; $409e: $00
    ld e, a                                       ; $409f: $5f
    inc bc                                        ; $40a0: $03
    ld [bc], a                                    ; $40a1: $02
    nop                                           ; $40a2: $00
    inc [hl]                                      ; $40a3: $34
    dec c                                         ; $40a4: $0d
    ldh [rNR21], a                                ; $40a5: $e0 $16
    cp l                                          ; $40a7: $bd
    ld a, [de]                                    ; $40a8: $1a
    inc bc                                        ; $40a9: $03
    nop                                           ; $40aa: $00
    ld hl, sp+$31                                 ; $40ab: $f8 $31
    sbc [hl]                                      ; $40ad: $9e
    ld b, d                                       ; $40ae: $42
    adc e                                         ; $40af: $8b
    nop                                           ; $40b0: $00
    dec h                                         ; $40b1: $25
    nop                                           ; $40b2: $00
    rra                                           ; $40b3: $1f
    ld d, a                                       ; $40b4: $57
    or l                                          ; $40b5: $b5
    dec h                                         ; $40b6: $25
    xor h                                         ; $40b7: $ac
    inc b                                         ; $40b8: $04
    inc bc                                        ; $40b9: $03
    nop                                           ; $40ba: $00
    sub $29                                       ; $40bb: $d6 $29
    ld h, c                                       ; $40bd: $61
    ld [de], a                                    ; $40be: $12
    ld e, a                                       ; $40bf: $5f
    inc bc                                        ; $40c0: $03
    ld [bc], a                                    ; $40c1: $02
    nop                                           ; $40c2: $00

jr_0d4_40c3:
    ld e, b                                       ; $40c3: $58
    add hl, bc                                    ; $40c4: $09
    ld b, b                                       ; $40c5: $40
    ld [de], a                                    ; $40c6: $12
    ccf                                           ; $40c7: $3f
    rra                                           ; $40c8: $1f
    ld [bc], a                                    ; $40c9: $02
    nop                                           ; $40ca: $00
    ld hl, sp+$2d                                 ; $40cb: $f8 $2d
    rra                                           ; $40cd: $1f
    ld d, a                                       ; $40ce: $57
    adc e                                         ; $40cf: $8b
    nop                                           ; $40d0: $00
    inc bc                                        ; $40d1: $03
    nop                                           ; $40d2: $00
    ld d, $36                                     ; $40d3: $16 $36
    rra                                           ; $40d5: $1f
    ld d, a                                       ; $40d6: $57
    adc e                                         ; $40d7: $8b
    nop                                           ; $40d8: $00
    and b                                         ; $40d9: $a0
    ld d, $b5                                     ; $40da: $16 $b5
    dec h                                         ; $40dc: $25
    dec h                                         ; $40dd: $25
    nop                                           ; $40de: $00
    ld e, a                                       ; $40df: $5f
    inc bc                                        ; $40e0: $03
    ld [bc], a                                    ; $40e1: $02
    nop                                           ; $40e2: $00
    add b                                         ; $40e3: $80
    ld a, [de]                                    ; $40e4: $1a
    ld e, b                                       ; $40e5: $58
    add hl, bc                                    ; $40e6: $09
    ld e, $17                                     ; $40e7: $1e $17
    ld b, h                                       ; $40e9: $44
    ld [$31f7], sp                                ; $40ea: $08 $f7 $31
    sbc a                                         ; $40ed: $9f
    ld l, a                                       ; $40ee: $6f
    pop hl                                        ; $40ef: $e1
    dec e                                         ; $40f0: $1d
    ld b, e                                       ; $40f1: $43
    inc b                                         ; $40f2: $04
    dec d                                         ; $40f3: $15
    ld a, [hl-]                                   ; $40f4: $3a
    ld e, a                                       ; $40f5: $5f
    ld h, e                                       ; $40f6: $63
    push bc                                       ; $40f7: $c5
    ld hl, $1680                                  ; $40f8: $21 $80 $16
    rst $30                                       ; $40fb: $f7
    dec l                                         ; $40fc: $2d
    inc bc                                        ; $40fd: $03
    nop                                           ; $40fe: $00
    ld e, a                                       ; $40ff: $5f
    inc bc                                        ; $4100: $03
    ld b, b                                       ; $4101: $40
    ld a, [de]                                    ; $4102: $1a
    ld e, l                                       ; $4103: $5d
    ld [bc], a                                    ; $4104: $02
    ld [bc], a                                    ; $4105: $02
    nop                                           ; $4106: $00
    call c, $004e                                 ; $4107: $dc $4e $00
    nop                                           ; $410a: $00
    rst $30                                       ; $410b: $f7
    ld sp, $571f                                  ; $410c: $31 $1f $57
    add hl, sp                                    ; $410f: $39
    ld a, [hl-]                                   ; $4110: $3a
    ld bc, $d400                                  ; $4111: $01 $00 $d4
    dec l                                         ; $4114: $2d
    sbc h                                         ; $4115: $9c
    ld b, [hl]                                    ; $4116: $46
    rra                                           ; $4117: $1f
    ld d, a                                       ; $4118: $57
    ld b, b                                       ; $4119: $40
    ld a, [de]                                    ; $411a: $1a
    ld a, e                                       ; $411b: $7b
    ld b, d                                       ; $411c: $42
    inc bc                                        ; $411d: $03
    nop                                           ; $411e: $00
    ld e, a                                       ; $411f: $5f
    inc bc                                        ; $4120: $03
    ld [bc], a                                    ; $4121: $02
    nop                                           ; $4122: $00
    ld bc, $5716                                  ; $4123: $01 $16 $57
    add hl, bc                                    ; $4126: $09
    ld e, a                                       ; $4127: $5f
    inc bc                                        ; $4128: $03
    rst $30                                       ; $4129: $f7
    ld sp, $4ebc                                  ; $412a: $31 $bc $4e
    rra                                           ; $412d: $1f
    ld d, a                                       ; $412e: $57
    db $dd                                        ; $412f: $dd
    ld c, [hl]                                    ; $4130: $4e
    ld [bc], a                                    ; $4131: $02
    nop                                           ; $4132: $00
    push af                                       ; $4133: $f5
    dec [hl]                                      ; $4134: $35
    sub c                                         ; $4135: $91
    dec h                                         ; $4136: $25
    rst $38                                       ; $4137: $ff
    ld d, d                                       ; $4138: $52
    inc bc                                        ; $4139: $03
    nop                                           ; $413a: $00
    sub $2d                                       ; $413b: $d6 $2d
    pop hl                                        ; $413d: $e1
    dec d                                         ; $413e: $15
    ld e, a                                       ; $413f: $5f
    inc bc                                        ; $4140: $03
    ld [bc], a                                    ; $4141: $02
    nop                                           ; $4142: $00
    ld e, e                                       ; $4143: $5b
    ld bc, $15c1                                  ; $4144: $01 $c1 $15
    ld e, a                                       ; $4147: $5f
    inc bc                                        ; $4148: $03
    ld [hl], c                                    ; $4149: $71
    ld hl, $571f                                  ; $414a: $21 $1f $57
    rst $30                                       ; $414d: $f7
    ld sp, $3a39                                  ; $414e: $31 $39 $3a
    or h                                          ; $4151: $b4
    add hl, hl                                    ; $4152: $29
    cp h                                          ; $4153: $bc
    ld c, d                                       ; $4154: $4a
    rra                                           ; $4155: $1f
    ld d, a                                       ; $4156: $57
    add hl, sp                                    ; $4157: $39
    ld a, [hl-]                                   ; $4158: $3a
    ld [bc], a                                    ; $4159: $02
    nop                                           ; $415a: $00
    ld e, a                                       ; $415b: $5f
    inc bc                                        ; $415c: $03
    pop hl                                        ; $415d: $e1
    add hl, de                                    ; $415e: $19
    ld h, [hl]                                    ; $415f: $66
    ld [$0001], sp                                ; $4160: $08 $01 $00
    ld e, e                                       ; $4163: $5b
    ld bc, $1943                                  ; $4164: $01 $43 $19
    ld e, a                                       ; $4167: $5f
    inc bc                                        ; $4168: $03
    ld h, l                                       ; $4169: $65
    ld [$31f7], sp                                ; $416a: $08 $f7 $31
    rra                                           ; $416d: $1f
    ld d, a                                       ; $416e: $57
    ld l, l                                       ; $416f: $6d
    dec h                                         ; $4170: $25
    inc hl                                        ; $4171: $23
    inc b                                         ; $4172: $04
    db $d3                                        ; $4173: $d3
    ld sp, $52fe                                  ; $4174: $31 $fe $52
    push bc                                       ; $4177: $c5
    jr jr_0d4_417b                                ; $4178: $18 $01

    nop                                           ; $417a: $00

jr_0d4_417b:
    ld e, a                                       ; $417b: $5f
    inc bc                                        ; $417c: $03
    pop bc                                        ; $417d: $c1
    add hl, de                                    ; $417e: $19
    ld c, d                                       ; $417f: $4a
    add hl, hl                                    ; $4180: $29
    ld [bc], a                                    ; $4181: $02
    nop                                           ; $4182: $00
    ldh a, [$3d]                                  ; $4183: $f0 $3d
    ld e, l                                       ; $4185: $5d
    ld [bc], a                                    ; $4186: $02
    rst $30                                       ; $4187: $f7
    ld e, [hl]                                    ; $4188: $5e
    inc hl                                        ; $4189: $23
    nop                                           ; $418a: $00
    jr jr_0d4_41c3                                ; $418b: $18 $36

    ld [hl], c                                    ; $418d: $71
    ld hl, $571f                                  ; $418e: $21 $1f $57
    inc hl                                        ; $4191: $23
    inc b                                         ; $4192: $04
    ld e, d                                       ; $4193: $5a
    ld a, $4e                                     ; $4194: $3e $4e
    dec h                                         ; $4196: $25
    rra                                           ; $4197: $1f
    ld d, a                                       ; $4198: $57
    ld bc, $1100                                  ; $4199: $01 $00 $11
    ld b, d                                       ; $419c: $42
    ld e, a                                       ; $419d: $5f
    inc bc                                        ; $419e: $03
    ld h, h                                       ; $419f: $64
    dec e                                         ; $41a0: $1d
    ld [bc], a                                    ; $41a1: $02
    nop                                           ; $41a2: $00
    adc $39                                       ; $41a3: $ce $39
    ld e, l                                       ; $41a5: $5d
    ld [bc], a                                    ; $41a6: $02
    rst $10                                       ; $41a7: $d7
    ld e, d                                       ; $41a8: $5a
    ld b, h                                       ; $41a9: $44
    inc b                                         ; $41aa: $04
    ld c, [hl]                                    ; $41ab: $4e
    dec h                                         ; $41ac: $25
    ld sp, $3946                                  ; $41ad: $31 $46 $39
    ld a, [hl-]                                   ; $41b0: $3a
    nop                                           ; $41b1: $00
    nop                                           ; $41b2: $00
    xor a                                         ; $41b3: $af
    ld sp, $3a39                                  ; $41b4: $31 $39 $3a
    ld h, l                                       ; $41b7: $65
    inc c                                         ; $41b8: $0c
    ld bc, $9400                                  ; $41b9: $01 $00 $94
    ld c, [hl]                                    ; $41bc: $4e
    ld e, a                                       ; $41bd: $5f
    inc bc                                        ; $41be: $03
    add hl, hl                                    ; $41bf: $29
    ld hl, $0001                                  ; $41c0: $21 $01 $00

jr_0d4_41c3:
    ld d, d                                       ; $41c3: $52
    ld c, d                                       ; $41c4: $4a
    ld e, l                                       ; $41c5: $5d
    ld [bc], a                                    ; $41c6: $02
    rst $20                                       ; $41c7: $e7
    inc e                                         ; $41c8: $1c
    ld bc, $6f00                                  ; $41c9: $01 $00 $6f
    dec h                                         ; $41cc: $25
    inc d                                         ; $41cd: $14
    ld a, [hl-]                                   ; $41ce: $3a
    jr jr_0d4_4230                                ; $41cf: $18 $5f

    ld h, h                                       ; $41d1: $64
    inc c                                         ; $41d2: $0c
    ld [hl], d                                    ; $41d3: $72
    dec h                                         ; $41d4: $25
    sub h                                         ; $41d5: $94
    ld d, d                                       ; $41d6: $52
    ld a, [c]                                     ; $41d7: $f2
    dec [hl]                                      ; $41d8: $35
    ld hl, $8c04                                  ; $41d9: $21 $04 $8c
    ld sp, $035f                                  ; $41dc: $31 $5f $03
    sub $56                                       ; $41df: $d6 $56
    ld [bc], a                                    ; $41e1: $02
    nop                                           ; $41e2: $00
    ld e, e                                       ; $41e3: $5b
    ld bc, $035f                                  ; $41e4: $01 $5f $03
    sub $56                                       ; $41e7: $d6 $56
    ld e, e                                       ; $41e9: $5b
    ld bc, $035f                                  ; $41ea: $01 $5f $03
    ld e, a                                       ; $41ed: $5f
    inc bc                                        ; $41ee: $03
    sub $56                                       ; $41ef: $d6 $56
    ld e, e                                       ; $41f1: $5b
    ld bc, $035f                                  ; $41f2: $01 $5f $03
    ld e, a                                       ; $41f5: $5f
    inc bc                                        ; $41f6: $03
    sub $56                                       ; $41f7: $d6 $56
    ld [bc], a                                    ; $41f9: $02
    nop                                           ; $41fa: $00
    ld e, e                                       ; $41fb: $5b
    ld bc, $035f                                  ; $41fc: $01 $5f $03
    sub $56                                       ; $41ff: $d6 $56
    ld [bc], a                                    ; $4201: $02
    nop                                           ; $4202: $00
    ld c, c                                       ; $4203: $49
    ld e, $5b                                     ; $4204: $1e $5b
    ld bc, $035f                                  ; $4206: $01 $5f $03
    inc h                                         ; $4209: $24
    inc c                                         ; $420a: $0c
    ld e, a                                       ; $420b: $5f
    inc bc                                        ; $420c: $03
    rst $18                                       ; $420d: $df
    daa                                           ; $420e: $27
    ld c, c                                       ; $420f: $49
    ld e, $5f                                     ; $4210: $1e $5f
    inc bc                                        ; $4212: $03
    rst $18                                       ; $4213: $df
    daa                                           ; $4214: $27
    rst $38                                       ; $4215: $ff
    cpl                                           ; $4216: $2f
    ld c, c                                       ; $4217: $49
    ld e, $00                                     ; $4218: $1e $00
    nop                                           ; $421a: $00
    ld e, a                                       ; $421b: $5f
    inc bc                                        ; $421c: $03
    ld c, c                                       ; $421d: $49
    ld e, $02                                     ; $421e: $1e $02
    nop                                           ; $4220: $00
    ld [bc], a                                    ; $4221: $02
    nop                                           ; $4222: $00
    ld c, c                                       ; $4223: $49
    ld e, $5b                                     ; $4224: $1e $5b
    ld bc, $035f                                  ; $4226: $01 $5f $03
    inc h                                         ; $4229: $24
    inc c                                         ; $422a: $0c
    cp a                                          ; $422b: $bf
    ld [hl+], a                                   ; $422c: $22
    ld c, c                                       ; $422d: $49
    ld e, $ff                                     ; $422e: $1e $ff

jr_0d4_4230:
    dec hl                                        ; $4230: $2b
    ld a, a                                       ; $4231: $7f
    ld a, [hl+]                                   ; $4232: $2a
    ccf                                           ; $4233: $3f
    daa                                           ; $4234: $27
    rst $18                                       ; $4235: $df
    daa                                           ; $4236: $27
    rst $38                                       ; $4237: $ff
    dec hl                                        ; $4238: $2b
    inc h                                         ; $4239: $24
    inc c                                         ; $423a: $0c
    ld e, a                                       ; $423b: $5f
    inc bc                                        ; $423c: $03
    ld c, c                                       ; $423d: $49
    ld e, $7f                                     ; $423e: $1e $7f
    dec hl                                        ; $4240: $2b
    ld [bc], a                                    ; $4241: $02
    nop                                           ; $4242: $00
    ld c, c                                       ; $4243: $49
    ld e, $5b                                     ; $4244: $1e $5b
    ld bc, $035f                                  ; $4246: $01 $5f $03
    ld b, [hl]                                    ; $4249: $46
    ld [$2b1f], sp                                ; $424a: $08 $1f $2b
    ld d, h                                       ; $424d: $54
    dec d                                         ; $424e: $15
    rst $38                                       ; $424f: $ff
    dec hl                                        ; $4250: $2b
    ld d, d                                       ; $4251: $52
    dec d                                         ; $4252: $15
    sbc a                                         ; $4253: $9f
    dec hl                                        ; $4254: $2b
    ld e, a                                       ; $4255: $5f
    ld h, $df                                     ; $4256: $26 $df
    daa                                           ; $4258: $27
    inc hl                                        ; $4259: $23
    ld [$1adf], sp                                ; $425a: $08 $df $1a
    rst $38                                       ; $425d: $ff
    cpl                                           ; $425e: $2f
    ld c, c                                       ; $425f: $49
    ld e, $02                                     ; $4260: $1e $02
    nop                                           ; $4262: $00
    ld a, [bc]                                    ; $4263: $0a
    ld d, $5b                                     ; $4264: $16 $5b
    ld bc, $0f1f                                  ; $4266: $01 $1f $0f
    ld b, l                                       ; $4269: $45
    inc b                                         ; $426a: $04
    ret c                                         ; $426b: $d8

    add hl, de                                    ; $426c: $19
    ccf                                           ; $426d: $3f
    dec hl                                        ; $426e: $2b
    ld sp, $cb15                                  ; $426f: $31 $15 $cb
    ld [$229e], sp                                ; $4272: $08 $9e $22
    or a                                          ; $4275: $b7
    dec d                                         ; $4276: $15
    rst $38                                       ; $4277: $ff
    daa                                           ; $4278: $27
    ld [bc], a                                    ; $4279: $02
    nop                                           ; $427a: $00
    or [hl]                                       ; $427b: $b6
    dec d                                         ; $427c: $15
    rst $18                                       ; $427d: $df
    ld h, $bf                                     ; $427e: $26 $bf
    rla                                           ; $4280: $17
    ld [bc], a                                    ; $4281: $02
    nop                                           ; $4282: $00
    ld [$791a], sp                                ; $4283: $08 $1a $79
    add hl, bc                                    ; $4286: $09
    rra                                           ; $4287: $1f
    rrca                                          ; $4288: $0f
    rrc b                                         ; $4289: $cb $08
    rla                                           ; $428b: $17
    ld [hl], $92                                  ; $428c: $36 $92
    ld de, $1a3c                                  ; $428e: $11 $3c $1a
    jp z, Jump_000_1714                           ; $4291: $ca $14 $17

    ld [hl], $fd                                  ; $4294: $36 $fd
    ld d, d                                       ; $4296: $52
    cpl                                           ; $4297: $2f
    dec d                                         ; $4298: $15
    ld bc, $7d00                                  ; $4299: $01 $00 $7d
    ld h, $5f                                     ; $429c: $26 $5f
    inc bc                                        ; $429e: $03
    db $eb                                        ; $429f: $eb
    ld [$0001], sp                                ; $42a0: $08 $01 $00
    jp hl                                         ; $42a3: $e9


    dec d                                         ; $42a4: $15
    ld e, l                                       ; $42a5: $5d
    ld [bc], a                                    ; $42a6: $02
    ld d, e                                       ; $42a7: $53
    ld c, d                                       ; $42a8: $4a
    dec bc                                        ; $42a9: $0b
    dec c                                         ; $42aa: $0d
    add hl, de                                    ; $42ab: $19
    ld l, $fd                                     ; $42ac: $2e $fd
    ld d, d                                       ; $42ae: $52
    rst $38                                       ; $42af: $ff
    daa                                           ; $42b0: $27
    ld hl, $f800                                  ; $42b1: $21 $00 $f8
    dec c                                         ; $42b4: $0d
    db $fd                                        ; $42b5: $fd
    ld d, d                                       ; $42b6: $52
    db $eb                                        ; $42b7: $eb
    inc c                                         ; $42b8: $0c
    inc hl                                        ; $42b9: $23
    nop                                           ; $42ba: $00
    ld e, $13                                     ; $42bb: $1e $13
    rla                                           ; $42bd: $17
    ld [hl], $fd                                  ; $42be: $36 $fd
    ld d, d                                       ; $42c0: $52
    ld bc, $5d00                                  ; $42c1: $01 $00 $5d
    ld [bc], a                                    ; $42c4: $02
    ld e, c                                       ; $42c5: $59
    ld l, e                                       ; $42c6: $6b
    rst $20                                       ; $42c7: $e7
    dec d                                         ; $42c8: $15
    ld h, a                                       ; $42c9: $67
    inc b                                         ; $42ca: $04
    ld a, [hl-]                                   ; $42cb: $3a
    ld l, $fd                                     ; $42cc: $2e $fd
    ld d, d                                       ; $42ce: $52
    rst $38                                       ; $42cf: $ff
    daa                                           ; $42d0: $27
    nop                                           ; $42d1: $00
    nop                                           ; $42d2: $00
    db $fd                                        ; $42d3: $fd
    ld d, d                                       ; $42d4: $52
    nop                                           ; $42d5: $00
    ld a, h                                       ; $42d6: $7c
    rst $38                                       ; $42d7: $ff
    ld a, a                                       ; $42d8: $7f
    ld [hl+], a                                   ; $42d9: $22
    nop                                           ; $42da: $00
    sbc e                                         ; $42db: $9b
    ld b, $bb                                     ; $42dc: $06 $bb
    ld c, d                                       ; $42de: $4a
    ld l, c                                       ; $42df: $69
    ld de, $0002                                  ; $42e0: $11 $02 $00
    ld e, e                                       ; $42e3: $5b
    ld bc, $15c7                                  ; $42e4: $01 $c7 $15
    ld e, a                                       ; $42e7: $5f
    dec de                                        ; $42e8: $1b
    db $eb                                        ; $42e9: $eb
    ld [$52fd], sp                                ; $42ea: $08 $fd $52
    or $31                                        ; $42ed: $f6 $31
    ccf                                           ; $42ef: $3f
    daa                                           ; $42f0: $27
    ld hl, $fd08                                  ; $42f1: $21 $08 $fd
    ld d, d                                       ; $42f4: $52
    rst $38                                       ; $42f5: $ff
    ld a, a                                       ; $42f6: $7f
    ld b, a                                       ; $42f7: $47
    nop                                           ; $42f8: $00
    ld bc, $dc00                                  ; $42f9: $01 $00 $dc
    ld b, $ba                                     ; $42fc: $06 $ba
    ld c, d                                       ; $42fe: $4a
    ld l, b                                       ; $42ff: $68
    ld de, $0002                                  ; $4300: $11 $02 $00
    cp b                                          ; $4303: $b8
    dec b                                         ; $4304: $05
    ld e, [hl]                                    ; $4305: $5e
    rra                                           ; $4306: $1f
    ld h, a                                       ; $4307: $67
    dec c                                         ; $4308: $0d
    db $eb                                        ; $4309: $eb
    inc c                                         ; $430a: $0c
    rla                                           ; $430b: $17
    ld [hl-], a                                   ; $430c: $32
    db $fd                                        ; $430d: $fd
    ld d, d                                       ; $430e: $52
    rst $38                                       ; $430f: $ff
    daa                                           ; $4310: $27
    ld b, a                                       ; $4311: $47
    nop                                           ; $4312: $00
    rla                                           ; $4313: $17
    ld [hl], $fd                                  ; $4314: $36 $fd
    ld d, d                                       ; $4316: $52
    rst $38                                       ; $4317: $ff
    daa                                           ; $4318: $27
    ld bc, $5f0c                                  ; $4319: $01 $0c $5f
    inc bc                                        ; $431c: $03
    rst $38                                       ; $431d: $ff
    ld a, a                                       ; $431e: $7f
    and [hl]                                      ; $431f: $a6
    ld de, $0002                                  ; $4320: $11 $02 $00
    ld a, d                                       ; $4323: $7a
    add hl, bc                                    ; $4324: $09
    rst $18                                       ; $4325: $df
    ld a, [de]                                    ; $4326: $1a
    rst $18                                       ; $4327: $df
    dec hl                                        ; $4328: $2b
    ld b, e                                       ; $4329: $43
    nop                                           ; $432a: $00
    rla                                           ; $432b: $17
    ld [hl], $fd                                  ; $432c: $36 $fd
    ld d, d                                       ; $432e: $52
    ld c, l                                       ; $432f: $4d
    dec d                                         ; $4330: $15
    nop                                           ; $4331: $00
    nop                                           ; $4332: $00
    db $fd                                        ; $4333: $fd
    ld d, d                                       ; $4334: $52
    ld b, a                                       ; $4335: $47
    nop                                           ; $4336: $00
    ld c, l                                       ; $4337: $4d
    dec d                                         ; $4338: $15
    ld [bc], a                                    ; $4339: $02
    nop                                           ; $433a: $00
    rla                                           ; $433b: $17
    ld [hl], $86                                  ; $433c: $36 $86
    ld de, $035f                                  ; $433e: $11 $5f $03
    ld [bc], a                                    ; $4341: $02
    nop                                           ; $4342: $00
    inc e                                         ; $4343: $1c
    ld a, [de]                                    ; $4344: $1a
    sbc [hl]                                      ; $4345: $9e
    rla                                           ; $4346: $17
    dec l                                         ; $4347: $2d
    dec c                                         ; $4348: $0d
    ld [bc], a                                    ; $4349: $02
    nop                                           ; $434a: $00
    rla                                           ; $434b: $17
    ld [hl], $4f                                  ; $434c: $36 $4f
    ld hl, $52fd                                  ; $434e: $21 $fd $52
    dec h                                         ; $4351: $25
    nop                                           ; $4352: $00
    rla                                           ; $4353: $17
    ld [hl], $fd                                  ; $4354: $36 $fd
    ld d, d                                       ; $4356: $52
    db $eb                                        ; $4357: $eb
    ld [$0402], sp                                ; $4358: $08 $02 $04
    push de                                       ; $435b: $d5
    ld c, $85                                     ; $435c: $0e $85
    dec c                                         ; $435e: $0d
    ld e, a                                       ; $435f: $5f
    inc bc                                        ; $4360: $03
    ld [bc], a                                    ; $4361: $02
    nop                                           ; $4362: $00
    ld [hl], a                                    ; $4363: $77
    dec c                                         ; $4364: $0d
    sbc a                                         ; $4365: $9f
    rra                                           ; $4366: $1f
    ld l, c                                       ; $4367: $69
    add hl, bc                                    ; $4368: $09
    ld bc, $4f00                                  ; $4369: $01 $00 $4f
    ld hl, $3617                                  ; $436c: $21 $17 $36
    db $fd                                        ; $436f: $fd
    ld d, d                                       ; $4370: $52
    ld b, [hl]                                    ; $4371: $46
    nop                                           ; $4372: $00
    cp h                                          ; $4373: $bc
    ld c, d                                       ; $4374: $4a
    ld e, a                                       ; $4375: $5f
    ld e, $ff                                     ; $4376: $1e $ff
    daa                                           ; $4378: $27
    inc bc                                        ; $4379: $03
    inc b                                         ; $437a: $04
    ld e, a                                       ; $437b: $5f
    inc bc                                        ; $437c: $03
    ld h, l                                       ; $437d: $65
    dec c                                         ; $437e: $0d
    ld a, h                                       ; $437f: $7c
    inc hl                                        ; $4380: $23
    ld [bc], a                                    ; $4381: $02
    nop                                           ; $4382: $00
    ld e, e                                       ; $4383: $5b
    ld bc, $173f                                  ; $4384: $01 $3f $17
    ld [hl], $26                                  ; $4387: $36 $26
    nop                                           ; $4389: $00
    nop                                           ; $438a: $00
    ld c, a                                       ; $438b: $4f
    ld hl, $4a53                                  ; $438c: $21 $53 $4a
    rla                                           ; $438f: $17
    ld [hl], $01                                  ; $4390: $36 $01
    nop                                           ; $4392: $00
    ld d, e                                       ; $4393: $53
    ld de, $3add                                  ; $4394: $11 $dd $3a
    rla                                           ; $4397: $17
    ld [hl], $03                                  ; $4398: $36 $03
    inc b                                         ; $439a: $04
    ld e, a                                       ; $439b: $5f
    inc bc                                        ; $439c: $03
    ld h, l                                       ; $439d: $65
    dec c                                         ; $439e: $0d
    sbc $2b                                       ; $439f: $de $2b
    ld [bc], a                                    ; $43a1: $02
    nop                                           ; $43a2: $00
    sub a                                         ; $43a3: $97
    dec c                                         ; $43a4: $0d
    rst $30                                       ; $43a5: $f7
    ld e, [hl]                                    ; $43a6: $5e
    rra                                           ; $43a7: $1f
    rra                                           ; $43a8: $1f
    ld hl, $1504                                  ; $43a9: $21 $04 $15
    ld a, [hl-]                                   ; $43ac: $3a
    cp h                                          ; $43ad: $bc
    ld [hl], a                                    ; $43ae: $77
    db $fd                                        ; $43af: $fd
    ld d, d                                       ; $43b0: $52
    ld hl, $7104                                  ; $43b1: $21 $04 $71
    ld hl, $77bc                                  ; $43b4: $21 $bc $77
    ld d, e                                       ; $43b7: $53
    ld c, d                                       ; $43b8: $4a
    and e                                         ; $43b9: $a3
    ld [$1996], sp                                ; $43ba: $08 $96 $19
    ld e, a                                       ; $43bd: $5f
    inc bc                                        ; $43be: $03
    ld a, l                                       ; $43bf: $7d
    daa                                           ; $43c0: $27
    ld [bc], a                                    ; $43c1: $02
    nop                                           ; $43c2: $00
    sbc d                                         ; $43c3: $9a
    add hl, bc                                    ; $43c4: $09
    sub h                                         ; $43c5: $94
    ld d, d                                       ; $43c6: $52
    ld e, a                                       ; $43c7: $5f
    inc bc                                        ; $43c8: $03
    ld hl, $3304                                  ; $43c9: $21 $04 $33
    ld b, [hl]                                    ; $43cc: $46
    cp h                                          ; $43cd: $bc
    ld [hl], a                                    ; $43ce: $77
    db $fd                                        ; $43cf: $fd
    ld d, d                                       ; $43d0: $52
    nop                                           ; $43d1: $00
    nop                                           ; $43d2: $00
    ld l, a                                       ; $43d3: $6f
    add hl, hl                                    ; $43d4: $29
    cp h                                          ; $43d5: $bc
    ld [hl], a                                    ; $43d6: $77
    inc [hl]                                      ; $43d7: $34
    ld b, d                                       ; $43d8: $42
    ld [bc], a                                    ; $43d9: $02
    inc b                                         ; $43da: $04
    sub [hl]                                      ; $43db: $96
    add hl, de                                    ; $43dc: $19
    ld a, [hl]                                    ; $43dd: $7e
    dec de                                        ; $43de: $1b
    ld b, h                                       ; $43df: $44
    add hl, bc                                    ; $43e0: $09
    ld [bc], a                                    ; $43e1: $02
    nop                                           ; $43e2: $00
    ld e, e                                       ; $43e3: $5b
    ld bc, $035f                                  ; $43e4: $01 $5f $03
    ld b, h                                       ; $43e7: $44
    add hl, bc                                    ; $43e8: $09
    ld e, e                                       ; $43e9: $5b
    ld bc, $035f                                  ; $43ea: $01 $5f $03
    ld e, a                                       ; $43ed: $5f
    inc bc                                        ; $43ee: $03
    ld b, h                                       ; $43ef: $44
    add hl, bc                                    ; $43f0: $09
    ld e, e                                       ; $43f1: $5b
    ld bc, $035f                                  ; $43f2: $01 $5f $03
    ld e, a                                       ; $43f5: $5f
    inc bc                                        ; $43f6: $03
    ld b, h                                       ; $43f7: $44
    add hl, bc                                    ; $43f8: $09
    ld [bc], a                                    ; $43f9: $02
    nop                                           ; $43fa: $00
    ld e, e                                       ; $43fb: $5b
    ld bc, $035f                                  ; $43fc: $01 $5f $03
    ld b, h                                       ; $43ff: $44
    add hl, bc                                    ; $4400: $09
    ld [bc], a                                    ; $4401: $02
    nop                                           ; $4402: $00
    rst $08                                       ; $4403: $cf
    ld e, l                                       ; $4404: $5d
    ld e, e                                       ; $4405: $5b
    ld bc, $035f                                  ; $4406: $01 $5f $03
    nop                                           ; $4409: $00
    nop                                           ; $440a: $00
    ld e, a                                       ; $440b: $5f
    inc bc                                        ; $440c: $03
    rst $08                                       ; $440d: $cf
    ld e, l                                       ; $440e: $5d
    ld h, b                                       ; $440f: $60
    ld [$0000], sp                                ; $4410: $08 $00 $00
    ld e, a                                       ; $4413: $5f
    inc bc                                        ; $4414: $03
    rst $08                                       ; $4415: $cf
    ld e, l                                       ; $4416: $5d
    ld h, b                                       ; $4417: $60
    ld [$0002], sp                                ; $4418: $08 $02 $00
    ld e, a                                       ; $441b: $5f
    inc bc                                        ; $441c: $03
    rst $08                                       ; $441d: $cf
    ld e, l                                       ; $441e: $5d
    ld h, b                                       ; $441f: $60
    ld [$0001], sp                                ; $4420: $08 $01 $00
    rst $08                                       ; $4423: $cf
    ld e, l                                       ; $4424: $5d
    ld e, e                                       ; $4425: $5b
    ld bc, $035f                                  ; $4426: $01 $5f $03
    nop                                           ; $4429: $00
    nop                                           ; $442a: $00
    rst $08                                       ; $442b: $cf
    ld e, l                                       ; $442c: $5d
    push de                                       ; $442d: $d5
    add hl, hl                                    ; $442e: $29
    sbc l                                         ; $442f: $9d
    ld a, $21                                     ; $4430: $3e $21
    nop                                           ; $4432: $00
    rst $08                                       ; $4433: $cf
    ld e, l                                       ; $4434: $5d
    ld a, e                                       ; $4435: $7b
    ld a, [hl-]                                   ; $4436: $3a
    ld [hl], b                                    ; $4437: $70
    ld hl, $0002                                  ; $4438: $21 $02 $00
    adc $5d                                       ; $443b: $ce $5d
    ld e, a                                       ; $443d: $5f
    inc bc                                        ; $443e: $03
    rst $08                                       ; $443f: $cf
    ld e, l                                       ; $4440: $5d
    ld bc, $ce00                                  ; $4441: $01 $00 $ce
    ld e, l                                       ; $4444: $5d
    ld e, l                                       ; $4445: $5d
    ld [bc], a                                    ; $4446: $02
    sbc [hl]                                      ; $4447: $9e
    ld a, [hl-]                                   ; $4448: $3a
    nop                                           ; $4449: $00
    nop                                           ; $444a: $00
    add hl, de                                    ; $444b: $19
    ld l, $f1                                     ; $444c: $2e $f1
    inc b                                         ; $444e: $04
    cp [hl]                                       ; $444f: $be
    ld a, $00                                     ; $4450: $3e $00
    nop                                           ; $4452: $00
    adc $5d                                       ; $4453: $ce $5d
    rst $28                                       ; $4455: $ef
    inc c                                         ; $4456: $0c
    sbc l                                         ; $4457: $9d
    ld a, $02                                     ; $4458: $3e $02
    nop                                           ; $445a: $00
    ld e, a                                       ; $445b: $5f
    inc bc                                        ; $445c: $03
    adc $5d                                       ; $445d: $ce $5d
    sbc l                                         ; $445f: $9d
    ld a, $01                                     ; $4460: $3e $01
    nop                                           ; $4462: $00
    ld e, l                                       ; $4463: $5d
    ld [bc], a                                    ; $4464: $02
    xor l                                         ; $4465: $ad
    ld e, c                                       ; $4466: $59
    ld a, h                                       ; $4467: $7c
    ld [hl], $00                                  ; $4468: $36 $00
    nop                                           ; $446a: $00
    ld [hl-], a                                   ; $446b: $32
    dec c                                         ; $446c: $0d
    ld e, d                                       ; $446d: $5a
    ld a, [hl-]                                   ; $446e: $3a
    sbc d                                         ; $446f: $9a
    dec d                                         ; $4470: $15
    ld [hl+], a                                   ; $4471: $22
    inc b                                         ; $4472: $04
    sub $29                                       ; $4473: $d6 $29
    ld de, $be0d                                  ; $4475: $11 $0d $be
    ld a, $01                                     ; $4478: $3e $01
    nop                                           ; $447a: $00
    xor l                                         ; $447b: $ad
    ld e, c                                       ; $447c: $59
    ld e, a                                       ; $447d: $5f
    inc bc                                        ; $447e: $03
    xor [hl]                                      ; $447f: $ae
    ld e, l                                       ; $4480: $5d
    ld bc, $7800                                  ; $4481: $01 $00 $78
    dec c                                         ; $4484: $0d
    ld a, e                                       ; $4485: $7b
    ld [hl], $5f                                  ; $4486: $36 $5f
    inc bc                                        ; $4488: $03
    nop                                           ; $4489: $00
    nop                                           ; $448a: $00
    ldh a, [rDIV]                                 ; $448b: $f0 $04
    sbc b                                         ; $448d: $98
    add hl, de                                    ; $448e: $19
    adc c                                         ; $448f: $89
    nop                                           ; $4490: $00
    nop                                           ; $4491: $00
    nop                                           ; $4492: $00
    ld sp, hl                                     ; $4493: $f9
    dec l                                         ; $4494: $2d
    call $de0c                                    ; $4495: $cd $0c $de
    ld b, d                                       ; $4498: $42
    nop                                           ; $4499: $00
    nop                                           ; $449a: $00
    adc h                                         ; $449b: $8c
    ld d, l                                       ; $449c: $55
    ld e, a                                       ; $449d: $5f
    inc bc                                        ; $449e: $03
    xor l                                         ; $449f: $ad
    ld e, c                                       ; $44a0: $59
    ld [bc], a                                    ; $44a1: $02
    nop                                           ; $44a2: $00
    ld d, a                                       ; $44a3: $57
    add hl, bc                                    ; $44a4: $09
    ld a, l                                       ; $44a5: $7d
    ld a, [hl-]                                   ; $44a6: $3a
    ld e, a                                       ; $44a7: $5f
    inc bc                                        ; $44a8: $03
    nop                                           ; $44a9: $00
    nop                                           ; $44aa: $00
    sub h                                         ; $44ab: $94
    dec h                                         ; $44ac: $25
    sbc $4e                                       ; $44ad: $de $4e
    adc d                                         ; $44af: $8a
    nop                                           ; $44b0: $00
    inc h                                         ; $44b1: $24
    nop                                           ; $44b2: $00
    or [hl]                                       ; $44b3: $b6
    dec h                                         ; $44b4: $25
    di                                            ; $44b5: $f3
    inc b                                         ; $44b6: $04
    sbc l                                         ; $44b7: $9d
    ld a, $00                                     ; $44b8: $3e $00
    nop                                           ; $44ba: $00
    ld hl, sp+$29                                 ; $44bb: $f8 $29
    ld e, a                                       ; $44bd: $5f
    inc bc                                        ; $44be: $03
    sbc $46                                       ; $44bf: $de $46
    ld [bc], a                                    ; $44c1: $02
    nop                                           ; $44c2: $00
    inc d                                         ; $44c3: $14
    dec b                                         ; $44c4: $05
    ld a, e                                       ; $44c5: $7b
    ld [hl], $5f                                  ; $44c6: $36 $5f
    inc bc                                        ; $44c8: $03
    ld b, [hl]                                    ; $44c9: $46
    nop                                           ; $44ca: $00
    cp $4e                                        ; $44cb: $fe $4e
    sub h                                         ; $44cd: $94
    dec h                                         ; $44ce: $25
    ld e, a                                       ; $44cf: $5f
    ld e, a                                       ; $44d0: $5f
    jr nz, jr_0d4_44d7                            ; $44d1: $20 $04

    ld a, [$ad29]                                 ; $44d3: $fa $29 $ad
    inc b                                         ; $44d6: $04

jr_0d4_44d7:
    rra                                           ; $44d7: $1f
    ld c, a                                       ; $44d8: $4f
    ld [bc], a                                    ; $44d9: $02
    nop                                           ; $44da: $00
    sbc l                                         ; $44db: $9d
    ld a, $31                                     ; $44dc: $3e $31
    add hl, de                                    ; $44de: $19
    ld e, a                                       ; $44df: $5f
    inc bc                                        ; $44e0: $03
    ld [bc], a                                    ; $44e1: $02
    nop                                           ; $44e2: $00
    dec d                                         ; $44e3: $15
    dec b                                         ; $44e4: $05
    ld e, e                                       ; $44e5: $5b
    ld [hl], $5f                                  ; $44e6: $36 $5f
    inc bc                                        ; $44e8: $03
    ld b, l                                       ; $44e9: $45
    nop                                           ; $44ea: $00
    sbc b                                         ; $44eb: $98
    ld c, [hl]                                    ; $44ec: $4e
    sub l                                         ; $44ed: $95
    dec h                                         ; $44ee: $25
    ld a, a                                       ; $44ef: $7f
    ld e, a                                       ; $44f0: $5f
    ld [hl+], a                                   ; $44f1: $22
    nop                                           ; $44f2: $00
    rst $10                                       ; $44f3: $d7
    ld hl, $04cf                                  ; $44f4: $21 $cf $04
    sbc l                                         ; $44f7: $9d
    ld a, $03                                     ; $44f8: $3e $03
    nop                                           ; $44fa: $00
    cp h                                          ; $44fb: $bc
    ld b, $be                                     ; $44fc: $06 $be
    ld b, d                                       ; $44fe: $42
    dec bc                                        ; $44ff: $0b
    add hl, de                                    ; $4500: $19
    ld [bc], a                                    ; $4501: $02
    nop                                           ; $4502: $00
    ld d, a                                       ; $4503: $57
    add hl, bc                                    ; $4504: $09
    ld a, h                                       ; $4505: $7c
    ld a, [hl-]                                   ; $4506: $3a
    ld e, a                                       ; $4507: $5f
    inc bc                                        ; $4508: $03
    inc bc                                        ; $4509: $03
    nop                                           ; $450a: $00
    sbc c                                         ; $450b: $99
    add hl, de                                    ; $450c: $19
    ld e, a                                       ; $450d: $5f
    ld e, a                                       ; $450e: $5f
    ret nc                                        ; $450f: $d0

    nop                                           ; $4510: $00
    inc h                                         ; $4511: $24
    nop                                           ; $4512: $00
    ld [hl], a                                    ; $4513: $77
    dec d                                         ; $4514: $15
    jp nc, Jump_000_3a00                          ; $4515: $d2 $00 $3a

    ld [hl], $00                                  ; $4518: $36 $00
    nop                                           ; $451a: $00
    sbc e                                         ; $451b: $9b
    ld b, $be                                     ; $451c: $06 $be
    ld b, d                                       ; $451e: $42
    db $ec                                        ; $451f: $ec
    db $10                                        ; $4520: $10
    ld [bc], a                                    ; $4521: $02
    nop                                           ; $4522: $00
    ld d, a                                       ; $4523: $57
    ld de, $035f                                  ; $4524: $11 $5f $03
    sbc h                                         ; $4527: $9c
    ld a, [hl-]                                   ; $4528: $3a
    ld bc, $1e00                                  ; $4529: $01 $00 $1e
    ld l, $5f                                     ; $452c: $2e $5f
    ld h, e                                       ; $452e: $63
    call Call_000_000c                            ; $452f: $cd $0c $00
    nop                                           ; $4532: $00
    ret c                                         ; $4533: $d8

    dec h                                         ; $4534: $25
    sbc l                                         ; $4535: $9d
    ld a, $f2                                     ; $4536: $3e $f2
    inc b                                         ; $4538: $04
    ld bc, $1200                                  ; $4539: $01 $00 $12
    add hl, bc                                    ; $453c: $09
    cp $12                                        ; $453d: $fe $12
    call nc, Call_000_0229                        ; $453f: $d4 $29 $02
    nop                                           ; $4542: $00
    ld e, b                                       ; $4543: $58
    dec b                                         ; $4544: $05
    ld a, l                                       ; $4545: $7d
    ld a, [hl-]                                   ; $4546: $3a
    ld e, a                                       ; $4547: $5f
    inc bc                                        ; $4548: $03
    ld b, l                                       ; $4549: $45
    inc b                                         ; $454a: $04
    ld e, c                                       ; $454b: $59
    ld hl, $637f                                  ; $454c: $21 $7f $63
    ld e, l                                       ; $454f: $5d
    ld a, $00                                     ; $4550: $3e $00
    nop                                           ; $4552: $00
    add hl, de                                    ; $4553: $19
    ld l, $ff                                     ; $4554: $2e $ff
    ld a, a                                       ; $4556: $7f
    ld e, [hl]                                    ; $4557: $5e
    ld a, $01                                     ; $4558: $3e $01
    nop                                           ; $455a: $00
    dec [hl]                                      ; $455b: $35
    dec c                                         ; $455c: $0d
    db $ec                                        ; $455d: $ec
    jr jr_0d4_457f                                ; $455e: $18 $1f

    rla                                           ; $4560: $17
    ld bc, $5900                                  ; $4561: $01 $00 $59
    dec b                                         ; $4564: $05
    cp h                                          ; $4565: $bc
    ld a, [hl+]                                   ; $4566: $2a
    dec b                                         ; $4567: $05
    dec a                                         ; $4568: $3d
    ld bc, $5600                                  ; $4569: $01 $00 $56
    dec e                                         ; $456c: $1d
    ld e, $53                                     ; $456d: $1e $53
    xor e                                         ; $456f: $ab
    inc b                                         ; $4570: $04
    nop                                           ; $4571: $00
    nop                                           ; $4572: $00
    dec a                                         ; $4573: $3d
    ld a, $5f                                     ; $4574: $3e $5f
    ld e, a                                       ; $4576: $5f
    xor $08                                       ; $4577: $ee $08
    ld bc, $7500                                  ; $4579: $01 $00 $75
    dec d                                         ; $457c: $15
    sbc $26                                       ; $457d: $de $26

jr_0d4_457f:
    xor h                                         ; $457f: $ac
    ld [$0001], sp                                ; $4580: $08 $01 $00
    ld [hl], $05                                  ; $4583: $36 $05
    db $e4                                        ; $4585: $e4
    jr c, @+$20                                   ; $4586: $38 $1e

    rla                                           ; $4588: $17
    ld bc, $9600                                  ; $4589: $01 $00 $96
    dec e                                         ; $458c: $1d
    adc d                                         ; $458d: $8a
    inc b                                         ; $458e: $04
    sbc [hl]                                      ; $458f: $9e
    ld a, [hl-]                                   ; $4590: $3a
    nop                                           ; $4591: $00
    nop                                           ; $4592: $00
    ret c                                         ; $4593: $d8

    dec l                                         ; $4594: $2d
    ccf                                           ; $4595: $3f
    ld e, e                                       ; $4596: $5b
    xor e                                         ; $4597: $ab
    inc b                                         ; $4598: $04
    ld h, l                                       ; $4599: $65
    ld [$1597], sp                                ; $459a: $08 $97 $15
    ld e, a                                       ; $459d: $5f
    inc bc                                        ; $459e: $03
    xor $0c                                       ; $459f: $ee $0c
    ld [bc], a                                    ; $45a1: $02
    nop                                           ; $45a2: $00
    ld e, e                                       ; $45a3: $5b
    ld bc, $34e4                                  ; $45a4: $01 $e4 $34
    ld e, a                                       ; $45a7: $5f
    inc bc                                        ; $45a8: $03
    nop                                           ; $45a9: $00
    nop                                           ; $45aa: $00
    ld a, [de]                                    ; $45ab: $1a
    ld [hl-], a                                   ; $45ac: $32
    adc b                                         ; $45ad: $88
    inc c                                         ; $45ae: $0c
    pop af                                        ; $45af: $f1
    inc b                                         ; $45b0: $04
    dec c                                         ; $45b1: $0d
    dec d                                         ; $45b2: $15
    ld a, e                                       ; $45b3: $7b
    ld b, d                                       ; $45b4: $42
    ld e, $57                                     ; $45b5: $1e $57
    sub [hl]                                      ; $45b7: $96
    ld hl, $0421                                  ; $45b8: $21 $21 $04
    ld e, a                                       ; $45bb: $5f
    inc bc                                        ; $45bc: $03
    xor c                                         ; $45bd: $a9
    inc c                                         ; $45be: $0c
    pop af                                        ; $45bf: $f1
    inc b                                         ; $45c0: $04
    ld bc, $3800                                  ; $45c1: $01 $00 $38
    ld bc, $34c3                                  ; $45c4: $01 $c3 $34
    rra                                           ; $45c7: $1f
    rla                                           ; $45c8: $17
    jr nz, jr_0d4_45cf                            ; $45c9: $20 $04

    inc sp                                        ; $45cb: $33
    dec c                                         ; $45cc: $0d
    add hl, sp                                    ; $45cd: $39
    ld [hl-], a                                   ; $45ce: $32

jr_0d4_45cf:
    jp z, Jump_000_2110                           ; $45cf: $ca $10 $21

    nop                                           ; $45d2: $00
    sub [hl]                                      ; $45d3: $96
    ld hl, $10ca                                  ; $45d4: $21 $ca $10
    ld e, e                                       ; $45d7: $5b
    ld [hl], $01                                  ; $45d8: $36 $01
    nop                                           ; $45da: $00
    ld c, a                                       ; $45db: $4f
    dec h                                         ; $45dc: $25
    ld e, a                                       ; $45dd: $5f
    inc bc                                        ; $45de: $03
    xor c                                         ; $45df: $a9
    ld [$0002], sp                                ; $45e0: $08 $02 $00
    ld e, e                                       ; $45e3: $5b
    ld bc, $035f                                  ; $45e4: $01 $5f $03
    xor c                                         ; $45e7: $a9
    ld [$015b], sp                                ; $45e8: $08 $5b $01
    ld e, a                                       ; $45eb: $5f
    inc bc                                        ; $45ec: $03
    ld e, a                                       ; $45ed: $5f
    inc bc                                        ; $45ee: $03
    xor c                                         ; $45ef: $a9
    ld [$015b], sp                                ; $45f0: $08 $5b $01
    ld e, a                                       ; $45f3: $5f
    inc bc                                        ; $45f4: $03
    ld e, a                                       ; $45f5: $5f
    inc bc                                        ; $45f6: $03
    xor c                                         ; $45f7: $a9
    ld [$0002], sp                                ; $45f8: $08 $02 $00
    ld e, e                                       ; $45fb: $5b
    ld bc, $035f                                  ; $45fc: $01 $5f $03
    xor c                                         ; $45ff: $a9
    ld [$05c0], sp                                ; $4600: $08 $c0 $05
    ld e, e                                       ; $4603: $5b
    ld bc, $0002                                  ; $4604: $01 $02 $00
    ld e, a                                       ; $4607: $5f
    inc bc                                        ; $4608: $03
    ret nz                                        ; $4609: $c0

    dec b                                         ; $460a: $05
    ld e, a                                       ; $460b: $5f
    inc bc                                        ; $460c: $03
    ld b, a                                       ; $460d: $47
    nop                                           ; $460e: $00
    ld e, a                                       ; $460f: $5f
    inc bc                                        ; $4610: $03
    ret nz                                        ; $4611: $c0

    dec b                                         ; $4612: $05
    ld e, a                                       ; $4613: $5f
    inc bc                                        ; $4614: $03
    ld b, a                                       ; $4615: $47
    nop                                           ; $4616: $00
    ld e, a                                       ; $4617: $5f
    inc bc                                        ; $4618: $03
    ret nz                                        ; $4619: $c0

    dec b                                         ; $461a: $05
    ld e, a                                       ; $461b: $5f
    inc bc                                        ; $461c: $03
    ld [bc], a                                    ; $461d: $02
    nop                                           ; $461e: $00
    ld e, a                                       ; $461f: $5f
    inc bc                                        ; $4620: $03
    ret nz                                        ; $4621: $c0

    dec b                                         ; $4622: $05
    ld e, e                                       ; $4623: $5b
    ld bc, $0002                                  ; $4624: $01 $02 $00
    ld e, a                                       ; $4627: $5f
    inc bc                                        ; $4628: $03
    ret nz                                        ; $4629: $c0

    dec b                                         ; $462a: $05
    sbc b                                         ; $462b: $98
    add hl, de                                    ; $462c: $19
    ld b, a                                       ; $462d: $47
    nop                                           ; $462e: $00
    ld a, h                                       ; $462f: $7c
    ld a, [hl-]                                   ; $4630: $3a
    ret nz                                        ; $4631: $c0

    dec b                                         ; $4632: $05
    ld e, h                                       ; $4633: $5c
    ld l, $47                                     ; $4634: $2e $47
    nop                                           ; $4636: $00
    ld [$c014], a                                 ; $4637: $ea $14 $c0
    dec b                                         ; $463a: $05
    dec e                                         ; $463b: $1d
    ld a, [de]                                    ; $463c: $1a
    inc h                                         ; $463d: $24
    nop                                           ; $463e: $00
    ld e, a                                       ; $463f: $5f
    inc bc                                        ; $4640: $03
    pop bc                                        ; $4641: $c1
    dec b                                         ; $4642: $05
    dec d                                         ; $4643: $15
    dec b                                         ; $4644: $05
    ld [bc], a                                    ; $4645: $02
    nop                                           ; $4646: $00
    ld e, a                                       ; $4647: $5f
    inc bc                                        ; $4648: $03
    pop bc                                        ; $4649: $c1
    dec b                                         ; $464a: $05
    ld e, d                                       ; $464b: $5a
    ld a, [hl-]                                   ; $464c: $3a
    ld l, b                                       ; $464d: $68
    nop                                           ; $464e: $00
    cpl                                           ; $464f: $2f
    dec d                                         ; $4650: $15
    dec h                                         ; $4651: $25
    nop                                           ; $4652: $00
    sub h                                         ; $4653: $94
    dec e                                         ; $4654: $1d
    sbc [hl]                                      ; $4655: $9e
    ld a, [hl-]                                   ; $4656: $3a
    rrca                                          ; $4657: $0f
    ld de, $05c1                                  ; $4658: $11 $c1 $05
    ld e, d                                       ; $465b: $5a
    ld a, [hl-]                                   ; $465c: $3a
    ld h, l                                       ; $465d: $65
    ld [$035f], sp                                ; $465e: $08 $5f $03
    ld [bc], a                                    ; $4661: $02
    nop                                           ; $4662: $00
    ld d, $05                                     ; $4663: $16 $05
    sbc $22                                       ; $4665: $de $22
    pop hl                                        ; $4667: $e1
    add hl, bc                                    ; $4668: $09
    pop hl                                        ; $4669: $e1
    add hl, bc                                    ; $466a: $09
    ld e, h                                       ; $466b: $5c
    ld a, [hl-]                                   ; $466c: $3a
    xor $10                                       ; $466d: $ee $10
    ld b, h                                       ; $466f: $44
    inc b                                         ; $4670: $04
    ld b, l                                       ; $4671: $45
    inc b                                         ; $4672: $04
    ld a, [hl-]                                   ; $4673: $3a
    ld [hl-], a                                   ; $4674: $32
    ldh a, [$0c]                                  ; $4675: $f0 $0c
    rst $18                                       ; $4677: $df
    ld b, [hl]                                    ; $4678: $46
    ld b, a                                       ; $4679: $47
    nop                                           ; $467a: $00
    sub d                                         ; $467b: $92
    ld hl, $035f                                  ; $467c: $21 $5f $03
    pop hl                                        ; $467f: $e1
    add hl, bc                                    ; $4680: $09
    ld [bc], a                                    ; $4681: $02
    nop                                           ; $4682: $00
    ld e, e                                       ; $4683: $5b
    ld bc, $09e2                                  ; $4684: $01 $e2 $09
    rst $38                                       ; $4687: $ff
    ld c, $03                                     ; $4688: $0e $03
    nop                                           ; $468a: $00
    ld hl, sp+$25                                 ; $468b: $f8 $25
    ld [de], a                                    ; $468d: $12
    add hl, bc                                    ; $468e: $09
    sbc $42                                       ; $468f: $de $42
    ld c, b                                       ; $4691: $48
    nop                                           ; $4692: $00
    sub a                                         ; $4693: $97
    dec d                                         ; $4694: $15
    ld e, e                                       ; $4695: $5b
    ld [hl], $2e                                  ; $4696: $36 $2e
    add hl, de                                    ; $4698: $19
    ld h, $00                                     ; $4699: $26 $00
    ld e, [hl]                                    ; $469b: $5e
    ld l, $5f                                     ; $469c: $2e $5f
    inc bc                                        ; $469e: $03
    ld c, $11                                     ; $469f: $0e $11
    ld [bc], a                                    ; $46a1: $02
    nop                                           ; $46a2: $00
    ld d, $05                                     ; $46a3: $16 $05
    inc bc                                        ; $46a5: $03
    ld c, $5f                                     ; $46a6: $0e $5f
    inc bc                                        ; $46a8: $03
    ld bc, $3b00                                  ; $46a9: $01 $00 $3b
    ld a, [hl-]                                   ; $46ac: $3a
    adc $08                                       ; $46ad: $ce $08
    ld e, $57                                     ; $46af: $1e $57
    ld b, h                                       ; $46b1: $44
    inc b                                         ; $46b2: $04
    sbc l                                         ; $46b3: $9d
    ld a, $10                                     ; $46b4: $3e $10
    ld de, $004a                                  ; $46b6: $11 $4a $00
    ld [hl+], a                                   ; $46b9: $22
    inc b                                         ; $46ba: $04
    ld a, h                                       ; $46bb: $7c
    ld [hl], $5f                                  ; $46bc: $36 $5f
    inc bc                                        ; $46be: $03
    adc e                                         ; $46bf: $8b
    ld [$0002], sp                                ; $46c0: $08 $02 $00
    ld e, b                                       ; $46c3: $58
    dec b                                         ; $46c4: $05
    cp [hl]                                       ; $46c5: $be
    ld a, [hl+]                                   ; $46c6: $2a
    or b                                          ; $46c7: $b0
    inc b                                         ; $46c8: $04
    ld bc, $3b00                                  ; $46c9: $01 $00 $3b
    ld a, [hl-]                                   ; $46cc: $3a
    xor a                                         ; $46cd: $af
    nop                                           ; $46ce: $00
    rst $38                                       ; $46cf: $ff
    ld c, d                                       ; $46d0: $4a
    ld b, a                                       ; $46d1: $47
    nop                                           ; $46d2: $00
    dec sp                                        ; $46d3: $3b
    ld a, [hl-]                                   ; $46d4: $3a
    ld c, [hl]                                    ; $46d5: $4e
    ld hl, $04f2                                  ; $46d6: $21 $f2 $04
    daa                                           ; $46d9: $27
    nop                                           ; $46da: $00
    inc de                                        ; $46db: $13
    dec c                                         ; $46dc: $0d
    ld e, a                                       ; $46dd: $5f
    inc bc                                        ; $46de: $03
    rst $10                                       ; $46df: $d7
    dec h                                         ; $46e0: $25
    ld [bc], a                                    ; $46e1: $02
    nop                                           ; $46e2: $00
    ld [hl], $05                                  ; $46e3: $36 $05
    ld e, h                                       ; $46e5: $5c
    ld a, [hl-]                                   ; $46e6: $3a
    ld e, a                                       ; $46e7: $5f
    inc bc                                        ; $46e8: $03
    ld h, $00                                     ; $46e9: $26 $00
    ld sp, hl                                     ; $46eb: $f9
    dec l                                         ; $46ec: $2d
    rra                                           ; $46ed: $1f
    ld d, a                                       ; $46ee: $57
    rst $38                                       ; $46ef: $ff
    ld a, a                                       ; $46f0: $7f
    ld c, b                                       ; $46f1: $48
    nop                                           ; $46f2: $00
    ld a, h                                       ; $46f3: $7c
    ld b, d                                       ; $46f4: $42
    ld l, $7e                                     ; $46f5: $2e $7e
    rst $38                                       ; $46f7: $ff
    ld a, a                                       ; $46f8: $7f
    ld [bc], a                                    ; $46f9: $02
    nop                                           ; $46fa: $00
    inc [hl]                                      ; $46fb: $34
    dec c                                         ; $46fc: $0d
    ld e, a                                       ; $46fd: $5f
    inc bc                                        ; $46fe: $03
    adc d                                         ; $46ff: $8a
    inc b                                         ; $4700: $04
    ld [bc], a                                    ; $4701: $02
    nop                                           ; $4702: $00
    ld d, [hl]                                    ; $4703: $56
    dec c                                         ; $4704: $0d
    ld a, h                                       ; $4705: $7c
    ld a, $5f                                     ; $4706: $3e $5f

Call_0d4_4708:
    inc bc                                        ; $4708: $03
    add hl, hl                                    ; $4709: $29
    nop                                           ; $470a: $00
    ld e, e                                       ; $470b: $5b
    ld [hl-], a                                   ; $470c: $32
    ccf                                           ; $470d: $3f
    ld e, e                                       ; $470e: $5b
    rrca                                          ; $470f: $0f
    ld de, $2840                                  ; $4710: $11 $40 $28
    sbc l                                         ; $4713: $9d
    ld b, [hl]                                    ; $4714: $46
    ld d, $7f                                     ; $4715: $16 $7f
    adc [hl]                                      ; $4717: $8e
    nop                                           ; $4718: $00
    ld [bc], a                                    ; $4719: $02
    nop                                           ; $471a: $00
    sub a                                         ; $471b: $97
    add hl, de                                    ; $471c: $19
    ld e, a                                       ; $471d: $5f
    inc bc                                        ; $471e: $03
    adc d                                         ; $471f: $8a
    nop                                           ; $4720: $00
    ld [bc], a                                    ; $4721: $02
    nop                                           ; $4722: $00
    ld e, l                                       ; $4723: $5d
    ld [bc], a                                    ; $4724: $02
    ld e, e                                       ; $4725: $5b
    ld [hl], $2b                                  ; $4726: $36 $2b
    ld hl, $0049                                  ; $4728: $21 $49 $00
    inc a                                         ; $472b: $3c
    ld l, $ff                                     ; $472c: $2e $ff
    ld d, d                                       ; $472e: $52
    halt                                          ; $472f: $76
    ld de, $1088                                  ; $4730: $11 $88 $10
    ld l, $7e                                     ; $4733: $2e $7e
    cp $52                                        ; $4735: $fe $52
    rst $38                                       ; $4737: $ff
    ld a, a                                       ; $4738: $7f
    ld b, l                                       ; $4739: $45
    nop                                           ; $473a: $00
    dec de                                        ; $473b: $1b
    ld l, $67                                     ; $473c: $2e $67
    ld a, [de]                                    ; $473e: $1a
    ld e, a                                       ; $473f: $5f
    inc bc                                        ; $4740: $03
    ld [bc], a                                    ; $4741: $02
    nop                                           ; $4742: $00
    dec d                                         ; $4743: $15
    dec b                                         ; $4744: $05
    ld a, [hl-]                                   ; $4745: $3a
    ld [hl], $5f                                  ; $4746: $36 $5f
    inc bc                                        ; $4748: $03
    ld c, c                                       ; $4749: $49
    nop                                           ; $474a: $00
    rla                                           ; $474b: $17
    ld [hl-], a                                   ; $474c: $32
    rra                                           ; $474d: $1f
    ld d, a                                       ; $474e: $57
    db $ed                                        ; $474f: $ed
    db $10                                        ; $4750: $10
    ld l, d                                       ; $4751: $6a
    nop                                           ; $4752: $00
    dec sp                                        ; $4753: $3b
    ld a, [hl-]                                   ; $4754: $3a
    rra                                           ; $4755: $1f
    ld d, a                                       ; $4756: $57
    ld c, $15                                     ; $4757: $0e $15
    ld h, $00                                     ; $4759: $26 $00
    dec de                                        ; $475b: $1b
    ld l, $88                                     ; $475c: $2e $88
    ld e, $5f                                     ; $475e: $1e $5f
    inc bc                                        ; $4760: $03
    ld [bc], a                                    ; $4761: $02
    nop                                           ; $4762: $00
    ld e, l                                       ; $4763: $5d
    ld [bc], a                                    ; $4764: $02
    ld c, $15                                     ; $4765: $0e $15
    dec [hl]                                      ; $4767: $35
    ld b, d                                       ; $4768: $42
    ld b, $00                                     ; $4769: $06 $00
    dec sp                                        ; $476b: $3b
    ld a, [hl-]                                   ; $476c: $3a
    rst $08                                       ; $476d: $cf
    db $10                                        ; $476e: $10
    rra                                           ; $476f: $1f
    ld d, a                                       ; $4770: $57
    ld h, $00                                     ; $4771: $26 $00
    dec de                                        ; $4773: $1b
    ld [hl-], a                                   ; $4774: $32
    rra                                           ; $4775: $1f
    ld d, a                                       ; $4776: $57
    ret nc                                        ; $4777: $d0

    inc b                                         ; $4778: $04

Jump_0d4_4779:
    inc h                                         ; $4779: $24
    nop                                           ; $477a: $00
    xor c                                         ; $477b: $a9
    ld [hl+], a                                   ; $477c: $22
    halt                                          ; $477d: $76
    ld de, $26de                                  ; $477e: $11 $de $26
    ld [bc], a                                    ; $4781: $02
    nop                                           ; $4782: $00
    ld e, l                                       ; $4783: $5d
    ld [bc], a                                    ; $4784: $02
    jr c, jr_0d4_47c5                             ; $4785: $38 $3e

    ld a, [de]                                    ; $4787: $1a
    ld e, a                                       ; $4788: $5f
    ld c, b                                       ; $4789: $48
    nop                                           ; $478a: $00
    dec sp                                        ; $478b: $3b
    ld a, [hl-]                                   ; $478c: $3a
    or b                                          ; $478d: $b0
    db $10                                        ; $478e: $10
    rra                                           ; $478f: $1f
    ld d, a                                       ; $4790: $57
    ld b, a                                       ; $4791: $47
    nop                                           ; $4792: $00
    cp d                                          ; $4793: $ba
    dec d                                         ; $4794: $15
    ld e, h                                       ; $4795: $5c
    ld a, [hl-]                                   ; $4796: $3a
    adc $04                                       ; $4797: $ce $04
    ld b, [hl]                                    ; $4799: $46
    nop                                           ; $479a: $00
    xor c                                         ; $479b: $a9
    ld a, [hl+]                                   ; $479c: $2a
    halt                                          ; $479d: $76
    ld de, $035f                                  ; $479e: $11 $5f $03
    ld bc, $5d00                                  ; $47a1: $01 $00 $5d
    ld [bc], a                                    ; $47a4: $02
    scf                                           ; $47a5: $37
    ld b, d                                       ; $47a6: $42
    dec de                                        ; $47a7: $1b
    ld e, e                                       ; $47a8: $5b
    ld c, b                                       ; $47a9: $48
    nop                                           ; $47aa: $00
    add hl, sp                                    ; $47ab: $39
    ld a, [hl-]                                   ; $47ac: $3a
    rra                                           ; $47ad: $1f
    ld d, a                                       ; $47ae: $57
    ld c, $15                                     ; $47af: $0e $15
    ld h, $00                                     ; $47b1: $26 $00
    sbc b                                         ; $47b3: $98
    dec d                                         ; $47b4: $15
    xor [hl]                                      ; $47b5: $ae
    inc b                                         ; $47b6: $04
    sbc e                                         ; $47b7: $9b
    ld a, $46                                     ; $47b8: $3e $46
    nop                                           ; $47ba: $00
    db $eb                                        ; $47bb: $eb
    ld h, $5a                                     ; $47bc: $26 $5a
    ld [hl-], a                                   ; $47be: $32
    ld e, a                                       ; $47bf: $5f
    inc bc                                        ; $47c0: $03
    ld bc, $d700                                  ; $47c1: $01 $00 $d7
    ld e, d                                       ; $47c4: $5a

jr_0d4_47c5:
    ld e, l                                       ; $47c5: $5d
    ld [bc], a                                    ; $47c6: $02
    add hl, bc                                    ; $47c7: $09
    ld hl, $0023                                  ; $47c8: $21 $23 $00
    dec sp                                        ; $47cb: $3b
    ld a, [hl-]                                   ; $47cc: $3a
    inc c                                         ; $47cd: $0c
    add hl, de                                    ; $47ce: $19
    dec de                                        ; $47cf: $1b
    ld e, e                                       ; $47d0: $5b
    inc h                                         ; $47d1: $24
    nop                                           ; $47d2: $00
    db $ec                                        ; $47d3: $ec
    ld a, [hl+]                                   ; $47d4: $2a
    sbc b                                         ; $47d5: $98
    add hl, de                                    ; $47d6: $19
    ld [hl], h                                    ; $47d7: $74
    ld c, [hl]                                    ; $47d8: $4e
    adc e                                         ; $47d9: $8b
    nop                                           ; $47da: $00
    db $ec                                        ; $47db: $ec
    ld a, [hl+]                                   ; $47dc: $2a
    ld sp, hl                                     ; $47dd: $f9
    dec h                                         ; $47de: $25
    ld e, a                                       ; $47df: $5f
    inc bc                                        ; $47e0: $03
    ld [bc], a                                    ; $47e1: $02
    nop                                           ; $47e2: $00
    ld e, e                                       ; $47e3: $5b
    ld bc, $035f                                  ; $47e4: $01 $5f $03
    ld e, a                                       ; $47e7: $5f
    inc bc                                        ; $47e8: $03
    ld e, e                                       ; $47e9: $5b
    ld bc, $035f                                  ; $47ea: $01 $5f $03
    ld e, a                                       ; $47ed: $5f
    inc bc                                        ; $47ee: $03
    ld e, a                                       ; $47ef: $5f
    inc bc                                        ; $47f0: $03
    ld e, e                                       ; $47f1: $5b
    ld bc, $035f                                  ; $47f2: $01 $5f $03
    ld e, a                                       ; $47f5: $5f
    inc bc                                        ; $47f6: $03
    ld e, a                                       ; $47f7: $5f
    inc bc                                        ; $47f8: $03
    ld [bc], a                                    ; $47f9: $02
    nop                                           ; $47fa: $00
    ld e, e                                       ; $47fb: $5b
    ld bc, $035f                                  ; $47fc: $01 $5f $03
    ld e, a                                       ; $47ff: $5f
    inc bc                                        ; $4800: $03
    ld [bc], a                                    ; $4801: $02
    nop                                           ; $4802: $00
    ld e, e                                       ; $4803: $5b
    ld bc, $171b                                  ; $4804: $01 $1b $17
    ld e, a                                       ; $4807: $5f
    inc bc                                        ; $4808: $03
    nop                                           ; $4809: $00
    nop                                           ; $480a: $00
    ld e, [hl]                                    ; $480b: $5e
    inc bc                                        ; $480c: $03
    ld d, b                                       ; $480d: $50
    ld b, h                                       ; $480e: $44
    or l                                          ; $480f: $b5
    ld d, h                                       ; $4810: $54
    nop                                           ; $4811: $00
    nop                                           ; $4812: $00
    ld a, $07                                     ; $4813: $3e $07
    or l                                          ; $4815: $b5
    ld d, h                                       ; $4816: $54
    ld a, [bc]                                    ; $4817: $0a
    inc l                                         ; $4818: $2c
    ld [bc], a                                    ; $4819: $02
    nop                                           ; $481a: $00
    dec de                                        ; $481b: $1b
    rla                                           ; $481c: $17
    call $5f34                                    ; $481d: $cd $34 $5f
    inc bc                                        ; $4820: $03
    ld bc, $b500                                  ; $4821: $01 $00 $b5
    ld d, h                                       ; $4824: $54
    ld a, h                                       ; $4825: $7c
    ld b, $0a                                     ; $4826: $06 $0a
    inc l                                         ; $4828: $2c
    nop                                           ; $4829: $00
    nop                                           ; $482a: $00
    or l                                          ; $482b: $b5
    ld d, h                                       ; $482c: $54
    ld b, $18                                     ; $482d: $06 $18
    ld [bc], a                                    ; $482f: $02
    ld [$0000], sp                                ; $4830: $08 $00 $00
    xor h                                         ; $4833: $ac
    jr nc, jr_0d4_483a                            ; $4834: $30 $04

    db $10                                        ; $4836: $10
    ret nc                                        ; $4837: $d0

    ld b, b                                       ; $4838: $40
    ld [bc], a                                    ; $4839: $02

jr_0d4_483a:
    nop                                           ; $483a: $00
    inc e                                         ; $483b: $1c
    rrca                                          ; $483c: $0f
    adc h                                         ; $483d: $8c
    inc [hl]                                      ; $483e: $34
    ld [hl], c                                    ; $483f: $71
    ld c, b                                       ; $4840: $48
    ld bc, $8f00                                  ; $4841: $01 $00 $8f
    ld b, b                                       ; $4844: $40
    ld e, e                                       ; $4845: $5b
    ld bc, $035f                                  ; $4846: $01 $5f $03
    nop                                           ; $4849: $00
    nop                                           ; $484a: $00
    ld d, b                                       ; $484b: $50
    ld b, h                                       ; $484c: $44
    or l                                          ; $484d: $b5
    ld d, h                                       ; $484e: $54
    ld [bc], a                                    ; $484f: $02
    ld [$0000], sp                                ; $4850: $08 $00 $00
    or l                                          ; $4853: $b5
    ld d, h                                       ; $4854: $54
    inc h                                         ; $4855: $24
    db $10                                        ; $4856: $10
    dec b                                         ; $4857: $05
    inc d                                         ; $4858: $14
    jr nz, jr_0d4_485b                            ; $4859: $20 $00

jr_0d4_485b:
    dec a                                         ; $485b: $3d
    rlca                                          ; $485c: $07
    ld a, [bc]                                    ; $485d: $0a
    inc l                                         ; $485e: $2c
    adc l                                         ; $485f: $8d
    inc [hl]                                      ; $4860: $34
    ld bc, $9400                                  ; $4861: $01 $00 $94
    ld d, h                                       ; $4864: $54
    ld e, l                                       ; $4865: $5d
    ld [bc], a                                    ; $4866: $02
    ld b, a                                       ; $4867: $47
    jr nz, jr_0d4_486a                            ; $4868: $20 $00

jr_0d4_486a:
    nop                                           ; $486a: $00
    sub e                                         ; $486b: $93
    ld d, b                                       ; $486c: $50
    and [hl]                                      ; $486d: $a6
    jr jr_0d4_4878                                ; $486e: $18 $08

    inc l                                         ; $4870: $2c
    nop                                           ; $4871: $00
    nop                                           ; $4872: $00
    adc [hl]                                      ; $4873: $8e
    jr c, @+$07                                   ; $4874: $38 $05

    inc d                                         ; $4876: $14
    or l                                          ; $4877: $b5

jr_0d4_4878:
    ld d, h                                       ; $4878: $54
    ld bc, $3d00                                  ; $4879: $01 $00 $3d
    rlca                                          ; $487c: $07
    ld c, d                                       ; $487d: $4a
    inc l                                         ; $487e: $2c
    or l                                          ; $487f: $b5
    ld d, h                                       ; $4880: $54
    ld bc, $d400                                  ; $4881: $01 $00 $d4
    ld d, b                                       ; $4884: $50
    ld e, e                                       ; $4885: $5b
    ld bc, $035f                                  ; $4886: $01 $5f $03

jr_0d4_4889:
    ld b, d                                       ; $4889: $42
    ld [$5cf6], sp                                ; $488a: $08 $f6 $5c
    ld c, b                                       ; $488d: $48
    inc l                                         ; $488e: $2c
    call nc, $0131                                ; $488f: $d4 $31 $01
    ld [$3c2e], sp                                ; $4892: $08 $2e $3c
    ld hl, sp+$31                                 ; $4895: $f8 $31
    jr jr_0d4_48fd                                ; $4897: $18 $64

    ld [hl+], a                                   ; $4899: $22
    ld [$035f], sp                                ; $489a: $08 $5f $03
    dec hl                                        ; $489d: $2b
    inc l                                         ; $489e: $2c
    sub l                                         ; $489f: $95
    ld d, h                                       ; $48a0: $54
    ld [bc], a                                    ; $48a1: $02
    nop                                           ; $48a2: $00
    di                                            ; $48a3: $f3
    ld c, h                                       ; $48a4: $4c
    ld e, e                                       ; $48a5: $5b
    ld bc, $035f                                  ; $48a6: $01 $5f $03
    nop                                           ; $48a9: $00
    nop                                           ; $48aa: $00
    ld [hl], d                                    ; $48ab: $72
    ld c, h                                       ; $48ac: $4c
    ld hl, sp+$31                                 ; $48ad: $f8 $31
    rlca                                          ; $48af: $07
    jr z, jr_0d4_48d2                             ; $48b0: $28 $20

    ld [$312e], sp                                ; $48b2: $08 $2e $31
    ld hl, sp+$31                                 ; $48b5: $f8 $31
    ld [hl], c                                    ; $48b7: $71
    ld c, b                                       ; $48b8: $48
    ld b, c                                       ; $48b9: $41
    inc b                                         ; $48ba: $04
    ld e, a                                       ; $48bb: $5f
    inc bc                                        ; $48bc: $03
    ld a, [hl+]                                   ; $48bd: $2a
    inc l                                         ; $48be: $2c
    ld d, l                                       ; $48bf: $55
    ld d, h                                       ; $48c0: $54
    ld [bc], a                                    ; $48c1: $02
    nop                                           ; $48c2: $00
    ld e, l                                       ; $48c3: $5d
    ld [bc], a                                    ; $48c4: $02
    sub a                                         ; $48c5: $97
    add hl, sp                                    ; $48c6: $39
    db $fd                                        ; $48c7: $fd
    ld d, d                                       ; $48c8: $52
    nop                                           ; $48c9: $00
    nop                                           ; $48ca: $00
    ld hl, sp+$31                                 ; $48cb: $f8 $31

jr_0d4_48cd:
    add hl, bc                                    ; $48cd: $09
    jr z, jr_0d4_48cd                             ; $48ce: $28 $fd

    ld d, d                                       ; $48d0: $52
    add hl, bc                                    ; $48d1: $09

jr_0d4_48d2:
    jr z, jr_0d4_4889                             ; $48d2: $28 $b5

    ld d, h                                       ; $48d4: $54
    ld hl, sp+$31                                 ; $48d5: $f8 $31
    db $fd                                        ; $48d7: $fd
    ld d, d                                       ; $48d8: $52
    ld [bc], a                                    ; $48d9: $02
    inc b                                         ; $48da: $04
    ld a, [$0c0e]                                 ; $48db: $fa $0e $0c
    inc [hl]                                      ; $48de: $34
    ld d, e                                       ; $48df: $53
    ld c, h                                       ; $48e0: $4c
    ld bc, $5d00                                  ; $48e1: $01 $00 $5d
    ld [bc], a                                    ; $48e4: $02
    add hl, de                                    ; $48e5: $19
    ld b, [hl]                                    ; $48e6: $46
    add hl, bc                                    ; $48e7: $09
    jr nc, jr_0d4_490c                            ; $48e8: $30 $22

    ld [$3a39], sp                                ; $48ea: $08 $39 $3a
    ld h, b                                       ; $48ed: $60
    ld [bc], a                                    ; $48ee: $02
    rst $38                                       ; $48ef: $ff
    ld a, a                                       ; $48f0: $7f
    nop                                           ; $48f1: $00
    nop                                           ; $48f2: $00
    dec e                                         ; $48f3: $1d
    ld d, a                                       ; $48f4: $57
    ld h, b                                       ; $48f5: $60
    ld [bc], a                                    ; $48f6: $02
    dec l                                         ; $48f7: $2d
    ld hl, $0401                                  ; $48f8: $21 $01 $04
    or l                                          ; $48fb: $b5
    ld a, [de]                                    ; $48fc: $1a

jr_0d4_48fd:
    dec l                                         ; $48fd: $2d
    jr c, @+$61                                   ; $48fe: $38 $5f

    inc bc                                        ; $4900: $03
    ld bc, $9300                                  ; $4901: $01 $00 $93
    ld d, b                                       ; $4904: $50
    ld e, l                                       ; $4905: $5d
    ld [bc], a                                    ; $4906: $02
    sub e                                         ; $4907: $93
    dec h                                         ; $4908: $25
    ld [bc], a                                    ; $4909: $02
    inc c                                         ; $490a: $0c
    db $fd                                        ; $490b: $fd

jr_0d4_490c:
    ld d, d                                       ; $490c: $52
    dec l                                         ; $490d: $2d
    ld hl, $2c0a                                  ; $490e: $21 $0a $2c
    nop                                           ; $4911: $00
    nop                                           ; $4912: $00
    db $fd                                        ; $4913: $fd
    ld d, d                                       ; $4914: $52
    add $11                                       ; $4915: $c6 $11
    rst $38                                       ; $4917: $ff
    ld a, a                                       ; $4918: $7f
    ld bc, $9400                                  ; $4919: $01 $00 $94
    ld a, [de]                                    ; $491c: $1a
    ld a, [bc]                                    ; $491d: $0a
    inc l                                         ; $491e: $2c
    ld e, a                                       ; $491f: $5f
    inc bc                                        ; $4920: $03
    ld bc, $2c00                                  ; $4921: $01 $00 $2c
    ld sp, $025d                                  ; $4924: $31 $5d $02
    ld a, [bc]                                    ; $4927: $0a
    inc l                                         ; $4928: $2c
    ld a, [bc]                                    ; $4929: $0a
    inc l                                         ; $492a: $2c
    db $fd                                        ; $492b: $fd
    ld d, d                                       ; $492c: $52
    ld l, $1d                                     ; $492d: $2e $1d
    ld a, [bc]                                    ; $492f: $0a
    inc l                                         ; $4930: $2c
    ld [bc], a                                    ; $4931: $02
    inc b                                         ; $4932: $04
    ld hl, sp+$31                                 ; $4933: $f8 $31
    ld l, $19                                     ; $4935: $2e $19
    db $fd                                        ; $4937: $fd
    ld d, d                                       ; $4938: $52
    ld bc, $9300                                  ; $4939: $01 $00 $93
    ld a, [de]                                    ; $493c: $1a
    ld l, $3c                                     ; $493d: $2e $3c
    ld e, a                                       ; $493f: $5f
    inc bc                                        ; $4940: $03
    ld bc, $3000                                  ; $4941: $01 $00 $30
    dec l                                         ; $4944: $2d
    ld e, l                                       ; $4945: $5d
    ld [bc], a                                    ; $4946: $02
    ld h, a                                       ; $4947: $67
    inc e                                         ; $4948: $1c
    ld hl, $f800                                  ; $4949: $21 $00 $f8
    ld sp, $52fd                                  ; $494c: $31 $fd $52
    jp hl                                         ; $494f: $e9


    jr jr_0d4_4952                                ; $4950: $18 $00

jr_0d4_4952:
    nop                                           ; $4952: $00
    sub [hl]                                      ; $4953: $96
    dec [hl]                                      ; $4954: $35
    db $fd                                        ; $4955: $fd
    ld d, d                                       ; $4956: $52
    ret                                           ; $4957: $c9


    inc d                                         ; $4958: $14
    ld bc, $7200                                  ; $4959: $01 $00 $72
    ld a, [de]                                    ; $495c: $1a
    xor [hl]                                      ; $495d: $ae
    jr c, jr_0d4_49bf                             ; $495e: $38 $5f

    inc bc                                        ; $4960: $03
    ld bc, $f000                                  ; $4961: $01 $00 $f0
    jr nc, @+$5f                                  ; $4964: $30 $5d

    ld [bc], a                                    ; $4966: $02
    jr z, @+$26                                   ; $4967: $28 $24

    ld hl, $f800                                  ; $4969: $21 $00 $f8
    ld sp, $20cb                                  ; $496c: $31 $cb $20
    db $fd                                        ; $496f: $fd
    ld d, d                                       ; $4970: $52
    nop                                           ; $4971: $00
    nop                                           ; $4972: $00
    ld d, b                                       ; $4973: $50
    ld b, h                                       ; $4974: $44
    ret                                           ; $4975: $c9


    jr jr_0d4_4991                                ; $4976: $18 $19

    ld [hl], $01                                  ; $4978: $36 $01
    inc b                                         ; $497a: $04
    ld [hl], c                                    ; $497b: $71
    ld a, [de]                                    ; $497c: $1a
    ld e, a                                       ; $497d: $5f
    inc bc                                        ; $497e: $03
    dec bc                                        ; $497f: $0b
    inc l                                         ; $4980: $2c
    ld bc, $5b00                                  ; $4981: $01 $00 $5b
    ld bc, $2528                                  ; $4984: $01 $28 $25
    ld e, a                                       ; $4987: $5f
    inc bc                                        ; $4988: $03
    ld hl, $f800                                  ; $4989: $21 $00 $f8
    ld sp, $248a                                  ; $498c: $31 $8a $24
    db $fd                                        ; $498f: $fd
    ld d, d                                       ; $4990: $52

jr_0d4_4991:
    nop                                           ; $4991: $00
    nop                                           ; $4992: $00
    ld d, b                                       ; $4993: $50
    ld b, h                                       ; $4994: $44
    xor a                                         ; $4995: $af
    add hl, de                                    ; $4996: $19
    ld hl, sp+$31                                 ; $4997: $f8 $31
    nop                                           ; $4999: $00
    nop                                           ; $499a: $00
    ld d, b                                       ; $499b: $50
    ld a, [de]                                    ; $499c: $1a
    dec l                                         ; $499d: $2d
    jr c, jr_0d4_49ff                             ; $499e: $38 $5f

    inc bc                                        ; $49a0: $03
    ld bc, $3700                                  ; $49a1: $01 $00 $37

jr_0d4_49a4:
    dec d                                         ; $49a4: $15
    jr z, jr_0d4_49d7                             ; $49a5: $28 $30

    ld e, a                                       ; $49a7: $5f
    inc bc                                        ; $49a8: $03
    inc bc                                        ; $49a9: $03
    jr jr_0d4_49a4                                ; $49aa: $18 $f8

    ld sp, $52fd                                  ; $49ac: $31 $fd $52
    ld l, $1d                                     ; $49af: $2e $1d
    nop                                           ; $49b1: $00
    nop                                           ; $49b2: $00
    adc l                                         ; $49b3: $8d
    inc a                                         ; $49b4: $3c
    ld c, a                                       ; $49b5: $4f
    ld a, [de]                                    ; $49b6: $1a
    add hl, de                                    ; $49b7: $19
    ld h, e                                       ; $49b8: $63
    nop                                           ; $49b9: $00
    nop                                           ; $49ba: $00
    ld c, a                                       ; $49bb: $4f
    ld a, [de]                                    ; $49bc: $1a
    ld l, l                                       ; $49bd: $6d
    inc [hl]                                      ; $49be: $34

jr_0d4_49bf:
    ld e, a                                       ; $49bf: $5f
    inc bc                                        ; $49c0: $03
    ld bc, $7100                                  ; $49c1: $01 $00 $71
    ld c, d                                       ; $49c4: $4a
    ld e, l                                       ; $49c5: $5d
    ld [bc], a                                    ; $49c6: $02
    daa                                           ; $49c7: $27
    add hl, hl                                    ; $49c8: $29
    nop                                           ; $49c9: $00
    nop                                           ; $49ca: $00
    rla                                           ; $49cb: $17
    ld [hl], $2b                                  ; $49cc: $36 $2b
    ld hl, $52fd                                  ; $49ce: $21 $fd $52
    nop                                           ; $49d1: $00
    nop                                           ; $49d2: $00
    inc c                                         ; $49d3: $0c
    inc [hl]                                      ; $49d4: $34
    ld c, a                                       ; $49d5: $4f
    ld a, [de]                                    ; $49d6: $1a

jr_0d4_49d7:
    ld [hl], d                                    ; $49d7: $72
    ld c, d                                       ; $49d8: $4a
    ld [bc], a                                    ; $49d9: $02
    nop                                           ; $49da: $00
    ld c, a                                       ; $49db: $4f
    ld a, [de]                                    ; $49dc: $1a
    ld e, a                                       ; $49dd: $5f
    inc bc                                        ; $49de: $03
    dec l                                         ; $49df: $2d
    jr c, jr_0d4_49e4                             ; $49e0: $38 $02

    nop                                           ; $49e2: $00
    ld e, e                                       ; $49e3: $5b

jr_0d4_49e4:
    ld bc, $035f                                  ; $49e4: $01 $5f $03
    dec l                                         ; $49e7: $2d
    jr c, jr_0d4_4a45                             ; $49e8: $38 $5b

    ld bc, $035f                                  ; $49ea: $01 $5f $03
    ld e, a                                       ; $49ed: $5f
    inc bc                                        ; $49ee: $03
    dec l                                         ; $49ef: $2d
    jr c, @+$5d                                   ; $49f0: $38 $5b

    ld bc, $035f                                  ; $49f2: $01 $5f $03
    ld e, a                                       ; $49f5: $5f
    inc bc                                        ; $49f6: $03
    dec l                                         ; $49f7: $2d
    jr c, jr_0d4_49fc                             ; $49f8: $38 $02

    nop                                           ; $49fa: $00
    ld e, e                                       ; $49fb: $5b

jr_0d4_49fc:
    ld bc, $035f                                  ; $49fc: $01 $5f $03

jr_0d4_49ff:
    dec l                                         ; $49ff: $2d
    jr c, jr_0d4_4a43                             ; $4a00: $38 $41

    ld d, d                                       ; $4a02: $52
    ld e, c                                       ; $4a03: $59
    add hl, bc                                    ; $4a04: $09
    ld [bc], a                                    ; $4a05: $02
    nop                                           ; $4a06: $00
    ld e, a                                       ; $4a07: $5f
    inc bc                                        ; $4a08: $03
    nop                                           ; $4a09: $00
    nop                                           ; $4a0a: $00
    ld a, [hl]                                    ; $4a0b: $7e
    ld l, $3a                                     ; $4a0c: $2e $3a
    dec d                                         ; $4a0e: $15
    ld e, a                                       ; $4a0f: $5f
    inc bc                                        ; $4a10: $03
    ld b, c                                       ; $4a11: $41
    ld d, d                                       ; $4a12: $52
    inc e                                         ; $4a13: $1c
    ld h, $5f                                     ; $4a14: $26 $5f
    inc bc                                        ; $4a16: $03
    adc b                                         ; $4a17: $88
    ld [$5241], sp                                ; $4a18: $08 $41 $52
    ld e, a                                       ; $4a1b: $5f
    inc bc                                        ; $4a1c: $03
    ld [bc], a                                    ; $4a1d: $02
    nop                                           ; $4a1e: $00
    adc b                                         ; $4a1f: $88
    ld [$0002], sp                                ; $4a20: $08 $02 $00
    ld b, c                                       ; $4a23: $41
    ld d, d                                       ; $4a24: $52
    ld d, $09                                     ; $4a25: $16 $09
    rst $38                                       ; $4a27: $ff
    ld c, $00                                     ; $4a28: $0e $00
    nop                                           ; $4a2a: $00
    jp c, $be1d                                   ; $4a2b: $da $1d $be

    ld b, d                                       ; $4a2e: $42
    rst $28                                       ; $4a2f: $ef
    ld [$0888], sp                                ; $4a30: $08 $88 $08
    ld a, $22                                     ; $4a33: $3e $22
    jr c, jr_0d4_4a4c                             ; $4a35: $38 $15

    cp a                                          ; $4a37: $bf
    ld [hl-], a                                   ; $4a38: $32
    ld b, c                                       ; $4a39: $41
    ld d, d                                       ; $4a3a: $52
    ld e, a                                       ; $4a3b: $5f
    inc bc                                        ; $4a3c: $03
    ld [bc], a                                    ; $4a3d: $02
    nop                                           ; $4a3e: $00
    adc b                                         ; $4a3f: $88
    ld [$0002], sp                                ; $4a40: $08 $02 $00

jr_0d4_4a43:
    rla                                           ; $4a43: $17
    dec c                                         ; $4a44: $0d

jr_0d4_4a45:
    rst $38                                       ; $4a45: $ff
    ld c, [hl]                                    ; $4a46: $4e
    ld e, a                                       ; $4a47: $5f
    inc bc                                        ; $4a48: $03
    nop                                           ; $4a49: $00
    nop                                           ; $4a4a: $00
    ld a, a                                       ; $4a4b: $7f

jr_0d4_4a4c:
    ld [hl], $3a                                  ; $4a4c: $36 $3a
    dec d                                         ; $4a4e: $15
    rst $28                                       ; $4a4f: $ef
    ld [$08ef], sp                                ; $4a50: $08 $ef $08
    ccf                                           ; $4a53: $3f
    ld [hl+], a                                   ; $4a54: $22
    jr c, jr_0d4_4a6c                             ; $4a55: $38 $15

    cp a                                          ; $4a57: $bf
    ld [hl], $21                                  ; $4a58: $36 $21
    ld d, d                                       ; $4a5a: $52
    ld b, l                                       ; $4a5b: $45
    inc b                                         ; $4a5c: $04
    ld d, [hl]                                    ; $4a5d: $56
    dec d                                         ; $4a5e: $15
    ld e, a                                       ; $4a5f: $5f
    inc bc                                        ; $4a60: $03
    ld [bc], a                                    ; $4a61: $02
    nop                                           ; $4a62: $00
    ld e, d                                       ; $4a63: $5a
    dec c                                         ; $4a64: $0d
    rst $18                                       ; $4a65: $df
    ld h, $ef                                     ; $4a66: $26 $ef
    ld [$0822], sp                                ; $4a68: $08 $22 $08
    db $dd                                        ; $4a6b: $dd

jr_0d4_4a6c:
    ld hl, $08f0                                  ; $4a6c: $21 $f0 $08
    ld a, d                                       ; $4a6f: $7a
    ld b, [hl]                                    ; $4a70: $46
    rst $28                                       ; $4a71: $ef
    ld [$2a7f], sp                                ; $4a72: $08 $7f $2a
    add hl, sp                                    ; $4a75: $39
    dec d                                         ; $4a76: $15
    rst $38                                       ; $4a77: $ff
    ld c, [hl]                                    ; $4a78: $4e
    ld bc, $994e                                  ; $4a79: $01 $4e $99
    add hl, de                                    ; $4a7c: $19
    ld h, a                                       ; $4a7d: $67
    inc b                                         ; $4a7e: $04
    ld e, a                                       ; $4a7f: $5f
    inc bc                                        ; $4a80: $03
    ld [bc], a                                    ; $4a81: $02
    nop                                           ; $4a82: $00
    dec [hl]                                      ; $4a83: $35
    add hl, bc                                    ; $4a84: $09
    dec a                                         ; $4a85: $3d
    ld l, $5f                                     ; $4a86: $2e $5f
    inc bc                                        ; $4a88: $03
    add a                                         ; $4a89: $87
    ld [$4258], sp                                ; $4a8a: $08 $58 $42
    db $fd                                        ; $4a8d: $fd
    ld d, [hl]                                    ; $4a8e: $56
    ld e, a                                       ; $4a8f: $5f
    inc bc                                        ; $4a90: $03
    adc $08                                       ; $4a91: $ce $08
    jr c, jr_0d4_4aaa                             ; $4a93: $38 $15

    ld a, a                                       ; $4a95: $7f
    ld l, $51                                     ; $4a96: $2e $51
    add hl, de                                    ; $4a98: $19
    pop hl                                        ; $4a99: $e1
    ld c, l                                       ; $4a9a: $4d
    ld e, c                                       ; $4a9b: $59
    add hl, de                                    ; $4a9c: $19
    ld b, l                                       ; $4a9d: $45
    inc b                                         ; $4a9e: $04
    ld e, a                                       ; $4a9f: $5f
    inc bc                                        ; $4aa0: $03
    pop bc                                        ; $4aa1: $c1
    ld c, c                                       ; $4aa2: $49
    dec d                                         ; $4aa3: $15
    add hl, bc                                    ; $4aa4: $09
    cp l                                          ; $4aa5: $bd
    ld a, [de]                                    ; $4aa6: $1a
    ld [bc], a                                    ; $4aa7: $02
    nop                                           ; $4aa8: $00
    add a                                         ; $4aa9: $87

jr_0d4_4aaa:
    ld [$4258], sp                                ; $4aaa: $08 $58 $42
    rst $38                                       ; $4aad: $ff
    ld a, a                                       ; $4aae: $7f
    db $fd                                        ; $4aaf: $fd
    ld d, [hl]                                    ; $4ab0: $56
    add a                                         ; $4ab1: $87
    ld [$153a], sp                                ; $4ab2: $08 $3a $15
    ld a, [hl-]                                   ; $4ab5: $3a
    ld [hl], $ef                                  ; $4ab6: $36 $ef
    ld [$49c1], sp                                ; $4ab8: $08 $c1 $49
    dec de                                        ; $4abb: $1b
    ld a, [bc]                                    ; $4abc: $0a
    sbc b                                         ; $4abd: $98
    ld c, [hl]                                    ; $4abe: $4e
    ld h, a                                       ; $4abf: $67
    inc b                                         ; $4ac0: $04
    and c                                         ; $4ac1: $a1
    ld c, c                                       ; $4ac2: $49
    ld e, l                                       ; $4ac3: $5d
    ld [bc], a                                    ; $4ac4: $02
    ei                                            ; $4ac5: $fb
    ld d, [hl]                                    ; $4ac6: $56
    ld [bc], a                                    ; $4ac7: $02
    nop                                           ; $4ac8: $00
    ld h, b                                       ; $4ac9: $60
    jr nc, jr_0d4_4b45                            ; $4aca: $30 $79

    ld b, [hl]                                    ; $4acc: $46
    rst $18                                       ; $4acd: $df
    ld [hl], a                                    ; $4ace: $77
    ld bc, $107d                                  ; $4acf: $01 $7d $10
    dec c                                         ; $4ad2: $0d
    ld e, b                                       ; $4ad3: $58
    ld b, d                                       ; $4ad4: $42
    rst $38                                       ; $4ad5: $ff
    ld a, a                                       ; $4ad6: $7f
    db $fd                                        ; $4ad7: $fd
    ld d, [hl]                                    ; $4ad8: $56
    inc hl                                        ; $4ad9: $23
    nop                                           ; $4ada: $00
    ld e, a                                       ; $4adb: $5f
    inc sp                                        ; $4adc: $33
    add c                                         ; $4add: $81
    ld c, c                                       ; $4ade: $49
    ld sp, $6015                                  ; $4adf: $31 $15 $60
    ld c, c                                       ; $4ae2: $49
    ld e, l                                       ; $4ae3: $5d
    ld [bc], a                                    ; $4ae4: $02
    db $fc                                        ; $4ae5: $fc
    ld e, d                                       ; $4ae6: $5a
    ld [bc], a                                    ; $4ae7: $02
    nop                                           ; $4ae8: $00
    ld b, e                                       ; $4ae9: $43
    inc b                                         ; $4aea: $04
    jr c, jr_0d4_4b27                             ; $4aeb: $38 $3a

    ld e, $5b                                     ; $4aed: $1e $5b
    add c                                         ; $4aef: $81
    ld b, h                                       ; $4af0: $44
    scf                                           ; $4af1: $37
    dec d                                         ; $4af2: $15
    db $fd                                        ; $4af3: $fd
    ld d, [hl]                                    ; $4af4: $56
    jr c, jr_0d4_4b31                             ; $4af5: $38 $3a

    ccf                                           ; $4af7: $3f
    ld a, [hl+]                                   ; $4af8: $2a
    inc hl                                        ; $4af9: $23
    inc b                                         ; $4afa: $04
    ld e, a                                       ; $4afb: $5f
    inc bc                                        ; $4afc: $03
    ld b, d                                       ; $4afd: $42
    ld b, c                                       ; $4afe: $41
    sbc d                                         ; $4aff: $9a
    ld c, d                                       ; $4b00: $4a
    ld b, b                                       ; $4b01: $40
    ld b, l                                       ; $4b02: $45
    ld a, [de]                                    ; $4b03: $1a
    ld a, [bc]                                    ; $4b04: $0a
    cp e                                          ; $4b05: $bb
    ld d, d                                       ; $4b06: $52
    ld [bc], a                                    ; $4b07: $02
    nop                                           ; $4b08: $00
    add a                                         ; $4b09: $87
    inc c                                         ; $4b0a: $0c
    ld e, b                                       ; $4b0b: $58
    ld b, d                                       ; $4b0c: $42
    ld a, $5f                                     ; $4b0d: $3e $5f
    sbc a                                         ; $4b0f: $9f
    ld l, a                                       ; $4b10: $6f
    rl b                                          ; $4b11: $cb $10
    ld e, c                                       ; $4b13: $59
    ld a, $fd                                     ; $4b14: $3e $fd
    ld d, [hl]                                    ; $4b16: $56
    ld a, a                                       ; $4b17: $7f
    ld l, e                                       ; $4b18: $6b
    jr nz, jr_0d4_4b60                            ; $4b19: $20 $45

    db $db                                        ; $4b1b: $db
    dec h                                         ; $4b1c: $25
    ld h, a                                       ; $4b1d: $67
    ld [$035f], sp                                ; $4b1e: $08 $5f $03
    ld [bc], a                                    ; $4b21: $02
    nop                                           ; $4b22: $00
    ld a, [hl-]                                   ; $4b23: $3a
    add hl, bc                                    ; $4b24: $09
    sbc $22                                       ; $4b25: $de $22

jr_0d4_4b27:
    and a                                         ; $4b27: $a7
    inc d                                         ; $4b28: $14
    ld e, a                                       ; $4b29: $5f
    ld h, e                                       ; $4b2a: $63
    sbc a                                         ; $4b2b: $9f
    ld l, a                                       ; $4b2c: $6f
    sbc $22                                       ; $4b2d: $de $22
    and a                                         ; $4b2f: $a7
    inc d                                         ; $4b30: $14

jr_0d4_4b31:
    rl b                                          ; $4b31: $cb $10
    ld e, b                                       ; $4b33: $58
    ld b, d                                       ; $4b34: $42
    db $fd                                        ; $4b35: $fd
    ld d, [hl]                                    ; $4b36: $56
    ld e, a                                       ; $4b37: $5f
    ld h, e                                       ; $4b38: $63
    ldh [rLCDC], a                                ; $4b39: $e0 $40
    ld d, a                                       ; $4b3b: $57
    dec d                                         ; $4b3c: $15
    cp a                                          ; $4b3d: $bf
    ld [de], a                                    ; $4b3e: $12
    ld b, [hl]                                    ; $4b3f: $46
    inc b                                         ; $4b40: $04
    ld [bc], a                                    ; $4b41: $02
    nop                                           ; $4b42: $00
    add hl, sp                                    ; $4b43: $39
    dec c                                         ; $4b44: $0d

jr_0d4_4b45:
    rst $38                                       ; $4b45: $ff
    ld a, [de]                                    ; $4b46: $1a
    add a                                         ; $4b47: $87
    db $10                                        ; $4b48: $10
    rl b                                          ; $4b49: $cb $10
    ld e, b                                       ; $4b4b: $58
    ld b, d                                       ; $4b4c: $42
    db $fd                                        ; $4b4d: $fd
    ld d, [hl]                                    ; $4b4e: $56
    ld e, a                                       ; $4b4f: $5f
    ld h, e                                       ; $4b50: $63
    xor d                                         ; $4b51: $aa
    inc c                                         ; $4b52: $0c
    ld e, b                                       ; $4b53: $58
    ld b, d                                       ; $4b54: $42
    db $fd                                        ; $4b55: $fd
    ld d, [hl]                                    ; $4b56: $56
    ld e, a                                       ; $4b57: $5f
    ld h, e                                       ; $4b58: $63
    ret nz                                        ; $4b59: $c0

    ld b, b                                       ; $4b5a: $40
    ld [hl], l                                    ; $4b5b: $75
    dec d                                         ; $4b5c: $15
    ld h, a                                       ; $4b5d: $67
    inc b                                         ; $4b5e: $04
    rra                                           ; $4b5f: $1f

jr_0d4_4b60:
    inc de                                        ; $4b60: $13
    add b                                         ; $4b61: $80
    ld b, b                                       ; $4b62: $40
    ld e, e                                       ; $4b63: $5b
    ld bc, $0002                                  ; $4b64: $01 $02 $00
    ld e, a                                       ; $4b67: $5f
    inc bc                                        ; $4b68: $03
    xor c                                         ; $4b69: $a9
    inc c                                         ; $4b6a: $0c
    ld e, b                                       ; $4b6b: $58
    ld b, d                                       ; $4b6c: $42
    db $d3                                        ; $4b6d: $d3
    inc c                                         ; $4b6e: $0c
    ld e, a                                       ; $4b6f: $5f
    ld h, e                                       ; $4b70: $63
    jp z, $5810                                   ; $4b71: $ca $10 $58

    ld b, d                                       ; $4b74: $42
    db $fd                                        ; $4b75: $fd
    ld d, [hl]                                    ; $4b76: $56
    ld e, a                                       ; $4b77: $5f
    ld h, e                                       ; $4b78: $63
    nop                                           ; $4b79: $00
    nop                                           ; $4b7a: $00
    ld e, a                                       ; $4b7b: $5f
    inc bc                                        ; $4b7c: $03
    add b                                         ; $4b7d: $80
    ld b, b                                       ; $4b7e: $40
    ld [bc], a                                    ; $4b7f: $02
    nop                                           ; $4b80: $00
    ld h, b                                       ; $4b81: $60
    inc a                                         ; $4b82: $3c
    jr jr_0d4_4be8                                ; $4b83: $18 $63

    ld [bc], a                                    ; $4b85: $02
    nop                                           ; $4b86: $00
    ld e, l                                       ; $4b87: $5d
    ld [bc], a                                    ; $4b88: $02
    nop                                           ; $4b89: $00
    nop                                           ; $4b8a: $00
    ld d, l                                       ; $4b8b: $55
    ld b, [hl]                                    ; $4b8c: $46
    dec a                                         ; $4b8d: $3d
    ld h, e                                       ; $4b8e: $63
    jp z, $cb14                                   ; $4b8f: $ca $14 $cb

    db $10                                        ; $4b92: $10
    ld e, b                                       ; $4b93: $58
    ld b, d                                       ; $4b94: $42
    db $fd                                        ; $4b95: $fd
    ld d, [hl]                                    ; $4b96: $56
    ld e, a                                       ; $4b97: $5f
    ld h, e                                       ; $4b98: $63
    nop                                           ; $4b99: $00
    nop                                           ; $4b9a: $00
    ld [hl], h                                    ; $4b9b: $74
    ld c, [hl]                                    ; $4b9c: $4e
    ld e, a                                       ; $4b9d: $5f
    inc bc                                        ; $4b9e: $03
    ld h, b                                       ; $4b9f: $60
    inc a                                         ; $4ba0: $3c
    ld [bc], a                                    ; $4ba1: $02
    nop                                           ; $4ba2: $00
    or l                                          ; $4ba3: $b5
    ld d, [hl]                                    ; $4ba4: $56
    ld e, l                                       ; $4ba5: $5d
    ld [bc], a                                    ; $4ba6: $02
    ld h, c                                       ; $4ba7: $61
    inc [hl]                                      ; $4ba8: $34
    ld bc, $5800                                  ; $4ba9: $01 $00 $58
    ld b, d                                       ; $4bac: $42
    jp z, $3e14                                   ; $4bad: $ca $14 $3e

    ld e, a                                       ; $4bb0: $5f
    nop                                           ; $4bb1: $00
    nop                                           ; $4bb2: $00
    ld e, b                                       ; $4bb3: $58
    ld b, d                                       ; $4bb4: $42
    ccf                                           ; $4bb5: $3f
    ld e, a                                       ; $4bb6: $5f
    rl b                                          ; $4bb7: $cb $10
    nop                                           ; $4bb9: $00
    nop                                           ; $4bba: $00
    or l                                          ; $4bbb: $b5
    ld d, [hl]                                    ; $4bbc: $56
    ld e, a                                       ; $4bbd: $5f
    inc bc                                        ; $4bbe: $03
    add hl, bc                                    ; $4bbf: $09
    ld hl, $0002                                  ; $4bc0: $21 $02 $00
    or l                                          ; $4bc3: $b5
    ld d, [hl]                                    ; $4bc4: $56
    add e                                         ; $4bc5: $83
    jr nc, @+$5f                                  ; $4bc6: $30 $5d

    ld [bc], a                                    ; $4bc8: $02
    ld bc, $5800                                  ; $4bc9: $01 $00 $58
    ld b, d                                       ; $4bcc: $42
    ld a, $5f                                     ; $4bcd: $3e $5f
    add hl, bc                                    ; $4bcf: $09
    ld hl, $0000                                  ; $4bd0: $21 $00 $00
    ld d, a                                       ; $4bd3: $57
    ld b, d                                       ; $4bd4: $42
    jr @+$65                                      ; $4bd5: $18 $63

    ld e, $5b                                     ; $4bd7: $1e $5b
    ld bc, $9500                                  ; $4bd9: $01 $00 $95
    ld d, d                                       ; $4bdc: $52
    ld e, a                                       ; $4bdd: $5f
    inc bc                                        ; $4bde: $03
    add hl, bc                                    ; $4bdf: $09
    ld hl, $0002                                  ; $4be0: $21 $02 $00
    ld e, e                                       ; $4be3: $5b
    ld bc, $035f                                  ; $4be4: $01 $5f $03
    add hl, bc                                    ; $4be7: $09

jr_0d4_4be8:
    ld hl, $015b                                  ; $4be8: $21 $5b $01
    ld e, a                                       ; $4beb: $5f
    inc bc                                        ; $4bec: $03
    ld e, a                                       ; $4bed: $5f
    inc bc                                        ; $4bee: $03
    add hl, bc                                    ; $4bef: $09
    ld hl, $015b                                  ; $4bf0: $21 $5b $01
    ld e, a                                       ; $4bf3: $5f
    inc bc                                        ; $4bf4: $03
    ld e, a                                       ; $4bf5: $5f
    inc bc                                        ; $4bf6: $03
    add hl, bc                                    ; $4bf7: $09
    ld hl, $0002                                  ; $4bf8: $21 $02 $00
    ld e, e                                       ; $4bfb: $5b
    ld bc, $035f                                  ; $4bfc: $01 $5f $03
    add hl, bc                                    ; $4bff: $09
    ld hl, $0002                                  ; $4c00: $21 $02 $00
    rst $00                                       ; $4c03: $c7
    ld h, $5b                                     ; $4c04: $26 $5b
    ld bc, $035f                                  ; $4c06: $01 $5f $03
    rst $00                                       ; $4c09: $c7
    ld h, $9f                                     ; $4c0a: $26 $9f
    ld [hl-], a                                   ; $4c0c: $32
    ld [de], a                                    ; $4c0d: $12
    ld de, $035f                                  ; $4c0e: $11 $5f $03
    nop                                           ; $4c11: $00
    nop                                           ; $4c12: $00
    ld a, [hl]                                    ; $4c13: $7e
    ld l, $3a                                     ; $4c14: $2e $3a
    dec d                                         ; $4c16: $15
    ld e, a                                       ; $4c17: $5f
    inc bc                                        ; $4c18: $03
    inc h                                         ; $4c19: $24
    nop                                           ; $4c1a: $00
    ld e, b                                       ; $4c1b: $58
    dec d                                         ; $4c1c: $15
    rst $00                                       ; $4c1d: $c7
    ld h, $5f                                     ; $4c1e: $26 $5f
    inc bc                                        ; $4c20: $03
    ld [bc], a                                    ; $4c21: $02
    nop                                           ; $4c22: $00
    and a                                         ; $4c23: $a7
    ld h, $5b                                     ; $4c24: $26 $5b
    ld bc, $035f                                  ; $4c26: $01 $5f $03
    adc b                                         ; $4c29: $88
    ld [$223e], sp                                ; $4c2a: $08 $3e $22
    jr c, jr_0d4_4c44                             ; $4c2d: $38 $15

    cp a                                          ; $4c2f: $bf
    ld [hl-], a                                   ; $4c30: $32
    nop                                           ; $4c31: $00
    nop                                           ; $4c32: $00
    jp c, $be1d                                   ; $4c33: $da $1d $be

    ld b, d                                       ; $4c36: $42
    rst $28                                       ; $4c37: $ef
    ld [$0468], sp                                ; $4c38: $08 $68 $04
    ld e, e                                       ; $4c3b: $5b
    dec d                                         ; $4c3c: $15
    and a                                         ; $4c3d: $a7
    ld h, $5f                                     ; $4c3e: $26 $5f
    inc bc                                        ; $4c40: $03
    ld [bc], a                                    ; $4c41: $02
    nop                                           ; $4c42: $00
    and [hl]                                      ; $4c43: $a6

jr_0d4_4c44:
    ld [hl+], a                                   ; $4c44: $22
    ld e, b                                       ; $4c45: $58
    dec c                                         ; $4c46: $0d
    ld e, a                                       ; $4c47: $5f
    inc bc                                        ; $4c48: $03
    rst $28                                       ; $4c49: $ef
    ld [$223f], sp                                ; $4c4a: $08 $3f $22
    jr c, jr_0d4_4c64                             ; $4c4d: $38 $15

    cp a                                          ; $4c4f: $bf
    ld [hl], $00                                  ; $4c50: $36 $00
    nop                                           ; $4c52: $00
    ld a, a                                       ; $4c53: $7f
    ld [hl], $3a                                  ; $4c54: $36 $3a
    dec d                                         ; $4c56: $15
    rst $28                                       ; $4c57: $ef
    ld [$0468], sp                                ; $4c58: $08 $68 $04
    ld a, [hl-]                                   ; $4c5b: $3a
    dec d                                         ; $4c5c: $15
    rst $38                                       ; $4c5d: $ff
    ld c, [hl]                                    ; $4c5e: $4e
    ld e, a                                       ; $4c5f: $5f
    inc bc                                        ; $4c60: $03
    ld [bc], a                                    ; $4c61: $02
    nop                                           ; $4c62: $00
    add [hl]                                      ; $4c63: $86

jr_0d4_4c64:
    ld e, $7a                                     ; $4c64: $1e $7a
    ld de, $035f                                  ; $4c66: $11 $5f $03
    rst $28                                       ; $4c69: $ef
    ld [$2a7f], sp                                ; $4c6a: $08 $7f $2a
    add hl, sp                                    ; $4c6d: $39
    dec d                                         ; $4c6e: $15
    rst $38                                       ; $4c6f: $ff
    ld c, [hl]                                    ; $4c70: $4e
    ld [hl+], a                                   ; $4c71: $22
    ld [$21dd], sp                                ; $4c72: $08 $dd $21
    ldh a, [$08]                                  ; $4c75: $f0 $08
    ld a, d                                       ; $4c77: $7a
    ld b, [hl]                                    ; $4c78: $46
    adc c                                         ; $4c79: $89
    inc b                                         ; $4c7a: $04
    ld e, d                                       ; $4c7b: $5a
    dec d                                         ; $4c7c: $15
    sbc a                                         ; $4c7d: $9f
    ld [hl], $5f                                  ; $4c7e: $36 $5f
    inc bc                                        ; $4c80: $03
    ld [bc], a                                    ; $4c81: $02
    nop                                           ; $4c82: $00
    ld h, [hl]                                    ; $4c83: $66
    ld e, $59                                     ; $4c84: $1e $59
    dec d                                         ; $4c86: $15
    ld e, a                                       ; $4c87: $5f
    inc bc                                        ; $4c88: $03
    rst $28                                       ; $4c89: $ef
    ld [$2e5f], sp                                ; $4c8a: $08 $5f $2e
    ld e, b                                       ; $4c8d: $58
    dec d                                         ; $4c8e: $15
    cp h                                          ; $4c8f: $bc
    ld c, d                                       ; $4c90: $4a
    ld e, b                                       ; $4c91: $58
    ld b, d                                       ; $4c92: $42
    ld e, a                                       ; $4c93: $5f
    ld h, e                                       ; $4c94: $63
    ld e, b                                       ; $4c95: $58
    dec d                                         ; $4c96: $15
    cp h                                          ; $4c97: $bc
    ld c, d                                       ; $4c98: $4a
    ld [bc], a                                    ; $4c99: $02
    nop                                           ; $4c9a: $00
    ld a, b                                       ; $4c9b: $78
    dec d                                         ; $4c9c: $15
    cp a                                          ; $4c9d: $bf
    ld a, [de]                                    ; $4c9e: $1a
    rst $28                                       ; $4c9f: $ef
    ld [$0002], sp                                ; $4ca0: $08 $02 $00
    ld a, [hl+]                                   ; $4ca3: $2a
    ld h, $fc                                     ; $4ca4: $26 $fc
    ld d, [hl]                                    ; $4ca6: $56
    db $db                                        ; $4ca7: $db
    add hl, bc                                    ; $4ca8: $09
    xor d                                         ; $4ca9: $aa
    ld [$365c], sp                                ; $4caa: $08 $5c $36
    ld a, [hl-]                                   ; $4cad: $3a
    dec d                                         ; $4cae: $15
    rst $38                                       ; $4caf: $ff
    ld a, a                                       ; $4cb0: $7f
    add a                                         ; $4cb1: $87
    ld [$4258], sp                                ; $4cb2: $08 $58 $42
    ld e, a                                       ; $4cb5: $5f
    ld h, e                                       ; $4cb6: $63
    rst $38                                       ; $4cb7: $ff
    ld a, a                                       ; $4cb8: $7f
    ld b, l                                       ; $4cb9: $45
    inc b                                         ; $4cba: $04
    ld a, d                                       ; $4cbb: $7a
    add hl, de                                    ; $4cbc: $19
    dec l                                         ; $4cbd: $2d
    add hl, bc                                    ; $4cbe: $09
    ld e, a                                       ; $4cbf: $5f
    inc bc                                        ; $4cc0: $03
    ld [bc], a                                    ; $4cc1: $02
    nop                                           ; $4cc2: $00
    ret z                                         ; $4cc3: $c8

    dec d                                         ; $4cc4: $15
    inc e                                         ; $4cc5: $1c
    ld [bc], a                                    ; $4cc6: $02
    ld e, a                                       ; $4cc7: $5f
    ld h, e                                       ; $4cc8: $63
    db $ed                                        ; $4cc9: $ed
    inc c                                         ; $4cca: $0c
    db $fd                                        ; $4ccb: $fd
    dec e                                         ; $4ccc: $1d
    ld bc, $797d                                  ; $4ccd: $01 $7d $79
    ld b, d                                       ; $4cd0: $42
    add c                                         ; $4cd1: $81
    ld b, h                                       ; $4cd2: $44
    ld e, b                                       ; $4cd3: $58
    ld b, d                                       ; $4cd4: $42
    rst $18                                       ; $4cd5: $df
    ld [hl], a                                    ; $4cd6: $77
    ld bc, $677d                                  ; $4cd7: $01 $7d $67
    inc b                                         ; $4cda: $04
    ld e, a                                       ; $4cdb: $5f
    inc bc                                        ; $4cdc: $03
    inc e                                         ; $4cdd: $1c
    ld e, e                                       ; $4cde: $5b
    dec h                                         ; $4cdf: $25
    ld d, $02                                     ; $4ce0: $16 $02
    nop                                           ; $4ce2: $00
    and $15                                       ; $4ce3: $e6 $15
    ld e, l                                       ; $4ce5: $5d
    ld [bc], a                                    ; $4ce6: $02
    sbc d                                         ; $4ce7: $9a
    ld c, d                                       ; $4ce8: $4a
    scf                                           ; $4ce9: $37
    dec d                                         ; $4cea: $15
    ld e, a                                       ; $4ceb: $5f
    ld h, e                                       ; $4cec: $63
    jr c, @+$3c                                   ; $4ced: $38 $3a

    ccf                                           ; $4cef: $3f
    ld a, [hl+]                                   ; $4cf0: $2a
    ld b, e                                       ; $4cf1: $43
    inc b                                         ; $4cf2: $04
    jr c, jr_0d4_4d2f                             ; $4cf3: $38 $3a

    ld e, a                                       ; $4cf5: $5f
    ld h, e                                       ; $4cf6: $63
    add c                                         ; $4cf7: $81
    ld b, h                                       ; $4cf8: $44
    ld h, a                                       ; $4cf9: $67
    ld [$035f], sp                                ; $4cfa: $08 $5f $03
    inc e                                         ; $4cfd: $1c
    ld e, e                                       ; $4cfe: $5b
    dec b                                         ; $4cff: $05
    ld [de], a                                    ; $4d00: $12
    ld [bc], a                                    ; $4d01: $02
    nop                                           ; $4d02: $00
    ld a, [hl-]                                   ; $4d03: $3a
    add hl, bc                                    ; $4d04: $09
    daa                                           ; $4d05: $27
    dec c                                         ; $4d06: $0d
    cp l                                          ; $4d07: $bd
    ld e, $cb                                     ; $4d08: $1e $cb
    db $10                                        ; $4d0a: $10
    ld e, a                                       ; $4d0b: $5f
    ld h, e                                       ; $4d0c: $63
    ld e, b                                       ; $4d0d: $58
    ld b, d                                       ; $4d0e: $42
    cp a                                          ; $4d0f: $bf
    ld [hl-], a                                   ; $4d10: $32
    add a                                         ; $4d11: $87
    inc c                                         ; $4d12: $0c
    ld e, b                                       ; $4d13: $58
    ld b, d                                       ; $4d14: $42
    ld e, a                                       ; $4d15: $5f
    ld h, e                                       ; $4d16: $63
    cp a                                          ; $4d17: $bf
    ld [hl-], a                                   ; $4d18: $32
    ld h, a                                       ; $4d19: $67
    ld [$035f], sp                                ; $4d1a: $08 $5f $03
    db $db                                        ; $4d1d: $db
    ld d, d                                       ; $4d1e: $52
    rst $00                                       ; $4d1f: $c7
    dec d                                         ; $4d20: $15
    ld [bc], a                                    ; $4d21: $02
    nop                                           ; $4d22: $00
    ld e, b                                       ; $4d23: $58
    dec c                                         ; $4d24: $0d
    sbc a                                         ; $4d25: $9f
    ld [de], a                                    ; $4d26: $12
    rst $00                                       ; $4d27: $c7
    ld [$10cb], sp                                ; $4d28: $08 $cb $10
    ld e, b                                       ; $4d2b: $58
    ld b, d                                       ; $4d2c: $42

Jump_0d4_4d2d:
    ld e, a                                       ; $4d2d: $5f
    ld h, e                                       ; $4d2e: $63

jr_0d4_4d2f:
    rst $00                                       ; $4d2f: $c7
    ld [$635f], sp                                ; $4d30: $08 $5f $63
    ld e, b                                       ; $4d33: $58
    ld b, d                                       ; $4d34: $42
    ld e, a                                       ; $4d35: $5f
    ld h, e                                       ; $4d36: $63
    rst $00                                       ; $4d37: $c7
    ld [$0867], sp                                ; $4d38: $08 $67 $08
    sbc h                                         ; $4d3b: $9c
    ld [hl], $c4                                  ; $4d3c: $36 $c4
    dec c                                         ; $4d3e: $0d
    ld e, a                                       ; $4d3f: $5f
    inc bc                                        ; $4d40: $03
    ld [bc], a                                    ; $4d41: $02
    nop                                           ; $4d42: $00
    scf                                           ; $4d43: $37
    dec b                                         ; $4d44: $05
    and h                                         ; $4d45: $a4
    add hl, bc                                    ; $4d46: $09
    rra                                           ; $4d47: $1f
    inc de                                        ; $4d48: $13
    add a                                         ; $4d49: $87
    ld [$4258], sp                                ; $4d4a: $08 $58 $42
    ld e, a                                       ; $4d4d: $5f
    ld h, e                                       ; $4d4e: $63
    rl b                                          ; $4d4f: $cb $10
    rl b                                          ; $4d51: $cb $10
    ld e, b                                       ; $4d53: $58
    ld b, d                                       ; $4d54: $42
    ld e, a                                       ; $4d55: $5f
    ld h, e                                       ; $4d56: $63
    rl b                                          ; $4d57: $cb $10
    ld h, [hl]                                    ; $4d59: $66
    inc b                                         ; $4d5a: $04
    ld d, a                                       ; $4d5b: $57
    dec d                                         ; $4d5c: $15
    call nz, $5f09                                ; $4d5d: $c4 $09 $5f
    inc bc                                        ; $4d60: $03
    ld bc, $5b00                                  ; $4d61: $01 $00 $5b
    ld bc, $09a4                                  ; $4d64: $01 $a4 $09
    ld e, a                                       ; $4d67: $5f
    inc bc                                        ; $4d68: $03
    ret                                           ; $4d69: $c9


    jr jr_0d4_4dc4                                ; $4d6a: $18 $58

    ld b, d                                       ; $4d6c: $42
    ld e, a                                       ; $4d6d: $5f
    ld h, e                                       ; $4d6e: $63
    rl b                                          ; $4d6f: $cb $10
    adc b                                         ; $4d71: $88
    ld [$4258], sp                                ; $4d72: $08 $58 $42
    ld e, a                                       ; $4d75: $5f
    ld h, e                                       ; $4d76: $63
    ld [hl], l                                    ; $4d77: $75
    dec d                                         ; $4d78: $15
    ld bc, $5f00                                  ; $4d79: $01 $00 $5f
    inc bc                                        ; $4d7c: $03
    and e                                         ; $4d7d: $a3
    add hl, bc                                    ; $4d7e: $09
    adc b                                         ; $4d7f: $88
    ld [$0002], sp                                ; $4d80: $08 $02 $00
    adc h                                         ; $4d83: $8c
    ld sp, $025d                                  ; $4d84: $31 $5d $02
    jr @+$65                                      ; $4d87: $18 $63

    ld hl, $5804                                  ; $4d89: $21 $04 $58
    ld b, d                                       ; $4d8c: $42
    ld e, a                                       ; $4d8d: $5f
    ld h, e                                       ; $4d8e: $63
    rl b                                          ; $4d8f: $cb $10
    ld hl, $5604                                  ; $4d91: $21 $04 $56
    ld b, d                                       ; $4d94: $42
    dec a                                         ; $4d95: $3d
    ld h, e                                       ; $4d96: $63
    rl b                                          ; $4d97: $cb $10
    ld hl, $5304                                  ; $4d99: $21 $04 $53
    ld c, d                                       ; $4d9c: $4a
    add l                                         ; $4d9d: $85
    ld de, $035f                                  ; $4d9e: $11 $5f $03
    ld bc, $8c00                                  ; $4da1: $01 $00 $8c
    ld sp, $025d                                  ; $4da4: $31 $5d $02
    or l                                          ; $4da7: $b5
    ld d, [hl]                                    ; $4da8: $56
    ld hl, $5804                                  ; $4da9: $21 $04 $58
    ld b, d                                       ; $4dac: $42
    dec hl                                        ; $4dad: $2b
    ld hl, $635f                                  ; $4dae: $21 $5f $63
    ld hl, $5804                                  ; $4db1: $21 $04 $58
    ld b, d                                       ; $4db4: $42
    db $eb                                        ; $4db5: $eb
    jr @+$61                                      ; $4db6: $18 $5f

    ld h, e                                       ; $4db8: $63
    add d                                         ; $4db9: $82
    nop                                           ; $4dba: $00
    db $10                                        ; $4dbb: $10
    ld b, d                                       ; $4dbc: $42
    ld e, a                                       ; $4dbd: $5f
    inc bc                                        ; $4dbe: $03
    jr @+$65                                      ; $4dbf: $18 $63

    ld [bc], a                                    ; $4dc1: $02
    nop                                           ; $4dc2: $00
    adc h                                         ; $4dc3: $8c

jr_0d4_4dc4:
    ld sp, $025d                                  ; $4dc4: $31 $5d $02
    ld [hl], h                                    ; $4dc7: $74
    ld c, [hl]                                    ; $4dc8: $4e
    nop                                           ; $4dc9: $00
    nop                                           ; $4dca: $00
    adc h                                         ; $4dcb: $8c
    ld sp, $52b6                                  ; $4dcc: $31 $b6 $52
    rl b                                          ; $4dcf: $cb $10
    ld hl, $5604                                  ; $4dd1: $21 $04 $56
    ld b, d                                       ; $4dd4: $42
    dec hl                                        ; $4dd5: $2b
    ld hl, $635f                                  ; $4dd6: $21 $5f $63
    ld [hl+], a                                   ; $4dd9: $22
    inc b                                         ; $4dda: $04
    adc h                                         ; $4ddb: $8c
    ld sp, $035f                                  ; $4ddc: $31 $5f $03
    sub $5a                                       ; $4ddf: $d6 $5a
    ld [bc], a                                    ; $4de1: $02
    nop                                           ; $4de2: $00
    ld e, e                                       ; $4de3: $5b
    ld bc, $035f                                  ; $4de4: $01 $5f $03
    sub $5a                                       ; $4de7: $d6 $5a
    ld e, e                                       ; $4de9: $5b
    ld bc, $035f                                  ; $4dea: $01 $5f $03
    ld e, a                                       ; $4ded: $5f
    inc bc                                        ; $4dee: $03
    sub $5a                                       ; $4def: $d6 $5a
    ld e, e                                       ; $4df1: $5b
    ld bc, $035f                                  ; $4df2: $01 $5f $03
    ld e, a                                       ; $4df5: $5f
    inc bc                                        ; $4df6: $03
    sub $5a                                       ; $4df7: $d6 $5a
    ld [bc], a                                    ; $4df9: $02
    nop                                           ; $4dfa: $00
    ld e, e                                       ; $4dfb: $5b
    ld bc, $035f                                  ; $4dfc: $01 $5f $03
    sub $5a                                       ; $4dff: $d6 $5a

    db $02, $00, $b4, $00, $5f, $03, $5b, $01, $00, $00, $5f, $03, $d4, $00, $45, $00
    db $00, $00, $5f, $03, $44, $08, $01, $00, $02, $00, $5f, $03, $10, $01, $77, $01
    db $02, $00, $b3, $00, $5f, $03, $5b, $01, $00, $00, $ec, $18, $86, $08, $d1, $00
    db $00, $00, $87, $0c, $ca, $14, $44, $04, $22, $04, $10, $01, $5f, $03, $97, $01
    db $01, $00, $d5, $00, $5f, $03, $66, $04, $01, $00, $72, $25, $66, $08, $a9, $10
    db $65, $08, $0d, $19, $a9, $10, $51, $21, $01, $00, $0f, $0d, $5f, $03, $b8, $01
    db $01, $00, $f5, $00, $5f, $03, $30, $21, $44, $08, $51, $21, $ca, $14, $95, $29
    db $00, $00, $0e, $19, $73, $25, $45, $08, $02, $00, $95, $19, $5f, $03, $a9, $0c
    db $02, $00, $d3, $00, $5f, $03, $58, $0d, $00, $00, $ed, $18, $95, $25, $86, $08
    db $00, $00, $73, $25, $bf, $4e, $68, $08, $00, $00, $d9, $01, $ca, $14, $5f, $03
    db $01, $00, $17, $01, $5f, $03, $88, $0c, $01, $00, $73, $25, $88, $0c, $fb, $2d
    db $00, $00, $96, $25, $1f, $57, $4a, $04, $00, $00, $d9, $01, $ca, $14, $5f, $03
    db $01, $00, $15, $01, $5f, $03, $ca, $14, $01, $00, $b9, $21, $a9, $10, $ff, $52
    db $00, $00, $da, $31, $df, $4e, $29, $00, $01, $00, $f8, $05, $ec, $18, $5f, $03
    db $01, $00, $15, $01, $5f, $03, $5b, $01, $42, $04, $95, $25, $7c, $42, $8a, $0c
    db $22, $04, $b3, $25, $59, $3a, $df, $4e, $22, $04, $72, $01, $5f, $03, $d9, $01
    db $01, $00, $37, $01, $5f, $03, $cd, $00, $42, $08, $1b, $36, $9e, $4a, $cb, $10
    db $44, $08, $76, $42, $eb, $19, $ff, $7f, $23, $04, $f8, $05, $5f, $03, $45, $0e
    db $01, $00, $37, $01, $5f, $03, $46, $00, $00, $00, $fa, $31, $9e, $46, $aa, $10
    db $42, $08, $d3, $29, $dd, $52, $8a, $11, $01, $00, $b2, $25, $5f, $03, $1a, $02
    db $02, $00, $56, $01, $5f, $03, $5b, $01, $00, $00, $97, $21, $9e, $46, $8a, $04
    db $42, $08, $7b, $42, $10, $19, $ff, $52, $44, $00, $b3, $15, $5f, $03, $1a, $02
    db $02, $00, $77, $01, $5f, $03, $5b, $01, $01, $00, $97, $19, $ef, $08, $9d, $46
    db $52, $1d, $9d, $4a, $f8, $31, $df, $52, $02, $00, $3a, $02, $5f, $03, $aa, $04
    db $02, $00, $77, $01, $5f, $03, $5b, $01, $00, $00, $76, $19, $ff, $52, $8b, $08
    db $6a, $08, $19, $36, $bf, $4a, $94, $05, $02, $00, $3a, $02, $5f, $03, $3b, $02
    db $02, $00, $f5, $00, $5f, $03, $0d, $00, $00, $00, $97, $25, $bf, $4a, $2b, $00
    db $01, $00, $d6, $05, $3a, $3a, $8a, $08, $02, $00, $3a, $02, $5f, $03, $5b, $02
    db $02, $00, $3b, $0c, $5f, $03, $0d, $00, $27, $00, $97, $25, $19, $0c, $ff, $52
    db $0b, $00, $9d, $32, $19, $0c, $2f, $05, $02, $00, $3b, $02, $5f, $03, $5b, $02
    db $02, $00, $5b, $01, $5f, $03, $5b, $02, $5b, $01, $5f, $03, $5f, $03, $5b, $02
    db $5b, $01, $5f, $03, $5f, $03, $5b, $02, $02, $00, $5b, $01, $5f, $03, $5b, $02

    ld [bc], a                                    ; $5001: $02
    nop                                           ; $5002: $00
    inc d                                         ; $5003: $14
    ld a, d                                       ; $5004: $7a
    ld e, e                                       ; $5005: $5b
    ld bc, $035f                                  ; $5006: $01 $5f $03
    ld b, b                                       ; $5009: $40
    nop                                           ; $500a: $00
    inc d                                         ; $500b: $14
    ld a, d                                       ; $500c: $7a
    ld e, a                                       ; $500d: $5f
    inc bc                                        ; $500e: $03
    ld [hl+], a                                   ; $500f: $22

Call_0d4_5010:
    add hl, bc                                    ; $5010: $09
    add e                                         ; $5011: $83
    dec c                                         ; $5012: $0d
    ld e, a                                       ; $5013: $5f
    inc bc                                        ; $5014: $03
    or l                                          ; $5015: $b5
    ld l, [hl]                                    ; $5016: $6e
    adc d                                         ; $5017: $8a
    ld a, [hl+]                                   ; $5018: $2a
    ld [bc], a                                    ; $5019: $02
    nop                                           ; $501a: $00
    ld e, a                                       ; $501b: $5f
    inc bc                                        ; $501c: $03
    inc d                                         ; $501d: $14
    ld a, d                                       ; $501e: $7a
    adc d                                         ; $501f: $8a
    ld a, [hl+]                                   ; $5020: $2a
    ld [bc], a                                    ; $5021: $02
    nop                                           ; $5022: $00
    inc de                                        ; $5023: $13
    ld a, d                                       ; $5024: $7a
    ld e, e                                       ; $5025: $5b
    ld bc, $035f                                  ; $5026: $01 $5f $03
    nop                                           ; $5029: $00
    nop                                           ; $502a: $00
    ret nz                                        ; $502b: $c0

    nop                                           ; $502c: $00
    ld h, b                                       ; $502d: $60
    ld bc, $0060                                  ; $502e: $01 $60 $00
    nop                                           ; $5031: $00
    nop                                           ; $5032: $00
    db $ec                                        ; $5033: $ec
    ld [hl], $f5                                  ; $5034: $36 $f5
    ld l, d                                       ; $5036: $6a
    jp Jump_000_020d                              ; $5037: $c3 $0d $02


    nop                                           ; $503a: $00
    inc de                                        ; $503b: $13
    ld a, d                                       ; $503c: $7a

jr_0d4_503d:
    ld e, a                                       ; $503d: $5f
    inc bc                                        ; $503e: $03
    inc d                                         ; $503f: $14
    ld a, d                                       ; $5040: $7a
    ld bc, $1300                                  ; $5041: $01 $00 $13
    halt                                          ; $5044: $76
    ld e, e                                       ; $5045: $5b
    ld bc, $035f                                  ; $5046: $01 $5f $03
    jr nz, jr_0d4_504b                            ; $5049: $20 $00

jr_0d4_504b:
    inc de                                        ; $504b: $13
    ld d, $5f                                     ; $504c: $16 $5f
    daa                                           ; $504e: $27
    adc [hl]                                      ; $504f: $8e
    ld de, $0000                                  ; $5050: $11 $00 $00
    inc e                                         ; $5053: $1c
    rra                                           ; $5054: $1f
    db $fc                                        ; $5055: $fc
    ld d, e                                       ; $5056: $53
    add [hl]                                      ; $5057: $86
    dec c                                         ; $5058: $0d
    ld [bc], a                                    ; $5059: $02
    nop                                           ; $505a: $00
    inc de                                        ; $505b: $13
    halt                                          ; $505c: $76
    ld e, a                                       ; $505d: $5f
    inc bc                                        ; $505e: $03
    add [hl]                                      ; $505f: $86
    dec c                                         ; $5060: $0d
    ld [bc], a                                    ; $5061: $02
    nop                                           ; $5062: $00
    ld a, [c]                                     ; $5063: $f2
    ld [hl], c                                    ; $5064: $71
    ld e, e                                       ; $5065: $5b
    ld bc, $035f                                  ; $5066: $01 $5f $03
    nop                                           ; $5069: $00
    nop                                           ; $506a: $00
    adc h                                         ; $506b: $8c
    ld sp, $27bf                                  ; $506c: $31 $bf $27
    inc [hl]                                      ; $506f: $34
    ld d, $00                                     ; $5070: $16 $00
    inc b                                         ; $5072: $04
    ldh a, [$39]                                  ; $5073: $f0 $39
    ld a, [$ff1e]                                 ; $5075: $fa $1e $ff
    cpl                                           ; $5078: $2f
    ld [bc], a                                    ; $5079: $02
    nop                                           ; $507a: $00
    ld a, [c]                                     ; $507b: $f2
    ld [hl], c                                    ; $507c: $71
    ld e, a                                       ; $507d: $5f
    inc bc                                        ; $507e: $03
    ld h, h                                       ; $507f: $64
    jr jr_0d4_5083                                ; $5080: $18 $01

    nop                                           ; $5082: $00

jr_0d4_5083:
    ld c, d                                       ; $5083: $4a
    add hl, hl                                    ; $5084: $29
    ld e, l                                       ; $5085: $5d
    ld [bc], a                                    ; $5086: $02
    pop af                                        ; $5087: $f1
    ld [hl], c                                    ; $5088: $71
    jr nz, jr_0d4_508f                            ; $5089: $20 $04

    ld [hl-], a                                   ; $508b: $32
    ld c, d                                       ; $508c: $4a
    ld e, a                                       ; $508d: $5f
    daa                                           ; $508e: $27

jr_0d4_508f:
    ld l, l                                       ; $508f: $6d
    dec c                                         ; $5090: $0d
    nop                                           ; $5091: $00
    nop                                           ; $5092: $00
    sub [hl]                                      ; $5093: $96
    ld d, [hl]                                    ; $5094: $56
    rst $18                                       ; $5095: $df
    daa                                           ; $5096: $27
    rst $20                                       ; $5097: $e7
    jr jr_0d4_50bd                                ; $5098: $18 $23

    inc c                                         ; $509a: $0c
    ld e, a                                       ; $509b: $5f
    inc bc                                        ; $509c: $03
    pop af                                        ; $509d: $f1
    ld [hl], c                                    ; $509e: $71
    rst $38                                       ; $509f: $ff
    ld a, a                                       ; $50a0: $7f
    ld bc, $f000                                  ; $50a1: $01 $00 $f0
    ld l, l                                       ; $50a4: $6d
    ld e, e                                       ; $50a5: $5b
    ld bc, $035f                                  ; $50a6: $01 $5f $03
    jr nz, jr_0d4_50ab                            ; $50a9: $20 $00

jr_0d4_50ab:
    ld b, l                                       ; $50ab: $45
    dec d                                         ; $50ac: $15
    xor b                                         ; $50ad: $a8
    ld hl, $29ea                                  ; $50ae: $21 $ea $29
    jr nz, jr_0d4_50b3                            ; $50b1: $20 $00

jr_0d4_50b3:
    ld l, l                                       ; $50b3: $6d
    ld [hl-], a                                   ; $50b4: $32
    pop af                                        ; $50b5: $f1
    ld b, d                                       ; $50b6: $42
    ld h, h                                       ; $50b7: $64
    jr jr_0d4_503d                                ; $50b8: $18 $83

    inc c                                         ; $50ba: $0c
    ldh a, [$6d]                                  ; $50bb: $f0 $6d

jr_0d4_50bd:
    ld e, a                                       ; $50bd: $5f
    inc bc                                        ; $50be: $03
    ld [hl], e                                    ; $50bf: $73
    ld c, a                                       ; $50c0: $4f
    ld bc, $3900                                  ; $50c1: $01 $00 $39
    dec b                                         ; $50c4: $05
    ld e, a                                       ; $50c5: $5f
    inc bc                                        ; $50c6: $03
    add c                                         ; $50c7: $81
    inc b                                         ; $50c8: $04
    jr nz, jr_0d4_50cb                            ; $50c9: $20 $00

jr_0d4_50cb:
    halt                                          ; $50cb: $76
    ld de, $3a9e                                  ; $50cc: $11 $9e $3a
    ld h, a                                       ; $50cf: $67
    nop                                           ; $50d0: $00
    nop                                           ; $50d1: $00
    nop                                           ; $50d2: $00
    ld d, a                                       ; $50d3: $57
    dec c                                         ; $50d4: $0d
    ld e, l                                       ; $50d5: $5d
    ld [hl], $45                                  ; $50d6: $36 $45
    nop                                           ; $50d8: $00
    nop                                           ; $50d9: $00
    nop                                           ; $50da: $00
    or l                                          ; $50db: $b5
    ld d, a                                       ; $50dc: $57
    cp h                                          ; $50dd: $bc
    ld b, $83                                     ; $50de: $06 $83
    dec c                                         ; $50e0: $0d
    ld bc, $cd00                                  ; $50e1: $01 $00 $cd
    ld h, l                                       ; $50e4: $65
    ld e, c                                       ; $50e5: $59
    add hl, bc                                    ; $50e6: $09
    ld e, a                                       ; $50e7: $5f
    inc bc                                        ; $50e8: $03
    ld h, a                                       ; $50e9: $67
    nop                                           ; $50ea: $00
    ld e, [hl]                                    ; $50eb: $5e
    ld l, $f6                                     ; $50ec: $2e $f6
    nop                                           ; $50ee: $00
    ccf                                           ; $50ef: $3f
    ld d, a                                       ; $50f0: $57
    ld h, a                                       ; $50f1: $67
    nop                                           ; $50f2: $00
    ld a, l                                       ; $50f3: $7d
    ld a, [hl-]                                   ; $50f4: $3a
    or $00                                        ; $50f5: $f6 $00
    ccf                                           ; $50f7: $3f
    ld d, a                                       ; $50f8: $57
    ld bc, $cd00                                  ; $50f9: $01 $00 $cd
    ld h, l                                       ; $50fc: $65
    ei                                            ; $50fd: $fb
    dec h                                         ; $50fe: $25
    ld e, a                                       ; $50ff: $5f
    inc bc                                        ; $5100: $03
    ld [bc], a                                    ; $5101: $02
    nop                                           ; $5102: $00
    call Call_000_3965                            ; $5103: $cd $65 $39
    dec b                                         ; $5106: $05
    cp l                                          ; $5107: $bd
    ld d, $68                                     ; $5108: $16 $68
    ld [$2a1b], sp                                ; $510a: $08 $1b $2a
    call nz, Call_0d4_5e6c                        ; $510d: $c4 $6c $5e
    ld e, a                                       ; $5110: $5f
    add l                                         ; $5111: $85
    nop                                           ; $5112: $00
    ld e, [hl]                                    ; $5113: $5e
    ld e, a                                       ; $5114: $5f
    add hl, bc                                    ; $5115: $09
    dec hl                                        ; $5116: $2b
    ld a, b                                       ; $5117: $78
    ld de, $0024                                  ; $5118: $11 $24 $00
    call Call_0d4_5c65                            ; $511b: $cd $65 $5c
    ld [hl-], a                                   ; $511e: $32
    ld e, a                                       ; $511f: $5f
    inc bc                                        ; $5120: $03
    ld [bc], a                                    ; $5121: $02
    nop                                           ; $5122: $00
    xor h                                         ; $5123: $ac
    ld h, c                                       ; $5124: $61
    ld e, c                                       ; $5125: $59
    add hl, bc                                    ; $5126: $09
    cp l                                          ; $5127: $bd
    ld e, $88                                     ; $5128: $1e $88
    inc c                                         ; $512a: $0c
    ld e, e                                       ; $512b: $5b
    ld [hl-], a                                   ; $512c: $32
    call nz, Call_0d4_5e6c                        ; $512d: $c4 $6c $5e
    ld h, e                                       ; $5130: $63
    and e                                         ; $5131: $a3
    inc b                                         ; $5132: $04
    dec e                                         ; $5133: $1d
    ld e, e                                       ; $5134: $5b
    add hl, bc                                    ; $5135: $09
    dec hl                                        ; $5136: $2b
    ld [de], a                                    ; $5137: $12
    dec c                                         ; $5138: $0d
    dec h                                         ; $5139: $25
    nop                                           ; $513a: $00
    ld e, e                                       ; $513b: $5b
    ld d, $cc                                     ; $513c: $16 $cc
    ld h, c                                       ; $513e: $61
    sbc $46                                       ; $513f: $de $46
    ld [bc], a                                    ; $5141: $02
    nop                                           ; $5142: $00
    xor e                                         ; $5143: $ab
    ld e, l                                       ; $5144: $5d
    ld e, c                                       ; $5145: $59
    add hl, bc                                    ; $5146: $09
    sbc l                                         ; $5147: $9d
    ld e, $67                                     ; $5148: $1e $67
    nop                                           ; $514a: $00
    ld a, [hl-]                                   ; $514b: $3a
    ld [hl], $df                                  ; $514c: $36 $df
    ld d, d                                       ; $514e: $52
    inc l                                         ; $514f: $2c
    dec e                                         ; $5150: $1d
    xor b                                         ; $5151: $a8
    ld [$363a], sp                                ; $5152: $08 $3a $36
    ld e, b                                       ; $5155: $58
    dec c                                         ; $5156: $0d
    rst $38                                       ; $5157: $ff
    ld d, d                                       ; $5158: $52
    ld b, l                                       ; $5159: $45
    nop                                           ; $515a: $00
    jp c, $5f21                                   ; $515b: $da $21 $5f

    inc bc                                        ; $515e: $03
    sbc l                                         ; $515f: $9d
    ld a, $02                                     ; $5160: $3e $02
    nop                                           ; $5162: $00
    xor d                                         ; $5163: $aa
    ld e, c                                       ; $5164: $59
    ld a, c                                       ; $5165: $79
    dec c                                         ; $5166: $0d
    ld e, $17                                     ; $5167: $1e $17
    ld h, a                                       ; $5169: $67
    nop                                           ; $516a: $00
    ld e, e                                       ; $516b: $5b
    ld a, $ff                                     ; $516c: $3e $ff
    ld c, [hl]                                    ; $516e: $4e
    inc l                                         ; $516f: $2c
    dec e                                         ; $5170: $1d
    ret                                           ; $5171: $c9


    inc c                                         ; $5172: $0c
    ld e, e                                       ; $5173: $5b
    ld a, $17                                     ; $5174: $3e $17
    add hl, bc                                    ; $5176: $09
    rst $38                                       ; $5177: $ff
    ld d, [hl]                                    ; $5178: $56
    inc h                                         ; $5179: $24
    nop                                           ; $517a: $00
    sbc c                                         ; $517b: $99
    add hl, de                                    ; $517c: $19
    ld e, a                                       ; $517d: $5f
    inc bc                                        ; $517e: $03
    xor c                                         ; $517f: $a9
    ld e, c                                       ; $5180: $59
    ld [bc], a                                    ; $5181: $02
    nop                                           ; $5182: $00
    adc c                                         ; $5183: $89
    ld e, c                                       ; $5184: $59
    ld e, c                                       ; $5185: $59
    dec c                                         ; $5186: $0d
    ld e, a                                       ; $5187: $5f
    inc bc                                        ; $5188: $03
    adc b                                         ; $5189: $88
    inc b                                         ; $518a: $04
    inc a                                         ; $518b: $3c
    ld [hl-], a                                   ; $518c: $32
    sbc $46                                       ; $518d: $de $46
    ld e, a                                       ; $518f: $5f
    ld d, a                                       ; $5190: $57
    ld h, a                                       ; $5191: $67
    nop                                           ; $5192: $00
    inc a                                         ; $5193: $3c
    ld [hl-], a                                   ; $5194: $32
    scf                                           ; $5195: $37
    dec c                                         ; $5196: $0d
    ccf                                           ; $5197: $3f
    ld d, e                                       ; $5198: $53
    dec h                                         ; $5199: $25
    nop                                           ; $519a: $00
    ld e, b                                       ; $519b: $58
    ld de, $5989                                  ; $519c: $11 $89 $59
    ld e, $17                                     ; $519f: $1e $17
    ld [bc], a                                    ; $51a1: $02
    nop                                           ; $51a2: $00
    ld e, b                                       ; $51a3: $58
    dec c                                         ; $51a4: $0d
    ld e, a                                       ; $51a5: $5f
    inc bc                                        ; $51a6: $03
    ei                                            ; $51a7: $fb
    dec h                                         ; $51a8: $25
    ld b, [hl]                                    ; $51a9: $46
    nop                                           ; $51aa: $00
    dec de                                        ; $51ab: $1b
    ld a, [hl+]                                   ; $51ac: $2a
    dec c                                         ; $51ad: $0d
    add hl, de                                    ; $51ae: $19
    sbc l                                         ; $51af: $9d
    ld a, $46                                     ; $51b0: $3e $46
    nop                                           ; $51b2: $00
    sbc c                                         ; $51b3: $99
    add hl, de                                    ; $51b4: $19
    dec c                                         ; $51b5: $0d
    add hl, de                                    ; $51b6: $19
    ld e, h                                       ; $51b7: $5c
    ld [hl-], a                                   ; $51b8: $32
    dec h                                         ; $51b9: $25
    nop                                           ; $51ba: $00
    dec de                                        ; $51bb: $1b
    ld a, [hl+]                                   ; $51bc: $2a
    ld e, a                                       ; $51bd: $5f
    inc bc                                        ; $51be: $03
    xor c                                         ; $51bf: $a9
    ld e, c                                       ; $51c0: $59
    ld [bc], a                                    ; $51c1: $02
    nop                                           ; $51c2: $00
    ld e, c                                       ; $51c3: $59
    dec c                                         ; $51c4: $0d
    ld e, a                                       ; $51c5: $5f
    inc bc                                        ; $51c6: $03
    ei                                            ; $51c7: $fb
    dec h                                         ; $51c8: $25
    ld h, a                                       ; $51c9: $67
    nop                                           ; $51ca: $00
    ld e, h                                       ; $51cb: $5c
    ld a, [hl-]                                   ; $51cc: $3a
    dec c                                         ; $51cd: $0d
    add hl, de                                    ; $51ce: $19
    cp [hl]                                       ; $51cf: $be
    ld b, d                                       ; $51d0: $42
    adc c                                         ; $51d1: $89
    ld [$2e1a], sp                                ; $51d2: $08 $1a $2e
    scf                                           ; $51d5: $37
    dec c                                         ; $51d6: $0d
    sbc l                                         ; $51d7: $9d
    ld a, $24                                     ; $51d8: $3e $24
    nop                                           ; $51da: $00
    dec de                                        ; $51db: $1b
    ld a, [hl+]                                   ; $51dc: $2a
    ld e, a                                       ; $51dd: $5f
    inc bc                                        ; $51de: $03
    sbc $46                                       ; $51df: $de $46
    ld [bc], a                                    ; $51e1: $02
    nop                                           ; $51e2: $00
    ld e, e                                       ; $51e3: $5b
    ld bc, $035f                                  ; $51e4: $01 $5f $03
    sbc $46                                       ; $51e7: $de $46
    ld e, e                                       ; $51e9: $5b
    ld bc, $035f                                  ; $51ea: $01 $5f $03
    ld e, a                                       ; $51ed: $5f
    inc bc                                        ; $51ee: $03
    sbc $46                                       ; $51ef: $de $46
    ld e, e                                       ; $51f1: $5b
    ld bc, $035f                                  ; $51f2: $01 $5f $03
    ld e, a                                       ; $51f5: $5f
    inc bc                                        ; $51f6: $03
    sbc $46                                       ; $51f7: $de $46
    ld [bc], a                                    ; $51f9: $02
    nop                                           ; $51fa: $00
    ld e, e                                       ; $51fb: $5b
    ld bc, $035f                                  ; $51fc: $01 $5f $03
    sbc $46                                       ; $51ff: $de $46
    ld bc, $1300                                  ; $5201: $01 $00 $13
    ld b, e                                       ; $5204: $43
    ld e, e                                       ; $5205: $5b
    ld bc, $035f                                  ; $5206: $01 $5f $03
    ld b, d                                       ; $5209: $42
    ld [$035f], sp                                ; $520a: $08 $5f $03
    adc d                                         ; $520d: $8a
    ld hl, $4652                                  ; $520e: $21 $52 $46
    dec b                                         ; $5211: $05
    ld de, $035f                                  ; $5212: $11 $5f $03
    ld [hl], e                                    ; $5215: $73
    ld c, [hl]                                    ; $5216: $4e
    ld c, c                                       ; $5217: $49
    dec h                                         ; $5218: $25
    ld [bc], a                                    ; $5219: $02
    nop                                           ; $521a: $00
    inc de                                        ; $521b: $13
    ld b, e                                       ; $521c: $43
    ld e, a                                       ; $521d: $5f
    inc bc                                        ; $521e: $03
    ld b, d                                       ; $521f: $42
    inc b                                         ; $5220: $04
    ld bc, $f200                                  ; $5221: $01 $00 $f2
    ld a, $5b                                     ; $5224: $3e $5b
    ld bc, $035f                                  ; $5226: $01 $5f $03
    nop                                           ; $5229: $00
    nop                                           ; $522a: $00
    adc $39                                       ; $522b: $ce $39
    and l                                         ; $522d: $a5
    db $10                                        ; $522e: $10
    jr jr_0d4_5294                                ; $522f: $18 $63

    nop                                           ; $5231: $00
    nop                                           ; $5232: $00
    ld [$1321], sp                                ; $5233: $08 $21 $13
    ld a, [hl-]                                   ; $5236: $3a
    add h                                         ; $5237: $84
    inc c                                         ; $5238: $0c
    ld bc, $f300                                  ; $5239: $01 $00 $f3
    ld a, [hl-]                                   ; $523c: $3a
    ld e, a                                       ; $523d: $5f
    inc bc                                        ; $523e: $03
    ld c, l                                       ; $523f: $4d
    dec e                                         ; $5240: $1d
    ld bc, $6b00                                  ; $5241: $01 $00 $6b
    dec l                                         ; $5244: $2d
    ld e, l                                       ; $5245: $5d
    ld [bc], a                                    ; $5246: $02
    pop de                                        ; $5247: $d1
    ld a, [hl-]                                   ; $5248: $3a
    nop                                           ; $5249: $00

Call_0d4_524a:
    nop                                           ; $524a: $00
    ld l, h                                       ; $524b: $6c
    add hl, hl                                    ; $524c: $29
    add $18                                       ; $524d: $c6 $18
    scf                                           ; $524f: $37
    ld [hl-], a                                   ; $5250: $32
    nop                                           ; $5251: $00
    nop                                           ; $5252: $00
    dec hl                                        ; $5253: $2b
    ld hl, $3215                                  ; $5254: $21 $15 $32
    ld h, e                                       ; $5257: $63
    inc c                                         ; $5258: $0c
    ld bc, $1100                                  ; $5259: $01 $00 $11
    inc sp                                        ; $525c: $33
    ccf                                           ; $525d: $3f
    inc bc                                        ; $525e: $03
    ld b, d                                       ; $525f: $42
    inc b                                         ; $5260: $04
    ld [bc], a                                    ; $5261: $02
    nop                                           ; $5262: $00
    rst $08                                       ; $5263: $cf
    ld l, $5d                                     ; $5264: $2e $5d
    ld [bc], a                                    ; $5266: $02
    ld e, d                                       ; $5267: $5a
    ld l, e                                       ; $5268: $6b
    nop                                           ; $5269: $00
    nop                                           ; $526a: $00
    scf                                           ; $526b: $37
    ld [hl-], a                                   ; $526c: $32
    ld h, h                                       ; $526d: $64
    ld [$369b], sp                                ; $526e: $08 $9b $36
    ld bc, $b100                                  ; $5271: $01 $00 $b1
    dec h                                         ; $5274: $25
    rst $00                                       ; $5275: $c7
    inc d                                         ; $5276: $14
    scf                                           ; $5277: $37
    ld [hl-], a                                   ; $5278: $32
    ld hl, $5100                                  ; $5279: $21 $00 $51
    ld c, d                                       ; $527c: $4a
    ld e, a                                       ; $527d: $5f
    inc bc                                        ; $527e: $03
    db $10                                        ; $527f: $10
    cpl                                           ; $5280: $2f
    ld bc, $8c00                                  ; $5281: $01 $00 $8c
    ld sp, $025d                                  ; $5284: $31 $5d $02
    ld de, $6233                                  ; $5287: $11 $33 $62
    nop                                           ; $528a: $00
    ld sp, hl                                     ; $528b: $f9
    ld e, d                                       ; $528c: $5a
    ld l, b                                       ; $528d: $68
    ld b, $0a                                     ; $528e: $06 $0a
    dec e                                         ; $5290: $1d
    nop                                           ; $5291: $00
    nop                                           ; $5292: $00
    sbc b                                         ; $5293: $98

jr_0d4_5294:
    ld b, [hl]                                    ; $5294: $46
    dec hl                                        ; $5295: $2b
    dec e                                         ; $5296: $1d
    adc c                                         ; $5297: $89
    ld a, [bc]                                    ; $5298: $0a
    ld b, c                                       ; $5299: $41
    inc b                                         ; $529a: $04
    ld l, [hl]                                    ; $529b: $6e
    ld l, $5f                                     ; $529c: $2e $5f
    inc bc                                        ; $529e: $03
    sub h                                         ; $529f: $94
    ld d, d                                       ; $52a0: $52
    ld [bc], a                                    ; $52a1: $02
    nop                                           ; $52a2: $00
    ld c, $1f                                     ; $52a3: $0e $1f
    ld e, l                                       ; $52a5: $5d
    ld [bc], a                                    ; $52a6: $02
    or l                                          ; $52a7: $b5
    ld d, [hl]                                    ; $52a8: $56
    ld h, h                                       ; $52a9: $64
    inc b                                         ; $52aa: $04
    jp nc, Jump_0d4_4d2d                          ; $52ab: $d2 $2d $4d

    dec e                                         ; $52ae: $1d
    sbc d                                         ; $52af: $9a
    ld a, [hl-]                                   ; $52b0: $3a
    ld [hl+], a                                   ; $52b1: $22
    nop                                           ; $52b2: $00
    inc sp                                        ; $52b3: $33
    ld a, $fd                                     ; $52b4: $3e $fd
    ld a, a                                       ; $52b6: $7f
    add hl, hl                                    ; $52b7: $29
    dec h                                         ; $52b8: $25
    ld [hl+], a                                   ; $52b9: $22
    inc b                                         ; $52ba: $04
    xor [hl]                                      ; $52bb: $ae
    ld a, [hl+]                                   ; $52bc: $2a
    ld e, a                                       ; $52bd: $5f
    inc bc                                        ; $52be: $03
    rst $30                                       ; $52bf: $f7
    ld e, [hl]                                    ; $52c0: $5e
    ld [bc], a                                    ; $52c1: $02
    nop                                           ; $52c2: $00
    db $ec                                        ; $52c3: $ec
    ld a, [de]                                    ; $52c4: $1a
    ld e, e                                       ; $52c5: $5b
    ld bc, $035f                                  ; $52c6: $01 $5f $03
    nop                                           ; $52c9: $00
    nop                                           ; $52ca: $00
    rst $08                                       ; $52cb: $cf
    dec [hl]                                      ; $52cc: $35
    sub a                                         ; $52cd: $97
    ld c, d                                       ; $52ce: $4a
    add h                                         ; $52cf: $84
    stop                                          ; $52d0: $10 $00
    nop                                           ; $52d2: $00
    ld c, d                                       ; $52d3: $4a
    add hl, hl                                    ; $52d4: $29
    sub h                                         ; $52d5: $94
    ld d, d                                       ; $52d6: $52
    ld h, e                                       ; $52d7: $63
    inc c                                         ; $52d8: $0c
    ld b, d                                       ; $52d9: $42
    ld [$1ecd], sp                                ; $52da: $08 $cd $1e
    ld e, a                                       ; $52dd: $5f
    inc bc                                        ; $52de: $03
    add hl, hl                                    ; $52df: $29
    dec h                                         ; $52e0: $25
    ld bc, $2b00                                  ; $52e1: $01 $00 $2b
    inc de                                        ; $52e4: $13
    ld e, l                                       ; $52e5: $5d
    ld [bc], a                                    ; $52e6: $02
    or l                                          ; $52e7: $b5
    ld d, [hl]                                    ; $52e8: $56
    nop                                           ; $52e9: $00
    nop                                           ; $52ea: $00
    ld [hl], e                                    ; $52eb: $73
    ld c, [hl]                                    ; $52ec: $4e
    sbc h                                         ; $52ed: $9c
    ld [hl], a                                    ; $52ee: $77
    add h                                         ; $52ef: $84
    stop                                          ; $52f0: $10 $00
    nop                                           ; $52f2: $00
    adc h                                         ; $52f3: $8c
    ld sp, $2108                                  ; $52f4: $31 $08 $21
    ld [hl], e                                    ; $52f7: $73
    ld c, [hl]                                    ; $52f8: $4e
    ld [hl+], a                                   ; $52f9: $22
    inc b                                         ; $52fa: $04
    jr c, jr_0d4_5304                             ; $52fb: $38 $07

    or l                                          ; $52fd: $b5
    ld d, [hl]                                    ; $52fe: $56
    add hl, hl                                    ; $52ff: $29
    dec h                                         ; $5300: $25
    ld bc, $8f00                                  ; $5301: $01 $00 $8f

jr_0d4_5304:
    ld [hl], $5d                                  ; $5304: $36 $5d
    ld [bc], a                                    ; $5306: $02
    ld b, a                                       ; $5307: $47
    dec d                                         ; $5308: $15
    nop                                           ; $5309: $00
    nop                                           ; $530a: $00
    ld d, e                                       ; $530b: $53
    add hl, hl                                    ; $530c: $29
    sub $5a                                       ; $530d: $d6 $5a
    ld l, e                                       ; $530f: $6b
    inc c                                         ; $5310: $0c
    nop                                           ; $5311: $00
    nop                                           ; $5312: $00
    sub $5a                                       ; $5313: $d6 $5a
    and l                                         ; $5315: $a5
    inc d                                         ; $5316: $14
    ld l, $1d                                     ; $5317: $2e $1d
    nop                                           ; $5319: $00
    nop                                           ; $531a: $00
    ld [$5f0a], a                                 ; $531b: $ea $0a $5f
    inc bc                                        ; $531e: $03
    ld h, d                                       ; $531f: $62
    inc c                                         ; $5320: $0c
    ld [bc], a                                    ; $5321: $02
    nop                                           ; $5322: $00
    ld e, e                                       ; $5323: $5b
    dec c                                         ; $5324: $0d
    ld e, a                                       ; $5325: $5f
    inc bc                                        ; $5326: $03
    ld e, $3b                                     ; $5327: $1e $3b
    nop                                           ; $5329: $00
    nop                                           ; $532a: $00
    ld sp, $f546                                  ; $532b: $31 $46 $f5
    ld [$1084], sp                                ; $532e: $08 $84 $10
    ld [hl+], a                                   ; $5331: $22
    inc b                                         ; $5332: $04
    ld [hl-], a                                   ; $5333: $32
    ld de, $4610                                  ; $5334: $11 $10 $46
    ld a, [$0121]                                 ; $5337: $fa $21 $01
    nop                                           ; $533a: $00
    sub c                                         ; $533b: $91
    ld h, $5f                                     ; $533c: $26 $5f
    inc bc                                        ; $533e: $03
    ld a, $3b                                     ; $533f: $3e $3b
    ld [bc], a                                    ; $5341: $02
    nop                                           ; $5342: $00
    scf                                           ; $5343: $37
    add hl, bc                                    ; $5344: $09
    ld e, a                                       ; $5345: $5f
    inc bc                                        ; $5346: $03
    jp c, Jump_000_0021                           ; $5347: $da $21 $00

    nop                                           ; $534a: $00
    ld [hl], e                                    ; $534b: $73
    ld d, d                                       ; $534c: $52
    ld a, $22                                     ; $534d: $3e $22
    add h                                         ; $534f: $84
    inc c                                         ; $5350: $0c
    ld h, l                                       ; $5351: $65
    ld [$1dba], sp                                ; $5352: $08 $ba $1d
    inc a                                         ; $5355: $3c
    ld a, [hl+]                                   ; $5356: $2a
    ld e, [hl]                                    ; $5357: $5e
    ld a, [hl+]                                   ; $5358: $2a
    ld [bc], a                                    ; $5359: $02
    nop                                           ; $535a: $00
    ld a, $03                                     ; $535b: $3e $03
    cp [hl]                                       ; $535d: $be
    ld [hl-], a                                   ; $535e: $32
    sbc [hl]                                      ; $535f: $9e
    ld b, e                                       ; $5360: $43
    ld [bc], a                                    ; $5361: $02
    nop                                           ; $5362: $00
    ld e, e                                       ; $5363: $5b
    ld bc, $32be                                  ; $5364: $01 $be $32
    ld e, a                                       ; $5367: $5f
    inc bc                                        ; $5368: $03
    ld l, c                                       ; $5369: $69
    inc b                                         ; $536a: $04
    sbc b                                         ; $536b: $98
    dec e                                         ; $536c: $1d
    inc sp                                        ; $536d: $33
    dec d                                         ; $536e: $15
    ld a, $2a                                     ; $536f: $3e $2a
    nop                                           ; $5371: $00
    nop                                           ; $5372: $00
    ld a, b                                       ; $5373: $78
    add hl, de                                    ; $5374: $19
    call Call_000_1d10                            ; $5375: $cd $10 $1d
    ld h, $02                                     ; $5378: $26 $02
    nop                                           ; $537a: $00
    ld e, a                                       ; $537b: $5f
    inc bc                                        ; $537c: $03
    ld e, l                                       ; $537d: $5d
    ld a, [hl+]                                   ; $537e: $2a
    rra                                           ; $537f: $1f
    dec sp                                        ; $5380: $3b
    ld [bc], a                                    ; $5381: $02
    nop                                           ; $5382: $00
    ld e, b                                       ; $5383: $58
    add hl, bc                                    ; $5384: $09
    ld e, a                                       ; $5385: $5f
    inc bc                                        ; $5386: $03
    rst $18                                       ; $5387: $df
    ld [hl], $00                                  ; $5388: $36 $00
    nop                                           ; $538a: $00
    sbc d                                         ; $538b: $9a
    dec e                                         ; $538c: $1d
    ld a, [hl]                                    ; $538d: $7e
    ld l, $67                                     ; $538e: $2e $67
    inc b                                         ; $5390: $04
    nop                                           ; $5391: $00
    nop                                           ; $5392: $00
    sbc d                                         ; $5393: $9a
    dec e                                         ; $5394: $1d
    ld a, [hl]                                    ; $5395: $7e
    ld l, $d0                                     ; $5396: $2e $d0
    db $10                                        ; $5398: $10
    ld [bc], a                                    ; $5399: $02
    nop                                           ; $539a: $00
    cp c                                          ; $539b: $b9
    ld hl, $035f                                  ; $539c: $21 $5f $03
    inc a                                         ; $539f: $3c
    ld a, [hl+]                                   ; $53a0: $2a
    ld bc, $5900                                  ; $53a1: $01 $00 $59
    add hl, bc                                    ; $53a4: $09
    sbc [hl]                                      ; $53a5: $9e
    ld l, $5f                                     ; $53a6: $2e $5f
    inc bc                                        ; $53a8: $03
    xor [hl]                                      ; $53a9: $ae
    inc c                                         ; $53aa: $0c
    ld e, l                                       ; $53ab: $5d
    ld a, [hl+]                                   ; $53ac: $2a
    ld a, c                                       ; $53ad: $79
    add hl, de                                    ; $53ae: $19
    rst $38                                       ; $53af: $ff
    ld [hl], $00                                  ; $53b0: $36 $00
    nop                                           ; $53b2: $00
    sbc c                                         ; $53b3: $99
    dec e                                         ; $53b4: $1d
    rst $18                                       ; $53b5: $df
    ld [hl], $ab                                  ; $53b6: $36 $ab
    inc c                                         ; $53b8: $0c
    ld bc, $3400                                  ; $53b9: $01 $00 $34
    dec d                                         ; $53bc: $15
    ld e, a                                       ; $53bd: $5f
    inc bc                                        ; $53be: $03
    cp e                                          ; $53bf: $bb
    ld hl, $0001                                  ; $53c0: $21 $01 $00
    db $db                                        ; $53c3: $db
    dec e                                         ; $53c4: $1d
    ld e, a                                       ; $53c5: $5f
    inc bc                                        ; $53c6: $03
    xor l                                         ; $53c7: $ad
    inc c                                         ; $53c8: $0c
    ld a, b                                       ; $53c9: $78
    dec e                                         ; $53ca: $1d
    ld a, l                                       ; $53cb: $7d
    ld l, $ff                                     ; $53cc: $2e $ff
    ld [hl], $fa                                  ; $53ce: $36 $fa
    dec h                                         ; $53d0: $25
    nop                                           ; $53d1: $00
    nop                                           ; $53d2: $00
    ld d, a                                       ; $53d3: $57
    add hl, de                                    ; $53d4: $19
    sbc $36                                       ; $53d5: $de $36
    dec de                                        ; $53d7: $1b
    ld h, $01                                     ; $53d8: $26 $01
    nop                                           ; $53da: $00
    ld [hl], $19                                  ; $53db: $36 $19
    ld e, a                                       ; $53dd: $5f
    inc bc                                        ; $53de: $03
    adc c                                         ; $53df: $89
    ld [$0002], sp                                ; $53e0: $08 $02 $00
    ld e, e                                       ; $53e3: $5b
    ld bc, $073f                                  ; $53e4: $01 $3f $07
    ld e, a                                       ; $53e7: $5f
    inc bc                                        ; $53e8: $03
    ld e, e                                       ; $53e9: $5b
    ld bc, $035f                                  ; $53ea: $01 $5f $03
    ccf                                           ; $53ed: $3f
    rlca                                          ; $53ee: $07
    ld e, a                                       ; $53ef: $5f
    inc bc                                        ; $53f0: $03
    ld e, e                                       ; $53f1: $5b
    ld bc, $035f                                  ; $53f2: $01 $5f $03
    ccf                                           ; $53f5: $3f
    rlca                                          ; $53f6: $07
    ld e, a                                       ; $53f7: $5f
    inc bc                                        ; $53f8: $03
    ld [bc], a                                    ; $53f9: $02
    nop                                           ; $53fa: $00
    ld e, e                                       ; $53fb: $5b
    ld bc, $035f                                  ; $53fc: $01 $5f $03
    ld e, a                                       ; $53ff: $5f
    inc bc                                        ; $5400: $03
    ld [bc], a                                    ; $5401: $02
    nop                                           ; $5402: $00
    ld e, e                                       ; $5403: $5b
    ld bc, $0685                                  ; $5404: $01 $85 $06
    ld e, a                                       ; $5407: $5f
    inc bc                                        ; $5408: $03
    adc b                                         ; $5409: $88
    nop                                           ; $540a: $00
    dec e                                         ; $540b: $1d
    inc bc                                        ; $540c: $03
    call nc, $fe32                                ; $540d: $d4 $32 $fe
    ccf                                           ; $5410: $3f
    ld h, $04                                     ; $5411: $26 $04
    ld a, b                                       ; $5413: $78
    ld a, [bc]                                    ; $5414: $0a
    ld e, b                                       ; $5415: $58
    dec sp                                        ; $5416: $3b
    ld e, a                                       ; $5417: $5f
    inc bc                                        ; $5418: $03
    ld [bc], a                                    ; $5419: $02
    nop                                           ; $541a: $00
    ld e, a                                       ; $541b: $5f
    inc bc                                        ; $541c: $03
    add l                                         ; $541d: $85
    ld b, $12                                     ; $541e: $06 $12
    ld a, [bc]                                    ; $5420: $0a
    ld [bc], a                                    ; $5421: $02
    nop                                           ; $5422: $00
    ld b, l                                       ; $5423: $45
    ld [bc], a                                    ; $5424: $02
    ld e, e                                       ; $5425: $5b
    ld bc, $035f                                  ; $5426: $01 $5f $03
    ld h, $04                                     ; $5429: $26 $04
    ld d, h                                       ; $542b: $54
    ld [de], a                                    ; $542c: $12
    ld a, [hl]                                    ; $542d: $7e
    dec bc                                        ; $542e: $0b
    rst $38                                       ; $542f: $ff
    ld c, a                                       ; $5430: $4f
    inc b                                         ; $5431: $04
    nop                                           ; $5432: $00
    sbc l                                         ; $5433: $9d
    rrca                                          ; $5434: $0f
    db $fc                                        ; $5435: $fc
    ld c, a                                       ; $5436: $4f
    dec bc                                        ; $5437: $0b
    ld bc, $0086                                  ; $5438: $01 $86 $00
    ld a, a                                       ; $543b: $7f
    dec de                                        ; $543c: $1b
    add l                                         ; $543d: $85
    ld b, $12                                     ; $543e: $06 $12
    ld a, [bc]                                    ; $5440: $0a
    ld [bc], a                                    ; $5441: $02
    nop                                           ; $5442: $00
    ld e, l                                       ; $5443: $5d
    ld [bc], a                                    ; $5444: $02
    ld h, [hl]                                    ; $5445: $66
    ld b, $de                                     ; $5446: $06 $de
    ld a, $67                                     ; $5448: $3e $67
    inc b                                         ; $544a: $04
    rrca                                          ; $544b: $0f
    ld d, $ff                                     ; $544c: $16 $ff
    ld b, a                                       ; $544e: $47
    reti                                          ; $544f: $d9


    ld [bc], a                                    ; $5450: $02
    adc b                                         ; $5451: $88
    inc b                                         ; $5452: $04
    jp nc, $d401                                  ; $5453: $d2 $01 $d4

    ld [hl+], a                                   ; $5456: $22
    cp l                                          ; $5457: $bd
    rrca                                          ; $5458: $0f
    add a                                         ; $5459: $87
    nop                                           ; $545a: $00
    add hl, de                                    ; $545b: $19
    ld b, a                                       ; $545c: $47
    ld h, [hl]                                    ; $545d: $66
    ld b, $7e                                     ; $545e: $06 $7e
    dec bc                                        ; $5460: $0b
    ld [bc], a                                    ; $5461: $02
    nop                                           ; $5462: $00
    ld b, [hl]                                    ; $5463: $46
    ld b, $98                                     ; $5464: $06 $98
    dec c                                         ; $5466: $0d
    rra                                           ; $5467: $1f
    inc de                                        ; $5468: $13
    ld h, $04                                     ; $5469: $26 $04
    ld d, e                                       ; $546b: $53
    ld e, $7e                                     ; $546c: $1e $7e
    rra                                           ; $546e: $1f
    ld l, d                                       ; $546f: $6a
    dec c                                         ; $5470: $0d
    ld b, l                                       ; $5471: $45
    ld [$3abd], sp                                ; $5472: $08 $bd $3a
    dec bc                                        ; $5475: $0b
    add hl, bc                                    ; $5476: $09
    ld d, e                                       ; $5477: $53
    ld a, [bc]                                    ; $5478: $0a
    ld h, [hl]                                    ; $5479: $66
    nop                                           ; $547a: $00
    cp l                                          ; $547b: $bd
    ld a, $08                                     ; $547c: $3e $08
    ld a, [bc]                                    ; $547e: $0a
    ld e, a                                       ; $547f: $5f
    inc bc                                        ; $5480: $03
    ld [bc], a                                    ; $5481: $02
    nop                                           ; $5482: $00
    inc a                                         ; $5483: $3c
    ld b, $26                                     ; $5484: $06 $26
    ld a, [bc]                                    ; $5486: $0a
    cp $46                                        ; $5487: $fe $46
    adc b                                         ; $5489: $88
    ld [$3252], sp                                ; $548a: $08 $52 $32
    rst $38                                       ; $548d: $ff
    dec sp                                        ; $548e: $3b
    or c                                          ; $548f: $b1
    add hl, bc                                    ; $5490: $09
    ld b, c                                       ; $5491: $41
    db $10                                        ; $5492: $10
    sbc d                                         ; $5493: $9a
    rrca                                          ; $5494: $0f
    ld c, l                                       ; $5495: $4d
    dec b                                         ; $5496: $05
    ld e, [hl]                                    ; $5497: $5e
    ld e, a                                       ; $5498: $5f
    ld b, l                                       ; $5499: $45
    nop                                           ; $549a: $00
    ld e, a                                       ; $549b: $5f
    inc bc                                        ; $549c: $03
    ld h, $0a                                     ; $549d: $26 $0a
    rst $18                                       ; $549f: $df
    ld d, a                                       ; $54a0: $57
    ld [bc], a                                    ; $54a1: $02
    nop                                           ; $54a2: $00
    add sp, $05                                   ; $54a3: $e8 $05
    ld e, e                                       ; $54a5: $5b
    ld bc, $037f                                  ; $54a6: $01 $7f $03
    add a                                         ; $54a9: $87
    ld [$235d], sp                                ; $54aa: $08 $5d $23
    rst $38                                       ; $54ad: $ff
    ld [hl], a                                    ; $54ae: $77
    nop                                           ; $54af: $00
    ld b, h                                       ; $54b0: $44
    nop                                           ; $54b1: $00
    inc l                                         ; $54b2: $2c
    ld a, [de]                                    ; $54b3: $1a
    rla                                           ; $54b4: $17
    xor c                                         ; $54b5: $a9
    ld [$4f9f], sp                                ; $54b6: $08 $9f $4f
    ld [bc], a                                    ; $54b9: $02
    nop                                           ; $54ba: $00
    ld e, a                                       ; $54bb: $5f
    inc bc                                        ; $54bc: $03
    rlca                                          ; $54bd: $07
    ld a, [bc]                                    ; $54be: $0a
    ret                                           ; $54bf: $c9


    ld [$0002], sp                                ; $54c0: $08 $02 $00
    or a                                          ; $54c3: $b7
    ld bc, $0968                                  ; $54c4: $01 $68 $09
    ld a, [hl]                                    ; $54c7: $7e
    rlca                                          ; $54c8: $07
    ld b, a                                       ; $54c9: $47
    nop                                           ; $54ca: $00
    ld a, l                                       ; $54cb: $7d
    rlca                                          ; $54cc: $07
    ld e, l                                       ; $54cd: $5d
    ld c, a                                       ; $54ce: $4f
    inc sp                                        ; $54cf: $33
    ld b, $47                                     ; $54d0: $06 $47
    nop                                           ; $54d2: $00
    ld e, e                                       ; $54d3: $5b
    ld a, [hl+]                                   ; $54d4: $2a
    ld e, [hl]                                    ; $54d5: $5e
    ld c, a                                       ; $54d6: $4f
    rst $18                                       ; $54d7: $df
    inc de                                        ; $54d8: $13
    ld b, [hl]                                    ; $54d9: $46
    inc b                                         ; $54da: $04
    ld e, a                                       ; $54db: $5f
    inc bc                                        ; $54dc: $03
    rst $20                                       ; $54dd: $e7
    add hl, bc                                    ; $54de: $09
    ld a, e                                       ; $54df: $7b
    cpl                                           ; $54e0: $2f
    ld [bc], a                                    ; $54e1: $02
    nop                                           ; $54e2: $00
    sbc b                                         ; $54e3: $98
    ld bc, $0948                                  ; $54e4: $01 $48 $09
    inc a                                         ; $54e7: $3c
    rlca                                          ; $54e8: $07
    ld l, b                                       ; $54e9: $68
    inc b                                         ; $54ea: $04
    ld d, a                                       ; $54eb: $57
    ld h, $3e                                     ; $54ec: $26 $3e
    ld b, e                                       ; $54ee: $43
    dec sp                                        ; $54ef: $3b
    rlca                                          ; $54f0: $07
    ld l, b                                       ; $54f1: $68
    nop                                           ; $54f2: $00
    jr jr_0d4_551b                                ; $54f3: $18 $26

    ld a, a                                       ; $54f5: $7f
    ld c, e                                       ; $54f6: $4b
    rst $18                                       ; $54f7: $df
    inc de                                        ; $54f8: $13
    ld b, [hl]                                    ; $54f9: $46
    inc b                                         ; $54fa: $04
    ld e, a                                       ; $54fb: $5f
    inc bc                                        ; $54fc: $03
    and a                                         ; $54fd: $a7
    dec c                                         ; $54fe: $0d
    jr c, jr_0d4_553c                             ; $54ff: $38 $3b

    ld [bc], a                                    ; $5501: $02
    nop                                           ; $5502: $00
    sub l                                         ; $5503: $95
    ld bc, $0f7d                                  ; $5504: $01 $7d $0f
    add hl, bc                                    ; $5507: $09
    add hl, bc                                    ; $5508: $09
    dec h                                         ; $5509: $25
    nop                                           ; $550a: $00
    ld a, [hl-]                                   ; $550b: $3a
    ld a, [hl+]                                   ; $550c: $2a
    db $dd                                        ; $550d: $dd
    ccf                                           ; $550e: $3f
    ld c, [hl]                                    ; $550f: $4e
    ld de, $0420                                  ; $5510: $11 $20 $04
    ld d, e                                       ; $5513: $53
    ld l, $bd                                     ; $5514: $2e $bd
    dec de                                        ; $5516: $1b
    db $eb                                        ; $5517: $eb
    inc b                                         ; $5518: $04
    ld [bc], a                                    ; $5519: $02
    nop                                           ; $551a: $00

jr_0d4_551b:
    ld e, a                                       ; $551b: $5f
    inc bc                                        ; $551c: $03
    add a                                         ; $551d: $87
    dec c                                         ; $551e: $0d
    xor d                                         ; $551f: $aa
    ld [$0002], sp                                ; $5520: $08 $02 $00
    or $09                                        ; $5523: $f6 $09
    cp $4f                                        ; $5525: $fe $4f
    ld a, a                                       ; $5527: $7f
    inc bc                                        ; $5528: $03
    adc d                                         ; $5529: $8a
    inc b                                         ; $552a: $04
    ld a, [hl-]                                   ; $552b: $3a
    ld h, $3e                                     ; $552c: $26 $3e
    ld c, e                                       ; $552e: $4b
    ld a, l                                       ; $552f: $7d
    rlca                                          ; $5530: $07
    and [hl]                                      ; $5531: $a6
    inc b                                         ; $5532: $04
    ret c                                         ; $5533: $d8

    ld [de], a                                    ; $5534: $12
    call c, $de43                                 ; $5535: $dc $43 $de
    rrca                                          ; $5538: $0f
    ld [bc], a                                    ; $5539: $02
    nop                                           ; $553a: $00
    ld e, a                                       ; $553b: $5f

jr_0d4_553c:
    inc bc                                        ; $553c: $03
    ld h, a                                       ; $553d: $67
    ld de, $04ec                                  ; $553e: $11 $ec $04
    ld [bc], a                                    ; $5541: $02
    nop                                           ; $5542: $00
    or [hl]                                       ; $5543: $b6
    dec b                                         ; $5544: $05
    rst $38                                       ; $5545: $ff
    scf                                           ; $5546: $37
    dec a                                         ; $5547: $3d
    inc bc                                        ; $5548: $03
    dec h                                         ; $5549: $25
    nop                                           ; $554a: $00
    ld e, d                                       ; $554b: $5a
    ld l, $bf                                     ; $554c: $2e $bf
    ld h, e                                       ; $554e: $63
    ld a, [c]                                     ; $554f: $f2
    ld bc, $0886                                  ; $5550: $01 $86 $08
    ld a, b                                       ; $5553: $78
    ld [bc], a                                    ; $5554: $02
    jr jr_0d4_559e                                ; $5555: $18 $47

    cp l                                          ; $5557: $bd
    rrca                                          ; $5558: $0f
    and a                                         ; $5559: $a7
    ld [$0b7e], sp                                ; $555a: $08 $7e $0b
    inc d                                         ; $555d: $14
    ld [bc], a                                    ; $555e: $02
    rst $38                                       ; $555f: $ff
    ld d, a                                       ; $5560: $57
    ld [bc], a                                    ; $5561: $02
    nop                                           ; $5562: $00
    ld e, e                                       ; $5563: $5b
    ld bc, $5f7e                                  ; $5564: $01 $7e $5f
    ld e, a                                       ; $5567: $5f
    inc bc                                        ; $5568: $03
    and a                                         ; $5569: $a7
    ld [$3add], sp                                ; $556a: $08 $dd $3a
    rst $38                                       ; $556d: $ff
    ld [hl], e                                    ; $556e: $73
    ld [hl], b                                    ; $556f: $70
    add hl, de                                    ; $5570: $19
    and [hl]                                      ; $5571: $a6
    ld [$3616], sp                                ; $5572: $08 $16 $36
    sbc a                                         ; $5575: $9f
    ld e, e                                       ; $5576: $5b
    cp d                                          ; $5577: $ba
    ld [bc], a                                    ; $5578: $02
    ld h, l                                       ; $5579: $65
    inc b                                         ; $557a: $04
    ld sp, hl                                     ; $557b: $f9
    ld [bc], a                                    ; $557c: $02
    cp $57                                        ; $557d: $fe $57
    sbc [hl]                                      ; $557f: $9e
    inc bc                                        ; $5580: $03
    ld [bc], a                                    ; $5581: $02
    nop                                           ; $5582: $00
    sbc d                                         ; $5583: $9a
    dec c                                         ; $5584: $0d
    cp $42                                        ; $5585: $fe $42
    ld e, a                                       ; $5587: $5f
    inc bc                                        ; $5588: $03
    inc l                                         ; $5589: $2c
    add hl, de                                    ; $558a: $19
    dec [hl]                                      ; $558b: $35
    ld [hl-], a                                   ; $558c: $32
    sbc a                                         ; $558d: $9f
    ld e, e                                       ; $558e: $5b
    sbc d                                         ; $558f: $9a
    ld a, [hl-]                                   ; $5590: $3a
    ret z                                         ; $5591: $c8

    db $10                                        ; $5592: $10
    cp l                                          ; $5593: $bd
    ld a, [hl-]                                   ; $5594: $3a
    sub b                                         ; $5595: $90
    dec h                                         ; $5596: $25
    ld a, [hl]                                    ; $5597: $7e
    ld d, a                                       ; $5598: $57
    ld h, l                                       ; $5599: $65
    ld [$0b9e], sp                                ; $559a: $08 $9e $0b
    sbc l                                         ; $559d: $9d

jr_0d4_559e:
    ld h, e                                       ; $559e: $63
    xor a                                         ; $559f: $af
    add hl, bc                                    ; $55a0: $09
    ld [bc], a                                    ; $55a1: $02
    nop                                           ; $55a2: $00
    ld e, e                                       ; $55a3: $5b
    ld bc, $369c                                  ; $55a4: $01 $9c $36
    ld e, a                                       ; $55a7: $5f
    inc bc                                        ; $55a8: $03
    dec l                                         ; $55a9: $2d
    dec d                                         ; $55aa: $15
    db $dd                                        ; $55ab: $dd
    ld a, [hl-]                                   ; $55ac: $3a
    ld a, $4f                                     ; $55ad: $3e $4f
    rst $18                                       ; $55af: $df
    ld h, a                                       ; $55b0: $67
    inc c                                         ; $55b1: $0c
    dec d                                         ; $55b2: $15
    db $fd                                        ; $55b3: $fd
    ld c, d                                       ; $55b4: $4a
    ld [hl], $36                                  ; $55b5: $36 $36
    sbc $6f                                       ; $55b7: $de $6f
    ld b, h                                       ; $55b9: $44
    inc b                                         ; $55ba: $04
    ld e, a                                       ; $55bb: $5f
    inc bc                                        ; $55bc: $03
    sbc [hl]                                      ; $55bd: $9e
    ld d, a                                       ; $55be: $57
    adc l                                         ; $55bf: $8d
    add hl, de                                    ; $55c0: $19
    ld [bc], a                                    ; $55c1: $02
    nop                                           ; $55c2: $00
    ld [hl], h                                    ; $55c3: $74
    dec d                                         ; $55c4: $15
    ld a, e                                       ; $55c5: $7b
    ld [hl-], a                                   ; $55c6: $32
    ld e, a                                       ; $55c7: $5f
    inc bc                                        ; $55c8: $03
    cp l                                          ; $55c9: $bd
    ld a, [hl-]                                   ; $55ca: $3a
    cp $46                                        ; $55cb: $fe $46
    ld e, $4f                                     ; $55cd: $1e $4f
    ld e, $47                                     ; $55cf: $1e $47
    ld [$dd10], a                                 ; $55d1: $ea $10 $dd
    ld b, d                                       ; $55d4: $42
    ld a, [hl]                                    ; $55d5: $7e
    ld e, e                                       ; $55d6: $5b
    jr jr_0d4_55ff                                ; $55d7: $18 $26

    ld h, [hl]                                    ; $55d9: $66
    ld [$367a], sp                                ; $55da: $08 $7a $36
    ld e, [hl]                                    ; $55dd: $5e
    ld e, a                                       ; $55de: $5f
    ld e, a                                       ; $55df: $5f
    inc bc                                        ; $55e0: $03
    ld [bc], a                                    ; $55e1: $02
    nop                                           ; $55e2: $00
    ld e, e                                       ; $55e3: $5b
    ld bc, $035f                                  ; $55e4: $01 $5f $03
    ld e, a                                       ; $55e7: $5f
    inc bc                                        ; $55e8: $03
    ld e, e                                       ; $55e9: $5b
    ld bc, $035f                                  ; $55ea: $01 $5f $03
    ld e, a                                       ; $55ed: $5f
    inc bc                                        ; $55ee: $03
    ld e, a                                       ; $55ef: $5f
    inc bc                                        ; $55f0: $03
    ld e, e                                       ; $55f1: $5b
    ld bc, $035f                                  ; $55f2: $01 $5f $03
    ld e, a                                       ; $55f5: $5f
    inc bc                                        ; $55f6: $03
    ld e, a                                       ; $55f7: $5f
    inc bc                                        ; $55f8: $03
    ld [bc], a                                    ; $55f9: $02
    nop                                           ; $55fa: $00
    ld e, e                                       ; $55fb: $5b
    ld bc, $035f                                  ; $55fc: $01 $5f $03

jr_0d4_55ff:
    ld e, a                                       ; $55ff: $5f
    inc bc                                        ; $5600: $03
    ld [bc], a                                    ; $5601: $02
    nop                                           ; $5602: $00
    ld a, h                                       ; $5603: $7c
    dec b                                         ; $5604: $05
    ld e, a                                       ; $5605: $5f
    inc bc                                        ; $5606: $03
    dec e                                         ; $5607: $1d
    ld [hl+], a                                   ; $5608: $22
    ld h, h                                       ; $5609: $64
    inc b                                         ; $560a: $04
    db $dd                                        ; $560b: $dd
    dec e                                         ; $560c: $1d
    ld e, a                                       ; $560d: $5f
    inc bc                                        ; $560e: $03
    or $08                                        ; $560f: $f6 $08
    adc h                                         ; $5611: $8c
    ld [$19bd], sp                                ; $5612: $08 $bd $19
    inc l                                         ; $5615: $2c
    rrca                                          ; $5616: $0f
    ld e, a                                       ; $5617: $5f
    inc bc                                        ; $5618: $03
    ld [bc], a                                    ; $5619: $02
    nop                                           ; $561a: $00
    ld e, a                                       ; $561b: $5f
    inc bc                                        ; $561c: $03
    inc l                                         ; $561d: $2c
    rrca                                          ; $561e: $0f
    inc l                                         ; $561f: $2c
    inc de                                        ; $5620: $13
    ld bc, $f800                                  ; $5621: $01 $00 $f8
    nop                                           ; $5624: $00
    ld e, a                                       ; $5625: $5f
    inc bc                                        ; $5626: $03
    ld c, e                                       ; $5627: $4b
    nop                                           ; $5628: $00
    ld bc, $5500                                  ; $5629: $01 $00 $55
    add hl, de                                    ; $562c: $19
    ld a, l                                       ; $562d: $7d
    dec d                                         ; $562e: $15
    ld c, d                                       ; $562f: $4a
    nop                                           ; $5630: $00
    ld l, c                                       ; $5631: $69
    inc b                                         ; $5632: $04
    dec c                                         ; $5633: $0d
    dec de                                        ; $5634: $1b
    scf                                           ; $5635: $37
    dec c                                         ; $5636: $0d
    ld a, h                                       ; $5637: $7c
    ld a, $02                                     ; $5638: $3e $02
    nop                                           ; $563a: $00
    dec c                                         ; $563b: $0d
    dec de                                        ; $563c: $1b
    ld e, a                                       ; $563d: $5f
    inc bc                                        ; $563e: $03
    rrca                                          ; $563f: $0f
    daa                                           ; $5640: $27
    ld bc, $fb00                                  ; $5641: $01 $00 $fb
    nop                                           ; $5644: $00
    db $fd                                        ; $5645: $fd
    ld [de], a                                    ; $5646: $12
    ld l, d                                       ; $5647: $6a
    inc b                                         ; $5648: $04
    inc hl                                        ; $5649: $23
    nop                                           ; $564a: $00
    inc sp                                        ; $564b: $33
    dec d                                         ; $564c: $15
    sbc e                                         ; $564d: $9b
    ld b, d                                       ; $564e: $42
    ld a, [de]                                    ; $564f: $1a
    dec c                                         ; $5650: $0d
    inc hl                                        ; $5651: $23
    nop                                           ; $5652: $00
    ld d, l                                       ; $5653: $55
    add hl, de                                    ; $5654: $19
    ld de, $ab37                                  ; $5655: $11 $37 $ab
    ld [$0002], sp                                ; $5658: $08 $02 $00
    ld de, $5f33                                  ; $565b: $11 $33 $5f
    inc bc                                        ; $565e: $03
    ld [de], a                                    ; $565f: $12
    dec sp                                        ; $5660: $3b
    ld [bc], a                                    ; $5661: $02
    nop                                           ; $5662: $00
    scf                                           ; $5663: $37
    add hl, bc                                    ; $5664: $09
    dec a                                         ; $5665: $3d
    ld [hl-], a                                   ; $5666: $32
    ld e, a                                       ; $5667: $5f
    inc bc                                        ; $5668: $03
    dec h                                         ; $5669: $25
    nop                                           ; $566a: $00
    ld [hl], $11                                  ; $566b: $36 $11
    ld a, e                                       ; $566d: $7b
    ld a, $ab                                     ; $566e: $3e $ab
    ld [$0001], sp                                ; $5670: $08 $01 $00
    dec de                                        ; $5673: $1b
    ld bc, $5f79                                  ; $5674: $01 $79 $5f
    ld l, h                                       ; $5677: $6c
    inc b                                         ; $5678: $04
    ld [bc], a                                    ; $5679: $02
    nop                                           ; $567a: $00
    inc de                                        ; $567b: $13
    ld b, e                                       ; $567c: $43
    ld e, a                                       ; $567d: $5f
    inc bc                                        ; $567e: $03
    ld l, h                                       ; $567f: $6c
    inc b                                         ; $5680: $04
    ld bc, $3900                                  ; $5681: $01 $00 $39
    dec b                                         ; $5684: $05
    ld e, a                                       ; $5685: $5f
    inc bc                                        ; $5686: $03
    ld h, a                                       ; $5687: $67
    inc b                                         ; $5688: $04
    ld b, h                                       ; $5689: $44
    nop                                           ; $568a: $00
    or a                                          ; $568b: $b7
    ld a, [hl-]                                   ; $568c: $3a
    or a                                          ; $568d: $b7
    nop                                           ; $568e: $00
    rst $38                                       ; $568f: $ff
    ld a, a                                       ; $5690: $7f
    ld h, l                                       ; $5691: $65
    inc b                                         ; $5692: $04
    rrca                                          ; $5693: $0f
    daa                                           ; $5694: $27
    ld e, l                                       ; $5695: $5d
    ld e, e                                       ; $5696: $5b
    cp e                                          ; $5697: $bb
    add hl, de                                    ; $5698: $19
    ld bc, $7d00                                  ; $5699: $01 $00 $7d
    ld a, $8d                                     ; $569c: $3e $8d
    ld [$035f], sp                                ; $569e: $08 $5f $03
    ld bc, $1600                                  ; $56a1: $01 $00 $16
    dec b                                         ; $56a4: $05
    db $dd                                        ; $56a5: $dd
    ld e, $aa                                     ; $56a6: $1e $aa
    ld [$0445], sp                                ; $56a8: $08 $45 $04
    sbc d                                         ; $56ab: $9a
    ld [hl], $31                                  ; $56ac: $36 $31
    add hl, de                                    ; $56ae: $19
    rst $38                                       ; $56af: $ff
    ld a, a                                       ; $56b0: $7f
    ld [bc], a                                    ; $56b1: $02
    nop                                           ; $56b2: $00
    sbc e                                         ; $56b3: $9b
    add hl, de                                    ; $56b4: $19
    ld l, e                                       ; $56b5: $6b
    nop                                           ; $56b6: $00
    dec c                                         ; $56b7: $0d
    add hl, de                                    ; $56b8: $19
    dec h                                         ; $56b9: $25
    nop                                           ; $56ba: $00
    ld d, a                                       ; $56bb: $57
    dec d                                         ; $56bc: $15
    ld e, a                                       ; $56bd: $5f
    inc bc                                        ; $56be: $03
    ld a, [hl-]                                   ; $56bf: $3a
    ld [hl], $02                                  ; $56c0: $36 $02
    nop                                           ; $56c2: $00
    push af                                       ; $56c3: $f5
    inc b                                         ; $56c4: $04
    ld e, a                                       ; $56c5: $5f
    inc bc                                        ; $56c6: $03
    ld l, d                                       ; $56c7: $6a
    ld [$0000], sp                                ; $56c8: $08 $00 $00
    ld a, e                                       ; $56cb: $7b
    ld a, $ef                                     ; $56cc: $3e $ef
    db $10                                        ; $56ce: $10
    ld c, d                                       ; $56cf: $4a
    nop                                           ; $56d0: $00
    nop                                           ; $56d1: $00
    nop                                           ; $56d2: $00
    add hl, de                                    ; $56d3: $19
    dec b                                         ; $56d4: $05
    call c, $4925                                 ; $56d5: $dc $25 $49
    nop                                           ; $56d8: $00
    inc h                                         ; $56d9: $24
    nop                                           ; $56da: $00
    ld a, h                                       ; $56db: $7c
    ld de, $46be                                  ; $56dc: $11 $be $46
    ld e, a                                       ; $56df: $5f
    inc bc                                        ; $56e0: $03
    ld bc, $3b00                                  ; $56e1: $01 $00 $3b
    add hl, bc                                    ; $56e4: $09
    adc h                                         ; $56e5: $8c
    inc b                                         ; $56e6: $04
    ld e, a                                       ; $56e7: $5f
    inc bc                                        ; $56e8: $03
    ld bc, $d400                                  ; $56e9: $01 $00 $d4
    inc b                                         ; $56ec: $04
    ccf                                           ; $56ed: $3f
    ld h, $4d                                     ; $56ee: $26 $4d
    nop                                           ; $56f0: $00
    add hl, hl                                    ; $56f1: $29
    nop                                           ; $56f2: $00
    rst $30                                       ; $56f3: $f7
    inc c                                         ; $56f4: $0c
    sbc [hl]                                      ; $56f5: $9e
    dec d                                         ; $56f6: $15
    or c                                          ; $56f7: $b1
    ld [$0004], sp                                ; $56f8: $08 $04 $00
    ld e, h                                       ; $56fb: $5c
    ld de, $3a7e                                  ; $56fc: $11 $7e $3a
    ld e, a                                       ; $56ff: $5f
    inc bc                                        ; $5700: $03
    ld [bc], a                                    ; $5701: $02
    nop                                           ; $5702: $00
    pop af                                        ; $5703: $f1
    inc c                                         ; $5704: $0c
    ld e, a                                       ; $5705: $5f
    inc bc                                        ; $5706: $03
    dec de                                        ; $5707: $1b
    dec b                                         ; $5708: $05
    inc b                                         ; $5709: $04
    nop                                           ; $570a: $00
    db $f4                                        ; $570b: $f4
    ld [$119f], sp                                ; $570c: $08 $9f $11
    db $fc                                        ; $570f: $fc
    ld hl, $0001                                  ; $5710: $21 $01 $00
    ld e, a                                       ; $5713: $5f
    add hl, bc                                    ; $5714: $09
    ld c, e                                       ; $5715: $4b
    nop                                           ; $5716: $00
    dec e                                         ; $5717: $1d
    ld [hl+], a                                   ; $5718: $22
    ld [bc], a                                    ; $5719: $02
    nop                                           ; $571a: $00
    ld a, [de]                                    ; $571b: $1a
    add hl, bc                                    ; $571c: $09
    ld e, a                                       ; $571d: $5f
    inc bc                                        ; $571e: $03
    ld c, c                                       ; $571f: $49
    inc b                                         ; $5720: $04
    ld [bc], a                                    ; $5721: $02
    nop                                           ; $5722: $00
    rla                                           ; $5723: $17
    dec b                                         ; $5724: $05
    sbc a                                         ; $5725: $9f
    ld c, $4b                                     ; $5726: $0e $4b
    nop                                           ; $5728: $00
    ld [bc], a                                    ; $5729: $02
    nop                                           ; $572a: $00
    dec d                                         ; $572b: $15
    dec c                                         ; $572c: $0d
    adc h                                         ; $572d: $8c
    ld [$15bf], sp                                ; $572e: $08 $bf $15
    ld bc, $f700                                  ; $5731: $01 $00 $f7
    inc c                                         ; $5734: $0c
    db $fd                                        ; $5735: $fd
    ld hl, $0447                                  ; $5736: $21 $47 $04
    ld bc, $fb00                                  ; $5739: $01 $00 $fb
    ld [$035f], sp                                ; $573c: $08 $5f $03
    adc h                                         ; $573f: $8c
    nop                                           ; $5740: $00
    ld [bc], a                                    ; $5741: $02
    nop                                           ; $5742: $00
    or b                                          ; $5743: $b0
    ld [$035f], sp                                ; $5744: $08 $5f $03
    dec sp                                        ; $5747: $3b
    dec b                                         ; $5748: $05
    ld bc, $b500                                  ; $5749: $01 $00 $b5
    nop                                           ; $574c: $00
    ld c, c                                       ; $574d: $49
    nop                                           ; $574e: $00
    ld a, l                                       ; $574f: $7d
    ld de, $0000                                  ; $5750: $11 $00 $00
    ld a, [c]                                     ; $5753: $f2
    inc c                                         ; $5754: $0c
    ld a, [hl]                                    ; $5755: $7e
    ld de, $0467                                  ; $5756: $11 $67 $04
    dec h                                         ; $5759: $25
    nop                                           ; $575a: $00
    ld a, e                                       ; $575b: $7b
    ld b, d                                       ; $575c: $42
    ld e, a                                       ; $575d: $5f
    inc bc                                        ; $575e: $03
    rst $38                                       ; $575f: $ff
    ld d, d                                       ; $5760: $52
    ld [bc], a                                    ; $5761: $02
    nop                                           ; $5762: $00
    inc [hl]                                      ; $5763: $34
    add hl, de                                    ; $5764: $19
    ld e, a                                       ; $5765: $5f
    inc bc                                        ; $5766: $03
    sbc h                                         ; $5767: $9c
    dec c                                         ; $5768: $0d
    ld bc, $b100                                  ; $5769: $01 $00 $b1
    inc b                                         ; $576c: $04
    ld l, b                                       ; $576d: $68
    inc b                                         ; $576e: $04
    ld a, [de]                                    ; $576f: $1a
    add hl, bc                                    ; $5770: $09
    nop                                           ; $5771: $00
    nop                                           ; $5772: $00
    adc e                                         ; $5773: $8b
    inc b                                         ; $5774: $04
    di                                            ; $5775: $f3
    ld [$0025], sp                                ; $5776: $08 $25 $00
    ld bc, $7c00                                  ; $5779: $01 $00 $7c
    ld a, $5f                                     ; $577c: $3e $5f
    inc bc                                        ; $577e: $03
    ld l, c                                       ; $577f: $69
    inc b                                         ; $5780: $04
    ld bc, $9900                                  ; $5781: $01 $00 $99
    add hl, de                                    ; $5784: $19
    ld e, a                                       ; $5785: $5f
    inc bc                                        ; $5786: $03
    adc b                                         ; $5787: $88
    inc b                                         ; $5788: $04
    ld bc, $8d00                                  ; $5789: $01 $00 $8d
    ld [$1957], sp                                ; $578c: $08 $57 $19
    ld h, a                                       ; $578f: $67
    inc b                                         ; $5790: $04
    ld bc, $5b00                                  ; $5791: $01 $00 $5b
    ld a, [hl-]                                   ; $5794: $3a
    xor $10                                       ; $5795: $ee $10
    cp $4a                                        ; $5797: $fe $4a
    ld [bc], a                                    ; $5799: $02
    nop                                           ; $579a: $00
    ld a, d                                       ; $579b: $7a
    ld a, $5f                                     ; $579c: $3e $5f
    inc bc                                        ; $579e: $03
    adc c                                         ; $579f: $89
    ld [$0002], sp                                ; $57a0: $08 $02 $00
    jr c, @+$07                                   ; $57a3: $38 $05

    sbc h                                         ; $57a5: $9c
    ld b, d                                       ; $57a6: $42
    ld e, a                                       ; $57a7: $5f
    inc bc                                        ; $57a8: $03
    ld bc, $7600                                  ; $57a9: $01 $00 $76
    dec e                                         ; $57ac: $1d
    ld a, h                                       ; $57ad: $7c
    ld a, $ce                                     ; $57ae: $3e $ce
    inc c                                         ; $57b0: $0c
    db $ed                                        ; $57b1: $ed
    inc d                                         ; $57b2: $14
    sbc h                                         ; $57b3: $9c
    ld b, d                                       ; $57b4: $42
    db $dd                                        ; $57b5: $dd
    ld c, [hl]                                    ; $57b6: $4e
    cp $4e                                        ; $57b7: $fe $4e
    ld [bc], a                                    ; $57b9: $02
    nop                                           ; $57ba: $00
    ld a, d                                       ; $57bb: $7a
    ld a, $5f                                     ; $57bc: $3e $5f
    inc bc                                        ; $57be: $03
    ld de, $0211                                  ; $57bf: $11 $11 $02
    nop                                           ; $57c2: $00
    ld d, a                                       ; $57c3: $57
    dec b                                         ; $57c4: $05
    cp h                                          ; $57c5: $bc
    ld b, [hl]                                    ; $57c6: $46
    ld e, a                                       ; $57c7: $5f
    inc bc                                        ; $57c8: $03
    ld bc, $7500                                  ; $57c9: $01 $00 $75
    dec e                                         ; $57cc: $1d
    sbc h                                         ; $57cd: $9c
    ld b, d                                       ; $57ce: $42
    call $bc0c                                    ; $57cf: $cd $0c $bc
    ld b, [hl]                                    ; $57d2: $46
    db $dd                                        ; $57d3: $dd
    ld c, [hl]                                    ; $57d4: $4e
    cp $52                                        ; $57d5: $fe $52
    sbc $4e                                       ; $57d7: $de $4e
    inc hl                                        ; $57d9: $23
    nop                                           ; $57da: $00
    push de                                       ; $57db: $d5
    add hl, hl                                    ; $57dc: $29
    ld e, a                                       ; $57dd: $5f
    inc bc                                        ; $57de: $03
    sbc e                                         ; $57df: $9b
    ld b, d                                       ; $57e0: $42
    ld [bc], a                                    ; $57e1: $02
    nop                                           ; $57e2: $00
    ld e, e                                       ; $57e3: $5b
    ld bc, $035f                                  ; $57e4: $01 $5f $03
    sbc e                                         ; $57e7: $9b
    ld b, d                                       ; $57e8: $42
    ld e, e                                       ; $57e9: $5b
    ld bc, $035f                                  ; $57ea: $01 $5f $03
    ld e, a                                       ; $57ed: $5f
    inc bc                                        ; $57ee: $03
    sbc e                                         ; $57ef: $9b
    ld b, d                                       ; $57f0: $42
    ld e, e                                       ; $57f1: $5b
    ld bc, $035f                                  ; $57f2: $01 $5f $03
    ld e, a                                       ; $57f5: $5f
    inc bc                                        ; $57f6: $03
    sbc e                                         ; $57f7: $9b
    ld b, d                                       ; $57f8: $42
    ld [bc], a                                    ; $57f9: $02
    nop                                           ; $57fa: $00
    ld e, e                                       ; $57fb: $5b
    ld bc, $035f                                  ; $57fc: $01 $5f $03
    sbc e                                         ; $57ff: $9b
    ld b, d                                       ; $5800: $42

    db $02, $00, $5b, $01, $5f, $03, $e2, $28, $e2, $28, $5f, $03, $5f, $03, $e2, $28
    db $e2, $28, $5f, $03, $5f, $03, $e2, $28, $02, $00, $5c, $05, $5f, $03, $67, $04
    db $01, $00, $5c, $01, $03, $5e, $5f, $03, $67, $04, $a4, $45, $c5, $1c, $86, $10
    db $86, $0c, $a3, $45, $c4, $7e, $c5, $1c, $02, $00, $5c, $05, $5f, $03, $e2, $28
    db $02, $00, $5c, $01, $01, $31, $5f, $03, $c5, $1c, $9c, $6b, $a7, $10, $e6, $1c
    db $a2, $49, $9c, $6b, $c5, $1c, $a7, $10, $02, $00, $7c, $05, $5f, $03, $e2, $28
    db $02, $00, $7c, $01, $01, $31, $5f, $03, $c5, $1c, $9c, $6b, $5d, $14, $a7, $10
    db $a2, $49, $9c, $6b, $c5, $1c, $a7, $10, $02, $00, $9c, $05, $5f, $03, $e2, $28
    db $02, $00, $9c, $01, $01, $31, $5f, $03, $c5, $1c, $9c, $6b, $a7, $10, $e6, $1c
    db $a2, $49, $9c, $6b, $c5, $1c, $a7, $10, $02, $00, $bc, $05, $5f, $03, $e2, $28
    db $02, $00, $bc, $01, $01, $31, $5f, $03, $c5, $1c, $9c, $6b, $a7, $10, $e6, $1c
    db $a2, $49, $9c, $6b, $c5, $1c, $a7, $10, $02, $00, $dd, $05, $5f, $03, $e2, $28
    db $02, $00, $dc, $01, $01, $31, $5f, $03, $86, $10, $38, $5f, $c5, $1c, $9c, $6b
    db $a5, $18, $9c, $6b, $a3, $41, $6c, $1d, $02, $00, $fd, $05, $5f, $03, $e2, $28
    db $01, $00, $fc, $01, $e3, $55, $5f, $03, $e3, $59, $c6, $31, $51, $46, $87, $0c
    db $87, $1c, $03, $5a, $30, $42, $a9, $1d, $02, $00, $1d, $06, $5f, $03, $c1, $20
    db $01, $00, $1d, $02, $64, $6e, $5f, $03, $c0, $24, $e3, $55, $64, $6e, $03, $5a
    db $60, $14, $e3, $59, $62, $41, $64, $6e, $a1, $1c, $3e, $06, $5f, $03, $02, $00
    db $01, $00, $5b, $01, $64, $6e, $9e, $02, $21, $00, $a2, $49, $43, $6a, $e3, $55
    db $40, $10, $62, $41, $03, $5a, $63, $6e, $a0, $20, $5e, $06, $5f, $03, $02, $00
    db $01, $00, $5b, $01, $64, $6e, $be, $02, $21, $00, $c2, $55, $43, $66, $c1, $24
    db $40, $08, $82, $45, $23, $62, $c0, $24, $a1, $1c, $9e, $06, $02, $00, $5f, $03
    db $01, $00, $5b, $01, $64, $6e, $de, $02, $e3, $55, $23, $62, $e3, $59, $43, $66
    db $e3, $55, $23, $62, $63, $6e, $e3, $59, $a1, $1c, $be, $06, $02, $00, $5f, $03
    db $01, $00, $5b, $01, $64, $6e, $ff, $02, $62, $41, $e3, $59, $43, $66, $03, $5a
    db $62, $41, $e3, $55, $43, $6a, $03, $5a, $a1, $1c, $df, $06, $02, $00, $5f, $03
    db $01, $00, $5b, $01, $84, $76, $ff, $02, $e3, $55, $43, $66, $e3, $59, $ff, $02
    db $82, $45, $43, $6a, $e3, $55, $c4, $7e, $a0, $20, $ff, $06, $02, $00, $5f, $03
    db $60, $14, $5b, $01, $1f, $03, $02, $00, $e2, $28, $a2, $49, $43, $66, $02, $00
    db $c1, $24, $a2, $49, $1f, $07, $43, $66, $02, $00, $1f, $07, $5f, $03, $43, $66
    db $02, $00, $5b, $01, $5f, $03, $43, $66, $5b, $01, $5f, $03, $5f, $03, $43, $66
    db $5b, $01, $5f, $03, $5f, $03, $43, $66, $02, $00, $5b, $01, $5f, $03, $43, $66

    ld [bc], a                                    ; $5a01: $02
    nop                                           ; $5a02: $00
    ld e, e                                       ; $5a03: $5b
    ld bc, $0180                                  ; $5a04: $01 $80 $01
    ld e, a                                       ; $5a07: $5f
    inc bc                                        ; $5a08: $03
    ld h, e                                       ; $5a09: $63
    ld a, [bc]                                    ; $5a0a: $0a
    ld e, a                                       ; $5a0b: $5f
    inc bc                                        ; $5a0c: $03
    ld d, l                                       ; $5a0d: $55
    ld de, $0068                                  ; $5a0e: $11 $68 $00
    ld b, b                                       ; $5a11: $40
    ld bc, $035f                                  ; $5a12: $01 $5f $03
    and c                                         ; $5a15: $a1
    ld bc, $05e1                                  ; $5a16: $01 $e1 $05
    jr nz, jr_0d4_5a1c                            ; $5a19: $20 $01

    ld e, a                                       ; $5a1b: $5f

jr_0d4_5a1c:
    inc bc                                        ; $5a1c: $03
    ld [bc], a                                    ; $5a1d: $02
    nop                                           ; $5a1e: $00
    pop hl                                        ; $5a1f: $e1
    dec b                                         ; $5a20: $05
    ld [bc], a                                    ; $5a21: $02
    nop                                           ; $5a22: $00
    ld e, e                                       ; $5a23: $5b
    ld bc, $01a0                                  ; $5a24: $01 $a0 $01
    ld e, a                                       ; $5a27: $5f
    inc bc                                        ; $5a28: $03
    ld l, b                                       ; $5a29: $68
    nop                                           ; $5a2a: $00
    jp c, Jump_000_131d                           ; $5a2b: $da $1d $13

    dec c                                         ; $5a2e: $0d
    xor h                                         ; $5a2f: $ac
    ld [$0180], sp                                ; $5a30: $08 $80 $01
    ld l, c                                       ; $5a33: $69
    nop                                           ; $5a34: $00
    inc de                                        ; $5a35: $13
    dec c                                         ; $5a36: $0d
    ld bc, $2006                                  ; $5a37: $01 $06 $20
    ld bc, $035f                                  ; $5a3a: $01 $5f $03
    ld [bc], a                                    ; $5a3d: $02
    nop                                           ; $5a3e: $00
    ld h, b                                       ; $5a3f: $60
    ld bc, $01a0                                  ; $5a40: $01 $a0 $01
    ld e, b                                       ; $5a43: $58
    dec c                                         ; $5a44: $0d
    ld [bc], a                                    ; $5a45: $02
    nop                                           ; $5a46: $00
    ld e, a                                       ; $5a47: $5f
    inc bc                                        ; $5a48: $03
    ld l, b                                       ; $5a49: $68
    nop                                           ; $5a4a: $00
    ld a, [c]                                     ; $5a4b: $f2
    ld [$2593], sp                                ; $5a4c: $08 $93 $25
    cp c                                          ; $5a4f: $b9
    add hl, de                                    ; $5a50: $19
    ld hl, $8a06                                  ; $5a51: $21 $06 $8a
    inc b                                         ; $5a54: $04
    inc de                                        ; $5a55: $13
    dec c                                         ; $5a56: $0d
    cp c                                          ; $5a57: $b9
    add hl, de                                    ; $5a58: $19
    ld h, b                                       ; $5a59: $60
    ld bc, $035f                                  ; $5a5a: $01 $5f $03
    ld [bc], a                                    ; $5a5d: $02
    nop                                           ; $5a5e: $00
    and b                                         ; $5a5f: $a0
    ld bc, $05c0                                  ; $5a60: $01 $c0 $05
    ld d, a                                       ; $5a63: $57
    dec c                                         ; $5a64: $0d
    ld [bc], a                                    ; $5a65: $02
    nop                                           ; $5a66: $00
    ld e, a                                       ; $5a67: $5f
    inc bc                                        ; $5a68: $03
    ld l, b                                       ; $5a69: $68
    nop                                           ; $5a6a: $00
    add hl, sp                                    ; $5a6b: $39
    ld a, $ff                                     ; $5a6c: $3e $ff
    ld d, d                                       ; $5a6e: $52
    ld d, e                                       ; $5a6f: $53
    add hl, de                                    ; $5a70: $19
    ld b, c                                       ; $5a71: $41
    ld a, [bc]                                    ; $5a72: $0a
    adc c                                         ; $5a73: $89
    nop                                           ; $5a74: $00
    ld a, [$1321]                                 ; $5a75: $fa $21 $13
    dec c                                         ; $5a78: $0d
    ret nz                                        ; $5a79: $c0

    ld bc, $035f                                  ; $5a7a: $01 $5f $03
    ld [bc], a                                    ; $5a7d: $02
    nop                                           ; $5a7e: $00
    jr nz, jr_0d4_5a87                            ; $5a7f: $20 $06

    nop                                           ; $5a81: $00
    ld b, $5d                                     ; $5a82: $06 $5d
    ld [bc], a                                    ; $5a84: $02
    ld [bc], a                                    ; $5a85: $02
    nop                                           ; $5a86: $00

jr_0d4_5a87:
    jr jr_0d4_5abf                                ; $5a87: $18 $36

    add hl, de                                    ; $5a89: $19
    ld [hl], $ff                                  ; $5a8a: $36 $ff
    ld d, d                                       ; $5a8c: $52
    ld a, e                                       ; $5a8d: $7b
    ld b, d                                       ; $5a8e: $42
    ccf                                           ; $5a8f: $3f
    ld h, e                                       ; $5a90: $63
    add c                                         ; $5a91: $81
    ld c, $13                                     ; $5a92: $0e $13
    dec c                                         ; $5a94: $0d
    ld l, b                                       ; $5a95: $68
    nop                                           ; $5a96: $00
    jp c, $001d                                   ; $5a97: $da $1d $00

    ld b, $5f                                     ; $5a9a: $06 $5f
    inc bc                                        ; $5a9c: $03
    ld [bc], a                                    ; $5a9d: $02
    nop                                           ; $5a9e: $00
    add b                                         ; $5a9f: $80
    ld c, $02                                     ; $5aa0: $0e $02
    nop                                           ; $5aa2: $00
    ld h, b                                       ; $5aa3: $60
    ld a, [bc]                                    ; $5aa4: $0a
    ld a, [de]                                    ; $5aa5: $1a
    ld b, $d6                                     ; $5aa6: $06 $d6
    ld [hl], d                                    ; $5aa8: $72
    rst $20                                       ; $5aa9: $e7
    ld d, h                                       ; $5aaa: $54
    ld a, [de]                                    ; $5aab: $1a
    ld [hl], $ab                                  ; $5aac: $36 $ab
    inc b                                         ; $5aae: $04
    inc e                                         ; $5aaf: $1c
    ld h, e                                       ; $5ab0: $63
    add a                                         ; $5ab1: $87
    nop                                           ; $5ab2: $00
    rst $10                                       ; $5ab3: $d7
    dec h                                         ; $5ab4: $25
    inc de                                        ; $5ab5: $13
    dec c                                         ; $5ab6: $0d
    rra                                           ; $5ab7: $1f
    ld e, e                                       ; $5ab8: $5b
    ld [bc], a                                    ; $5ab9: $02
    nop                                           ; $5aba: $00
    ld e, a                                       ; $5abb: $5f
    inc bc                                        ; $5abc: $03
    ld b, b                                       ; $5abd: $40
    ld a, [bc]                                    ; $5abe: $0a

jr_0d4_5abf:
    ldh [rNR21], a                                ; $5abf: $e0 $16
    ld [bc], a                                    ; $5ac1: $02
    nop                                           ; $5ac2: $00
    add b                                         ; $5ac3: $80
    ld c, $79                                     ; $5ac4: $0e $79
    ld de, $035f                                  ; $5ac6: $11 $5f $03
    add l                                         ; $5ac9: $85
    inc e                                         ; $5aca: $1c
    rst $30                                       ; $5acb: $f7
    dec [hl]                                      ; $5acc: $35
    ld [hl], e                                    ; $5acd: $73
    ld l, d                                       ; $5ace: $6a
    rra                                           ; $5acf: $1f
    ld d, a                                       ; $5ad0: $57
    ld l, b                                       ; $5ad1: $68
    nop                                           ; $5ad2: $00
    sbc $52                                       ; $5ad3: $de $52
    inc de                                        ; $5ad5: $13
    dec c                                         ; $5ad6: $0d
    or h                                          ; $5ad7: $b4
    add hl, hl                                    ; $5ad8: $29
    ld [bc], a                                    ; $5ad9: $02
    nop                                           ; $5ada: $00
    ld e, a                                       ; $5adb: $5f
    inc bc                                        ; $5adc: $03
    add b                                         ; $5add: $80
    ld c, $01                                     ; $5ade: $0e $01
    inc hl                                        ; $5ae0: $23
    ld [bc], a                                    ; $5ae1: $02
    nop                                           ; $5ae2: $00
    ret nz                                        ; $5ae3: $c0

    ld d, $5d                                     ; $5ae4: $16 $5d
    ld [bc], a                                    ; $5ae6: $02
    rra                                           ; $5ae7: $1f
    ld e, e                                       ; $5ae8: $5b
    rrca                                          ; $5ae9: $0f
    dec d                                         ; $5aea: $15
    ld a, [de]                                    ; $5aeb: $1a
    ld [hl], $ff                                  ; $5aec: $36 $ff
    ld d, d                                       ; $5aee: $52
    rra                                           ; $5aef: $1f
    ld e, e                                       ; $5af0: $5b
    ld l, b                                       ; $5af1: $68
    nop                                           ; $5af2: $00
    rst $38                                       ; $5af3: $ff
    ld d, d                                       ; $5af4: $52
    ld [hl-], a                                   ; $5af5: $32
    dec d                                         ; $5af6: $15
    rst $10                                       ; $5af7: $d7
    dec h                                         ; $5af8: $25
    ld h, $00                                     ; $5af9: $26 $00
    ld e, a                                       ; $5afb: $5f
    inc bc                                        ; $5afc: $03
    and b                                         ; $5afd: $a0
    ld c, $21                                     ; $5afe: $0e $21
    daa                                           ; $5b00: $27
    ld [bc], a                                    ; $5b01: $02
    nop                                           ; $5b02: $00
    and b                                         ; $5b03: $a0
    ld d, $77                                     ; $5b04: $16 $77
    dec d                                         ; $5b06: $15
    ld e, a                                       ; $5b07: $5f
    inc bc                                        ; $5b08: $03
    scf                                           ; $5b09: $37
    add hl, de                                    ; $5b0a: $19
    ld a, e                                       ; $5b0b: $7b
    ld b, [hl]                                    ; $5b0c: $46
    rst $38                                       ; $5b0d: $ff
    ld d, d                                       ; $5b0e: $52
    ld sp, hl                                     ; $5b0f: $f9
    ld sp, $048b                                  ; $5b10: $31 $8b $04
    cp c                                          ; $5b13: $b9
    add hl, de                                    ; $5b14: $19
    sbc h                                         ; $5b15: $9c
    ld c, d                                       ; $5b16: $4a
    inc de                                        ; $5b17: $13
    dec c                                         ; $5b18: $0d
    ld [bc], a                                    ; $5b19: $02
    nop                                           ; $5b1a: $00
    ldh a, [$08]                                  ; $5b1b: $f0 $08
    ldh [rNR30], a                                ; $5b1d: $e0 $1a
    ld e, a                                       ; $5b1f: $5f
    inc bc                                        ; $5b20: $03
    ld [bc], a                                    ; $5b21: $02
    nop                                           ; $5b22: $00
    ldh [rNR34], a                                ; $5b23: $e0 $1e

Call_0d4_5b25:
    dec [hl]                                      ; $5b25: $35
    dec c                                         ; $5b26: $0d
    ld e, a                                       ; $5b27: $5f
    inc bc                                        ; $5b28: $03
    inc d                                         ; $5b29: $14
    dec d                                         ; $5b2a: $15
    ld a, e                                       ; $5b2b: $7b
    ld b, [hl]                                    ; $5b2c: $46
    ld sp, hl                                     ; $5b2d: $f9
    ld sp, $52df                                  ; $5b2e: $31 $df $52
    adc d                                         ; $5b31: $8a
    inc b                                         ; $5b32: $04
    cp c                                          ; $5b33: $b9
    add hl, de                                    ; $5b34: $19

Jump_0d4_5b35:
    inc de                                        ; $5b35: $13
    dec c                                         ; $5b36: $0d
    dec de                                        ; $5b37: $1b
    ld h, $e0                                     ; $5b38: $26 $e0
    ld e, $25                                     ; $5b3a: $1e $25
    nop                                           ; $5b3c: $00
    ld e, a                                       ; $5b3d: $5f
    inc bc                                        ; $5b3e: $03
    inc de                                        ; $5b3f: $13
    dec c                                         ; $5b40: $0d
    ld [bc], a                                    ; $5b41: $02
    nop                                           ; $5b42: $00
    inc d                                         ; $5b43: $14
    add hl, bc                                    ; $5b44: $09
    ld e, a                                       ; $5b45: $5f
    inc bc                                        ; $5b46: $03
    rst $00                                       ; $5b47: $c7
    inc b                                         ; $5b48: $04
    ld l, c                                       ; $5b49: $69
    nop                                           ; $5b4a: $00
    db $dd                                        ; $5b4b: $dd

Jump_0d4_5b4c:
    ld d, d                                       ; $5b4c: $52
    ld c, $15                                     ; $5b4d: $0e $15
    or h                                          ; $5b4f: $b4
    add hl, hl                                    ; $5b50: $29
    call $b90c                                    ; $5b51: $cd $0c $b9
    add hl, de                                    ; $5b54: $19
    inc de                                        ; $5b55: $13
    dec c                                         ; $5b56: $0d
    dec de                                        ; $5b57: $1b
    ld h, $20                                     ; $5b58: $26 $20
    daa                                           ; $5b5a: $27
    dec h                                         ; $5b5b: $25

Call_0d4_5b5c:
    nop                                           ; $5b5c: $00
    cp l                                          ; $5b5d: $bd
    ld a, [bc]                                    ; $5b5e: $0a
    ld a, [c]                                     ; $5b5f: $f2
    inc c                                         ; $5b60: $0c
    ld [bc], a                                    ; $5b61: $02
    nop                                           ; $5b62: $00
    ld a, [c]                                     ; $5b63: $f2
    ld [$035f], sp                                ; $5b64: $08 $5f $03
    sbc d                                         ; $5b67: $9a
    ld de, $0068                                  ; $5b68: $11 $68 $00
    ld sp, $b415                                  ; $5b6b: $31 $15 $b4
    dec l                                         ; $5b6e: $2d
    call z, $8b0c                                 ; $5b6f: $cc $0c $8b
    inc b                                         ; $5b72: $04
    inc de                                        ; $5b73: $13
    dec c                                         ; $5b74: $0d
    cp c                                          ; $5b75: $b9
    add hl, de                                    ; $5b76: $19
    ld c, $15                                     ; $5b77: $0e $15
    and b                                         ; $5b79: $a0
    ld a, [de]                                    ; $5b7a: $1a
    inc de                                        ; $5b7b: $13
    dec c                                         ; $5b7c: $0d
    ld b, l                                       ; $5b7d: $45
    nop                                           ; $5b7e: $00
    cp l                                          ; $5b7f: $bd
    ld [de], a                                    ; $5b80: $12
    ld [bc], a                                    ; $5b81: $02
    nop                                           ; $5b82: $00
    ld a, [c]                                     ; $5b83: $f2
    ld [$035f], sp                                ; $5b84: $08 $5f $03
    cp d                                          ; $5b87: $ba
    dec d                                         ; $5b88: $15
    ld l, b                                       ; $5b89: $68
    nop                                           ; $5b8a: $00
    ld [hl], d                                    ; $5b8b: $72
    dec h                                         ; $5b8c: $25
    jr c, jr_0d4_5bc9                             ; $5b8d: $38 $3a

    ld a, e                                       ; $5b8f: $7b
    ld b, d                                       ; $5b90: $42
    adc h                                         ; $5b91: $8c
    nop                                           ; $5b92: $00
    ld d, l                                       ; $5b93: $55
    dec d                                         ; $5b94: $15
    inc de                                        ; $5b95: $13
    dec c                                         ; $5b96: $0d
    jp c, $201d                                   ; $5b97: $da $1d $20

    daa                                           ; $5b9a: $27
    ld [hl], a                                    ; $5b9b: $77
    dec d                                         ; $5b9c: $15
    ld b, [hl]                                    ; $5b9d: $46
    nop                                           ; $5b9e: $00
    ld e, a                                       ; $5b9f: $5f
    inc bc                                        ; $5ba0: $03
    ld [bc], a                                    ; $5ba1: $02
    nop                                           ; $5ba2: $00
    pop af                                        ; $5ba3: $f1
    ld [$119a], sp                                ; $5ba4: $08 $9a $11
    ld a, $0f                                     ; $5ba7: $3e $0f
    adc c                                         ; $5ba9: $89
    inc b                                         ; $5baa: $04
    rla                                           ; $5bab: $17
    ld [hl], $10                                  ; $5bac: $36 $10
    dec d                                         ; $5bae: $15
    sbc h                                         ; $5baf: $9c
    ld c, d                                       ; $5bb0: $4a
    ld l, c                                       ; $5bb1: $69
    nop                                           ; $5bb2: $00
    cp c                                          ; $5bb3: $b9
    add hl, de                                    ; $5bb4: $19
    ld a, [c]                                     ; $5bb5: $f2
    ld [$04ae], sp                                ; $5bb6: $08 $ae $04
    add b                                         ; $5bb9: $80
    ld [de], a                                    ; $5bba: $12
    cp h                                          ; $5bbb: $bc
    ld a, [bc]                                    ; $5bbc: $0a
    ld b, a                                       ; $5bbd: $47
    nop                                           ; $5bbe: $00
    ld a, [c]                                     ; $5bbf: $f2
    ld [$0002], sp                                ; $5bc0: $08 $02 $00
    ld d, a                                       ; $5bc3: $57
    dec c                                         ; $5bc4: $0d
    ld a, $0f                                     ; $5bc5: $3e $0f
    ld l, d                                       ; $5bc7: $6a
    nop                                           ; $5bc8: $00

jr_0d4_5bc9:
    adc d                                         ; $5bc9: $8a
    inc b                                         ; $5bca: $04
    rla                                           ; $5bcb: $17
    ld [hl], $12                                  ; $5bcc: $36 $12
    ld de, $4abd                                  ; $5bce: $11 $bd $4a
    ld l, b                                       ; $5bd1: $68
    nop                                           ; $5bd2: $00
    xor [hl]                                      ; $5bd3: $ae
    inc b                                         ; $5bd4: $04
    inc de                                        ; $5bd5: $13
    dec c                                         ; $5bd6: $0d
    ret nc                                        ; $5bd7: $d0

    ld [$0002], sp                                ; $5bd8: $08 $02 $00
    ld e, a                                       ; $5bdb: $5f
    inc bc                                        ; $5bdc: $03
    rst $08                                       ; $5bdd: $cf
    ld [$0068], sp                                ; $5bde: $08 $68 $00
    ld [bc], a                                    ; $5be1: $02
    nop                                           ; $5be2: $00
    ld e, e                                       ; $5be3: $5b
    ld bc, $035f                                  ; $5be4: $01 $5f $03
    ld l, b                                       ; $5be7: $68
    nop                                           ; $5be8: $00
    ld e, e                                       ; $5be9: $5b
    ld bc, $035f                                  ; $5bea: $01 $5f $03
    ld e, a                                       ; $5bed: $5f
    inc bc                                        ; $5bee: $03
    ld l, b                                       ; $5bef: $68
    nop                                           ; $5bf0: $00
    ld e, e                                       ; $5bf1: $5b
    ld bc, $035f                                  ; $5bf2: $01 $5f $03
    ld e, a                                       ; $5bf5: $5f
    inc bc                                        ; $5bf6: $03
    ld l, b                                       ; $5bf7: $68
    nop                                           ; $5bf8: $00
    ld [bc], a                                    ; $5bf9: $02
    nop                                           ; $5bfa: $00
    ld e, e                                       ; $5bfb: $5b
    ld bc, $035f                                  ; $5bfc: $01 $5f $03
    ld l, b                                       ; $5bff: $68
    nop                                           ; $5c00: $00
    ld [bc], a                                    ; $5c01: $02
    nop                                           ; $5c02: $00
    ld e, e                                       ; $5c03: $5b
    ld bc, $3b1d                                  ; $5c04: $01 $1d $3b
    ld e, a                                       ; $5c07: $5f
    inc bc                                        ; $5c08: $03
    ld b, h                                       ; $5c09: $44
    ld [$3b1d], sp                                ; $5c0a: $08 $1d $3b
    ld e, a                                       ; $5c0d: $5f
    inc bc                                        ; $5c0e: $03
    ld l, [hl]                                    ; $5c0f: $6e
    dec e                                         ; $5c10: $1d
    ld h, l                                       ; $5c11: $65
    inc c                                         ; $5c12: $0c
    dec e                                         ; $5c13: $1d
    dec sp                                        ; $5c14: $3b
    ld e, a                                       ; $5c15: $5f
    inc bc                                        ; $5c16: $03
    jp nc, $0225                                  ; $5c17: $d2 $25 $02

    nop                                           ; $5c1a: $00
    dec e                                         ; $5c1b: $1d
    dec sp                                        ; $5c1c: $3b
    ld e, a                                       ; $5c1d: $5f
    inc bc                                        ; $5c1e: $03
    jp nc, $0225                                  ; $5c1f: $d2 $25 $02

    nop                                           ; $5c22: $00
    ld [hl], a                                    ; $5c23: $77
    add hl, bc                                    ; $5c24: $09
    db $fd                                        ; $5c25: $fd
    ld [hl-], a                                   ; $5c26: $32
    ld e, a                                       ; $5c27: $5f
    inc bc                                        ; $5c28: $03
    ld h, l                                       ; $5c29: $65
    inc c                                         ; $5c2a: $0c
    jr c, @+$40                                   ; $5c2b: $38 $3e

    ld [hl], c                                    ; $5c2d: $71
    dec h                                         ; $5c2e: $25
    inc c                                         ; $5c2f: $0c
    add hl, de                                    ; $5c30: $19
    ld bc, $7004                                  ; $5c31: $01 $04 $70
    ld hl, $35f6                                  ; $5c34: $21 $f6 $35
    call c, $023a                                 ; $5c37: $dc $3a $02
    nop                                           ; $5c3a: $00
    db $fd                                        ; $5c3b: $fd
    ld [hl-], a                                   ; $5c3c: $32
    ld e, a                                       ; $5c3d: $5f
    inc bc                                        ; $5c3e: $03
    db $fd                                        ; $5c3f: $fd
    ld [hl], $02                                  ; $5c40: $36 $02
    nop                                           ; $5c42: $00
    ld e, e                                       ; $5c43: $5b
    ld bc, $2ebc                                  ; $5c44: $01 $bc $2e
    ld e, a                                       ; $5c47: $5f
    inc bc                                        ; $5c48: $03
    nop                                           ; $5c49: $00
    nop                                           ; $5c4a: $00
    dec c                                         ; $5c4b: $0d
    add hl, de                                    ; $5c4c: $19
    or d                                          ; $5c4d: $b2
    dec l                                         ; $5c4e: $2d
    ld h, [hl]                                    ; $5c4f: $66
    ld [$0001], sp                                ; $5c50: $08 $01 $00
    dec c                                         ; $5c53: $0d
    add hl, de                                    ; $5c54: $19
    db $d3                                        ; $5c55: $d3
    dec l                                         ; $5c56: $2d
    ld a, d                                       ; $5c57: $7a
    ld b, d                                       ; $5c58: $42
    ld [bc], a                                    ; $5c59: $02
    nop                                           ; $5c5a: $00
    db $dd                                        ; $5c5b: $dd
    ld h, $5f                                     ; $5c5c: $26 $5f
    inc bc                                        ; $5c5e: $03
    db $dd                                        ; $5c5f: $dd
    ld l, $02                                     ; $5c60: $2e $02
    nop                                           ; $5c62: $00
    ld d, a                                       ; $5c63: $57
    add hl, bc                                    ; $5c64: $09

Call_0d4_5c65:
    db $dd                                        ; $5c65: $dd
    ld d, $0c                                     ; $5c66: $16 $0c
    dec d                                         ; $5c68: $15
    ld hl, $9a00                                  ; $5c69: $21 $00 $9a
    ld b, [hl]                                    ; $5c6c: $46
    ld l, $1d                                     ; $5c6d: $2e $1d
    db $fd                                        ; $5c6f: $fd
    ld d, [hl]                                    ; $5c70: $56
    inc hl                                        ; $5c71: $23
    inc b                                         ; $5c72: $04
    dec c                                         ; $5c73: $0d
    add hl, de                                    ; $5c74: $19
    sbc d                                         ; $5c75: $9a
    ld b, [hl]                                    ; $5c76: $46
    sub d                                         ; $5c77: $92
    add hl, hl                                    ; $5c78: $29
    ld bc, $d200                                  ; $5c79: $01 $00 $d2
    dec h                                         ; $5c7c: $25
    cp l                                          ; $5c7d: $bd
    ld e, $5f                                     ; $5c7e: $1e $5f
    inc bc                                        ; $5c80: $03
    ld [bc], a                                    ; $5c81: $02
    nop                                           ; $5c82: $00
    ld d, a                                       ; $5c83: $57
    dec b                                         ; $5c84: $05
    cp l                                          ; $5c85: $bd
    ld [de], a                                    ; $5c86: $12
    ld l, $1d                                     ; $5c87: $2e $1d
    sbc d                                         ; $5c89: $9a
    ld b, [hl]                                    ; $5c8a: $46
    ld a, a                                       ; $5c8b: $7f
    ld l, e                                       ; $5c8c: $6b
    ld e, $5b                                     ; $5c8d: $1e $5b
    ld l, $1d                                     ; $5c8f: $2e $1d
    ld b, e                                       ; $5c91: $43
    inc b                                         ; $5c92: $04
    jr c, jr_0d4_5cd3                             ; $5c93: $38 $3e

    cp $56                                        ; $5c95: $fe $56
    xor b                                         ; $5c97: $a8
    db $10                                        ; $5c98: $10
    ld bc, $9d00                                  ; $5c99: $01 $00 $9d
    ld [de], a                                    ; $5c9c: $12
    ld e, a                                       ; $5c9d: $5f
    inc bc                                        ; $5c9e: $03
    sbc l                                         ; $5c9f: $9d
    ld d, $01                                     ; $5ca0: $16 $01
    nop                                           ; $5ca2: $00
    ld e, e                                       ; $5ca3: $5b
    ld bc, $0a9c                                  ; $5ca4: $01 $9c $0a
    ld l, $1d                                     ; $5ca7: $2e $1d
    nop                                           ; $5ca9: $00
    nop                                           ; $5caa: $00
    push af                                       ; $5cab: $f5
    dec [hl]                                      ; $5cac: $35
    ld e, $5b                                     ; $5cad: $1e $5b
    ld a, a                                       ; $5caf: $7f
    ld l, e                                       ; $5cb0: $6b
    ld b, e                                       ; $5cb1: $43
    ld [$2571], sp                                ; $5cb2: $08 $71 $25
    db $fd                                        ; $5cb5: $fd
    ld d, [hl]                                    ; $5cb6: $56
    ld d, $3a                                     ; $5cb7: $16 $3a
    ld bc, $7c00                                  ; $5cb9: $01 $00 $7c
    ld c, $5f                                     ; $5cbc: $0e $5f
    inc bc                                        ; $5cbe: $03
    xor c                                         ; $5cbf: $a9
    ld [$0001], sp                                ; $5cc0: $08 $01 $00
    dec sp                                        ; $5cc3: $3b
    ld b, $1e                                     ; $5cc4: $06 $1e
    ld e, e                                       ; $5cc6: $5b
    inc c                                         ; $5cc7: $0c
    ld de, $0001                                  ; $5cc8: $11 $01 $00
    push af                                       ; $5ccb: $f5
    dec [hl]                                      ; $5ccc: $35
    ld l, $1d                                     ; $5ccd: $2e $1d
    ld e, $5b                                     ; $5ccf: $1e $5b
    nop                                           ; $5cd1: $00
    nop                                           ; $5cd2: $00

jr_0d4_5cd3:
    call nc, $ec31                                ; $5cd3: $d4 $31 $ec
    inc d                                         ; $5cd6: $14
    call c, $234e                                 ; $5cd7: $dc $4e $23
    inc b                                         ; $5cda: $04
    ld a, [hl-]                                   ; $5cdb: $3a
    ld c, $5f                                     ; $5cdc: $0e $5f
    inc bc                                        ; $5cde: $03
    inc c                                         ; $5cdf: $0c
    add hl, de                                    ; $5ce0: $19
    ld [bc], a                                    ; $5ce1: $02
    nop                                           ; $5ce2: $00
    jp c, Jump_000_3b05                           ; $5ce3: $da $05 $3b

    ld l, e                                       ; $5ce6: $6b
    ld e, a                                       ; $5ce7: $5f
    inc bc                                        ; $5ce8: $03
    nop                                           ; $5ce9: $00
    ld [$5d48], sp                                ; $5cea: $08 $48 $5d
    cp b                                          ; $5ced: $b8
    ld d, [hl]                                    ; $5cee: $56
    ret                                           ; $5cef: $c9


    db $10                                        ; $5cf0: $10
    ld b, h                                       ; $5cf1: $44
    ld [$2db4], sp                                ; $5cf2: $08 $b4 $2d
    jr nz, jr_0d4_5d2f                            ; $5cf5: $20 $38

    cp e                                          ; $5cf7: $bb
    ld c, d                                       ; $5cf8: $4a
    inc hl                                        ; $5cf9: $23
    inc b                                         ; $5cfa: $04
    or h                                          ; $5cfb: $b4
    dec l                                         ; $5cfc: $2d
    ld e, a                                       ; $5cfd: $5f
    inc bc                                        ; $5cfe: $03
    add hl, de                                    ; $5cff: $19
    ld a, [bc]                                    ; $5d00: $0a
    ld bc, $b700                                  ; $5d01: $01 $00 $b7
    dec b                                         ; $5d04: $05
    ld e, $5b                                     ; $5d05: $1e $5b
    ld e, a                                       ; $5d07: $5f
    inc bc                                        ; $5d08: $03
    nop                                           ; $5d09: $00
    nop                                           ; $5d0a: $00
    db $dd                                        ; $5d0b: $dd
    ld d, d                                       ; $5d0c: $52
    rrca                                          ; $5d0d: $0f
    add hl, de                                    ; $5d0e: $19
    rst $38                                       ; $5d0f: $ff
    ld a, a                                       ; $5d10: $7f
    nop                                           ; $5d11: $00
    nop                                           ; $5d12: $00
    or e                                          ; $5d13: $b3
    dec l                                         ; $5d14: $2d
    sbc e                                         ; $5d15: $9b
    ld b, [hl]                                    ; $5d16: $46
    ld e, $5b                                     ; $5d17: $1e $5b
    ld b, h                                       ; $5d19: $44
    inc b                                         ; $5d1a: $04
    rst $10                                       ; $5d1b: $d7
    add hl, bc                                    ; $5d1c: $09
    cp h                                          ; $5d1d: $bc
    ld c, d                                       ; $5d1e: $4a
    ld e, a                                       ; $5d1f: $5f
    inc bc                                        ; $5d20: $03
    ld [bc], a                                    ; $5d21: $02
    nop                                           ; $5d22: $00
    sub [hl]                                      ; $5d23: $96
    add hl, bc                                    ; $5d24: $09
    ld e, a                                       ; $5d25: $5f
    inc bc                                        ; $5d26: $03
    ld e, c                                       ; $5d27: $59
    ld a, $a9                                     ; $5d28: $3e $a9
    db $10                                        ; $5d2a: $10
    ld d, a                                       ; $5d2b: $57
    ld a, $1e                                     ; $5d2c: $3e $1e
    ld e, e                                       ; $5d2e: $5b

jr_0d4_5d2f:
    ld d, b                                       ; $5d2f: $50
    dec h                                         ; $5d30: $25
    xor b                                         ; $5d31: $a8
    db $10                                        ; $5d32: $10
    ld a, d                                       ; $5d33: $7a
    ld b, d                                       ; $5d34: $42
    ld e, $5b                                     ; $5d35: $1e $5b
    ld a, a                                       ; $5d37: $7f
    ld l, e                                       ; $5d38: $6b
    ld [bc], a                                    ; $5d39: $02
    nop                                           ; $5d3a: $00
    or [hl]                                       ; $5d3b: $b6
    add hl, bc                                    ; $5d3c: $09
    ld e, a                                       ; $5d3d: $5f
    inc bc                                        ; $5d3e: $03
    xor c                                         ; $5d3f: $a9
    ld [$0002], sp                                ; $5d40: $08 $02 $00
    halt                                          ; $5d43: $76
    dec b                                         ; $5d44: $05
    ld e, a                                       ; $5d45: $5f
    inc bc                                        ; $5d46: $03
    adc b                                         ; $5d47: $88
    ld [$0468], sp                                ; $5d48: $08 $68 $04
    jr c, jr_0d4_5d87                             ; $5d4b: $38 $3a

    jr nc, jr_0d4_5d6c                            ; $5d4d: $30 $1d

    cp h                                          ; $5d4f: $bc
    ld c, d                                       ; $5d50: $4a
    ld h, l                                       ; $5d51: $65
    inc c                                         ; $5d52: $0c
    jr c, jr_0d4_5d8f                             ; $5d53: $38 $3a

    ld d, c                                       ; $5d55: $51
    ld de, $52dd                                  ; $5d56: $11 $dd $52
    ld [bc], a                                    ; $5d59: $02
    nop                                           ; $5d5a: $00
    sub h                                         ; $5d5b: $94
    dec b                                         ; $5d5c: $05
    ld e, a                                       ; $5d5d: $5f
    inc bc                                        ; $5d5e: $03
    sub l                                         ; $5d5f: $95
    add hl, bc                                    ; $5d60: $09
    ld [bc], a                                    ; $5d61: $02
    nop                                           ; $5d62: $00
    ld [hl], e                                    ; $5d63: $73
    dec b                                         ; $5d64: $05
    ld e, a                                       ; $5d65: $5f
    inc bc                                        ; $5d66: $03
    ld e, e                                       ; $5d67: $5b
    ld bc, $0867                                  ; $5d68: $01 $67 $08
    sub e                                         ; $5d6b: $93

jr_0d4_5d6c:
    ld d, d                                       ; $5d6c: $52
    sbc h                                         ; $5d6d: $9c
    ld [hl], e                                    ; $5d6e: $73
    jr jr_0d4_5dab                                ; $5d6f: $18 $3a

    ld h, l                                       ; $5d71: $65
    inc c                                         ; $5d72: $0c
    or $31                                        ; $5d73: $f6 $31
    jr nc, jr_0d4_5d88                            ; $5d75: $30 $11

    cp h                                          ; $5d77: $bc
    ld c, d                                       ; $5d78: $4a
    ld [bc], a                                    ; $5d79: $02
    nop                                           ; $5d7a: $00
    ld [hl], e                                    ; $5d7b: $73
    dec b                                         ; $5d7c: $05
    ld e, a                                       ; $5d7d: $5f
    inc bc                                        ; $5d7e: $03
    ld [hl], h                                    ; $5d7f: $74
    dec b                                         ; $5d80: $05
    ld [bc], a                                    ; $5d81: $02
    nop                                           ; $5d82: $00
    ld [hl-], a                                   ; $5d83: $32
    dec b                                         ; $5d84: $05
    ld e, a                                       ; $5d85: $5f
    inc bc                                        ; $5d86: $03

jr_0d4_5d87:
    ld e, e                                       ; $5d87: $5b

jr_0d4_5d88:
    ld bc, $0c65                                  ; $5d88: $01 $65 $0c
    jr c, jr_0d4_5dc7                             ; $5d8b: $38 $3a

    db $ed                                        ; $5d8d: $ed
    inc c                                         ; $5d8e: $0c

jr_0d4_5d8f:
    db $fd                                        ; $5d8f: $fd
    ld d, [hl]                                    ; $5d90: $56
    ld b, h                                       ; $5d91: $44
    ld [$3a18], sp                                ; $5d92: $08 $18 $3a
    ld d, b                                       ; $5d95: $50
    add hl, de                                    ; $5d96: $19
    db $fd                                        ; $5d97: $fd
    ld d, [hl]                                    ; $5d98: $56
    ld bc, $3200                                  ; $5d99: $01 $00 $32
    dec b                                         ; $5d9c: $05
    ld e, a                                       ; $5d9d: $5f
    inc bc                                        ; $5d9e: $03
    ld d, e                                       ; $5d9f: $53
    dec b                                         ; $5da0: $05
    ld [bc], a                                    ; $5da1: $02
    nop                                           ; $5da2: $00
    ld de, $5f05                                  ; $5da3: $11 $05 $5f
    inc bc                                        ; $5da6: $03
    ld e, e                                       ; $5da7: $5b
    ld bc, $0000                                  ; $5da8: $01 $00 $00

jr_0d4_5dab:
    jr nc, jr_0d4_5dbe                            ; $5dab: $30 $11

    rla                                           ; $5dad: $17
    ld [hl], $86                                  ; $5dae: $36 $86
    inc c                                         ; $5db0: $0c
    ld h, l                                       ; $5db1: $65
    inc c                                         ; $5db2: $0c
    ld c, $5e                                     ; $5db3: $0e $5e
    db $fd                                        ; $5db5: $fd
    ld d, [hl]                                    ; $5db6: $56
    db $f4                                        ; $5db7: $f4
    dec [hl]                                      ; $5db8: $35
    ld hl, $5010                                  ; $5db9: $21 $10 $50
    ld l, d                                       ; $5dbc: $6a
    ld e, a                                       ; $5dbd: $5f

jr_0d4_5dbe:
    inc bc                                        ; $5dbe: $03
    ld de, $0105                                  ; $5dbf: $11 $05 $01
    nop                                           ; $5dc2: $00
    db $10                                        ; $5dc3: $10
    ld bc, $035f                                  ; $5dc4: $01 $5f $03

jr_0d4_5dc7:
    ld e, e                                       ; $5dc7: $5b
    ld bc, $0001                                  ; $5dc8: $01 $01 $00
    jr c, @+$3c                                   ; $5dcb: $38 $3a

    dec bc                                        ; $5dcd: $0b
    add hl, hl                                    ; $5dce: $29
    ld hl, sp+$72                                 ; $5dcf: $f8 $72
    ld bc, $b400                                  ; $5dd1: $01 $00 $b4
    ld [hl], d                                    ; $5dd4: $72
    cp h                                          ; $5dd5: $bc
    ld c, [hl]                                    ; $5dd6: $4e
    push bc                                       ; $5dd7: $c5
    jr z, jr_0d4_5dda                             ; $5dd8: $28 $00

jr_0d4_5dda:
    inc c                                         ; $5dda: $0c
    db $10                                        ; $5ddb: $10
    ld bc, $5d48                                  ; $5ddc: $01 $48 $5d
    ld e, a                                       ; $5ddf: $5f
    inc bc                                        ; $5de0: $03
    ld [bc], a                                    ; $5de1: $02
    nop                                           ; $5de2: $00
    ld e, e                                       ; $5de3: $5b
    ld bc, $035f                                  ; $5de4: $01 $5f $03
    ld e, a                                       ; $5de7: $5f
    inc bc                                        ; $5de8: $03
    ld e, e                                       ; $5de9: $5b
    ld bc, $035f                                  ; $5dea: $01 $5f $03
    ld e, a                                       ; $5ded: $5f
    inc bc                                        ; $5dee: $03
    ld e, a                                       ; $5def: $5f
    inc bc                                        ; $5df0: $03
    ld e, e                                       ; $5df1: $5b
    ld bc, $035f                                  ; $5df2: $01 $5f $03
    ld e, a                                       ; $5df5: $5f
    inc bc                                        ; $5df6: $03
    ld e, a                                       ; $5df7: $5f
    inc bc                                        ; $5df8: $03
    ld [bc], a                                    ; $5df9: $02
    nop                                           ; $5dfa: $00
    ld e, e                                       ; $5dfb: $5b
    ld bc, $035f                                  ; $5dfc: $01 $5f $03
    ld e, a                                       ; $5dff: $5f
    inc bc                                        ; $5e00: $03
    ld [bc], a                                    ; $5e01: $02
    nop                                           ; $5e02: $00
    push bc                                       ; $5e03: $c5
    ld a, [de]                                    ; $5e04: $1a
    ld e, e                                       ; $5e05: $5b
    ld bc, $0efb                                  ; $5e06: $01 $fb $0e
    inc bc                                        ; $5e09: $03
    nop                                           ; $5e0a: $00
    ei                                            ; $5e0b: $fb
    ld c, $47                                     ; $5e0c: $0e $47
    nop                                           ; $5e0e: $00
    ld l, b                                       ; $5e0f: $68
    nop                                           ; $5e10: $00
    dec h                                         ; $5e11: $25
    nop                                           ; $5e12: $00
    ei                                            ; $5e13: $fb
    ld c, $e5                                     ; $5e14: $0e $e5
    ld e, $07                                     ; $5e16: $1e $07
    add hl, bc                                    ; $5e18: $09
    ld [bc], a                                    ; $5e19: $02
    nop                                           ; $5e1a: $00
    ei                                            ; $5e1b: $fb
    ld c, $e5                                     ; $5e1c: $0e $e5
    ld e, $07                                     ; $5e1e: $1e $07
    add hl, bc                                    ; $5e20: $09
    ld [bc], a                                    ; $5e21: $02
    nop                                           ; $5e22: $00
    and l                                         ; $5e23: $a5
    ld a, [de]                                    ; $5e24: $1a
    ld d, a                                       ; $5e25: $57
    dec b                                         ; $5e26: $05
    ei                                            ; $5e27: $fb
    ld c, $47                                     ; $5e28: $0e $47
    nop                                           ; $5e2a: $00
    xor e                                         ; $5e2b: $ab
    inc b                                         ; $5e2c: $04
    db $ed                                        ; $5e2d: $ed
    ld [$0489], sp                                ; $5e2e: $08 $89 $04
    push hl                                       ; $5e31: $e5
    ld e, $47                                     ; $5e32: $1e $47
    nop                                           ; $5e34: $00
    ld b, [hl]                                    ; $5e35: $46
    add hl, bc                                    ; $5e36: $09
    db $ed                                        ; $5e37: $ed
    ld [$0002], sp                                ; $5e38: $08 $02 $00
    push hl                                       ; $5e3b: $e5
    ld e, $fb                                     ; $5e3c: $1e $fb
    ld c, $ed                                     ; $5e3e: $0e $ed
    ld [$0002], sp                                ; $5e40: $08 $02 $00
    add l                                         ; $5e43: $85
    ld a, [de]                                    ; $5e44: $1a
    ld c, a                                       ; $5e45: $4f
    ld de, $061b                                  ; $5e46: $11 $1b $06
    inc bc                                        ; $5e49: $03
    nop                                           ; $5e4a: $00
    call Call_0d4_4708                            ; $5e4b: $cd $08 $47
    nop                                           ; $5e4e: $00
    dec c                                         ; $5e4f: $0d
    dec c                                         ; $5e50: $0d
    ld b, [hl]                                    ; $5e51: $46
    dec c                                         ; $5e52: $0d
    add l                                         ; $5e53: $85
    ld a, [de]                                    ; $5e54: $1a
    ld c, $0d                                     ; $5e55: $0e $0d
    ld b, a                                       ; $5e57: $47
    nop                                           ; $5e58: $00
    ld [bc], a                                    ; $5e59: $02
    nop                                           ; $5e5a: $00
    push bc                                       ; $5e5b: $c5
    ld e, $fb                                     ; $5e5c: $1e $fb
    ld c, $c5                                     ; $5e5e: $0e $c5
    ld [hl+], a                                   ; $5e60: $22
    ld [bc], a                                    ; $5e61: $02
    nop                                           ; $5e62: $00
    dec h                                         ; $5e63: $25
    ld a, [de]                                    ; $5e64: $1a
    ld d, l                                       ; $5e65: $55
    dec c                                         ; $5e66: $0d
    ei                                            ; $5e67: $fb
    ld c, $03                                     ; $5e68: $0e $03
    nop                                           ; $5e6a: $00
    cpl                                           ; $5e6b: $2f

Call_0d4_5e6c:
    dec d                                         ; $5e6c: $15
    ld e, e                                       ; $5e6d: $5b
    ld a, [hl-]                                   ; $5e6e: $3a
    ld b, a                                       ; $5e6f: $47
    nop                                           ; $5e70: $00
    and l                                         ; $5e71: $a5
    ld [hl+], a                                   ; $5e72: $22
    ld b, a                                       ; $5e73: $47
    nop                                           ; $5e74: $00
    call z, $3008                                 ; $5e75: $cc $08 $30
    dec c                                         ; $5e78: $0d
    ld [bc], a                                    ; $5e79: $02
    nop                                           ; $5e7a: $00
    and l                                         ; $5e7b: $a5
    ld [hl+], a                                   ; $5e7c: $22
    ei                                            ; $5e7d: $fb
    ld c, $c5                                     ; $5e7e: $0e $c5
    ld [hl+], a                                   ; $5e80: $22
    ld [bc], a                                    ; $5e81: $02
    nop                                           ; $5e82: $00
    add l                                         ; $5e83: $85
    ld h, $35                                     ; $5e84: $26 $35
    add hl, bc                                    ; $5e86: $09
    cp e                                          ; $5e87: $bb
    ld a, [de]                                    ; $5e88: $1a
    ld b, a                                       ; $5e89: $47
    nop                                           ; $5e8a: $00
    ld e, e                                       ; $5e8b: $5b
    ld a, [hl-]                                   ; $5e8c: $3a
    cp $56                                        ; $5e8d: $fe $56
    ld d, d                                       ; $5e8f: $52
    dec e                                         ; $5e90: $1d
    dec h                                         ; $5e91: $25
    ld e, $47                                     ; $5e92: $1e $47
    nop                                           ; $5e94: $00
    ld b, $0d                                     ; $5e95: $06 $0d
    db $ec                                        ; $5e97: $ec
    ld [$0002], sp                                ; $5e98: $08 $02 $00
    ei                                            ; $5e9b: $fb
    ld c, $85                                     ; $5e9c: $0e $85
    ld h, $a5                                     ; $5e9e: $26 $a5
    ld h, $02                                     ; $5ea0: $26 $02
    nop                                           ; $5ea2: $00
    dec h                                         ; $5ea3: $25
    ld h, $15                                     ; $5ea4: $26 $15
    dec b                                         ; $5ea6: $05
    cp e                                          ; $5ea7: $bb
    ld a, [de]                                    ; $5ea8: $1a
    xor l                                         ; $5ea9: $ad
    inc b                                         ; $5eaa: $04
    ld e, e                                       ; $5eab: $5b
    ld a, [hl-]                                   ; $5eac: $3a
    ld d, d                                       ; $5ead: $52
    dec e                                         ; $5eae: $1d
    ld e, $5b                                     ; $5eaf: $1e $5b
    ld b, a                                       ; $5eb1: $47
    nop                                           ; $5eb2: $00
    ld d, d                                       ; $5eb3: $52
    dec e                                         ; $5eb4: $1d
    ld e, e                                       ; $5eb5: $5b
    ld a, [hl-]                                   ; $5eb6: $3a
    dec l                                         ; $5eb7: $2d
    dec c                                         ; $5eb8: $0d
    ld [bc], a                                    ; $5eb9: $02
    nop                                           ; $5eba: $00
    ei                                            ; $5ebb: $fb
    ld c, $65                                     ; $5ebc: $0e $65
    ld a, [hl+]                                   ; $5ebe: $2a
    add l                                         ; $5ebf: $85
    ld a, [hl+]                                   ; $5ec0: $2a
    ld [bc], a                                    ; $5ec1: $02
    nop                                           ; $5ec2: $00
    ld b, h                                       ; $5ec3: $44
    ld a, [hl+]                                   ; $5ec4: $2a
    ld a, [$8809]                                 ; $5ec5: $fa $09 $88
    ld [$048b], sp                                ; $5ec8: $08 $8b $04
    jr jr_0d4_5eff                                ; $5ecb: $18 $32

    cp $56                                        ; $5ecd: $fe $56
    ld [hl], e                                    ; $5ecf: $73
    dec e                                         ; $5ed0: $1d
    ld b, a                                       ; $5ed1: $47
    nop                                           ; $5ed2: $00
    ld e, e                                       ; $5ed3: $5b
    ld a, [hl-]                                   ; $5ed4: $3a
    sbc $4e                                       ; $5ed5: $de $4e
    call Call_000_0210                            ; $5ed7: $cd $10 $02
    nop                                           ; $5eda: $00
    ei                                            ; $5edb: $fb
    ld c, $44                                     ; $5edc: $0e $44
    ld l, $64                                     ; $5ede: $2e $64
    ld a, [hl+]                                   ; $5ee0: $2a
    ld [bc], a                                    ; $5ee1: $02
    nop                                           ; $5ee2: $00
    inc h                                         ; $5ee3: $24
    ld l, $58                                     ; $5ee4: $2e $58
    dec c                                         ; $5ee6: $0d
    ei                                            ; $5ee7: $fb
    ld c, $68                                     ; $5ee8: $0e $68
    nop                                           ; $5eea: $00
    ld e, e                                       ; $5eeb: $5b
    ld a, [hl-]                                   ; $5eec: $3a
    cp $52                                        ; $5eed: $fe $52
    ld d, d                                       ; $5eef: $52
    dec e                                         ; $5ef0: $1d
    ld l, b                                       ; $5ef1: $68
    nop                                           ; $5ef2: $00
    add hl, de                                    ; $5ef3: $19
    ld [hl], $fe                                  ; $5ef4: $36 $fe
    ld d, d                                       ; $5ef6: $52
    ld d, c                                       ; $5ef7: $51
    dec e                                         ; $5ef8: $1d
    ld [bc], a                                    ; $5ef9: $02
    nop                                           ; $5efa: $00
    ei                                            ; $5efb: $fb
    ld c, $24                                     ; $5efc: $0e $24
    ld [hl-], a                                   ; $5efe: $32

jr_0d4_5eff:
    ld b, h                                       ; $5eff: $44
    ld l, $02                                     ; $5f00: $2e $02
    nop                                           ; $5f02: $00
    inc b                                         ; $5f03: $04
    ld [hl-], a                                   ; $5f04: $32
    ld e, b                                       ; $5f05: $58
    dec c                                         ; $5f06: $0d
    call c, $ee22                                 ; $5f07: $dc $22 $ee
    db $10                                        ; $5f0a: $10
    sbc $4e                                       ; $5f0b: $de $4e
    ccf                                           ; $5f0d: $3f
    ld e, e                                       ; $5f0e: $5b
    cp $56                                        ; $5f0f: $fe $56
    inc b                                         ; $5f11: $04
    ld [hl], $de                                  ; $5f12: $36 $de
    ld c, [hl]                                    ; $5f14: $4e
    ld h, [hl]                                    ; $5f15: $66
    inc b                                         ; $5f16: $04
    ld c, $0d                                     ; $5f17: $0e $0d
    ld [bc], a                                    ; $5f19: $02
    nop                                           ; $5f1a: $00
    ei                                            ; $5f1b: $fb
    ld c, $04                                     ; $5f1c: $0e $04
    ld [hl-], a                                   ; $5f1e: $32
    inc b                                         ; $5f1f: $04
    ld [hl], $02                                  ; $5f20: $36 $02
    nop                                           ; $5f22: $00
    db $e4                                        ; $5f23: $e4
    dec [hl]                                      ; $5f24: $35
    ld e, e                                       ; $5f25: $5b
    ld bc, $0efb                                  ; $5f26: $01 $fb $0e
    call $d60c                                    ; $5f29: $cd $0c $d6
    add hl, hl                                    ; $5f2c: $29

Jump_0d4_5f2d:
    sbc $52                                       ; $5f2d: $de $52
    ld e, e                                       ; $5f2f: $5b
    ld a, [hl-]                                   ; $5f30: $3a
    db $e4                                        ; $5f31: $e4
    ld sp, $427c                                  ; $5f32: $31 $7c $42
    adc d                                         ; $5f35: $8a
    inc b                                         ; $5f36: $04
    ld [hl], e                                    ; $5f37: $73
    ld hl, $0002                                  ; $5f38: $21 $02 $00
    ei                                            ; $5f3b: $fb
    ld c, $e4                                     ; $5f3c: $0e $e4
    dec [hl]                                      ; $5f3e: $35
    inc b                                         ; $5f3f: $04
    ld [hl], $02                                  ; $5f40: $36 $02
    nop                                           ; $5f42: $00
    jp Jump_0d4_5b35                              ; $5f43: $c3 $35 $5b


    ld bc, $0efb                                  ; $5f46: $01 $fb $0e
    rrc h                                         ; $5f49: $cb $0c
    ld e, e                                       ; $5f4b: $5b
    ld a, [hl-]                                   ; $5f4c: $3a
    sbc $52                                       ; $5f4d: $de $52
    ld [hl], d                                    ; $5f4f: $72
    dec e                                         ; $5f50: $1d
    ret nz                                        ; $5f51: $c0

    nop                                           ; $5f52: $00
    sub h                                         ; $5f53: $94
    ld hl, $0489                                  ; $5f54: $21 $89 $04
    ld e, e                                       ; $5f57: $5b
    ld a, [hl-]                                   ; $5f58: $3a
    and b                                         ; $5f59: $a0
    nop                                           ; $5f5a: $00
    ei                                            ; $5f5b: $fb
    ld c, $c3                                     ; $5f5c: $0e $c3
    add hl, sp                                    ; $5f5e: $39
    ld [bc], a                                    ; $5f5f: $02
    nop                                           ; $5f60: $00
    ld [bc], a                                    ; $5f61: $02
    nop                                           ; $5f62: $00
    and e                                         ; $5f63: $a3
    dec a                                         ; $5f64: $3d
    ld e, e                                       ; $5f65: $5b
    ld bc, $0efb                                  ; $5f66: $01 $fb $0e
    add d                                         ; $5f69: $82
    add hl, sp                                    ; $5f6a: $39
    adc b                                         ; $5f6b: $88
    inc b                                         ; $5f6c: $04
    ld d, d                                       ; $5f6d: $52
    dec e                                         ; $5f6e: $1d
    ld e, e                                       ; $5f6f: $5b
    ld a, [hl-]                                   ; $5f70: $3a

Call_0d4_5f71:
    ld h, e                                       ; $5f71: $63
    nop                                           ; $5f72: $00
    or l                                          ; $5f73: $b5
    add hl, hl                                    ; $5f74: $29
    xor h                                         ; $5f75: $ac
    add hl, de                                    ; $5f76: $19
    ld a, e                                       ; $5f77: $7b
    ld b, d                                       ; $5f78: $42
    ldh [rP1], a                                  ; $5f79: $e0 $00
    ei                                            ; $5f7b: $fb
    ld c, $a3                                     ; $5f7c: $0e $a3
    dec a                                         ; $5f7e: $3d
    ld [bc], a                                    ; $5f7f: $02
    nop                                           ; $5f80: $00
    ld [bc], a                                    ; $5f81: $02
    nop                                           ; $5f82: $00
    add e                                         ; $5f83: $83
    dec a                                         ; $5f84: $3d
    ld e, e                                       ; $5f85: $5b
    ld bc, $0efb                                  ; $5f86: $01 $fb $0e
    and e                                         ; $5f89: $a3
    nop                                           ; $5f8a: $00
    sbc h                                         ; $5f8b: $9c
    ld b, [hl]                                    ; $5f8c: $46
    add e                                         ; $5f8d: $83
    ld b, c                                       ; $5f8e: $41
    ld d, d                                       ; $5f8f: $52
    dec e                                         ; $5f90: $1d
    jp nz, $9300                                  ; $5f91: $c2 $00 $93

    dec h                                         ; $5f94: $25
    ld l, e                                       ; $5f95: $6b
    dec d                                         ; $5f96: $15
    sbc e                                         ; $5f97: $9b
    ld b, [hl]                                    ; $5f98: $46
    ret nz                                        ; $5f99: $c0

    nop                                           ; $5f9a: $00
    ei                                            ; $5f9b: $fb
    ld c, $62                                     ; $5f9c: $0e $62
    ld sp, $0002                                  ; $5f9e: $31 $02 $00
    ld [bc], a                                    ; $5fa1: $02
    nop                                           ; $5fa2: $00
    add e                                         ; $5fa3: $83
    ld b, c                                       ; $5fa4: $41
    ld e, e                                       ; $5fa5: $5b
    ld bc, $0efb                                  ; $5fa6: $01 $fb $0e
    and b                                         ; $5fa9: $a0
    nop                                           ; $5faa: $00
    rst $30                                       ; $5fab: $f7
    dec l                                         ; $5fac: $2d
    push bc                                       ; $5fad: $c5
    dec l                                         ; $5fae: $2d
    ld l, c                                       ; $5faf: $69
    inc b                                         ; $5fb0: $04
    pop hl                                        ; $5fb1: $e1
    nop                                           ; $5fb2: $00
    and [hl]                                      ; $5fb3: $a6
    db $10                                        ; $5fb4: $10
    rst $20                                       ; $5fb5: $e7
    add hl, de                                    ; $5fb6: $19
    ld l, [hl]                                    ; $5fb7: $6e
    add hl, hl                                    ; $5fb8: $29
    ld b, c                                       ; $5fb9: $41
    nop                                           ; $5fba: $00
    ei                                            ; $5fbb: $fb
    ld c, $07                                     ; $5fbc: $0e $07
    ld a, [de]                                    ; $5fbe: $1a
    jr nz, @+$03                                  ; $5fbf: $20 $01

    ld bc, $4200                                  ; $5fc1: $01 $00 $42
    ld b, c                                       ; $5fc4: $41
    ld e, e                                       ; $5fc5: $5b
    ld bc, $0efb                                  ; $5fc6: $01 $fb $0e
    ldh [rP1], a                                  ; $5fc9: $e0 $00
    rlca                                          ; $5fcb: $07
    ld a, [de]                                    ; $5fcc: $1a
    adc e                                         ; $5fcd: $8b
    add hl, sp                                    ; $5fce: $39
    jp Jump_0d4_6014                              ; $5fcf: $c3 $14 $60


    nop                                           ; $5fd2: $00
    ld l, d                                       ; $5fd3: $6a
    ld sp, $1a07                                  ; $5fd4: $31 $07 $1a
    nop                                           ; $5fd7: $00
    ld bc, $0120                                  ; $5fd8: $01 $20 $01
    ei                                            ; $5fdb: $fb
    ld c, $e6                                     ; $5fdc: $0e $e6
    dec d                                         ; $5fde: $15
    ld [bc], a                                    ; $5fdf: $02
    nop                                           ; $5fe0: $00
    ld [bc], a                                    ; $5fe1: $02
    nop                                           ; $5fe2: $00
    ld e, e                                       ; $5fe3: $5b
    ld bc, $0efb                                  ; $5fe4: $01 $fb $0e
    ld [bc], a                                    ; $5fe7: $02
    nop                                           ; $5fe8: $00
    ld e, e                                       ; $5fe9: $5b
    ld bc, $0efb                                  ; $5fea: $01 $fb $0e
    ei                                            ; $5fed: $fb
    ld c, $02                                     ; $5fee: $0e $02
    nop                                           ; $5ff0: $00
    ld e, e                                       ; $5ff1: $5b
    ld bc, $0efb                                  ; $5ff2: $01 $fb $0e
    ei                                            ; $5ff5: $fb
    ld c, $02                                     ; $5ff6: $0e $02
    nop                                           ; $5ff8: $00
    ld [bc], a                                    ; $5ff9: $02
    nop                                           ; $5ffa: $00
    ld e, e                                       ; $5ffb: $5b
    ld bc, $0ed9                                  ; $5ffc: $01 $d9 $0e
    ei                                            ; $5fff: $fb
    ld c, $02                                     ; $6000: $0e $02
    nop                                           ; $6002: $00
    ld c, $7a                                     ; $6003: $0e $7a
    ld e, e                                       ; $6005: $5b
    ld bc, $035f                                  ; $6006: $01 $5f $03
    ld h, [hl]                                    ; $6009: $66
    inc b                                         ; $600a: $04
    ld e, a                                       ; $600b: $5f
    inc bc                                        ; $600c: $03
    ld l, e                                       ; $600d: $6b
    ld c, l                                       ; $600e: $4d
    ld c, $7a                                     ; $600f: $0e $7a
    ld c, d                                       ; $6011: $4a
    ld b, c                                       ; $6012: $41
    ld e, a                                       ; $6013: $5f

Jump_0d4_6014:
    inc bc                                        ; $6014: $03
    ld c, $7a                                     ; $6015: $0e $7a
    ld c, $7a                                     ; $6017: $0e $7a
    ld [bc], a                                    ; $6019: $02
    nop                                           ; $601a: $00
    ld e, a                                       ; $601b: $5f
    inc bc                                        ; $601c: $03
    ld c, $7a                                     ; $601d: $0e $7a
    ld c, $7a                                     ; $601f: $0e $7a
    ld [bc], a                                    ; $6021: $02
    nop                                           ; $6022: $00
    xor e                                         ; $6023: $ab
    ld h, l                                       ; $6024: $65
    ld e, e                                       ; $6025: $5b
    ld bc, $035f                                  ; $6026: $01 $5f $03
    ld h, a                                       ; $6029: $67
    inc b                                         ; $602a: $04
    ld a, [hl+]                                   ; $602b: $2a
    add hl, sp                                    ; $602c: $39
    bit 5, c                                      ; $602d: $cb $69
    xor h                                         ; $602f: $ac
    inc c                                         ; $6030: $0c
    ld h, [hl]                                    ; $6031: $66
    inc b                                         ; $6032: $04
    ld l, c                                       ; $6033: $69
    ld d, c                                       ; $6034: $51
    db $ed                                        ; $6035: $ed
    ld [hl], c                                    ; $6036: $71
    call Call_000_0210                            ; $6037: $cd $10 $02
    nop                                           ; $603a: $00
    adc c                                         ; $603b: $89
    ld e, l                                       ; $603c: $5d
    ld e, a                                       ; $603d: $5f
    inc bc                                        ; $603e: $03
    db $ed                                        ; $603f: $ed
    ld [hl], c                                    ; $6040: $71
    ld [bc], a                                    ; $6041: $02
    nop                                           ; $6042: $00
    ld e, e                                       ; $6043: $5b
    ld bc, $3cc3                                  ; $6044: $01 $c3 $3c
    ld e, a                                       ; $6047: $5f
    inc bc                                        ; $6048: $03
    ld h, [hl]                                    ; $6049: $66
    inc b                                         ; $604a: $04
    call z, Call_000_2f10                         ; $604b: $cc $10 $2f
    dec e                                         ; $604e: $1d
    adc c                                         ; $604f: $89
    ld [$3ce4], sp                                ; $6050: $08 $e4 $3c
    ld l, b                                       ; $6053: $68
    inc b                                         ; $6054: $04
    call z, Call_000_0f0c                         ; $6055: $cc $0c $0f
    add hl, de                                    ; $6058: $19
    ld [bc], a                                    ; $6059: $02
    nop                                           ; $605a: $00
    ld e, a                                       ; $605b: $5f
    inc bc                                        ; $605c: $03
    and d                                         ; $605d: $a2
    jr nc, jr_0d4_6065                            ; $605e: $30 $05

    ld b, l                                       ; $6060: $45
    ld [bc], a                                    ; $6061: $02
    nop                                           ; $6062: $00
    ld e, l                                       ; $6063: $5d
    ld [bc], a                                    ; $6064: $02

jr_0d4_6065:
    db $e4                                        ; $6065: $e4
    ld b, b                                       ; $6066: $40
    adc c                                         ; $6067: $89
    ld [$0466], sp                                ; $6068: $08 $66 $04
    db $ed                                        ; $606b: $ed
    inc d                                         ; $606c: $14
    sub d                                         ; $606d: $92
    add hl, hl                                    ; $606e: $29
    adc c                                         ; $606f: $89
    ld [$0468], sp                                ; $6070: $08 $68 $04
    jp $ec38                                      ; $6073: $c3 $38 $ec


    inc d                                         ; $6076: $14
    cpl                                           ; $6077: $2f
    dec e                                         ; $6078: $1d
    ld [bc], a                                    ; $6079: $02
    nop                                           ; $607a: $00
    ld e, a                                       ; $607b: $5f
    inc bc                                        ; $607c: $03
    jp Jump_000_2638                              ; $607d: $c3 $38 $26


    ld c, c                                       ; $6080: $49
    ld [bc], a                                    ; $6081: $02
    nop                                           ; $6082: $00
    ld l, c                                       ; $6083: $69
    ld e, c                                       ; $6084: $59
    ld e, l                                       ; $6085: $5d
    ld [bc], a                                    ; $6086: $02
    adc c                                         ; $6087: $89
    inc c                                         ; $6088: $0c
    ld h, a                                       ; $6089: $67
    inc b                                         ; $608a: $04
    or e                                          ; $608b: $b3
    dec l                                         ; $608c: $2d
    ld a, l                                       ; $608d: $7d
    ld c, d                                       ; $608e: $4a
    rra                                           ; $608f: $1f
    ld e, e                                       ; $6090: $5b
    ld h, [hl]                                    ; $6091: $66
    inc b                                         ; $6092: $04
    rl b                                          ; $6093: $cb $10
    dec c                                         ; $6095: $0d
    dec d                                         ; $6096: $15
    adc c                                         ; $6097: $89
    ld [$0002], sp                                ; $6098: $08 $02 $00
    ld e, a                                       ; $609b: $5f
    inc bc                                        ; $609c: $03
    ld l, c                                       ; $609d: $69
    ld e, c                                       ; $609e: $59
    rst $00                                       ; $609f: $c7
    inc h                                         ; $60a0: $24
    ld [bc], a                                    ; $60a1: $02
    nop                                           ; $60a2: $00
    daa                                           ; $60a3: $27
    ld c, l                                       ; $60a4: $4d
    ld e, l                                       ; $60a5: $5d
    ld [bc], a                                    ; $60a6: $02
    ld h, a                                       ; $60a7: $67
    ld [$3995], sp                                ; $60a8: $08 $95 $39
    rst $18                                       ; $60ab: $df
    ld d, [hl]                                    ; $60ac: $56
    sbc h                                         ; $60ad: $9c
    dec [hl]                                      ; $60ae: $35
    db $fd                                        ; $60af: $fd
    dec a                                         ; $60b0: $3d
    ld h, a                                       ; $60b1: $67
    inc b                                         ; $60b2: $04
    sub a                                         ; $60b3: $97
    dec l                                         ; $60b4: $2d
    ld a, [hl]                                    ; $60b5: $7e
    ld c, d                                       ; $60b6: $4a
    rl b                                          ; $60b7: $cb $10
    ld [bc], a                                    ; $60b9: $02
    nop                                           ; $60ba: $00
    ld e, a                                       ; $60bb: $5f
    inc bc                                        ; $60bc: $03
    daa                                           ; $60bd: $27
    ld c, l                                       ; $60be: $4d
    add a                                         ; $60bf: $87
    inc c                                         ; $60c0: $0c
    ld [bc], a                                    ; $60c1: $02
    nop                                           ; $60c2: $00
    ld e, e                                       ; $60c3: $5b
    ld bc, $30a3                                  ; $60c4: $01 $a3 $30
    ld e, a                                       ; $60c7: $5f
    inc bc                                        ; $60c8: $03
    xor h                                         ; $60c9: $ac
    ld [$56ff], sp                                ; $60ca: $08 $ff $56
    sub a                                         ; $60cd: $97
    ld hl, $7fff                                  ; $60ce: $21 $ff $7f
    adc c                                         ; $60d1: $89
    inc b                                         ; $60d2: $04
    ld e, l                                       ; $60d3: $5d
    ld b, [hl]                                    ; $60d4: $46
    sbc a                                         ; $60d5: $9f
    ld l, e                                       ; $60d6: $6b
    ld [hl], d                                    ; $60d7: $72
    dec h                                         ; $60d8: $25
    inc h                                         ; $60d9: $24
    nop                                           ; $60da: $00
    ld e, a                                       ; $60db: $5f
    inc bc                                        ; $60dc: $03
    and d                                         ; $60dd: $a2
    inc [hl]                                      ; $60de: $34
    xor e                                         ; $60df: $ab
    inc c                                         ; $60e0: $0c
    ld [bc], a                                    ; $60e1: $02
    nop                                           ; $60e2: $00
    ld e, e                                       ; $60e3: $5b
    ld bc, $3ce4                                  ; $60e4: $01 $e4 $3c
    ld e, a                                       ; $60e7: $5f
    inc bc                                        ; $60e8: $03
    adc e                                         ; $60e9: $8b
    inc b                                         ; $60ea: $04
    ld a, e                                       ; $60eb: $7b
    ld b, d                                       ; $60ec: $42
    rst $38                                       ; $60ed: $ff
    ld e, d                                       ; $60ee: $5a
    ld [hl], d                                    ; $60ef: $72
    dec e                                         ; $60f0: $1d
    ld h, [hl]                                    ; $60f1: $66
    inc b                                         ; $60f2: $04
    sbc $52                                       ; $60f3: $de $52
    sub e                                         ; $60f5: $93
    dec h                                         ; $60f6: $25
    db $eb                                        ; $60f7: $eb
    db $10                                        ; $60f8: $10
    ld [bc], a                                    ; $60f9: $02
    nop                                           ; $60fa: $00
    ld e, a                                       ; $60fb: $5f
    inc bc                                        ; $60fc: $03
    call nz, $6738                                ; $60fd: $c4 $38 $67
    inc b                                         ; $6100: $04
    ld [bc], a                                    ; $6101: $02
    nop                                           ; $6102: $00
    ld b, a                                       ; $6103: $47
    ld d, l                                       ; $6104: $55
    ld e, e                                       ; $6105: $5b
    ld bc, $035f                                  ; $6106: $01 $5f $03
    adc e                                         ; $6109: $8b
    inc b                                         ; $610a: $04
    ld e, h                                       ; $610b: $5c
    ld b, d                                       ; $610c: $42
    rst $18                                       ; $610d: $df
    ld d, [hl]                                    ; $610e: $56
    ld d, b                                       ; $610f: $50
    dec e                                         ; $6110: $1d
    ld h, l                                       ; $6111: $65
    inc b                                         ; $6112: $04
    ld a, l                                       ; $6113: $7d
    ld c, d                                       ; $6114: $4a
    ld d, b                                       ; $6115: $50
    ld hl, $52df                                  ; $6116: $21 $df $52
    ld [bc], a                                    ; $6119: $02
    nop                                           ; $611a: $00
    ld e, a                                       ; $611b: $5f
    inc bc                                        ; $611c: $03
    ld b, a                                       ; $611d: $47
    ld d, l                                       ; $611e: $55
    ld h, a                                       ; $611f: $67
    inc b                                         ; $6120: $04
    ld [bc], a                                    ; $6121: $02
    nop                                           ; $6122: $00
    ld c, b                                       ; $6123: $48
    ld d, c                                       ; $6124: $51
    ld e, l                                       ; $6125: $5d
    ld [bc], a                                    ; $6126: $02
    call z, $6610                                 ; $6127: $cc $10 $66
    inc b                                         ; $612a: $04
    sbc h                                         ; $612b: $9c
    dec [hl]                                      ; $612c: $35
    or l                                          ; $612d: $b5
    inc e                                         ; $612e: $1c
    ld e, [hl]                                    ; $612f: $5e
    ld b, [hl]                                    ; $6130: $46
    ld h, [hl]                                    ; $6131: $66
    inc b                                         ; $6132: $04
    or $31                                        ; $6133: $f6 $31
    dec c                                         ; $6135: $0d
    dec d                                         ; $6136: $15
    sbc [hl]                                      ; $6137: $9e
    ld c, [hl]                                    ; $6138: $4e
    inc h                                         ; $6139: $24
    nop                                           ; $613a: $00
    ld e, a                                       ; $613b: $5f
    inc bc                                        ; $613c: $03
    ld c, b                                       ; $613d: $48
    ld d, c                                       ; $613e: $51
    rl b                                          ; $613f: $cb $10
    ld [bc], a                                    ; $6141: $02
    nop                                           ; $6142: $00
    ld e, l                                       ; $6143: $5d
    ld [bc], a                                    ; $6144: $02
    jp $aa38                                      ; $6145: $c3 $38 $aa


    inc c                                         ; $6148: $0c
    add a                                         ; $6149: $87
    ld [$319a], sp                                ; $614a: $08 $9a $31
    ld e, l                                       ; $614d: $5d
    ld b, [hl]                                    ; $614e: $46
    rst $18                                       ; $614f: $df
    ld d, d                                       ; $6150: $52
    ld h, a                                       ; $6151: $67
    inc b                                         ; $6152: $04
    ld [hl], d                                    ; $6153: $72
    dec h                                         ; $6154: $25
    ld a, [hl]                                    ; $6155: $7e
    ld c, d                                       ; $6156: $4a
    xor d                                         ; $6157: $aa
    inc c                                         ; $6158: $0c
    ld b, [hl]                                    ; $6159: $46
    inc b                                         ; $615a: $04
    ld e, a                                       ; $615b: $5f
    inc bc                                        ; $615c: $03
    jp $ed38                                      ; $615d: $c3 $38 $ed


    inc d                                         ; $6160: $14
    ld [bc], a                                    ; $6161: $02
    nop                                           ; $6162: $00
    scf                                           ; $6163: $37
    add hl, bc                                    ; $6164: $09
    push bc                                       ; $6165: $c5
    inc [hl]                                      ; $6166: $34
    ld e, a                                       ; $6167: $5f
    inc bc                                        ; $6168: $03
    ld h, [hl]                                    ; $6169: $66
    inc b                                         ; $616a: $04
    ld d, b                                       ; $616b: $50
    ld hl, $0caa                                  ; $616c: $21 $aa $0c
    push de                                       ; $616f: $d5
    dec l                                         ; $6170: $2d
    ld h, a                                       ; $6171: $67
    inc b                                         ; $6172: $04
    ld d, b                                       ; $6173: $50
    ld hl, $31d5                                  ; $6174: $21 $d5 $31
    xor e                                         ; $6177: $ab
    inc c                                         ; $6178: $0c
    ld [bc], a                                    ; $6179: $02
    nop                                           ; $617a: $00
    ld e, a                                       ; $617b: $5f
    inc bc                                        ; $617c: $03
    call nz, $8838                                ; $617d: $c4 $38 $88
    ld [$0002], sp                                ; $6180: $08 $02 $00
    ld e, e                                       ; $6183: $5b
    ld bc, $0c67                                  ; $6184: $01 $67 $0c
    ld e, a                                       ; $6187: $5f
    inc bc                                        ; $6188: $03

jr_0d4_6189:
    ld h, [hl]                                    ; $6189: $66
    inc b                                         ; $618a: $04
    rst $30                                       ; $618b: $f7
    dec [hl]                                      ; $618c: $35
    rrca                                          ; $618d: $0f
    add hl, de                                    ; $618e: $19
    cp $56                                        ; $618f: $fe $56
    ld l, b                                       ; $6191: $68
    inc b                                         ; $6192: $04
    rra                                           ; $6193: $1f
    ld d, a                                       ; $6194: $57
    db $ed                                        ; $6195: $ed
    db $10                                        ; $6196: $10
    ld [hl], c                                    ; $6197: $71
    dec h                                         ; $6198: $25
    ld [bc], a                                    ; $6199: $02
    nop                                           ; $619a: $00
    ld e, a                                       ; $619b: $5f
    inc bc                                        ; $619c: $03
    daa                                           ; $619d: $27
    ld c, l                                       ; $619e: $4d
    ld h, [hl]                                    ; $619f: $66
    ld [$0002], sp                                ; $61a0: $08 $02 $00
    xor e                                         ; $61a3: $ab
    inc c                                         ; $61a4: $0c
    ld e, l                                       ; $61a5: $5d
    ld [bc], a                                    ; $61a6: $02
    ld c, l                                       ; $61a7: $4d
    ld b, b                                       ; $61a8: $40
    ld h, [hl]                                    ; $61a9: $66
    inc b                                         ; $61aa: $04
    ld [hl], c                                    ; $61ab: $71
    dec h                                         ; $61ac: $25
    ld a, [hl+]                                   ; $61ad: $2a
    inc [hl]                                      ; $61ae: $34
    add hl, sp                                    ; $61af: $39
    ld a, [hl-]                                   ; $61b0: $3a
    ld h, a                                       ; $61b1: $67
    inc b                                         ; $61b2: $04
    dec hl                                        ; $61b3: $2b
    inc a                                         ; $61b4: $3c
    jr nc, jr_0d4_61d0                            ; $61b5: $30 $19

    push de                                       ; $61b7: $d5
    dec l                                         ; $61b8: $2d
    ld b, h                                       ; $61b9: $44
    nop                                           ; $61ba: $00
    ld e, a                                       ; $61bb: $5f
    inc bc                                        ; $61bc: $03
    inc l                                         ; $61bd: $2c
    ld b, b                                       ; $61be: $40
    xor h                                         ; $61bf: $ac
    jr jr_0d4_61c4                                ; $61c0: $18 $02

    nop                                           ; $61c2: $00
    ld c, h                                       ; $61c3: $4c

jr_0d4_61c4:
    inc [hl]                                      ; $61c4: $34
    ld e, l                                       ; $61c5: $5d
    ld [bc], a                                    ; $61c6: $02
    db $d3                                        ; $61c7: $d3
    ld e, b                                       ; $61c8: $58
    ld h, [hl]                                    ; $61c9: $66
    inc b                                         ; $61ca: $04
    dec hl                                        ; $61cb: $2b
    inc a                                         ; $61cc: $3c
    or e                                          ; $61cd: $b3
    ld h, h                                       ; $61ce: $64
    ld c, b                                       ; $61cf: $48

jr_0d4_61d0:
    jr jr_0d4_6238                                ; $61d0: $18 $66

    inc b                                         ; $61d2: $04
    dec hl                                        ; $61d3: $2b
    jr c, jr_0d4_6189                             ; $61d4: $38 $b3

    ld h, b                                       ; $61d6: $60
    rst $08                                       ; $61d7: $cf
    jr c, @+$26                                   ; $61d8: $38 $24

    nop                                           ; $61da: $00
    ld e, a                                       ; $61db: $5f
    inc bc                                        ; $61dc: $03
    ld l, [hl]                                    ; $61dd: $6e
    ld b, h                                       ; $61de: $44
    adc $0c                                       ; $61df: $ce $0c
    ld [bc], a                                    ; $61e1: $02
    nop                                           ; $61e2: $00
    ld e, e                                       ; $61e3: $5b
    ld bc, $035f                                  ; $61e4: $01 $5f $03
    adc $0c                                       ; $61e7: $ce $0c
    ld e, e                                       ; $61e9: $5b
    ld bc, $035f                                  ; $61ea: $01 $5f $03
    ld e, a                                       ; $61ed: $5f
    inc bc                                        ; $61ee: $03
    adc $0c                                       ; $61ef: $ce $0c
    ld e, e                                       ; $61f1: $5b
    ld bc, $035f                                  ; $61f2: $01 $5f $03
    ld e, a                                       ; $61f5: $5f
    inc bc                                        ; $61f6: $03
    adc $0c                                       ; $61f7: $ce $0c
    ld [bc], a                                    ; $61f9: $02
    nop                                           ; $61fa: $00
    ld e, e                                       ; $61fb: $5b
    ld bc, $035f                                  ; $61fc: $01 $5f $03
    adc $0c                                       ; $61ff: $ce $0c
    ld [bc], a                                    ; $6201: $02
    nop                                           ; $6202: $00
    ld e, e                                       ; $6203: $5b
    ld bc, $53df                                  ; $6204: $01 $df $53
    ld e, a                                       ; $6207: $5f
    inc bc                                        ; $6208: $03
    ld hl, $5f08                                  ; $6209: $21 $08 $5f
    inc bc                                        ; $620c: $03
    ld [hl], h                                    ; $620d: $74
    ld [hl], $df                                  ; $620e: $36 $df
    ld d, e                                       ; $6210: $53
    ld hl, $df08                                  ; $6211: $21 $08 $df
    ld d, e                                       ; $6214: $53
    ld e, a                                       ; $6215: $5f
    inc bc                                        ; $6216: $03
    ldh a, [$2d]                                  ; $6217: $f0 $2d
    ld [bc], a                                    ; $6219: $02
    nop                                           ; $621a: $00
    ld e, a                                       ; $621b: $5f
    inc bc                                        ; $621c: $03
    rst $18                                       ; $621d: $df
    ld d, e                                       ; $621e: $53
    ldh a, [$2d]                                  ; $621f: $f0 $2d
    ld bc, $5b00                                  ; $6221: $01 $00 $5b
    ld bc, $43bf                                  ; $6224: $01 $bf $43
    ld e, a                                       ; $6227: $5f
    inc bc                                        ; $6228: $03
    ld hl, $6c08                                  ; $6229: $21 $08 $6c
    add hl, hl                                    ; $622c: $29
    and l                                         ; $622d: $a5
    inc d                                         ; $622e: $14
    pop af                                        ; $622f: $f1
    dec [hl]                                      ; $6230: $35
    ld b, d                                       ; $6231: $42
    inc c                                         ; $6232: $0c
    ld [hl], l                                    ; $6233: $75
    ld [hl], $bf                                  ; $6234: $36 $bf
    ld b, a                                       ; $6236: $47
    add hl, hl                                    ; $6237: $29

jr_0d4_6238:
    ld hl, $0002                                  ; $6238: $21 $02 $00
    ld e, a                                       ; $623b: $5f
    inc bc                                        ; $623c: $03
    cp a                                          ; $623d: $bf
    ccf                                           ; $623e: $3f
    cp a                                          ; $623f: $bf
    ld c, e                                       ; $6240: $4b
    ld bc, $7600                                  ; $6241: $01 $00 $76
    dec c                                         ; $6244: $0d
    ld a, a                                       ; $6245: $7f
    inc hl                                        ; $6246: $23
    ld c, e                                       ; $6247: $4b
    dec h                                         ; $6248: $25
    ld hl, $0a08                                  ; $6249: $21 $08 $0a
    add hl, de                                    ; $624c: $19
    ld b, a                                       ; $624d: $47
    inc b                                         ; $624e: $04
    ld c, h                                       ; $624f: $4c
    dec h                                         ; $6250: $25
    ld h, e                                       ; $6251: $63
    inc c                                         ; $6252: $0c
    pop af                                        ; $6253: $f1
    ld sp, $2b9f                                  ; $6254: $31 $9f $2b
    add hl, bc                                    ; $6257: $09
    dec e                                         ; $6258: $1d
    ld [bc], a                                    ; $6259: $02
    nop                                           ; $625a: $00
    ld e, a                                       ; $625b: $5f
    inc bc                                        ; $625c: $03
    ld a, a                                       ; $625d: $7f
    daa                                           ; $625e: $27
    sbc a                                         ; $625f: $9f
    inc sp                                        ; $6260: $33
    ld bc, $5b00                                  ; $6261: $01 $00 $5b
    ld bc, $0f7f                                  ; $6264: $01 $7f $0f
    ld h, [hl]                                    ; $6267: $66
    inc c                                         ; $6268: $0c
    ld hl, $9a08                                  ; $6269: $21 $08 $9a
    ld c, [hl]                                    ; $626c: $4e
    dec l                                         ; $626d: $2d
    dec e                                         ; $626e: $1d
    add [hl]                                      ; $626f: $86
    db $10                                        ; $6270: $10
    ld hl, $fb08                                  ; $6271: $21 $08 $fb
    ld [de], a                                    ; $6274: $12
    add sp, $1c                                   ; $6275: $e8 $1c
    adc l                                         ; $6277: $8d
    add hl, hl                                    ; $6278: $29
    ld [bc], a                                    ; $6279: $02
    nop                                           ; $627a: $00
    ld e, a                                       ; $627b: $5f
    inc bc                                        ; $627c: $03
    ld a, a                                       ; $627d: $7f
    dec de                                        ; $627e: $1b
    ld a, a                                       ; $627f: $7f
    rrca                                          ; $6280: $0f
    ld [bc], a                                    ; $6281: $02
    nop                                           ; $6282: $00
    push af                                       ; $6283: $f5
    dec [hl]                                      ; $6284: $35
    ccf                                           ; $6285: $3f
    inc bc                                        ; $6286: $03
    sbc c                                         ; $6287: $99
    ld bc, $0c64                                  ; $6288: $01 $64 $0c
    scf                                           ; $628b: $37
    ld a, $1d                                     ; $628c: $3e $1d
    ld e, e                                       ; $628e: $5b
    ld c, l                                       ; $628f: $4d
    ld hl, $0c42                                  ; $6290: $21 $42 $0c
    xor [hl]                                      ; $6293: $ae
    dec l                                         ; $6294: $2d
    jp c, Jump_000_0806                           ; $6295: $da $06 $08

    dec e                                         ; $6298: $1d
    ld [bc], a                                    ; $6299: $02
    nop                                           ; $629a: $00
    ccf                                           ; $629b: $3f
    inc bc                                        ; $629c: $03
    ld e, a                                       ; $629d: $5f
    inc bc                                        ; $629e: $03
    ld [$211d], sp                                ; $629f: $08 $1d $21
    inc [hl]                                      ; $62a2: $34
    ld d, h                                       ; $62a3: $54
    ld d, [hl]                                    ; $62a4: $56
    sbc [hl]                                      ; $62a5: $9e
    ld [bc], a                                    ; $62a6: $02
    ld [bc], a                                    ; $62a7: $02
    nop                                           ; $62a8: $00
    ld h, e                                       ; $62a9: $63
    ld [$2db2], sp                                ; $62aa: $08 $b2 $2d
    ld [hl], h                                    ; $62ad: $74
    ld h, [hl]                                    ; $62ae: $66
    ld hl, $4234                                  ; $62af: $21 $34 $42
    ld [$254b], sp                                ; $62b2: $08 $4b $25
    rst $00                                       ; $62b5: $c7
    inc d                                         ; $62b6: $14
    ret nc                                        ; $62b7: $d0

    dec [hl]                                      ; $62b8: $35
    ld [bc], a                                    ; $62b9: $02
    nop                                           ; $62ba: $00
    cp [hl]                                       ; $62bb: $be
    ld [bc], a                                    ; $62bc: $02
    rst $38                                       ; $62bd: $ff
    ld [bc], a                                    ; $62be: $02
    ld e, a                                       ; $62bf: $5f
    inc bc                                        ; $62c0: $03
    ld [bc], a                                    ; $62c1: $02
    nop                                           ; $62c2: $00
    ld e, e                                       ; $62c3: $5b
    ld bc, $35f4                                  ; $62c4: $01 $f4 $35
    sbc [hl]                                      ; $62c7: $9e
    ld [bc], a                                    ; $62c8: $02
    inc hl                                        ; $62c9: $23
    inc b                                         ; $62ca: $04
    dec d                                         ; $62cb: $15
    ld a, [hl-]                                   ; $62cc: $3a
    ld c, [hl]                                    ; $62cd: $4e
    dec e                                         ; $62ce: $1d
    db $fc                                        ; $62cf: $fc
    ld d, [hl]                                    ; $62d0: $56
    add $14                                       ; $62d1: $c6 $14
    adc h                                         ; $62d3: $8c
    add hl, hl                                    ; $62d4: $29
    add hl, bc                                    ; $62d5: $09
    ld hl, $31d0                                  ; $62d6: $21 $d0 $31
    inc hl                                        ; $62d9: $23
    nop                                           ; $62da: $00
    ld e, l                                       ; $62db: $5d
    ld [bc], a                                    ; $62dc: $02
    inc l                                         ; $62dd: $2c
    dec b                                         ; $62de: $05
    ld e, a                                       ; $62df: $5f
    inc bc                                        ; $62e0: $03
    ld [bc], a                                    ; $62e1: $02
    nop                                           ; $62e2: $00
    sub c                                         ; $62e3: $91
    add hl, hl                                    ; $62e4: $29
    cp h                                          ; $62e5: $bc
    ld bc, $035f                                  ; $62e6: $01 $5f $03
    adc b                                         ; $62e9: $88
    ld [$4ebb], sp                                ; $62ea: $08 $bb $4e
    or e                                          ; $62ed: $b3
    dec l                                         ; $62ee: $2d
    ld e, a                                       ; $62ef: $5f
    ld h, e                                       ; $62f0: $63
    ld hl, $c708                                  ; $62f1: $21 $08 $c7
    jr @+$2c                                      ; $62f4: $18 $2a

    ld hl, $0c64                                  ; $62f6: $21 $64 $0c
    ld bc, $dc04                                  ; $62f9: $01 $04 $dc
    ld bc, $035f                                  ; $62fc: $01 $5f $03
    dec e                                         ; $62ff: $1d
    ld [bc], a                                    ; $6300: $02
    ld [bc], a                                    ; $6301: $02
    nop                                           ; $6302: $00
    ld e, c                                       ; $6303: $59
    dec b                                         ; $6304: $05
    ld e, a                                       ; $6305: $5f
    inc bc                                        ; $6306: $03
    ld a, [bc]                                    ; $6307: $0a
    dec e                                         ; $6308: $1d
    ld hl, $d208                                  ; $6309: $21 $08 $d2
    ld sp, $4679                                  ; $630c: $31 $79 $46
    jp hl                                         ; $630f: $e9


    jr jr_0d4_6333                                ; $6310: $18 $21

    ld [$18c6], sp                                ; $6312: $08 $c6 $18
    ld a, [hl+]                                   ; $6315: $2a
    ld hl, $0c63                                  ; $6316: $21 $63 $0c
    ld bc, $7b04                                  ; $6319: $01 $04 $7b
    ld bc, $035f                                  ; $631c: $01 $5f $03
    call $0204                                    ; $631f: $cd $04 $02
    nop                                           ; $6322: $00
    ld a, [hl-]                                   ; $6323: $3a
    ld bc, $22db                                  ; $6324: $01 $db $22
    ld a, [hl+]                                   ; $6327: $2a
    ld hl, $0c63                                  ; $6328: $21 $63 $0c
    ld [hl], $3e                                  ; $632b: $36 $3e
    inc l                                         ; $632d: $2c
    dec e                                         ; $632e: $1d
    cp d                                          ; $632f: $ba
    ld c, [hl]                                    ; $6330: $4e
    ld b, d                                       ; $6331: $42
    inc c                                         ; $6332: $0c

jr_0d4_6333:
    ld c, e                                       ; $6333: $4b
    dec h                                         ; $6334: $25
    rst $00                                       ; $6335: $c7
    jr @-$0d                                      ; $6336: $18 $f1

    dec [hl]                                      ; $6338: $35
    ld [hl+], a                                   ; $6339: $22
    inc b                                         ; $633a: $04
    add hl, sp                                    ; $633b: $39
    ld bc, $035f                                  ; $633c: $01 $5f $03
    rst $00                                       ; $633f: $c7
    inc d                                         ; $6340: $14
    ld bc, $3700                                  ; $6341: $01 $00 $37
    dec b                                         ; $6344: $05
    ld e, a                                       ; $6345: $5f
    inc bc                                        ; $6346: $03
    ld h, [hl]                                    ; $6347: $66
    ld [$0821], sp                                ; $6348: $08 $21 $08
    di                                            ; $634b: $f3
    dec [hl]                                      ; $634c: $35
    ld b, a                                       ; $634d: $47
    nop                                           ; $634e: $00
    rst $00                                       ; $634f: $c7
    inc d                                         ; $6350: $14
    ld hl, $6c08                                  ; $6351: $21 $08 $6c
    add hl, hl                                    ; $6354: $29
    add sp, $1c                                   ; $6355: $e8 $1c
    ret nc                                        ; $6357: $d0

    ld sp, $0422                                  ; $6358: $31 $22 $04
    ld d, $01                                     ; $635b: $16 $01
    ld e, a                                       ; $635d: $5f
    inc bc                                        ; $635e: $03
    rst $00                                       ; $635f: $c7
    inc d                                         ; $6360: $14
    ld bc, $1500                                  ; $6361: $01 $00 $15
    ld bc, $035f                                  ; $6364: $01 $5f $03
    add $14                                       ; $6367: $c6 $14
    ld hl, $f408                                  ; $6369: $21 $08 $f4
    dec [hl]                                      ; $636c: $35
    db $eb                                        ; $636d: $eb
    jr @-$79                                      ; $636e: $18 $85

    inc c                                         ; $6370: $0c
    ld hl, $e708                                  ; $6371: $21 $08 $e7
    jr jr_0d4_63e2                                ; $6374: $18 $6c

    add hl, hl                                    ; $6376: $29
    add h                                         ; $6377: $84
    db $10                                        ; $6378: $10
    inc hl                                        ; $6379: $23
    nop                                           ; $637a: $00
    ld e, a                                       ; $637b: $5f
    inc bc                                        ; $637c: $03
    di                                            ; $637d: $f3
    nop                                           ; $637e: $00
    add sp, $1c                                   ; $637f: $e8 $1c
    ld [bc], a                                    ; $6381: $02
    nop                                           ; $6382: $00
    ret nc                                        ; $6383: $d0

    nop                                           ; $6384: $00
    ld e, l                                       ; $6385: $5d
    ld [bc], a                                    ; $6386: $02
    adc l                                         ; $6387: $8d
    dec l                                         ; $6388: $2d
    ld b, d                                       ; $6389: $42
    ld [$4678], sp                                ; $638a: $08 $78 $46
    rst $00                                       ; $638d: $c7
    inc d                                         ; $638e: $14
    ld c, b                                       ; $638f: $48
    nop                                           ; $6390: $00
    ld hl, $4b08                                  ; $6391: $21 $08 $4b
    dec h                                         ; $6394: $25
    and [hl]                                      ; $6395: $a6
    inc d                                         ; $6396: $14
    ret nc                                        ; $6397: $d0

    ld sp, $0401                                  ; $6398: $31 $01 $04
    ld e, a                                       ; $639b: $5f
    inc bc                                        ; $639c: $03
    xor [hl]                                      ; $639d: $ae
    nop                                           ; $639e: $00
    ld c, e                                       ; $639f: $4b
    dec h                                         ; $63a0: $25
    ld bc, $ae00                                  ; $63a1: $01 $00 $ae
    ld sp, $025d                                  ; $63a4: $31 $5d $02
    add h                                         ; $63a7: $84
    db $10                                        ; $63a8: $10
    ld h, e                                       ; $63a9: $63
    inc c                                         ; $63aa: $0c
    sbc c                                         ; $63ab: $99
    ld c, d                                       ; $63ac: $4a
    dec l                                         ; $63ad: $2d
    ld hl, $0048                                  ; $63ae: $21 $48 $00
    rst $20                                       ; $63b1: $e7
    jr @-$50                                      ; $63b2: $18 $ae

    ld sp, $212a                                  ; $63b4: $31 $2a $21
    ld [de], a                                    ; $63b7: $12
    ld a, [hl-]                                   ; $63b8: $3a
    ld [hl+], a                                   ; $63b9: $22
    inc b                                         ; $63ba: $04
    ld e, a                                       ; $63bb: $5f
    inc bc                                        ; $63bc: $03
    ld h, l                                       ; $63bd: $65
    inc c                                         ; $63be: $0c
    add $14                                       ; $63bf: $c6 $14
    ld [bc], a                                    ; $63c1: $02
    nop                                           ; $63c2: $00
    ld l, l                                       ; $63c3: $6d
    add hl, hl                                    ; $63c4: $29
    ld e, l                                       ; $63c5: $5d
    ld [bc], a                                    ; $63c6: $02
    add h                                         ; $63c7: $84
    db $10                                        ; $63c8: $10
    ld h, e                                       ; $63c9: $63
    inc c                                         ; $63ca: $0c
    ld d, $3a                                     ; $63cb: $16 $3a
    ld a, [hl+]                                   ; $63cd: $2a
    ld hl, $0048                                  ; $63ce: $21 $48 $00
    and l                                         ; $63d1: $a5
    inc d                                         ; $63d2: $14
    rst $08                                       ; $63d3: $cf
    ld sp, $1d09                                  ; $63d4: $31 $09 $1d
    rst $20                                       ; $63d7: $e7
    inc e                                         ; $63d8: $1c
    ld [bc], a                                    ; $63d9: $02
    nop                                           ; $63da: $00
    ld e, a                                       ; $63db: $5f
    inc bc                                        ; $63dc: $03
    rst $20                                       ; $63dd: $e7
    inc e                                         ; $63de: $1c
    ld h, e                                       ; $63df: $63
    inc c                                         ; $63e0: $0c
    ld [bc], a                                    ; $63e1: $02

jr_0d4_63e2:
    nop                                           ; $63e2: $00
    ld e, e                                       ; $63e3: $5b
    ld bc, $035f                                  ; $63e4: $01 $5f $03
    ld h, e                                       ; $63e7: $63
    inc c                                         ; $63e8: $0c
    ld e, e                                       ; $63e9: $5b
    ld bc, $035f                                  ; $63ea: $01 $5f $03
    ld e, a                                       ; $63ed: $5f
    inc bc                                        ; $63ee: $03
    ld h, e                                       ; $63ef: $63
    inc c                                         ; $63f0: $0c
    ld e, e                                       ; $63f1: $5b
    ld bc, $035f                                  ; $63f2: $01 $5f $03
    ld e, a                                       ; $63f5: $5f
    inc bc                                        ; $63f6: $03
    ld h, e                                       ; $63f7: $63
    inc c                                         ; $63f8: $0c
    ld [bc], a                                    ; $63f9: $02
    nop                                           ; $63fa: $00
    ld e, e                                       ; $63fb: $5b
    ld bc, $035f                                  ; $63fc: $01 $5f $03
    ld h, e                                       ; $63ff: $63
    inc c                                         ; $6400: $0c
    ld h, b                                       ; $6401: $60
    jr nc, @+$39                                  ; $6402: $30 $37

    ld a, a                                       ; $6404: $7f
    cp $02                                        ; $6405: $fe $02
    ld [bc], a                                    ; $6407: $02
    nop                                           ; $6408: $00
    ld h, b                                       ; $6409: $60
    jr nc, @+$61                                  ; $640a: $30 $5f

    inc bc                                        ; $640c: $03
    rrca                                          ; $640d: $0f
    ld d, d                                       ; $640e: $52
    ld hl, $6004                                  ; $640f: $21 $04 $60
    jr nc, jr_0d4_644b                            ; $6412: $30 $37

    ld a, a                                       ; $6414: $7f
    ld e, a                                       ; $6415: $5f
    inc bc                                        ; $6416: $03
    ld hl, $6008                                  ; $6417: $21 $08 $60
    jr nc, jr_0d4_6453                            ; $641a: $30 $37

    ld a, a                                       ; $641c: $7f
    ld e, a                                       ; $641d: $5f
    inc bc                                        ; $641e: $03
    ld [bc], a                                    ; $641f: $02
    nop                                           ; $6420: $00
    ld h, b                                       ; $6421: $60
    jr nc, @-$0a                                  ; $6422: $30 $f4

    ld a, [hl]                                    ; $6424: $7e
    ld e, l                                       ; $6425: $5d
    ld [bc], a                                    ; $6426: $02
    ld [bc], a                                    ; $6427: $02
    nop                                           ; $6428: $00
    ld h, b                                       ; $6429: $60
    jr nc, jr_0d4_644d                            ; $642a: $30 $21

    inc b                                         ; $642c: $04
    and a                                         ; $642d: $a7
    inc c                                         ; $642e: $0c
    ld b, a                                       ; $642f: $47

jr_0d4_6430:
    inc b                                         ; $6430: $04
    ld h, b                                       ; $6431: $60
    inc [hl]                                      ; $6432: $34
    xor e                                         ; $6433: $ab
    ld b, l                                       ; $6434: $45
    ld b, e                                       ; $6435: $43
    inc b                                         ; $6436: $04
    ld d, $7f                                     ; $6437: $16 $7f
    ld h, b                                       ; $6439: $60
    jr nc, jr_0d4_6430                            ; $643a: $30 $f4

    ld a, [hl]                                    ; $643c: $7e
    ld e, a                                       ; $643d: $5f
    inc bc                                        ; $643e: $03
    ld [bc], a                                    ; $643f: $02
    nop                                           ; $6440: $00
    ld [bc], a                                    ; $6441: $02
    nop                                           ; $6442: $00
    xor a                                         ; $6443: $af
    ld a, [hl]                                    ; $6444: $7e
    ld e, l                                       ; $6445: $5d
    ld [bc], a                                    ; $6446: $02
    add b                                         ; $6447: $80
    jr c, jr_0d4_6491                             ; $6448: $38 $47

    inc b                                         ; $644a: $04

jr_0d4_644b:
    or e                                          ; $644b: $b3
    dec l                                         ; $644c: $2d

jr_0d4_644d:
    cp h                                          ; $644d: $bc
    ld c, d                                       ; $644e: $4a
    cpl                                           ; $644f: $2f
    dec e                                         ; $6450: $1d
    ld b, h                                       ; $6451: $44
    inc b                                         ; $6452: $04

jr_0d4_6453:
    ld l, [hl]                                    ; $6453: $6e
    halt                                          ; $6454: $76
    ret                                           ; $6455: $c9


    db $10                                        ; $6456: $10
    ld [hl], c                                    ; $6457: $71
    dec h                                         ; $6458: $25
    add b                                         ; $6459: $80
    inc a                                         ; $645a: $3c
    xor a                                         ; $645b: $af
    ld a, [hl]                                    ; $645c: $7e
    ld e, a                                       ; $645d: $5f
    inc bc                                        ; $645e: $03
    ld [bc], a                                    ; $645f: $02
    nop                                           ; $6460: $00
    ld [bc], a                                    ; $6461: $02
    nop                                           ; $6462: $00
    and b                                         ; $6463: $a0
    ld b, h                                       ; $6464: $44
    ld e, l                                       ; $6465: $5d
    ld [bc], a                                    ; $6466: $02
    ld c, d                                       ; $6467: $4a
    ld a, [hl]                                    ; $6468: $7e
    ld d, c                                       ; $6469: $51
    ld hl, $427a                                  ; $646a: $21 $7a $42
    sbc $4e                                       ; $646d: $de $4e
    ld e, $57                                     ; $646f: $1e $57
    ld h, h                                       ; $6471: $64
    ld [$2571], sp                                ; $6472: $08 $71 $25
    ret z                                         ; $6475: $c8

    inc d                                         ; $6476: $14
    rla                                           ; $6477: $17
    ld a, [hl-]                                   ; $6478: $3a
    ld [bc], a                                    ; $6479: $02
    nop                                           ; $647a: $00
    ld e, a                                       ; $647b: $5f
    inc bc                                        ; $647c: $03
    ld c, d                                       ; $647d: $4a
    ld a, [hl]                                    ; $647e: $7e
    and b                                         ; $647f: $a0
    ld b, b                                       ; $6480: $40
    ld [bc], a                                    ; $6481: $02
    nop                                           ; $6482: $00
    pop bc                                        ; $6483: $c1
    ld c, b                                       ; $6484: $48
    ld a, [de]                                    ; $6485: $1a
    ld b, $e5                                     ; $6486: $06 $e5
    ld a, l                                       ; $6488: $7d
    ld b, a                                       ; $6489: $47
    inc b                                         ; $648a: $04
    or e                                          ; $648b: $b3
    add hl, hl                                    ; $648c: $29
    cp l                                          ; $648d: $bd
    ld c, d                                       ; $648e: $4a
    ld c, $19                                     ; $648f: $0e $19

jr_0d4_6491:
    ld h, l                                       ; $6491: $65
    ld [$2571], sp                                ; $6492: $08 $71 $25
    ld a, d                                       ; $6495: $7a
    ld b, d                                       ; $6496: $42
    ret z                                         ; $6497: $c8

    inc c                                         ; $6498: $0c
    ld bc, $5f04                                  ; $6499: $01 $04 $5f
    inc bc                                        ; $649c: $03
    ret nz                                        ; $649d: $c0

    ld c, h                                       ; $649e: $4c
    push hl                                       ; $649f: $e5
    ld a, c                                       ; $64a0: $79
    ld [bc], a                                    ; $64a1: $02
    nop                                           ; $64a2: $00
    ldh [$58], a                                  ; $64a3: $e0 $58
    ld e, l                                       ; $64a5: $5d
    ld [bc], a                                    ; $64a6: $02
    call nz, $0079                                ; $64a7: $c4 $79 $00
    ld e, l                                       ; $64aa: $5d
    ld c, [hl]                                    ; $64ab: $4e
    ld l, d                                       ; $64ac: $6a
    adc c                                         ; $64ad: $89
    ld [$52dc], sp                                ; $64ae: $08 $dc $52
    ld h, l                                       ; $64b1: $65
    inc b                                         ; $64b2: $04
    jr c, jr_0d4_64ef                             ; $64b3: $38 $3a

    cpl                                           ; $64b5: $2f
    dec e                                         ; $64b6: $1d
    sbc h                                         ; $64b7: $9c
    ld c, d                                       ; $64b8: $4a
    ld bc, $e000                                  ; $64b9: $01 $00 $e0
    ld e, b                                       ; $64bc: $58
    ld e, a                                       ; $64bd: $5f
    inc bc                                        ; $64be: $03
    jp nz, Jump_000_0279                          ; $64bf: $c2 $79 $02

    nop                                           ; $64c2: $00
    ld b, c                                       ; $64c3: $41
    ld l, c                                       ; $64c4: $69
    ld d, a                                       ; $64c5: $57
    dec c                                         ; $64c6: $0d
    ld e, a                                       ; $64c7: $5f
    inc bc                                        ; $64c8: $03
    ld l, b                                       ; $64c9: $68
    inc b                                         ; $64ca: $04
    jr c, jr_0d4_650b                             ; $64cb: $38 $3e

    ld [hl], c                                    ; $64cd: $71
    dec h                                         ; $64ce: $25
    sbc $4e                                       ; $64cf: $de $4e
    ld h, [hl]                                    ; $64d1: $66
    inc b                                         ; $64d2: $04
    push af                                       ; $64d3: $f5
    ld sp, $4abc                                  ; $64d4: $31 $bc $4a
    db $ec                                        ; $64d7: $ec
    inc d                                         ; $64d8: $14
    ld bc, $0000                                  ; $64d9: $01 $00 $00
    ld e, l                                       ; $64dc: $5d
    ld e, a                                       ; $64dd: $5f
    inc bc                                        ; $64de: $03
    add d                                         ; $64df: $82
    ld [hl], c                                    ; $64e0: $71
    ld [bc], a                                    ; $64e1: $02
    nop                                           ; $64e2: $00
    ld b, c                                       ; $64e3: $41
    ld l, c                                       ; $64e4: $69
    ld e, e                                       ; $64e5: $5b
    ld bc, $1b1e                                  ; $64e6: $01 $1e $1b
    xor d                                         ; $64e9: $aa
    inc c                                         ; $64ea: $0c
    ld a, e                                       ; $64eb: $7b
    ld b, d                                       ; $64ec: $42
    cp $52                                        ; $64ed: $fe $52

jr_0d4_64ef:
    or e                                          ; $64ef: $b3
    dec l                                         ; $64f0: $2d
    inc h                                         ; $64f1: $24
    inc b                                         ; $64f2: $04
    or e                                          ; $64f3: $b3
    dec l                                         ; $64f4: $2d
    ld a, d                                       ; $64f5: $7a
    ld b, d                                       ; $64f6: $42
    cp l                                          ; $64f7: $bd
    ld c, d                                       ; $64f8: $4a
    ld h, c                                       ; $64f9: $61
    inc d                                         ; $64fa: $14
    ld e, a                                       ; $64fb: $5f
    inc bc                                        ; $64fc: $03
    ld b, c                                       ; $64fd: $41
    ld l, c                                       ; $64fe: $69
    ld [bc], a                                    ; $64ff: $02
    nop                                           ; $6500: $00
    ld [bc], a                                    ; $6501: $02
    nop                                           ; $6502: $00
    ld b, c                                       ; $6503: $41
    ld l, c                                       ; $6504: $69
    ld d, a                                       ; $6505: $57
    dec c                                         ; $6506: $0d
    ld e, $1b                                     ; $6507: $1e $1b
    xor d                                         ; $6509: $aa
    inc c                                         ; $650a: $0c

jr_0d4_650b:
    sbc e                                         ; $650b: $9b
    ld b, [hl]                                    ; $650c: $46
    push de                                       ; $650d: $d5
    ld sp, $52dd                                  ; $650e: $31 $dd $52
    ld b, h                                       ; $6511: $44
    ld [$3617], sp                                ; $6512: $08 $17 $36
    ld b, c                                       ; $6515: $41
    ld h, l                                       ; $6516: $65
    db $dd                                        ; $6517: $dd
    ld c, [hl]                                    ; $6518: $4e
    ld [bc], a                                    ; $6519: $02
    nop                                           ; $651a: $00
    ld e, a                                       ; $651b: $5f
    inc bc                                        ; $651c: $03
    ld b, c                                       ; $651d: $41
    ld h, l                                       ; $651e: $65
    ld h, c                                       ; $651f: $61
    ld l, l                                       ; $6520: $6d
    ld [bc], a                                    ; $6521: $02
    nop                                           ; $6522: $00
    ld b, c                                       ; $6523: $41
    ld h, l                                       ; $6524: $65
    ld e, b                                       ; $6525: $58
    dec c                                         ; $6526: $0d
    ld e, a                                       ; $6527: $5f
    inc bc                                        ; $6528: $03
    xor d                                         ; $6529: $aa
    inc c                                         ; $652a: $0c
    jr c, jr_0d4_656b                             ; $652b: $38 $3e

    cp l                                          ; $652d: $bd
    ld c, d                                       ; $652e: $4a
    ld l, $1d                                     ; $652f: $2e $1d
    ld b, l                                       ; $6531: $45
    inc c                                         ; $6532: $0c
    or h                                          ; $6533: $b4
    add hl, hl                                    ; $6534: $29
    ld b, c                                       ; $6535: $41
    ld h, c                                       ; $6536: $61
    sbc $4e                                       ; $6537: $de $4e
    ld [bc], a                                    ; $6539: $02
    nop                                           ; $653a: $00
    ld e, a                                       ; $653b: $5f
    inc bc                                        ; $653c: $03
    nop                                           ; $653d: $00
    ld e, l                                       ; $653e: $5d
    add d                                         ; $653f: $82
    ld [hl], c                                    ; $6540: $71
    ld [bc], a                                    ; $6541: $02
    nop                                           ; $6542: $00
    ldh [rHDMA4], a                               ; $6543: $e0 $54
    ld e, l                                       ; $6545: $5d
    ld [bc], a                                    ; $6546: $02
    jp nz, Jump_000_2f79                          ; $6547: $c2 $79 $2f

    dec e                                         ; $654a: $1d
    db $dd                                        ; $654b: $dd
    ld d, d                                       ; $654c: $52
    push de                                       ; $654d: $d5
    ld sp, $3e59                                  ; $654e: $31 $59 $3e
    jp nz, Jump_0d4_4779                          ; $6551: $c2 $79 $47

    inc b                                         ; $6554: $04
    sub d                                         ; $6555: $92
    add hl, hl                                    ; $6556: $29
    ld e, c                                       ; $6557: $59
    ld a, $02                                     ; $6558: $3e $02
    nop                                           ; $655a: $00
    ld e, a                                       ; $655b: $5f
    inc bc                                        ; $655c: $03
    ldh [$58], a                                  ; $655d: $e0 $58
    jp nz, Jump_000_0279                          ; $655f: $c2 $79 $02

    nop                                           ; $6562: $00
    ret nz                                        ; $6563: $c0

    ld c, h                                       ; $6564: $4c
    ld e, l                                       ; $6565: $5d
    ld [bc], a                                    ; $6566: $02
    push hl                                       ; $6567: $e5
    ld a, l                                       ; $6568: $7d
    ld l, b                                       ; $6569: $68
    inc b                                         ; $656a: $04

jr_0d4_656b:
    rlca                                          ; $656b: $07
    ld sp, $214f                                  ; $656c: $31 $4f $21
    sub d                                         ; $656f: $92
    add hl, hl                                    ; $6570: $29
    ret nz                                        ; $6571: $c0

    ld c, h                                       ; $6572: $4c
    ld [hl], c                                    ; $6573: $71
    dec h                                         ; $6574: $25
    ld b, a                                       ; $6575: $47
    inc b                                         ; $6576: $04
    ld a, d                                       ; $6577: $7a
    ld b, d                                       ; $6578: $42
    ret nz                                        ; $6579: $c0

    ld c, h                                       ; $657a: $4c
    ld e, a                                       ; $657b: $5f
    inc bc                                        ; $657c: $03
    push hl                                       ; $657d: $e5
    ld a, l                                       ; $657e: $7d
    ld [bc], a                                    ; $657f: $02
    nop                                           ; $6580: $00
    ld [bc], a                                    ; $6581: $02
    nop                                           ; $6582: $00
    and b                                         ; $6583: $a0
    ld b, h                                       ; $6584: $44
    ld e, l                                       ; $6585: $5d
    ld [bc], a                                    ; $6586: $02
    ld c, d                                       ; $6587: $4a
    ld a, [hl]                                    ; $6588: $7e
    ret nz                                        ; $6589: $c0

    ld c, b                                       ; $658a: $48
    ld l, e                                       ; $658b: $6b
    ld a, [hl]                                    ; $658c: $7e
    ld e, c                                       ; $658d: $59
    ld a, $68                                     ; $658e: $3e $68
    inc b                                         ; $6590: $04
    ret nz                                        ; $6591: $c0

    ld c, b                                       ; $6592: $48
    sub e                                         ; $6593: $93
    add hl, hl                                    ; $6594: $29
    sbc e                                         ; $6595: $9b
    ld b, [hl]                                    ; $6596: $46
    ld b, h                                       ; $6597: $44
    inc b                                         ; $6598: $04
    and b                                         ; $6599: $a0
    ld b, h                                       ; $659a: $44
    ld e, a                                       ; $659b: $5f
    inc bc                                        ; $659c: $03
    ld c, d                                       ; $659d: $4a
    ld a, [hl]                                    ; $659e: $7e
    ld [bc], a                                    ; $659f: $02
    nop                                           ; $65a0: $00
    ld [bc], a                                    ; $65a1: $02
    nop                                           ; $65a2: $00
    xor a                                         ; $65a3: $af
    ld a, [hl]                                    ; $65a4: $7e
    ld e, l                                       ; $65a5: $5d
    ld [bc], a                                    ; $65a6: $02
    and b                                         ; $65a7: $a0
    inc a                                         ; $65a8: $3c
    add [hl]                                      ; $65a9: $86
    inc d                                         ; $65aa: $14
    inc l                                         ; $65ab: $2c
    ld l, d                                       ; $65ac: $6a
    push af                                       ; $65ad: $f5
    dec [hl]                                      ; $65ae: $35
    cp l                                          ; $65af: $bd
    ld c, [hl]                                    ; $65b0: $4e
    ld b, e                                       ; $65b1: $43
    inc b                                         ; $65b2: $04
    rla                                           ; $65b3: $17
    ld a, [hl-]                                   ; $65b4: $3a
    db $ec                                        ; $65b5: $ec
    inc d                                         ; $65b6: $14
    ld [hl+], a                                   ; $65b7: $22
    dec d                                         ; $65b8: $15
    ld hl, $8e04                                  ; $65b9: $21 $04 $8e
    halt                                          ; $65bc: $76
    ld e, a                                       ; $65bd: $5f
    inc bc                                        ; $65be: $03
    pop hl                                        ; $65bf: $e1
    inc l                                         ; $65c0: $2c
    ld bc, $9000                                  ; $65c1: $01 $00 $90
    ld l, [hl]                                    ; $65c4: $6e
    ld e, l                                       ; $65c5: $5d
    ld [bc], a                                    ; $65c6: $02
    add b                                         ; $65c7: $80
    inc l                                         ; $65c8: $2c
    ld h, d                                       ; $65c9: $62
    ld [$1983], sp                                ; $65ca: $08 $83 $19
    db $eb                                        ; $65cd: $eb
    inc d                                         ; $65ce: $14
    ld [hl], c                                    ; $65cf: $71
    dec h                                         ; $65d0: $25
    ld b, c                                       ; $65d1: $41
    inc b                                         ; $65d2: $04
    ld h, e                                       ; $65d3: $63
    add hl, de                                    ; $65d4: $19
    db $e4                                        ; $65d5: $e4
    dec e                                         ; $65d6: $1d
    ld [bc], a                                    ; $65d7: $02
    dec d                                         ; $65d8: $15
    ld hl, $7204                                  ; $65d9: $21 $04 $72
    ld h, [hl]                                    ; $65dc: $66
    ld e, a                                       ; $65dd: $5f
    inc bc                                        ; $65de: $03
    ld h, e                                       ; $65df: $63
    add hl, de                                    ; $65e0: $19
    ld [bc], a                                    ; $65e1: $02
    nop                                           ; $65e2: $00
    ld e, e                                       ; $65e3: $5b
    ld bc, $035f                                  ; $65e4: $01 $5f $03
    ld h, e                                       ; $65e7: $63
    add hl, de                                    ; $65e8: $19
    ld e, e                                       ; $65e9: $5b
    ld bc, $035f                                  ; $65ea: $01 $5f $03
    ld e, a                                       ; $65ed: $5f
    inc bc                                        ; $65ee: $03
    ld h, e                                       ; $65ef: $63
    add hl, de                                    ; $65f0: $19
    ld e, e                                       ; $65f1: $5b
    ld bc, $035f                                  ; $65f2: $01 $5f $03
    ld e, a                                       ; $65f5: $5f
    inc bc                                        ; $65f6: $03
    ld h, e                                       ; $65f7: $63
    add hl, de                                    ; $65f8: $19
    ld [bc], a                                    ; $65f9: $02
    nop                                           ; $65fa: $00
    ld e, e                                       ; $65fb: $5b
    ld bc, $0f5e                                  ; $65fc: $01 $5e $0f
    ld e, a                                       ; $65ff: $5f
    inc bc                                        ; $6600: $03

    db $02, $00, $5b, $01, $89, $3c, $5f, $03, $45, $08, $5f, $03, $1a, $00, $5f, $03
    db $22, $14, $5f, $03, $b4, $75, $1a, $00, $01, $00, $5f, $03, $87, $06, $88, $2c
    db $02, $00, $5b, $01, $48, $3c, $5f, $03, $03, $00, $fd, $1c, $5f, $4a, $10, $00
    db $01, $00, $0d, $61, $55, $08, $1f, $42, $01, $04, $87, $06, $5f, $03, $6b, $5c
    db $01, $00, $5b, $01, $23, $1c, $5f, $03, $00, $00, $00, $20, $62, $3c, $40, $2c
    db $02, $00, $3f, $46, $10, $00, $1a, $00, $03, $00, $7c, $2d, $5f, $03, $87, $06
    db $01, $00, $37, $05, $5f, $03, $d9, $29, $01, $04, $f9, $12, $f1, $0c, $ff, $5f
    db $01, $00, $44, $3c, $10, $00, $67, $4c, $23, $00, $87, $06, $10, $00, $5f, $03
    db $02, $00, $ba, $1d, $ff, $63, $1d, $07, $85, $00, $b6, $1a, $ae, $01, $f1, $0c
    db $22, $04, $ec, $5c, $f1, $0c, $7c, $3e, $04, $04, $87, $06, $f5, $7d, $5f, $03
    db $01, $00, $7a, $0d, $7e, $1f, $0a, $05, $21, $08, $8d, $54, $70, $0d, $d5, $7d
    db $85, $00, $d7, $22, $30, $09, $bd, $46, $03, $00, $87, $06, $56, $6e, $5f, $03
    db $02, $00, $b6, $05, $1b, $0f, $ff, $47, $20, $00, $bc, $77, $33, $15, $89, $14
    db $43, $00, $d7, $22, $8d, $09, $9c, $42, $22, $00, $1c, $0b, $4d, $45, $5f, $7f
    db $02, $00, $f7, $09, $ff, $47, $1d, $0b, $ae, $0c, $d8, $29, $5f, $5f, $7c, $3e
    db $23, $00, $3b, $36, $0d, $35, $f9, $76, $21, $04, $5f, $03, $05, $02, $6d, $45
    db $01, $00, $d5, $09, $3d, $07, $c8, $00, $8b, $10, $1a, $32, $fe, $4a, $5f, $5f
    db $24, $00, $39, $36, $31, $15, $3f, $5b, $43, $00, $5f, $03, $05, $02, $cd, $1d
    db $01, $00, $b9, $05, $9f, $1f, $c7, $00, $06, $04, $f8, $2d, $bd, $42, $2f, $19
    db $04, $00, $9e, $42, $31, $15, $5f, $5f, $85, $00, $fb, $02, $ff, $2f, $05, $02
    db $02, $00, $93, $05, $1c, $0b, $ff, $33, $03, $00, $1a, $32, $d4, $14, $fe, $4e
    db $66, $00, $dd, $46, $13, $04, $ef, $10, $85, $00, $97, $12, $d0, $09, $9f, $17
    db $02, $00, $18, $09, $3c, $13, $e7, $00, $65, $00, $3a, $22, $fe, $4e, $d2, $0c
    db $08, $00, $56, $1a, $5e, $3b, $30, $09, $85, $00, $b5, $3e, $8d, $0d, $3d, $0b
    db $02, $00, $b1, $10, $5f, $03, $5b, $01, $65, $00, $d9, $0e, $0f, $0d, $fe, $4a
    db $24, $00, $f9, $0e, $2e, $05, $79, $42, $85, $00, $7f, $07, $ff, $3b, $6d, $05
    db $02, $00, $13, $15, $5f, $03, $3c, $0d, $65, $00, $11, $0d, $d9, $29, $fa, $0e
    db $02, $00, $f2, $10, $9d, $31, $2a, $01, $43, $00, $3d, $07, $8e, $05, $df, $2b
    db $02, $00, $17, $05, $5f, $03, $79, $3d, $c7, $00, $d9, $29, $fe, $4a, $32, $15
    db $03, $00, $bb, $56, $b6, $0c, $aa, $4c, $01, $04, $33, $02, $2b, $15, $9f, $13
    db $02, $00, $5b, $01, $5f, $03, $9f, $13, $5b, $01, $5f, $03, $5f, $03, $9f, $13
    db $5b, $01, $5f, $03, $5f, $03, $9f, $13, $02, $00, $5b, $01, $5f, $03, $9f, $13

    ld [bc], a                                    ; $6801: $02
    nop                                           ; $6802: $00
    ld sp, $5b7a                                  ; $6803: $31 $7a $5b
    ld bc, $035f                                  ; $6806: $01 $5f $03
    adc d                                         ; $6809: $8a
    inc b                                         ; $680a: $04
    ld e, a                                       ; $680b: $5f
    inc bc                                        ; $680c: $03
    ld sp, $4d7a                                  ; $680d: $31 $7a $4d
    add hl, sp                                    ; $6810: $39
    adc d                                         ; $6811: $8a
    inc b                                         ; $6812: $04
    ld sp, $5f7a                                  ; $6813: $31 $7a $5f
    inc bc                                        ; $6816: $03
    ld c, l                                       ; $6817: $4d
    add hl, sp                                    ; $6818: $39
    ld [bc], a                                    ; $6819: $02
    nop                                           ; $681a: $00
    ld e, a                                       ; $681b: $5f
    inc bc                                        ; $681c: $03
    ld sp, $4d7a                                  ; $681d: $31 $7a $4d
    add hl, sp                                    ; $6820: $39
    ld [bc], a                                    ; $6821: $02
    nop                                           ; $6822: $00
    ld sp, $5b7a                                  ; $6823: $31 $7a $5b
    ld bc, $035f                                  ; $6826: $01 $5f $03
    jp z, Jump_000_3108                           ; $6829: $ca $08 $31

    ld a, d                                       ; $682c: $7a
    ld d, a                                       ; $682d: $57
    ld a, [hl+]                                   ; $682e: $2a
    ld e, $57                                     ; $682f: $1e $57
    adc d                                         ; $6831: $8a
    inc b                                         ; $6832: $04
    ld sp, $377a                                  ; $6833: $31 $7a $37
    ld a, [hl-]                                   ; $6836: $3a
    sbc a                                         ; $6837: $9f
    ld h, e                                       ; $6838: $63
    ld [bc], a                                    ; $6839: $02
    nop                                           ; $683a: $00
    ld sp, $5f7a                                  ; $683b: $31 $7a $5f
    inc bc                                        ; $683e: $03
    sbc a                                         ; $683f: $9f
    ld h, e                                       ; $6840: $63
    ld [bc], a                                    ; $6841: $02
    nop                                           ; $6842: $00
    jr nc, jr_0d4_68bf                            ; $6843: $30 $7a

    ld e, e                                       ; $6845: $5b
    ld bc, $035f                                  ; $6846: $01 $5f $03
    ret                                           ; $6849: $c9


    ld [$0eb9], sp                                ; $684a: $08 $b9 $0e
    scf                                           ; $684d: $37
    ld a, [hl-]                                   ; $684e: $3a
    cp $4e                                        ; $684f: $fe $4e
    adc d                                         ; $6851: $8a
    inc b                                         ; $6852: $04
    jr nc, jr_0d4_68cf                            ; $6853: $30 $7a

    scf                                           ; $6855: $37
    ld a, [hl-]                                   ; $6856: $3a
    ld e, $57                                     ; $6857: $1e $57
    ld [bc], a                                    ; $6859: $02
    nop                                           ; $685a: $00
    jr nc, jr_0d4_68d7                            ; $685b: $30 $7a

    ld e, a                                       ; $685d: $5f
    inc bc                                        ; $685e: $03
    ld e, $57                                     ; $685f: $1e $57
    ld [bc], a                                    ; $6861: $02
    nop                                           ; $6862: $00
    rrca                                          ; $6863: $0f
    halt                                          ; $6864: $76
    ld e, h                                       ; $6865: $5c
    ld [bc], a                                    ; $6866: $02
    ld a, [bc]                                    ; $6867: $0a
    dec b                                         ; $6868: $05
    ld h, e                                       ; $6869: $63
    nop                                           ; $686a: $00
    halt                                          ; $686b: $76
    ld b, $3f                                     ; $686c: $06 $3f
    ld d, e                                       ; $686e: $53
    ld [$e90c], a                                 ; $686f: $ea $0c $e9
    inc c                                         ; $6872: $0c
    db $10                                        ; $6873: $10
    ld a, d                                       ; $6874: $7a
    db $fc                                        ; $6875: $fc
    ld [de], a                                    ; $6876: $12
    ld e, d                                       ; $6877: $5a
    ld a, [hl-]                                   ; $6878: $3a
    ld [bc], a                                    ; $6879: $02
    nop                                           ; $687a: $00
    rrca                                          ; $687b: $0f
    halt                                          ; $687c: $76
    ld e, a                                       ; $687d: $5f
    inc bc                                        ; $687e: $03
    db $10                                        ; $687f: $10
    ld a, d                                       ; $6880: $7a
    ld [bc], a                                    ; $6881: $02
    nop                                           ; $6882: $00
    xor $75                                       ; $6883: $ee $75
    ld e, e                                       ; $6885: $5b
    ld bc, $06fb                                  ; $6886: $01 $fb $06
    ld b, h                                       ; $6889: $44
    nop                                           ; $688a: $00
    cp c                                          ; $688b: $b9
    ld a, [bc]                                    ; $688c: $0a
    rra                                           ; $688d: $1f
    ld c, a                                       ; $688e: $4f
    db $eb                                        ; $688f: $eb
    ld [$0063], sp                                ; $6890: $08 $63 $00
    halt                                          ; $6893: $76
    ld b, $18                                     ; $6894: $06 $18
    ld [hl-], a                                   ; $6896: $32
    dec c                                         ; $6897: $0d
    add hl, de                                    ; $6898: $19
    ld [bc], a                                    ; $6899: $02
    nop                                           ; $689a: $00
    xor $75                                       ; $689b: $ee $75
    ld e, a                                       ; $689d: $5f
    inc bc                                        ; $689e: $03
    and l                                         ; $689f: $a5
    nop                                           ; $68a0: $00
    ld [bc], a                                    ; $68a1: $02
    nop                                           ; $68a2: $00
    call $b771                                    ; $68a3: $cd $71 $b7
    ld bc, $035f                                  ; $68a6: $01 $5f $03
    ld bc, $b200                                  ; $68a9: $01 $00 $b2
    dec l                                         ; $68ac: $2d
    cp e                                          ; $68ad: $bb
    ld d, $86                                     ; $68ae: $16 $86
    nop                                           ; $68b0: $00
    ld b, h                                       ; $68b1: $44
    nop                                           ; $68b2: $00
    ld a, [hl-]                                   ; $68b3: $3a
    ld c, $92                                     ; $68b4: $0e $92
    ld d, [hl]                                    ; $68b6: $56
    sbc [hl]                                      ; $68b7: $9e
    ld l, e                                       ; $68b8: $6b
    ld [bc], a                                    ; $68b9: $02
    nop                                           ; $68ba: $00
    call Call_0d4_5f71                            ; $68bb: $cd $71 $5f
    inc bc                                        ; $68be: $03

jr_0d4_68bf:
    adc $71                                       ; $68bf: $ce $71
    ld [bc], a                                    ; $68c1: $02
    nop                                           ; $68c2: $00
    xor h                                         ; $68c3: $ac
    ld l, l                                       ; $68c4: $6d
    or a                                          ; $68c5: $b7
    dec b                                         ; $68c6: $05
    ld e, a                                       ; $68c7: $5f
    inc bc                                        ; $68c8: $03
    inc h                                         ; $68c9: $24
    inc b                                         ; $68ca: $04
    ld e, d                                       ; $68cb: $5a
    ld a, [hl-]                                   ; $68cc: $3a
    cpl                                           ; $68cd: $2f
    add hl, de                                    ; $68ce: $19

jr_0d4_68cf:
    ccf                                           ; $68cf: $3f
    ld d, e                                       ; $68d0: $53
    ld h, a                                       ; $68d1: $67
    nop                                           ; $68d2: $00
    sbc h                                         ; $68d3: $9c
    ld b, d                                       ; $68d4: $42
    ld d, b                                       ; $68d5: $50
    add hl, de                                    ; $68d6: $19

jr_0d4_68d7:
    rst $18                                       ; $68d7: $df
    ld [hl], e                                    ; $68d8: $73
    ld [bc], a                                    ; $68d9: $02
    nop                                           ; $68da: $00
    xor h                                         ; $68db: $ac
    ld l, l                                       ; $68dc: $6d
    ld e, a                                       ; $68dd: $5f
    inc bc                                        ; $68de: $03
    xor l                                         ; $68df: $ad
    ld l, l                                       ; $68e0: $6d
    ld [bc], a                                    ; $68e1: $02
    nop                                           ; $68e2: $00
    adc e                                         ; $68e3: $8b
    ld l, c                                       ; $68e4: $69
    or [hl]                                       ; $68e5: $b6
    dec b                                         ; $68e6: $05
    ld e, a                                       ; $68e7: $5f
    inc bc                                        ; $68e8: $03
    inc hl                                        ; $68e9: $23
    nop                                           ; $68ea: $00
    ld e, c                                       ; $68eb: $59
    ld a, [hl-]                                   ; $68ec: $3a
    ld l, $15                                     ; $68ed: $2e $15
    ld a, a                                       ; $68ef: $7f
    ld e, a                                       ; $68f0: $5f
    ld b, [hl]                                    ; $68f1: $46
    nop                                           ; $68f2: $00
    ld [hl], $12                                  ; $68f3: $36 $12
    ld e, c                                       ; $68f5: $59
    ld a, [hl-]                                   ; $68f6: $3a
    inc l                                         ; $68f7: $2c
    dec c                                         ; $68f8: $0d
    ld [bc], a                                    ; $68f9: $02
    nop                                           ; $68fa: $00
    adc e                                         ; $68fb: $8b
    ld l, c                                       ; $68fc: $69
    ld e, a                                       ; $68fd: $5f
    inc bc                                        ; $68fe: $03
    jp hl                                         ; $68ff: $e9


    inc b                                         ; $6900: $04
    ld [bc], a                                    ; $6901: $02
    nop                                           ; $6902: $00
    ld l, d                                       ; $6903: $6a
    ld h, l                                       ; $6904: $65
    sub a                                         ; $6905: $97
    ld bc, $035f                                  ; $6906: $01 $5f $03
    ld b, l                                       ; $6909: $45
    nop                                           ; $690a: $00
    sub $29                                       ; $690b: $d6 $29
    call c, Call_0d4_524a                         ; $690d: $dc $4a $52
    add hl, de                                    ; $6910: $19
    ld h, [hl]                                    ; $6911: $66
    nop                                           ; $6912: $00
    db $fd                                        ; $6913: $fd
    ld c, d                                       ; $6914: $4a
    rrca                                          ; $6915: $0f
    ld de, $0a55                                  ; $6916: $11 $55 $0a
    ld h, l                                       ; $6919: $65
    nop                                           ; $691a: $00
    ld l, d                                       ; $691b: $6a
    ld h, l                                       ; $691c: $65
    inc [hl]                                      ; $691d: $34
    ld a, [bc]                                    ; $691e: $0a
    ld e, a                                       ; $691f: $5f
    inc bc                                        ; $6920: $03
    ld [bc], a                                    ; $6921: $02
    nop                                           ; $6922: $00
    ld c, c                                       ; $6923: $49
    ld h, c                                       ; $6924: $61
    ld a, [de]                                    ; $6925: $1a
    ld [bc], a                                    ; $6926: $02
    ld de, $662b                                  ; $6927: $11 $2b $66
    inc b                                         ; $692a: $04
    scf                                           ; $692b: $37
    ld [hl], $52                                  ; $692c: $36 $52
    add hl, de                                    ; $692e: $19
    dec a                                         ; $692f: $3d
    ld e, e                                       ; $6930: $5b
    inc b                                         ; $6931: $04
    nop                                           ; $6932: $00
    ld hl, sp+$29                                 ; $6933: $f8 $29
    ld a, [hl]                                    ; $6935: $7e
    ld h, e                                       ; $6936: $63
    ld a, [bc]                                    ; $6937: $0a
    ld bc, $0065                                  ; $6938: $01 $65 $00
    ret nc                                        ; $693b: $d0

    add hl, bc                                    ; $693c: $09
    ld c, c                                       ; $693d: $49
    ld h, c                                       ; $693e: $61
    dec e                                         ; $693f: $1d
    rlca                                          ; $6940: $07
    ld [bc], a                                    ; $6941: $02
    nop                                           ; $6942: $00
    dec sp                                        ; $6943: $3b
    ld [bc], a                                    ; $6944: $02
    db $eb                                        ; $6945: $eb
    add hl, sp                                    ; $6946: $39
    db $fc                                        ; $6947: $fc
    ld c, a                                       ; $6948: $4f
    nop                                           ; $6949: $00
    nop                                           ; $694a: $00
    or $2d                                        ; $694b: $f6 $2d
    ld l, b                                       ; $694d: $68
    inc b                                         ; $694e: $04
    db $ed                                        ; $694f: $ed
    stop                                          ; $6950: $10 $00
    nop                                           ; $6952: $00
    xor [hl]                                      ; $6953: $ae
    add hl, de                                    ; $6954: $19
    sub l                                         ; $6955: $95
    scf                                           ; $6956: $37
    ld b, a                                       ; $6957: $47
    nop                                           ; $6958: $00
    ld h, l                                       ; $6959: $65
    nop                                           ; $695a: $00
    ld d, l                                       ; $695b: $55
    ld a, [bc]                                    ; $695c: $0a
    rlca                                          ; $695d: $07
    ld e, l                                       ; $695e: $5d
    ld e, a                                       ; $695f: $5f
    inc bc                                        ; $6960: $03
    ld [bc], a                                    ; $6961: $02
    nop                                           ; $6962: $00
    ld e, e                                       ; $6963: $5b
    ld bc, $175b                                  ; $6964: $01 $5b $17
    ld c, l                                       ; $6967: $4d
    dec b                                         ; $6968: $05
    nop                                           ; $6969: $00
    nop                                           ; $696a: $00
    ld d, $22                                     ; $696b: $16 $22
    call c, $264e                                 ; $696d: $dc $4e $26
    add hl, bc                                    ; $6970: $09
    nop                                           ; $6971: $00
    nop                                           ; $6972: $00
    inc sp                                        ; $6973: $33
    ld a, [hl+]                                   ; $6974: $2a
    cp h                                          ; $6975: $bc
    dec de                                        ; $6976: $1b
    jp z, Jump_000_0208                           ; $6977: $ca $08 $02

    nop                                           ; $697a: $00
    db $db                                        ; $697b: $db
    ld b, $c5                                     ; $697c: $06 $c5
    ld d, h                                       ; $697e: $54
    dec hl                                        ; $697f: $2b
    ld bc, $0001                                  ; $6980: $01 $01 $00
    ld e, e                                       ; $6983: $5b
    ld bc, $031d                                  ; $6984: $01 $1d $03
    add e                                         ; $6987: $83
    nop                                           ; $6988: $00
    ld b, h                                       ; $6989: $44
    nop                                           ; $698a: $00
    ld e, c                                       ; $698b: $59
    ld a, $0c                                     ; $698c: $3e $0c
    ld c, $ff                                     ; $698e: $0e $ff
    ccf                                           ; $6990: $3f
    ld hl, $d100                                  ; $6991: $21 $00 $d1
    dec e                                         ; $6994: $1d
    ld a, l                                       ; $6995: $7d
    ld c, e                                       ; $6996: $4b
    dec [hl]                                      ; $6997: $35
    rra                                           ; $6998: $1f
    ld [hl+], a                                   ; $6999: $22
    nop                                           ; $699a: $00
    ld a, [c]                                     ; $699b: $f2
    add hl, bc                                    ; $699c: $09
    inc l                                         ; $699d: $2c
    ld bc, $06fb                                  ; $699e: $01 $fb $06
    ld bc, $ea00                                  ; $69a1: $01 $00 $ea
    ld de, $015b                                  ; $69a4: $11 $5b $01
    ld e, a                                       ; $69a7: $5f
    inc bc                                        ; $69a8: $03
    jr nz, jr_0d4_69ab                            ; $69a9: $20 $00

jr_0d4_69ab:
    sub b                                         ; $69ab: $90
    ld d, $ff                                     ; $69ac: $16 $ff
    ld b, e                                       ; $69ae: $43
    daa                                           ; $69af: $27
    dec b                                         ; $69b0: $05
    nop                                           ; $69b1: $00
    nop                                           ; $69b2: $00
    sub l                                         ; $69b3: $95
    ld [de], a                                    ; $69b4: $12
    ld h, $05                                     ; $69b5: $26 $05
    rst $30                                       ; $69b7: $f7
    cpl                                           ; $69b8: $2f
    ld bc, $0e00                                  ; $69b9: $01 $00 $0e
    ld c, $5f                                     ; $69bc: $0e $5f
    inc bc                                        ; $69be: $03
    call nz, Call_000_0200                        ; $69bf: $c4 $00 $02
    nop                                           ; $69c2: $00
    dec hl                                        ; $69c3: $2b
    ld [de], a                                    ; $69c4: $12
    ld e, l                                       ; $69c5: $5d
    ld [bc], a                                    ; $69c6: $02
    inc sp                                        ; $69c7: $33
    inc sp                                        ; $69c8: $33
    nop                                           ; $69c9: $00
    nop                                           ; $69ca: $00
    ld d, d                                       ; $69cb: $52
    ld [de], a                                    ; $69cc: $12
    inc b                                         ; $69cd: $04
    ld bc, $0061                                  ; $69ce: $01 $61 $00
    jr nz, jr_0d4_69d3                            ; $69d1: $20 $00

jr_0d4_69d3:
    pop af                                        ; $69d3: $f1
    ld h, $47                                     ; $69d4: $26 $47
    dec b                                         ; $69d6: $05
    rst $38                                       ; $69d7: $ff
    ld c, a                                       ; $69d8: $4f
    add d                                         ; $69d9: $82
    nop                                           ; $69da: $00
    inc l                                         ; $69db: $2c
    ld d, $5f                                     ; $69dc: $16 $5f
    inc bc                                        ; $69de: $03
    pop af                                        ; $69df: $f1
    ld h, $02                                     ; $69e0: $26 $02
    nop                                           ; $69e2: $00
    ld e, e                                       ; $69e3: $5b
    ld bc, $035f                                  ; $69e4: $01 $5f $03
    pop af                                        ; $69e7: $f1
    ld h, $5b                                     ; $69e8: $26 $5b
    ld bc, $035f                                  ; $69ea: $01 $5f $03
    ld e, a                                       ; $69ed: $5f
    inc bc                                        ; $69ee: $03
    pop af                                        ; $69ef: $f1
    ld h, $5b                                     ; $69f0: $26 $5b
    ld bc, $035f                                  ; $69f2: $01 $5f $03
    ld e, a                                       ; $69f5: $5f
    inc bc                                        ; $69f6: $03
    pop af                                        ; $69f7: $f1
    ld h, $02                                     ; $69f8: $26 $02
    nop                                           ; $69fa: $00
    ld e, e                                       ; $69fb: $5b
    ld bc, $035f                                  ; $69fc: $01 $5f $03
    pop af                                        ; $69ff: $f1
    ld h, $02                                     ; $6a00: $26 $02
    nop                                           ; $6a02: $00
    ld d, b                                       ; $6a03: $50
    dec sp                                        ; $6a04: $3b
    ld e, e                                       ; $6a05: $5b
    ld bc, $035f                                  ; $6a06: $01 $5f $03
    jr z, jr_0d4_6a0b                             ; $6a09: $28 $00

jr_0d4_6a0b:
    jr nc, jr_0d4_6a44                            ; $6a0b: $30 $37

    ld e, a                                       ; $6a0d: $5f
    inc bc                                        ; $6a0e: $03
    ld c, e                                       ; $6a0f: $4b
    dec d                                         ; $6a10: $15
    adc c                                         ; $6a11: $89
    inc b                                         ; $6a12: $04
    ld d, b                                       ; $6a13: $50
    dec sp                                        ; $6a14: $3b
    ld e, a                                       ; $6a15: $5f
    inc bc                                        ; $6a16: $03
    call $021d                                    ; $6a17: $cd $1d $02
    nop                                           ; $6a1a: $00
    ld d, b                                       ; $6a1b: $50
    dec sp                                        ; $6a1c: $3b
    ld e, a                                       ; $6a1d: $5f
    inc bc                                        ; $6a1e: $03
    call $021d                                    ; $6a1f: $cd $1d $02
    nop                                           ; $6a22: $00
    ld d, b                                       ; $6a23: $50
    dec sp                                        ; $6a24: $3b
    ld e, e                                       ; $6a25: $5b
    ld bc, $035f                                  ; $6a26: $01 $5f $03
    ld b, a                                       ; $6a29: $47
    nop                                           ; $6a2a: $00
    or d                                          ; $6a2b: $b2
    add hl, hl                                    ; $6a2c: $29
    dec bc                                        ; $6a2d: $0b
    ld de, $3b50                                  ; $6a2e: $11 $50 $3b
    xor c                                         ; $6a31: $a9
    ld [$3b50], sp                                ; $6a32: $08 $50 $3b
    rst $28                                       ; $6a35: $ef
    dec h                                         ; $6a36: $25
    cp c                                          ; $6a37: $b9
    ld c, d                                       ; $6a38: $4a
    ld [bc], a                                    ; $6a39: $02
    nop                                           ; $6a3a: $00
    ld d, b                                       ; $6a3b: $50
    dec sp                                        ; $6a3c: $3b
    ld e, a                                       ; $6a3d: $5f
    inc bc                                        ; $6a3e: $03
    cp c                                          ; $6a3f: $b9
    ld c, d                                       ; $6a40: $4a
    ld [bc], a                                    ; $6a41: $02
    nop                                           ; $6a42: $00
    ld l, e                                       ; $6a43: $6b

jr_0d4_6a44:
    dec d                                         ; $6a44: $15
    ld e, l                                       ; $6a45: $5d
    ld [bc], a                                    ; $6a46: $02
    cpl                                           ; $6a47: $2f
    scf                                           ; $6a48: $37
    dec h                                         ; $6a49: $25
    nop                                           ; $6a4a: $00
    db $d3                                        ; $6a4b: $d3
    dec l                                         ; $6a4c: $2d
    call z, $b90c                                 ; $6a4d: $cc $0c $b9
    ld b, [hl]                                    ; $6a50: $46
    ld c, c                                       ; $6a51: $49
    nop                                           ; $6a52: $00
    ld [hl], $3a                                  ; $6a53: $36 $3a
    ld [hl], b                                    ; $6a55: $70
    ld hl, $4ada                                  ; $6a56: $21 $da $4a
    inc b                                         ; $6a59: $04
    nop                                           ; $6a5a: $00
    ld l, l                                       ; $6a5b: $6d
    ld h, $5f                                     ; $6a5c: $26 $5f
    inc bc                                        ; $6a5e: $03
    cpl                                           ; $6a5f: $2f
    scf                                           ; $6a60: $37
    ld [bc], a                                    ; $6a61: $02
    nop                                           ; $6a62: $00
    ld e, l                                       ; $6a63: $5d
    ld [bc], a                                    ; $6a64: $02
    sub d                                         ; $6a65: $92
    add hl, hl                                    ; $6a66: $29
    db $10                                        ; $6a67: $10
    scf                                           ; $6a68: $37
    inc bc                                        ; $6a69: $03
    nop                                           ; $6a6a: $00
    cpl                                           ; $6a6b: $2f
    add hl, de                                    ; $6a6c: $19
    ld d, a                                       ; $6a6d: $57
    ld a, $49                                     ; $6a6e: $3e $49
    inc b                                         ; $6a70: $04
    xor e                                         ; $6a71: $ab
    inc c                                         ; $6a72: $0c
    dec d                                         ; $6a73: $15
    ld [hl], $4f                                  ; $6a74: $36 $4f
    dec e                                         ; $6a76: $1d
    ei                                            ; $6a77: $fb
    ld c, [hl]                                    ; $6a78: $4e
    dec h                                         ; $6a79: $25
    nop                                           ; $6a7a: $00
    ldh a, [$29]                                  ; $6a7b: $f0 $29
    ld e, a                                       ; $6a7d: $5f
    inc bc                                        ; $6a7e: $03
    ld c, $33                                     ; $6a7f: $0e $33
    ld [bc], a                                    ; $6a81: $02
    nop                                           ; $6a82: $00
    ld e, l                                       ; $6a83: $5d
    ld [bc], a                                    ; $6a84: $02
    xor l                                         ; $6a85: $ad
    ld a, [hl+]                                   ; $6a86: $2a
    ld [hl], a                                    ; $6a87: $77
    ld a, $47                                     ; $6a88: $3e $47
    inc b                                         ; $6a8a: $04
    add hl, de                                    ; $6a8b: $19
    ld [hl], $2f                                  ; $6a8c: $36 $2f
    dec e                                         ; $6a8e: $1d
    sbc $52                                       ; $6a8f: $de $52
    dec b                                         ; $6a91: $05
    nop                                           ; $6a92: $00
    ld a, b                                       ; $6a93: $78
    ld b, d                                       ; $6a94: $42
    call z, Call_0d4_5010                         ; $6a95: $cc $10 $50
    dec e                                         ; $6a98: $1d
    dec b                                         ; $6a99: $05
    nop                                           ; $6a9a: $00
    sub b                                         ; $6a9b: $90
    ld hl, $035f                                  ; $6a9c: $21 $5f $03
    db $ed                                        ; $6a9f: $ed
    ld l, $02                                     ; $6aa0: $2e $02
    nop                                           ; $6aa2: $00
    ld e, l                                       ; $6aa3: $5d
    ld [bc], a                                    ; $6aa4: $02
    rrca                                          ; $6aa5: $0f
    ld h, $b9                                     ; $6aa6: $26 $b9
    ld b, [hl]                                    ; $6aa8: $46
    dec h                                         ; $6aa9: $25
    nop                                           ; $6aaa: $00
    ld a, [hl-]                                   ; $6aab: $3a
    ld a, $ee                                     ; $6aac: $3e $ee
    inc d                                         ; $6aae: $14
    sbc $52                                       ; $6aaf: $de $52
    dec b                                         ; $6ab1: $05
    nop                                           ; $6ab2: $00
    scf                                           ; $6ab3: $37
    ld a, [hl-]                                   ; $6ab4: $3a
    call z, $300c                                 ; $6ab5: $cc $0c $30
    add hl, de                                    ; $6ab8: $19
    dec h                                         ; $6ab9: $25
    nop                                           ; $6aba: $00
    ld [hl], b                                    ; $6abb: $70
    ld l, $5f                                     ; $6abc: $2e $5f
    inc bc                                        ; $6abe: $03
    db $ed                                        ; $6abf: $ed
    inc d                                         ; $6ac0: $14
    ld [bc], a                                    ; $6ac1: $02
    nop                                           ; $6ac2: $00
    sub l                                         ; $6ac3: $95
    ld a, $5d                                     ; $6ac4: $3e $5d
    ld [bc], a                                    ; $6ac6: $02
    adc d                                         ; $6ac7: $8a
    ld [$0006], sp                                ; $6ac8: $08 $06 $00
    rla                                           ; $6acb: $17
    ld a, [hl-]                                   ; $6acc: $3a
    xor $14                                       ; $6acd: $ee $14
    sbc $52                                       ; $6acf: $de $52
    ld b, $00                                     ; $6ad1: $06 $00
    add $64                                       ; $6ad3: $c6 $64
    inc [hl]                                      ; $6ad5: $34
    ld b, [hl]                                    ; $6ad6: $46
    ld c, $15                                     ; $6ad7: $0e $15
    inc h                                         ; $6ad9: $24
    inc b                                         ; $6ada: $04
    jp c, $4f4a                                   ; $6adb: $da $4a $4f

    dec e                                         ; $6ade: $1d
    ld e, a                                       ; $6adf: $5f
    inc bc                                        ; $6ae0: $03
    ld [bc], a                                    ; $6ae1: $02
    nop                                           ; $6ae2: $00
    ld d, h                                       ; $6ae3: $54
    dec d                                         ; $6ae4: $15
    inc e                                         ; $6ae5: $1c
    daa                                           ; $6ae6: $27
    ld l, c                                       ; $6ae7: $69
    inc b                                         ; $6ae8: $04
    inc bc                                        ; $6ae9: $03
    inc d                                         ; $6aea: $14
    ld a, e                                       ; $6aeb: $7b
    ld b, [hl]                                    ; $6aec: $46
    ld sp, $101d                                  ; $6aed: $31 $1d $10
    halt                                          ; $6af0: $76
    inc h                                         ; $6af1: $24
    inc d                                         ; $6af2: $14
    push de                                       ; $6af3: $d5
    dec l                                         ; $6af4: $2d
    ld de, $1e1d                                  ; $6af5: $11 $1d $1e
    ld e, e                                       ; $6af8: $5b
    ld [bc], a                                    ; $6af9: $02
    nop                                           ; $6afa: $00
    ld d, [hl]                                    ; $6afb: $56
    ld a, [hl-]                                   ; $6afc: $3a
    ld e, a                                       ; $6afd: $5f
    inc bc                                        ; $6afe: $03
    db $ec                                        ; $6aff: $ec
    inc d                                         ; $6b00: $14
    ld [bc], a                                    ; $6b01: $02
    nop                                           ; $6b02: $00
    ld d, l                                       ; $6b03: $55
    dec c                                         ; $6b04: $0d
    inc e                                         ; $6b05: $1c
    daa                                           ; $6b06: $27
    ld l, d                                       ; $6b07: $6a
    ld [$0003], sp                                ; $6b08: $08 $03 $00
    jr jr_0d4_6b43                                ; $6b0b: $18 $36

    cp $56                                        ; $6b0d: $fe $56
    db $10                                        ; $6b0f: $10
    add hl, de                                    ; $6b10: $19
    inc b                                         ; $6b11: $04
    nop                                           ; $6b12: $00
    jr c, jr_0d4_6b4f                             ; $6b13: $38 $3a

    sbc $52                                       ; $6b15: $de $52
    ld de, $461d                                  ; $6b17: $11 $1d $46
    inc b                                         ; $6b1a: $04
    jp nc, Jump_0d4_5f2d                          ; $6b1b: $d2 $2d $5f

    inc bc                                        ; $6b1e: $03
    cp c                                          ; $6b1f: $b9
    ld b, [hl]                                    ; $6b20: $46
    ld [bc], a                                    ; $6b21: $02
    nop                                           ; $6b22: $00
    ld de, $5d2a                                  ; $6b23: $11 $2a $5d
    ld [bc], a                                    ; $6b26: $02
    adc d                                         ; $6b27: $8a
    ld [$0004], sp                                ; $6b28: $08 $04 $00
    cp b                                          ; $6b2b: $b8
    dec l                                         ; $6b2c: $2d
    sbc $52                                       ; $6b2d: $de $52
    or b                                          ; $6b2f: $b0
    db $10                                        ; $6b30: $10
    inc hl                                        ; $6b31: $23
    nop                                           ; $6b32: $00
    ld sp, hl                                     ; $6b33: $f9
    dec [hl]                                      ; $6b34: $35
    inc [hl]                                      ; $6b35: $34
    ld hl, $4edc                                  ; $6b36: $21 $dc $4e
    ld [bc], a                                    ; $6b39: $02
    nop                                           ; $6b3a: $00
    db $d3                                        ; $6b3b: $d3
    dec l                                         ; $6b3c: $2d
    ld e, a                                       ; $6b3d: $5f
    inc bc                                        ; $6b3e: $03
    adc d                                         ; $6b3f: $8a
    ld [$0002], sp                                ; $6b40: $08 $02 $00

jr_0d4_6b43:
    rlca                                          ; $6b43: $07
    ld [de], a                                    ; $6b44: $12
    ld e, l                                       ; $6b45: $5d
    ld [bc], a                                    ; $6b46: $02
    db $f4                                        ; $6b47: $f4
    ld sp, $0004                                  ; $6b48: $31 $04 $00
    ld a, d                                       ; $6b4b: $7a
    ld b, [hl]                                    ; $6b4c: $46
    or e                                          ; $6b4d: $b3
    inc c                                         ; $6b4e: $0c

jr_0d4_6b4f:
    adc e                                         ; $6b4f: $8b
    ld [$0888], sp                                ; $6b50: $08 $88 $08
    ret c                                         ; $6b53: $d8

    ld sp, $469b                                  ; $6b54: $31 $9b $46
    pop de                                        ; $6b57: $d1
    inc d                                         ; $6b58: $14
    inc hl                                        ; $6b59: $23
    nop                                           ; $6b5a: $00
    ld [hl], $3a                                  ; $6b5b: $36 $3a
    rl b                                          ; $6b5d: $cb $10
    ld e, a                                       ; $6b5f: $5f
    inc bc                                        ; $6b60: $03
    ld [bc], a                                    ; $6b61: $02
    nop                                           ; $6b62: $00
    rst $00                                       ; $6b63: $c7
    dec c                                         ; $6b64: $0d
    db $f4                                        ; $6b65: $f4
    ld sp, $025d                                  ; $6b66: $31 $5d $02
    inc b                                         ; $6b69: $04
    nop                                           ; $6b6a: $00
    add hl, sp                                    ; $6b6b: $39
    ld a, $cd                                     ; $6b6c: $3e $cd
    db $10                                        ; $6b6e: $10
    ld e, $5b                                     ; $6b6f: $1e $5b
    inc bc                                        ; $6b71: $03
    nop                                           ; $6b72: $00
    or [hl]                                       ; $6b73: $b6
    dec l                                         ; $6b74: $2d
    xor $14                                       ; $6b75: $ee $14
    ld a, d                                       ; $6b77: $7a
    ld b, d                                       ; $6b78: $42
    inc hl                                        ; $6b79: $23
    nop                                           ; $6b7a: $00
    db $d3                                        ; $6b7b: $d3
    dec l                                         ; $6b7c: $2d
    jp z, $5f0c                                   ; $6b7d: $ca $0c $5f

    inc bc                                        ; $6b80: $03
    ld [bc], a                                    ; $6b81: $02
    nop                                           ; $6b82: $00
    ld a, b                                       ; $6b83: $78
    dec c                                         ; $6b84: $0d
    push bc                                       ; $6b85: $c5
    dec b                                         ; $6b86: $05
    ld e, a                                       ; $6b87: $5f
    inc bc                                        ; $6b88: $03
    inc b                                         ; $6b89: $04
    nop                                           ; $6b8a: $00
    call Call_000_3010                            ; $6b8b: $cd $10 $30
    dec e                                         ; $6b8e: $1d
    or d                                          ; $6b8f: $b2
    add hl, hl                                    ; $6b90: $29
    ld h, $00                                     ; $6b91: $26 $00
    rrca                                          ; $6b93: $0f
    add hl, de                                    ; $6b94: $19
    jp nc, $372d                                  ; $6b95: $d2 $2d $37

    ld a, [hl-]                                   ; $6b98: $3a
    ld [hl+], a                                   ; $6b99: $22
    nop                                           ; $6b9a: $00
    ld e, a                                       ; $6b9b: $5f
    inc bc                                        ; $6b9c: $03
    push bc                                       ; $6b9d: $c5
    dec b                                         ; $6b9e: $05
    adc c                                         ; $6b9f: $89
    ld [$0002], sp                                ; $6ba0: $08 $02 $00
    ld e, e                                       ; $6ba3: $5b
    ld bc, $01a4                                  ; $6ba4: $01 $a4 $01
    ld e, a                                       ; $6ba7: $5f
    inc bc                                        ; $6ba8: $03
    inc bc                                        ; $6ba9: $03
    nop                                           ; $6baa: $00
    rst $28                                       ; $6bab: $ef
    inc d                                         ; $6bac: $14
    db $f4                                        ; $6bad: $f4
    ld sp, $0065                                  ; $6bae: $31 $65 $00
    inc b                                         ; $6bb1: $04
    nop                                           ; $6bb2: $00
    ld c, $1d                                     ; $6bb3: $0e $1d
    jp nc, Jump_000_172d                          ; $6bb5: $d2 $2d $17

    ld [hl], $03                                  ; $6bb8: $36 $03
    nop                                           ; $6bba: $00
    ld e, a                                       ; $6bbb: $5f
    inc bc                                        ; $6bbc: $03
    ld b, h                                       ; $6bbd: $44
    ld bc, $10cc                                  ; $6bbe: $01 $cc $10
    ld [bc], a                                    ; $6bc1: $02
    nop                                           ; $6bc2: $00
    ld e, e                                       ; $6bc3: $5b
    ld bc, $0183                                  ; $6bc4: $01 $83 $01
    ld e, a                                       ; $6bc7: $5f
    inc bc                                        ; $6bc8: $03
    inc bc                                        ; $6bc9: $03
    nop                                           ; $6bca: $00
    ld de, $8319                                  ; $6bcb: $11 $19 $83
    ld bc, $0084                                  ; $6bce: $01 $84 $00
    dec h                                         ; $6bd1: $25
    inc b                                         ; $6bd2: $04
    ld [hl], e                                    ; $6bd3: $73
    dec h                                         ; $6bd4: $25
    sbc h                                         ; $6bd5: $9c
    ld c, d                                       ; $6bd6: $4a
    rst $30                                       ; $6bd7: $f7
    ld sp, $0003                                  ; $6bd8: $31 $03 $00
    ld sp, $5f1d                                  ; $6bdb: $31 $1d $5f
    inc bc                                        ; $6bde: $03
    add e                                         ; $6bdf: $83
    ld bc, $0002                                  ; $6be0: $01 $02 $00
    ld e, e                                       ; $6be3: $5b
    ld bc, $035f                                  ; $6be4: $01 $5f $03
    add e                                         ; $6be7: $83
    ld bc, $015b                                  ; $6be8: $01 $5b $01
    ld e, a                                       ; $6beb: $5f
    inc bc                                        ; $6bec: $03
    ld e, a                                       ; $6bed: $5f
    inc bc                                        ; $6bee: $03
    add e                                         ; $6bef: $83
    ld bc, $015b                                  ; $6bf0: $01 $5b $01
    ld e, a                                       ; $6bf3: $5f
    inc bc                                        ; $6bf4: $03
    ld e, a                                       ; $6bf5: $5f
    inc bc                                        ; $6bf6: $03
    add e                                         ; $6bf7: $83
    ld bc, $0002                                  ; $6bf8: $01 $02 $00
    ld e, e                                       ; $6bfb: $5b
    ld bc, $035f                                  ; $6bfc: $01 $5f $03
    add e                                         ; $6bff: $83
    ld bc, $0001                                  ; $6c00: $01 $01 $00
    ld e, e                                       ; $6c03: $5b
    ld bc, $200f                                  ; $6c04: $01 $0f $20
    ld e, [hl]                                    ; $6c07: $5e
    dec bc                                        ; $6c08: $0b
    ld b, h                                       ; $6c09: $44
    ld [$2e51], sp                                ; $6c0a: $08 $51 $2e
    ld e, a                                       ; $6c0d: $5f
    inc bc                                        ; $6c0e: $03
    ld [hl], a                                    ; $6c0f: $77
    ld b, e                                       ; $6c10: $43
    ld b, c                                       ; $6c11: $41
    inc b                                         ; $6c12: $04
    or h                                          ; $6c13: $b4
    cpl                                           ; $6c14: $2f
    ld e, a                                       ; $6c15: $5f
    inc bc                                        ; $6c16: $03
    add a                                         ; $6c17: $87
    ld a, [de]                                    ; $6c18: $1a
    ld h, e                                       ; $6c19: $63
    inc b                                         ; $6c1a: $04
    inc sp                                        ; $6c1b: $33
    inc sp                                        ; $6c1c: $33
    ld e, a                                       ; $6c1d: $5f
    inc bc                                        ; $6c1e: $03
    jp c, $0153                                   ; $6c1f: $da $53 $01

    nop                                           ; $6c22: $00
    ld e, l                                       ; $6c23: $5d
    ld [bc], a                                    ; $6c24: $02
    rrca                                          ; $6c25: $0f
    jr nz, jr_0d4_6c9e                            ; $6c26: $20 $76

    ccf                                           ; $6c28: $3f
    jr nz, jr_0d4_6c30                            ; $6c29: $20 $05

    adc e                                         ; $6c2b: $8b
    inc hl                                        ; $6c2c: $23
    and h                                         ; $6c2d: $a4
    ld [de], a                                    ; $6c2e: $12
    or l                                          ; $6c2f: $b5

jr_0d4_6c30:
    dec sp                                        ; $6c30: $3b
    jr nz, jr_0d4_6c33                            ; $6c31: $20 $00

jr_0d4_6c33:
    ld l, e                                       ; $6c33: $6b
    inc hl                                        ; $6c34: $23
    ld b, l                                       ; $6c35: $45
    ld de, $3f15                                  ; $6c36: $11 $15 $3f
    add d                                         ; $6c39: $82
    inc b                                         ; $6c3a: $04
    xor e                                         ; $6c3b: $ab
    ld [hl+], a                                   ; $6c3c: $22
    ld e, a                                       ; $6c3d: $5f
    inc bc                                        ; $6c3e: $03
    rst $30                                       ; $6c3f: $f7
    ld c, e                                       ; $6c40: $4b
    ld bc, $5d00                                  ; $6c41: $01 $00 $5d
    ld [bc], a                                    ; $6c44: $02
    inc c                                         ; $6c45: $0c
    daa                                           ; $6c46: $27
    rrca                                          ; $6c47: $0f
    jr nz, jr_0d4_6c4a                            ; $6c48: $20 $00

jr_0d4_6c4a:
    nop                                           ; $6c4a: $00
    and b                                         ; $6c4b: $a0
    nop                                           ; $6c4c: $00
    nop                                           ; $6c4d: $00
    ld bc, $04c1                                  ; $6c4e: $01 $c1 $04
    jr nz, jr_0d4_6c53                            ; $6c51: $20 $00

jr_0d4_6c53:
    xor d                                         ; $6c53: $aa
    ld e, $77                                     ; $6c54: $1e $77
    ld b, e                                       ; $6c56: $43
    jp Jump_000_000d                              ; $6c57: $c3 $0d $00


    nop                                           ; $6c5a: $00
    xor l                                         ; $6c5b: $ad
    ld h, $e5                                     ; $6c5c: $26 $e5
    ld de, $035f                                  ; $6c5e: $11 $5f $03
    ld bc, $0c00                                  ; $6c61: $01 $00 $0c
    inc hl                                        ; $6c64: $23
    ld e, l                                       ; $6c65: $5d
    ld [bc], a                                    ; $6c66: $02
    rrca                                          ; $6c67: $0f
    jr nz, jr_0d4_6c8a                            ; $6c68: $20 $20

    nop                                           ; $6c6a: $00
    rst $20                                       ; $6c6b: $e7
    dec d                                         ; $6c6c: $15
    ld b, d                                       ; $6c6d: $42
    add hl, bc                                    ; $6c6e: $09
    ld l, b                                       ; $6c6f: $68
    ld d, $00                                     ; $6c70: $16 $00
    nop                                           ; $6c72: $00
    ld l, h                                       ; $6c73: $6c
    inc hl                                        ; $6c74: $23
    rst $00                                       ; $6c75: $c7
    dec d                                         ; $6c76: $15
    reti                                          ; $6c77: $d9


    ld b, e                                       ; $6c78: $43
    nop                                           ; $6c79: $00
    nop                                           ; $6c7a: $00
    ld [$5f16], sp                                ; $6c7b: $08 $16 $5f
    inc bc                                        ; $6c7e: $03
    ld l, l                                       ; $6c7f: $6d
    inc hl                                        ; $6c80: $23
    ld bc, $5d00                                  ; $6c81: $01 $00 $5d
    ld [bc], a                                    ; $6c84: $02
    ld l, $27                                     ; $6c85: $2e $27
    ei                                            ; $6c87: $fb
    ld e, a                                       ; $6c88: $5f
    inc h                                         ; $6c89: $24

jr_0d4_6c8a:
    nop                                           ; $6c8a: $00
    add sp, $1a                                   ; $6c8b: $e8 $1a
    rst $38                                       ; $6c8d: $ff
    ld c, [hl]                                    ; $6c8e: $4e
    add d                                         ; $6c8f: $82
    dec c                                         ; $6c90: $0d
    nop                                           ; $6c91: $00
    nop                                           ; $6c92: $00
    ld d, h                                       ; $6c93: $54
    ld hl, $0d64                                  ; $6c94: $21 $64 $0d
    jp nc, Jump_0d4_4032                          ; $6c97: $d2 $32 $40

    nop                                           ; $6c9a: $00
    ld l, c                                       ; $6c9b: $69
    ld a, [de]                                    ; $6c9c: $1a
    ld e, a                                       ; $6c9d: $5f

jr_0d4_6c9e:
    inc bc                                        ; $6c9e: $03
    ld [hl], c                                    ; $6c9f: $71
    inc sp                                        ; $6ca0: $33
    ld bc, $a800                                  ; $6ca1: $01 $00 $a8
    ld e, $5d                                     ; $6ca4: $1e $5d
    ld [bc], a                                    ; $6ca6: $02
    db $fc                                        ; $6ca7: $fc
    ld h, a                                       ; $6ca8: $67
    ld hl, $0800                                  ; $6ca9: $21 $00 $08
    dec de                                        ; $6cac: $1b
    rst $18                                       ; $6cad: $df
    ld c, [hl]                                    ; $6cae: $4e
    sub c                                         ; $6caf: $91
    dec hl                                        ; $6cb0: $2b
    nop                                           ; $6cb1: $00
    nop                                           ; $6cb2: $00
    sub l                                         ; $6cb3: $95
    dec h                                         ; $6cb4: $25
    rst $18                                       ; $6cb5: $df
    ld c, [hl]                                    ; $6cb6: $4e
    ld c, b                                       ; $6cb7: $48
    nop                                           ; $6cb8: $00
    and d                                         ; $6cb9: $a2
    inc b                                         ; $6cba: $04
    ld l, c                                       ; $6cbb: $69
    ld a, [de]                                    ; $6cbc: $1a
    ld e, a                                       ; $6cbd: $5f
    inc bc                                        ; $6cbe: $03
    xor a                                         ; $6cbf: $af
    cpl                                           ; $6cc0: $2f
    ld bc, $c700                                  ; $6cc1: $01 $00 $c7
    ld a, [de]                                    ; $6cc4: $1a
    ld e, e                                       ; $6cc5: $5b
    ld bc, $035f                                  ; $6cc6: $01 $5f $03
    jr nz, jr_0d4_6cd7                            ; $6cc9: $20 $0c

    or b                                          ; $6ccb: $b0
    dec hl                                        ; $6ccc: $2b
    add d                                         ; $6ccd: $82
    ld [de], a                                    ; $6cce: $12
    ld a, [hl-]                                   ; $6ccf: $3a
    ld a, [hl-]                                   ; $6cd0: $3a
    nop                                           ; $6cd1: $00
    db $10                                        ; $6cd2: $10
    sub $2d                                       ; $6cd3: $d6 $2d
    ld [hl], c                                    ; $6cd5: $71
    ld a, d                                       ; $6cd6: $7a

jr_0d4_6cd7:
    rra                                           ; $6cd7: $1f
    ld d, a                                       ; $6cd8: $57
    ld h, d                                       ; $6cd9: $62
    inc b                                         ; $6cda: $04
    ld d, c                                       ; $6cdb: $51
    dec hl                                        ; $6cdc: $2b
    ld e, a                                       ; $6cdd: $5f
    inc bc                                        ; $6cde: $03
    ei                                            ; $6cdf: $fb
    ld e, a                                       ; $6ce0: $5f
    ld bc, $5b00                                  ; $6ce1: $01 $00 $5b
    ld bc, $09c2                                  ; $6ce4: $01 $c2 $09
    ld e, a                                       ; $6ce7: $5f
    inc bc                                        ; $6ce8: $03
    ld b, b                                       ; $6ce9: $40
    inc b                                         ; $6cea: $04
    cpl                                           ; $6ceb: $2f
    ld a, d                                       ; $6cec: $7a
    or [hl]                                       ; $6ced: $b6
    scf                                           ; $6cee: $37
    db $e4                                        ; $6cef: $e4
    ld d, $00                                     ; $6cf0: $16 $00
    inc h                                         ; $6cf2: $24
    call z, $d67d                                 ; $6cf3: $cc $7d $d6
    dec l                                         ; $6cf6: $2d
    rla                                           ; $6cf7: $17
    ld a, e                                       ; $6cf8: $7b
    ld hl, $f70c                                  ; $6cf9: $21 $0c $f7
    ld b, a                                       ; $6cfc: $47
    and h                                         ; $6cfd: $a4
    dec c                                         ; $6cfe: $0d
    ld e, a                                       ; $6cff: $5f
    inc bc                                        ; $6d00: $03
    ld bc, $4e00                                  ; $6d01: $01 $00 $4e
    inc hl                                        ; $6d04: $23
    ld e, l                                       ; $6d05: $5d
    ld [bc], a                                    ; $6d06: $02
    and b                                         ; $6d07: $a0
    dec b                                         ; $6d08: $05
    jr nz, jr_0d4_6d1b                            ; $6d09: $20 $10

    xor b                                         ; $6d0b: $a8
    ld a, [de]                                    ; $6d0c: $1a
    call z, $fc7d                                 ; $6d0d: $cc $7d $fc
    ld b, a                                       ; $6d10: $47
    nop                                           ; $6d11: $00
    inc l                                         ; $6d12: $2c
    add hl, de                                    ; $6d13: $19
    ld [hl], $cc                                  ; $6d14: $36 $cc
    ld a, l                                       ; $6d16: $7d
    rla                                           ; $6d17: $17
    ld a, e                                       ; $6d18: $7b
    jr nz, @+$0a                                  ; $6d19: $20 $08

jr_0d4_6d1b:
    adc e                                         ; $6d1b: $8b
    dec e                                         ; $6d1c: $1d
    ld e, a                                       ; $6d1d: $5f
    inc bc                                        ; $6d1e: $03
    inc l                                         ; $6d1f: $2c
    daa                                           ; $6d20: $27
    ld bc, $5d00                                  ; $6d21: $01 $00 $5d
    ld [bc], a                                    ; $6d24: $02
    add hl, bc                                    ; $6d25: $09
    rra                                           ; $6d26: $1f
    ld a, [$204f]                                 ; $6d27: $fa $4f $20
    inc b                                         ; $6d2a: $04
    xor l                                         ; $6d2b: $ad
    ld [hl+], a                                   ; $6d2c: $22
    rst $10                                       ; $6d2d: $d7
    ccf                                           ; $6d2e: $3f
    ld [hl+], a                                   ; $6d2f: $22
    ld c, $00                                     ; $6d30: $0e $00
    jr jr_0d4_6da8                                ; $6d32: $18 $74

    ld a, [hl+]                                   ; $6d34: $2a
    rst $18                                       ; $6d35: $df
    ld c, d                                       ; $6d36: $4a
    db $ec                                        ; $6d37: $ec
    inc d                                         ; $6d38: $14
    jr nz, jr_0d4_6d3b                            ; $6d39: $20 $00

jr_0d4_6d3b:
    ld l, c                                       ; $6d3b: $69
    ld e, $5f                                     ; $6d3c: $1e $5f
    inc bc                                        ; $6d3e: $03
    ld d, c                                       ; $6d3f: $51
    scf                                           ; $6d40: $37
    ld bc, $5b00                                  ; $6d41: $01 $00 $5b
    ld bc, $0580                                  ; $6d44: $01 $80 $05
    ld e, a                                       ; $6d47: $5f
    inc bc                                        ; $6d48: $03
    inc h                                         ; $6d49: $24
    inc b                                         ; $6d4a: $04
    ld l, $1f                                     ; $6d4b: $2e $1f
    ld b, h                                       ; $6d4d: $44
    ld c, $d7                                     ; $6d4e: $0e $d7
    ccf                                           ; $6d50: $3f
    and a                                         ; $6d51: $a7
    inc b                                         ; $6d52: $04
    ld [hl], h                                    ; $6d53: $74
    ld a, [hl+]                                   ; $6d54: $2a
    dec e                                         ; $6d55: $1d
    ld d, a                                       ; $6d56: $57
    and l                                         ; $6d57: $a5
    ld d, $01                                     ; $6d58: $16 $01
    nop                                           ; $6d5a: $00
    sub l                                         ; $6d5b: $95
    ld b, a                                       ; $6d5c: $47
    ld e, a                                       ; $6d5d: $5f
    inc bc                                        ; $6d5e: $03
    and [hl]                                      ; $6d5f: $a6
    ld de, $0001                                  ; $6d60: $11 $01 $00
    ld e, l                                       ; $6d63: $5d
    ld [bc], a                                    ; $6d64: $02
    or h                                          ; $6d65: $b4
    inc sp                                        ; $6d66: $33
    inc bc                                        ; $6d67: $03
    ld a, [bc]                                    ; $6d68: $0a
    ld hl, $9304                                  ; $6d69: $21 $04 $93
    dec hl                                        ; $6d6c: $2b
    ld a, $4f                                     ; $6d6d: $3e $4f
    ld b, l                                       ; $6d6f: $45
    ld d, $42                                     ; $6d70: $16 $42
    nop                                           ; $6d72: $00
    ld a, [hl+]                                   ; $6d73: $2a
    dec hl                                        ; $6d74: $2b
    inc hl                                        ; $6d75: $23
    ld [de], a                                    ; $6d76: $12
    add hl, de                                    ; $6d77: $19
    ld [hl], $00                                  ; $6d78: $36 $00
    nop                                           ; $6d7a: $00
    ld [hl], l                                    ; $6d7b: $75
    rla                                           ; $6d7c: $17
    ei                                            ; $6d7d: $fb
    ld e, a                                       ; $6d7e: $5f
    add $11                                       ; $6d7f: $c6 $11
    ld bc, $a800                                  ; $6d81: $01 $00 $a8
    ld d, $5d                                     ; $6d84: $16 $5d
    ld [bc], a                                    ; $6d86: $02
    cp b                                          ; $6d87: $b8
    ld b, a                                       ; $6d88: $47
    ld b, l                                       ; $6d89: $45
    inc b                                         ; $6d8a: $04
    di                                            ; $6d8b: $f3
    ld a, [hl+]                                   ; $6d8c: $2a
    ei                                            ; $6d8d: $fb
    ld e, a                                       ; $6d8e: $5f
    add e                                         ; $6d8f: $83
    ld d, $21                                     ; $6d90: $16 $21
    nop                                           ; $6d92: $00
    ld h, l                                       ; $6d93: $65
    ld d, $20                                     ; $6d94: $16 $20
    ld bc, $2dd6                                  ; $6d96: $01 $d6 $2d
    ld h, c                                       ; $6d99: $61
    nop                                           ; $6d9a: $00
    ld d, c                                       ; $6d9b: $51
    dec hl                                        ; $6d9c: $2b
    ld hl, $5f0a                                  ; $6d9d: $21 $0a $5f
    inc bc                                        ; $6da0: $03
    ld [bc], a                                    ; $6da1: $02
    nop                                           ; $6da2: $00
    ld e, l                                       ; $6da3: $5d
    ld [bc], a                                    ; $6da4: $02
    rst $00                                       ; $6da5: $c7
    ld a, [de]                                    ; $6da6: $1a
    or l                                          ; $6da7: $b5

jr_0d4_6da8:
    inc sp                                        ; $6da8: $33
    ld h, l                                       ; $6da9: $65
    ld [$2dd6], sp                                ; $6daa: $08 $d6 $2d
    ld d, e                                       ; $6dad: $53
    cpl                                           ; $6dae: $2f
    ld a, h                                       ; $6daf: $7c
    ld c, e                                       ; $6db0: $4b
    jr nz, jr_0d4_6db3                            ; $6db1: $20 $00

jr_0d4_6db3:
    and [hl]                                      ; $6db3: $a6
    ld d, $62                                     ; $6db4: $16 $62
    dec b                                         ; $6db6: $05
    or b                                          ; $6db7: $b0
    dec hl                                        ; $6db8: $2b
    ld b, c                                       ; $6db9: $41
    nop                                           ; $6dba: $00
    ld e, a                                       ; $6dbb: $5f
    inc bc                                        ; $6dbc: $03
    and c                                         ; $6dbd: $a1
    add hl, bc                                    ; $6dbe: $09
    rlca                                          ; $6dbf: $07
    ld [de], a                                    ; $6dc0: $12
    ld [bc], a                                    ; $6dc1: $02
    nop                                           ; $6dc2: $00
    or h                                          ; $6dc3: $b4
    cpl                                           ; $6dc4: $2f
    ld e, e                                       ; $6dc5: $5b
    ld bc, $035f                                  ; $6dc6: $01 $5f $03
    ld hl, $df04                                  ; $6dc9: $21 $04 $df
    ld c, d                                       ; $6dcc: $4a
    or h                                          ; $6dcd: $b4
    add hl, hl                                    ; $6dce: $29
    db $ec                                        ; $6dcf: $ec
    inc d                                         ; $6dd0: $14
    ld h, c                                       ; $6dd1: $61
    inc b                                         ; $6dd2: $04
    db $d3                                        ; $6dd3: $d3
    dec hl                                        ; $6dd4: $2b
    dec b                                         ; $6dd5: $05
    ld [de], a                                    ; $6dd6: $12
    ei                                            ; $6dd7: $fb
    ld e, a                                       ; $6dd8: $5f
    ld h, c                                       ; $6dd9: $61
    nop                                           ; $6dda: $00
    xor d                                         ; $6ddb: $aa
    ld a, [de]                                    ; $6ddc: $1a
    ld e, a                                       ; $6ddd: $5f
    inc bc                                        ; $6dde: $03
    ld h, h                                       ; $6ddf: $64
    dec b                                         ; $6de0: $05
    ld [bc], a                                    ; $6de1: $02
    nop                                           ; $6de2: $00
    ld e, e                                       ; $6de3: $5b
    ld bc, $035f                                  ; $6de4: $01 $5f $03
    ld h, h                                       ; $6de7: $64
    dec b                                         ; $6de8: $05
    ld e, e                                       ; $6de9: $5b
    ld bc, $071e                                  ; $6dea: $01 $1e $07
    ld e, a                                       ; $6ded: $5f
    inc bc                                        ; $6dee: $03
    ld h, h                                       ; $6def: $64
    dec b                                         ; $6df0: $05
    ld e, e                                       ; $6df1: $5b
    ld bc, $035f                                  ; $6df2: $01 $5f $03
    ld e, a                                       ; $6df5: $5f
    inc bc                                        ; $6df6: $03
    ld h, h                                       ; $6df7: $64
    dec b                                         ; $6df8: $05
    ld [bc], a                                    ; $6df9: $02
    nop                                           ; $6dfa: $00
    ld e, e                                       ; $6dfb: $5b
    ld bc, $031c                                  ; $6dfc: $01 $1c $03
    ld e, a                                       ; $6dff: $5f
    inc bc                                        ; $6e00: $03
    ld [bc], a                                    ; $6e01: $02
    nop                                           ; $6e02: $00
    or a                                          ; $6e03: $b7
    scf                                           ; $6e04: $37
    ld e, e                                       ; $6e05: $5b
    ld bc, $035f                                  ; $6e06: $01 $5f $03
    nop                                           ; $6e09: $00
    nop                                           ; $6e0a: $00
    ld d, d                                       ; $6e0b: $52
    ld b, [hl]                                    ; $6e0c: $46
    ld e, a                                       ; $6e0d: $5f
    inc bc                                        ; $6e0e: $03
    cp c                                          ; $6e0f: $b9
    ld d, e                                       ; $6e10: $53
    jr nz, jr_0d4_6e13                            ; $6e11: $20 $00

jr_0d4_6e13:
    rla                                           ; $6e13: $17
    ld e, e                                       ; $6e14: $5b
    ld e, a                                       ; $6e15: $5f
    inc bc                                        ; $6e16: $03
    or a                                          ; $6e17: $b7
    scf                                           ; $6e18: $37
    ld [bc], a                                    ; $6e19: $02
    nop                                           ; $6e1a: $00
    or a                                          ; $6e1b: $b7
    scf                                           ; $6e1c: $37
    ld e, a                                       ; $6e1d: $5f
    inc bc                                        ; $6e1e: $03
    or a                                          ; $6e1f: $b7
    scf                                           ; $6e20: $37
    ld bc, $5600                                  ; $6e21: $01 $00 $56
    dec sp                                        ; $6e24: $3b
    ld e, e                                       ; $6e25: $5b
    ld bc, $035f                                  ; $6e26: $01 $5f $03
    nop                                           ; $6e29: $00
    nop                                           ; $6e2a: $00
    adc h                                         ; $6e2b: $8c
    ld sp, $739c                                  ; $6e2c: $31 $9c $73
    ld sp, $0046                                  ; $6e2f: $31 $46 $00
    nop                                           ; $6e32: $00
    ld c, d                                       ; $6e33: $4a
    add hl, hl                                    ; $6e34: $29
    jr @+$65                                      ; $6e35: $18 $63

    adc $39                                       ; $6e37: $ce $39
    nop                                           ; $6e39: $00
    nop                                           ; $6e3a: $00
    sub a                                         ; $6e3b: $97
    scf                                           ; $6e3c: $37
    ld e, a                                       ; $6e3d: $5f
    inc bc                                        ; $6e3e: $03
    ld [bc], a                                    ; $6e3f: $02
    nop                                           ; $6e40: $00
    ld bc, $ce00                                  ; $6e41: $01 $00 $ce
    add hl, sp                                    ; $6e44: $39
    ld a, c                                       ; $6e45: $79
    inc hl                                        ; $6e46: $23
    ld e, e                                       ; $6e47: $5b
    ld bc, $0000                                  ; $6e48: $01 $00 $00
    db $10                                        ; $6e4b: $10
    ld b, d                                       ; $6e4c: $42
    jr @+$65                                      ; $6e4d: $18 $63

    add $18                                       ; $6e4f: $c6 $18
    nop                                           ; $6e51: $00
    nop                                           ; $6e52: $00
    or l                                          ; $6e53: $b5
    ld d, [hl]                                    ; $6e54: $56
    ld a, e                                       ; $6e55: $7b
    ld l, a                                       ; $6e56: $6f
    adc h                                         ; $6e57: $8c
    ld sp, $0422                                  ; $6e58: $31 $22 $04
    ld e, a                                       ; $6e5b: $5f
    inc bc                                        ; $6e5c: $03
    ld d, l                                       ; $6e5d: $55
    scf                                           ; $6e5e: $37
    rst $38                                       ; $6e5f: $ff
    ld a, a                                       ; $6e60: $7f
    ld bc, $5d00                                  ; $6e61: $01 $00 $5d
    ld [bc], a                                    ; $6e64: $02
    halt                                          ; $6e65: $76
    inc sp                                        ; $6e66: $33
    sub h                                         ; $6e67: $94
    ld d, d                                       ; $6e68: $52
    ld hl, $7304                                  ; $6e69: $21 $04 $73
    ld c, [hl]                                    ; $6e6c: $4e
    add hl, hl                                    ; $6e6d: $29
    dec h                                         ; $6e6e: $25
    sbc h                                         ; $6e6f: $9c
    ld [hl], e                                    ; $6e70: $73
    nop                                           ; $6e71: $00
    nop                                           ; $6e72: $00
    ld [hl], e                                    ; $6e73: $73
    ld c, [hl]                                    ; $6e74: $4e
    sbc h                                         ; $6e75: $9c
    ld [hl], e                                    ; $6e76: $73
    add $18                                       ; $6e77: $c6 $18
    ld hl, $ce04                                  ; $6e79: $21 $04 $ce
    add hl, sp                                    ; $6e7c: $39
    ld e, a                                       ; $6e7d: $5f
    inc bc                                        ; $6e7e: $03
    or l                                          ; $6e7f: $b5
    ld d, [hl]                                    ; $6e80: $56
    ld [bc], a                                    ; $6e81: $02
    nop                                           ; $6e82: $00
    ld l, e                                       ; $6e83: $6b
    dec l                                         ; $6e84: $2d
    ld e, l                                       ; $6e85: $5d
    ld [bc], a                                    ; $6e86: $02
    or $4e                                        ; $6e87: $f6 $4e
    nop                                           ; $6e89: $00
    nop                                           ; $6e8a: $00
    db $10                                        ; $6e8b: $10
    ld b, d                                       ; $6e8c: $42
    sbc h                                         ; $6e8d: $9c
    ld [hl], e                                    ; $6e8e: $73
    ld [$2121], sp                                ; $6e8f: $08 $21 $21
    inc b                                         ; $6e92: $04
    xor l                                         ; $6e93: $ad
    dec [hl]                                      ; $6e94: $35
    ld e, d                                       ; $6e95: $5a
    ld l, e                                       ; $6e96: $6b
    ld [hl], h                                    ; $6e97: $74
    ld c, [hl]                                    ; $6e98: $4e
    ld hl, $5f04                                  ; $6e99: $21 $04 $5f
    inc bc                                        ; $6e9c: $03
    ld [hl], d                                    ; $6e9d: $72
    ld b, d                                       ; $6e9e: $42
    sbc $7b                                       ; $6e9f: $de $7b
    ld bc, $5b00                                  ; $6ea1: $01 $00 $5b
    ld bc, $1759                                  ; $6ea4: $01 $59 $17
    add hl, hl                                    ; $6ea7: $29
    dec h                                         ; $6ea8: $25
    nop                                           ; $6ea9: $00
    nop                                           ; $6eaa: $00
    jr c, jr_0d4_6ee3                             ; $6eab: $38 $36

    ld a, e                                       ; $6ead: $7b
    ld l, a                                       ; $6eae: $6f
    xor b                                         ; $6eaf: $a8
    db $10                                        ; $6eb0: $10
    ld bc, $9400                                  ; $6eb1: $01 $00 $94
    dec e                                         ; $6eb4: $1d
    add hl, hl                                    ; $6eb5: $29
    dec h                                         ; $6eb6: $25
    cp a                                          ; $6eb7: $bf
    ld a, [hl-]                                   ; $6eb8: $3a
    nop                                           ; $6eb9: $00
    nop                                           ; $6eba: $00
    db $f4                                        ; $6ebb: $f4
    ld [hl], $5f                                  ; $6ebc: $36 $5f
    inc bc                                        ; $6ebe: $03
    ld [$0121], sp                                ; $6ebf: $08 $21 $01
    nop                                           ; $6ec2: $00
    ld e, l                                       ; $6ec3: $5d
    ld [bc], a                                    ; $6ec4: $02
    add hl, bc                                    ; $6ec5: $09
    add hl, de                                    ; $6ec6: $19
    rst $10                                       ; $6ec7: $d7
    ld [hl], $01                                  ; $6ec8: $36 $01
    nop                                           ; $6eca: $00
    ld l, l                                       ; $6ecb: $6d
    dec h                                         ; $6ecc: $25
    sub h                                         ; $6ecd: $94
    ld d, [hl]                                    ; $6ece: $56
    ld e, c                                       ; $6ecf: $59
    ld [hl-], a                                   ; $6ed0: $32
    ld bc, $5c00                                  ; $6ed1: $01 $00 $5c
    ld [hl-], a                                   ; $6ed4: $32
    ccf                                           ; $6ed5: $3f
    ld e, e                                       ; $6ed6: $5b
    rrc h                                         ; $6ed7: $cb $0c
    nop                                           ; $6ed9: $00
    nop                                           ; $6eda: $00
    rst $28                                       ; $6edb: $ef
    dec a                                         ; $6edc: $3d
    ld e, a                                       ; $6edd: $5f
    inc bc                                        ; $6ede: $03
    inc [hl]                                      ; $6edf: $34
    daa                                           ; $6ee0: $27
    ld [bc], a                                    ; $6ee1: $02
    nop                                           ; $6ee2: $00

jr_0d4_6ee3:
    ld e, e                                       ; $6ee3: $5b
    ld bc, $2ab7                                  ; $6ee4: $01 $b7 $2a
    ld e, a                                       ; $6ee7: $5f
    inc bc                                        ; $6ee8: $03
    ld hl, $7100                                  ; $6ee9: $21 $00 $71
    ld l, c                                       ; $6eec: $69
    rst $38                                       ; $6eed: $ff
    ld a, a                                       ; $6eee: $7f
    and $1c                                       ; $6eef: $e6 $1c
    ld bc, $f600                                  ; $6ef1: $01 $00 $f6
    dec e                                         ; $6ef4: $1d
    ld l, [hl]                                    ; $6ef5: $6e
    ld de, $675e                                  ; $6ef6: $11 $5e $67
    ld [hl+], a                                   ; $6ef9: $22
    nop                                           ; $6efa: $00
    ld l, a                                       ; $6efb: $6f
    dec e                                         ; $6efc: $1d
    ld e, a                                       ; $6efd: $5f
    inc bc                                        ; $6efe: $03
    db $f4                                        ; $6eff: $f4
    ld h, $01                                     ; $6f00: $26 $01
    nop                                           ; $6f02: $00
    ld e, l                                       ; $6f03: $5d
    ld [bc], a                                    ; $6f04: $02
    rst $10                                       ; $6f05: $d7
    ld [hl-], a                                   ; $6f06: $32
    add sp, $1c                                   ; $6f07: $e8 $1c
    nop                                           ; $6f09: $00
    nop                                           ; $6f0a: $00
    cp l                                          ; $6f0b: $bd
    ld b, d                                       ; $6f0c: $42
    xor $10                                       ; $6f0d: $ee $10
    add l                                         ; $6f0f: $85
    inc c                                         ; $6f10: $0c
    ld [hl+], a                                   ; $6f11: $22
    nop                                           ; $6f12: $00
    inc d                                         ; $6f13: $14
    ld [hl-], a                                   ; $6f14: $32
    sbc [hl]                                      ; $6f15: $9e
    ld [hl], e                                    ; $6f16: $73
    db $d3                                        ; $6f17: $d3
    ld e, [hl]                                    ; $6f18: $5e
    nop                                           ; $6f19: $00
    nop                                           ; $6f1a: $00
    sub c                                         ; $6f1b: $91
    ld e, $5f                                     ; $6f1c: $1e $5f
    inc bc                                        ; $6f1e: $03
    ld [$0210], a                                 ; $6f1f: $ea $10 $02
    nop                                           ; $6f22: $00
    ld c, a                                       ; $6f23: $4f
    ld h, $5d                                     ; $6f24: $26 $5d
    ld [bc], a                                    ; $6f26: $02
    sub h                                         ; $6f27: $94
    ld d, [hl]                                    ; $6f28: $56
    ld [hl+], a                                   ; $6f29: $22
    nop                                           ; $6f2a: $00
    db $dd                                        ; $6f2b: $dd
    ld b, [hl]                                    ; $6f2c: $46
    ld e, a                                       ; $6f2d: $5f
    ld e, a                                       ; $6f2e: $5f
    rl b                                          ; $6f2f: $cb $10
    ld [bc], a                                    ; $6f31: $02
    nop                                           ; $6f32: $00
    inc d                                         ; $6f33: $14
    ld [hl-], a                                   ; $6f34: $32
    dec e                                         ; $6f35: $1d
    ld e, a                                       ; $6f36: $5f
    db $ec                                        ; $6f37: $ec
    ld c, b                                       ; $6f38: $48
    nop                                           ; $6f39: $00
    nop                                           ; $6f3a: $00
    pop af                                        ; $6f3b: $f1
    ld e, $5f                                     ; $6f3c: $1e $5f
    inc bc                                        ; $6f3e: $03
    ld [bc], a                                    ; $6f3f: $02
    nop                                           ; $6f40: $00
    ld bc, $5d00                                  ; $6f41: $01 $00 $5d
    ld [bc], a                                    ; $6f44: $02
    cpl                                           ; $6f45: $2f
    ld l, $dc                                     ; $6f46: $2e $dc
    ld a, a                                       ; $6f48: $7f
    ld [hl+], a                                   ; $6f49: $22
    inc b                                         ; $6f4a: $04
    inc e                                         ; $6f4b: $1c
    ld d, e                                       ; $6f4c: $53
    ret z                                         ; $6f4d: $c8

    db $10                                        ; $6f4e: $10
    ld a, [hl]                                    ; $6f4f: $7e
    ld h, a                                       ; $6f50: $67
    ld bc, $d300                                  ; $6f51: $01 $00 $d3
    ld hl, $110b                                  ; $6f54: $21 $0b $11
    cp e                                          ; $6f57: $bb
    ld [hl-], a                                   ; $6f58: $32
    ld bc, $d000                                  ; $6f59: $01 $00 $d0
    ld d, $5f                                     ; $6f5c: $16 $5f
    inc bc                                        ; $6f5e: $03
    add [hl]                                      ; $6f5f: $86
    ld [$0001], sp                                ; $6f60: $08 $01 $00
    ld l, [hl]                                    ; $6f63: $6e
    ld e, $5b                                     ; $6f64: $1e $5b
    ld bc, $035f                                  ; $6f66: $01 $5f $03
    nop                                           ; $6f69: $00
    nop                                           ; $6f6a: $00
    jr jr_0d4_6f9f                                ; $6f6b: $18 $32

    ld l, $15                                     ; $6f6d: $2e $15
    db $db                                        ; $6f6f: $db
    ld c, d                                       ; $6f70: $4a
    ld [hl+], a                                   ; $6f71: $22
    nop                                           ; $6f72: $00
    ld c, [hl]                                    ; $6f73: $4e
    dec d                                         ; $6f74: $15
    db $d3                                        ; $6f75: $d3
    ld hl, $2616                                  ; $6f76: $21 $16 $26
    ld bc, $8e00                                  ; $6f79: $01 $00 $8e
    ld [de], a                                    ; $6f7c: $12
    ld e, a                                       ; $6f7d: $5f
    inc bc                                        ; $6f7e: $03
    xor a                                         ; $6f7f: $af
    ld d, $02                                     ; $6f80: $16 $02
    nop                                           ; $6f82: $00
    ld e, l                                       ; $6f83: $5d
    ld [bc], a                                    ; $6f84: $02
    sub b                                         ; $6f85: $90
    add hl, hl                                    ; $6f86: $29
    rla                                           ; $6f87: $17
    ld e, [hl]                                    ; $6f88: $5e
    ld [hl+], a                                   ; $6f89: $22
    nop                                           ; $6f8a: $00
    jr c, jr_0d4_6fc3                             ; $6f8b: $38 $36

    db $ec                                        ; $6f8d: $ec
    db $10                                        ; $6f8e: $10
    cp h                                          ; $6f8f: $bc
    ld b, d                                       ; $6f90: $42
    ld bc, $a800                                  ; $6f91: $01 $00 $a8
    ld [$1150], sp                                ; $6f94: $08 $50 $11
    db $eb                                        ; $6f97: $eb
    inc c                                         ; $6f98: $0c
    ld bc, $6d00                                  ; $6f99: $01 $00 $6d
    ld a, [bc]                                    ; $6f9c: $0a
    ld e, a                                       ; $6f9d: $5f
    inc bc                                        ; $6f9e: $03

jr_0d4_6f9f:
    ld l, [hl]                                    ; $6f9f: $6e
    ld c, $01                                     ; $6fa0: $0e $01
    nop                                           ; $6fa2: $00
    sbc b                                         ; $6fa3: $98
    ld de, $4eba                                  ; $6fa4: $11 $ba $4e
    ld e, a                                       ; $6fa7: $5f
    inc bc                                        ; $6fa8: $03
    nop                                           ; $6fa9: $00
    nop                                           ; $6faa: $00
    push de                                       ; $6fab: $d5
    dec h                                         ; $6fac: $25
    ld e, $53                                     ; $6fad: $1e $53
    and a                                         ; $6faf: $a7
    inc c                                         ; $6fb0: $0c
    nop                                           ; $6fb1: $00
    nop                                           ; $6fb2: $00
    xor c                                         ; $6fb3: $a9
    ld [$062c], sp                                ; $6fb4: $08 $2c $06
    ld d, b                                       ; $6fb7: $50
    dec d                                         ; $6fb8: $15
    ld [bc], a                                    ; $6fb9: $02
    nop                                           ; $6fba: $00
    ld e, a                                       ; $6fbb: $5f
    inc bc                                        ; $6fbc: $03
    inc l                                         ; $6fbd: $2c
    ld b, $4c                                     ; $6fbe: $06 $4c
    ld b, $02                                     ; $6fc0: $06 $02
    nop                                           ; $6fc2: $00

jr_0d4_6fc3:
    ld e, l                                       ; $6fc3: $5d
    ld [bc], a                                    ; $6fc4: $02
    sub c                                         ; $6fc5: $91
    add hl, sp                                    ; $6fc6: $39
    ld e, b                                       ; $6fc7: $58
    ld l, d                                       ; $6fc8: $6a
    nop                                           ; $6fc9: $00
    ld [$25d5], sp                                ; $6fca: $08 $d5 $25
    ld sp, hl                                     ; $6fcd: $f9
    ld b, d                                       ; $6fce: $42
    dec a                                         ; $6fcf: $3d
    ld d, a                                       ; $6fd0: $57
    nop                                           ; $6fd1: $00
    ld [$48ec], sp                                ; $6fd2: $08 $ec $48
    dec hl                                        ; $6fd5: $2b
    ld [bc], a                                    ; $6fd6: $02
    push de                                       ; $6fd7: $d5
    ld a, l                                       ; $6fd8: $7d
    ld [bc], a                                    ; $6fd9: $02
    nop                                           ; $6fda: $00
    ld e, a                                       ; $6fdb: $5f
    inc bc                                        ; $6fdc: $03
    dec hl                                        ; $6fdd: $2b
    ld [bc], a                                    ; $6fde: $02
    push de                                       ; $6fdf: $d5
    ld a, l                                       ; $6fe0: $7d
    ld [bc], a                                    ; $6fe1: $02
    nop                                           ; $6fe2: $00
    ld e, e                                       ; $6fe3: $5b
    ld bc, $035f                                  ; $6fe4: $01 $5f $03
    push de                                       ; $6fe7: $d5
    ld a, l                                       ; $6fe8: $7d
    ld e, e                                       ; $6fe9: $5b
    ld bc, $035f                                  ; $6fea: $01 $5f $03
    ld e, a                                       ; $6fed: $5f
    inc bc                                        ; $6fee: $03
    push de                                       ; $6fef: $d5
    ld a, l                                       ; $6ff0: $7d
    ld e, e                                       ; $6ff1: $5b
    ld bc, $035f                                  ; $6ff2: $01 $5f $03
    ld e, a                                       ; $6ff5: $5f
    inc bc                                        ; $6ff6: $03
    push de                                       ; $6ff7: $d5
    ld a, l                                       ; $6ff8: $7d
    ld [bc], a                                    ; $6ff9: $02
    nop                                           ; $6ffa: $00
    ld e, e                                       ; $6ffb: $5b
    ld bc, $035f                                  ; $6ffc: $01 $5f $03
    push de                                       ; $6fff: $d5
    ld a, l                                       ; $7000: $7d
    ld hl, $7704                                  ; $7001: $21 $04 $77
    ld e, a                                       ; $7004: $5f
    ld e, e                                       ; $7005: $5b
    ld bc, $035f                                  ; $7006: $01 $5f $03
    ld l, e                                       ; $7009: $6b
    dec l                                         ; $700a: $2d
    ld e, a                                       ; $700b: $5f
    inc bc                                        ; $700c: $03
    db $f4                                        ; $700d: $f4
    ld d, d                                       ; $700e: $52
    ld [hl], a                                    ; $700f: $77
    ld e, a                                       ; $7010: $5f
    ld l, e                                       ; $7011: $6b
    dec l                                         ; $7012: $2d
    ld e, a                                       ; $7013: $5f
    inc bc                                        ; $7014: $03
    or d                                          ; $7015: $b2
    ld c, [hl]                                    ; $7016: $4e
    ld [hl], a                                    ; $7017: $77
    ld e, a                                       ; $7018: $5f
    ld hl, $7704                                  ; $7019: $21 $04 $77
    ld e, a                                       ; $701c: $5f
    ld e, a                                       ; $701d: $5f
    inc bc                                        ; $701e: $03
    ld [hl], a                                    ; $701f: $77
    ld e, a                                       ; $7020: $5f
    ld hl, $7604                                  ; $7021: $21 $04 $76
    ld e, a                                       ; $7024: $5f
    ld e, e                                       ; $7025: $5b
    ld bc, $035f                                  ; $7026: $01 $5f $03
    ld l, e                                       ; $7029: $6b
    dec l                                         ; $702a: $2d
    ld e, c                                       ; $702b: $59
    ld h, a                                       ; $702c: $67
    sub e                                         ; $702d: $93
    ld c, [hl]                                    ; $702e: $4e
    rst $38                                       ; $702f: $ff
    ld a, a                                       ; $7030: $7f
    ld l, e                                       ; $7031: $6b
    dec l                                         ; $7032: $2d
    sub e                                         ; $7033: $93
    ld c, [hl]                                    ; $7034: $4e
    ld e, d                                       ; $7035: $5a
    ld l, e                                       ; $7036: $6b
    rst $38                                       ; $7037: $ff
    ld a, a                                       ; $7038: $7f
    ld hl, $b204                                  ; $7039: $21 $04 $b2
    ld c, d                                       ; $703c: $4a
    ld e, a                                       ; $703d: $5f
    inc bc                                        ; $703e: $03
    halt                                          ; $703f: $76
    ld e, a                                       ; $7040: $5f
    ld hl, $5504                                  ; $7041: $21 $04 $55
    ld d, a                                       ; $7044: $57
    ld e, e                                       ; $7045: $5b
    ld bc, $035f                                  ; $7046: $01 $5f $03
    add $18                                       ; $7049: $c6 $18
    sub h                                         ; $704b: $94
    ld d, d                                       ; $704c: $52
    sbc h                                         ; $704d: $9c
    ld [hl], e                                    ; $704e: $73
    ld l, e                                       ; $704f: $6b
    dec l                                         ; $7050: $2d
    ld l, e                                       ; $7051: $6b
    dec l                                         ; $7052: $2d
    ld e, d                                       ; $7053: $5a
    ld l, e                                       ; $7054: $6b
    sub h                                         ; $7055: $94
    ld d, d                                       ; $7056: $52
    rst $38                                       ; $7057: $ff
    ld a, a                                       ; $7058: $7f
    ld hl, $1404                                  ; $7059: $21 $04 $14
    ld d, a                                       ; $705c: $57
    ld e, a                                       ; $705d: $5f
    inc bc                                        ; $705e: $03
    ld l, e                                       ; $705f: $6b
    dec l                                         ; $7060: $2d
    ld hl, $6b04                                  ; $7061: $21 $04 $6b
    dec l                                         ; $7064: $2d
    ld e, l                                       ; $7065: $5d
    ld [bc], a                                    ; $7066: $02
    inc sp                                        ; $7067: $33
    ld d, a                                       ; $7068: $57
    add $18                                       ; $7069: $c6 $18
    sub h                                         ; $706b: $94
    ld d, d                                       ; $706c: $52
    ld e, d                                       ; $706d: $5a
    ld l, e                                       ; $706e: $6b
    ld l, e                                       ; $706f: $6b
    dec l                                         ; $7070: $2d
    ld l, e                                       ; $7071: $6b
    dec l                                         ; $7072: $2d
    sub h                                         ; $7073: $94
    ld d, d                                       ; $7074: $52
    ld e, d                                       ; $7075: $5a
    ld l, e                                       ; $7076: $6b
    rst $38                                       ; $7077: $ff
    ld a, a                                       ; $7078: $7f
    add $18                                       ; $7079: $c6 $18
    ld e, a                                       ; $707b: $5f
    inc bc                                        ; $707c: $03
    inc de                                        ; $707d: $13
    ld d, e                                       ; $707e: $53
    ld a, e                                       ; $707f: $7b
    ld l, a                                       ; $7080: $6f
    ld hl, $1104                                  ; $7081: $21 $04 $11
    ld c, a                                       ; $7084: $4f
    ld e, l                                       ; $7085: $5d
    ld [bc], a                                    ; $7086: $02
    rlca                                          ; $7087: $07

jr_0d4_7088:
    ld hl, $5294                                  ; $7088: $21 $94 $52
    rst $38                                       ; $708b: $ff
    ld a, a                                       ; $708c: $7f
    ld e, d                                       ; $708d: $5a
    ld l, e                                       ; $708e: $6b
    rlca                                          ; $708f: $07
    ld hl, $2529                                  ; $7090: $21 $29 $25
    sub h                                         ; $7093: $94
    ld d, d                                       ; $7094: $52
    ld e, d                                       ; $7095: $5a
    ld l, e                                       ; $7096: $6b
    rst $38                                       ; $7097: $ff
    ld a, a                                       ; $7098: $7f
    add $18                                       ; $7099: $c6 $18
    ld e, a                                       ; $709b: $5f
    inc bc                                        ; $709c: $03
    jp nc, $9c4e                                  ; $709d: $d2 $4e $9c

    ld [hl], e                                    ; $70a0: $73
    ld hl, $5d04                                  ; $70a1: $21 $04 $5d
    ld [bc], a                                    ; $70a4: $02
    ret nc                                        ; $70a5: $d0

    ld c, d                                       ; $70a6: $4a
    rst $38                                       ; $70a7: $ff
    ld a, a                                       ; $70a8: $7f
    add $18                                       ; $70a9: $c6 $18
    sub h                                         ; $70ab: $94
    ld d, d                                       ; $70ac: $52
    ld a, e                                       ; $70ad: $7b
    ld l, a                                       ; $70ae: $6f
    xor l                                         ; $70af: $ad
    dec [hl]                                      ; $70b0: $35
    add $18                                       ; $70b1: $c6 $18
    sub h                                         ; $70b3: $94
    ld d, d                                       ; $70b4: $52
    sbc h                                         ; $70b5: $9c
    ld [hl], e                                    ; $70b6: $73
    ld l, e                                       ; $70b7: $6b
    dec l                                         ; $70b8: $2d
    add $18                                       ; $70b9: $c6 $18
    ld e, a                                       ; $70bb: $5f
    inc bc                                        ; $70bc: $03
    or c                                          ; $70bd: $b1
    ld c, [hl]                                    ; $70be: $4e
    ld a, e                                       ; $70bf: $7b
    ld l, a                                       ; $70c0: $6f
    ld hl, $ae04                                  ; $70c1: $21 $04 $ae
    ld b, [hl]                                    ; $70c4: $46
    ld e, e                                       ; $70c5: $5b
    ld bc, $035f                                  ; $70c6: $01 $5f $03
    add $18                                       ; $70c9: $c6 $18
    sub h                                         ; $70cb: $94
    ld d, d                                       ; $70cc: $52
    ld e, d                                       ; $70cd: $5a
    ld l, e                                       ; $70ce: $6b
    rst $38                                       ; $70cf: $ff
    ld a, a                                       ; $70d0: $7f
    add $18                                       ; $70d1: $c6 $18
    sub h                                         ; $70d3: $94
    ld d, d                                       ; $70d4: $52
    sbc h                                         ; $70d5: $9c
    ld [hl], e                                    ; $70d6: $73
    ld l, e                                       ; $70d7: $6b
    dec l                                         ; $70d8: $2d
    rst $20                                       ; $70d9: $e7
    inc e                                         ; $70da: $1c
    or b                                          ; $70db: $b0
    ld b, [hl]                                    ; $70dc: $46
    ld e, a                                       ; $70dd: $5f
    inc bc                                        ; $70de: $03
    ld e, d                                       ; $70df: $5a
    ld l, e                                       ; $70e0: $6b
    ld hl, $6c04                                  ; $70e1: $21 $04 $6c
    ld a, $5d                                     ; $70e4: $3e $5d
    ld [bc], a                                    ; $70e6: $02
    ld e, d                                       ; $70e7: $5a
    ld l, e                                       ; $70e8: $6b
    add $18                                       ; $70e9: $c6 $18
    ld e, d                                       ; $70eb: $5a
    ld l, e                                       ; $70ec: $6b
    rst $38                                       ; $70ed: $ff
    ld a, a                                       ; $70ee: $7f
    ld sp, $c646                                  ; $70ef: $31 $46 $c6
    jr jr_0d4_7088                                ; $70f2: $18 $94

    ld d, d                                       ; $70f4: $52
    ld l, e                                       ; $70f5: $6b
    dec l                                         ; $70f6: $2d
    ld e, d                                       ; $70f7: $5a
    ld l, e                                       ; $70f8: $6b
    ld h, e                                       ; $70f9: $63
    inc c                                         ; $70fa: $0c
    ld e, a                                       ; $70fb: $5f
    inc bc                                        ; $70fc: $03
    ld l, l                                       ; $70fd: $6d
    ld a, $7b                                     ; $70fe: $3e $7b
    ld l, a                                       ; $7100: $6f
    ld hl, $2a04                                  ; $7101: $21 $04 $2a
    ld [hl], $5b                                  ; $7104: $36 $5b
    ld bc, $035f                                  ; $7106: $01 $5f $03
    add hl, hl                                    ; $7109: $29
    dec h                                         ; $710a: $25
    ld e, d                                       ; $710b: $5a
    ld l, e                                       ; $710c: $6b
    sub h                                         ; $710d: $94
    ld d, d                                       ; $710e: $52
    rst $38                                       ; $710f: $ff
    ld a, a                                       ; $7110: $7f
    add $18                                       ; $7111: $c6 $18
    sub h                                         ; $7113: $94
    ld d, d                                       ; $7114: $52
    ld a, e                                       ; $7115: $7b
    ld l, a                                       ; $7116: $6f
    ld l, e                                       ; $7117: $6b
    dec l                                         ; $7118: $2d
    ld h, e                                       ; $7119: $63
    inc c                                         ; $711a: $0c
    ld e, d                                       ; $711b: $5a
    ld l, e                                       ; $711c: $6b
    ld a, [hl+]                                   ; $711d: $2a
    ld [hl], $5f                                  ; $711e: $36 $5f
    inc bc                                        ; $7120: $03
    ld hl, $2904                                  ; $7121: $21 $04 $29
    ld [hl], $5b                                  ; $7124: $36 $5b
    ld bc, $035f                                  ; $7126: $01 $5f $03
    add hl, hl                                    ; $7129: $29
    dec h                                         ; $712a: $25
    sub h                                         ; $712b: $94
    ld d, d                                       ; $712c: $52
    ld e, d                                       ; $712d: $5a
    ld l, e                                       ; $712e: $6b
    rst $38                                       ; $712f: $ff
    ld a, a                                       ; $7130: $7f
    add $18                                       ; $7131: $c6 $18
    sub h                                         ; $7133: $94
    ld d, d                                       ; $7134: $52
    ld e, d                                       ; $7135: $5a
    ld l, e                                       ; $7136: $6b
    adc h                                         ; $7137: $8c
    ld sp, $0c63                                  ; $7138: $31 $63 $0c
    ld e, a                                       ; $713b: $5f
    inc bc                                        ; $713c: $03
    jr z, jr_0d4_7171                             ; $713d: $28 $32

    rst $38                                       ; $713f: $ff
    ld a, a                                       ; $7140: $7f
    ld hl, $e704                                  ; $7141: $21 $04 $e7
    dec l                                         ; $7144: $2d
    ld e, l                                       ; $7145: $5d
    ld [bc], a                                    ; $7146: $02
    sbc h                                         ; $7147: $9c
    ld [hl], e                                    ; $7148: $73
    ld l, e                                       ; $7149: $6b
    dec l                                         ; $714a: $2d
    ld e, d                                       ; $714b: $5a
    ld l, e                                       ; $714c: $6b
    sub h                                         ; $714d: $94
    ld d, d                                       ; $714e: $52
    rst $38                                       ; $714f: $ff
    ld a, a                                       ; $7150: $7f
    add $18                                       ; $7151: $c6 $18
    sub h                                         ; $7153: $94
    ld d, d                                       ; $7154: $52
    rst $38                                       ; $7155: $ff
    ld a, a                                       ; $7156: $7f
    adc c                                         ; $7157: $89
    add hl, hl                                    ; $7158: $29
    ld hl, $5f04                                  ; $7159: $21 $04 $5f
    inc bc                                        ; $715c: $03
    add a                                         ; $715d: $87
    add hl, hl                                    ; $715e: $29
    and $2d                                       ; $715f: $e6 $2d
    ld hl, $a404                                  ; $7161: $21 $04 $a4
    dec h                                         ; $7164: $25
    ld e, l                                       ; $7165: $5d
    ld [bc], a                                    ; $7166: $02
    sub h                                         ; $7167: $94
    ld d, d                                       ; $7168: $52
    rst $20                                       ; $7169: $e7
    inc e                                         ; $716a: $1c
    ld e, d                                       ; $716b: $5a
    ld l, e                                       ; $716c: $6b
    sub h                                         ; $716d: $94
    ld d, d                                       ; $716e: $52
    rst $38                                       ; $716f: $ff
    ld a, a                                       ; $7170: $7f

jr_0d4_7171:
    ld b, l                                       ; $7171: $45
    ld hl, $5ef7                                  ; $7172: $21 $f7 $5e
    ld sp, $ff46                                  ; $7175: $31 $46 $ff
    ld a, a                                       ; $7178: $7f
    ld hl, $5f04                                  ; $7179: $21 $04 $5f
    inc bc                                        ; $717c: $03
    call nz, $e529                                ; $717d: $c4 $29 $e5
    add hl, hl                                    ; $7180: $29
    ld hl, $5b04                                  ; $7181: $21 $04 $5b
    ld bc, $21a2                                  ; $7184: $01 $a2 $21
    ld e, a                                       ; $7187: $5f
    inc bc                                        ; $7188: $03
    add $18                                       ; $7189: $c6 $18
    ld sp, $3946                                  ; $718b: $31 $46 $39
    ld h, a                                       ; $718e: $67
    ld b, $1d                                     ; $718f: $06 $1d
    dec b                                         ; $7191: $05
    dec e                                         ; $7192: $1d
    rst $30                                       ; $7193: $f7
    ld e, [hl]                                    ; $7194: $5e
    rst $38                                       ; $7195: $ff
    ld a, a                                       ; $7196: $7f
    db $10                                        ; $7197: $10
    ld b, d                                       ; $7198: $42
    ld hl, $5f04                                  ; $7199: $21 $04 $5f
    inc bc                                        ; $719c: $03
    and d                                         ; $719d: $a2
    ld hl, $18c6                                  ; $719e: $21 $c6 $18
    ld hl, $9404                                  ; $71a1: $21 $04 $94
    ld d, d                                       ; $71a4: $52
    ld b, e                                       ; $71a5: $43
    dec e                                         ; $71a6: $1d
    ld e, l                                       ; $71a7: $5d
    ld [bc], a                                    ; $71a8: $02
    add $18                                       ; $71a9: $c6 $18
    sub h                                         ; $71ab: $94
    ld d, d                                       ; $71ac: $52
    sbc h                                         ; $71ad: $9c
    ld [hl], e                                    ; $71ae: $73
    ld l, e                                       ; $71af: $6b
    dec l                                         ; $71b0: $2d
    add $18                                       ; $71b1: $c6 $18
    sub h                                         ; $71b3: $94
    ld d, d                                       ; $71b4: $52
    ld a, e                                       ; $71b5: $7b
    ld l, a                                       ; $71b6: $6f
    ld l, e                                       ; $71b7: $6b
    dec l                                         ; $71b8: $2d
    ld hl, $f704                                  ; $71b9: $21 $04 $f7
    ld e, [hl]                                    ; $71bc: $5e
    ld e, a                                       ; $71bd: $5f
    inc bc                                        ; $71be: $03
    dec h                                         ; $71bf: $25
    dec e                                         ; $71c0: $1d
    ld hl, $3104                                  ; $71c1: $21 $04 $31
    ld b, [hl]                                    ; $71c4: $46
    ld e, l                                       ; $71c5: $5d
    ld [bc], a                                    ; $71c6: $02
    inc bc                                        ; $71c7: $03
    add hl, de                                    ; $71c8: $19
    add $18                                       ; $71c9: $c6 $18
    sub h                                         ; $71cb: $94
    ld d, d                                       ; $71cc: $52
    ld l, e                                       ; $71cd: $6b
    dec l                                         ; $71ce: $2d
    ld e, d                                       ; $71cf: $5a
    ld l, e                                       ; $71d0: $6b
    add $18                                       ; $71d1: $c6 $18
    sub h                                         ; $71d3: $94
    ld d, d                                       ; $71d4: $52
    ld e, d                                       ; $71d5: $5a
    ld l, e                                       ; $71d6: $6b
    ld c, d                                       ; $71d7: $4a
    add hl, hl                                    ; $71d8: $29
    ld hl, $d604                                  ; $71d9: $21 $04 $d6
    ld e, d                                       ; $71dc: $5a
    ld e, a                                       ; $71dd: $5f
    inc bc                                        ; $71de: $03
    dec b                                         ; $71df: $05
    dec e                                         ; $71e0: $1d
    ld hl, $5b04                                  ; $71e1: $21 $04 $5b
    ld bc, $035f                                  ; $71e4: $01 $5f $03
    dec b                                         ; $71e7: $05
    dec e                                         ; $71e8: $1d
    ld e, e                                       ; $71e9: $5b
    ld bc, $035f                                  ; $71ea: $01 $5f $03
    ld e, a                                       ; $71ed: $5f
    inc bc                                        ; $71ee: $03
    dec b                                         ; $71ef: $05
    dec e                                         ; $71f0: $1d
    ld e, e                                       ; $71f1: $5b
    ld bc, $035f                                  ; $71f2: $01 $5f $03
    ld e, a                                       ; $71f5: $5f
    inc bc                                        ; $71f6: $03
    dec b                                         ; $71f7: $05
    dec e                                         ; $71f8: $1d
    ld hl, $5b04                                  ; $71f9: $21 $04 $5b
    ld bc, $035f                                  ; $71fc: $01 $5f $03
    dec b                                         ; $71ff: $05
    dec e                                         ; $7200: $1d
    ld hl, $5b04                                  ; $7201: $21 $04 $5b
    ld bc, $0961                                  ; $7204: $01 $61 $09
    ld e, a                                       ; $7207: $5f
    inc bc                                        ; $7208: $03
    ld h, c                                       ; $7209: $61
    add hl, bc                                    ; $720a: $09
    sub $5a                                       ; $720b: $d6 $5a
    ld e, a                                       ; $720d: $5f
    inc bc                                        ; $720e: $03
    ld [$2321], sp                                ; $720f: $08 $21 $23
    ld de, $035f                                  ; $7212: $11 $5f $03
    sub $5a                                       ; $7215: $d6 $5a
    ld c, d                                       ; $7217: $4a
    add hl, hl                                    ; $7218: $29
    ld hl, $5f04                                  ; $7219: $21 $04 $5f
    inc bc                                        ; $721c: $03
    ld h, c                                       ; $721d: $61
    add hl, bc                                    ; $721e: $09
    ld c, d                                       ; $721f: $4a
    add hl, hl                                    ; $7220: $29
    ld hl, $5b04                                  ; $7221: $21 $04 $5b
    ld bc, $0961                                  ; $7224: $01 $61 $09
    ld e, a                                       ; $7227: $5f
    inc bc                                        ; $7228: $03
    db $e4                                        ; $7229: $e4
    db $10                                        ; $722a: $10
    sub $5a                                       ; $722b: $d6 $5a
    rst $38                                       ; $722d: $ff
    ld a, a                                       ; $722e: $7f
    ld c, d                                       ; $722f: $4a
    add hl, hl                                    ; $7230: $29
    ld b, h                                       ; $7231: $44
    dec d                                         ; $7232: $15
    sub $5a                                       ; $7233: $d6 $5a
    rst $38                                       ; $7235: $ff
    ld a, a                                       ; $7236: $7f
    ld c, d                                       ; $7237: $4a
    add hl, hl                                    ; $7238: $29
    ld hl, $5f04                                  ; $7239: $21 $04 $5f
    inc bc                                        ; $723c: $03
    ld h, c                                       ; $723d: $61
    add hl, bc                                    ; $723e: $09
    ld b, h                                       ; $723f: $44
    ld de, $0421                                  ; $7240: $11 $21 $04
    ld e, e                                       ; $7243: $5b
    ld bc, $0d43                                  ; $7244: $01 $43 $0d
    ld e, a                                       ; $7247: $5f
    inc bc                                        ; $7248: $03
    add $18                                       ; $7249: $c6 $18
    sub $5a                                       ; $724b: $d6 $5a
    rst $38                                       ; $724d: $ff
    ld a, a                                       ; $724e: $7f
    rst $28                                       ; $724f: $ef
    dec a                                         ; $7250: $3d
    ld [$d621], sp                                ; $7251: $08 $21 $d6
    ld e, d                                       ; $7254: $5a
    rst $38                                       ; $7255: $ff
    ld a, a                                       ; $7256: $7f
    rst $28                                       ; $7257: $ef
    dec a                                         ; $7258: $3d
    ld [bc], a                                    ; $7259: $02
    add hl, bc                                    ; $725a: $09
    ld e, a                                       ; $725b: $5f
    inc bc                                        ; $725c: $03
    rst $38                                       ; $725d: $ff
    ld a, a                                       ; $725e: $7f
    ld l, e                                       ; $725f: $6b
    dec l                                         ; $7260: $2d
    ld hl, $5d04                                  ; $7261: $21 $04 $5d
    ld [bc], a                                    ; $7264: $02
    ld e, d                                       ; $7265: $5a
    ld l, e                                       ; $7266: $6b
    ld b, h                                       ; $7267: $44
    dec c                                         ; $7268: $0d
    add $18                                       ; $7269: $c6 $18
    sub $5a                                       ; $726b: $d6 $5a
    rst $28                                       ; $726d: $ef
    dec a                                         ; $726e: $3d
    rst $38                                       ; $726f: $ff
    ld a, a                                       ; $7270: $7f
    add $18                                       ; $7271: $c6 $18
    sub $5a                                       ; $7273: $d6 $5a
    rst $38                                       ; $7275: $ff
    ld a, a                                       ; $7276: $7f
    ld c, d                                       ; $7277: $4a
    add hl, hl                                    ; $7278: $29
    ld hl, $5f04                                  ; $7279: $21 $04 $5f
    inc bc                                        ; $727c: $03
    jr @+$65                                      ; $727d: $18 $63

    ld b, h                                       ; $727f: $44
    dec c                                         ; $7280: $0d
    ld hl, $5b04                                  ; $7281: $21 $04 $5b
    ld bc, $0d25                                  ; $7284: $01 $25 $0d
    ld e, a                                       ; $7287: $5f
    inc bc                                        ; $7288: $03
    add $18                                       ; $7289: $c6 $18
    rst $38                                       ; $728b: $ff
    ld a, a                                       ; $728c: $7f
    sub $5a                                       ; $728d: $d6 $5a
    ld e, a                                       ; $728f: $5f
    inc bc                                        ; $7290: $03
    rst $20                                       ; $7291: $e7
    inc e                                         ; $7292: $1c
    sub $5a                                       ; $7293: $d6 $5a
    rst $38                                       ; $7295: $ff
    ld a, a                                       ; $7296: $7f
    rst $28                                       ; $7297: $ef
    dec a                                         ; $7298: $3d
    db $e3                                        ; $7299: $e3
    inc b                                         ; $729a: $04
    ld e, a                                       ; $729b: $5f
    inc bc                                        ; $729c: $03
    ld e, d                                       ; $729d: $5a
    ld l, e                                       ; $729e: $6b
    ld l, d                                       ; $729f: $6a
    add hl, hl                                    ; $72a0: $29
    ld hl, $5b04                                  ; $72a1: $21 $04 $5b
    ld bc, $0926                                  ; $72a4: $01 $26 $09
    ld e, a                                       ; $72a7: $5f
    inc bc                                        ; $72a8: $03
    add $18                                       ; $72a9: $c6 $18
    sub $5a                                       ; $72ab: $d6 $5a
    rst $38                                       ; $72ad: $ff
    ld a, a                                       ; $72ae: $7f
    rst $28                                       ; $72af: $ef
    dec a                                         ; $72b0: $3d
    ld [$d621], sp                                ; $72b1: $08 $21 $d6
    ld e, d                                       ; $72b4: $5a
    rst $38                                       ; $72b5: $ff
    ld a, a                                       ; $72b6: $7f
    rst $28                                       ; $72b7: $ef
    dec a                                         ; $72b8: $3d
    ld hl, $5f04                                  ; $72b9: $21 $04 $5f
    inc bc                                        ; $72bc: $03
    add hl, sp                                    ; $72bd: $39
    ld h, a                                       ; $72be: $67
    ld c, b                                       ; $72bf: $48
    dec d                                         ; $72c0: $15
    ld hl, $5b04                                  ; $72c1: $21 $04 $5b
    ld bc, $0948                                  ; $72c4: $01 $48 $09
    ld e, a                                       ; $72c7: $5f
    inc bc                                        ; $72c8: $03
    add $18                                       ; $72c9: $c6 $18
    sub $5a                                       ; $72cb: $d6 $5a
    rst $28                                       ; $72cd: $ef
    dec a                                         ; $72ce: $3d
    rst $38                                       ; $72cf: $ff
    ld a, a                                       ; $72d0: $7f
    add $18                                       ; $72d1: $c6 $18
    sub $5a                                       ; $72d3: $d6 $5a
    rst $38                                       ; $72d5: $ff
    ld a, a                                       ; $72d6: $7f
    ld l, e                                       ; $72d7: $6b
    dec l                                         ; $72d8: $2d
    and $0c                                       ; $72d9: $e6 $0c
    ld e, a                                       ; $72db: $5f
    inc bc                                        ; $72dc: $03
    ld e, d                                       ; $72dd: $5a
    ld l, e                                       ; $72de: $6b
    rst $28                                       ; $72df: $ef
    dec a                                         ; $72e0: $3d
    ld hl, $4904                                  ; $72e1: $21 $04 $49
    dec c                                         ; $72e4: $0d
    ld e, e                                       ; $72e5: $5b
    ld bc, $035f                                  ; $72e6: $01 $5f $03
    rst $28                                       ; $72e9: $ef
    dec a                                         ; $72ea: $3d
    rst $38                                       ; $72eb: $ff
    ld a, a                                       ; $72ec: $7f
    ld e, e                                       ; $72ed: $5b
    ld bc, $035f                                  ; $72ee: $01 $5f $03
    add $18                                       ; $72f1: $c6 $18
    sub $5a                                       ; $72f3: $d6 $5a
    rst $38                                       ; $72f5: $ff
    ld a, a                                       ; $72f6: $7f
    rst $28                                       ; $72f7: $ef
    dec a                                         ; $72f8: $3d
    add h                                         ; $72f9: $84
    db $10                                        ; $72fa: $10
    ld e, a                                       ; $72fb: $5f
    inc bc                                        ; $72fc: $03
    ld e, d                                       ; $72fd: $5a
    ld l, e                                       ; $72fe: $6b
    ld c, c                                       ; $72ff: $49
    add hl, bc                                    ; $7300: $09
    ld hl, $4a04                                  ; $7301: $21 $04 $4a
    add hl, bc                                    ; $7304: $09
    ld e, e                                       ; $7305: $5b
    ld bc, $035f                                  ; $7306: $01 $5f $03
    add $18                                       ; $7309: $c6 $18
    rst $38                                       ; $730b: $ff
    ld a, a                                       ; $730c: $7f
    rst $28                                       ; $730d: $ef
    dec a                                         ; $730e: $3d
    ld e, a                                       ; $730f: $5f
    inc bc                                        ; $7310: $03
    ld c, d                                       ; $7311: $4a
    add hl, hl                                    ; $7312: $29
    rst $38                                       ; $7313: $ff
    ld a, a                                       ; $7314: $7f
    ld sp, $d646                                  ; $7315: $31 $46 $d6
    ld e, d                                       ; $7318: $5a
    ld hl, $5f04                                  ; $7319: $21 $04 $5f
    inc bc                                        ; $731c: $03
    add hl, sp                                    ; $731d: $39
    ld h, a                                       ; $731e: $67
    add hl, bc                                    ; $731f: $09
    dec c                                         ; $7320: $0d
    ld hl, $2c04                                  ; $7321: $21 $04 $2c
    dec b                                         ; $7324: $05

Call_0d4_7325:
    ld e, e                                       ; $7325: $5b
    ld bc, $035f                                  ; $7326: $01 $5f $03
    add $18                                       ; $7329: $c6 $18
    rst $38                                       ; $732b: $ff
    ld a, a                                       ; $732c: $7f
    rst $28                                       ; $732d: $ef
    dec a                                         ; $732e: $3d
    ld e, a                                       ; $732f: $5f
    inc bc                                        ; $7330: $03
    add $18                                       ; $7331: $c6 $18
    sub $5a                                       ; $7333: $d6 $5a
    rst $28                                       ; $7335: $ef
    dec a                                         ; $7336: $3d
    rst $38                                       ; $7337: $ff
    ld a, a                                       ; $7338: $7f
    ld h, e                                       ; $7339: $63
    inc c                                         ; $733a: $0c
    ld e, a                                       ; $733b: $5f
    inc bc                                        ; $733c: $03
    rst $38                                       ; $733d: $ff
    ld a, a                                       ; $733e: $7f
    inc l                                         ; $733f: $2c
    dec b                                         ; $7340: $05
    ld hl, $4d04                                  ; $7341: $21 $04 $4d
    dec b                                         ; $7344: $05
    ld e, e                                       ; $7345: $5b
    ld bc, $035f                                  ; $7346: $01 $5f $03
    add $18                                       ; $7349: $c6 $18
    sub $5a                                       ; $734b: $d6 $5a
    rst $38                                       ; $734d: $ff
    ld a, a                                       ; $734e: $7f
    rst $28                                       ; $734f: $ef
    dec a                                         ; $7350: $3d
    add $18                                       ; $7351: $c6 $18
    rst $28                                       ; $7353: $ef
    dec a                                         ; $7354: $3d
    sub $5a                                       ; $7355: $d6 $5a
    rst $28                                       ; $7357: $ef
    dec a                                         ; $7358: $3d
    ld hl, $5f04                                  ; $7359: $21 $04 $5f
    inc bc                                        ; $735c: $03
    jp hl                                         ; $735d: $e9


    db $10                                        ; $735e: $10
    ld c, l                                       ; $735f: $4d
    dec b                                         ; $7360: $05
    ld hl, $4f04                                  ; $7361: $21 $04 $4f
    dec b                                         ; $7364: $05
    ld e, a                                       ; $7365: $5f
    inc bc                                        ; $7366: $03
    ld e, e                                       ; $7367: $5b
    ld bc, $18c6                                  ; $7368: $01 $c6 $18
    rst $28                                       ; $736b: $ef
    dec a                                         ; $736c: $3d
    sub $5a                                       ; $736d: $d6 $5a
    dec l                                         ; $736f: $2d
    add hl, bc                                    ; $7370: $09
    jp hl                                         ; $7371: $e9


    db $10                                        ; $7372: $10
    sub $5a                                       ; $7373: $d6 $5a
    rst $38                                       ; $7375: $ff
    ld a, a                                       ; $7376: $7f
    rst $28                                       ; $7377: $ef
    dec a                                         ; $7378: $3d
    ld hl, $5f04                                  ; $7379: $21 $04 $5f
    inc bc                                        ; $737c: $03
    ld c, a                                       ; $737d: $4f
    dec b                                         ; $737e: $05
    ld d, b                                       ; $737f: $50
    dec b                                         ; $7380: $05
    ld hl, $3104                                  ; $7381: $21 $04 $31
    dec b                                         ; $7384: $05
    ld e, a                                       ; $7385: $5f
    inc bc                                        ; $7386: $03
    ld e, e                                       ; $7387: $5b
    ld bc, $0d0c                                  ; $7388: $01 $0c $0d
    sub $5a                                       ; $738b: $d6 $5a
    rst $28                                       ; $738d: $ef
    dec a                                         ; $738e: $3d
    rst $38                                       ; $738f: $ff
    ld a, a                                       ; $7390: $7f
    ld [$d610], a                                 ; $7391: $ea $10 $d6
    ld e, d                                       ; $7394: $5a
    rst $38                                       ; $7395: $ff
    ld a, a                                       ; $7396: $7f
    rst $28                                       ; $7397: $ef
    dec a                                         ; $7398: $3d
    ld hl, $5f04                                  ; $7399: $21 $04 $5f
    inc bc                                        ; $739c: $03
    jr nc, jr_0d4_73a8                            ; $739d: $30 $09

    ld sp, $2105                                  ; $739f: $31 $05 $21
    inc b                                         ; $73a2: $04
    inc sp                                        ; $73a3: $33
    dec b                                         ; $73a4: $05
    ld e, a                                       ; $73a5: $5f
    inc bc                                        ; $73a6: $03
    rst $28                                       ; $73a7: $ef

jr_0d4_73a8:
    dec a                                         ; $73a8: $3d
    add $18                                       ; $73a9: $c6 $18
    sub $5a                                       ; $73ab: $d6 $5a
    rst $28                                       ; $73ad: $ef
    dec a                                         ; $73ae: $3d
    rst $38                                       ; $73af: $ff
    ld a, a                                       ; $73b0: $7f
    add $14                                       ; $73b1: $c6 $14
    sub $5a                                       ; $73b3: $d6 $5a
    rst $38                                       ; $73b5: $ff
    ld a, a                                       ; $73b6: $7f
    rst $28                                       ; $73b7: $ef
    dec a                                         ; $73b8: $3d
    ld b, e                                       ; $73b9: $43
    ld [$1f1c], sp                                ; $73ba: $08 $1c $1f
    ld [hl-], a                                   ; $73bd: $32
    dec b                                         ; $73be: $05
    ld l, e                                       ; $73bf: $6b
    dec l                                         ; $73c0: $2d
    ld hl, $3504                                  ; $73c1: $21 $04 $35
    dec b                                         ; $73c4: $05
    adc $39                                       ; $73c5: $ce $39
    ld e, a                                       ; $73c7: $5f
    inc bc                                        ; $73c8: $03
    add $18                                       ; $73c9: $c6 $18
    sub $5a                                       ; $73cb: $d6 $5a
    rst $28                                       ; $73cd: $ef
    dec a                                         ; $73ce: $3d
    rst $38                                       ; $73cf: $ff
    ld a, a                                       ; $73d0: $7f
    add $18                                       ; $73d1: $c6 $18
    rst $28                                       ; $73d3: $ef
    dec a                                         ; $73d4: $3d
    sub $5a                                       ; $73d5: $d6 $5a
    rst $38                                       ; $73d7: $ff
    ld a, a                                       ; $73d8: $7f
    ld hl, $5f04                                  ; $73d9: $21 $04 $5f
    inc bc                                        ; $73dc: $03
    add hl, sp                                    ; $73dd: $39
    ld h, a                                       ; $73de: $67
    ld c, h                                       ; $73df: $4c
    dec h                                         ; $73e0: $25
    ld hl, $5b04                                  ; $73e1: $21 $04 $5b
    ld bc, $035f                                  ; $73e4: $01 $5f $03
    ld c, h                                       ; $73e7: $4c
    dec h                                         ; $73e8: $25
    ld e, e                                       ; $73e9: $5b
    ld bc, $035f                                  ; $73ea: $01 $5f $03
    ld e, a                                       ; $73ed: $5f
    inc bc                                        ; $73ee: $03
    ld c, h                                       ; $73ef: $4c
    dec h                                         ; $73f0: $25
    ld e, e                                       ; $73f1: $5b
    ld bc, $035f                                  ; $73f2: $01 $5f $03
    ld e, a                                       ; $73f5: $5f
    inc bc                                        ; $73f6: $03
    ld c, h                                       ; $73f7: $4c
    dec h                                         ; $73f8: $25
    ld hl, $5b04                                  ; $73f9: $21 $04 $5b
    ld bc, $035f                                  ; $73fc: $01 $5f $03
    ld c, h                                       ; $73ff: $4c
    dec h                                         ; $7400: $25
    ld [bc], a                                    ; $7401: $02
    nop                                           ; $7402: $00
    ld e, e                                       ; $7403: $5b
    ld bc, $1606                                  ; $7404: $01 $06 $16
    ld e, a                                       ; $7407: $5f
    inc bc                                        ; $7408: $03
    ld b, $16                                     ; $7409: $06 $16
    ld e, a                                       ; $740b: $5f
    inc bc                                        ; $740c: $03
    ld b, $16                                     ; $740d: $06 $16
    ld e, a                                       ; $740f: $5f
    inc bc                                        ; $7410: $03
    and $20                                       ; $7411: $e6 $20
    ld e, a                                       ; $7413: $5f
    inc bc                                        ; $7414: $03
    add $19                                       ; $7415: $c6 $19
    ld b, $16                                     ; $7417: $06 $16
    ld [bc], a                                    ; $7419: $02
    nop                                           ; $741a: $00
    ld e, a                                       ; $741b: $5f
    inc bc                                        ; $741c: $03
    ld b, $16                                     ; $741d: $06 $16
    ld b, $16                                     ; $741f: $06 $16
    ld [bc], a                                    ; $7421: $02
    nop                                           ; $7422: $00
    ld b, $16                                     ; $7423: $06 $16
    ld e, e                                       ; $7425: $5b
    ld bc, $035f                                  ; $7426: $01 $5f $03
    and $20                                       ; $7429: $e6 $20
    ld [hl], e                                    ; $742b: $73
    ld c, [hl]                                    ; $742c: $4e
    ld b, $16                                     ; $742d: $06 $16
    sbc h                                         ; $742f: $9c
    ld [hl], e                                    ; $7430: $73
    rlca                                          ; $7431: $07
    dec h                                         ; $7432: $25
    ld [hl], e                                    ; $7433: $73
    ld c, [hl]                                    ; $7434: $4e
    rst $38                                       ; $7435: $ff
    ld a, a                                       ; $7436: $7f
    add hl, sp                                    ; $7437: $39
    ld h, a                                       ; $7438: $67
    add h                                         ; $7439: $84
    db $10                                        ; $743a: $10
    ld e, a                                       ; $743b: $5f
    inc bc                                        ; $743c: $03
    add hl, sp                                    ; $743d: $39
    ld h, a                                       ; $743e: $67
    ld b, $16                                     ; $743f: $06 $16
    ld [bc], a                                    ; $7441: $02
    nop                                           ; $7442: $00
    rlca                                          ; $7443: $07
    ld d, $5b                                     ; $7444: $16 $5b
    ld bc, $035f                                  ; $7446: $01 $5f $03
    and $20                                       ; $7449: $e6 $20
    sbc $7b                                       ; $744b: $de $7b
    ld [hl], e                                    ; $744d: $73
    ld c, [hl]                                    ; $744e: $4e
    xor d                                         ; $744f: $aa
    dec h                                         ; $7450: $25
    add hl, sp                                    ; $7451: $39
    ld h, a                                       ; $7452: $67
    rst $38                                       ; $7453: $ff
    ld a, a                                       ; $7454: $7f
    ld [hl], e                                    ; $7455: $73
    ld c, [hl]                                    ; $7456: $4e
    xor d                                         ; $7457: $aa
    dec h                                         ; $7458: $25
    dec b                                         ; $7459: $05
    ld de, $4e73                                  ; $745a: $11 $73 $4e
    rst $38                                       ; $745d: $ff
    ld a, a                                       ; $745e: $7f
    ld e, a                                       ; $745f: $5f
    inc bc                                        ; $7460: $03
    ld [bc], a                                    ; $7461: $02
    nop                                           ; $7462: $00
    ld [$5b16], sp                                ; $7463: $08 $16 $5b
    ld bc, $035f                                  ; $7466: $01 $5f $03
    and $20                                       ; $7469: $e6 $20
    add hl, sp                                    ; $746b: $39
    ld h, a                                       ; $746c: $67
    ld [hl], e                                    ; $746d: $73
    ld c, [hl]                                    ; $746e: $4e
    rst $38                                       ; $746f: $ff
    ld a, a                                       ; $7470: $7f
    ld c, d                                       ; $7471: $4a
    add hl, hl                                    ; $7472: $29
    add hl, sp                                    ; $7473: $39
    ld h, a                                       ; $7474: $67
    ld [hl], e                                    ; $7475: $73
    ld c, [hl]                                    ; $7476: $4e
    rst $38                                       ; $7477: $ff
    ld a, a                                       ; $7478: $7f
    ld [bc], a                                    ; $7479: $02
    nop                                           ; $747a: $00
    ld e, a                                       ; $747b: $5f
    inc bc                                        ; $747c: $03
    ld e, d                                       ; $747d: $5a
    ld l, e                                       ; $747e: $6b
    ld b, [hl]                                    ; $747f: $46
    dec e                                         ; $7480: $1d
    ld [bc], a                                    ; $7481: $02
    nop                                           ; $7482: $00
    add hl, bc                                    ; $7483: $09
    ld d, $d6                                     ; $7484: $16 $d6
    ld e, d                                       ; $7486: $5a
    ld e, l                                       ; $7487: $5d
    ld [bc], a                                    ; $7488: $02
    ld c, c                                       ; $7489: $49
    add hl, hl                                    ; $748a: $29
    add hl, sp                                    ; $748b: $39
    ld h, a                                       ; $748c: $67
    ld [hl], e                                    ; $748d: $73
    ld c, [hl]                                    ; $748e: $4e
    rst $38                                       ; $748f: $ff
    ld a, a                                       ; $7490: $7f
    and $20                                       ; $7491: $e6 $20
    ld [hl], e                                    ; $7493: $73
    ld c, [hl]                                    ; $7494: $4e
    rst $38                                       ; $7495: $ff
    ld a, a                                       ; $7496: $7f
    add hl, sp                                    ; $7497: $39
    ld h, a                                       ; $7498: $67
    ld [bc], a                                    ; $7499: $02
    nop                                           ; $749a: $00
    ld e, a                                       ; $749b: $5f
    inc bc                                        ; $749c: $03
    sub $5a                                       ; $749d: $d6 $5a
    ld c, b                                       ; $749f: $48
    ld hl, $0002                                  ; $74a0: $21 $02 $00
    dec bc                                        ; $74a3: $0b
    ld e, $ff                                     ; $74a4: $1e $ff
    ld a, a                                       ; $74a6: $7f
    ld e, l                                       ; $74a7: $5d
    ld [bc], a                                    ; $74a8: $02
    ld c, c                                       ; $74a9: $49
    add hl, hl                                    ; $74aa: $29
    ld [hl], e                                    ; $74ab: $73
    ld c, [hl]                                    ; $74ac: $4e
    add hl, sp                                    ; $74ad: $39
    ld h, a                                       ; $74ae: $67
    rst $38                                       ; $74af: $ff
    ld a, a                                       ; $74b0: $7f
    add $18                                       ; $74b1: $c6 $18
    ld e, d                                       ; $74b3: $5a
    ld l, e                                       ; $74b4: $6b
    adc h                                         ; $74b5: $8c
    ld sp, $7fff                                  ; $74b6: $31 $ff $7f
    ld h, h                                       ; $74b9: $64
    db $10                                        ; $74ba: $10
    sub $5a                                       ; $74bb: $d6 $5a
    sla c                                         ; $74bd: $cb $21
    ld e, a                                       ; $74bf: $5f
    inc bc                                        ; $74c0: $03
    ld [bc], a                                    ; $74c1: $02
    nop                                           ; $74c2: $00
    db $ec                                        ; $74c3: $ec
    dec d                                         ; $74c4: $15
    cp l                                          ; $74c5: $bd
    ld [hl], a                                    ; $74c6: $77
    ld e, l                                       ; $74c7: $5d
    ld [bc], a                                    ; $74c8: $02
    rlca                                          ; $74c9: $07
    dec h                                         ; $74ca: $25
    ld [hl], e                                    ; $74cb: $73
    ld c, [hl]                                    ; $74cc: $4e
    rst $38                                       ; $74cd: $ff
    ld a, a                                       ; $74ce: $7f
    jr jr_0d4_7534                                ; $74cf: $18 $63

    add $18                                       ; $74d1: $c6 $18
    ld [hl], e                                    ; $74d3: $73
    ld c, [hl]                                    ; $74d4: $4e
    ld e, d                                       ; $74d5: $5a
    ld l, e                                       ; $74d6: $6b
    adc h                                         ; $74d7: $8c
    ld sp, $1064                                  ; $74d8: $31 $64 $10
    sub $5a                                       ; $74db: $d6 $5a
    ld e, a                                       ; $74dd: $5f
    inc bc                                        ; $74de: $03
    call z, $021d                                 ; $74df: $cc $1d $02
    nop                                           ; $74e2: $00
    db $ed                                        ; $74e3: $ed
    dec d                                         ; $74e4: $15
    add hl, sp                                    ; $74e5: $39
    ld h, a                                       ; $74e6: $67
    ld e, l                                       ; $74e7: $5d
    ld [bc], a                                    ; $74e8: $02
    adc h                                         ; $74e9: $8c
    ld sp, $6739                                  ; $74ea: $31 $39 $67
    sbc $7b                                       ; $74ed: $de $7b
    ld [hl], e                                    ; $74ef: $73
    ld c, [hl]                                    ; $74f0: $4e
    ld l, e                                       ; $74f1: $6b
    dec l                                         ; $74f2: $2d
    ld [hl], e                                    ; $74f3: $73
    ld c, [hl]                                    ; $74f4: $4e
    add hl, sp                                    ; $74f5: $39
    ld h, a                                       ; $74f6: $67
    rst $38                                       ; $74f7: $ff
    ld a, a                                       ; $74f8: $7f
    add h                                         ; $74f9: $84
    db $10                                        ; $74fa: $10
    ld e, a                                       ; $74fb: $5f
    inc bc                                        ; $74fc: $03
    jr jr_0d4_7566                                ; $74fd: $18 $67

    call $0215                                    ; $74ff: $cd $15 $02
    nop                                           ; $7502: $00
    adc $21                                       ; $7503: $ce $21
    ld e, l                                       ; $7505: $5d
    ld [bc], a                                    ; $7506: $02
    and $20                                       ; $7507: $e6 $20
    add hl, hl                                    ; $7509: $29
    add hl, hl                                    ; $750a: $29
    add hl, sp                                    ; $750b: $39
    ld h, a                                       ; $750c: $67
    sub h                                         ; $750d: $94
    ld d, d                                       ; $750e: $52
    sbc $7b                                       ; $750f: $de $7b
    xor h                                         ; $7511: $ac
    ld sp, $6318                                  ; $7512: $31 $18 $63
    rst $38                                       ; $7515: $ff
    ld a, a                                       ; $7516: $7f
    add hl, sp                                    ; $7517: $39
    ld l, e                                       ; $7518: $6b
    ld h, h                                       ; $7519: $64
    db $10                                        ; $751a: $10
    xor $15                                       ; $751b: $ee $15
    sub h                                         ; $751d: $94
    ld d, [hl]                                    ; $751e: $56
    ld e, a                                       ; $751f: $5f
    inc bc                                        ; $7520: $03
    ld [bc], a                                    ; $7521: $02
    nop                                           ; $7522: $00
    ldh a, [rNR42]                                ; $7523: $f0 $21
    ld e, e                                       ; $7525: $5b
    ld bc, $035f                                  ; $7526: $01 $5f $03
    and $20                                       ; $7529: $e6 $20
    jr jr_0d4_7590                                ; $752b: $18 $63

    sbc $7b                                       ; $752d: $de $7b
    db $10                                        ; $752f: $10
    ld b, d                                       ; $7530: $42
    add $18                                       ; $7531: $c6 $18
    add hl, sp                                    ; $7533: $39

jr_0d4_7534:
    ld h, a                                       ; $7534: $67
    rst $38                                       ; $7535: $ff
    ld a, a                                       ; $7536: $7f
    xor h                                         ; $7537: $ac
    ld sp, $1084                                  ; $7538: $31 $84 $10
    pop af                                        ; $753b: $f1
    ld hl, $7fff                                  ; $753c: $21 $ff $7f
    ld e, a                                       ; $753f: $5f
    inc bc                                        ; $7540: $03
    ld [bc], a                                    ; $7541: $02
    nop                                           ; $7542: $00
    pop de                                        ; $7543: $d1
    add hl, de                                    ; $7544: $19
    ld e, a                                       ; $7545: $5f
    inc bc                                        ; $7546: $03
    ld e, e                                       ; $7547: $5b
    ld bc, $2929                                  ; $7548: $01 $29 $29
    jr @+$65                                      ; $754b: $18 $63

    ld sp, $bd46                                  ; $754d: $31 $46 $bd
    ld [hl], a                                    ; $7550: $77
    add hl, hl                                    ; $7551: $29
    dec h                                         ; $7552: $25
    ld e, d                                       ; $7553: $5a
    ld l, e                                       ; $7554: $6b
    ld d, d                                       ; $7555: $52
    ld c, [hl]                                    ; $7556: $4e
    rst $38                                       ; $7557: $ff
    ld a, a                                       ; $7558: $7f
    and [hl]                                      ; $7559: $a6
    inc d                                         ; $755a: $14
    rst $38                                       ; $755b: $ff
    ld a, a                                       ; $755c: $7f
    ld a, [c]                                     ; $755d: $f2
    add hl, de                                    ; $755e: $19
    ld e, a                                       ; $755f: $5f
    inc bc                                        ; $7560: $03
    ld [bc], a                                    ; $7561: $02
    nop                                           ; $7562: $00
    di                                            ; $7563: $f3
    add hl, de                                    ; $7564: $19
    ld e, a                                       ; $7565: $5f

jr_0d4_7566:
    inc bc                                        ; $7566: $03
    ld e, e                                       ; $7567: $5b
    ld bc, $1ce6                                  ; $7568: $01 $e6 $1c
    jr @+$65                                      ; $756b: $18 $63

    rst $08                                       ; $756d: $cf
    ld sp, $77bd                                  ; $756e: $31 $bd $77
    add $18                                       ; $7571: $c6 $18
    add hl, sp                                    ; $7573: $39
    ld h, a                                       ; $7574: $67
    ld [hl], e                                    ; $7575: $73
    ld d, d                                       ; $7576: $52
    sbc $7b                                       ; $7577: $de $7b
    add l                                         ; $7579: $85
    db $10                                        ; $757a: $10
    di                                            ; $757b: $f3
    add hl, de                                    ; $757c: $19
    rst $38                                       ; $757d: $ff
    ld a, a                                       ; $757e: $7f
    ld e, a                                       ; $757f: $5f
    inc bc                                        ; $7580: $03
    ld [bc], a                                    ; $7581: $02
    nop                                           ; $7582: $00
    push de                                       ; $7583: $d5
    add hl, de                                    ; $7584: $19
    ld e, a                                       ; $7585: $5f
    inc bc                                        ; $7586: $03
    ld e, e                                       ; $7587: $5b
    ld bc, $1ce7                                  ; $7588: $01 $e7 $1c
    jr jr_0d4_75f0                                ; $758b: $18 $63

    cp l                                          ; $758d: $bd
    ld [hl], a                                    ; $758e: $77
    push af                                       ; $758f: $f5

jr_0d4_7590:
    add hl, de                                    ; $7590: $19
    add hl, hl                                    ; $7591: $29
    dec h                                         ; $7592: $25
    or $5e                                        ; $7593: $f6 $5e
    ld d, c                                       ; $7595: $51
    ld c, d                                       ; $7596: $4a
    rst $38                                       ; $7597: $ff
    ld a, a                                       ; $7598: $7f
    ld [bc], a                                    ; $7599: $02
    nop                                           ; $759a: $00
    push de                                       ; $759b: $d5
    add hl, de                                    ; $759c: $19
    ld e, a                                       ; $759d: $5f
    inc bc                                        ; $759e: $03
    and $20                                       ; $759f: $e6 $20
    ld [bc], a                                    ; $75a1: $02
    nop                                           ; $75a2: $00
    or [hl]                                       ; $75a3: $b6
    add hl, de                                    ; $75a4: $19
    rst $38                                       ; $75a5: $ff
    ld a, a                                       ; $75a6: $7f
    ld e, a                                       ; $75a7: $5f
    inc bc                                        ; $75a8: $03
    and $20                                       ; $75a9: $e6 $20
    ld [hl], e                                    ; $75ab: $73
    ld c, [hl]                                    ; $75ac: $4e
    add hl, sp                                    ; $75ad: $39
    ld h, a                                       ; $75ae: $67
    sbc $7b                                       ; $75af: $de $7b
    and $1c                                       ; $75b1: $e6 $1c
    sub h                                         ; $75b3: $94
    ld d, d                                       ; $75b4: $52
    rst $38                                       ; $75b5: $ff
    ld a, a                                       ; $75b6: $7f
    adc h                                         ; $75b7: $8c
    ld sp, $14a4                                  ; $75b8: $31 $a4 $14
    push de                                       ; $75bb: $d5
    add hl, de                                    ; $75bc: $19
    jr jr_0d4_7622                                ; $75bd: $18 $63

    ld e, a                                       ; $75bf: $5f
    inc bc                                        ; $75c0: $03
    ld [bc], a                                    ; $75c1: $02
    nop                                           ; $75c2: $00
    pop de                                        ; $75c3: $d1
    add hl, hl                                    ; $75c4: $29
    ld e, l                                       ; $75c5: $5d
    ld [bc], a                                    ; $75c6: $02
    and $20                                       ; $75c7: $e6 $20
    and $20                                       ; $75c9: $e6 $20
    ld e, d                                       ; $75cb: $5a
    ld l, e                                       ; $75cc: $6b
    adc h                                         ; $75cd: $8c
    ld sp, $7fff                                  ; $75ce: $31 $ff $7f
    and $20                                       ; $75d1: $e6 $20
    jr jr_0d4_7638                                ; $75d3: $18 $63

    rst $38                                       ; $75d5: $ff
    ld a, a                                       ; $75d6: $7f
    adc h                                         ; $75d7: $8c
    ld sp, $0002                                  ; $75d8: $31 $02 $00
    inc sp                                        ; $75db: $33
    ld a, [hl-]                                   ; $75dc: $3a
    ld e, a                                       ; $75dd: $5f
    inc bc                                        ; $75de: $03
    rlca                                          ; $75df: $07
    ld hl, $0002                                  ; $75e0: $21 $02 $00
    ld e, e                                       ; $75e3: $5b
    ld bc, $035f                                  ; $75e4: $01 $5f $03
    rlca                                          ; $75e7: $07
    ld hl, $015b                                  ; $75e8: $21 $5b $01
    ld e, a                                       ; $75eb: $5f
    inc bc                                        ; $75ec: $03
    ld e, a                                       ; $75ed: $5f
    inc bc                                        ; $75ee: $03
    rlca                                          ; $75ef: $07

jr_0d4_75f0:
    ld hl, $015b                                  ; $75f0: $21 $5b $01
    ld e, a                                       ; $75f3: $5f
    inc bc                                        ; $75f4: $03
    ld e, a                                       ; $75f5: $5f
    inc bc                                        ; $75f6: $03
    rlca                                          ; $75f7: $07
    ld hl, $0002                                  ; $75f8: $21 $02 $00
    ld e, e                                       ; $75fb: $5b
    ld bc, $035f                                  ; $75fc: $01 $5f $03
    rlca                                          ; $75ff: $07
    ld hl, $0002                                  ; $7600: $21 $02 $00
    ld e, e                                       ; $7603: $5b
    ld bc, $6463                                  ; $7604: $01 $63 $64
    ld e, a                                       ; $7607: $5f
    inc bc                                        ; $7608: $03
    add h                                         ; $7609: $84
    ld e, h                                       ; $760a: $5c
    ld e, a                                       ; $760b: $5f
    inc bc                                        ; $760c: $03
    adc h                                         ; $760d: $8c
    ld sp, $4a52                                  ; $760e: $31 $52 $4a
    ld h, e                                       ; $7611: $63
    ld h, h                                       ; $7612: $64
    ld e, a                                       ; $7613: $5f
    inc bc                                        ; $7614: $03
    ld c, d                                       ; $7615: $4a
    dec [hl]                                      ; $7616: $35
    ld d, d                                       ; $7617: $52
    ld c, d                                       ; $7618: $4a
    ld [bc], a                                    ; $7619: $02
    nop                                           ; $761a: $00
    ld e, a                                       ; $761b: $5f
    inc bc                                        ; $761c: $03
    ld h, e                                       ; $761d: $63
    ld h, h                                       ; $761e: $64
    ld d, d                                       ; $761f: $52
    ld c, d                                       ; $7620: $4a
    ld [bc], a                                    ; $7621: $02

jr_0d4_7622:
    nop                                           ; $7622: $00
    ld h, e                                       ; $7623: $63
    ld h, b                                       ; $7624: $60
    ld e, e                                       ; $7625: $5b
    ld bc, $035f                                  ; $7626: $01 $5f $03
    ld h, e                                       ; $7629: $63
    ld h, b                                       ; $762a: $60
    ld [hl], e                                    ; $762b: $73
    ld c, [hl]                                    ; $762c: $4e
    adc h                                         ; $762d: $8c
    ld sp, $6739                                  ; $762e: $31 $39 $67
    and l                                         ; $7631: $a5
    ld d, h                                       ; $7632: $54
    ld [hl], e                                    ; $7633: $73
    ld c, [hl]                                    ; $7634: $4e
    add hl, sp                                    ; $7635: $39
    ld h, a                                       ; $7636: $67
    adc h                                         ; $7637: $8c

jr_0d4_7638:
    ld sp, $0002                                  ; $7638: $31 $02 $00
    ld e, a                                       ; $763b: $5f
    inc bc                                        ; $763c: $03
    ld h, e                                       ; $763d: $63
    ld h, b                                       ; $763e: $60
    rlca                                          ; $763f: $07
    ld c, c                                       ; $7640: $49
    ld [bc], a                                    ; $7641: $02
    nop                                           ; $7642: $00
    add e                                         ; $7643: $83
    ld e, b                                       ; $7644: $58
    ld e, e                                       ; $7645: $5b
    ld bc, $035f                                  ; $7646: $01 $5f $03
    and l                                         ; $7649: $a5
    inc d                                         ; $764a: $14
    or l                                          ; $764b: $b5
    ld d, [hl]                                    ; $764c: $56
    rst $38                                       ; $764d: $ff
    ld a, a                                       ; $764e: $7f
    ld l, e                                       ; $764f: $6b
    ld sp, $14a5                                  ; $7650: $31 $a5 $14
    ld [hl], e                                    ; $7653: $73
    ld c, [hl]                                    ; $7654: $4e
    ld e, d                                       ; $7655: $5a
    ld l, e                                       ; $7656: $6b
    adc h                                         ; $7657: $8c
    ld sp, $0002                                  ; $7658: $31 $02 $00
    ld e, a                                       ; $765b: $5f
    inc bc                                        ; $765c: $03
    add e                                         ; $765d: $83
    ld e, b                                       ; $765e: $58
    ld l, e                                       ; $765f: $6b
    dec [hl]                                      ; $7660: $35
    ld [bc], a                                    ; $7661: $02
    nop                                           ; $7662: $00
    and e                                         ; $7663: $a3
    ld d, h                                       ; $7664: $54
    ld e, e                                       ; $7665: $5b
    ld bc, $035f                                  ; $7666: $01 $5f $03
    add $18                                       ; $7669: $c6 $18
    rst $38                                       ; $766b: $ff
    ld a, a                                       ; $766c: $7f
    ld d, d                                       ; $766d: $52
    ld c, d                                       ; $766e: $4a
    adc h                                         ; $766f: $8c
    ld sp, $2529                                  ; $7670: $31 $29 $25
    add hl, sp                                    ; $7673: $39
    ld h, a                                       ; $7674: $67
    ld [hl], e                                    ; $7675: $73
    ld c, [hl]                                    ; $7676: $4e
    rst $38                                       ; $7677: $ff
    ld a, a                                       ; $7678: $7f
    add $18                                       ; $7679: $c6 $18
    sub $5a                                       ; $767b: $d6 $5a
    and e                                         ; $767d: $a3
    ld d, h                                       ; $767e: $54
    ld e, a                                       ; $767f: $5f
    inc bc                                        ; $7680: $03
    ld [bc], a                                    ; $7681: $02
    nop                                           ; $7682: $00
    jp Jump_0d4_5b4c                              ; $7683: $c3 $4c $5b


    ld bc, $035f                                  ; $7686: $01 $5f $03
    add $18                                       ; $7689: $c6 $18
    sub l                                         ; $768b: $95
    ld d, d                                       ; $768c: $52
    rst $38                                       ; $768d: $ff
    ld a, a                                       ; $768e: $7f
    add hl, sp                                    ; $768f: $39
    ld h, a                                       ; $7690: $67
    add $18                                       ; $7691: $c6 $18
    ld [hl], e                                    ; $7693: $73
    ld c, [hl]                                    ; $7694: $4e
    rst $38                                       ; $7695: $ff
    ld a, a                                       ; $7696: $7f
    add hl, sp                                    ; $7697: $39
    ld h, a                                       ; $7698: $67
    add l                                         ; $7699: $85
    db $10                                        ; $769a: $10
    ld e, a                                       ; $769b: $5f
    inc bc                                        ; $769c: $03
    add hl, sp                                    ; $769d: $39
    ld h, a                                       ; $769e: $67
    jp $024c                                      ; $769f: $c3 $4c $02


    nop                                           ; $76a2: $00
    inc bc                                        ; $76a3: $03
    ld b, c                                       ; $76a4: $41
    ld e, e                                       ; $76a5: $5b
    ld bc, $035f                                  ; $76a6: $01 $5f $03
    and l                                         ; $76a9: $a5
    inc d                                         ; $76aa: $14
    ld [hl], e                                    ; $76ab: $73
    ld c, [hl]                                    ; $76ac: $4e
    rst $38                                       ; $76ad: $ff
    ld a, a                                       ; $76ae: $7f
    add $18                                       ; $76af: $c6 $18
    add $18                                       ; $76b1: $c6 $18
    ld [hl], e                                    ; $76b3: $73
    ld c, [hl]                                    ; $76b4: $4e
    rst $38                                       ; $76b5: $ff
    ld a, a                                       ; $76b6: $7f
    add hl, sp                                    ; $76b7: $39
    ld h, a                                       ; $76b8: $67
    and l                                         ; $76b9: $a5
    inc d                                         ; $76ba: $14
    ld e, a                                       ; $76bb: $5f
    inc bc                                        ; $76bc: $03
    jr jr_0d4_7722                                ; $76bd: $18 $63

    inc bc                                        ; $76bf: $03
    ld b, l                                       ; $76c0: $45
    ld [bc], a                                    ; $76c1: $02
    nop                                           ; $76c2: $00
    inc hl                                        ; $76c3: $23
    dec a                                         ; $76c4: $3d
    ld e, e                                       ; $76c5: $5b
    ld bc, $035f                                  ; $76c6: $01 $5f $03
    and l                                         ; $76c9: $a5
    inc d                                         ; $76ca: $14
    ld [hl], e                                    ; $76cb: $73
    ld c, [hl]                                    ; $76cc: $4e
    rst $38                                       ; $76cd: $ff
    ld a, a                                       ; $76ce: $7f
    adc h                                         ; $76cf: $8c
    ld sp, $18c6                                  ; $76d0: $31 $c6 $18
    rst $30                                       ; $76d3: $f7
    ld e, [hl]                                    ; $76d4: $5e
    rst $38                                       ; $76d5: $ff
    ld a, a                                       ; $76d6: $7f
    adc h                                         ; $76d7: $8c
    ld sp, $0c64                                  ; $76d8: $31 $64 $0c
    ld e, a                                       ; $76db: $5f
    inc bc                                        ; $76dc: $03
    sbc h                                         ; $76dd: $9c
    ld [hl], e                                    ; $76de: $73
    inc hl                                        ; $76df: $23
    dec a                                         ; $76e0: $3d
    ld [bc], a                                    ; $76e1: $02
    nop                                           ; $76e2: $00
    ld b, h                                       ; $76e3: $44
    dec [hl]                                      ; $76e4: $35
    ld e, e                                       ; $76e5: $5b
    ld bc, $035f                                  ; $76e6: $01 $5f $03
    and l                                         ; $76e9: $a5
    inc d                                         ; $76ea: $14
    jr jr_0d4_7750                                ; $76eb: $18 $63

    rst $38                                       ; $76ed: $ff
    ld a, a                                       ; $76ee: $7f
    adc h                                         ; $76ef: $8c
    ld sp, $14a5                                  ; $76f0: $31 $a5 $14
    add hl, sp                                    ; $76f3: $39
    ld h, a                                       ; $76f4: $67
    ld [hl], e                                    ; $76f5: $73
    ld c, [hl]                                    ; $76f6: $4e
    rst $38                                       ; $76f7: $ff
    ld a, a                                       ; $76f8: $7f
    ld [bc], a                                    ; $76f9: $02
    nop                                           ; $76fa: $00
    ld e, a                                       ; $76fb: $5f
    inc bc                                        ; $76fc: $03
    add hl, sp                                    ; $76fd: $39
    ld h, a                                       ; $76fe: $67
    dec b                                         ; $76ff: $05
    add hl, hl                                    ; $7700: $29
    ld [bc], a                                    ; $7701: $02
    nop                                           ; $7702: $00
    ld h, h                                       ; $7703: $64
    ld sp, $015b                                  ; $7704: $31 $5b $01
    ld e, a                                       ; $7707: $5f
    inc bc                                        ; $7708: $03
    and l                                         ; $7709: $a5
    inc d                                         ; $770a: $14
    sbc $7b                                       ; $770b: $de $7b
    adc h                                         ; $770d: $8c
    ld sp, $4e73                                  ; $770e: $31 $73 $4e
    ld [$3921], sp                                ; $7711: $08 $21 $39
    ld h, a                                       ; $7714: $67
    ld [hl], e                                    ; $7715: $73
    ld c, [hl]                                    ; $7716: $4e
    rst $38                                       ; $7717: $ff
    ld a, a                                       ; $7718: $7f
    inc hl                                        ; $7719: $23
    inc b                                         ; $771a: $04
    sub $5a                                       ; $771b: $d6 $5a
    ld e, a                                       ; $771d: $5f
    inc bc                                        ; $771e: $03
    ld h, h                                       ; $771f: $64
    dec l                                         ; $7720: $2d
    ld [bc], a                                    ; $7721: $02

jr_0d4_7722:
    nop                                           ; $7722: $00
    add h                                         ; $7723: $84
    add hl, hl                                    ; $7724: $29
    ld e, e                                       ; $7725: $5b
    ld bc, $035f                                  ; $7726: $01 $5f $03
    push hl                                       ; $7729: $e5
    jr jr_0d4_779f                                ; $772a: $18 $73

    ld c, [hl]                                    ; $772c: $4e
    ld a, e                                       ; $772d: $7b
    ld l, a                                       ; $772e: $6f
    adc h                                         ; $772f: $8c
    ld sp, $1ce7                                  ; $7730: $31 $e7 $1c
    add hl, sp                                    ; $7733: $39
    ld h, a                                       ; $7734: $67
    ld d, d                                       ; $7735: $52
    ld c, d                                       ; $7736: $4a
    rst $38                                       ; $7737: $ff
    ld a, a                                       ; $7738: $7f
    ld b, e                                       ; $7739: $43
    ld [$4e73], sp                                ; $773a: $08 $73 $4e
    add h                                         ; $773d: $84
    add hl, hl                                    ; $773e: $29
    ld e, a                                       ; $773f: $5f
    inc bc                                        ; $7740: $03
    ld [bc], a                                    ; $7741: $02
    nop                                           ; $7742: $00
    call nz, Call_0d4_5b25                        ; $7743: $c4 $25 $5b
    ld bc, $035f                                  ; $7746: $01 $5f $03
    call nz, Call_0d4_7325                        ; $7749: $c4 $25 $73
    ld c, [hl]                                    ; $774c: $4e
    rst $38                                       ; $774d: $ff
    ld a, a                                       ; $774e: $7f
    and l                                         ; $774f: $a5

jr_0d4_7750:
    inc d                                         ; $7750: $14
    and l                                         ; $7751: $a5
    inc d                                         ; $7752: $14
    ld [hl], e                                    ; $7753: $73
    ld c, [hl]                                    ; $7754: $4e
    ld e, d                                       ; $7755: $5a
    ld l, e                                       ; $7756: $6b
    ret                                           ; $7757: $c9


    dec l                                         ; $7758: $2d
    ld [bc], a                                    ; $7759: $02
    nop                                           ; $775a: $00
    ld e, a                                       ; $775b: $5f
    inc bc                                        ; $775c: $03
    call nz, $c425                                ; $775d: $c4 $25 $c4
    add hl, hl                                    ; $7760: $29
    ld [bc], a                                    ; $7761: $02
    nop                                           ; $7762: $00
    db $e4                                        ; $7763: $e4
    dec e                                         ; $7764: $1d
    ld e, e                                       ; $7765: $5b
    ld bc, $035f                                  ; $7766: $01 $5f $03
    ld h, h                                       ; $7769: $64
    add hl, de                                    ; $776a: $19
    ld [hl], e                                    ; $776b: $73
    ld c, [hl]                                    ; $776c: $4e
    rst $38                                       ; $776d: $ff
    ld a, a                                       ; $776e: $7f
    add hl, sp                                    ; $776f: $39
    ld h, a                                       ; $7770: $67
    db $e4                                        ; $7771: $e4
    dec e                                         ; $7772: $1d
    db $10                                        ; $7773: $10
    ld b, d                                       ; $7774: $42
    add hl, sp                                    ; $7775: $39
    ld h, a                                       ; $7776: $67
    push bc                                       ; $7777: $c5
    jr jr_0d4_777c                                ; $7778: $18 $02

    nop                                           ; $777a: $00
    ld e, a                                       ; $777b: $5f

jr_0d4_777c:
    inc bc                                        ; $777c: $03
    db $e4                                        ; $777d: $e4
    dec e                                         ; $777e: $1d
    db $e4                                        ; $777f: $e4
    ld hl, $0002                                  ; $7780: $21 $02 $00
    db $e4                                        ; $7783: $e4
    add hl, de                                    ; $7784: $19
    ld e, e                                       ; $7785: $5b
    ld bc, $035f                                  ; $7786: $01 $5f $03
    and l                                         ; $7789: $a5
    inc d                                         ; $778a: $14
    or l                                          ; $778b: $b5
    ld d, [hl]                                    ; $778c: $56
    inc b                                         ; $778d: $04
    ld e, $28                                     ; $778e: $1e $28
    ld hl, $1905                                  ; $7790: $21 $05 $19
    ld d, d                                       ; $7793: $52
    ld c, d                                       ; $7794: $4a
    rst $38                                       ; $7795: $ff
    ld a, a                                       ; $7796: $7f
    jr jr_0d4_77fc                                ; $7797: $18 $63

    ld [bc], a                                    ; $7799: $02
    nop                                           ; $779a: $00
    ld e, a                                       ; $779b: $5f
    inc bc                                        ; $779c: $03
    dec b                                         ; $779d: $05
    dec d                                         ; $779e: $15

jr_0d4_779f:
    db $e4                                        ; $779f: $e4
    add hl, de                                    ; $77a0: $19
    ld [bc], a                                    ; $77a1: $02
    nop                                           ; $77a2: $00
    push hl                                       ; $77a3: $e5
    dec d                                         ; $77a4: $15
    sub $5a                                       ; $77a5: $d6 $5a
    ld e, l                                       ; $77a7: $5d
    ld [bc], a                                    ; $77a8: $02
    and l                                         ; $77a9: $a5
    inc d                                         ; $77aa: $14
    sub $5a                                       ; $77ab: $d6 $5a
    rst $38                                       ; $77ad: $ff
    ld a, a                                       ; $77ae: $7f
    ld l, e                                       ; $77af: $6b
    dec l                                         ; $77b0: $2d
    add hl, hl                                    ; $77b1: $29
    dec h                                         ; $77b2: $25
    add hl, sp                                    ; $77b3: $39
    ld h, a                                       ; $77b4: $67
    rst $38                                       ; $77b5: $ff
    ld a, a                                       ; $77b6: $7f
    rst $28                                       ; $77b7: $ef
    dec a                                         ; $77b8: $3d
    add h                                         ; $77b9: $84
    inc c                                         ; $77ba: $0c
    ld e, a                                       ; $77bb: $5f
    inc bc                                        ; $77bc: $03
    add hl, sp                                    ; $77bd: $39
    ld h, a                                       ; $77be: $67
    db $e4                                        ; $77bf: $e4
    dec d                                         ; $77c0: $15
    ld [bc], a                                    ; $77c1: $02
    nop                                           ; $77c2: $00
    ld a, [hl-]                                   ; $77c3: $3a
    ld c, $bd                                     ; $77c4: $0e $bd
    ld [hl], a                                    ; $77c6: $77
    add l                                         ; $77c7: $85
    dec d                                         ; $77c8: $15
    ld [$3921], sp                                ; $77c9: $08 $21 $39
    ld h, a                                       ; $77cc: $67
    ld d, d                                       ; $77cd: $52
    ld c, d                                       ; $77ce: $4a
    rst $38                                       ; $77cf: $ff
    ld a, a                                       ; $77d0: $7f
    add hl, hl                                    ; $77d1: $29
    dec h                                         ; $77d2: $25
    jr jr_0d4_7838                                ; $77d3: $18 $63

    ld sp, $ff46                                  ; $77d5: $31 $46 $ff
    ld a, a                                       ; $77d8: $7f
    inc b                                         ; $77d9: $04
    ld de, $035f                                  ; $77da: $11 $5f $03
    ld [hl], d                                    ; $77dd: $72
    ld c, d                                       ; $77de: $4a
    ld a, e                                       ; $77df: $7b
    ld l, a                                       ; $77e0: $6f
    ld [bc], a                                    ; $77e1: $02
    nop                                           ; $77e2: $00
    ld e, e                                       ; $77e3: $5b
    ld bc, $035f                                  ; $77e4: $01 $5f $03
    ld a, e                                       ; $77e7: $7b
    ld l, a                                       ; $77e8: $6f
    ld e, e                                       ; $77e9: $5b
    ld bc, $035f                                  ; $77ea: $01 $5f $03
    ld e, a                                       ; $77ed: $5f
    inc bc                                        ; $77ee: $03
    ld a, e                                       ; $77ef: $7b
    ld l, a                                       ; $77f0: $6f
    ld e, e                                       ; $77f1: $5b
    ld bc, $073e                                  ; $77f2: $01 $3e $07
    ld e, a                                       ; $77f5: $5f
    inc bc                                        ; $77f6: $03
    ld a, e                                       ; $77f7: $7b
    ld l, a                                       ; $77f8: $6f
    ld [bc], a                                    ; $77f9: $02
    nop                                           ; $77fa: $00
    ld e, e                                       ; $77fb: $5b

jr_0d4_77fc:
    ld bc, $035f                                  ; $77fc: $01 $5f $03
    ld a, e                                       ; $77ff: $7b
    ld l, a                                       ; $7800: $6f
    ld [bc], a                                    ; $7801: $02
    nop                                           ; $7802: $00
    halt                                          ; $7803: $76
    inc c                                         ; $7804: $0c
    ld e, a                                       ; $7805: $5f
    inc bc                                        ; $7806: $03
    ld e, e                                       ; $7807: $5b
    ld bc, $035f                                  ; $7808: $01 $5f $03
    ld l, e                                       ; $780b: $6b
    dec l                                         ; $780c: $2d
    sbc h                                         ; $780d: $9c
    ld [hl], e                                    ; $780e: $73
    sub h                                         ; $780f: $94
    ld d, d                                       ; $7810: $52
    ld l, e                                       ; $7811: $6b
    dec l                                         ; $7812: $2d
    ld e, a                                       ; $7813: $5f
    inc bc                                        ; $7814: $03
    halt                                          ; $7815: $76
    inc c                                         ; $7816: $0c
    ld l, $25                                     ; $7817: $2e $25
    ld [bc], a                                    ; $7819: $02
    nop                                           ; $781a: $00
    ld e, a                                       ; $781b: $5f
    inc bc                                        ; $781c: $03
    halt                                          ; $781d: $76
    inc c                                         ; $781e: $0c
    ld l, $25                                     ; $781f: $2e $25
    ld [bc], a                                    ; $7821: $02
    nop                                           ; $7822: $00
    or l                                          ; $7823: $b5
    inc c                                         ; $7824: $0c
    ld e, a                                       ; $7825: $5f
    inc bc                                        ; $7826: $03
    rst $38                                       ; $7827: $ff
    ld a, a                                       ; $7828: $7f
    ld l, e                                       ; $7829: $6b
    dec l                                         ; $782a: $2d
    ld [hl], e                                    ; $782b: $73
    ld c, [hl]                                    ; $782c: $4e
    add hl, sp                                    ; $782d: $39
    ld h, a                                       ; $782e: $67
    rst $38                                       ; $782f: $ff
    ld a, a                                       ; $7830: $7f
    adc h                                         ; $7831: $8c
    ld sp, $5294                                  ; $7832: $31 $94 $52
    rst $38                                       ; $7835: $ff
    ld a, a                                       ; $7836: $7f
    halt                                          ; $7837: $76

jr_0d4_7838:
    inc c                                         ; $7838: $0c
    ld [bc], a                                    ; $7839: $02
    nop                                           ; $783a: $00
    ld e, a                                       ; $783b: $5f
    inc bc                                        ; $783c: $03
    halt                                          ; $783d: $76
    inc c                                         ; $783e: $0c
    sub [hl]                                      ; $783f: $96
    inc c                                         ; $7840: $0c
    ld [bc], a                                    ; $7841: $02
    nop                                           ; $7842: $00
    di                                            ; $7843: $f3
    db $10                                        ; $7844: $10
    sbc h                                         ; $7845: $9c
    ld [hl], e                                    ; $7846: $73
    ld e, a                                       ; $7847: $5f
    inc bc                                        ; $7848: $03
    ld l, e                                       ; $7849: $6b
    dec l                                         ; $784a: $2d
    rst $38                                       ; $784b: $ff
    ld a, a                                       ; $784c: $7f
    sub h                                         ; $784d: $94
    ld d, d                                       ; $784e: $52
    ld e, a                                       ; $784f: $5f
    inc bc                                        ; $7850: $03
    ld l, e                                       ; $7851: $6b
    dec l                                         ; $7852: $2d
    rst $38                                       ; $7853: $ff
    ld a, a                                       ; $7854: $7f
    sub h                                         ; $7855: $94
    ld d, d                                       ; $7856: $52
    sub [hl]                                      ; $7857: $96
    inc c                                         ; $7858: $0c
    ld [bc], a                                    ; $7859: $02
    nop                                           ; $785a: $00
    ld e, a                                       ; $785b: $5f
    inc bc                                        ; $785c: $03
    sub [hl]                                      ; $785d: $96
    inc c                                         ; $785e: $0c
    sub [hl]                                      ; $785f: $96
    inc c                                         ; $7860: $0c
    ld [bc], a                                    ; $7861: $02
    nop                                           ; $7862: $00
    ld l, e                                       ; $7863: $6b
    dec l                                         ; $7864: $2d
    jr @+$65                                      ; $7865: $18 $63

    sbc d                                         ; $7867: $9a
    dec b                                         ; $7868: $05
    sub h                                         ; $7869: $94
    ld d, d                                       ; $786a: $52
    rst $38                                       ; $786b: $ff
    ld a, a                                       ; $786c: $7f
    ld e, d                                       ; $786d: $5a
    ld l, e                                       ; $786e: $6b
    sbc d                                         ; $786f: $9a
    dec b                                         ; $7870: $05
    ld [$9421], sp                                ; $7871: $08 $21 $94
    ld d, d                                       ; $7874: $52
    ld e, d                                       ; $7875: $5a
    ld l, e                                       ; $7876: $6b
    rst $38                                       ; $7877: $ff
    ld a, a                                       ; $7878: $7f
    ld [bc], a                                    ; $7879: $02
    nop                                           ; $787a: $00
    ld e, a                                       ; $787b: $5f
    inc bc                                        ; $787c: $03
    or a                                          ; $787d: $b7
    inc c                                         ; $787e: $0c
    dec bc                                        ; $787f: $0b
    ld hl, $0002                                  ; $7880: $21 $02 $00
    ld e, a                                       ; $7883: $5f
    inc bc                                        ; $7884: $03
    ld [hl-], a                                   ; $7885: $32
    add hl, de                                    ; $7886: $19
    cp l                                          ; $7887: $bd
    ld [hl], a                                    ; $7888: $77
    add $18                                       ; $7889: $c6 $18
    sub h                                         ; $788b: $94
    ld d, d                                       ; $788c: $52
    rst $38                                       ; $788d: $ff
    ld a, a                                       ; $788e: $7f
    ld l, e                                       ; $788f: $6b
    dec l                                         ; $7890: $2d
    add $18                                       ; $7891: $c6 $18
    sub h                                         ; $7893: $94
    ld d, d                                       ; $7894: $52
    sbc $7b                                       ; $7895: $de $7b
    ld l, e                                       ; $7897: $6b
    dec l                                         ; $7898: $2d
    ld [bc], a                                    ; $7899: $02
    nop                                           ; $789a: $00
    ld e, a                                       ; $789b: $5f
    inc bc                                        ; $789c: $03
    cpl                                           ; $789d: $2f
    ld hl, $0cd7                                  ; $789e: $21 $d7 $0c
    ld [bc], a                                    ; $78a1: $02
    nop                                           ; $78a2: $00
    ld l, l                                       ; $78a3: $6d
    dec l                                         ; $78a4: $2d
    jr jr_0d4_790a                                ; $78a5: $18 $63

    db $db                                        ; $78a7: $db
    dec b                                         ; $78a8: $05
    ld c, d                                       ; $78a9: $4a
    add hl, hl                                    ; $78aa: $29
    ld e, d                                       ; $78ab: $5a
    ld l, e                                       ; $78ac: $6b
    ld d, d                                       ; $78ad: $52
    ld c, d                                       ; $78ae: $4a
    rst $38                                       ; $78af: $ff
    ld a, a                                       ; $78b0: $7f
    rst $20                                       ; $78b1: $e7
    inc e                                         ; $78b2: $1c
    sub h                                         ; $78b3: $94
    ld d, d                                       ; $78b4: $52
    ld e, d                                       ; $78b5: $5a
    ld l, e                                       ; $78b6: $6b
    rst $38                                       ; $78b7: $ff
    ld a, a                                       ; $78b8: $7f
    ld [bc], a                                    ; $78b9: $02
    nop                                           ; $78ba: $00
    ld hl, sp+$0c                                 ; $78bb: $f8 $0c
    ld e, a                                       ; $78bd: $5f
    inc bc                                        ; $78be: $03
    ld l, e                                       ; $78bf: $6b
    add hl, hl                                    ; $78c0: $29
    ld [bc], a                                    ; $78c1: $02
    nop                                           ; $78c2: $00
    ld l, e                                       ; $78c3: $6b
    dec l                                         ; $78c4: $2d
    add hl, sp                                    ; $78c5: $39
    ld h, a                                       ; $78c6: $67
    sbc d                                         ; $78c7: $9a
    dec b                                         ; $78c8: $05
    add $18                                       ; $78c9: $c6 $18
    ld e, d                                       ; $78cb: $5a
    ld l, e                                       ; $78cc: $6b
    sub h                                         ; $78cd: $94
    ld d, d                                       ; $78ce: $52
    rst $38                                       ; $78cf: $ff
    ld a, a                                       ; $78d0: $7f
    ld l, e                                       ; $78d1: $6b
    dec l                                         ; $78d2: $2d
    ld e, d                                       ; $78d3: $5a
    ld l, e                                       ; $78d4: $6b
    sub h                                         ; $78d5: $94
    ld d, d                                       ; $78d6: $52
    rst $38                                       ; $78d7: $ff
    ld a, a                                       ; $78d8: $7f
    and [hl]                                      ; $78d9: $a6
    inc d                                         ; $78da: $14
    ld e, a                                       ; $78db: $5f
    inc bc                                        ; $78dc: $03
    rst $30                                       ; $78dd: $f7
    inc c                                         ; $78de: $0c
    rst $38                                       ; $78df: $ff
    ld a, a                                       ; $78e0: $7f
    ld [bc], a                                    ; $78e1: $02
    nop                                           ; $78e2: $00
    ld l, e                                       ; $78e3: $6b
    dec l                                         ; $78e4: $2d
    ld a, e                                       ; $78e5: $7b
    ld l, a                                       ; $78e6: $6f
    cp e                                          ; $78e7: $bb
    dec b                                         ; $78e8: $05
    ld l, e                                       ; $78e9: $6b
    dec l                                         ; $78ea: $2d
    ld e, d                                       ; $78eb: $5a
    ld l, e                                       ; $78ec: $6b
    sbc $7b                                       ; $78ed: $de $7b
    sub h                                         ; $78ef: $94
    ld d, d                                       ; $78f0: $52
    ld l, e                                       ; $78f1: $6b
    dec l                                         ; $78f2: $2d
    ld e, d                                       ; $78f3: $5a
    ld l, e                                       ; $78f4: $6b
    sub h                                         ; $78f5: $94
    ld d, d                                       ; $78f6: $52
    rst $38                                       ; $78f7: $ff
    ld a, a                                       ; $78f8: $7f
    and [hl]                                      ; $78f9: $a6
    inc d                                         ; $78fa: $14
    ld e, a                                       ; $78fb: $5f
    inc bc                                        ; $78fc: $03
    add hl, sp                                    ; $78fd: $39
    ld h, a                                       ; $78fe: $67
    rla                                           ; $78ff: $17
    dec c                                         ; $7900: $0d
    ld [bc], a                                    ; $7901: $02
    nop                                           ; $7902: $00
    ld l, e                                       ; $7903: $6b
    dec l                                         ; $7904: $2d
    sbc h                                         ; $7905: $9c
    ld [hl], e                                    ; $7906: $73
    cp e                                          ; $7907: $bb
    dec b                                         ; $7908: $05
    ld l, e                                       ; $7909: $6b

jr_0d4_790a:
    dec l                                         ; $790a: $2d
    ld e, d                                       ; $790b: $5a
    ld l, e                                       ; $790c: $6b
    sub h                                         ; $790d: $94
    ld d, d                                       ; $790e: $52
    rst $38                                       ; $790f: $ff
    ld a, a                                       ; $7910: $7f
    add $18                                       ; $7911: $c6 $18
    sub h                                         ; $7913: $94
    ld d, d                                       ; $7914: $52
    sbc h                                         ; $7915: $9c
    ld [hl], e                                    ; $7916: $73
    ld l, e                                       ; $7917: $6b
    dec l                                         ; $7918: $2d
    and [hl]                                      ; $7919: $a6
    inc d                                         ; $791a: $14
    jr c, jr_0d4_792a                             ; $791b: $38 $0d

    rst $30                                       ; $791d: $f7
    ld e, [hl]                                    ; $791e: $5e
    ld e, a                                       ; $791f: $5f
    inc bc                                        ; $7920: $03
    ld [bc], a                                    ; $7921: $02
    nop                                           ; $7922: $00
    ld d, [hl]                                    ; $7923: $56
    ld de, $77bd                                  ; $7924: $11 $bd $77
    ld e, a                                       ; $7927: $5f
    inc bc                                        ; $7928: $03
    ld l, e                                       ; $7929: $6b

jr_0d4_792a:
    dec l                                         ; $792a: $2d
    ld e, d                                       ; $792b: $5a
    ld l, e                                       ; $792c: $6b
    sub h                                         ; $792d: $94
    ld d, d                                       ; $792e: $52
    rst $38                                       ; $792f: $ff
    ld a, a                                       ; $7930: $7f
    add $18                                       ; $7931: $c6 $18
    sub h                                         ; $7933: $94
    ld d, d                                       ; $7934: $52
    rst $38                                       ; $7935: $ff
    ld a, a                                       ; $7936: $7f
    ld l, e                                       ; $7937: $6b
    dec l                                         ; $7938: $2d
    ld b, e                                       ; $7939: $43
    ld [$6739], sp                                ; $793a: $08 $39 $67
    ld e, a                                       ; $793d: $5f
    inc bc                                        ; $793e: $03
    ld d, c                                       ; $793f: $51
    dec e                                         ; $7940: $1d
    ld [bc], a                                    ; $7941: $02
    nop                                           ; $7942: $00
    sub c                                         ; $7943: $91
    dec h                                         ; $7944: $25
    ld e, a                                       ; $7945: $5f
    inc bc                                        ; $7946: $03
    ld e, d                                       ; $7947: $5a
    add hl, bc                                    ; $7948: $09
    ld c, d                                       ; $7949: $4a
    add hl, hl                                    ; $794a: $29
    sub h                                         ; $794b: $94
    ld d, d                                       ; $794c: $52
    ld e, d                                       ; $794d: $5a
    ld l, e                                       ; $794e: $6b
    rst $38                                       ; $794f: $ff
    ld a, a                                       ; $7950: $7f
    rst $20                                       ; $7951: $e7
    inc e                                         ; $7952: $1c
    sub h                                         ; $7953: $94
    ld d, d                                       ; $7954: $52
    rst $38                                       ; $7955: $ff
    ld a, a                                       ; $7956: $7f
    ld e, d                                       ; $7957: $5a
    ld l, e                                       ; $7958: $6b
    ld [bc], a                                    ; $7959: $02
    nop                                           ; $795a: $00
    sbc h                                         ; $795b: $9c
    ld [hl], e                                    ; $795c: $73
    ld e, e                                       ; $795d: $5b
    ld a, [bc]                                    ; $795e: $0a
    add hl, hl                                    ; $795f: $29
    dec h                                         ; $7960: $25
    ld [bc], a                                    ; $7961: $02
    nop                                           ; $7962: $00
    ld e, e                                       ; $7963: $5b
    add hl, bc                                    ; $7964: $09
    ld l, e                                       ; $7965: $6b
    dec l                                         ; $7966: $2d
    ld e, a                                       ; $7967: $5f
    inc bc                                        ; $7968: $03
    ld [$9421], sp                                ; $7969: $08 $21 $94
    ld d, d                                       ; $796c: $52
    ld e, d                                       ; $796d: $5a
    ld l, e                                       ; $796e: $6b
    rst $38                                       ; $796f: $ff
    ld a, a                                       ; $7970: $7f
    ld l, e                                       ; $7971: $6b
    dec l                                         ; $7972: $2d
    ld e, d                                       ; $7973: $5a
    ld l, e                                       ; $7974: $6b
    rst $38                                       ; $7975: $ff
    ld a, a                                       ; $7976: $7f
    rst $38                                       ; $7977: $ff
    ld a, a                                       ; $7978: $7f
    ld [bc], a                                    ; $7979: $02
    nop                                           ; $797a: $00
    ld e, a                                       ; $797b: $5f
    inc bc                                        ; $797c: $03
    sbc h                                         ; $797d: $9c
    ld [hl], e                                    ; $797e: $73
    add hl, hl                                    ; $797f: $29
    dec h                                         ; $7980: $25
    ld [bc], a                                    ; $7981: $02
    nop                                           ; $7982: $00
    ld d, e                                       ; $7983: $53
    ld de, $035f                                  ; $7984: $11 $5f $03
    ld a, e                                       ; $7987: $7b
    add hl, bc                                    ; $7988: $09
    ld l, e                                       ; $7989: $6b
    dec l                                         ; $798a: $2d
    ld e, d                                       ; $798b: $5a
    ld l, e                                       ; $798c: $6b
    sub h                                         ; $798d: $94
    ld d, d                                       ; $798e: $52
    rst $38                                       ; $798f: $ff
    ld a, a                                       ; $7990: $7f
    sub h                                         ; $7991: $94
    ld d, d                                       ; $7992: $52
    ld e, d                                       ; $7993: $5a
    ld l, e                                       ; $7994: $6b
    rst $38                                       ; $7995: $ff
    ld a, a                                       ; $7996: $7f
    rst $38                                       ; $7997: $ff
    ld a, a                                       ; $7998: $7f
    ld h, h                                       ; $7999: $64
    inc c                                         ; $799a: $0c
    ld e, a                                       ; $799b: $5f
    inc bc                                        ; $799c: $03
    add hl, sp                                    ; $799d: $39
    ld h, a                                       ; $799e: $67
    rst $38                                       ; $799f: $ff
    ld a, a                                       ; $79a0: $7f
    ld [bc], a                                    ; $79a1: $02
    nop                                           ; $79a2: $00
    ld l, l                                       ; $79a3: $6d
    add hl, hl                                    ; $79a4: $29
    add hl, sp                                    ; $79a5: $39
    ld h, a                                       ; $79a6: $67
    inc e                                         ; $79a7: $1c
    ld b, $08                                     ; $79a8: $06 $08
    ld hl, $5294                                  ; $79aa: $21 $94 $52
    ld e, d                                       ; $79ad: $5a
    ld l, e                                       ; $79ae: $6b
    rst $38                                       ; $79af: $ff
    ld a, a                                       ; $79b0: $7f
    ld l, e                                       ; $79b1: $6b
    dec l                                         ; $79b2: $2d
    ld e, d                                       ; $79b3: $5a
    ld l, e                                       ; $79b4: $6b
    sub h                                         ; $79b5: $94
    ld d, d                                       ; $79b6: $52
    rst $38                                       ; $79b7: $ff
    ld a, a                                       ; $79b8: $7f
    and [hl]                                      ; $79b9: $a6
    inc d                                         ; $79ba: $14
    ld e, a                                       ; $79bb: $5f
    inc bc                                        ; $79bc: $03
    sub h                                         ; $79bd: $94
    ld d, d                                       ; $79be: $52
    sbc h                                         ; $79bf: $9c
    ld [hl], e                                    ; $79c0: $73
    ld [bc], a                                    ; $79c1: $02
    nop                                           ; $79c2: $00
    ld e, a                                       ; $79c3: $5f
    inc bc                                        ; $79c4: $03
    cp l                                          ; $79c5: $bd
    ld [hl], a                                    ; $79c6: $77
    ld d, l                                       ; $79c7: $55
    dec c                                         ; $79c8: $0d
    add $18                                       ; $79c9: $c6 $18
    ld [hl], e                                    ; $79cb: $73
    ld c, [hl]                                    ; $79cc: $4e
    ld a, e                                       ; $79cd: $7b
    ld l, a                                       ; $79ce: $6f
    xor l                                         ; $79cf: $ad
    dec [hl]                                      ; $79d0: $35
    adc h                                         ; $79d1: $8c
    ld sp, $6b5a                                  ; $79d2: $31 $5a $6b
    sub h                                         ; $79d5: $94
    ld d, d                                       ; $79d6: $52
    rst $38                                       ; $79d7: $ff
    ld a, a                                       ; $79d8: $7f
    and l                                         ; $79d9: $a5
    inc d                                         ; $79da: $14
    ld e, a                                       ; $79db: $5f
    inc bc                                        ; $79dc: $03
    ld d, d                                       ; $79dd: $52
    ld c, d                                       ; $79de: $4a
    cp l                                          ; $79df: $bd
    ld [hl], a                                    ; $79e0: $77
    ld [bc], a                                    ; $79e1: $02
    nop                                           ; $79e2: $00
    ld e, e                                       ; $79e3: $5b
    ld bc, $035f                                  ; $79e4: $01 $5f $03
    cp l                                          ; $79e7: $bd
    ld [hl], a                                    ; $79e8: $77
    ld e, e                                       ; $79e9: $5b
    ld bc, $033f                                  ; $79ea: $01 $3f $03
    ld e, a                                       ; $79ed: $5f
    inc bc                                        ; $79ee: $03
    ld e, a                                       ; $79ef: $5f
    rlca                                          ; $79f0: $07
    ld e, e                                       ; $79f1: $5b
    ld bc, $035f                                  ; $79f2: $01 $5f $03
    ld e, a                                       ; $79f5: $5f
    inc bc                                        ; $79f6: $03
    ld e, a                                       ; $79f7: $5f
    rlca                                          ; $79f8: $07
    ld [bc], a                                    ; $79f9: $02
    nop                                           ; $79fa: $00
    ld e, e                                       ; $79fb: $5b
    ld bc, $035f                                  ; $79fc: $01 $5f $03
    ld e, a                                       ; $79ff: $5f
    rlca                                          ; $7a00: $07
    ld [bc], a                                    ; $7a01: $02
    nop                                           ; $7a02: $00
    ld b, e                                       ; $7a03: $43
    ld [hl], d                                    ; $7a04: $72
    ld e, e                                       ; $7a05: $5b
    ld bc, $035f                                  ; $7a06: $01 $5f $03
    ld b, e                                       ; $7a09: $43
    ld [hl], d                                    ; $7a0a: $72
    ld e, a                                       ; $7a0b: $5f
    inc bc                                        ; $7a0c: $03
    ld c, d                                       ; $7a0d: $4a
    add hl, hl                                    ; $7a0e: $29
    inc h                                         ; $7a0f: $24
    ld h, d                                       ; $7a10: $62
    ld b, e                                       ; $7a11: $43
    ld [hl], d                                    ; $7a12: $72
    ld e, a                                       ; $7a13: $5f
    inc bc                                        ; $7a14: $03
    adc b                                         ; $7a15: $88
    dec a                                         ; $7a16: $3d
    ld c, d                                       ; $7a17: $4a
    add hl, hl                                    ; $7a18: $29
    ld [bc], a                                    ; $7a19: $02
    nop                                           ; $7a1a: $00
    ld e, a                                       ; $7a1b: $5f
    inc bc                                        ; $7a1c: $03
    ld b, e                                       ; $7a1d: $43
    ld [hl], d                                    ; $7a1e: $72
    ld c, d                                       ; $7a1f: $4a
    add hl, hl                                    ; $7a20: $29
    ld [bc], a                                    ; $7a21: $02
    nop                                           ; $7a22: $00
    ld b, e                                       ; $7a23: $43
    ld l, [hl]                                    ; $7a24: $6e
    ld e, a                                       ; $7a25: $5f
    inc bc                                        ; $7a26: $03
    ld e, e                                       ; $7a27: $5b
    ld bc, $6e43                                  ; $7a28: $01 $43 $6e
    ld [hl], e                                    ; $7a2b: $73
    ld c, [hl]                                    ; $7a2c: $4e
    ld e, d                                       ; $7a2d: $5a
    ld l, e                                       ; $7a2e: $6b
    ld c, d                                       ; $7a2f: $4a
    add hl, hl                                    ; $7a30: $29
    ld b, e                                       ; $7a31: $43
    ld l, [hl]                                    ; $7a32: $6e
    ld [hl], e                                    ; $7a33: $73
    ld c, [hl]                                    ; $7a34: $4e
    ld c, c                                       ; $7a35: $49
    dec l                                         ; $7a36: $2d
    ld e, d                                       ; $7a37: $5a
    ld l, e                                       ; $7a38: $6b
    ld [bc], a                                    ; $7a39: $02
    nop                                           ; $7a3a: $00
    ld b, e                                       ; $7a3b: $43
    ld l, [hl]                                    ; $7a3c: $6e
    ld e, a                                       ; $7a3d: $5f
    inc bc                                        ; $7a3e: $03
    ld e, d                                       ; $7a3f: $5a
    ld l, e                                       ; $7a40: $6b
    ld [bc], a                                    ; $7a41: $02
    nop                                           ; $7a42: $00
    inc hl                                        ; $7a43: $23
    ld l, [hl]                                    ; $7a44: $6e
    ld e, l                                       ; $7a45: $5d
    ld [bc], a                                    ; $7a46: $02
    xor l                                         ; $7a47: $ad
    dec [hl]                                      ; $7a48: $35
    ld c, d                                       ; $7a49: $4a
    add hl, hl                                    ; $7a4a: $29
    ld e, d                                       ; $7a4b: $5a
    ld l, e                                       ; $7a4c: $6b
    ld [hl], e                                    ; $7a4d: $73
    ld c, [hl]                                    ; $7a4e: $4e
    sbc $7b                                       ; $7a4f: $de $7b
    ld c, d                                       ; $7a51: $4a
    add hl, hl                                    ; $7a52: $29
    sbc $7b                                       ; $7a53: $de $7b
    and $55                                       ; $7a55: $e6 $55
    ld [hl], e                                    ; $7a57: $73
    ld c, [hl]                                    ; $7a58: $4e
    ld [bc], a                                    ; $7a59: $02
    nop                                           ; $7a5a: $00
    inc hl                                        ; $7a5b: $23
    ld l, [hl]                                    ; $7a5c: $6e
    ld e, a                                       ; $7a5d: $5f
    inc bc                                        ; $7a5e: $03
    inc h                                         ; $7a5f: $24
    ld l, [hl]                                    ; $7a60: $6e
    ld [bc], a                                    ; $7a61: $02
    nop                                           ; $7a62: $00
    inc b                                         ; $7a63: $04
    ld l, [hl]                                    ; $7a64: $6e
    ld e, l                                       ; $7a65: $5d
    ld [bc], a                                    ; $7a66: $02
    ld sp, $0846                                  ; $7a67: $31 $46 $08
    ld hl, $6b5a                                  ; $7a6a: $21 $5a $6b
    ld [hl], e                                    ; $7a6d: $73
    ld c, [hl]                                    ; $7a6e: $4e
    sbc $7b                                       ; $7a6f: $de $7b
    ld c, d                                       ; $7a71: $4a
    add hl, hl                                    ; $7a72: $29
    sbc $7b                                       ; $7a73: $de $7b
    ld [hl], e                                    ; $7a75: $73
    ld c, [hl]                                    ; $7a76: $4e
    rst $38                                       ; $7a77: $ff
    ld a, a                                       ; $7a78: $7f
    ld [bc], a                                    ; $7a79: $02
    nop                                           ; $7a7a: $00
    inc b                                         ; $7a7b: $04
    ld l, d                                       ; $7a7c: $6a
    ld e, a                                       ; $7a7d: $5f
    inc bc                                        ; $7a7e: $03
    ld c, d                                       ; $7a7f: $4a
    add hl, hl                                    ; $7a80: $29
    ld [bc], a                                    ; $7a81: $02
    nop                                           ; $7a82: $00
    push bc                                       ; $7a83: $c5
    ld h, c                                       ; $7a84: $61
    ld e, l                                       ; $7a85: $5d
    ld [bc], a                                    ; $7a86: $02
    ld sp, $c646                                  ; $7a87: $31 $46 $c6
    inc e                                         ; $7a8a: $1c
    add hl, sp                                    ; $7a8b: $39
    ld h, a                                       ; $7a8c: $67
    ld [hl], e                                    ; $7a8d: $73
    ld c, [hl]                                    ; $7a8e: $4e
    sbc $7b                                       ; $7a8f: $de $7b
    ld [hl], e                                    ; $7a91: $73
    ld c, [hl]                                    ; $7a92: $4e
    ld e, d                                       ; $7a93: $5a
    ld l, e                                       ; $7a94: $6b
    sbc $7b                                       ; $7a95: $de $7b
    rst $38                                       ; $7a97: $ff
    ld a, a                                       ; $7a98: $7f
    ld [bc], a                                    ; $7a99: $02
    nop                                           ; $7a9a: $00
    push hl                                       ; $7a9b: $e5
    ld h, l                                       ; $7a9c: $65
    ld e, a                                       ; $7a9d: $5f
    inc bc                                        ; $7a9e: $03
    ld c, d                                       ; $7a9f: $4a
    add hl, hl                                    ; $7aa0: $29
    ld [bc], a                                    ; $7aa1: $02
    nop                                           ; $7aa2: $00
    add $69                                       ; $7aa3: $c6 $69
    ld e, l                                       ; $7aa5: $5d
    ld [bc], a                                    ; $7aa6: $02
    rst $30                                       ; $7aa7: $f7
    ld e, [hl]                                    ; $7aa8: $5e
    add $18                                       ; $7aa9: $c6 $18
    cp l                                          ; $7aab: $bd
    ld [hl], a                                    ; $7aac: $77
    ld [hl], e                                    ; $7aad: $73
    ld c, [hl]                                    ; $7aae: $4e
    ld l, e                                       ; $7aaf: $6b
    dec l                                         ; $7ab0: $2d
    add $18                                       ; $7ab1: $c6 $18
    ld [hl], e                                    ; $7ab3: $73
    ld c, [hl]                                    ; $7ab4: $4e
    sbc $7b                                       ; $7ab5: $de $7b
    ld c, d                                       ; $7ab7: $4a
    add hl, hl                                    ; $7ab8: $29
    ld [bc], a                                    ; $7ab9: $02
    nop                                           ; $7aba: $00
    ld e, a                                       ; $7abb: $5f
    inc bc                                        ; $7abc: $03
    add $69                                       ; $7abd: $c6 $69
    ld [$0225], sp                                ; $7abf: $08 $25 $02
    nop                                           ; $7ac2: $00
    ld e, l                                       ; $7ac3: $5d
    ld [bc], a                                    ; $7ac4: $02
    and a                                         ; $7ac5: $a7
    ld h, l                                       ; $7ac6: $65
    sub $5a                                       ; $7ac7: $d6 $5a
    rst $20                                       ; $7ac9: $e7
    inc e                                         ; $7aca: $1c
    sub $5a                                       ; $7acb: $d6 $5a
    ld sp, $de46                                  ; $7acd: $31 $46 $de
    ld a, e                                       ; $7ad0: $7b
    ld c, d                                       ; $7ad1: $4a
    add hl, hl                                    ; $7ad2: $29
    add hl, sp                                    ; $7ad3: $39
    ld h, a                                       ; $7ad4: $67
    ld d, d                                       ; $7ad5: $52
    ld c, d                                       ; $7ad6: $4a
    sbc $7b                                       ; $7ad7: $de $7b
    ld [bc], a                                    ; $7ad9: $02
    nop                                           ; $7ada: $00
    add a                                         ; $7adb: $87
    ld h, l                                       ; $7adc: $65
    ld e, a                                       ; $7add: $5f
    inc bc                                        ; $7ade: $03
    add $18                                       ; $7adf: $c6 $18
    ld [bc], a                                    ; $7ae1: $02
    nop                                           ; $7ae2: $00
    ld e, l                                       ; $7ae3: $5d
    ld [bc], a                                    ; $7ae4: $02
    xor e                                         ; $7ae5: $ab
    ld d, c                                       ; $7ae6: $51
    sbc h                                         ; $7ae7: $9c
    ld [hl], e                                    ; $7ae8: $73
    ld [$3921], sp                                ; $7ae9: $08 $21 $39
    ld h, a                                       ; $7aec: $67
    ld [hl], e                                    ; $7aed: $73
    ld c, [hl]                                    ; $7aee: $4e
    sbc $7b                                       ; $7aef: $de $7b
    sub h                                         ; $7af1: $94
    ld d, d                                       ; $7af2: $52
    sbc $7b                                       ; $7af3: $de $7b
    rst $38                                       ; $7af5: $ff
    ld a, a                                       ; $7af6: $7f
    sbc $7b                                       ; $7af7: $de $7b
    ld [bc], a                                    ; $7af9: $02
    nop                                           ; $7afa: $00
    ld e, a                                       ; $7afb: $5f
    inc bc                                        ; $7afc: $03
    ld l, b                                       ; $7afd: $68
    ld h, l                                       ; $7afe: $65
    ld [$0221], sp                                ; $7aff: $08 $21 $02
    nop                                           ; $7b02: $00
    ld c, c                                       ; $7b03: $49
    ld h, c                                       ; $7b04: $61
    ld e, l                                       ; $7b05: $5d
    ld [bc], a                                    ; $7b06: $02
    rst $28                                       ; $7b07: $ef
    add hl, sp                                    ; $7b08: $39
    rst $20                                       ; $7b09: $e7
    inc e                                         ; $7b0a: $1c
    ld [hl], e                                    ; $7b0b: $73
    ld c, [hl]                                    ; $7b0c: $4e
    ld e, d                                       ; $7b0d: $5a
    ld l, e                                       ; $7b0e: $6b
    sbc $7b                                       ; $7b0f: $de $7b
    add $18                                       ; $7b11: $c6 $18
    rst $38                                       ; $7b13: $ff
    ld a, a                                       ; $7b14: $7f
    ld [hl], e                                    ; $7b15: $73
    ld c, [hl]                                    ; $7b16: $4e
    ld l, e                                       ; $7b17: $6b
    dec l                                         ; $7b18: $2d
    ld [bc], a                                    ; $7b19: $02
    nop                                           ; $7b1a: $00
    ld e, a                                       ; $7b1b: $5f
    inc bc                                        ; $7b1c: $03
    ld c, c                                       ; $7b1d: $49
    ld h, c                                       ; $7b1e: $61
    add $18                                       ; $7b1f: $c6 $18
    ld [bc], a                                    ; $7b21: $02
    nop                                           ; $7b22: $00
    dec hl                                        ; $7b23: $2b
    ld h, c                                       ; $7b24: $61
    ld e, e                                       ; $7b25: $5b
    ld bc, $035f                                  ; $7b26: $01 $5f $03
    add $18                                       ; $7b29: $c6 $18
    ld [hl], e                                    ; $7b2b: $73
    ld c, [hl]                                    ; $7b2c: $4e
    sbc $7b                                       ; $7b2d: $de $7b
    adc $39                                       ; $7b2f: $ce $39
    ld l, e                                       ; $7b31: $6b
    dec l                                         ; $7b32: $2d
    ld e, d                                       ; $7b33: $5a
    ld l, e                                       ; $7b34: $6b
    ld [hl], e                                    ; $7b35: $73
    ld c, [hl]                                    ; $7b36: $4e
    sbc $7b                                       ; $7b37: $de $7b
    ld [bc], a                                    ; $7b39: $02
    nop                                           ; $7b3a: $00
    ld e, a                                       ; $7b3b: $5f
    inc bc                                        ; $7b3c: $03
    dec hl                                        ; $7b3d: $2b
    ld h, c                                       ; $7b3e: $61
    add $18                                       ; $7b3f: $c6 $18
    ld [bc], a                                    ; $7b41: $02
    nop                                           ; $7b42: $00
    inc c                                         ; $7b43: $0c
    ld e, l                                       ; $7b44: $5d
    ld e, e                                       ; $7b45: $5b
    ld bc, $035f                                  ; $7b46: $01 $5f $03
    add hl, bc                                    ; $7b49: $09
    add hl, hl                                    ; $7b4a: $29
    rla                                           ; $7b4b: $17
    ld e, a                                       ; $7b4c: $5f
    ldh a, [rOBP1]                                ; $7b4d: $f0 $49
    sbc $7b                                       ; $7b4f: $de $7b
    ld l, e                                       ; $7b51: $6b
    dec l                                         ; $7b52: $2d
    ld e, d                                       ; $7b53: $5a
    ld l, e                                       ; $7b54: $6b
    ld [hl], e                                    ; $7b55: $73
    ld c, [hl]                                    ; $7b56: $4e
    sbc $7b                                       ; $7b57: $de $7b
    ld [bc], a                                    ; $7b59: $02
    nop                                           ; $7b5a: $00
    ld e, a                                       ; $7b5b: $5f
    inc bc                                        ; $7b5c: $03
    inc c                                         ; $7b5d: $0c
    ld e, l                                       ; $7b5e: $5d
    rst $00                                       ; $7b5f: $c7
    inc h                                         ; $7b60: $24
    ld [bc], a                                    ; $7b61: $02
    nop                                           ; $7b62: $00
    call Call_0d4_5b5c                            ; $7b63: $cd $5c $5b
    ld bc, $035f                                  ; $7b66: $01 $5f $03
    add hl, hl                                    ; $7b69: $29
    dec h                                         ; $7b6a: $25
    ld [hl], e                                    ; $7b6b: $73
    ld c, [hl]                                    ; $7b6c: $4e
    call $5a5c                                    ; $7b6d: $cd $5c $5a
    ld l, e                                       ; $7b70: $6b
    add $18                                       ; $7b71: $c6 $18
    ld [hl], e                                    ; $7b73: $73
    ld c, [hl]                                    ; $7b74: $4e
    sbc $7b                                       ; $7b75: $de $7b
    ld l, e                                       ; $7b77: $6b
    dec l                                         ; $7b78: $2d
    ld [bc], a                                    ; $7b79: $02
    nop                                           ; $7b7a: $00
    ld e, a                                       ; $7b7b: $5f
    inc bc                                        ; $7b7c: $03
    db $eb                                        ; $7b7d: $eb
    ld b, h                                       ; $7b7e: $44
    call Call_000_025c                            ; $7b7f: $cd $5c $02
    nop                                           ; $7b82: $00
    xor [hl]                                      ; $7b83: $ae
    ld e, b                                       ; $7b84: $58
    ld e, e                                       ; $7b85: $5b
    ld bc, $035f                                  ; $7b86: $01 $5f $03
    and a                                         ; $7b89: $a7
    jr nz, @-$62                                  ; $7b8a: $20 $9c

    ld [hl], e                                    ; $7b8c: $73
    xor [hl]                                      ; $7b8d: $ae
    ld e, b                                       ; $7b8e: $58
    ld [hl], e                                    ; $7b8f: $73
    ld c, [hl]                                    ; $7b90: $4e
    add $18                                       ; $7b91: $c6 $18
    ld [hl], e                                    ; $7b93: $73
    ld c, [hl]                                    ; $7b94: $4e
    ld a, e                                       ; $7b95: $7b
    ld l, a                                       ; $7b96: $6f
    ld a, [hl+]                                   ; $7b97: $2a
    dec l                                         ; $7b98: $2d
    ld [bc], a                                    ; $7b99: $02
    nop                                           ; $7b9a: $00
    ld e, a                                       ; $7b9b: $5f
    inc bc                                        ; $7b9c: $03
    adc $58                                       ; $7b9d: $ce $58
    xor a                                         ; $7b9f: $af
    ld e, b                                       ; $7ba0: $58
    ld [bc], a                                    ; $7ba1: $02
    nop                                           ; $7ba2: $00
    xor [hl]                                      ; $7ba3: $ae
    ld d, b                                       ; $7ba4: $50
    ld e, l                                       ; $7ba5: $5d
    ld [bc], a                                    ; $7ba6: $02
    add $18                                       ; $7ba7: $c6 $18
    add $18                                       ; $7ba9: $c6 $18
    sbc $7b                                       ; $7bab: $de $7b
    db $10                                        ; $7bad: $10
    ld b, d                                       ; $7bae: $42
    ld c, d                                       ; $7baf: $4a
    add hl, hl                                    ; $7bb0: $29
    add $18                                       ; $7bb1: $c6 $18
    sub h                                         ; $7bb3: $94
    ld d, d                                       ; $7bb4: $52
    sbc $7b                                       ; $7bb5: $de $7b
    xor l                                         ; $7bb7: $ad
    dec [hl]                                      ; $7bb8: $35
    ld h, h                                       ; $7bb9: $64
    inc c                                         ; $7bba: $0c
    ld e, a                                       ; $7bbb: $5f

jr_0d4_7bbc:
    inc bc                                        ; $7bbc: $03
    db $eb                                        ; $7bbd: $eb
    inc [hl]                                      ; $7bbe: $34
    adc a                                         ; $7bbf: $8f
    ld e, b                                       ; $7bc0: $58
    ld [bc], a                                    ; $7bc1: $02
    nop                                           ; $7bc2: $00
    adc [hl]                                      ; $7bc3: $8e
    ld d, b                                       ; $7bc4: $50
    ld e, l                                       ; $7bc5: $5d
    ld [bc], a                                    ; $7bc6: $02
    rst $28                                       ; $7bc7: $ef
    dec a                                         ; $7bc8: $3d
    add $18                                       ; $7bc9: $c6 $18
    rst $38                                       ; $7bcb: $ff
    ld a, a                                       ; $7bcc: $7f
    adc h                                         ; $7bcd: $8c
    ld sp, $4e73                                  ; $7bce: $31 $73 $4e
    add $18                                       ; $7bd1: $c6 $18
    rst $38                                       ; $7bd3: $ff
    ld a, a                                       ; $7bd4: $7f
    ld [hl], e                                    ; $7bd5: $73
    ld c, [hl]                                    ; $7bd6: $4e
    adc h                                         ; $7bd7: $8c
    ld sp, $1084                                  ; $7bd8: $31 $84 $10
    ld e, a                                       ; $7bdb: $5f

jr_0d4_7bdc:
    inc bc                                        ; $7bdc: $03
    adc [hl]                                      ; $7bdd: $8e
    ld c, h                                       ; $7bde: $4c
    rst $28                                       ; $7bdf: $ef
    dec a                                         ; $7be0: $3d
    ld [bc], a                                    ; $7be1: $02
    nop                                           ; $7be2: $00
    ld e, e                                       ; $7be3: $5b
    ld bc, $035f                                  ; $7be4: $01 $5f $03
    rst $28                                       ; $7be7: $ef
    dec a                                         ; $7be8: $3d
    ld e, e                                       ; $7be9: $5b
    ld bc, $035f                                  ; $7bea: $01 $5f $03
    ld e, a                                       ; $7bed: $5f
    inc bc                                        ; $7bee: $03
    rst $28                                       ; $7bef: $ef
    dec a                                         ; $7bf0: $3d
    ld e, e                                       ; $7bf1: $5b
    ld bc, $035f                                  ; $7bf2: $01 $5f $03
    ld e, a                                       ; $7bf5: $5f
    inc bc                                        ; $7bf6: $03
    rst $28                                       ; $7bf7: $ef
    dec a                                         ; $7bf8: $3d
    ld [bc], a                                    ; $7bf9: $02
    nop                                           ; $7bfa: $00
    ld e, e                                       ; $7bfb: $5b
    ld bc, $035f                                  ; $7bfc: $01 $5f $03
    ld e, a                                       ; $7bff: $5f
    inc de                                        ; $7c00: $13

jr_0d4_7c01:
    nop                                           ; $7c01: $00
    nop                                           ; $7c02: $00
    ld e, a                                       ; $7c03: $5f
    inc bc                                        ; $7c04: $03
    ld [bc], a                                    ; $7c05: $02
    nop                                           ; $7c06: $00
    ccf                                           ; $7c07: $3f
    rlca                                          ; $7c08: $07
    ld bc, $3f04                                  ; $7c09: $01 $04 $3f
    rlca                                          ; $7c0c: $07
    adc d                                         ; $7c0d: $8a
    jr nz, jr_0d4_7c01                            ; $7c0e: $20 $f1

    inc a                                         ; $7c10: $3c
    nop                                           ; $7c11: $00
    nop                                           ; $7c12: $00
    ccf                                           ; $7c13: $3f
    rlca                                          ; $7c14: $07
    pop af                                        ; $7c15: $f1
    inc a                                         ; $7c16: $3c
    adc d                                         ; $7c17: $8a
    jr nz, jr_0d4_7c1a                            ; $7c18: $20 $00

jr_0d4_7c1a:
    nop                                           ; $7c1a: $00
    ld e, e                                       ; $7c1b: $5b
    ld bc, $033f                                  ; $7c1c: $01 $3f $03
    ccf                                           ; $7c1f: $3f
    rlca                                          ; $7c20: $07
    nop                                           ; $7c21: $00
    nop                                           ; $7c22: $00
    ccf                                           ; $7c23: $3f
    inc bc                                        ; $7c24: $03

jr_0d4_7c25:
    ld [bc], a                                    ; $7c25: $02
    nop                                           ; $7c26: $00
    inc bc                                        ; $7c27: $03
    nop                                           ; $7c28: $00
    nop                                           ; $7c29: $00
    nop                                           ; $7c2a: $00
    pop af                                        ; $7c2b: $f1
    inc a                                         ; $7c2c: $3c
    ld h, $14                                     ; $7c2d: $26 $14
    adc d                                         ; $7c2f: $8a
    jr nz, jr_0d4_7bbc                            ; $7c30: $20 $8a

    jr nz, jr_0d4_7c25                            ; $7c32: $20 $f1

    inc a                                         ; $7c34: $3c
    ld h, $14                                     ; $7c35: $26 $14
    adc d                                         ; $7c37: $8a
    jr nz, jr_0d4_7c3a                            ; $7c38: $20 $00

jr_0d4_7c3a:
    nop                                           ; $7c3a: $00
    pop af                                        ; $7c3b: $f1
    inc a                                         ; $7c3c: $3c
    ld e, l                                       ; $7c3d: $5d
    ld [bc], a                                    ; $7c3e: $02
    adc d                                         ; $7c3f: $8a
    jr nz, jr_0d4_7c42                            ; $7c40: $20 $00

jr_0d4_7c42:
    nop                                           ; $7c42: $00
    ccf                                           ; $7c43: $3f
    inc bc                                        ; $7c44: $03
    ld b, a                                       ; $7c45: $47
    jr @+$04                                      ; $7c46: $18 $02

    nop                                           ; $7c48: $00
    ld h, $14                                     ; $7c49: $26 $14
    pop af                                        ; $7c4b: $f1
    inc a                                         ; $7c4c: $3c
    halt                                          ; $7c4d: $76
    ld d, c                                       ; $7c4e: $51
    adc d                                         ; $7c4f: $8a
    jr nz, jr_0d4_7bdc                            ; $7c50: $20 $8a

    jr nz, jr_0d4_7c90                            ; $7c52: $20 $3c

    ld l, d                                       ; $7c54: $6a
    halt                                          ; $7c55: $76
    ld d, c                                       ; $7c56: $51
    pop af                                        ; $7c57: $f1
    inc a                                         ; $7c58: $3c
    nop                                           ; $7c59: $00
    nop                                           ; $7c5a: $00
    inc sp                                        ; $7c5b: $33
    ld b, l                                       ; $7c5c: $45
    ld e, l                                       ; $7c5d: $5d
    ld b, $8a                                     ; $7c5e: $06 $8a
    jr nz, jr_0d4_7c63                            ; $7c60: $20 $01

    nop                                           ; $7c62: $00

jr_0d4_7c63:
    pop af                                        ; $7c63: $f1
    inc a                                         ; $7c64: $3c
    ccf                                           ; $7c65: $3f
    inc bc                                        ; $7c66: $03
    ld b, a                                       ; $7c67: $47
    jr jr_0d4_7c6a                                ; $7c68: $18 $00

jr_0d4_7c6a:
    nop                                           ; $7c6a: $00
    ld [de], a                                    ; $7c6b: $12
    ld b, c                                       ; $7c6c: $41
    inc a                                         ; $7c6d: $3c
    ld l, d                                       ; $7c6e: $6a
    adc d                                         ; $7c6f: $8a
    jr nz, jr_0d4_7c72                            ; $7c70: $20 $00

jr_0d4_7c72:
    nop                                           ; $7c72: $00
    pop af                                        ; $7c73: $f1
    inc a                                         ; $7c74: $3c
    adc d                                         ; $7c75: $8a
    jr nz, @+$3e                                  ; $7c76: $20 $3c

    ld l, d                                       ; $7c78: $6a
    ld h, a                                       ; $7c79: $67
    jr jr_0d4_7cd9                                ; $7c7a: $18 $5d

    ld b, $d9                                     ; $7c7c: $06 $d9
    ld e, l                                       ; $7c7e: $5d
    pop af                                        ; $7c7f: $f1
    inc a                                         ; $7c80: $3c
    ld [bc], a                                    ; $7c81: $02
    nop                                           ; $7c82: $00
    pop af                                        ; $7c83: $f1
    inc a                                         ; $7c84: $3c
    ccf                                           ; $7c85: $3f
    inc bc                                        ; $7c86: $03
    ld b, a                                       ; $7c87: $47
    jr jr_0d4_7c8a                                ; $7c88: $18 $00

jr_0d4_7c8a:
    nop                                           ; $7c8a: $00
    inc sp                                        ; $7c8b: $33
    ld b, l                                       ; $7c8c: $45
    inc a                                         ; $7c8d: $3c
    ld l, d                                       ; $7c8e: $6a
    ld c, e                                       ; $7c8f: $4b

jr_0d4_7c90:
    inc d                                         ; $7c90: $14
    nop                                           ; $7c91: $00
    nop                                           ; $7c92: $00
    dec bc                                        ; $7c93: $0b
    nop                                           ; $7c94: $00
    ld c, $00                                     ; $7c95: $0e $00
    ld c, a                                       ; $7c97: $4f
    inc b                                         ; $7c98: $04
    ld h, $08                                     ; $7c99: $26 $08
    ld e, l                                       ; $7c9b: $5d
    ld b, $f1                                     ; $7c9c: $06 $f1
    inc a                                         ; $7c9e: $3c
    inc a                                         ; $7c9f: $3c
    ld l, d                                       ; $7ca0: $6a
    ld [bc], a                                    ; $7ca1: $02
    nop                                           ; $7ca2: $00
    pop af                                        ; $7ca3: $f1
    inc a                                         ; $7ca4: $3c
    ccf                                           ; $7ca5: $3f
    inc bc                                        ; $7ca6: $03
    ld l, b                                       ; $7ca7: $68
    inc e                                         ; $7ca8: $1c
    ld [bc], a                                    ; $7ca9: $02
    nop                                           ; $7caa: $00
    ld a, [c]                                     ; $7cab: $f2
    ld b, b                                       ; $7cac: $40
    cpl                                           ; $7cad: $2f
    inc b                                         ; $7cae: $04
    inc a                                         ; $7caf: $3c
    ld l, d                                       ; $7cb0: $6a
    nop                                           ; $7cb1: $00
    nop                                           ; $7cb2: $00
    ld l, $04                                     ; $7cb3: $2e $04
    jr z, jr_0d4_7cbb                             ; $7cb5: $28 $04

    ld d, h                                       ; $7cb7: $54
    ld [$0431], sp                                ; $7cb8: $08 $31 $04

jr_0d4_7cbb:
    ld e, l                                       ; $7cbb: $5d
    ld b, $b8                                     ; $7cbc: $06 $b8
    ld e, c                                       ; $7cbe: $59
    xor l                                         ; $7cbf: $ad
    inc l                                         ; $7cc0: $2c
    ld [bc], a                                    ; $7cc1: $02
    nop                                           ; $7cc2: $00
    adc d                                         ; $7cc3: $8a
    jr nz, jr_0d4_7d05                            ; $7cc4: $20 $3f

    inc bc                                        ; $7cc6: $03
    pop af                                        ; $7cc7: $f1
    inc a                                         ; $7cc8: $3c
    nop                                           ; $7cc9: $00
    nop                                           ; $7cca: $00
    di                                            ; $7ccb: $f3
    inc [hl]                                      ; $7ccc: $34
    dec e                                         ; $7ccd: $1d
    ld e, d                                       ; $7cce: $5a
    ld c, [hl]                                    ; $7ccf: $4e
    inc c                                         ; $7cd0: $0c
    inc b                                         ; $7cd1: $04
    nop                                           ; $7cd2: $00
    ld [hl-], a                                   ; $7cd3: $32
    nop                                           ; $7cd4: $00
    ld e, l                                       ; $7cd5: $5d
    add hl, hl                                    ; $7cd6: $29
    or h                                          ; $7cd7: $b4
    inc d                                         ; $7cd8: $14

jr_0d4_7cd9:
    ld d, c                                       ; $7cd9: $51
    ld [$113c], sp                                ; $7cda: $08 $3c $11
    ccf                                           ; $7cdd: $3f
    rlca                                          ; $7cde: $07
    sbc c                                         ; $7cdf: $99
    ld c, c                                       ; $7ce0: $49
    ld [bc], a                                    ; $7ce1: $02
    nop                                           ; $7ce2: $00
    adc d                                         ; $7ce3: $8a
    jr nz, jr_0d4_7d25                            ; $7ce4: $20 $3f

    inc bc                                        ; $7ce6: $03
    pop af                                        ; $7ce7: $f1
    inc a                                         ; $7ce8: $3c
    nop                                           ; $7ce9: $00
    nop                                           ; $7cea: $00
    reti                                          ; $7ceb: $d9


    ld e, l                                       ; $7cec: $5d
    dec l                                         ; $7ced: $2d
    inc b                                         ; $7cee: $04
    sub e                                         ; $7cef: $93
    db $10                                        ; $7cf0: $10
    ld [hl], e                                    ; $7cf1: $73
    inc c                                         ; $7cf2: $0c
    rst $38                                       ; $7cf3: $ff
    ld a, a                                       ; $7cf4: $7f
    rra                                           ; $7cf5: $1f
    nop                                           ; $7cf6: $00
    dec a                                         ; $7cf7: $3d
    dec h                                         ; $7cf8: $25
    ld c, a                                       ; $7cf9: $4f
    ld [$0e1c], sp                                ; $7cfa: $08 $1c $0e
    add hl, sp                                    ; $7cfd: $39
    ld e, [hl]                                    ; $7cfe: $5e
    rra                                           ; $7cff: $1f
    nop                                           ; $7d00: $00
    ld [bc], a                                    ; $7d01: $02
    nop                                           ; $7d02: $00
    pop af                                        ; $7d03: $f1
    inc a                                         ; $7d04: $3c

jr_0d4_7d05:
    ccf                                           ; $7d05: $3f
    inc bc                                        ; $7d06: $03
    ld l, b                                       ; $7d07: $68
    inc e                                         ; $7d08: $1c
    ld bc, $d900                                  ; $7d09: $01 $00 $d9
    ld e, l                                       ; $7d0c: $5d
    ld c, e                                       ; $7d0d: $4b
    inc c                                         ; $7d0e: $0c
    or h                                          ; $7d0f: $b4
    inc d                                         ; $7d10: $14
    ld c, b                                       ; $7d11: $48
    ld [$001f], sp                                ; $7d12: $08 $1f $00
    rst $18                                       ; $7d15: $df
    dec [hl]                                      ; $7d16: $35
    or e                                          ; $7d17: $b3
    inc d                                         ; $7d18: $14
    dec hl                                        ; $7d19: $2b
    inc b                                         ; $7d1a: $04
    ld e, l                                       ; $7d1b: $5d
    ld b, $d9                                     ; $7d1c: $06 $d9
    ld e, l                                       ; $7d1e: $5d
    ld [hl], l                                    ; $7d1f: $75

jr_0d4_7d20:
    inc c                                         ; $7d20: $0c
    ld [bc], a                                    ; $7d21: $02
    nop                                           ; $7d22: $00
    pop af                                        ; $7d23: $f1
    inc a                                         ; $7d24: $3c

jr_0d4_7d25:
    ccf                                           ; $7d25: $3f
    inc bc                                        ; $7d26: $03
    ld l, c                                       ; $7d27: $69
    inc e                                         ; $7d28: $1c
    nop                                           ; $7d29: $00
    nop                                           ; $7d2a: $00
    inc sp                                        ; $7d2b: $33
    ld b, l                                       ; $7d2c: $45
    inc a                                         ; $7d2d: $3c
    ld l, d                                       ; $7d2e: $6a
    ld c, h                                       ; $7d2f: $4c
    ld [$0002], sp                                ; $7d30: $08 $02 $00
    dec hl                                        ; $7d33: $2b
    inc b                                         ; $7d34: $04
    ld [hl], c                                    ; $7d35: $71
    inc c                                         ; $7d36: $0c
    daa                                           ; $7d37: $27
    inc b                                         ; $7d38: $04
    dec b                                         ; $7d39: $05
    nop                                           ; $7d3a: $00
    ld e, l                                       ; $7d3b: $5d
    ld b, $f9                                     ; $7d3c: $06 $f9
    ld e, l                                       ; $7d3e: $5d
    ld [hl], b                                    ; $7d3f: $70
    inc c                                         ; $7d40: $0c
    ld [bc], a                                    ; $7d41: $02
    nop                                           ; $7d42: $00
    pop af                                        ; $7d43: $f1
    inc a                                         ; $7d44: $3c
    ccf                                           ; $7d45: $3f
    inc bc                                        ; $7d46: $03
    ld c, b                                       ; $7d47: $48
    jr jr_0d4_7d4a                                ; $7d48: $18 $00

jr_0d4_7d4a:
    nop                                           ; $7d4a: $00
    pop af                                        ; $7d4b: $f1
    inc a                                         ; $7d4c: $3c
    inc a                                         ; $7d4d: $3c
    ld l, d                                       ; $7d4e: $6a
    halt                                          ; $7d4f: $76
    ld d, c                                       ; $7d50: $51
    nop                                           ; $7d51: $00
    nop                                           ; $7d52: $00
    pop af                                        ; $7d53: $f1
    inc a                                         ; $7d54: $3c
    inc a                                         ; $7d55: $3c
    ld l, d                                       ; $7d56: $6a
    halt                                          ; $7d57: $76
    ld d, c                                       ; $7d58: $51
    ld bc, $5d04                                  ; $7d59: $01 $04 $5d
    ld b, $34                                     ; $7d5c: $06 $34
    ld c, c                                       ; $7d5e: $49
    inc a                                         ; $7d5f: $3c
    ld l, d                                       ; $7d60: $6a
    ld bc, $f100                                  ; $7d61: $01 $00 $f1
    inc a                                         ; $7d64: $3c
    ccf                                           ; $7d65: $3f
    inc bc                                        ; $7d66: $03
    ld l, c                                       ; $7d67: $69
    inc e                                         ; $7d68: $1c
    nop                                           ; $7d69: $00
    nop                                           ; $7d6a: $00
    pop af                                        ; $7d6b: $f1
    inc a                                         ; $7d6c: $3c
    cp b                                          ; $7d6d: $b8
    ld e, c                                       ; $7d6e: $59
    ld c, b                                       ; $7d6f: $48
    jr jr_0d4_7d72                                ; $7d70: $18 $00

jr_0d4_7d72:
    nop                                           ; $7d72: $00
    pop af                                        ; $7d73: $f1
    inc a                                         ; $7d74: $3c
    cp b                                          ; $7d75: $b8
    ld e, c                                       ; $7d76: $59
    ld c, b                                       ; $7d77: $48
    jr jr_0d4_7d7a                                ; $7d78: $18 $00

jr_0d4_7d7a:
    nop                                           ; $7d7a: $00
    ld e, l                                       ; $7d7b: $5d
    ld b, $34                                     ; $7d7c: $06 $34
    ld c, c                                       ; $7d7e: $49
    adc d                                         ; $7d7f: $8a
    jr nz, jr_0d4_7d82                            ; $7d80: $20 $00

jr_0d4_7d82:
    nop                                           ; $7d82: $00
    ccf                                           ; $7d83: $3f
    inc bc                                        ; $7d84: $03
    ld c, b                                       ; $7d85: $48
    jr jr_0d4_7d8a                                ; $7d86: $18 $02

    nop                                           ; $7d88: $00
    nop                                           ; $7d89: $00

jr_0d4_7d8a:
    nop                                           ; $7d8a: $00
    ld [de], a                                    ; $7d8b: $12
    ld b, c                                       ; $7d8c: $41
    adc d                                         ; $7d8d: $8a
    jr nz, jr_0d4_7dcc                            ; $7d8e: $20 $3c

    ld l, d                                       ; $7d90: $6a
    nop                                           ; $7d91: $00
    nop                                           ; $7d92: $00
    adc d                                         ; $7d93: $8a
    jr nz, jr_0d4_7d20                            ; $7d94: $20 $8a

    jr nz, jr_0d4_7dd4                            ; $7d96: $20 $3c

    ld l, d                                       ; $7d98: $6a
    inc hl                                        ; $7d99: $23
    inc c                                         ; $7d9a: $0c
    ld e, l                                       ; $7d9b: $5d
    ld b, $f1                                     ; $7d9c: $06 $f1
    inc a                                         ; $7d9e: $3c
    inc a                                         ; $7d9f: $3c
    ld l, d                                       ; $7da0: $6a
    ld bc, $f100                                  ; $7da1: $01 $00 $f1
    inc a                                         ; $7da4: $3c
    ccf                                           ; $7da5: $3f
    inc bc                                        ; $7da6: $03
    ld l, c                                       ; $7da7: $69
    inc e                                         ; $7da8: $1c
    nop                                           ; $7da9: $00
    nop                                           ; $7daa: $00
    ld [de], a                                    ; $7dab: $12
    ld b, c                                       ; $7dac: $41
    ld l, c                                       ; $7dad: $69
    inc e                                         ; $7dae: $1c
    inc a                                         ; $7daf: $3c
    ld l, d                                       ; $7db0: $6a
    nop                                           ; $7db1: $00
    nop                                           ; $7db2: $00
    halt                                          ; $7db3: $76
    ld d, c                                       ; $7db4: $51
    inc a                                         ; $7db5: $3c
    ld l, d                                       ; $7db6: $6a
    inc a                                         ; $7db7: $3c
    ld l, d                                       ; $7db8: $6a
    nop                                           ; $7db9: $00
    nop                                           ; $7dba: $00
    ld e, l                                       ; $7dbb: $5d
    ld b, $96                                     ; $7dbc: $06 $96
    ld d, c                                       ; $7dbe: $51
    adc d                                         ; $7dbf: $8a
    jr nz, jr_0d4_7dc4                            ; $7dc0: $20 $02

    nop                                           ; $7dc2: $00
    ld [de], a                                    ; $7dc3: $12

jr_0d4_7dc4:
    ld b, c                                       ; $7dc4: $41
    ccf                                           ; $7dc5: $3f
    inc bc                                        ; $7dc6: $03
    adc d                                         ; $7dc7: $8a
    jr nz, jr_0d4_7dca                            ; $7dc8: $20 $00

jr_0d4_7dca:
    nop                                           ; $7dca: $00
    inc de                                        ; $7dcb: $13

jr_0d4_7dcc:
    ld b, l                                       ; $7dcc: $45
    inc a                                         ; $7dcd: $3c
    ld l, d                                       ; $7dce: $6a
    ld l, c                                       ; $7dcf: $69
    inc e                                         ; $7dd0: $1c
    nop                                           ; $7dd1: $00
    nop                                           ; $7dd2: $00
    adc d                                         ; $7dd3: $8a

jr_0d4_7dd4:
    jr nz, jr_0d4_7e4c                            ; $7dd4: $20 $76

    ld d, c                                       ; $7dd6: $51
    ld l, c                                       ; $7dd7: $69
    inc e                                         ; $7dd8: $1c
    nop                                           ; $7dd9: $00
    nop                                           ; $7dda: $00
    ld e, l                                       ; $7ddb: $5d
    ld [bc], a                                    ; $7ddc: $02
    pop af                                        ; $7ddd: $f1
    inc a                                         ; $7dde: $3c
    adc d                                         ; $7ddf: $8a
    jr nz, jr_0d4_7de4                            ; $7de0: $20 $02

    nop                                           ; $7de2: $00
    ld e, e                                       ; $7de3: $5b

jr_0d4_7de4:
    ld bc, $033f                                  ; $7de4: $01 $3f $03
    inc bc                                        ; $7de7: $03
    nop                                           ; $7de8: $00
    ld a, e                                       ; $7de9: $7b
    ld bc, $071e                                  ; $7dea: $01 $1e $07
    ccf                                           ; $7ded: $3f
    inc bc                                        ; $7dee: $03
    ld a, e                                       ; $7def: $7b
    dec b                                         ; $7df0: $05
    ld a, e                                       ; $7df1: $7b
    dec b                                         ; $7df2: $05
    ccf                                           ; $7df3: $3f
    rlca                                          ; $7df4: $07
    ccf                                           ; $7df5: $3f
    inc bc                                        ; $7df6: $03
    ld a, e                                       ; $7df7: $7b
    dec b                                         ; $7df8: $05
    ld e, e                                       ; $7df9: $5b
    ld bc, $073f                                  ; $7dfa: $01 $3f $07
    ld a, e                                       ; $7dfd: $7b
    ld bc, $057b                                  ; $7dfe: $01 $7b $05

    db $2c, $03, $ff, $01, $55, $05, $ff, $7f

    nop                                           ; $7e09: $00
    jr nz, @+$01                                  ; $7e0a: $20 $ff

    ld a, a                                       ; $7e0c: $7f
    xor $41                                       ; $7e0d: $ee $41
    nop                                           ; $7e0f: $00
    ld a, [hl]                                    ; $7e10: $7e
    nop                                           ; $7e11: $00
    jr nz, @+$01                                  ; $7e12: $20 $ff

jr_0d4_7e14:
    ld a, a                                       ; $7e14: $7f
    ld d, d                                       ; $7e15: $52
    ld d, [hl]                                    ; $7e16: $56
    add $38                                       ; $7e17: $c6 $38
    dec h                                         ; $7e19: $25
    inc b                                         ; $7e1a: $04
    rst $38                                       ; $7e1b: $ff
    inc bc                                        ; $7e1c: $03
    ld c, $05                                     ; $7e1d: $0e $05
    jr jr_0d4_7e22                                ; $7e1f: $18 $01

    nop                                           ; $7e21: $00

jr_0d4_7e22:
    jr nz, jr_0d4_7e14                            ; $7e22: $20 $f0

    ld a, a                                       ; $7e24: $7f
    rst $38                                       ; $7e25: $ff
    inc bc                                        ; $7e26: $03
    db $e3                                        ; $7e27: $e3
    ld h, l                                       ; $7e28: $65
    add b                                         ; $7e29: $80
    nop                                           ; $7e2a: $00
    rst $30                                       ; $7e2b: $f7
    inc bc                                        ; $7e2c: $03
    rst $38                                       ; $7e2d: $ff
    inc bc                                        ; $7e2e: $03
    add b                                         ; $7e2f: $80
    ld [bc], a                                    ; $7e30: $02
    inc b                                         ; $7e31: $04
    db $10                                        ; $7e32: $10
    rst $38                                       ; $7e33: $ff
    ld a, [hl]                                    ; $7e34: $7e
    rst $38                                       ; $7e35: $ff
    inc bc                                        ; $7e36: $03
    adc a                                         ; $7e37: $8f
    inc a                                         ; $7e38: $3c
    ld hl, $bd04                                  ; $7e39: $21 $04 $bd
    ld [hl], a                                    ; $7e3c: $77
    and l                                         ; $7e3d: $a5
    inc d                                         ; $7e3e: $14
    xor l                                         ; $7e3f: $ad
    dec [hl]                                      ; $7e40: $35

    db $15, $59, $8c, $31, $ef, $3d, $ff, $7f

    nop                                           ; $7e49: $00
    jr nz, @+$01                                  ; $7e4a: $20 $ff

jr_0d4_7e4c:
    ld a, a                                       ; $7e4c: $7f
    xor $41                                       ; $7e4d: $ee $41
    nop                                           ; $7e4f: $00
    ld a, [hl]                                    ; $7e50: $7e
    nop                                           ; $7e51: $00
    jr nz, @+$01                                  ; $7e52: $20 $ff

jr_0d4_7e54:
    ld a, a                                       ; $7e54: $7f
    ld d, d                                       ; $7e55: $52
    ld d, [hl]                                    ; $7e56: $56
    add $38                                       ; $7e57: $c6 $38
    dec h                                         ; $7e59: $25
    inc b                                         ; $7e5a: $04
    rst $38                                       ; $7e5b: $ff
    inc bc                                        ; $7e5c: $03
    ld c, $05                                     ; $7e5d: $0e $05
    jr jr_0d4_7e62                                ; $7e5f: $18 $01

    nop                                           ; $7e61: $00

jr_0d4_7e62:
    jr nz, jr_0d4_7e54                            ; $7e62: $20 $f0

    ld a, a                                       ; $7e64: $7f
    rst $38                                       ; $7e65: $ff
    inc bc                                        ; $7e66: $03
    db $e3                                        ; $7e67: $e3
    ld h, l                                       ; $7e68: $65
    add b                                         ; $7e69: $80
    nop                                           ; $7e6a: $00
    rst $30                                       ; $7e6b: $f7
    inc bc                                        ; $7e6c: $03
    rst $38                                       ; $7e6d: $ff
    inc bc                                        ; $7e6e: $03
    add b                                         ; $7e6f: $80
    ld [bc], a                                    ; $7e70: $02
    inc b                                         ; $7e71: $04
    db $10                                        ; $7e72: $10
    rst $38                                       ; $7e73: $ff
    ld a, [hl]                                    ; $7e74: $7e
    rst $38                                       ; $7e75: $ff
    inc bc                                        ; $7e76: $03
    adc a                                         ; $7e77: $8f
    inc a                                         ; $7e78: $3c
    ld hl, $bd04                                  ; $7e79: $21 $04 $bd
    ld [hl], a                                    ; $7e7c: $77
    and l                                         ; $7e7d: $a5
    inc d                                         ; $7e7e: $14
    xor l                                         ; $7e7f: $ad
    dec [hl]                                      ; $7e80: $35
    nop                                           ; $7e81: $00
    ld bc, $00d9                                  ; $7e82: $01 $d9 $00
    ld b, b                                       ; $7e85: $40
    rst $38                                       ; $7e86: $ff
    ld bc, $e330                                  ; $7e87: $01 $30 $e3
    db $e3                                        ; $7e8a: $e3
    ret z                                         ; $7e8b: $c8

    call nc, $cad4                                ; $7e8c: $d4 $d4 $ca
    nop                                           ; $7e8f: $00
    cp $fe                                        ; $7e90: $fe $fe
    db $fd                                        ; $7e92: $fd
    db $fc                                        ; $7e93: $fc
    ld a, [c]                                     ; $7e94: $f2
    ldh a, [$ed]                                  ; $7e95: $f0 $ed
    ldh [rP1], a                                  ; $7e97: $e0 $00
    jp nc, Jump_000_25c0                          ; $7e99: $d2 $c0 $25

    nop                                           ; $7e9c: $00
    and c                                         ; $7e9d: $a1
    jr jr_0d4_7ea3                                ; $7e9e: $18 $03

    nop                                           ; $7ea0: $00
    nop                                           ; $7ea1: $00
    ld a, a                                       ; $7ea2: $7f

jr_0d4_7ea3:
    ld a, a                                       ; $7ea3: $7f
    cp a                                          ; $7ea4: $bf

jr_0d4_7ea5:
    ccf                                           ; $7ea5: $3f
    rrca                                          ; $7ea6: $0f
    rrca                                          ; $7ea7: $0f
    ld [hl], a                                    ; $7ea8: $77
    rlca                                          ; $7ea9: $07
    nop                                           ; $7eaa: $00
    add c                                         ; $7eab: $81
    ld bc, $02ac                                  ; $7eac: $01 $ac $02
    jp nc, $c004                                  ; $7eaf: $d2 $04 $c0

    ld a, [bc]                                    ; $7eb2: $0a
    add b                                         ; $7eb3: $80
    jr nc, jr_0d4_7eee                            ; $7eb4: $30 $38

    rst $38                                       ; $7eb6: $ff
    rst $38                                       ; $7eb7: $ff
    ld a, a                                       ; $7eb8: $7f
    ld a, a                                       ; $7eb9: $7f
    sbc a                                         ; $7eba: $9f
    rra                                           ; $7ebb: $1f
    xor b                                         ; $7ebc: $a8
    nop                                           ; $7ebd: $00
    sub [hl]                                      ; $7ebe: $96
    add h                                         ; $7ebf: $84
    and d                                         ; $7ec0: $a2
    and d                                         ; $7ec1: $a2
    add b                                         ; $7ec2: $80
    add b                                         ; $7ec3: $80
    xor h                                         ; $7ec4: $ac
    nop                                           ; $7ec5: $00
    nop                                           ; $7ec6: $00
    cpl                                           ; $7ec7: $2f
    ld b, d                                       ; $7ec8: $42
    dec d                                         ; $7ec9: $15
    ld d, b                                       ; $7eca: $50
    inc b                                         ; $7ecb: $04
    ld c, d                                       ; $7ecc: $4a
    db $10                                        ; $7ecd: $10
    ld hl, $9400                                  ; $7ece: $21 $00 $94
    ld de, $00c8                                  ; $7ed1: $11 $c8 $00
    db $ec                                        ; $7ed4: $ec
    nop                                           ; $7ed5: $00
    pop hl                                        ; $7ed6: $e1
    dec bc                                        ; $7ed7: $0b
    nop                                           ; $7ed8: $00
    ldh [rNR12], a                                ; $7ed9: $e0 $12
    ret z                                         ; $7edb: $c8

    ld [de], a                                    ; $7edc: $12
    ret z                                         ; $7edd: $c8

    add hl, bc                                    ; $7ede: $09
    jp nz, Jump_000_0082                          ; $7edf: $c2 $82 $00

    ld d, h                                       ; $7ee2: $54
    nop                                           ; $7ee3: $00
    xor l                                         ; $7ee4: $ad
    nop                                           ; $7ee5: $00
    ld a, l                                       ; $7ee6: $7d
    ld b, d                                       ; $7ee7: $42
    add b                                         ; $7ee8: $80
    di                                            ; $7ee9: $f3
    nop                                           ; $7eea: $00
    inc b                                         ; $7eeb: $04
    or c                                          ; $7eec: $b1
    ld a, [bc]                                    ; $7eed: $0a

jr_0d4_7eee:
    or c                                          ; $7eee: $b1
    ld b, $e3                                     ; $7eef: $06 $e3
    inc b                                         ; $7ef1: $04
    ld l, a                                       ; $7ef2: $6f
    nop                                           ; $7ef3: $00
    rrca                                          ; $7ef4: $0f
    rla                                           ; $7ef5: $17
    add a                                         ; $7ef6: $87
    dec bc                                        ; $7ef7: $0b
    db $e3                                        ; $7ef8: $e3
    dec b                                         ; $7ef9: $05
    pop af                                        ; $7efa: $f1
    ld [bc], a                                    ; $7efb: $02
    ld b, b                                       ; $7efc: $40
    ld a, b                                       ; $7efd: $78
    ld [bc], a                                    ; $7efe: $02
    jr jr_0d4_7ea5                                ; $7eff: $18 $a4

    adc b                                         ; $7f01: $88
    and b                                         ; $7f02: $a0
    adc d                                         ; $7f03: $8a
    and b                                         ; $7f04: $a0
    add b                                         ; $7f05: $80
    nop                                           ; $7f06: $00
    ret nc                                        ; $7f07: $d0

    add $d1                                       ; $7f08: $c6 $d1
    ret nz                                        ; $7f0a: $c0

    ret nc                                        ; $7f0b: $d0

    pop bc                                        ; $7f0c: $c1
    ld [$00e0], a                                 ; $7f0d: $ea $e0 $00
    add sp, -$1d                                  ; $7f10: $e8 $e3
    nop                                           ; $7f12: $00
    ld bc, $4438                                  ; $7f13: $01 $38 $44
    ld a, h                                       ; $7f16: $7c
    add d                                         ; $7f17: $82
    nop                                           ; $7f18: $00
    cp [hl]                                       ; $7f19: $be
    nop                                           ; $7f1a: $00
    ld e, $00                                     ; $7f1b: $1e $00
    ret z                                         ; $7f1d: $c8

    ld b, $28                                     ; $7f1e: $06 $28
    nop                                           ; $7f20: $00
    nop                                           ; $7f21: $00
    sub h                                         ; $7f22: $94
    ld [hl+], a                                   ; $7f23: $22
    call nz, Call_000_2018                        ; $7f24: $c4 $18 $20
    nop                                           ; $7f27: $00
    adc $11                                       ; $7f28: $ce $11
    nop                                           ; $7f2a: $00
    rst $18                                       ; $7f2b: $df
    nop                                           ; $7f2c: $00
    cp b                                          ; $7f2d: $b8
    inc b                                         ; $7f2e: $04
    inc hl                                        ; $7f2f: $23
    db $10                                        ; $7f30: $10
    adc c                                         ; $7f31: $89
    jr nz, jr_0d4_7f34                            ; $7f32: $20 $00

jr_0d4_7f34:
    ld hl, $0586                                  ; $7f34: $21 $86 $05
    pop af                                        ; $7f37: $f1
    dec b                                         ; $7f38: $05
    ld [hl], c                                    ; $7f39: $71
    dec b                                         ; $7f3a: $05
    or c                                          ; $7f3b: $b1
    nop                                           ; $7f3c: $00
    dec bc                                        ; $7f3d: $0b
    add e                                         ; $7f3e: $83
    ld c, e                                       ; $7f3f: $4b
    inc bc                                        ; $7f40: $03
    dec bc                                        ; $7f41: $0b
    inc bc                                        ; $7f42: $03
    rla                                           ; $7f43: $17
    add a                                         ; $7f44: $87
    ld [bc], a                                    ; $7f45: $02
    rla                                           ; $7f46: $17
    add a                                         ; $7f47: $87
    jp hl                                         ; $7f48: $e9


    ldh [$f4], a                                  ; $7f49: $e0 $f4
    ldh a, [rSC]                                  ; $7f4b: $f0 $02
    ld [$00fa], sp                                ; $7f4d: $08 $fa $00
    ld hl, sp-$06                                 ; $7f50: $f8 $fa
    ld hl, sp-$05                                 ; $7f52: $f8 $fb
    ld hl, sp-$04                                 ; $7f54: $f8 $fc
    db $fc                                        ; $7f56: $fc
    sub b                                         ; $7f57: $90
    inc b                                         ; $7f58: $04
    ld [$a912], sp                                ; $7f59: $08 $12 $a9
    ld [de], a                                    ; $7f5c: $12
    add hl, hl                                    ; $7f5d: $29
    ld [bc], a                                    ; $7f5e: $02
    ld [$0000], sp                                ; $7f5f: $08 $00 $00
    nop                                           ; $7f62: $00
    rst $38                                       ; $7f63: $ff
    nop                                           ; $7f64: $00
    nop                                           ; $7f65: $00
    nop                                           ; $7f66: $00
    ld bc, $2116                                  ; $7f67: $01 $16 $21
    ld d, $30                                     ; $7f6a: $16 $30
    ld hl, $0296                                  ; $7f6c: $21 $96 $02
    ld [$1810], sp                                ; $7f6f: $08 $10 $18
    rla                                           ; $7f72: $17
    add a                                         ; $7f73: $87
    cpl                                           ; $7f74: $2f
    adc a                                         ; $7f75: $8f
    add b                                         ; $7f76: $80
    ld [bc], a                                    ; $7f77: $02
    ld [$1f5f], sp                                ; $7f78: $08 $5f $1f
    ld e, a                                       ; $7f7b: $5f
    rra                                           ; $7f7c: $1f
    rst $18                                       ; $7f7d: $df
    rra                                           ; $7f7e: $1f
    ccf                                           ; $7f7f: $3f
    nop                                           ; $7f80: $00
    ccf                                           ; $7f81: $3f
    rst $38                                       ; $7f82: $ff
    ld a, a                                       ; $7f83: $7f
    nop                                           ; $7f84: $00
    jr nz, jr_0d4_7fd9                            ; $7f85: $20 $52

    ld d, [hl]                                    ; $7f87: $56
    add $38                                       ; $7f88: $c6 $38
    nop                                           ; $7f8a: $00
    jr nz, @+$01                                  ; $7f8b: $20 $ff

    ld a, a                                       ; $7f8d: $7f
    xor $41                                       ; $7f8e: $ee $41
    nop                                           ; $7f90: $00
    ld a, [hl]                                    ; $7f91: $7e
    rst $28                                       ; $7f92: $ef
    dec a                                         ; $7f93: $3d
    rst $28                                       ; $7f94: $ef
    dec a                                         ; $7f95: $3d
    rst $28                                       ; $7f96: $ef
    dec a                                         ; $7f97: $3d
    rst $28                                       ; $7f98: $ef
    dec a                                         ; $7f99: $3d
    rst $28                                       ; $7f9a: $ef
    dec a                                         ; $7f9b: $3d
    rst $28                                       ; $7f9c: $ef
    dec a                                         ; $7f9d: $3d
    rst $28                                       ; $7f9e: $ef
    dec a                                         ; $7f9f: $3d
    rst $28                                       ; $7fa0: $ef
    dec a                                         ; $7fa1: $3d
    rst $28                                       ; $7fa2: $ef
    dec a                                         ; $7fa3: $3d
    rst $28                                       ; $7fa4: $ef
    dec a                                         ; $7fa5: $3d
    rst $28                                       ; $7fa6: $ef
    dec a                                         ; $7fa7: $3d
    rst $28                                       ; $7fa8: $ef
    dec a                                         ; $7fa9: $3d
    rst $28                                       ; $7faa: $ef
    dec a                                         ; $7fab: $3d
    rst $28                                       ; $7fac: $ef
    dec a                                         ; $7fad: $3d
    rst $28                                       ; $7fae: $ef
    dec a                                         ; $7faf: $3d
    rst $28                                       ; $7fb0: $ef
    dec a                                         ; $7fb1: $3d
    rst $28                                       ; $7fb2: $ef
    dec a                                         ; $7fb3: $3d
    rst $28                                       ; $7fb4: $ef
    dec a                                         ; $7fb5: $3d
    rst $28                                       ; $7fb6: $ef
    dec a                                         ; $7fb7: $3d
    rst $28                                       ; $7fb8: $ef
    dec a                                         ; $7fb9: $3d
    ld hl, $ff04                                  ; $7fba: $21 $04 $ff
    ld a, a                                       ; $7fbd: $7f
    rst $28                                       ; $7fbe: $ef
    dec a                                         ; $7fbf: $3d
    rst $28                                       ; $7fc0: $ef
    dec a                                         ; $7fc1: $3d
    rst $38                                       ; $7fc2: $ff
    ld a, a                                       ; $7fc3: $7f
    ccf                                           ; $7fc4: $3f
    nop                                           ; $7fc5: $00
    ld l, a                                       ; $7fc6: $6f
    nop                                           ; $7fc7: $00
    inc hl                                        ; $7fc8: $23
    nop                                           ; $7fc9: $00
    rst $38                                       ; $7fca: $ff
    ld a, a                                       ; $7fcb: $7f
    rst $28                                       ; $7fcc: $ef
    rlca                                          ; $7fcd: $07
    db $ec                                        ; $7fce: $ec
    add hl, bc                                    ; $7fcf: $09
    add b                                         ; $7fd0: $80
    inc b                                         ; $7fd1: $04
    rst $38                                       ; $7fd2: $ff
    ld a, a                                       ; $7fd3: $7f
    rst $38                                       ; $7fd4: $ff
    ld a, a                                       ; $7fd5: $7f
    ld a, [c]                                     ; $7fd6: $f2
    dec l                                         ; $7fd7: $2d
    add l                                         ; $7fd8: $85

jr_0d4_7fd9:
    ld [$7fff], sp                                ; $7fd9: $08 $ff $7f
    rst $38                                       ; $7fdc: $ff
    inc bc                                        ; $7fdd: $03
    rst $28                                       ; $7fde: $ef
    dec b                                         ; $7fdf: $05
    ret nz                                        ; $7fe0: $c0

    inc b                                         ; $7fe1: $04
    rst $38                                       ; $7fe2: $ff
    ld a, a                                       ; $7fe3: $7f
    ld e, $34                                     ; $7fe4: $1e $34
    rst $38                                       ; $7fe6: $ff
    rrca                                          ; $7fe7: $0f
    inc h                                         ; $7fe8: $24
    db $10                                        ; $7fe9: $10
    rst $38                                       ; $7fea: $ff
    ld a, a                                       ; $7feb: $7f
    ld e, a                                       ; $7fec: $5f
    ld a, [hl]                                    ; $7fed: $7e
    ld [hl], $48                                  ; $7fee: $36 $48
    inc hl                                        ; $7ff0: $23
    ld [$7fff], sp                                ; $7ff1: $08 $ff $7f
    ei                                            ; $7ff4: $fb
    ccf                                           ; $7ff5: $3f
    ld h, e                                       ; $7ff6: $63
    ld a, $a1                                     ; $7ff7: $3e $a1
    inc b                                         ; $7ff9: $04
    rst $38                                       ; $7ffa: $ff
    rst $38                                       ; $7ffb: $ff
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
