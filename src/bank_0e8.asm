; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0e8", ROMX[$4000], BANK[$e8]

    db $e8

    dec c                                         ; $4001: $0d
    inc b                                         ; $4002: $04
    ld a, [$f504]                                 ; $4003: $fa $04 $f5
    cp $e8                                        ; $4006: $fe $e8
    ei                                            ; $4008: $fb
    jp hl                                         ; $4009: $e9


    cp $f8                                        ; $400a: $fe $f8
    ld a, [$00f8]                                 ; $400c: $fa $f8 $00
    ld [bc], a                                    ; $400f: $02
    rra                                           ; $4010: $1f
    sub h                                         ; $4011: $94
    inc l                                         ; $4012: $2c
    inc sp                                        ; $4013: $33
    ld e, h                                       ; $4014: $5c
    ld a, a                                       ; $4015: $7f
    adc $bb                                       ; $4016: $ce $bb
    rst $18                                       ; $4018: $df
    or c                                          ; $4019: $b1
    or [hl]                                       ; $401a: $b6
    rst $38                                       ; $401b: $ff
    ld a, a                                       ; $401c: $7f
    ld d, b                                       ; $401d: $50
    ld a, a                                       ; $401e: $7f
    ld [hl], b                                    ; $401f: $70
    ccf                                           ; $4020: $3f
    ld [hl-], a                                   ; $4021: $32
    rra                                           ; $4022: $1f
    add hl, de                                    ; $4023: $19
    rra                                           ; $4024: $1f
    rla                                           ; $4025: $17
    inc b                                         ; $4026: $04
    ld a, $05                                     ; $4027: $3e $05
    ccf                                           ; $4029: $3f
    add c                                         ; $402a: $81
    scf                                           ; $402b: $37
    ld [bc], a                                    ; $402c: $02
    inc b                                         ; $402d: $04
    add h                                         ; $402e: $84
    ld [bc], a                                    ; $402f: $02
    ld b, $05                                     ; $4030: $06 $05
    rlca                                          ; $4032: $07
    ld [bc], a                                    ; $4033: $02
    ld b, $02                                     ; $4034: $06 $02
    inc b                                         ; $4036: $04
    add d                                         ; $4037: $82
    ld b, $02                                     ; $4038: $06 $02
    ld b, $04                                     ; $403a: $06 $04
    inc c                                         ; $403c: $0c
    nop                                           ; $403d: $00
    add d                                         ; $403e: $82
    ld hl, sp-$28                                 ; $403f: $f8 $d8
    ld [bc], a                                    ; $4041: $02
    db $10                                        ; $4042: $10
    sub b                                         ; $4043: $90
    rra                                           ; $4044: $1f
    ld e, $1f                                     ; $4045: $1e $1f
    ld d, $1f                                     ; $4047: $16 $1f
    dec de                                        ; $4049: $1b
    ccf                                           ; $404a: $3f
    ld [hl+], a                                   ; $404b: $22
    ld a, l                                       ; $404c: $7d
    ld h, l                                       ; $404d: $65
    db $fd                                        ; $404e: $fd
    push bc                                       ; $404f: $c5
    ld hl, sp-$48                                 ; $4050: $f8 $b8
    ld e, h                                       ; $4052: $5c
    ld h, h                                       ; $4053: $64
    ld [bc], a                                    ; $4054: $02
    inc a                                         ; $4055: $3c
    ld c, $00                                     ; $4056: $0e $00
    ld [bc], a                                    ; $4058: $02
    db $20, $81                                   ; $4059: $20 $81
    db $10                                        ; $405b: $10
    ld [bc], a                                    ; $405c: $02
    db $30, $89                                   ; $405d: $30 $89
    db $10                                        ; $405f: $10
    jr c, jr_0e8_408a                             ; $4060: $38 $28

    ld a, $0e                                     ; $4062: $3e $0e
    ccf                                           ; $4064: $3f
    add hl, de                                    ; $4065: $19
    ld l, $36                                     ; $4066: $2e $36
    ld [bc], a                                    ; $4068: $02
    jr c, @+$10                                   ; $4069: $38 $0e

    nop                                           ; $406b: $00
    rst $38                                       ; $406c: $ff
    dec c                                         ; $406d: $0d
    inc b                                         ; $406e: $04
    ld a, [$f504]                                 ; $406f: $fa $04 $f5
    cp $e9                                        ; $4072: $fe $e9
    ei                                            ; $4074: $fb
    ld [$f9fe], a                                 ; $4075: $ea $fe $f9
    ld a, [$fef9]                                 ; $4078: $fa $f9 $fe
    ld [bc], a                                    ; $407b: $02
    rra                                           ; $407c: $1f
    sub h                                         ; $407d: $94
    inc l                                         ; $407e: $2c
    inc sp                                        ; $407f: $33
    ld e, h                                       ; $4080: $5c
    ld a, a                                       ; $4081: $7f
    adc $bb                                       ; $4082: $ce $bb
    rst $18                                       ; $4084: $df
    or c                                          ; $4085: $b1
    or [hl]                                       ; $4086: $b6
    rst $38                                       ; $4087: $ff
    ld a, a                                       ; $4088: $7f
    ld d, b                                       ; $4089: $50

jr_0e8_408a:
    ld a, a                                       ; $408a: $7f
    ld [hl], b                                    ; $408b: $70
    ccf                                           ; $408c: $3f
    ld [hl-], a                                   ; $408d: $32
    rra                                           ; $408e: $1f
    add hl, de                                    ; $408f: $19
    rra                                           ; $4090: $1f
    rla                                           ; $4091: $17
    ld [bc], a                                    ; $4092: $02
    ld a, $07                                     ; $4093: $3e $07
    ccf                                           ; $4095: $3f
    add c                                         ; $4096: $81
    scf                                           ; $4097: $37
    ld [bc], a                                    ; $4098: $02
    inc b                                         ; $4099: $04
    add h                                         ; $409a: $84
    ld [bc], a                                    ; $409b: $02
    ld b, $05                                     ; $409c: $06 $05
    rlca                                          ; $409e: $07
    ld [bc], a                                    ; $409f: $02
    ld b, $02                                     ; $40a0: $06 $02
    inc b                                         ; $40a2: $04
    add d                                         ; $40a3: $82
    ld b, $02                                     ; $40a4: $06 $02
    ld b, $04                                     ; $40a6: $06 $04
    inc c                                         ; $40a8: $0c
    nop                                           ; $40a9: $00
    add d                                         ; $40aa: $82
    ld hl, sp-$28                                 ; $40ab: $f8 $d8
    ld [bc], a                                    ; $40ad: $02
    db $10                                        ; $40ae: $10
    adc e                                         ; $40af: $8b
    ld e, $15                                     ; $40b0: $1e $15
    rra                                           ; $40b2: $1f
    ld a, [de]                                    ; $40b3: $1a
    ld a, a                                       ; $40b4: $7f
    ld h, e                                       ; $40b5: $63
    rst $38                                       ; $40b6: $ff
    add $ff                                       ; $40b7: $c6 $ff
    xor [hl]                                      ; $40b9: $ae
    ld e, e                                       ; $40ba: $5b
    ld [bc], a                                    ; $40bb: $02
    ld a, e                                       ; $40bc: $7b
    add c                                         ; $40bd: $81
    ld c, e                                       ; $40be: $4b
    ld [bc], a                                    ; $40bf: $02
    jr nc, @+$12                                  ; $40c0: $30 $10

    nop                                           ; $40c2: $00
    inc b                                         ; $40c3: $04
    ld [$0c84], sp                                ; $40c4: $08 $84 $0c
    inc b                                         ; $40c7: $04
    inc c                                         ; $40c8: $0c
    inc b                                         ; $40c9: $04
    ld [bc], a                                    ; $40ca: $02
    ld c, $82                                     ; $40cb: $0e $82
    rlca                                          ; $40cd: $07
    add hl, bc                                    ; $40ce: $09
    ld [bc], a                                    ; $40cf: $02
    rrca                                          ; $40d0: $0f
    stop                                          ; $40d1: $10 $00
    rst $38                                       ; $40d3: $ff
    dec bc                                        ; $40d4: $0b
    inc bc                                        ; $40d5: $03
    ld a, [$f504]                                 ; $40d6: $fa $04 $f5
    cp $e8                                        ; $40d9: $fe $e8
    ei                                            ; $40db: $fb
    jp hl                                         ; $40dc: $e9


    cp $f8                                        ; $40dd: $fe $f8
    db $fc                                        ; $40df: $fc
    ld [bc], a                                    ; $40e0: $02
    rra                                           ; $40e1: $1f
    sub h                                         ; $40e2: $94
    inc [hl]                                      ; $40e3: $34
    dec sp                                        ; $40e4: $3b
    ld e, l                                       ; $40e5: $5d
    ld a, a                                       ; $40e6: $7f
    xor [hl]                                      ; $40e7: $ae
    db $db                                        ; $40e8: $db
    rst $08                                       ; $40e9: $cf
    cp c                                          ; $40ea: $b9
    cp a                                          ; $40eb: $bf
    or $ff                                        ; $40ec: $f6 $ff
    ret nc                                        ; $40ee: $d0

    ld a, a                                       ; $40ef: $7f
    ld [hl], b                                    ; $40f0: $70
    ccf                                           ; $40f1: $3f
    ld [hl-], a                                   ; $40f2: $32
    rra                                           ; $40f3: $1f
    add hl, de                                    ; $40f4: $19
    rra                                           ; $40f5: $1f
    rla                                           ; $40f6: $17
    ld b, $3e                                     ; $40f7: $06 $3e
    inc bc                                        ; $40f9: $03
    ccf                                           ; $40fa: $3f
    add c                                         ; $40fb: $81
    cpl                                           ; $40fc: $2f
    ld [bc], a                                    ; $40fd: $02
    inc b                                         ; $40fe: $04
    add h                                         ; $40ff: $84
    ld [bc], a                                    ; $4100: $02
    ld b, $05                                     ; $4101: $06 $05
    rlca                                          ; $4103: $07
    ld [bc], a                                    ; $4104: $02
    ld b, $02                                     ; $4105: $06 $02
    inc b                                         ; $4107: $04
    add d                                         ; $4108: $82
    ld b, $02                                     ; $4109: $06 $02
    ld b, $04                                     ; $410b: $06 $04

jr_0e8_410d:
    inc c                                         ; $410d: $0c
    nop                                           ; $410e: $00
    add d                                         ; $410f: $82
    ld hl, sp+$78                                 ; $4110: $f8 $78
    ld [bc], a                                    ; $4112: $02
    ld b, b                                       ; $4113: $40
    adc [hl]                                      ; $4114: $8e
    ld a, [hl]                                    ; $4115: $7e
    ld d, [hl]                                    ; $4116: $56
    ld e, a                                       ; $4117: $5f
    ld l, e                                       ; $4118: $6b
    ccf                                           ; $4119: $3f
    add hl, hl                                    ; $411a: $29
    ld a, $32                                     ; $411b: $3e $32
    ld a, [hl]                                    ; $411d: $7e
    halt                                          ; $411e: $76
    ld l, h                                       ; $411f: $6c
    ld e, h                                       ; $4120: $5c
    ld a, [hl]                                    ; $4121: $7e
    ld [hl], d                                    ; $4122: $72
    ld [bc], a                                    ; $4123: $02
    ld a, [hl]                                    ; $4124: $7e
    ld c, $00                                     ; $4125: $0e $00
    rst $38                                       ; $4127: $ff
    dec c                                         ; $4128: $0d
    inc b                                         ; $4129: $04
    ld a, [$f504]                                 ; $412a: $fa $04 $f5
    cp $e8                                        ; $412d: $fe $e8
    ei                                            ; $412f: $fb
    jp hl                                         ; $4130: $e9


    cp $f8                                        ; $4131: $fe $f8
    ld a, [$00f8]                                 ; $4133: $fa $f8 $00
    ld [bc], a                                    ; $4136: $02
    rra                                           ; $4137: $1f
    sub h                                         ; $4138: $94
    ld [hl], $39                                  ; $4139: $36 $39
    ld c, [hl]                                    ; $413b: $4e
    ld a, a                                       ; $413c: $7f
    sub a                                         ; $413d: $97
    db $ed                                        ; $413e: $ed
    rst $08                                       ; $413f: $cf
    cp b                                          ; $4140: $b8
    cp a                                          ; $4141: $bf
    ei                                            ; $4142: $fb
    rst $18                                       ; $4143: $df
    ldh [$7f], a                                  ; $4144: $e0 $7f
    ld [hl], b                                    ; $4146: $70
    ccf                                           ; $4147: $3f
    add hl, sp                                    ; $4148: $39
    rra                                           ; $4149: $1f
    add hl, de                                    ; $414a: $19
    rra                                           ; $414b: $1f
    rla                                           ; $414c: $17
    inc b                                         ; $414d: $04
    ld a, $02                                     ; $414e: $3e $02
    ccf                                           ; $4150: $3f
    inc bc                                        ; $4151: $03
    ld a, a                                       ; $4152: $7f
    add c                                         ; $4153: $81
    ld e, a                                       ; $4154: $5f
    ld [bc], a                                    ; $4155: $02
    inc b                                         ; $4156: $04
    add h                                         ; $4157: $84
    ld [bc], a                                    ; $4158: $02
    ld b, $05                                     ; $4159: $06 $05
    rlca                                          ; $415b: $07
    ld [bc], a                                    ; $415c: $02
    ld b, $02                                     ; $415d: $06 $02
    inc b                                         ; $415f: $04
    add d                                         ; $4160: $82
    ld b, $02                                     ; $4161: $06 $02
    ld b, $04                                     ; $4163: $06 $04
    inc c                                         ; $4165: $0c
    nop                                           ; $4166: $00
    ld [bc], a                                    ; $4167: $02
    db $fc                                        ; $4168: $fc
    sub b                                         ; $4169: $90
    jr nc, @+$22                                  ; $416a: $30 $20

    ccf                                           ; $416c: $3f
    cpl                                           ; $416d: $2f
    ccf                                           ; $416e: $3f
    ld a, [hl+]                                   ; $416f: $2a
    ccf                                           ; $4170: $3f
    inc l                                         ; $4171: $2c
    ld a, a                                       ; $4172: $7f
    halt                                          ; $4173: $76
    rst $38                                       ; $4174: $ff
    add $bb                                       ; $4175: $c6 $bb
    ld a, [$756d]                                 ; $4177: $fa $6d $75
    ld [bc], a                                    ; $417a: $02
    jr jr_0e8_418d                                ; $417b: $18 $10

    nop                                           ; $417d: $00
    add c                                         ; $417e: $81
    jr z, @+$05                                   ; $417f: $28 $03

    jr c, jr_0e8_410d                             ; $4181: $38 $8a

    jr nc, @+$12                                  ; $4183: $30 $10

    jr nc, jr_0e8_4197                            ; $4185: $30 $10

    ld a, $0e                                     ; $4187: $3e $0e
    scf                                           ; $4189: $37
    add hl, sp                                    ; $418a: $39
    ld a, $1e                                     ; $418b: $3e $1e

jr_0e8_418d:
    ld [bc], a                                    ; $418d: $02
    jr nc, @+$10                                  ; $418e: $30 $0e

    nop                                           ; $4190: $00
    rst $38                                       ; $4191: $ff
    dec c                                         ; $4192: $0d
    inc b                                         ; $4193: $04
    ld a, [$f508]                                 ; $4194: $fa $08 $f5

jr_0e8_4197:
    ld bc, $fbe9                                  ; $4197: $01 $e9 $fb
    ld [$f9fe], a                                 ; $419a: $ea $fe $f9
    ld a, [$fef9]                                 ; $419d: $fa $f9 $fe
    ld [bc], a                                    ; $41a0: $02
    rra                                           ; $41a1: $1f
    sub h                                         ; $41a2: $94
    ld [hl], $39                                  ; $41a3: $36 $39
    ld c, [hl]                                    ; $41a5: $4e
    ld a, a                                       ; $41a6: $7f
    sub a                                         ; $41a7: $97
    db $ed                                        ; $41a8: $ed
    rst $08                                       ; $41a9: $cf
    cp b                                          ; $41aa: $b8
    cp a                                          ; $41ab: $bf
    ei                                            ; $41ac: $fb
    rst $38                                       ; $41ad: $ff
    ldh [$7f], a                                  ; $41ae: $e0 $7f
    ld [hl], b                                    ; $41b0: $70
    ccf                                           ; $41b1: $3f
    add hl, sp                                    ; $41b2: $39
    rra                                           ; $41b3: $1f
    add hl, de                                    ; $41b4: $19
    rra                                           ; $41b5: $1f
    rla                                           ; $41b6: $17
    ld [bc], a                                    ; $41b7: $02
    ld a, $02                                     ; $41b8: $3e $02
    ccf                                           ; $41ba: $3f
    dec b                                         ; $41bb: $05
    ld a, a                                       ; $41bc: $7f
    add c                                         ; $41bd: $81
    ld e, a                                       ; $41be: $5f
    ld [bc], a                                    ; $41bf: $02
    inc b                                         ; $41c0: $04
    add h                                         ; $41c1: $84
    ld [bc], a                                    ; $41c2: $02
    ld b, $05                                     ; $41c3: $06 $05
    rlca                                          ; $41c5: $07
    ld [bc], a                                    ; $41c6: $02
    ld b, $02                                     ; $41c7: $06 $02
    inc b                                         ; $41c9: $04
    add d                                         ; $41ca: $82
    ld b, $02                                     ; $41cb: $06 $02
    ld b, $04                                     ; $41cd: $06 $04
    inc c                                         ; $41cf: $0c
    nop                                           ; $41d0: $00
    ld [bc], a                                    ; $41d1: $02
    ld hl, sp-$70                                 ; $41d2: $f8 $90
    jr nc, jr_0e8_41f6                            ; $41d4: $30 $20

    ccf                                           ; $41d6: $3f
    dec l                                         ; $41d7: $2d
    ld l, a                                       ; $41d8: $6f
    ld [hl], l                                    ; $41d9: $75
    rst $38                                       ; $41da: $ff
    db $f4                                        ; $41db: $f4
    cp a                                          ; $41dc: $bf
    db $fc                                        ; $41dd: $fc
    ld [hl], a                                    ; $41de: $77
    ld [hl], h                                    ; $41df: $74
    ld e, a                                       ; $41e0: $5f
    ld l, a                                       ; $41e1: $6f
    scf                                           ; $41e2: $37
    dec [hl]                                      ; $41e3: $35
    ld [bc], a                                    ; $41e4: $02
    rlca                                          ; $41e5: $07
    stop                                          ; $41e6: $10 $00
    inc b                                         ; $41e8: $04
    inc c                                         ; $41e9: $0c
    inc b                                         ; $41ea: $04
    ld [$0c82], sp                                ; $41eb: $08 $82 $0c
    inc b                                         ; $41ee: $04
    ld [bc], a                                    ; $41ef: $02
    ld c, $82                                     ; $41f0: $0e $82
    rlca                                          ; $41f2: $07
    add hl, bc                                    ; $41f3: $09
    ld [bc], a                                    ; $41f4: $02
    rrca                                          ; $41f5: $0f

jr_0e8_41f6:
    ld c, $00                                     ; $41f6: $0e $00
    rst $38                                       ; $41f8: $ff
    dec bc                                        ; $41f9: $0b
    inc bc                                        ; $41fa: $03
    ld a, [$f504]                                 ; $41fb: $fa $04 $f5
    cp $e8                                        ; $41fe: $fe $e8
    ei                                            ; $4200: $fb
    jp hl                                         ; $4201: $e9


    cp $f8                                        ; $4202: $fe $f8
    db $fc                                        ; $4204: $fc
    ld [bc], a                                    ; $4205: $02
    rra                                           ; $4206: $1f
    sub h                                         ; $4207: $94
    inc [hl]                                      ; $4208: $34
    dec sp                                        ; $4209: $3b
    ld e, l                                       ; $420a: $5d
    ld a, a                                       ; $420b: $7f
    xor [hl]                                      ; $420c: $ae
    db $db                                        ; $420d: $db
    rst $08                                       ; $420e: $cf
    cp c                                          ; $420f: $b9
    cp a                                          ; $4210: $bf
    or $ef                                        ; $4211: $f6 $ef
    ret nc                                        ; $4213: $d0

    ld a, a                                       ; $4214: $7f
    ld [hl], b                                    ; $4215: $70
    ccf                                           ; $4216: $3f
    ld [hl-], a                                   ; $4217: $32
    rra                                           ; $4218: $1f
    add hl, de                                    ; $4219: $19
    rra                                           ; $421a: $1f
    rla                                           ; $421b: $17
    ld b, $3e                                     ; $421c: $06 $3e
    ld [bc], a                                    ; $421e: $02
    ld a, a                                       ; $421f: $7f
    add d                                         ; $4220: $82
    ccf                                           ; $4221: $3f
    cpl                                           ; $4222: $2f
    ld [bc], a                                    ; $4223: $02
    inc b                                         ; $4224: $04
    add h                                         ; $4225: $84
    ld [bc], a                                    ; $4226: $02
    ld b, $05                                     ; $4227: $06 $05
    rlca                                          ; $4229: $07
    ld [bc], a                                    ; $422a: $02
    ld b, $02                                     ; $422b: $06 $02
    inc b                                         ; $422d: $04
    add d                                         ; $422e: $82
    ld b, $02                                     ; $422f: $06 $02
    ld b, $04                                     ; $4231: $06 $04
    inc c                                         ; $4233: $0c
    nop                                           ; $4234: $00
    add d                                         ; $4235: $82
    ld hl, sp+$78                                 ; $4236: $f8 $78
    ld [bc], a                                    ; $4238: $02
    ld b, b                                       ; $4239: $40
    add c                                         ; $423a: $81
    ld a, a                                       ; $423b: $7f
    ld [bc], a                                    ; $423c: $02
    ld e, a                                       ; $423d: $5f
    adc c                                         ; $423e: $89
    ld l, l                                       ; $423f: $6d
    ccf                                           ; $4240: $3f
    dec l                                         ; $4241: $2d
    ccf                                           ; $4242: $3f
    dec [hl]                                      ; $4243: $35
    ld a, $26                                     ; $4244: $3e $26
    ld a, h                                       ; $4246: $7c
    ld b, h                                       ; $4247: $44
    ld [bc], a                                    ; $4248: $02
    ld a, [hl]                                    ; $4249: $7e
    add d                                         ; $424a: $82
    ld [hl], a                                    ; $424b: $77
    ld e, c                                       ; $424c: $59
    ld [bc], a                                    ; $424d: $02
    ld a, a                                       ; $424e: $7f
    inc c                                         ; $424f: $0c
    nop                                           ; $4250: $00
    rst $38                                       ; $4251: $ff
    dec c                                         ; $4252: $0d
    inc b                                         ; $4253: $04
    ei                                            ; $4254: $fb
    dec b                                         ; $4255: $05
    ld a, [c]                                     ; $4256: $f2
    ei                                            ; $4257: $fb
    db $e3                                        ; $4258: $e3
    ld sp, hl                                     ; $4259: $f9
    db $e3                                        ; $425a: $e3
    nop                                           ; $425b: $00
    di                                            ; $425c: $f3
    ld sp, hl                                     ; $425d: $f9
    di                                            ; $425e: $f3
    nop                                           ; $425f: $00
    ld [bc], a                                    ; $4260: $02
    rlca                                          ; $4261: $07
    sub a                                         ; $4262: $97
    ld a, [bc]                                    ; $4263: $0a
    dec c                                         ; $4264: $0d
    db $10                                        ; $4265: $10
    rra                                           ; $4266: $1f
    ld [de], a                                    ; $4267: $12
    rra                                           ; $4268: $1f
    ld [hl+], a                                   ; $4269: $22
    ccf                                           ; $426a: $3f
    add hl, hl                                    ; $426b: $29
    ccf                                           ; $426c: $3f
    ld [hl+], a                                   ; $426d: $22
    ccf                                           ; $426e: $3f
    ld b, c                                       ; $426f: $41
    ld a, a                                       ; $4270: $7f
    ld a, [hl+]                                   ; $4271: $2a
    ccf                                           ; $4272: $3f
    ld [hl+], a                                   ; $4273: $22
    ccf                                           ; $4274: $3f
    ld l, b                                       ; $4275: $68
    ld a, a                                       ; $4276: $7f
    ld sp, $7a3f                                  ; $4277: $31 $3f $7a
    inc bc                                        ; $427a: $03
    ld a, a                                       ; $427b: $7f
    add h                                         ; $427c: $84
    call nc, $96ff                                ; $427d: $d4 $ff $96
    rst $38                                       ; $4280: $ff
    ld [bc], a                                    ; $4281: $02
    ld h, b                                       ; $4282: $60
    sub [hl]                                      ; $4283: $96
    ld d, b                                       ; $4284: $50
    jr nc, jr_0e8_428f                            ; $4285: $30 $08

    ld a, b                                       ; $4287: $78
    ld [$2478], sp                                ; $4288: $08 $78 $24
    ld a, h                                       ; $428b: $7c
    inc h                                         ; $428c: $24
    ld a, h                                       ; $428d: $7c
    inc [hl]                                      ; $428e: $34

jr_0e8_428f:
    ld a, h                                       ; $428f: $7c
    ld a, [bc]                                    ; $4290: $0a
    ld a, [hl]                                    ; $4291: $7e
    inc h                                         ; $4292: $24
    ld a, h                                       ; $4293: $7c
    ld l, $7e                                     ; $4294: $2e $7e
    ld b, h                                       ; $4296: $44
    ld a, h                                       ; $4297: $7c
    inc l                                         ; $4298: $2c
    ld a, h                                       ; $4299: $7c
    ld [bc], a                                    ; $429a: $02
    ld a, [hl]                                    ; $429b: $7e
    and d                                         ; $429c: $a2
    ld e, d                                       ; $429d: $5a
    ld a, [hl]                                    ; $429e: $7e
    dec hl                                        ; $429f: $2b
    ld a, a                                       ; $42a0: $7f
    ld e, c                                       ; $42a1: $59
    ld a, a                                       ; $42a2: $7f
    rst $30                                       ; $42a3: $f7
    rst $38                                       ; $42a4: $ff
    ld h, h                                       ; $42a5: $64
    ld a, a                                       ; $42a6: $7f
    or h                                          ; $42a7: $b4
    rst $38                                       ; $42a8: $ff
    and a                                         ; $42a9: $a7
    rst $38                                       ; $42aa: $ff
    and $ff                                       ; $42ab: $e6 $ff
    or h                                          ; $42ad: $b4
    rst $38                                       ; $42ae: $ff
    add sp, -$01                                  ; $42af: $e8 $ff
    ld h, b                                       ; $42b1: $60
    ld a, a                                       ; $42b2: $7f
    ld h, b                                       ; $42b3: $60
    ld a, a                                       ; $42b4: $7f
    ld b, b                                       ; $42b5: $40
    ld a, a                                       ; $42b6: $7f
    ld c, b                                       ; $42b7: $48
    ld a, a                                       ; $42b8: $7f
    jr nz, jr_0e8_42fa                            ; $42b9: $20 $3f

    ld a, b                                       ; $42bb: $78
    ld a, a                                       ; $42bc: $7f
    scf                                           ; $42bd: $37
    ccf                                           ; $42be: $3f
    ld [bc], a                                    ; $42bf: $02
    inc e                                         ; $42c0: $1c
    ld [bc], a                                    ; $42c1: $02
    nop                                           ; $42c2: $00
    sbc h                                         ; $42c3: $9c
    rla                                           ; $42c4: $17
    ld a, a                                       ; $42c5: $7f
    ld a, $7e                                     ; $42c6: $3e $7e
    ld l, l                                       ; $42c8: $6d
    ld a, a                                       ; $42c9: $7f
    ld l, l                                       ; $42ca: $6d
    ld a, a                                       ; $42cb: $7f
    daa                                           ; $42cc: $27
    ld a, a                                       ; $42cd: $7f
    dec h                                         ; $42ce: $25
    ld a, a                                       ; $42cf: $7f
    rlca                                          ; $42d0: $07
    ld a, a                                       ; $42d1: $7f
    ld [de], a                                    ; $42d2: $12
    ld a, [hl]                                    ; $42d3: $7e
    ld [bc], a                                    ; $42d4: $02
    ld a, [hl]                                    ; $42d5: $7e
    ld a, [bc]                                    ; $42d6: $0a
    ld a, [hl]                                    ; $42d7: $7e
    ld [bc], a                                    ; $42d8: $02
    ld a, [hl]                                    ; $42d9: $7e
    inc b                                         ; $42da: $04
    ld a, h                                       ; $42db: $7c
    ld e, $7e                                     ; $42dc: $1e $7e
    ld l, h                                       ; $42de: $6c
    ld a, h                                       ; $42df: $7c
    ld [bc], a                                    ; $42e0: $02
    jr c, jr_0e8_42e5                             ; $42e1: $38 $02

    nop                                           ; $42e3: $00
    rst $38                                       ; $42e4: $ff

jr_0e8_42e5:
    dec c                                         ; $42e5: $0d
    inc b                                         ; $42e6: $04
    ei                                            ; $42e7: $fb
    dec b                                         ; $42e8: $05
    ld a, [c]                                     ; $42e9: $f2
    ei                                            ; $42ea: $fb
    db $e3                                        ; $42eb: $e3
    ld sp, hl                                     ; $42ec: $f9
    db $e3                                        ; $42ed: $e3
    nop                                           ; $42ee: $00
    di                                            ; $42ef: $f3
    ld sp, hl                                     ; $42f0: $f9
    di                                            ; $42f1: $f3
    nop                                           ; $42f2: $00
    ld [bc], a                                    ; $42f3: $02
    rlca                                          ; $42f4: $07
    sub a                                         ; $42f5: $97
    dec c                                         ; $42f6: $0d
    ld a, [bc]                                    ; $42f7: $0a
    jr jr_0e8_4319                                ; $42f8: $18 $1f

jr_0e8_42fa:
    ld [de], a                                    ; $42fa: $12
    rra                                           ; $42fb: $1f
    ld hl, $343f                                  ; $42fc: $21 $3f $34
    ccf                                           ; $42ff: $3f
    add hl, sp                                    ; $4300: $39
    ccf                                           ; $4301: $3f
    jr nz, jr_0e8_4343                            ; $4302: $20 $3f

    ld d, l                                       ; $4304: $55
    ld a, a                                       ; $4305: $7f
    add hl, hl                                    ; $4306: $29
    ccf                                           ; $4307: $3f
    inc [hl]                                      ; $4308: $34
    ccf                                           ; $4309: $3f
    jr c, @+$41                                   ; $430a: $38 $3f

    ld a, l                                       ; $430c: $7d
    inc bc                                        ; $430d: $03
    ld a, a                                       ; $430e: $7f
    add h                                         ; $430f: $84
    call nc, $96ff                                ; $4310: $d4 $ff $96
    rst $38                                       ; $4313: $ff
    ld [bc], a                                    ; $4314: $02
    ld h, b                                       ; $4315: $60
    cp b                                          ; $4316: $b8
    db $10                                        ; $4317: $10
    ld [hl], b                                    ; $4318: $70

jr_0e8_4319:
    ld [$0878], sp                                ; $4319: $08 $78 $08
    ld a, b                                       ; $431c: $78
    inc d                                         ; $431d: $14
    ld a, h                                       ; $431e: $7c
    ld d, [hl]                                    ; $431f: $56
    ld a, [hl]                                    ; $4320: $7e
    inc c                                         ; $4321: $0c
    ld a, h                                       ; $4322: $7c
    ld b, d                                       ; $4323: $42
    ld a, [hl]                                    ; $4324: $7e
    inc d                                         ; $4325: $14
    ld a, h                                       ; $4326: $7c
    ld d, $7e                                     ; $4327: $16 $7e
    ld h, $7e                                     ; $4329: $26 $7e
    ld d, h                                       ; $432b: $54
    ld a, h                                       ; $432c: $7c
    ld a, $7e                                     ; $432d: $3e $7e
    ld e, e                                       ; $432f: $5b
    ld a, a                                       ; $4330: $7f
    add hl, hl                                    ; $4331: $29
    ld a, a                                       ; $4332: $7f
    ld e, c                                       ; $4333: $59
    ld a, a                                       ; $4334: $7f
    ld [hl], a                                    ; $4335: $77
    ld a, a                                       ; $4336: $7f
    and h                                         ; $4337: $a4
    rst $38                                       ; $4338: $ff
    and h                                         ; $4339: $a4
    rst $38                                       ; $433a: $ff
    rst $20                                       ; $433b: $e7
    rst $38                                       ; $433c: $ff
    xor [hl]                                      ; $433d: $ae
    rst $38                                       ; $433e: $ff
    db $ec                                        ; $433f: $ec
    rst $38                                       ; $4340: $ff
    ret c                                         ; $4341: $d8

    cp a                                          ; $4342: $bf

jr_0e8_4343:
    ldh [rIE], a                                  ; $4343: $e0 $ff
    ret nc                                        ; $4345: $d0

    rst $38                                       ; $4346: $ff
    and b                                         ; $4347: $a0
    rst $38                                       ; $4348: $ff
    call nz, Call_0e8_60ff                        ; $4349: $c4 $ff $60
    ld a, a                                       ; $434c: $7f
    inc e                                         ; $434d: $1c
    rra                                           ; $434e: $1f
    ld [bc], a                                    ; $434f: $02
    inc bc                                        ; $4350: $03
    inc b                                         ; $4351: $04
    nop                                           ; $4352: $00
    sbc e                                         ; $4353: $9b
    inc de                                        ; $4354: $13
    ld a, a                                       ; $4355: $7f
    ccf                                           ; $4356: $3f
    ld a, a                                       ; $4357: $7f
    ld l, l                                       ; $4358: $6d
    ld a, a                                       ; $4359: $7f
    ld l, l                                       ; $435a: $6d
    ld a, a                                       ; $435b: $7f
    daa                                           ; $435c: $27
    ld a, a                                       ; $435d: $7f
    ld b, $7e                                     ; $435e: $06 $7e
    ld d, $7e                                     ; $4360: $16 $7e
    ld [bc], a                                    ; $4362: $02
    ld a, [hl]                                    ; $4363: $7e
    ld [bc], a                                    ; $4364: $02
    ld a, [hl]                                    ; $4365: $7e
    ld [de], a                                    ; $4366: $12
    ld a, [hl]                                    ; $4367: $7e
    ld [bc], a                                    ; $4368: $02
    ld a, [hl]                                    ; $4369: $7e
    inc b                                         ; $436a: $04
    ld a, h                                       ; $436b: $7c
    inc a                                         ; $436c: $3c
    ld a, h                                       ; $436d: $7c
    ld c, b                                       ; $436e: $48
    inc bc                                        ; $436f: $03
    ld a, b                                       ; $4370: $78
    ld [bc], a                                    ; $4371: $02
    nop                                           ; $4372: $00
    rst $38                                       ; $4373: $ff
    dec c                                         ; $4374: $0d
    inc b                                         ; $4375: $04
    ei                                            ; $4376: $fb
    dec b                                         ; $4377: $05
    ld a, [c]                                     ; $4378: $f2
    ei                                            ; $4379: $fb
    db $e4                                        ; $437a: $e4
    ld sp, hl                                     ; $437b: $f9
    db $e4                                        ; $437c: $e4
    nop                                           ; $437d: $00
    db $f4                                        ; $437e: $f4
    ld sp, hl                                     ; $437f: $f9
    db $f4                                        ; $4380: $f4
    nop                                           ; $4381: $00
    ld [bc], a                                    ; $4382: $02
    rlca                                          ; $4383: $07
    sub a                                         ; $4384: $97
    dec c                                         ; $4385: $0d
    ld a, [bc]                                    ; $4386: $0a
    jr jr_0e8_43a8                                ; $4387: $18 $1f

    ld [de], a                                    ; $4389: $12
    rra                                           ; $438a: $1f
    ld hl, $343f                                  ; $438b: $21 $3f $34
    ccf                                           ; $438e: $3f
    add hl, sp                                    ; $438f: $39
    ccf                                           ; $4390: $3f
    jr nc, jr_0e8_43d2                            ; $4391: $30 $3f

    dec [hl]                                      ; $4393: $35
    ccf                                           ; $4394: $3f
    inc d                                         ; $4395: $14
    rra                                           ; $4396: $1f
    ld a, [hl-]                                   ; $4397: $3a
    ccf                                           ; $4398: $3f
    inc a                                         ; $4399: $3c
    ccf                                           ; $439a: $3f
    ld a, [hl]                                    ; $439b: $7e
    inc bc                                        ; $439c: $03
    ld a, a                                       ; $439d: $7f
    add h                                         ; $439e: $84
    sub h                                         ; $439f: $94
    rst $38                                       ; $43a0: $ff
    rst $10                                       ; $43a1: $d7
    rst $38                                       ; $43a2: $ff
    ld [bc], a                                    ; $43a3: $02
    ld h, b                                       ; $43a4: $60
    or [hl]                                       ; $43a5: $b6
    db $10                                        ; $43a6: $10
    ld [hl], b                                    ; $43a7: $70

jr_0e8_43a8:
    ld [$0878], sp                                ; $43a8: $08 $78 $08
    ld a, b                                       ; $43ab: $78
    inc d                                         ; $43ac: $14
    ld a, h                                       ; $43ad: $7c
    ld d, [hl]                                    ; $43ae: $56
    ld a, [hl]                                    ; $43af: $7e
    inc c                                         ; $43b0: $0c
    ld a, h                                       ; $43b1: $7c
    ld b, d                                       ; $43b2: $42
    ld a, [hl]                                    ; $43b3: $7e
    inc d                                         ; $43b4: $14
    ld a, h                                       ; $43b5: $7c
    ld b, [hl]                                    ; $43b6: $46
    ld a, [hl]                                    ; $43b7: $7e
    ld [de], a                                    ; $43b8: $12
    ld a, [hl]                                    ; $43b9: $7e
    ld l, $7e                                     ; $43ba: $2e $7e
    ld e, [hl]                                    ; $43bc: $5e
    ld a, [hl]                                    ; $43bd: $7e
    ld e, d                                       ; $43be: $5a
    ld a, [hl]                                    ; $43bf: $7e
    add hl, hl                                    ; $43c0: $29
    ld a, a                                       ; $43c1: $7f
    ld c, e                                       ; $43c2: $4b
    ld a, a                                       ; $43c3: $7f
    halt                                          ; $43c4: $76
    ld a, a                                       ; $43c5: $7f
    halt                                          ; $43c6: $76
    ld a, a                                       ; $43c7: $7f
    or e                                          ; $43c8: $b3
    rst $38                                       ; $43c9: $ff
    di                                            ; $43ca: $f3
    rst $38                                       ; $43cb: $ff
    or d                                          ; $43cc: $b2
    rst $38                                       ; $43cd: $ff
    ld [$6cbf], a                                 ; $43ce: $ea $bf $6c
    ld a, a                                       ; $43d1: $7f

jr_0e8_43d2:
    ld h, b                                       ; $43d2: $60
    ld a, a                                       ; $43d3: $7f
    ret nc                                        ; $43d4: $d0

    rst $38                                       ; $43d5: $ff
    ldh [rIE], a                                  ; $43d6: $e0 $ff
    ld b, b                                       ; $43d8: $40
    ld a, a                                       ; $43d9: $7f
    add hl, sp                                    ; $43da: $39
    ccf                                           ; $43db: $3f
    ld [bc], a                                    ; $43dc: $02
    rra                                           ; $43dd: $1f
    ld b, $00                                     ; $43de: $06 $00
    sub a                                         ; $43e0: $97
    rla                                           ; $43e1: $17
    ld a, a                                       ; $43e2: $7f
    dec a                                         ; $43e3: $3d
    ld a, a                                       ; $43e4: $7f
    ld l, l                                       ; $43e5: $6d
    ld a, a                                       ; $43e6: $7f
    dec l                                         ; $43e7: $2d
    ld a, a                                       ; $43e8: $7f
    daa                                           ; $43e9: $27
    ld a, a                                       ; $43ea: $7f
    rlca                                          ; $43eb: $07
    ld a, a                                       ; $43ec: $7f
    ld d, $7e                                     ; $43ed: $16 $7e
    ld a, [bc]                                    ; $43ef: $0a
    ld a, [hl]                                    ; $43f0: $7e
    ld [de], a                                    ; $43f1: $12
    ld a, [hl]                                    ; $43f2: $7e
    ld b, d                                       ; $43f3: $42
    ld a, [hl]                                    ; $43f4: $7e
    inc a                                         ; $43f5: $3c
    ld a, h                                       ; $43f6: $7c
    ld c, b                                       ; $43f7: $48
    inc bc                                        ; $43f8: $03
    ld a, b                                       ; $43f9: $78
    ld [bc], a                                    ; $43fa: $02
    ld [hl], b                                    ; $43fb: $70
    inc b                                         ; $43fc: $04
    nop                                           ; $43fd: $00
    rst $38                                       ; $43fe: $ff
    dec c                                         ; $43ff: $0d
    inc b                                         ; $4400: $04
    ei                                            ; $4401: $fb
    dec b                                         ; $4402: $05
    ld a, [c]                                     ; $4403: $f2
    ei                                            ; $4404: $fb
    db $e3                                        ; $4405: $e3
    ld sp, hl                                     ; $4406: $f9
    db $e3                                        ; $4407: $e3
    nop                                           ; $4408: $00
    di                                            ; $4409: $f3
    ld sp, hl                                     ; $440a: $f9
    di                                            ; $440b: $f3
    nop                                           ; $440c: $00
    ld [bc], a                                    ; $440d: $02
    rlca                                          ; $440e: $07
    sub a                                         ; $440f: $97
    ld a, [bc]                                    ; $4410: $0a
    dec c                                         ; $4411: $0d
    db $10                                        ; $4412: $10
    rra                                           ; $4413: $1f
    ld [de], a                                    ; $4414: $12
    rra                                           ; $4415: $1f
    ld [hl+], a                                   ; $4416: $22
    ccf                                           ; $4417: $3f
    add hl, hl                                    ; $4418: $29
    ccf                                           ; $4419: $3f
    ld [hl+], a                                   ; $441a: $22
    ccf                                           ; $441b: $3f
    ld b, c                                       ; $441c: $41
    ld a, a                                       ; $441d: $7f
    ld a, [hl+]                                   ; $441e: $2a
    ccf                                           ; $441f: $3f
    ld [hl+], a                                   ; $4420: $22
    ccf                                           ; $4421: $3f
    ld l, b                                       ; $4422: $68
    ld a, a                                       ; $4423: $7f
    ld sp, $7a3f                                  ; $4424: $31 $3f $7a
    inc bc                                        ; $4427: $03
    ld a, a                                       ; $4428: $7f
    add h                                         ; $4429: $84
    call nc, $96ff                                ; $442a: $d4 $ff $96
    rst $38                                       ; $442d: $ff
    ld [bc], a                                    ; $442e: $02
    ld h, b                                       ; $442f: $60
    sub [hl]                                      ; $4430: $96
    ld d, b                                       ; $4431: $50
    jr nc, jr_0e8_443c                            ; $4432: $30 $08

    ld a, b                                       ; $4434: $78
    ld [$2478], sp                                ; $4435: $08 $78 $24
    ld a, h                                       ; $4438: $7c
    inc h                                         ; $4439: $24
    ld a, h                                       ; $443a: $7c
    inc [hl]                                      ; $443b: $34

jr_0e8_443c:
    ld a, h                                       ; $443c: $7c
    ld a, [bc]                                    ; $443d: $0a
    ld a, [hl]                                    ; $443e: $7e
    inc h                                         ; $443f: $24
    ld a, h                                       ; $4440: $7c
    ld l, $7e                                     ; $4441: $2e $7e
    ld b, h                                       ; $4443: $44
    ld a, h                                       ; $4444: $7c
    inc l                                         ; $4445: $2c
    ld a, h                                       ; $4446: $7c
    ld [bc], a                                    ; $4447: $02
    ld a, [hl]                                    ; $4448: $7e
    and d                                         ; $4449: $a2
    ld e, d                                       ; $444a: $5a
    ld a, [hl]                                    ; $444b: $7e
    dec hl                                        ; $444c: $2b
    ld a, a                                       ; $444d: $7f
    ld e, c                                       ; $444e: $59
    ld a, a                                       ; $444f: $7f
    rst $30                                       ; $4450: $f7
    rst $38                                       ; $4451: $ff
    ld [hl], d                                    ; $4452: $72
    ld a, a                                       ; $4453: $7f
    or d                                          ; $4454: $b2
    rst $38                                       ; $4455: $ff
    cp c                                          ; $4456: $b9
    rst $38                                       ; $4457: $ff
    jp hl                                         ; $4458: $e9


    rst $38                                       ; $4459: $ff
    and l                                         ; $445a: $a5
    rst $38                                       ; $445b: $ff
    ld [$60ff], a                                 ; $445c: $ea $ff $60
    ld a, a                                       ; $445f: $7f
    ld h, b                                       ; $4460: $60
    ld a, a                                       ; $4461: $7f
    ld b, b                                       ; $4462: $40
    ld a, a                                       ; $4463: $7f
    ld c, b                                       ; $4464: $48
    ld a, a                                       ; $4465: $7f
    jr nz, jr_0e8_44a7                            ; $4466: $20 $3f

    jr c, jr_0e8_44a9                             ; $4468: $38 $3f

    rla                                           ; $446a: $17
    rra                                           ; $446b: $1f
    ld [bc], a                                    ; $446c: $02
    ld e, $02                                     ; $446d: $1e $02
    nop                                           ; $446f: $00
    sbc c                                         ; $4470: $99
    rla                                           ; $4471: $17
    ld a, a                                       ; $4472: $7f
    ld a, $7e                                     ; $4473: $3e $7e
    ld l, l                                       ; $4475: $6d
    ld a, a                                       ; $4476: $7f
    ld l, l                                       ; $4477: $6d
    ld a, a                                       ; $4478: $7f
    daa                                           ; $4479: $27
    ld a, a                                       ; $447a: $7f
    dec h                                         ; $447b: $25
    ld a, a                                       ; $447c: $7f
    rlca                                          ; $447d: $07
    ld a, a                                       ; $447e: $7f
    ld [de], a                                    ; $447f: $12
    ld a, [hl]                                    ; $4480: $7e
    inc bc                                        ; $4481: $03
    ld a, a                                       ; $4482: $7f
    dec bc                                        ; $4483: $0b
    ld a, a                                       ; $4484: $7f
    ld [hl+], a                                   ; $4485: $22
    ld a, [hl]                                    ; $4486: $7e
    inc c                                         ; $4487: $0c
    ld a, h                                       ; $4488: $7c
    jr c, jr_0e8_448e                             ; $4489: $38 $03

    ld a, b                                       ; $448b: $78
    inc b                                         ; $448c: $04
    nop                                           ; $448d: $00

jr_0e8_448e:
    rst $38                                       ; $448e: $ff
    dec c                                         ; $448f: $0d
    inc b                                         ; $4490: $04
    ei                                            ; $4491: $fb
    dec b                                         ; $4492: $05
    ld a, [c]                                     ; $4493: $f2
    ei                                            ; $4494: $fb
    db $e3                                        ; $4495: $e3
    ld sp, hl                                     ; $4496: $f9
    db $e3                                        ; $4497: $e3
    nop                                           ; $4498: $00
    di                                            ; $4499: $f3
    ld sp, hl                                     ; $449a: $f9
    di                                            ; $449b: $f3
    nop                                           ; $449c: $00
    ld [bc], a                                    ; $449d: $02
    rlca                                          ; $449e: $07
    sbc b                                         ; $449f: $98
    add hl, bc                                    ; $44a0: $09
    ld c, $10                                     ; $44a1: $0e $10
    rra                                           ; $44a3: $1f
    inc d                                         ; $44a4: $14
    rra                                           ; $44a5: $1f
    inc h                                         ; $44a6: $24

jr_0e8_44a7:
    ccf                                           ; $44a7: $3f
    ld [hl-], a                                   ; $44a8: $32

jr_0e8_44a9:
    ccf                                           ; $44a9: $3f
    inc h                                         ; $44aa: $24
    ccf                                           ; $44ab: $3f
    ld d, d                                       ; $44ac: $52
    ld a, a                                       ; $44ad: $7f
    inc [hl]                                      ; $44ae: $34
    ccf                                           ; $44af: $3f
    ld h, h                                       ; $44b0: $64
    ld a, a                                       ; $44b1: $7f
    ld [hl], c                                    ; $44b2: $71
    ld a, a                                       ; $44b3: $7f
    ld [hl+], a                                   ; $44b4: $22
    ccf                                           ; $44b5: $3f
    ld [hl], l                                    ; $44b6: $75
    ld a, a                                       ; $44b7: $7f
    ld [bc], a                                    ; $44b8: $02
    rst $38                                       ; $44b9: $ff
    add h                                         ; $44ba: $84
    sub h                                         ; $44bb: $94
    rst $38                                       ; $44bc: $ff
    sub [hl]                                      ; $44bd: $96
    rst $38                                       ; $44be: $ff
    ld [bc], a                                    ; $44bf: $02
    ld h, b                                       ; $44c0: $60
    sub [hl]                                      ; $44c1: $96
    jr nc, jr_0e8_4514                            ; $44c2: $30 $50

    jr jr_0e8_453e                                ; $44c4: $18 $78

    ld [$4478], sp                                ; $44c6: $08 $78 $44
    ld a, h                                       ; $44c9: $7c
    ld b, h                                       ; $44ca: $44
    ld a, h                                       ; $44cb: $7c
    ld h, h                                       ; $44cc: $64
    ld a, h                                       ; $44cd: $7c
    inc c                                         ; $44ce: $0c
    ld a, h                                       ; $44cf: $7c
    ld h, [hl]                                    ; $44d0: $66
    ld a, [hl]                                    ; $44d1: $7e
    ld e, h                                       ; $44d2: $5c
    ld a, h                                       ; $44d3: $7c
    inc [hl]                                      ; $44d4: $34
    ld a, h                                       ; $44d5: $7c
    ld c, h                                       ; $44d6: $4c
    ld a, h                                       ; $44d7: $7c
    ld [bc], a                                    ; $44d8: $02
    ld a, [hl]                                    ; $44d9: $7e
    and d                                         ; $44da: $a2
    ld e, d                                       ; $44db: $5a
    ld a, [hl]                                    ; $44dc: $7e
    dec hl                                        ; $44dd: $2b
    ld a, a                                       ; $44de: $7f
    ld d, c                                       ; $44df: $51
    ld a, a                                       ; $44e0: $7f
    rst $10                                       ; $44e1: $d7
    rst $38                                       ; $44e2: $ff
    or $ff                                        ; $44e3: $f6 $ff
    or d                                          ; $44e5: $b2
    rst $38                                       ; $44e6: $ff
    or e                                          ; $44e7: $b3
    rst $38                                       ; $44e8: $ff
    ld a, [c]                                     ; $44e9: $f2
    rst $38                                       ; $44ea: $ff
    ld l, d                                       ; $44eb: $6a
    ld a, a                                       ; $44ec: $7f
    ld l, h                                       ; $44ed: $6c
    ld a, a                                       ; $44ee: $7f
    ld b, b                                       ; $44ef: $40
    ld a, a                                       ; $44f0: $7f
    ld b, b                                       ; $44f1: $40
    ld a, a                                       ; $44f2: $7f
    ld c, b                                       ; $44f3: $48
    ld a, a                                       ; $44f4: $7f
    ld b, b                                       ; $44f5: $40
    ld a, a                                       ; $44f6: $7f
    jr nz, jr_0e8_4538                            ; $44f7: $20 $3f

    inc a                                         ; $44f9: $3c
    ccf                                           ; $44fa: $3f
    inc de                                        ; $44fb: $13
    rra                                           ; $44fc: $1f
    ld [bc], a                                    ; $44fd: $02
    ld e, $02                                     ; $44fe: $1e $02
    nop                                           ; $4500: $00
    sbc d                                         ; $4501: $9a
    ld d, $7e                                     ; $4502: $16 $7e
    dec a                                         ; $4504: $3d
    ld a, a                                       ; $4505: $7f
    ld a, l                                       ; $4506: $7d
    ld a, a                                       ; $4507: $7f
    ld l, a                                       ; $4508: $6f
    ld a, a                                       ; $4509: $7f
    dec h                                         ; $450a: $25
    ld a, a                                       ; $450b: $7f
    rla                                           ; $450c: $17
    ld a, a                                       ; $450d: $7f
    rla                                           ; $450e: $17
    ld a, l                                       ; $450f: $7d
    rlca                                          ; $4510: $07
    ld a, a                                       ; $4511: $7f
    dec bc                                        ; $4512: $0b
    ld a, a                                       ; $4513: $7f

jr_0e8_4514:
    dec b                                         ; $4514: $05
    ld a, a                                       ; $4515: $7f
    inc de                                        ; $4516: $13
    ld a, a                                       ; $4517: $7f
    ld b, $7e                                     ; $4518: $06 $7e
    jr c, jr_0e8_4594                             ; $451a: $38 $78

    ld [bc], a                                    ; $451c: $02
    ld b, b                                       ; $451d: $40
    inc b                                         ; $451e: $04
    nop                                           ; $451f: $00
    rst $38                                       ; $4520: $ff
    dec c                                         ; $4521: $0d
    inc b                                         ; $4522: $04
    ei                                            ; $4523: $fb
    dec b                                         ; $4524: $05
    ld a, [c]                                     ; $4525: $f2
    ei                                            ; $4526: $fb
    db $e4                                        ; $4527: $e4
    ld sp, hl                                     ; $4528: $f9
    db $e4                                        ; $4529: $e4
    nop                                           ; $452a: $00
    db $f4                                        ; $452b: $f4
    ld sp, hl                                     ; $452c: $f9
    db $f4                                        ; $452d: $f4
    nop                                           ; $452e: $00
    ld [bc], a                                    ; $452f: $02
    rlca                                          ; $4530: $07
    sub a                                         ; $4531: $97
    add hl, bc                                    ; $4532: $09
    ld c, $10                                     ; $4533: $0e $10
    rra                                           ; $4535: $1f
    inc d                                         ; $4536: $14
    rra                                           ; $4537: $1f

jr_0e8_4538:
    inc h                                         ; $4538: $24
    ccf                                           ; $4539: $3f
    ld [hl-], a                                   ; $453a: $32
    ccf                                           ; $453b: $3f
    inc h                                         ; $453c: $24
    ccf                                           ; $453d: $3f

jr_0e8_453e:
    ld d, d                                       ; $453e: $52
    ld a, a                                       ; $453f: $7f
    inc [hl]                                      ; $4540: $34
    ccf                                           ; $4541: $3f
    ld c, c                                       ; $4542: $49
    ld a, a                                       ; $4543: $7f
    ld h, d                                       ; $4544: $62
    ld a, a                                       ; $4545: $7f
    ld h, l                                       ; $4546: $65
    ld a, a                                       ; $4547: $7f
    ld l, e                                       ; $4548: $6b
    inc bc                                        ; $4549: $03
    ld a, a                                       ; $454a: $7f
    add h                                         ; $454b: $84
    sub h                                         ; $454c: $94
    rst $38                                       ; $454d: $ff
    rst $10                                       ; $454e: $d7
    rst $38                                       ; $454f: $ff
    ld [bc], a                                    ; $4550: $02
    ld h, b                                       ; $4551: $60
    sub [hl]                                      ; $4552: $96
    jr nc, jr_0e8_45a5                            ; $4553: $30 $50

    jr jr_0e8_45cf                                ; $4555: $18 $78

    ld [$4478], sp                                ; $4557: $08 $78 $44
    ld a, h                                       ; $455a: $7c
    ld b, h                                       ; $455b: $44
    ld a, h                                       ; $455c: $7c
    ld h, h                                       ; $455d: $64
    ld a, h                                       ; $455e: $7c
    inc c                                         ; $455f: $0c
    ld a, h                                       ; $4560: $7c
    ld h, h                                       ; $4561: $64
    ld a, h                                       ; $4562: $7c
    inc a                                         ; $4563: $3c
    ld a, h                                       ; $4564: $7c
    ld l, b                                       ; $4565: $68
    ld a, b                                       ; $4566: $78
    inc e                                         ; $4567: $1c
    ld a, h                                       ; $4568: $7c
    ld [bc], a                                    ; $4569: $02
    ld a, [hl]                                    ; $456a: $7e
    sbc l                                         ; $456b: $9d
    ld e, d                                       ; $456c: $5a
    ld a, [hl]                                    ; $456d: $7e
    add hl, hl                                    ; $456e: $29
    ld a, a                                       ; $456f: $7f
    ld c, e                                       ; $4570: $4b
    ld a, a                                       ; $4571: $7f
    or $ff                                        ; $4572: $f6 $ff
    and h                                         ; $4574: $a4
    rst $38                                       ; $4575: $ff
    or a                                          ; $4576: $b7
    rst $38                                       ; $4577: $ff
    and [hl]                                      ; $4578: $a6
    rst $38                                       ; $4579: $ff
    and $ff                                       ; $457a: $e6 $ff
    db $f4                                        ; $457c: $f4
    rst $38                                       ; $457d: $ff
    ld l, b                                       ; $457e: $68
    ld a, a                                       ; $457f: $7f
    ld d, b                                       ; $4580: $50
    ld a, a                                       ; $4581: $7f
    ld c, b                                       ; $4582: $48
    ld a, a                                       ; $4583: $7f
    ld b, d                                       ; $4584: $42
    ld a, a                                       ; $4585: $7f
    inc a                                         ; $4586: $3c
    ccf                                           ; $4587: $3f
    inc de                                        ; $4588: $13
    inc bc                                        ; $4589: $03
    rra                                           ; $458a: $1f
    ld [bc], a                                    ; $458b: $02
    ld c, $04                                     ; $458c: $0e $04
    nop                                           ; $458e: $00
    sbc b                                         ; $458f: $98
    ld d, $7e                                     ; $4590: $16 $7e
    ld a, $7e                                     ; $4592: $3e $7e

jr_0e8_4594:
    ld l, l                                       ; $4594: $6d
    ld a, a                                       ; $4595: $7f
    cpl                                           ; $4596: $2f
    ld a, a                                       ; $4597: $7f
    dec h                                         ; $4598: $25
    ld a, a                                       ; $4599: $7f
    rla                                           ; $459a: $17
    ld a, l                                       ; $459b: $7d
    rla                                           ; $459c: $17
    ld a, a                                       ; $459d: $7f
    ld b, $7e                                     ; $459e: $06 $7e
    inc bc                                        ; $45a0: $03
    ld a, a                                       ; $45a1: $7f
    rlca                                          ; $45a2: $07
    ld a, a                                       ; $45a3: $7f
    ld [bc], a                                    ; $45a4: $02

jr_0e8_45a5:
    ld a, [hl]                                    ; $45a5: $7e
    inc e                                         ; $45a6: $1c
    ld a, h                                       ; $45a7: $7c
    ld [bc], a                                    ; $45a8: $02
    ld a, b                                       ; $45a9: $78
    ld b, $00                                     ; $45aa: $06 $00
    rst $38                                       ; $45ac: $ff
    dec c                                         ; $45ad: $0d
    inc b                                         ; $45ae: $04
    ei                                            ; $45af: $fb
    dec b                                         ; $45b0: $05
    ld a, [c]                                     ; $45b1: $f2
    ei                                            ; $45b2: $fb
    db $e3                                        ; $45b3: $e3
    ld sp, hl                                     ; $45b4: $f9
    db $e3                                        ; $45b5: $e3
    nop                                           ; $45b6: $00
    di                                            ; $45b7: $f3
    ld sp, hl                                     ; $45b8: $f9
    di                                            ; $45b9: $f3
    nop                                           ; $45ba: $00
    ld [bc], a                                    ; $45bb: $02
    rlca                                          ; $45bc: $07
    sub a                                         ; $45bd: $97
    ld a, [bc]                                    ; $45be: $0a
    dec c                                         ; $45bf: $0d
    db $10                                        ; $45c0: $10
    rra                                           ; $45c1: $1f
    ld [de], a                                    ; $45c2: $12
    rra                                           ; $45c3: $1f
    ld [hl+], a                                   ; $45c4: $22
    ccf                                           ; $45c5: $3f
    add hl, hl                                    ; $45c6: $29
    ccf                                           ; $45c7: $3f
    ld [hl+], a                                   ; $45c8: $22
    ccf                                           ; $45c9: $3f
    ld b, c                                       ; $45ca: $41
    ld a, a                                       ; $45cb: $7f
    ld a, [hl+]                                   ; $45cc: $2a
    ccf                                           ; $45cd: $3f
    ld [hl+], a                                   ; $45ce: $22

jr_0e8_45cf:
    ccf                                           ; $45cf: $3f
    ld l, b                                       ; $45d0: $68
    ld a, a                                       ; $45d1: $7f
    ld sp, $7a3f                                  ; $45d2: $31 $3f $7a
    inc bc                                        ; $45d5: $03
    ld a, a                                       ; $45d6: $7f
    add h                                         ; $45d7: $84
    call nc, $96ff                                ; $45d8: $d4 $ff $96
    rst $38                                       ; $45db: $ff
    ld [bc], a                                    ; $45dc: $02
    ld h, b                                       ; $45dd: $60
    sub [hl]                                      ; $45de: $96
    ld d, b                                       ; $45df: $50
    jr nc, jr_0e8_45ea                            ; $45e0: $30 $08

    ld a, b                                       ; $45e2: $78
    ld [$2478], sp                                ; $45e3: $08 $78 $24
    ld a, h                                       ; $45e6: $7c
    inc h                                         ; $45e7: $24
    ld a, h                                       ; $45e8: $7c
    inc [hl]                                      ; $45e9: $34

jr_0e8_45ea:
    ld a, h                                       ; $45ea: $7c
    ld a, [bc]                                    ; $45eb: $0a
    ld a, [hl]                                    ; $45ec: $7e
    inc h                                         ; $45ed: $24
    ld a, h                                       ; $45ee: $7c
    ld l, $7e                                     ; $45ef: $2e $7e
    ld b, h                                       ; $45f1: $44
    ld a, h                                       ; $45f2: $7c
    inc l                                         ; $45f3: $2c
    ld a, h                                       ; $45f4: $7c
    ld [bc], a                                    ; $45f5: $02
    ld a, [hl]                                    ; $45f6: $7e
    sbc a                                         ; $45f7: $9f
    ld e, d                                       ; $45f8: $5a
    ld a, [hl]                                    ; $45f9: $7e
    dec hl                                        ; $45fa: $2b
    ld a, a                                       ; $45fb: $7f
    ld e, c                                       ; $45fc: $59
    ld a, a                                       ; $45fd: $7f
    rst $20                                       ; $45fe: $e7
    rst $38                                       ; $45ff: $ff
    ld h, h                                       ; $4600: $64
    ld a, a                                       ; $4601: $7f
    db $ec                                        ; $4602: $ec
    rst $38                                       ; $4603: $ff
    rst $08                                       ; $4604: $cf
    rst $38                                       ; $4605: $ff
    adc $ff                                       ; $4606: $ce $ff
    db $ec                                        ; $4608: $ec
    rst $38                                       ; $4609: $ff
    ld hl, sp-$01                                 ; $460a: $f8 $ff
    ld d, b                                       ; $460c: $50
    ld a, a                                       ; $460d: $7f
    ldh [rIE], a                                  ; $460e: $e0 $ff
    ret z                                         ; $4610: $c8

    rst $38                                       ; $4611: $ff
    ld c, h                                       ; $4612: $4c
    ld a, a                                       ; $4613: $7f
    jr nz, jr_0e8_4655                            ; $4614: $20 $3f

    jr jr_0e8_461b                                ; $4616: $18 $03

    rra                                           ; $4618: $1f
    inc b                                         ; $4619: $04
    nop                                           ; $461a: $00

jr_0e8_461b:
    sbc e                                         ; $461b: $9b
    rla                                           ; $461c: $17
    ld a, a                                       ; $461d: $7f
    ld a, $7e                                     ; $461e: $3e $7e
    ld l, l                                       ; $4620: $6d
    ld a, a                                       ; $4621: $7f
    ld l, l                                       ; $4622: $6d
    ld a, a                                       ; $4623: $7f
    daa                                           ; $4624: $27
    ld a, a                                       ; $4625: $7f
    dec h                                         ; $4626: $25
    ld a, a                                       ; $4627: $7f
    rlca                                          ; $4628: $07
    ld a, a                                       ; $4629: $7f
    ld [de], a                                    ; $462a: $12
    ld a, [hl]                                    ; $462b: $7e
    ld [bc], a                                    ; $462c: $02
    ld a, [hl]                                    ; $462d: $7e
    ld a, [bc]                                    ; $462e: $0a
    ld a, [hl]                                    ; $462f: $7e
    ld [bc], a                                    ; $4630: $02
    ld a, [hl]                                    ; $4631: $7e
    inc b                                         ; $4632: $04
    ld a, h                                       ; $4633: $7c
    inc e                                         ; $4634: $1c
    ld a, h                                       ; $4635: $7c
    ld l, b                                       ; $4636: $68
    inc bc                                        ; $4637: $03
    ld a, b                                       ; $4638: $78
    ld [bc], a                                    ; $4639: $02
    nop                                           ; $463a: $00
    rst $38                                       ; $463b: $ff
    dec c                                         ; $463c: $0d
    inc b                                         ; $463d: $04
    ei                                            ; $463e: $fb
    dec b                                         ; $463f: $05
    ld a, [c]                                     ; $4640: $f2
    ei                                            ; $4641: $fb
    db $e3                                        ; $4642: $e3
    ld sp, hl                                     ; $4643: $f9
    db $e3                                        ; $4644: $e3
    nop                                           ; $4645: $00
    di                                            ; $4646: $f3
    ld sp, hl                                     ; $4647: $f9
    di                                            ; $4648: $f3
    nop                                           ; $4649: $00
    ld [bc], a                                    ; $464a: $02
    rlca                                          ; $464b: $07
    sbc [hl]                                      ; $464c: $9e
    ld a, [bc]                                    ; $464d: $0a
    dec c                                         ; $464e: $0d
    dec d                                         ; $464f: $15
    ld a, [de]                                    ; $4650: $1a
    rla                                           ; $4651: $17
    jr jr_0e8_4683                                ; $4652: $18 $2f

    inc a                                         ; $4654: $3c

jr_0e8_4655:
    dec sp                                        ; $4655: $3b
    ld a, $2f                                     ; $4656: $3e $2f
    ld [hl-], a                                   ; $4658: $32
    ld e, a                                       ; $4659: $5f
    ld a, c                                       ; $465a: $79
    ld l, $3b                                     ; $465b: $2e $3b
    cpl                                           ; $465d: $2f
    inc a                                         ; $465e: $3c
    ld a, e                                       ; $465f: $7b
    ld a, a                                       ; $4660: $7f
    inc l                                         ; $4661: $2c
    ccf                                           ; $4662: $3f
    ld e, a                                       ; $4663: $5f
    ld a, a                                       ; $4664: $7f
    ld b, a                                       ; $4665: $47
    ld a, [hl]                                    ; $4666: $7e
    add [hl]                                      ; $4667: $86
    db $fd                                        ; $4668: $fd
    rst $08                                       ; $4669: $cf
    db $fc                                        ; $466a: $fc
    ld [bc], a                                    ; $466b: $02
    ld h, b                                       ; $466c: $60
    adc c                                         ; $466d: $89
    ld d, b                                       ; $466e: $50
    jr nc, jr_0e8_4699                            ; $466f: $30 $28

    ld e, b                                       ; $4671: $58
    ld l, b                                       ; $4672: $68
    jr jr_0e8_46e9                                ; $4673: $18 $74

    inc a                                         ; $4675: $3c
    ld e, h                                       ; $4676: $5c
    ld [bc], a                                    ; $4677: $02
    ld a, h                                       ; $4678: $7c
    xor e                                         ; $4679: $ab
    ld c, h                                       ; $467a: $4c
    ld a, d                                       ; $467b: $7a
    ld e, $74                                     ; $467c: $1e $74
    ld e, h                                       ; $467e: $5c
    ld a, d                                       ; $467f: $7a
    ld a, $5c                                     ; $4680: $3e $5c
    ld a, h                                       ; $4682: $7c

jr_0e8_4683:
    inc h                                         ; $4683: $24
    ld a, h                                       ; $4684: $7c
    ld d, d                                       ; $4685: $52
    ld a, [hl]                                    ; $4686: $7e
    ld h, [hl]                                    ; $4687: $66
    ld a, [hl]                                    ; $4688: $7e
    ld h, c                                       ; $4689: $61
    ccf                                           ; $468a: $3f
    ld [hl], e                                    ; $468b: $73
    ccf                                           ; $468c: $3f
    ld a, [hl]                                    ; $468d: $7e
    ld a, l                                       ; $468e: $7d
    or a                                          ; $468f: $b7
    db $fc                                        ; $4690: $fc
    db $e4                                        ; $4691: $e4
    rst $38                                       ; $4692: $ff
    xor [hl]                                      ; $4693: $ae
    db $fd                                        ; $4694: $fd
    rst $20                                       ; $4695: $e7
    db $fc                                        ; $4696: $fc
    and $bd                                       ; $4697: $e6 $bd

jr_0e8_4699:
    rst $28                                       ; $4699: $ef
    db $fc                                        ; $469a: $fc
    halt                                          ; $469b: $76
    ld a, l                                       ; $469c: $7d
    ld b, a                                       ; $469d: $47
    ld a, a                                       ; $469e: $7f
    ld l, a                                       ; $469f: $6f
    ld a, a                                       ; $46a0: $7f
    ld b, l                                       ; $46a1: $45
    ld a, a                                       ; $46a2: $7f
    daa                                           ; $46a3: $27
    ccf                                           ; $46a4: $3f
    ld [bc], a                                    ; $46a5: $02
    ld e, $82                                     ; $46a6: $1e $82
    ld [hl-], a                                   ; $46a8: $32
    ld a, $02                                     ; $46a9: $3e $02
    inc e                                         ; $46ab: $1c
    ld [bc], a                                    ; $46ac: $02
    nop                                           ; $46ad: $00
    sbc b                                         ; $46ae: $98
    ld a, [hl]                                    ; $46af: $7e
    ld a, $2d                                     ; $46b0: $3e $2d
    ld a, a                                       ; $46b2: $7f
    ld h, l                                       ; $46b3: $65
    ld a, a                                       ; $46b4: $7f
    dec h                                         ; $46b5: $25
    ld a, a                                       ; $46b6: $7f
    cpl                                           ; $46b7: $2f
    ld a, a                                       ; $46b8: $7f
    ld h, a                                       ; $46b9: $67
    dec a                                         ; $46ba: $3d
    ld h, a                                       ; $46bb: $67
    ccf                                           ; $46bc: $3f
    ld l, d                                       ; $46bd: $6a
    ld a, $62                                     ; $46be: $3e $62
    ld a, [hl]                                    ; $46c0: $7e
    ld l, d                                       ; $46c1: $6a
    ld a, [hl]                                    ; $46c2: $7e
    ld h, d                                       ; $46c3: $62
    ld a, [hl]                                    ; $46c4: $7e
    ld h, h                                       ; $46c5: $64
    ld a, h                                       ; $46c6: $7c
    ld [bc], a                                    ; $46c7: $02
    ld a, b                                       ; $46c8: $78
    add d                                         ; $46c9: $82
    ld c, h                                       ; $46ca: $4c
    ld a, h                                       ; $46cb: $7c
    ld [bc], a                                    ; $46cc: $02
    jr c, jr_0e8_46d1                             ; $46cd: $38 $02

    nop                                           ; $46cf: $00
    rst $38                                       ; $46d0: $ff

jr_0e8_46d1:
    dec c                                         ; $46d1: $0d
    inc b                                         ; $46d2: $04
    ei                                            ; $46d3: $fb
    dec b                                         ; $46d4: $05
    ld a, [c]                                     ; $46d5: $f2
    ei                                            ; $46d6: $fb
    db $e3                                        ; $46d7: $e3
    ld sp, hl                                     ; $46d8: $f9
    db $e3                                        ; $46d9: $e3
    nop                                           ; $46da: $00
    di                                            ; $46db: $f3
    ld sp, hl                                     ; $46dc: $f9
    di                                            ; $46dd: $f3
    nop                                           ; $46de: $00
    ld [bc], a                                    ; $46df: $02
    rlca                                          ; $46e0: $07
    sbc [hl]                                      ; $46e1: $9e
    add hl, bc                                    ; $46e2: $09
    ld c, $16                                     ; $46e3: $0e $16
    add hl, de                                    ; $46e5: $19
    scf                                           ; $46e6: $37
    jr c, jr_0e8_4718                             ; $46e7: $38 $2f

jr_0e8_46e9:
    ld a, $7d                                     ; $46e9: $3e $7d
    ld [hl], a                                    ; $46eb: $77
    ccf                                           ; $46ec: $3f
    ld sp, $785f                                  ; $46ed: $31 $5f $78
    dec hl                                        ; $46f0: $2b
    dec a                                         ; $46f1: $3d
    ld e, a                                       ; $46f2: $5f
    ld a, h                                       ; $46f3: $7c
    ld a, e                                       ; $46f4: $7b
    ld a, a                                       ; $46f5: $7f
    inc l                                         ; $46f6: $2c
    ccf                                           ; $46f7: $3f
    ld e, a                                       ; $46f8: $5f
    ld a, a                                       ; $46f9: $7f
    ld b, e                                       ; $46fa: $43
    ld a, [hl]                                    ; $46fb: $7e
    add h                                         ; $46fc: $84
    rst $38                                       ; $46fd: $ff
    rst $00                                       ; $46fe: $c7
    db $fc                                        ; $46ff: $fc
    ld [bc], a                                    ; $4700: $02
    ld h, b                                       ; $4701: $60
    or [hl]                                       ; $4702: $b6
    jr nc, jr_0e8_4755                            ; $4703: $30 $50

    ld e, b                                       ; $4705: $58
    jr c, jr_0e8_4780                             ; $4706: $38 $78

    ld [$1878], sp                                ; $4708: $08 $78 $18
    ld e, h                                       ; $470b: $5c
    inc a                                         ; $470c: $3c
    ld [hl], h                                    ; $470d: $74
    inc l                                         ; $470e: $2c
    ld l, h                                       ; $470f: $6c
    ld e, h                                       ; $4710: $5c
    jr c, jr_0e8_476b                             ; $4711: $38 $58

    ld [hl], h                                    ; $4713: $74
    inc a                                         ; $4714: $3c
    ld e, h                                       ; $4715: $5c
    ld a, h                                       ; $4716: $7c
    inc h                                         ; $4717: $24

jr_0e8_4718:
    ld a, h                                       ; $4718: $7c
    ld d, d                                       ; $4719: $52
    ld a, [hl]                                    ; $471a: $7e
    ld h, [hl]                                    ; $471b: $66
    ld a, [hl]                                    ; $471c: $7e
    ld [hl], c                                    ; $471d: $71
    ccf                                           ; $471e: $3f
    ld a, e                                       ; $471f: $7b
    ccf                                           ; $4720: $3f
    ld a, [hl]                                    ; $4721: $7e
    ld a, l                                       ; $4722: $7d
    ld e, a                                       ; $4723: $5f
    ld a, h                                       ; $4724: $7c
    or h                                          ; $4725: $b4
    rst $38                                       ; $4726: $ff
    xor [hl]                                      ; $4727: $ae
    db $fd                                        ; $4728: $fd
    sub a                                         ; $4729: $97
    db $fc                                        ; $472a: $fc
    or $dd                                        ; $472b: $f6 $dd
    xor $bd                                       ; $472d: $ee $bd
    push af                                       ; $472f: $f5
    rst $38                                       ; $4730: $ff
    ld b, a                                       ; $4731: $47
    ld a, a                                       ; $4732: $7f
    ld l, l                                       ; $4733: $6d
    ld a, a                                       ; $4734: $7f
    ld b, a                                       ; $4735: $47
    ld a, a                                       ; $4736: $7f
    daa                                           ; $4737: $27
    ccf                                           ; $4738: $3f
    ld [bc], a                                    ; $4739: $02
    ld e, $02                                     ; $473a: $1e $02
    inc e                                         ; $473c: $1c
    inc b                                         ; $473d: $04
    nop                                           ; $473e: $00
    sub [hl]                                      ; $473f: $96
    ld a, [hl]                                    ; $4740: $7e
    ld a, $2f                                     ; $4741: $3e $2f
    ld a, a                                       ; $4743: $7f
    ld h, a                                       ; $4744: $67
    ld a, a                                       ; $4745: $7f
    dec l                                         ; $4746: $2d
    ld a, a                                       ; $4747: $7f
    ld [hl], a                                    ; $4748: $77
    dec a                                         ; $4749: $3d
    ld d, [hl]                                    ; $474a: $56
    ld a, $34                                     ; $474b: $3e $34
    ld a, h                                       ; $474d: $7c
    ld e, d                                       ; $474e: $5a
    ld a, [hl]                                    ; $474f: $7e
    ld e, d                                       ; $4750: $5a
    ld a, [hl]                                    ; $4751: $7e
    ld l, d                                       ; $4752: $6a
    ld a, [hl]                                    ; $4753: $7e
    ld c, h                                       ; $4754: $4c

jr_0e8_4755:
    ld a, h                                       ; $4755: $7c
    ld [bc], a                                    ; $4756: $02
    ld a, b                                       ; $4757: $78
    add c                                         ; $4758: $81
    ld h, h                                       ; $4759: $64
    inc bc                                        ; $475a: $03
    ld a, h                                       ; $475b: $7c
    ld [bc], a                                    ; $475c: $02
    ld a, b                                       ; $475d: $78
    ld [bc], a                                    ; $475e: $02
    nop                                           ; $475f: $00
    rst $38                                       ; $4760: $ff
    dec c                                         ; $4761: $0d
    inc b                                         ; $4762: $04
    ei                                            ; $4763: $fb
    dec b                                         ; $4764: $05
    ld a, [c]                                     ; $4765: $f2
    ei                                            ; $4766: $fb
    db $e4                                        ; $4767: $e4
    ld sp, hl                                     ; $4768: $f9
    db $e4                                        ; $4769: $e4
    nop                                           ; $476a: $00

jr_0e8_476b:
    db $f4                                        ; $476b: $f4
    ld sp, hl                                     ; $476c: $f9
    db $f4                                        ; $476d: $f4
    nop                                           ; $476e: $00
    ld [bc], a                                    ; $476f: $02
    rlca                                          ; $4770: $07
    sbc [hl]                                      ; $4771: $9e
    add hl, bc                                    ; $4772: $09
    ld c, $16                                     ; $4773: $0e $16
    add hl, de                                    ; $4775: $19
    scf                                           ; $4776: $37
    jr c, jr_0e8_47a8                             ; $4777: $38 $2f

    ld a, $7d                                     ; $4779: $3e $7d
    ld [hl], a                                    ; $477b: $77
    ccf                                           ; $477c: $3f
    ld sp, $785f                                  ; $477d: $31 $5f $78

jr_0e8_4780:
    dec hl                                        ; $4780: $2b
    dec a                                         ; $4781: $3d
    ld e, a                                       ; $4782: $5f
    ld a, h                                       ; $4783: $7c
    ld a, e                                       ; $4784: $7b
    ld a, a                                       ; $4785: $7f
    inc l                                         ; $4786: $2c
    ccf                                           ; $4787: $3f
    ld e, a                                       ; $4788: $5f
    ld a, a                                       ; $4789: $7f
    ld b, e                                       ; $478a: $43
    ld a, [hl]                                    ; $478b: $7e
    add h                                         ; $478c: $84
    rst $38                                       ; $478d: $ff
    ld l, a                                       ; $478e: $6f
    ld a, h                                       ; $478f: $7c
    ld [bc], a                                    ; $4790: $02
    ld h, b                                       ; $4791: $60
    or h                                          ; $4792: $b4
    jr nc, jr_0e8_47e5                            ; $4793: $30 $50

    ld e, b                                       ; $4795: $58
    jr c, jr_0e8_4810                             ; $4796: $38 $78

    ld [$1878], sp                                ; $4798: $08 $78 $18
    ld e, h                                       ; $479b: $5c
    inc a                                         ; $479c: $3c
    ld [hl], h                                    ; $479d: $74
    inc l                                         ; $479e: $2c
    ld l, h                                       ; $479f: $6c
    ld e, h                                       ; $47a0: $5c
    jr c, jr_0e8_47fb                             ; $47a1: $38 $58

    ld [hl], h                                    ; $47a3: $74
    inc a                                         ; $47a4: $3c
    ld e, h                                       ; $47a5: $5c
    ld a, h                                       ; $47a6: $7c
    inc h                                         ; $47a7: $24

jr_0e8_47a8:
    ld a, h                                       ; $47a8: $7c
    ld e, [hl]                                    ; $47a9: $5e
    ld a, [hl]                                    ; $47aa: $7e
    ld b, e                                       ; $47ab: $43
    ld a, a                                       ; $47ac: $7f
    ld [hl], c                                    ; $47ad: $71
    ccf                                           ; $47ae: $3f
    ld a, [hl]                                    ; $47af: $7e
    ld a, $7e                                     ; $47b0: $3e $7e
    ld a, l                                       ; $47b2: $7d
    ld d, l                                       ; $47b3: $55
    ld a, [hl]                                    ; $47b4: $7e
    or h                                          ; $47b5: $b4
    rst $38                                       ; $47b6: $ff
    xor [hl]                                      ; $47b7: $ae
    db $fd                                        ; $47b8: $fd
    and a                                         ; $47b9: $a7
    db $fc                                        ; $47ba: $fc
    and $fd                                       ; $47bb: $e6 $fd
    rst $38                                       ; $47bd: $ff
    sbc h                                         ; $47be: $9c
    rst $30                                       ; $47bf: $f7
    rst $38                                       ; $47c0: $ff
    ld h, l                                       ; $47c1: $65
    ld a, a                                       ; $47c2: $7f
    ld c, l                                       ; $47c3: $4d
    ld a, a                                       ; $47c4: $7f
    daa                                           ; $47c5: $27
    ccf                                           ; $47c6: $3f
    ld [bc], a                                    ; $47c7: $02
    ld e, $08                                     ; $47c8: $1e $08
    nop                                           ; $47ca: $00
    sub [hl]                                      ; $47cb: $96
    ld l, [hl]                                    ; $47cc: $6e
    ld a, $25                                     ; $47cd: $3e $25
    ld a, a                                       ; $47cf: $7f
    ld h, l                                       ; $47d0: $65
    ld a, a                                       ; $47d1: $7f
    dec h                                         ; $47d2: $25
    ld a, a                                       ; $47d3: $7f
    cpl                                           ; $47d4: $2f
    ld a, l                                       ; $47d5: $7d
    ld h, a                                       ; $47d6: $67
    ccf                                           ; $47d7: $3f
    inc [hl]                                      ; $47d8: $34
    ld a, h                                       ; $47d9: $7c
    ld d, d                                       ; $47da: $52
    ld a, [hl]                                    ; $47db: $7e
    ld e, [hl]                                    ; $47dc: $5e
    ld a, [hl]                                    ; $47dd: $7e
    ld e, d                                       ; $47de: $5a
    ld a, [hl]                                    ; $47df: $7e
    ld c, h                                       ; $47e0: $4c
    ld a, h                                       ; $47e1: $7c
    ld [bc], a                                    ; $47e2: $02
    ld a, b                                       ; $47e3: $78
    add c                                         ; $47e4: $81

jr_0e8_47e5:
    ld h, h                                       ; $47e5: $64
    inc bc                                        ; $47e6: $03
    ld a, h                                       ; $47e7: $7c
    inc b                                         ; $47e8: $04
    nop                                           ; $47e9: $00
    rst $38                                       ; $47ea: $ff
    dec c                                         ; $47eb: $0d
    inc b                                         ; $47ec: $04
    ei                                            ; $47ed: $fb
    dec b                                         ; $47ee: $05
    ld a, [c]                                     ; $47ef: $f2
    ei                                            ; $47f0: $fb
    db $e3                                        ; $47f1: $e3
    ld sp, hl                                     ; $47f2: $f9
    db $e3                                        ; $47f3: $e3
    nop                                           ; $47f4: $00
    di                                            ; $47f5: $f3
    ld sp, hl                                     ; $47f6: $f9
    di                                            ; $47f7: $f3
    nop                                           ; $47f8: $00
    ld [bc], a                                    ; $47f9: $02
    rlca                                          ; $47fa: $07

jr_0e8_47fb:
    sbc [hl]                                      ; $47fb: $9e
    ld a, [bc]                                    ; $47fc: $0a
    dec c                                         ; $47fd: $0d
    dec d                                         ; $47fe: $15
    ld a, [de]                                    ; $47ff: $1a
    rla                                           ; $4800: $17
    jr jr_0e8_4832                                ; $4801: $18 $2f

    inc a                                         ; $4803: $3c
    dec sp                                        ; $4804: $3b
    ld a, $2f                                     ; $4805: $3e $2f
    ld [hl-], a                                   ; $4807: $32
    ld e, a                                       ; $4808: $5f
    ld a, c                                       ; $4809: $79
    ld l, $3b                                     ; $480a: $2e $3b
    cpl                                           ; $480c: $2f
    inc a                                         ; $480d: $3c
    ld a, e                                       ; $480e: $7b
    ld a, a                                       ; $480f: $7f

jr_0e8_4810:
    inc l                                         ; $4810: $2c
    ccf                                           ; $4811: $3f
    ld e, a                                       ; $4812: $5f
    ld a, a                                       ; $4813: $7f
    ld b, a                                       ; $4814: $47
    ld a, [hl]                                    ; $4815: $7e
    add [hl]                                      ; $4816: $86
    db $fd                                        ; $4817: $fd
    ld e, a                                       ; $4818: $5f
    ld a, h                                       ; $4819: $7c
    ld [bc], a                                    ; $481a: $02
    ld h, b                                       ; $481b: $60
    adc c                                         ; $481c: $89
    ld d, b                                       ; $481d: $50
    jr nc, jr_0e8_4848                            ; $481e: $30 $28

    ld e, b                                       ; $4820: $58
    ld l, b                                       ; $4821: $68
    jr jr_0e8_4898                                ; $4822: $18 $74

    inc a                                         ; $4824: $3c
    ld e, h                                       ; $4825: $5c
    ld [bc], a                                    ; $4826: $02
    ld a, h                                       ; $4827: $7c
    xor c                                         ; $4828: $a9
    ld c, h                                       ; $4829: $4c
    ld a, d                                       ; $482a: $7a
    ld e, $74                                     ; $482b: $1e $74
    ld e, h                                       ; $482d: $5c
    ld a, d                                       ; $482e: $7a
    ld a, $5c                                     ; $482f: $3e $5c
    ld a, h                                       ; $4831: $7c

jr_0e8_4832:
    inc h                                         ; $4832: $24
    ld a, h                                       ; $4833: $7c
    ld d, d                                       ; $4834: $52
    ld a, [hl]                                    ; $4835: $7e
    ld h, [hl]                                    ; $4836: $66
    ld a, [hl]                                    ; $4837: $7e
    ld h, c                                       ; $4838: $61
    ccf                                           ; $4839: $3f
    ld [hl], d                                    ; $483a: $72
    ld a, $7e                                     ; $483b: $3e $7e
    ld a, l                                       ; $483d: $7d
    or a                                          ; $483e: $b7
    db $fc                                        ; $483f: $fc
    db $e4                                        ; $4840: $e4
    rst $38                                       ; $4841: $ff
    xor [hl]                                      ; $4842: $ae
    db $fd                                        ; $4843: $fd
    rst $20                                       ; $4844: $e7
    db $fc                                        ; $4845: $fc
    and $bd                                       ; $4846: $e6 $bd

jr_0e8_4848:
    rst $30                                       ; $4848: $f7
    db $fc                                        ; $4849: $fc
    ld l, h                                       ; $484a: $6c
    ld a, a                                       ; $484b: $7f
    ld e, a                                       ; $484c: $5f
    ld a, a                                       ; $484d: $7f
    ld l, a                                       ; $484e: $6f
    ld a, a                                       ; $484f: $7f
    ld c, l                                       ; $4850: $4d
    ld a, a                                       ; $4851: $7f
    ld [bc], a                                    ; $4852: $02
    ccf                                           ; $4853: $3f
    ld [bc], a                                    ; $4854: $02
    rra                                           ; $4855: $1f
    ld [bc], a                                    ; $4856: $02
    ld c, $04                                     ; $4857: $0e $04
    nop                                           ; $4859: $00
    sbc b                                         ; $485a: $98
    ld a, [hl]                                    ; $485b: $7e
    ld a, $6d                                     ; $485c: $3e $6d
    ccf                                           ; $485e: $3f
    ld h, l                                       ; $485f: $65
    ld a, a                                       ; $4860: $7f
    dec h                                         ; $4861: $25
    ld a, a                                       ; $4862: $7f
    cpl                                           ; $4863: $2f
    ld a, a                                       ; $4864: $7f
    ld h, e                                       ; $4865: $63
    dec a                                         ; $4866: $3d
    ld h, a                                       ; $4867: $67
    ccf                                           ; $4868: $3f
    ld h, [hl]                                    ; $4869: $66
    ld a, $62                                     ; $486a: $3e $62
    ld a, [hl]                                    ; $486c: $7e
    halt                                          ; $486d: $76
    ld a, [hl]                                    ; $486e: $7e
    ld [hl], d                                    ; $486f: $72
    ld a, [hl]                                    ; $4870: $7e
    ld [hl], h                                    ; $4871: $74
    ld a, h                                       ; $4872: $7c
    ld [bc], a                                    ; $4873: $02
    ld a, b                                       ; $4874: $78
    add d                                         ; $4875: $82
    ld c, h                                       ; $4876: $4c
    ld a, h                                       ; $4877: $7c
    ld [bc], a                                    ; $4878: $02
    jr c, jr_0e8_487d                             ; $4879: $38 $02

    nop                                           ; $487b: $00
    rst $38                                       ; $487c: $ff

jr_0e8_487d:
    dec c                                         ; $487d: $0d
    inc b                                         ; $487e: $04
    ei                                            ; $487f: $fb
    dec b                                         ; $4880: $05
    ld a, [c]                                     ; $4881: $f2
    ei                                            ; $4882: $fb
    db $e3                                        ; $4883: $e3
    ld sp, hl                                     ; $4884: $f9
    db $e3                                        ; $4885: $e3
    nop                                           ; $4886: $00
    di                                            ; $4887: $f3
    ld sp, hl                                     ; $4888: $f9
    di                                            ; $4889: $f3
    nop                                           ; $488a: $00
    ld [bc], a                                    ; $488b: $02
    rlca                                          ; $488c: $07
    sbc [hl]                                      ; $488d: $9e
    dec c                                         ; $488e: $0d
    ld a, [bc]                                    ; $488f: $0a
    ld a, [de]                                    ; $4890: $1a
    dec e                                         ; $4891: $1d
    rra                                           ; $4892: $1f
    db $10                                        ; $4893: $10
    rra                                           ; $4894: $1f
    jr jr_0e8_48d2                                ; $4895: $18 $3b

    dec a                                         ; $4897: $3d

jr_0e8_4898:
    cpl                                           ; $4898: $2f
    dec [hl]                                      ; $4899: $35
    scf                                           ; $489a: $37
    ld a, [hl-]                                   ; $489b: $3a
    dec e                                         ; $489c: $1d
    dec de                                        ; $489d: $1b
    cpl                                           ; $489e: $2f
    inc a                                         ; $489f: $3c
    dec sp                                        ; $48a0: $3b
    ccf                                           ; $48a1: $3f
    inc l                                         ; $48a2: $2c
    ccf                                           ; $48a3: $3f
    ld e, a                                       ; $48a4: $5f
    ld a, a                                       ; $48a5: $7f
    ld b, a                                       ; $48a6: $47
    ld a, [hl]                                    ; $48a7: $7e
    adc [hl]                                      ; $48a8: $8e
    db $fd                                        ; $48a9: $fd
    rst $18                                       ; $48aa: $df
    db $fc                                        ; $48ab: $fc
    ld [bc], a                                    ; $48ac: $02
    ld h, b                                       ; $48ad: $60
    or h                                          ; $48ae: $b4
    db $10                                        ; $48af: $10
    ld [hl], b                                    ; $48b0: $70
    ld l, b                                       ; $48b1: $68
    jr jr_0e8_4920                                ; $48b2: $18 $6c

    inc e                                         ; $48b4: $1c
    ld [hl], h                                    ; $48b5: $74
    ld a, h                                       ; $48b6: $7c
    ld a, $6e                                     ; $48b7: $3e $6e
    ld a, h                                       ; $48b9: $7c
    inc c                                         ; $48ba: $0c
    ld a, d                                       ; $48bb: $7a
    ld e, $54                                     ; $48bc: $1e $54
    inc a                                         ; $48be: $3c
    ld a, d                                       ; $48bf: $7a
    ld a, $5e                                     ; $48c0: $3e $5e
    ld a, [hl]                                    ; $48c2: $7e
    inc h                                         ; $48c3: $24
    ld a, h                                       ; $48c4: $7c
    ld d, d                                       ; $48c5: $52
    ld a, [hl]                                    ; $48c6: $7e
    ld h, [hl]                                    ; $48c7: $66
    ld a, [hl]                                    ; $48c8: $7e
    ld hl, $637f                                  ; $48c9: $21 $7f $63
    ccf                                           ; $48cc: $3f
    ld a, [hl]                                    ; $48cd: $7e
    ld a, l                                       ; $48ce: $7d
    rst $30                                       ; $48cf: $f7
    db $fc                                        ; $48d0: $fc
    db $ed                                        ; $48d1: $ed

jr_0e8_48d2:
    rst $38                                       ; $48d2: $ff
    and [hl]                                      ; $48d3: $a6
    db $fd                                        ; $48d4: $fd
    rst $28                                       ; $48d5: $ef
    cp h                                          ; $48d6: $bc
    ld a, d                                       ; $48d7: $7a
    ld a, l                                       ; $48d8: $7d
    inc l                                         ; $48d9: $2c
    ccf                                           ; $48da: $3f
    ld e, e                                       ; $48db: $5b
    ld a, a                                       ; $48dc: $7f
    ld a, e                                       ; $48dd: $7b
    ld a, a                                       ; $48de: $7f
    ld d, a                                       ; $48df: $57
    ld a, a                                       ; $48e0: $7f
    inc sp                                        ; $48e1: $33
    ccf                                           ; $48e2: $3f
    ld [bc], a                                    ; $48e3: $02
    rra                                           ; $48e4: $1f
    add c                                         ; $48e5: $81
    ld h, $03                                     ; $48e6: $26 $03
    ld a, $02                                     ; $48e8: $3e $02
    ld e, $02                                     ; $48ea: $1e $02
    nop                                           ; $48ec: $00
    sbc b                                         ; $48ed: $98
    ld a, [hl]                                    ; $48ee: $7e
    ld a, $3a                                     ; $48ef: $3e $3a
    ld a, [hl]                                    ; $48f1: $7e
    ld l, l                                       ; $48f2: $6d
    ld a, a                                       ; $48f3: $7f
    dec l                                         ; $48f4: $2d
    ld a, a                                       ; $48f5: $7f
    ld l, c                                       ; $48f6: $69
    ccf                                           ; $48f7: $3f
    ld l, a                                       ; $48f8: $6f
    dec sp                                        ; $48f9: $3b
    ld h, a                                       ; $48fa: $67
    dec a                                         ; $48fb: $3d
    cpl                                           ; $48fc: $2f
    ld a, a                                       ; $48fd: $7f
    ld h, d                                       ; $48fe: $62
    ld a, [hl]                                    ; $48ff: $7e
    ld a, [hl+]                                   ; $4900: $2a
    ld a, [hl]                                    ; $4901: $7e
    ld h, d                                       ; $4902: $62
    ld a, [hl]                                    ; $4903: $7e
    ld h, h                                       ; $4904: $64
    ld a, h                                       ; $4905: $7c
    ld [bc], a                                    ; $4906: $02
    ld a, b                                       ; $4907: $78
    ld [bc], a                                    ; $4908: $02
    jr c, jr_0e8_490f                             ; $4909: $38 $04

    nop                                           ; $490b: $00
    rst $38                                       ; $490c: $ff
    dec c                                         ; $490d: $0d
    inc b                                         ; $490e: $04

jr_0e8_490f:
    ei                                            ; $490f: $fb
    dec b                                         ; $4910: $05
    ld a, [c]                                     ; $4911: $f2
    ei                                            ; $4912: $fb
    db $e4                                        ; $4913: $e4
    ld sp, hl                                     ; $4914: $f9
    db $e4                                        ; $4915: $e4
    nop                                           ; $4916: $00
    db $f4                                        ; $4917: $f4
    ld sp, hl                                     ; $4918: $f9
    db $f4                                        ; $4919: $f4
    nop                                           ; $491a: $00
    ld [bc], a                                    ; $491b: $02
    rlca                                          ; $491c: $07
    sbc [hl]                                      ; $491d: $9e
    dec c                                         ; $491e: $0d
    ld a, [bc]                                    ; $491f: $0a

jr_0e8_4920:
    ld a, [de]                                    ; $4920: $1a
    dec e                                         ; $4921: $1d
    rra                                           ; $4922: $1f
    db $10                                        ; $4923: $10
    rra                                           ; $4924: $1f
    jr jr_0e8_4962                                ; $4925: $18 $3b

    dec a                                         ; $4927: $3d
    cpl                                           ; $4928: $2f
    dec [hl]                                      ; $4929: $35
    scf                                           ; $492a: $37
    ld a, [hl-]                                   ; $492b: $3a
    dec e                                         ; $492c: $1d
    dec de                                        ; $492d: $1b
    cpl                                           ; $492e: $2f
    inc a                                         ; $492f: $3c
    dec sp                                        ; $4930: $3b
    ccf                                           ; $4931: $3f
    inc l                                         ; $4932: $2c
    ccf                                           ; $4933: $3f
    ld e, a                                       ; $4934: $5f
    ld a, a                                       ; $4935: $7f
    jp $8efe                                      ; $4936: $c3 $fe $8e


    db $fd                                        ; $4939: $fd
    ld a, a                                       ; $493a: $7f
    ld a, h                                       ; $493b: $7c
    ld [bc], a                                    ; $493c: $02
    ld h, b                                       ; $493d: $60
    or h                                          ; $493e: $b4
    db $10                                        ; $493f: $10
    ld [hl], b                                    ; $4940: $70
    ld l, b                                       ; $4941: $68
    jr jr_0e8_49b0                                ; $4942: $18 $6c

    inc e                                         ; $4944: $1c
    ld [hl], h                                    ; $4945: $74
    ld a, h                                       ; $4946: $7c
    ld a, $6e                                     ; $4947: $3e $6e
    ld a, h                                       ; $4949: $7c
    inc c                                         ; $494a: $0c
    ld a, d                                       ; $494b: $7a
    ld e, $54                                     ; $494c: $1e $54
    inc a                                         ; $494e: $3c
    ld a, d                                       ; $494f: $7a
    ld a, $5e                                     ; $4950: $3e $5e
    ld a, [hl]                                    ; $4952: $7e
    inc h                                         ; $4953: $24
    ld a, h                                       ; $4954: $7c
    ld e, [hl]                                    ; $4955: $5e
    ld a, [hl]                                    ; $4956: $7e
    ld b, d                                       ; $4957: $42
    ld a, [hl]                                    ; $4958: $7e
    ld hl, $767f                                  ; $4959: $21 $7f $76
    ld a, $76                                     ; $495c: $3e $76
    ld a, l                                       ; $495e: $7d
    or l                                          ; $495f: $b5
    cp $ad                                        ; $4960: $fe $ad

jr_0e8_4962:
    rst $38                                       ; $4962: $ff
    and [hl]                                      ; $4963: $a6
    db $fd                                        ; $4964: $fd
    rst $20                                       ; $4965: $e7
    cp h                                          ; $4966: $bc
    or $fd                                        ; $4967: $f6 $fd
    dec l                                         ; $4969: $2d
    ld a, $6b                                     ; $496a: $3e $6b
    ld a, a                                       ; $496c: $7f
    ld e, e                                       ; $496d: $5b
    ld a, a                                       ; $496e: $7f
    ld e, e                                       ; $496f: $5b
    ld a, a                                       ; $4970: $7f
    inc sp                                        ; $4971: $33
    ccf                                           ; $4972: $3f
    ld [bc], a                                    ; $4973: $02
    ld e, $81                                     ; $4974: $1e $81
    ld h, $03                                     ; $4976: $26 $03
    ld a, $04                                     ; $4978: $3e $04
    nop                                           ; $497a: $00
    sub [hl]                                      ; $497b: $96
    ld a, [hl]                                    ; $497c: $7e
    ld a, $2a                                     ; $497d: $3e $2a
    ld a, [hl]                                    ; $497f: $7e
    ld l, l                                       ; $4980: $6d
    ld a, a                                       ; $4981: $7f
    dec h                                         ; $4982: $25
    ld a, a                                       ; $4983: $7f
    dec l                                         ; $4984: $2d
    ld a, a                                       ; $4985: $7f
    ld h, a                                       ; $4986: $67
    ccf                                           ; $4987: $3f
    ld l, a                                       ; $4988: $6f
    add hl, sp                                    ; $4989: $39
    ld l, a                                       ; $498a: $6f
    ld a, a                                       ; $498b: $7f
    ld [hl+], a                                   ; $498c: $22
    ld a, [hl]                                    ; $498d: $7e
    ld a, [hl+]                                   ; $498e: $2a
    ld a, [hl]                                    ; $498f: $7e
    ld h, h                                       ; $4990: $64
    ld a, h                                       ; $4991: $7c
    ld [bc], a                                    ; $4992: $02
    ld a, b                                       ; $4993: $78
    ld [$ff00], sp                                ; $4994: $08 $00 $ff
    dec c                                         ; $4997: $0d
    inc b                                         ; $4998: $04
    ei                                            ; $4999: $fb
    dec b                                         ; $499a: $05
    ld a, [c]                                     ; $499b: $f2
    ei                                            ; $499c: $fb
    db $e3                                        ; $499d: $e3
    ld sp, hl                                     ; $499e: $f9
    db $e3                                        ; $499f: $e3
    nop                                           ; $49a0: $00
    di                                            ; $49a1: $f3
    ld sp, hl                                     ; $49a2: $f9
    di                                            ; $49a3: $f3
    nop                                           ; $49a4: $00
    ld [bc], a                                    ; $49a5: $02
    rlca                                          ; $49a6: $07
    sbc [hl]                                      ; $49a7: $9e
    ld a, [bc]                                    ; $49a8: $0a
    dec c                                         ; $49a9: $0d
    dec d                                         ; $49aa: $15
    ld a, [de]                                    ; $49ab: $1a
    rla                                           ; $49ac: $17
    jr jr_0e8_49de                                ; $49ad: $18 $2f

    inc a                                         ; $49af: $3c

jr_0e8_49b0:
    dec sp                                        ; $49b0: $3b
    ld a, $2f                                     ; $49b1: $3e $2f
    ld [hl-], a                                   ; $49b3: $32
    ld e, a                                       ; $49b4: $5f
    ld a, c                                       ; $49b5: $79
    ld l, $3b                                     ; $49b6: $2e $3b
    cpl                                           ; $49b8: $2f
    inc a                                         ; $49b9: $3c
    ld a, e                                       ; $49ba: $7b
    ld a, a                                       ; $49bb: $7f
    inc l                                         ; $49bc: $2c
    ccf                                           ; $49bd: $3f
    ld e, a                                       ; $49be: $5f
    ld a, a                                       ; $49bf: $7f
    ld b, a                                       ; $49c0: $47
    ld a, [hl]                                    ; $49c1: $7e
    add [hl]                                      ; $49c2: $86
    db $fd                                        ; $49c3: $fd
    rst $08                                       ; $49c4: $cf
    db $fc                                        ; $49c5: $fc
    ld [bc], a                                    ; $49c6: $02
    ld h, b                                       ; $49c7: $60
    adc c                                         ; $49c8: $89
    ld d, b                                       ; $49c9: $50
    jr nc, jr_0e8_49f4                            ; $49ca: $30 $28

    ld e, b                                       ; $49cc: $58
    ld l, b                                       ; $49cd: $68
    jr jr_0e8_4a44                                ; $49ce: $18 $74

    inc a                                         ; $49d0: $3c
    ld e, h                                       ; $49d1: $5c
    ld [bc], a                                    ; $49d2: $02
    ld a, h                                       ; $49d3: $7c
    xor e                                         ; $49d4: $ab
    ld c, h                                       ; $49d5: $4c
    ld a, d                                       ; $49d6: $7a
    ld e, $74                                     ; $49d7: $1e $74
    ld e, h                                       ; $49d9: $5c
    ld a, d                                       ; $49da: $7a
    ld a, $5c                                     ; $49db: $3e $5c
    ld a, h                                       ; $49dd: $7c

jr_0e8_49de:
    inc h                                         ; $49de: $24
    ld a, h                                       ; $49df: $7c
    ld d, d                                       ; $49e0: $52
    ld a, [hl]                                    ; $49e1: $7e
    ld h, [hl]                                    ; $49e2: $66
    ld a, [hl]                                    ; $49e3: $7e
    ld h, c                                       ; $49e4: $61
    ccf                                           ; $49e5: $3f
    ld a, e                                       ; $49e6: $7b
    ccf                                           ; $49e7: $3f
    ld a, [hl]                                    ; $49e8: $7e
    ld a, l                                       ; $49e9: $7d
    or a                                          ; $49ea: $b7
    db $fc                                        ; $49eb: $fc
    db $e4                                        ; $49ec: $e4
    rst $38                                       ; $49ed: $ff
    xor [hl]                                      ; $49ee: $ae
    db $fd                                        ; $49ef: $fd
    rst $20                                       ; $49f0: $e7
    db $fc                                        ; $49f1: $fc
    add $bd                                       ; $49f2: $c6 $bd

jr_0e8_49f4:
    rst $20                                       ; $49f4: $e7
    db $fc                                        ; $49f5: $fc
    halt                                          ; $49f6: $76
    ld a, l                                       ; $49f7: $7d
    ld b, a                                       ; $49f8: $47
    ld a, a                                       ; $49f9: $7f
    ld l, a                                       ; $49fa: $6f
    ld a, a                                       ; $49fb: $7f
    ld c, l                                       ; $49fc: $4d
    ld a, a                                       ; $49fd: $7f
    cpl                                           ; $49fe: $2f
    ccf                                           ; $49ff: $3f
    ld [bc], a                                    ; $4a00: $02
    rra                                           ; $4a01: $1f
    add d                                         ; $4a02: $82
    ld [hl-], a                                   ; $4a03: $32
    ld a, $02                                     ; $4a04: $3e $02
    inc e                                         ; $4a06: $1c
    ld [bc], a                                    ; $4a07: $02
    nop                                           ; $4a08: $00
    sub [hl]                                      ; $4a09: $96
    ld a, [hl]                                    ; $4a0a: $7e
    ld a, $6d                                     ; $4a0b: $3e $6d
    ccf                                           ; $4a0d: $3f
    ld h, l                                       ; $4a0e: $65
    ld a, a                                       ; $4a0f: $7f
    dec h                                         ; $4a10: $25
    ld a, a                                       ; $4a11: $7f
    cpl                                           ; $4a12: $2f
    ld a, a                                       ; $4a13: $7f
    ld h, a                                       ; $4a14: $67
    dec a                                         ; $4a15: $3d
    ld h, a                                       ; $4a16: $67
    ccf                                           ; $4a17: $3f
    ld [hl], $7e                                  ; $4a18: $36 $7e
    ld [hl], d                                    ; $4a1a: $72
    ld a, [hl]                                    ; $4a1b: $7e
    halt                                          ; $4a1c: $76
    ld a, [hl]                                    ; $4a1d: $7e
    ld [hl], d                                    ; $4a1e: $72
    ld a, [hl]                                    ; $4a1f: $7e
    ld [bc], a                                    ; $4a20: $02
    ld a, h                                       ; $4a21: $7c
    ld [bc], a                                    ; $4a22: $02
    ld a, b                                       ; $4a23: $78
    ld [bc], a                                    ; $4a24: $02
    ld [hl], b                                    ; $4a25: $70
    inc b                                         ; $4a26: $04
    nop                                           ; $4a27: $00
    rst $38                                       ; $4a28: $ff
    dec c                                         ; $4a29: $0d
    inc b                                         ; $4a2a: $04
    ei                                            ; $4a2b: $fb
    dec b                                         ; $4a2c: $05
    ld a, [c]                                     ; $4a2d: $f2
    ei                                            ; $4a2e: $fb
    db $e3                                        ; $4a2f: $e3
    ld a, [$fee4]                                 ; $4a30: $fa $e4 $fe
    di                                            ; $4a33: $f3
    ld a, [$fdf3]                                 ; $4a34: $fa $f3 $fd
    ld [bc], a                                    ; $4a37: $02
    rrca                                          ; $4a38: $0f
    sbc [hl]                                      ; $4a39: $9e
    ld [de], a                                    ; $4a3a: $12
    dec e                                         ; $4a3b: $1d
    dec l                                         ; $4a3c: $2d
    ld a, [hl-]                                   ; $4a3d: $3a
    ld h, e                                       ; $4a3e: $63
    ld a, h                                       ; $4a3f: $7c
    dec h                                         ; $4a40: $25
    ld a, $49                                     ; $4a41: $3e $49
    ld a, [hl]                                    ; $4a43: $7e

jr_0e8_4a44:
    ld c, l                                       ; $4a44: $4d
    ld a, d                                       ; $4a45: $7a
    and h                                         ; $4a46: $a4
    cp a                                          ; $4a47: $bf
    ld d, a                                       ; $4a48: $57
    ld a, h                                       ; $4a49: $7c
    or e                                          ; $4a4a: $b3
    cp [hl]                                       ; $4a4b: $be
    daa                                           ; $4a4c: $27
    ccf                                           ; $4a4d: $3f
    ld d, [hl]                                    ; $4a4e: $56
    ld a, a                                       ; $4a4f: $7f
    add hl, hl                                    ; $4a50: $29
    ccf                                           ; $4a51: $3f
    ld [hl], e                                    ; $4a52: $73
    ld a, a                                       ; $4a53: $7f
    jr nz, jr_0e8_4a95                            ; $4a54: $20 $3f

    ld b, b                                       ; $4a56: $40
    ld a, a                                       ; $4a57: $7f
    ld [bc], a                                    ; $4a58: $02
    ld [$0c83], sp                                ; $4a59: $08 $83 $0c
    inc b                                         ; $4a5c: $04
    ld c, $02                                     ; $4a5d: $0e $02
    ld [bc], a                                    ; $4a5f: $02
    adc e                                         ; $4a60: $8b
    ld c, $06                                     ; $4a61: $0e $06
    ld c, $0f                                     ; $4a63: $0e $0f
    ld bc, $030f                                  ; $4a65: $01 $0f $03
    ld a, [bc]                                    ; $4a68: $0a
    ld b, $0e                                     ; $4a69: $06 $0e
    ld [bc], a                                    ; $4a6b: $02
    ld [bc], a                                    ; $4a6c: $02
    inc c                                         ; $4a6d: $0c
    add d                                         ; $4a6e: $82
    ld b, $0e                                     ; $4a6f: $06 $0e
    ld [bc], a                                    ; $4a71: $02
    inc c                                         ; $4a72: $0c
    add e                                         ; $4a73: $83
    ld b, $0e                                     ; $4a74: $06 $0e
    ld b, $02                                     ; $4a76: $06 $02
    ld c, $9b                                     ; $4a78: $0e $9b
    ld a, [bc]                                    ; $4a7a: $0a
    cp $fa                                        ; $4a7b: $fe $fa
    ld b, b                                       ; $4a7d: $40
    ld [hl], b                                    ; $4a7e: $70
    ld [hl], e                                    ; $4a7f: $73
    ld a, a                                       ; $4a80: $7f
    ld [hl], $3f                                  ; $4a81: $36 $3f
    ld [hl], d                                    ; $4a83: $72
    ld a, a                                       ; $4a84: $7f
    ld l, d                                       ; $4a85: $6a
    ld a, a                                       ; $4a86: $7f
    halt                                          ; $4a87: $76
    ld a, a                                       ; $4a88: $7f
    ld l, a                                       ; $4a89: $6f
    ld a, c                                       ; $4a8a: $79
    ld c, [hl]                                    ; $4a8b: $4e
    ld a, a                                       ; $4a8c: $7f
    jp nz, $e0ff                                  ; $4a8d: $c2 $ff $e0

    rst $38                                       ; $4a90: $ff
    add l                                         ; $4a91: $85
    rst $38                                       ; $4a92: $ff
    ld c, b                                       ; $4a93: $48
    ld a, a                                       ; $4a94: $7f

jr_0e8_4a95:
    ld [bc], a                                    ; $4a95: $02
    ccf                                           ; $4a96: $3f
    add d                                         ; $4a97: $82
    ld d, $1f                                     ; $4a98: $16 $1f
    ld [bc], a                                    ; $4a9a: $02
    dec de                                        ; $4a9b: $1b
    inc b                                         ; $4a9c: $04
    nop                                           ; $4a9d: $00
    add e                                         ; $4a9e: $83
    ld [bc], a                                    ; $4a9f: $02
    ld b, $02                                     ; $4aa0: $06 $02
    inc bc                                        ; $4aa2: $03
    ld b, $90                                     ; $4aa3: $06 $90
    inc bc                                        ; $4aa5: $03
    dec b                                         ; $4aa6: $05
    rlca                                          ; $4aa7: $07
    dec b                                         ; $4aa8: $05
    inc bc                                        ; $4aa9: $03
    dec b                                         ; $4aaa: $05
    inc bc                                        ; $4aab: $03
    dec b                                         ; $4aac: $05
    ld [bc], a                                    ; $4aad: $02
    ld b, $02                                     ; $4aae: $06 $02
    ld b, $03                                     ; $4ab0: $06 $03
    rlca                                          ; $4ab2: $07
    inc bc                                        ; $4ab3: $03
    rlca                                          ; $4ab4: $07
    ld [bc], a                                    ; $4ab5: $02
    inc b                                         ; $4ab6: $04
    add c                                         ; $4ab7: $81
    ld [bc], a                                    ; $4ab8: $02
    inc bc                                        ; $4ab9: $03
    ld b, $02                                     ; $4aba: $06 $02
    nop                                           ; $4abc: $00
    rst $38                                       ; $4abd: $ff
    dec c                                         ; $4abe: $0d
    inc b                                         ; $4abf: $04
    ei                                            ; $4ac0: $fb
    dec b                                         ; $4ac1: $05
    ld a, [c]                                     ; $4ac2: $f2
    ei                                            ; $4ac3: $fb
    db $e3                                        ; $4ac4: $e3
    ld a, [$fee4]                                 ; $4ac5: $fa $e4 $fe
    di                                            ; $4ac8: $f3
    ld a, [$01f3]                                 ; $4ac9: $fa $f3 $01
    ld [bc], a                                    ; $4acc: $02
    rrca                                          ; $4acd: $0f
    sbc [hl]                                      ; $4ace: $9e
    add hl, de                                    ; $4acf: $19
    ld e, $26                                     ; $4ad0: $1e $26
    dec a                                         ; $4ad2: $3d
    ld hl, $6b3e                                  ; $4ad3: $21 $3e $6b
    ld a, [hl]                                    ; $4ad6: $7e
    push de                                       ; $4ad7: $d5
    cp $4c                                        ; $4ad8: $fe $4c
    ld a, e                                       ; $4ada: $7b
    ld b, [hl]                                    ; $4adb: $46
    ld a, l                                       ; $4adc: $7d
    sub l                                         ; $4add: $95
    cp $62                                        ; $4ade: $fe $62
    ld a, a                                       ; $4ae0: $7f
    push bc                                       ; $4ae1: $c5
    rst $38                                       ; $4ae2: $ff
    ld d, [hl]                                    ; $4ae3: $56
    ld a, a                                       ; $4ae4: $7f
    add hl, hl                                    ; $4ae5: $29
    ccf                                           ; $4ae6: $3f
    ld [hl], e                                    ; $4ae7: $73
    ld a, a                                       ; $4ae8: $7f
    jr nz, jr_0e8_4b2a                            ; $4ae9: $20 $3f

    jr nz, jr_0e8_4b2c                            ; $4aeb: $20 $3f

    ld [bc], a                                    ; $4aed: $02
    ld [$0c90], sp                                ; $4aee: $08 $90 $0c
    inc b                                         ; $4af1: $04
    ld c, $02                                     ; $4af2: $0e $02
    ld a, [bc]                                    ; $4af4: $0a
    ld b, $0e                                     ; $4af5: $06 $0e
    ld b, $0f                                     ; $4af7: $06 $0f
    ld bc, $030d                                  ; $4af9: $01 $0d $03
    ld b, $0a                                     ; $4afc: $06 $0a
    ld c, $02                                     ; $4afe: $0e $02
    ld [bc], a                                    ; $4b00: $02
    inc c                                         ; $4b01: $0c
    add d                                         ; $4b02: $82
    ld b, $0e                                     ; $4b03: $06 $0e
    ld [bc], a                                    ; $4b05: $02
    inc c                                         ; $4b06: $0c
    add e                                         ; $4b07: $83
    ld b, $0e                                     ; $4b08: $06 $0e
    ld b, $02                                     ; $4b0a: $06 $02
    ld c, $9f                                     ; $4b0c: $0e $9f
    ld a, [bc]                                    ; $4b0e: $0a
    ld a, $fa                                     ; $4b0f: $3e $fa
    ld b, b                                       ; $4b11: $40
    ld [hl], b                                    ; $4b12: $70
    ld a, l                                       ; $4b13: $7d
    ld a, a                                       ; $4b14: $7f
    dec a                                         ; $4b15: $3d
    ccf                                           ; $4b16: $3f
    dec sp                                        ; $4b17: $3b
    ccf                                           ; $4b18: $3f
    inc h                                         ; $4b19: $24
    ccf                                           ; $4b1a: $3f
    halt                                          ; $4b1b: $76
    ld a, a                                       ; $4b1c: $7f
    ld h, e                                       ; $4b1d: $63
    ld a, [hl]                                    ; $4b1e: $7e
    ld b, c                                       ; $4b1f: $41
    ld a, a                                       ; $4b20: $7f
    ld b, d                                       ; $4b21: $42
    ld a, a                                       ; $4b22: $7f
    ldh [rIE], a                                  ; $4b23: $e0 $ff
    add l                                         ; $4b25: $85
    rst $38                                       ; $4b26: $ff
    ld c, b                                       ; $4b27: $48
    ld a, a                                       ; $4b28: $7f
    cp a                                          ; $4b29: $bf

jr_0e8_4b2a:
    rst $38                                       ; $4b2a: $ff
    ld a, [c]                                     ; $4b2b: $f2

jr_0e8_4b2c:
    cp $02                                        ; $4b2c: $fe $02
    ld e, $04                                     ; $4b2e: $1e $04
    nop                                           ; $4b30: $00
    add e                                         ; $4b31: $83
    jr nc, jr_0e8_4ba4                            ; $4b32: $30 $70

    jr nz, jr_0e8_4b39                            ; $4b34: $20 $03

    ld h, b                                       ; $4b36: $60
    add c                                         ; $4b37: $81
    ld d, b                                       ; $4b38: $50

jr_0e8_4b39:
    ld [bc], a                                    ; $4b39: $02

jr_0e8_4b3a:
    ld [hl], b                                    ; $4b3a: $70
    adc l                                         ; $4b3b: $8d
    jr nc, jr_0e8_4bae                            ; $4b3c: $30 $70

    ld d, b                                       ; $4b3e: $50
    jr nc, @+$52                                  ; $4b3f: $30 $50

    jr c, jr_0e8_4bbb                             ; $4b41: $38 $78

    jr z, jr_0e8_4bbd                             ; $4b43: $28 $78

    ld a, $7e                                     ; $4b45: $3e $7e
    inc sp                                        ; $4b47: $33
    ld a, a                                       ; $4b48: $7f
    ld [bc], a                                    ; $4b49: $02
    ld a, h                                       ; $4b4a: $7c
    ld [bc], a                                    ; $4b4b: $02
    jr nz, jr_0e8_4b52                            ; $4b4c: $20 $04

    nop                                           ; $4b4e: $00
    rst $38                                       ; $4b4f: $ff
    dec c                                         ; $4b50: $0d
    inc b                                         ; $4b51: $04

jr_0e8_4b52:
    ei                                            ; $4b52: $fb
    dec b                                         ; $4b53: $05
    ld a, [c]                                     ; $4b54: $f2
    ei                                            ; $4b55: $fb
    db $e4                                        ; $4b56: $e4
    ld a, [$fee5]                                 ; $4b57: $fa $e5 $fe
    db $f4                                        ; $4b5a: $f4
    ld a, [$fff4]                                 ; $4b5b: $fa $f4 $ff
    ld [bc], a                                    ; $4b5e: $02
    rrca                                          ; $4b5f: $0f
    sbc [hl]                                      ; $4b60: $9e
    add hl, de                                    ; $4b61: $19
    ld e, $26                                     ; $4b62: $1e $26
    dec a                                         ; $4b64: $3d
    ld hl, $5b3e                                  ; $4b65: $21 $3e $5b
    ld a, [hl]                                    ; $4b68: $7e
    push hl                                       ; $4b69: $e5
    cp $4c                                        ; $4b6a: $fe $4c
    ld a, e                                       ; $4b6c: $7b
    or [hl]                                       ; $4b6d: $b6
    db $fd                                        ; $4b6e: $fd
    ld h, l                                       ; $4b6f: $65
    ld a, [hl]                                    ; $4b70: $7e
    jp nz, Jump_0e8_55ff                          ; $4b71: $c2 $ff $55

    ld a, a                                       ; $4b74: $7f
    ld h, $3f                                     ; $4b75: $26 $3f
    add hl, sp                                    ; $4b77: $39
    ccf                                           ; $4b78: $3f
    ld [hl], e                                    ; $4b79: $73
    ld a, a                                       ; $4b7a: $7f
    ld h, b                                       ; $4b7b: $60
    ld a, a                                       ; $4b7c: $7f
    ld h, c                                       ; $4b7d: $61
    ld a, a                                       ; $4b7e: $7f
    ld [bc], a                                    ; $4b7f: $02
    ld [$0c90], sp                                ; $4b80: $08 $90 $0c
    inc b                                         ; $4b83: $04
    ld c, $02                                     ; $4b84: $0e $02
    ld a, [bc]                                    ; $4b86: $0a
    ld b, $0e                                     ; $4b87: $06 $0e
    ld b, $0f                                     ; $4b89: $06 $0f
    ld bc, $030d                                  ; $4b8b: $01 $0d $03
    ld b, $0a                                     ; $4b8e: $06 $0a
    ld c, $02                                     ; $4b90: $0e $02
    ld [bc], a                                    ; $4b92: $02
    inc c                                         ; $4b93: $0c
    add d                                         ; $4b94: $82
    ld b, $0e                                     ; $4b95: $06 $0e
    ld [bc], a                                    ; $4b97: $02
    inc c                                         ; $4b98: $0c
    add e                                         ; $4b99: $83
    ld b, $0e                                     ; $4b9a: $06 $0e
    ld b, $02                                     ; $4b9c: $06 $02
    ld c, $83                                     ; $4b9e: $0e $83
    ld a, [bc]                                    ; $4ba0: $0a
    cp $fa                                        ; $4ba1: $fe $fa
    ld [bc], a                                    ; $4ba3: $02

jr_0e8_4ba4:
    jr nc, jr_0e8_4b3a                            ; $4ba4: $30 $94

    ld a, [hl-]                                   ; $4ba6: $3a
    ccf                                           ; $4ba7: $3f
    ld a, [hl-]                                   ; $4ba8: $3a
    ccf                                           ; $4ba9: $3f
    scf                                           ; $4baa: $37
    ccf                                           ; $4bab: $3f
    ld l, c                                       ; $4bac: $69
    ld a, a                                       ; $4bad: $7f

jr_0e8_4bae:
    ld a, l                                       ; $4bae: $7d
    ld a, [hl]                                    ; $4baf: $7e
    ld h, a                                       ; $4bb0: $67
    ld a, l                                       ; $4bb1: $7d
    ld b, e                                       ; $4bb2: $43
    ld a, a                                       ; $4bb3: $7f
    ldh [rIE], a                                  ; $4bb4: $e0 $ff
    add l                                         ; $4bb6: $85
    rst $38                                       ; $4bb7: $ff
    ret z                                         ; $4bb8: $c8

    rst $38                                       ; $4bb9: $ff
    ld [bc], a                                    ; $4bba: $02

jr_0e8_4bbb:
    ld a, a                                       ; $4bbb: $7f
    add d                                         ; $4bbc: $82

jr_0e8_4bbd:
    ld c, e                                       ; $4bbd: $4b
    ld a, e                                       ; $4bbe: $7b
    ld [bc], a                                    ; $4bbf: $02
    jr c, @+$08                                   ; $4bc0: $38 $06

    nop                                           ; $4bc2: $00
    add a                                         ; $4bc3: $87
    ld [$0818], sp                                ; $4bc4: $08 $18 $08
    jr jr_0e8_4bd1                                ; $4bc7: $18 $08

    jr jr_0e8_4bcf                                ; $4bc9: $18 $04

    ld [bc], a                                    ; $4bcb: $02
    inc e                                         ; $4bcc: $1c
    adc l                                         ; $4bcd: $8d
    inc d                                         ; $4bce: $14

jr_0e8_4bcf:
    inc c                                         ; $4bcf: $0c
    inc d                                         ; $4bd0: $14

jr_0e8_4bd1:
    inc c                                         ; $4bd1: $0c
    inc d                                         ; $4bd2: $14
    inc c                                         ; $4bd3: $0c
    inc e                                         ; $4bd4: $1c
    inc c                                         ; $4bd5: $0c
    inc e                                         ; $4bd6: $1c
    rrca                                          ; $4bd7: $0f
    rra                                           ; $4bd8: $1f
    dec e                                         ; $4bd9: $1d
    rra                                           ; $4bda: $1f
    ld [bc], a                                    ; $4bdb: $02
    ld c, $06                                     ; $4bdc: $0e $06
    nop                                           ; $4bde: $00
    rst $38                                       ; $4bdf: $ff
    dec c                                         ; $4be0: $0d
    inc b                                         ; $4be1: $04
    ei                                            ; $4be2: $fb
    dec b                                         ; $4be3: $05
    ld a, [c]                                     ; $4be4: $f2
    ei                                            ; $4be5: $fb
    db $e3                                        ; $4be6: $e3
    ld a, [$fee4]                                 ; $4be7: $fa $e4 $fe
    di                                            ; $4bea: $f3
    ld a, [$fef3]                                 ; $4beb: $fa $f3 $fe
    ld [bc], a                                    ; $4bee: $02
    rrca                                          ; $4bef: $0f
    sbc [hl]                                      ; $4bf0: $9e
    ld [de], a                                    ; $4bf1: $12
    dec e                                         ; $4bf2: $1d
    dec l                                         ; $4bf3: $2d
    ld a, [hl-]                                   ; $4bf4: $3a
    ld h, e                                       ; $4bf5: $63
    ld a, h                                       ; $4bf6: $7c
    dec h                                         ; $4bf7: $25
    ld a, $49                                     ; $4bf8: $3e $49
    ld a, [hl]                                    ; $4bfa: $7e
    ld c, l                                       ; $4bfb: $4d
    ld a, d                                       ; $4bfc: $7a
    and h                                         ; $4bfd: $a4
    cp a                                          ; $4bfe: $bf
    ld d, [hl]                                    ; $4bff: $56
    ld a, l                                       ; $4c00: $7d
    or e                                          ; $4c01: $b3
    cp [hl]                                       ; $4c02: $be
    daa                                           ; $4c03: $27
    ccf                                           ; $4c04: $3f
    ld d, [hl]                                    ; $4c05: $56
    ld a, a                                       ; $4c06: $7f
    add hl, hl                                    ; $4c07: $29
    ccf                                           ; $4c08: $3f
    ld [hl], e                                    ; $4c09: $73
    ld a, a                                       ; $4c0a: $7f
    jr nz, jr_0e8_4c4c                            ; $4c0b: $20 $3f

    ld h, b                                       ; $4c0d: $60
    ld a, a                                       ; $4c0e: $7f
    ld [bc], a                                    ; $4c0f: $02
    ld [$0c83], sp                                ; $4c10: $08 $83 $0c
    inc b                                         ; $4c13: $04
    ld c, $02                                     ; $4c14: $0e $02
    ld [bc], a                                    ; $4c16: $02
    adc e                                         ; $4c17: $8b
    ld c, $06                                     ; $4c18: $0e $06
    ld c, $0f                                     ; $4c1a: $0e $0f
    ld bc, $030f                                  ; $4c1c: $01 $0f $03
    ld a, [bc]                                    ; $4c1f: $0a
    ld b, $0e                                     ; $4c20: $06 $0e
    ld [bc], a                                    ; $4c22: $02
    ld [bc], a                                    ; $4c23: $02
    inc c                                         ; $4c24: $0c
    add d                                         ; $4c25: $82
    ld b, $0e                                     ; $4c26: $06 $0e
    ld [bc], a                                    ; $4c28: $02
    inc c                                         ; $4c29: $0c
    add e                                         ; $4c2a: $83
    ld b, $0e                                     ; $4c2b: $06 $0e
    ld b, $02                                     ; $4c2d: $06 $02
    ld c, $9b                                     ; $4c2f: $0e $9b
    ld a, [bc]                                    ; $4c31: $0a
    ld a, [hl]                                    ; $4c32: $7e
    ld a, [$7040]                                 ; $4c33: $fa $40 $70
    ld a, e                                       ; $4c36: $7b
    ld a, a                                       ; $4c37: $7f
    ld [hl], $3f                                  ; $4c38: $36 $3f
    ld [hl], d                                    ; $4c3a: $72
    ld a, a                                       ; $4c3b: $7f
    ld l, d                                       ; $4c3c: $6a
    ld a, a                                       ; $4c3d: $7f
    halt                                          ; $4c3e: $76
    ld a, a                                       ; $4c3f: $7f
    ld l, a                                       ; $4c40: $6f
    ld a, c                                       ; $4c41: $79
    ld c, [hl]                                    ; $4c42: $4e
    ld a, a                                       ; $4c43: $7f
    pop bc                                        ; $4c44: $c1
    rst $38                                       ; $4c45: $ff
    ldh [rIE], a                                  ; $4c46: $e0 $ff
    adc d                                         ; $4c48: $8a
    rst $38                                       ; $4c49: $ff
    ld d, b                                       ; $4c4a: $50
    ld a, a                                       ; $4c4b: $7f

jr_0e8_4c4c:
    ld [bc], a                                    ; $4c4c: $02
    ccf                                           ; $4c4d: $3f
    add d                                         ; $4c4e: $82
    dec e                                         ; $4c4f: $1d
    rra                                           ; $4c50: $1f
    ld [bc], a                                    ; $4c51: $02
    ld b, $04                                     ; $4c52: $06 $04
    nop                                           ; $4c54: $00
    add e                                         ; $4c55: $83
    ld [bc], a                                    ; $4c56: $02
    ld c, $04                                     ; $4c57: $0e $04
    inc bc                                        ; $4c59: $03
    inc c                                         ; $4c5a: $0c
    adc e                                         ; $4c5b: $8b
    ld b, $0a                                     ; $4c5c: $06 $0a
    ld b, $0a                                     ; $4c5e: $06 $0a
    ld b, $0a                                     ; $4c60: $06 $0a
    ld [bc], a                                    ; $4c62: $02
    ld c, $05                                     ; $4c63: $0e $05
    rrca                                          ; $4c65: $0f
    dec c                                         ; $4c66: $0d
    inc bc                                        ; $4c67: $03
    rrca                                          ; $4c68: $0f
    ld [bc], a                                    ; $4c69: $02
    ld c, $04                                     ; $4c6a: $0e $04
    inc c                                         ; $4c6c: $0c
    inc b                                         ; $4c6d: $04
    nop                                           ; $4c6e: $00
    rst $38                                       ; $4c6f: $ff
    dec c                                         ; $4c70: $0d
    inc b                                         ; $4c71: $04
    ei                                            ; $4c72: $fb
    dec b                                         ; $4c73: $05
    ld a, [c]                                     ; $4c74: $f2
    ei                                            ; $4c75: $fb
    db $e3                                        ; $4c76: $e3
    ld a, [$fee4]                                 ; $4c77: $fa $e4 $fe
    di                                            ; $4c7a: $f3
    ld a, [$01f3]                                 ; $4c7b: $fa $f3 $01
    ld [bc], a                                    ; $4c7e: $02
    rrca                                          ; $4c7f: $0f
    sbc [hl]                                      ; $4c80: $9e
    dec d                                         ; $4c81: $15
    ld a, [de]                                    ; $4c82: $1a
    ld a, [hl+]                                   ; $4c83: $2a
    dec a                                         ; $4c84: $3d
    inc hl                                        ; $4c85: $23
    inc a                                         ; $4c86: $3c
    ld l, d                                       ; $4c87: $6a
    ld a, l                                       ; $4c88: $7d
    jp nc, $6dfd                                  ; $4c89: $d2 $fd $6d

    ld a, d                                       ; $4c8c: $7a
    ld h, l                                       ; $4c8d: $65
    ld a, [hl]                                    ; $4c8e: $7e
    xor a                                         ; $4c8f: $af
    cp h                                          ; $4c90: $bc
    ld h, l                                       ; $4c91: $65
    ld a, [hl]                                    ; $4c92: $7e
    ld c, a                                       ; $4c93: $4f
    ld a, a                                       ; $4c94: $7f
    ld d, [hl]                                    ; $4c95: $56
    ld a, a                                       ; $4c96: $7f
    add hl, hl                                    ; $4c97: $29
    ccf                                           ; $4c98: $3f
    ld [hl], e                                    ; $4c99: $73
    ld a, a                                       ; $4c9a: $7f
    jr nz, jr_0e8_4cdc                            ; $4c9b: $20 $3f

    jr nz, jr_0e8_4cde                            ; $4c9d: $20 $3f

    ld [bc], a                                    ; $4c9f: $02
    ld [$0c86], sp                                ; $4ca0: $08 $86 $0c
    inc b                                         ; $4ca3: $04
    ld c, $02                                     ; $4ca4: $0e $02
    ld b, $0a                                     ; $4ca6: $06 $0a
    ld [bc], a                                    ; $4ca8: $02
    ld c, $85                                     ; $4ca9: $0e $85
    rrca                                          ; $4cab: $0f
    ld bc, $030f                                  ; $4cac: $01 $0f $03
    ld [bc], a                                    ; $4caf: $02
    ld [bc], a                                    ; $4cb0: $02
    ld c, $81                                     ; $4cb1: $0e $81
    ld [bc], a                                    ; $4cb3: $02
    ld [bc], a                                    ; $4cb4: $02
    inc c                                         ; $4cb5: $0c
    add d                                         ; $4cb6: $82
    ld b, $0e                                     ; $4cb7: $06 $0e
    ld [bc], a                                    ; $4cb9: $02
    inc c                                         ; $4cba: $0c
    add e                                         ; $4cbb: $83
    ld b, $0e                                     ; $4cbc: $06 $0e
    ld b, $02                                     ; $4cbe: $06 $02
    ld c, $9b                                     ; $4cc0: $0e $9b
    ld a, [bc]                                    ; $4cc2: $0a
    cp $fa                                        ; $4cc3: $fe $fa
    ld b, b                                       ; $4cc5: $40
    ld [hl], b                                    ; $4cc6: $70
    ld a, e                                       ; $4cc7: $7b
    ld a, a                                       ; $4cc8: $7f
    ld [hl], d                                    ; $4cc9: $72
    ld a, a                                       ; $4cca: $7f
    ld l, h                                       ; $4ccb: $6c
    ld a, a                                       ; $4ccc: $7f
    ld h, h                                       ; $4ccd: $64
    ld a, a                                       ; $4cce: $7f
    ld e, b                                       ; $4ccf: $58
    ld a, a                                       ; $4cd0: $7f
    ld a, l                                       ; $4cd1: $7d
    ld h, a                                       ; $4cd2: $67
    cp b                                          ; $4cd3: $b8
    rst $38                                       ; $4cd4: $ff
    jp nz, $c1ff                                  ; $4cd5: $c2 $ff $c1

    rst $38                                       ; $4cd8: $ff
    sub l                                         ; $4cd9: $95
    rst $38                                       ; $4cda: $ff
    sub c                                         ; $4cdb: $91

jr_0e8_4cdc:
    rst $38                                       ; $4cdc: $ff
    ld [bc], a                                    ; $4cdd: $02

jr_0e8_4cde:
    ld a, [hl]                                    ; $4cde: $7e
    ld [bc], a                                    ; $4cdf: $02
    ld e, $06                                     ; $4ce0: $1e $06
    nop                                           ; $4ce2: $00
    sbc d                                         ; $4ce3: $9a
    jr nc, jr_0e8_4d56                            ; $4ce4: $30 $70

    jr nz, jr_0e8_4d48                            ; $4ce6: $20 $60

    jr nz, jr_0e8_4d4a                            ; $4ce8: $20 $60

    ld [hl], b                                    ; $4cea: $70
    ld d, b                                       ; $4ceb: $50
    ld [hl], b                                    ; $4cec: $70
    ld d, b                                       ; $4ced: $50
    ld [hl], b                                    ; $4cee: $70
    db $10                                        ; $4cef: $10
    ld [hl], b                                    ; $4cf0: $70
    jr nc, jr_0e8_4d43                            ; $4cf1: $30 $50

jr_0e8_4cf3:
    ld [hl], b                                    ; $4cf3: $70
    ld c, b                                       ; $4cf4: $48
    ld a, b                                       ; $4cf5: $78
    ld l, b                                       ; $4cf6: $68
    ld a, b                                       ; $4cf7: $78
    ld e, [hl]                                    ; $4cf8: $5e
    ld a, [hl]                                    ; $4cf9: $7e
    ld [hl], e                                    ; $4cfa: $73
    ld a, a                                       ; $4cfb: $7f
    ld e, h                                       ; $4cfc: $5c
    ld a, h                                       ; $4cfd: $7c
    ld [bc], a                                    ; $4cfe: $02
    jr nz, jr_0e8_4d03                            ; $4cff: $20 $02

    nop                                           ; $4d01: $00
    rst $38                                       ; $4d02: $ff

jr_0e8_4d03:
    dec c                                         ; $4d03: $0d
    inc b                                         ; $4d04: $04
    ei                                            ; $4d05: $fb
    dec b                                         ; $4d06: $05
    ld a, [c]                                     ; $4d07: $f2
    ei                                            ; $4d08: $fb
    db $e4                                        ; $4d09: $e4
    ld a, [$fee5]                                 ; $4d0a: $fa $e5 $fe
    db $f4                                        ; $4d0d: $f4
    ld a, [$fff4]                                 ; $4d0e: $fa $f4 $ff
    ld [bc], a                                    ; $4d11: $02
    rrca                                          ; $4d12: $0f
    sbc [hl]                                      ; $4d13: $9e
    dec d                                         ; $4d14: $15
    ld a, [de]                                    ; $4d15: $1a
    ld a, [hl+]                                   ; $4d16: $2a
    dec a                                         ; $4d17: $3d
    inc hl                                        ; $4d18: $23
    inc a                                         ; $4d19: $3c
    ld l, d                                       ; $4d1a: $6a
    ld a, l                                       ; $4d1b: $7d
    ld [c], a                                     ; $4d1c: $e2
    db $fd                                        ; $4d1d: $fd
    ld l, l                                       ; $4d1e: $6d
    ld a, d                                       ; $4d1f: $7a
    ld d, l                                       ; $4d20: $55
    ld a, [hl]                                    ; $4d21: $7e
    xor a                                         ; $4d22: $af
    cp h                                          ; $4d23: $bc
    ld b, l                                       ; $4d24: $45
    ld a, [hl]                                    ; $4d25: $7e
    ld e, a                                       ; $4d26: $5f
    ld a, a                                       ; $4d27: $7f
    ld h, $3f                                     ; $4d28: $26 $3f
    add hl, sp                                    ; $4d2a: $39
    ccf                                           ; $4d2b: $3f
    ld [hl], a                                    ; $4d2c: $77
    ld a, a                                       ; $4d2d: $7f
    ld h, b                                       ; $4d2e: $60
    ld a, a                                       ; $4d2f: $7f
    ld b, e                                       ; $4d30: $43
    ld a, a                                       ; $4d31: $7f
    ld [bc], a                                    ; $4d32: $02
    ld [$0c86], sp                                ; $4d33: $08 $86 $0c
    inc b                                         ; $4d36: $04
    ld c, $02                                     ; $4d37: $0e $02
    ld b, $0a                                     ; $4d39: $06 $0a
    ld [bc], a                                    ; $4d3b: $02
    ld c, $85                                     ; $4d3c: $0e $85
    rrca                                          ; $4d3e: $0f
    ld bc, $030f                                  ; $4d3f: $01 $0f $03
    ld [bc], a                                    ; $4d42: $02

jr_0e8_4d43:
    ld [bc], a                                    ; $4d43: $02
    ld c, $81                                     ; $4d44: $0e $81
    ld [bc], a                                    ; $4d46: $02
    ld [bc], a                                    ; $4d47: $02

jr_0e8_4d48:
    inc c                                         ; $4d48: $0c
    add d                                         ; $4d49: $82

jr_0e8_4d4a:
    ld b, $0e                                     ; $4d4a: $06 $0e
    ld [bc], a                                    ; $4d4c: $02
    inc c                                         ; $4d4d: $0c
    add e                                         ; $4d4e: $83
    ld b, $0e                                     ; $4d4f: $06 $0e
    ld b, $02                                     ; $4d51: $06 $02
    ld c, $83                                     ; $4d53: $0e $83
    ld a, [bc]                                    ; $4d55: $0a

jr_0e8_4d56:
    cp $fa                                        ; $4d56: $fe $fa
    ld [bc], a                                    ; $4d58: $02
    jr nc, jr_0e8_4cf3                            ; $4d59: $30 $98

    ld a, [hl-]                                   ; $4d5b: $3a
    ccf                                           ; $4d5c: $3f
    ld a, d                                       ; $4d5d: $7a
    ld a, a                                       ; $4d5e: $7f
    halt                                          ; $4d5f: $76
    ld a, a                                       ; $4d60: $7f
    ld [hl], d                                    ; $4d61: $72
    ld a, a                                       ; $4d62: $7f
    ld l, h                                       ; $4d63: $6c
    ld a, a                                       ; $4d64: $7f
    cp $f3                                        ; $4d65: $fe $f3
    db $dd                                        ; $4d67: $dd
    rst $38                                       ; $4d68: $ff
    ldh [rIE], a                                  ; $4d69: $e0 $ff
    add e                                         ; $4d6b: $83
    rst $38                                       ; $4d6c: $ff
    adc c                                         ; $4d6d: $89
    rst $38                                       ; $4d6e: $ff
    ld [hl], l                                    ; $4d6f: $75
    ld a, a                                       ; $4d70: $7f
    ld a, $3f                                     ; $4d71: $3e $3f
    ld [bc], a                                    ; $4d73: $02
    inc bc                                        ; $4d74: $03
    ld b, $00                                     ; $4d75: $06 $00
    add e                                         ; $4d77: $83
    ld [$0818], sp                                ; $4d78: $08 $18 $08
    inc bc                                        ; $4d7b: $03
    jr @-$70                                      ; $4d7c: $18 $8e

    inc e                                         ; $4d7e: $1c
    inc d                                         ; $4d7f: $14
    inc e                                         ; $4d80: $1c
    inc d                                         ; $4d81: $14
    inc e                                         ; $4d82: $1c
    inc d                                         ; $4d83: $14
    inc e                                         ; $4d84: $1c
    inc b                                         ; $4d85: $04
    inc d                                         ; $4d86: $14
    inc e                                         ; $4d87: $1c
    inc d                                         ; $4d88: $14
    inc e                                         ; $4d89: $1c
    inc d                                         ; $4d8a: $14
    inc e                                         ; $4d8b: $1c
    ld [bc], a                                    ; $4d8c: $02
    rra                                           ; $4d8d: $1f
    add d                                         ; $4d8e: $82
    add hl, de                                    ; $4d8f: $19
    rra                                           ; $4d90: $1f
    ld [bc], a                                    ; $4d91: $02
    ld c, $04                                     ; $4d92: $0e $04
    nop                                           ; $4d94: $00
    rst $38                                       ; $4d95: $ff
    dec c                                         ; $4d96: $0d
    inc b                                         ; $4d97: $04
    ei                                            ; $4d98: $fb
    dec b                                         ; $4d99: $05
    ld a, [c]                                     ; $4d9a: $f2
    ei                                            ; $4d9b: $fb
    db $e3                                        ; $4d9c: $e3
    ld a, [$fee4]                                 ; $4d9d: $fa $e4 $fe
    di                                            ; $4da0: $f3
    ld a, [$fef3]                                 ; $4da1: $fa $f3 $fe
    ld [bc], a                                    ; $4da4: $02
    rrca                                          ; $4da5: $0f
    sbc [hl]                                      ; $4da6: $9e
    ld [de], a                                    ; $4da7: $12
    dec e                                         ; $4da8: $1d
    dec l                                         ; $4da9: $2d
    ld a, [hl-]                                   ; $4daa: $3a
    ld h, e                                       ; $4dab: $63
    ld a, h                                       ; $4dac: $7c
    dec h                                         ; $4dad: $25
    ld a, $49                                     ; $4dae: $3e $49
    ld a, [hl]                                    ; $4db0: $7e
    ld c, l                                       ; $4db1: $4d
    ld a, d                                       ; $4db2: $7a
    and h                                         ; $4db3: $a4
    cp a                                          ; $4db4: $bf
    ld d, [hl]                                    ; $4db5: $56
    ld a, l                                       ; $4db6: $7d
    or e                                          ; $4db7: $b3
    cp [hl]                                       ; $4db8: $be
    daa                                           ; $4db9: $27
    ccf                                           ; $4dba: $3f
    ld d, [hl]                                    ; $4dbb: $56
    ld a, a                                       ; $4dbc: $7f
    add hl, hl                                    ; $4dbd: $29
    ccf                                           ; $4dbe: $3f
    ld [hl], e                                    ; $4dbf: $73
    ld a, a                                       ; $4dc0: $7f
    jr nz, jr_0e8_4e02                            ; $4dc1: $20 $3f

    ld h, b                                       ; $4dc3: $60
    ld a, a                                       ; $4dc4: $7f
    ld [bc], a                                    ; $4dc5: $02
    ld [$0c83], sp                                ; $4dc6: $08 $83 $0c
    inc b                                         ; $4dc9: $04
    ld c, $02                                     ; $4dca: $0e $02
    ld [bc], a                                    ; $4dcc: $02
    adc e                                         ; $4dcd: $8b
    ld c, $06                                     ; $4dce: $0e $06
    ld c, $0f                                     ; $4dd0: $0e $0f
    ld bc, $030f                                  ; $4dd2: $01 $0f $03
    ld a, [bc]                                    ; $4dd5: $0a
    ld b, $0e                                     ; $4dd6: $06 $0e
    ld [bc], a                                    ; $4dd8: $02
    ld [bc], a                                    ; $4dd9: $02
    inc c                                         ; $4dda: $0c
    add d                                         ; $4ddb: $82
    ld b, $0e                                     ; $4ddc: $06 $0e
    ld [bc], a                                    ; $4dde: $02
    inc c                                         ; $4ddf: $0c
    add e                                         ; $4de0: $83
    ld b, $0e                                     ; $4de1: $06 $0e
    ld b, $02                                     ; $4de3: $06 $02
    ld c, $9b                                     ; $4de5: $0e $9b
    ld a, [bc]                                    ; $4de7: $0a
    ld a, [hl]                                    ; $4de8: $7e
    ld a, [$7040]                                 ; $4de9: $fa $40 $70
    ld a, e                                       ; $4dec: $7b
    ld a, a                                       ; $4ded: $7f
    ld [hl], $3f                                  ; $4dee: $36 $3f
    ld [hl-], a                                   ; $4df0: $32
    ccf                                           ; $4df1: $3f
    ld l, l                                       ; $4df2: $6d
    ld a, a                                       ; $4df3: $7f
    ld a, e                                       ; $4df4: $7b
    ld a, a                                       ; $4df5: $7f
    ld h, a                                       ; $4df6: $67
    ld a, h                                       ; $4df7: $7c
    ld b, a                                       ; $4df8: $47
    ld a, a                                       ; $4df9: $7f
    jp nz, $e0ff                                  ; $4dfa: $c2 $ff $e0

    rst $38                                       ; $4dfd: $ff
    adc c                                         ; $4dfe: $89
    rst $38                                       ; $4dff: $ff
    ld d, b                                       ; $4e00: $50
    ld a, a                                       ; $4e01: $7f

jr_0e8_4e02:
    ld [bc], a                                    ; $4e02: $02
    ccf                                           ; $4e03: $3f
    add d                                         ; $4e04: $82
    ld d, $1f                                     ; $4e05: $16 $1f
    ld [bc], a                                    ; $4e07: $02
    dec de                                        ; $4e08: $1b
    inc b                                         ; $4e09: $04
    nop                                           ; $4e0a: $00
    add e                                         ; $4e0b: $83
    ld [bc], a                                    ; $4e0c: $02
    ld c, $04                                     ; $4e0d: $0e $04
    inc bc                                        ; $4e0f: $03
    inc c                                         ; $4e10: $0c
    adc h                                         ; $4e11: $8c
    ld b, $0a                                     ; $4e12: $06 $0a
    ld b, $0a                                     ; $4e14: $06 $0a
    ld c, $0a                                     ; $4e16: $0e $0a
    rlca                                          ; $4e18: $07
    dec bc                                        ; $4e19: $0b
    dec b                                         ; $4e1a: $05
    rrca                                          ; $4e1b: $0f
    dec c                                         ; $4e1c: $0d
    rrca                                          ; $4e1d: $0f
    ld [bc], a                                    ; $4e1e: $02
    ld c, $02                                     ; $4e1f: $0e $02
    inc c                                         ; $4e21: $0c
    ld [bc], a                                    ; $4e22: $02
    ld [$0481], sp                                ; $4e23: $08 $81 $04
    inc bc                                        ; $4e26: $03
    inc c                                         ; $4e27: $0c
    ld [bc], a                                    ; $4e28: $02
    nop                                           ; $4e29: $00
    rst $38                                       ; $4e2a: $ff
    dec c                                         ; $4e2b: $0d
    inc b                                         ; $4e2c: $04
    ei                                            ; $4e2d: $fb
    dec b                                         ; $4e2e: $05
    push af                                       ; $4e2f: $f5
    cp $e8                                        ; $4e30: $fe $e8
    ei                                            ; $4e32: $fb
    jp hl                                         ; $4e33: $e9


    rst $38                                       ; $4e34: $ff
    ld hl, sp-$06                                 ; $4e35: $f8 $fa
    ld hl, sp-$01                                 ; $4e37: $f8 $ff
    ld [bc], a                                    ; $4e39: $02
    rra                                           ; $4e3a: $1f
    adc b                                         ; $4e3b: $88
    ld [hl], $30                                  ; $4e3c: $36 $30
    ld d, d                                       ; $4e3e: $52
    ld d, b                                       ; $4e3f: $50
    ld c, c                                       ; $4e40: $49
    ld c, b                                       ; $4e41: $48
    ld d, b                                       ; $4e42: $50
    ld b, b                                       ; $4e43: $40
    ld [bc], a                                    ; $4e44: $02
    ld h, c                                       ; $4e45: $61
    ld [bc], a                                    ; $4e46: $02
    ld l, d                                       ; $4e47: $6a
    ld [bc], a                                    ; $4e48: $02
    dec [hl]                                      ; $4e49: $35
    add h                                         ; $4e4a: $84
    ccf                                           ; $4e4b: $3f
    ld l, $1f                                     ; $4e4c: $2e $1f
    ld de, $3102                                  ; $4e4e: $11 $02 $31
    adc d                                         ; $4e51: $8a
    ld l, [hl]                                    ; $4e52: $6e
    ld a, a                                       ; $4e53: $7f
    or c                                          ; $4e54: $b1
    rst $38                                       ; $4e55: $ff
    cp e                                          ; $4e56: $bb
    rst $38                                       ; $4e57: $ff
    cp a                                          ; $4e58: $bf
    rst $38                                       ; $4e59: $ff
    cp a                                          ; $4e5a: $bf
    rst $38                                       ; $4e5b: $ff
    ld [bc], a                                    ; $4e5c: $02
    ld [$0408], sp                                ; $4e5d: $08 $08 $04
    ld [bc], a                                    ; $4e60: $02
    inc c                                         ; $4e61: $0c
    inc b                                         ; $4e62: $04
    ld [$0002], sp                                ; $4e63: $08 $02 $00
    ld [bc], a                                    ; $4e66: $02
    ld [$0c02], sp                                ; $4e67: $08 $02 $0c
    sub b                                         ; $4e6a: $90
    ld a, [bc]                                    ; $4e6b: $0a
    ld c, $0a                                     ; $4e6c: $0e $0a
    ld c, $0a                                     ; $4e6e: $0e $0a
    ld c, $0a                                     ; $4e70: $0e $0a
    ld c, $f9                                     ; $4e72: $0e $f9
    rst $38                                       ; $4e74: $ff
    sbc b                                         ; $4e75: $98
    ld hl, sp-$21                                 ; $4e76: $f8 $df
    rst $38                                       ; $4e78: $ff
    ld a, a                                       ; $4e79: $7f
    ld e, a                                       ; $4e7a: $5f
    ld [bc], a                                    ; $4e7b: $02
    ccf                                           ; $4e7c: $3f
    ld [bc], a                                    ; $4e7d: $02
    rra                                           ; $4e7e: $1f
    inc b                                         ; $4e7f: $04
    ccf                                           ; $4e80: $3f
    add h                                         ; $4e81: $84
    cpl                                           ; $4e82: $2f
    ccf                                           ; $4e83: $3f
    jr nc, jr_0e8_4ec5                            ; $4e84: $30 $3f

    ld [bc], a                                    ; $4e86: $02
    rra                                           ; $4e87: $1f
    ld c, $00                                     ; $4e88: $0e $00
    add h                                         ; $4e8a: $84
    dec de                                        ; $4e8b: $1b
    rra                                           ; $4e8c: $1f
    ld e, $1a                                     ; $4e8d: $1e $1a
    ld [bc], a                                    ; $4e8f: $02
    inc e                                         ; $4e90: $1c
    ld [bc], a                                    ; $4e91: $02
    jr jr_0e8_4e98                                ; $4e92: $18 $04

    inc e                                         ; $4e94: $1c
    add h                                         ; $4e95: $84
    inc d                                         ; $4e96: $14
    inc e                                         ; $4e97: $1c

jr_0e8_4e98:
    inc c                                         ; $4e98: $0c
    inc e                                         ; $4e99: $1c
    ld [bc], a                                    ; $4e9a: $02
    jr jr_0e8_4ea9                                ; $4e9b: $18 $0c

    nop                                           ; $4e9d: $00
    rst $38                                       ; $4e9e: $ff
    dec c                                         ; $4e9f: $0d
    inc b                                         ; $4ea0: $04
    ei                                            ; $4ea1: $fb
    dec b                                         ; $4ea2: $05
    push af                                       ; $4ea3: $f5
    cp $e8                                        ; $4ea4: $fe $e8
    ei                                            ; $4ea6: $fb
    jp hl                                         ; $4ea7: $e9


    rst $38                                       ; $4ea8: $ff

jr_0e8_4ea9:
    ld hl, sp-$05                                 ; $4ea9: $f8 $fb
    ld hl, sp-$02                                 ; $4eab: $f8 $fe
    ld [bc], a                                    ; $4ead: $02
    rra                                           ; $4eae: $1f
    adc b                                         ; $4eaf: $88
    ld [hl], $30                                  ; $4eb0: $36 $30
    ld d, d                                       ; $4eb2: $52
    ld d, b                                       ; $4eb3: $50
    ld c, c                                       ; $4eb4: $49
    ld c, b                                       ; $4eb5: $48
    ld d, b                                       ; $4eb6: $50
    ld b, b                                       ; $4eb7: $40
    ld [bc], a                                    ; $4eb8: $02
    ld h, c                                       ; $4eb9: $61
    ld [bc], a                                    ; $4eba: $02
    ld l, d                                       ; $4ebb: $6a
    ld [bc], a                                    ; $4ebc: $02
    dec [hl]                                      ; $4ebd: $35
    add h                                         ; $4ebe: $84
    ccf                                           ; $4ebf: $3f
    ld l, $1f                                     ; $4ec0: $2e $1f
    ld de, $1302                                  ; $4ec2: $11 $02 $13

jr_0e8_4ec5:
    adc d                                         ; $4ec5: $8a
    ld l, [hl]                                    ; $4ec6: $6e
    ld a, a                                       ; $4ec7: $7f
    ld [hl], c                                    ; $4ec8: $71
    ld a, a                                       ; $4ec9: $7f
    cp e                                          ; $4eca: $bb
    rst $38                                       ; $4ecb: $ff
    cp a                                          ; $4ecc: $bf
    rst $38                                       ; $4ecd: $ff
    cp a                                          ; $4ece: $bf
    rst $38                                       ; $4ecf: $ff
    ld [bc], a                                    ; $4ed0: $02
    ld [$0408], sp                                ; $4ed1: $08 $08 $04
    ld [bc], a                                    ; $4ed4: $02
    inc c                                         ; $4ed5: $0c
    inc b                                         ; $4ed6: $04
    ld [$0002], sp                                ; $4ed7: $08 $02 $00
    ld [bc], a                                    ; $4eda: $02
    ld [$0c02], sp                                ; $4edb: $08 $02 $0c
    adc l                                         ; $4ede: $8d
    ld a, [bc]                                    ; $4edf: $0a
    ld c, $0a                                     ; $4ee0: $0e $0a
    ld c, $0a                                     ; $4ee2: $0e $0a
    ld c, $09                                     ; $4ee4: $0e $09
    rrca                                          ; $4ee6: $0f
    ei                                            ; $4ee7: $fb
    rst $38                                       ; $4ee8: $ff
    sub b                                         ; $4ee9: $90
    ldh a, [$9f]                                  ; $4eea: $f0 $9f
    ld [bc], a                                    ; $4eec: $02
    rst $38                                       ; $4eed: $ff
    add e                                         ; $4eee: $83
    cp a                                          ; $4eef: $bf
    rst $38                                       ; $4ef0: $ff
    sbc a                                         ; $4ef1: $9f
    ld b, $7f                                     ; $4ef2: $06 $7f
    add h                                         ; $4ef4: $84
    ld e, a                                       ; $4ef5: $5f
    ld a, a                                       ; $4ef6: $7f
    jr nc, @+$41                                  ; $4ef7: $30 $3f

    ld [bc], a                                    ; $4ef9: $02
    rrca                                          ; $4efa: $0f
    ld c, $00                                     ; $4efb: $0e $00
    ld [bc], a                                    ; $4efd: $02
    rlca                                          ; $4efe: $07
    ld [bc], a                                    ; $4eff: $02
    ld b, $04                                     ; $4f00: $06 $04
    inc b                                         ; $4f02: $04
    inc b                                         ; $4f03: $04
    ld b, $84                                     ; $4f04: $06 $84
    ld [bc], a                                    ; $4f06: $02
    ld b, $02                                     ; $4f07: $06 $02
    ld b, $02                                     ; $4f09: $06 $02
    inc b                                         ; $4f0b: $04
    inc c                                         ; $4f0c: $0c
    nop                                           ; $4f0d: $00
    rst $38                                       ; $4f0e: $ff
    rlca                                          ; $4f0f: $07
    ld bc, $08f9                                  ; $4f10: $01 $f9 $08
    ld a, [c]                                     ; $4f13: $f2
    ld bc, $fce9                                  ; $4f14: $01 $e9 $fc
    ld [bc], a                                    ; $4f17: $02
    ld [de], a                                    ; $4f18: $12
    ld [bc], a                                    ; $4f19: $02
    ld e, e                                       ; $4f1a: $5b
    ld [bc], a                                    ; $4f1b: $02
    ld l, l                                       ; $4f1c: $6d
    ld [bc], a                                    ; $4f1d: $02
    ld e, a                                       ; $4f1e: $5f
    ld [bc], a                                    ; $4f1f: $02
    dec a                                         ; $4f20: $3d
    ld [bc], a                                    ; $4f21: $02
    ld a, [hl+]                                   ; $4f22: $2a
    ld [bc], a                                    ; $4f23: $02
    inc d                                         ; $4f24: $14
    inc b                                         ; $4f25: $04
    nop                                           ; $4f26: $00
    add c                                         ; $4f27: $81
    jr jr_0e8_4f37                                ; $4f28: $18 $0d

    nop                                           ; $4f2a: $00
    rst $38                                       ; $4f2b: $ff
    dec c                                         ; $4f2c: $0d
    inc b                                         ; $4f2d: $04
    ei                                            ; $4f2e: $fb
    dec b                                         ; $4f2f: $05
    push af                                       ; $4f30: $f5
    cp $e9                                        ; $4f31: $fe $e9
    ei                                            ; $4f33: $fb
    ld [$f9ff], a                                 ; $4f34: $ea $ff $f9

jr_0e8_4f37:
    ld a, [$fef9]                                 ; $4f37: $fa $f9 $fe
    ld [bc], a                                    ; $4f3a: $02
    rra                                           ; $4f3b: $1f
    adc b                                         ; $4f3c: $88
    ld [hl], $30                                  ; $4f3d: $36 $30
    ld d, d                                       ; $4f3f: $52
    ld d, b                                       ; $4f40: $50
    ld c, c                                       ; $4f41: $49
    ld c, b                                       ; $4f42: $48
    ld d, b                                       ; $4f43: $50
    ld b, b                                       ; $4f44: $40
    ld [bc], a                                    ; $4f45: $02
    ld h, c                                       ; $4f46: $61
    ld [bc], a                                    ; $4f47: $02
    ld l, d                                       ; $4f48: $6a
    ld [bc], a                                    ; $4f49: $02
    dec [hl]                                      ; $4f4a: $35
    add a                                         ; $4f4b: $87
    ccf                                           ; $4f4c: $3f
    ld l, $1f                                     ; $4f4d: $2e $1f
    dec e                                         ; $4f4f: $1d
    jr nz, jr_0e8_4f91                            ; $4f50: $20 $3f

    ld [hl], e                                    ; $4f52: $73
    inc bc                                        ; $4f53: $03
    ld a, a                                       ; $4f54: $7f
    add [hl]                                      ; $4f55: $86
    cp a                                          ; $4f56: $bf
    rst $38                                       ; $4f57: $ff
    cp a                                          ; $4f58: $bf
    rst $38                                       ; $4f59: $ff
    cp a                                          ; $4f5a: $bf
    rst $38                                       ; $4f5b: $ff
    ld [bc], a                                    ; $4f5c: $02
    ld [$0408], sp                                ; $4f5d: $08 $08 $04
    ld [bc], a                                    ; $4f60: $02
    inc c                                         ; $4f61: $0c
    inc b                                         ; $4f62: $04
    ld [$0002], sp                                ; $4f63: $08 $02 $00
    inc b                                         ; $4f66: $04
    inc c                                         ; $4f67: $0c
    sub b                                         ; $4f68: $90
    ld a, [bc]                                    ; $4f69: $0a
    ld c, $0a                                     ; $4f6a: $0e $0a
    ld c, $0a                                     ; $4f6c: $0e $0a
    ld c, $0a                                     ; $4f6e: $0e $0a
    ld c, $fb                                     ; $4f70: $0e $fb
    rst $38                                       ; $4f72: $ff
    ld c, b                                       ; $4f73: $48
    ld a, b                                       ; $4f74: $78
    sbc a                                         ; $4f75: $9f
    rst $38                                       ; $4f76: $ff
    ld a, a                                       ; $4f77: $7f
    ld c, a                                       ; $4f78: $4f
    ld b, $3f                                     ; $4f79: $06 $3f
    add c                                         ; $4f7b: $81
    inc h                                         ; $4f7c: $24
    inc bc                                        ; $4f7d: $03
    ccf                                           ; $4f7e: $3f
    ld [bc], a                                    ; $4f7f: $02
    inc bc                                        ; $4f80: $03
    stop                                          ; $4f81: $10 $00
    ld [bc], a                                    ; $4f83: $02
    rrca                                          ; $4f84: $0f
    ld [bc], a                                    ; $4f85: $02
    ld c, $81                                     ; $4f86: $0e $81
    ld b, $03                                     ; $4f88: $06 $03
    ld c, $81                                     ; $4f8a: $0e $81
    ld [bc], a                                    ; $4f8c: $02
    inc bc                                        ; $4f8d: $03
    ld c, $82                                     ; $4f8e: $0e $82
    ld [bc], a                                    ; $4f90: $02

jr_0e8_4f91:
    ld c, $02                                     ; $4f91: $0e $02
    inc c                                         ; $4f93: $0c
    ld c, $00                                     ; $4f94: $0e $00
    rst $38                                       ; $4f96: $ff
    rlca                                          ; $4f97: $07
    ld bc, $08f9                                  ; $4f98: $01 $f9 $08
    ld a, [c]                                     ; $4f9b: $f2
    ld bc, $fcea                                  ; $4f9c: $01 $ea $fc
    ld [bc], a                                    ; $4f9f: $02
    ld [de], a                                    ; $4fa0: $12
    ld [bc], a                                    ; $4fa1: $02
    ld e, e                                       ; $4fa2: $5b
    ld [bc], a                                    ; $4fa3: $02
    ld l, l                                       ; $4fa4: $6d
    ld [bc], a                                    ; $4fa5: $02
    ld e, a                                       ; $4fa6: $5f
    ld [bc], a                                    ; $4fa7: $02
    dec a                                         ; $4fa8: $3d
    ld [bc], a                                    ; $4fa9: $02
    ld a, [hl+]                                   ; $4faa: $2a
    ld [bc], a                                    ; $4fab: $02
    inc d                                         ; $4fac: $14
    ld [de], a                                    ; $4fad: $12
    nop                                           ; $4fae: $00
    rst $38                                       ; $4faf: $ff
    dec c                                         ; $4fb0: $0d
    inc b                                         ; $4fb1: $04
    ei                                            ; $4fb2: $fb
    dec b                                         ; $4fb3: $05
    push af                                       ; $4fb4: $f5
    cp $e8                                        ; $4fb5: $fe $e8
    ei                                            ; $4fb7: $fb
    jp hl                                         ; $4fb8: $e9


    cp $f8                                        ; $4fb9: $fe $f8
    ld a, [$fef8]                                 ; $4fbb: $fa $f8 $fe
    ld [bc], a                                    ; $4fbe: $02
    rra                                           ; $4fbf: $1f
    adc b                                         ; $4fc0: $88
    ld [hl], $30                                  ; $4fc1: $36 $30
    ld d, d                                       ; $4fc3: $52
    ld d, b                                       ; $4fc4: $50
    ld c, c                                       ; $4fc5: $49
    ld c, b                                       ; $4fc6: $48
    ld d, b                                       ; $4fc7: $50
    ld b, b                                       ; $4fc8: $40
    ld [bc], a                                    ; $4fc9: $02
    ld h, c                                       ; $4fca: $61
    ld [bc], a                                    ; $4fcb: $02
    ld l, d                                       ; $4fcc: $6a
    ld [bc], a                                    ; $4fcd: $02
    dec [hl]                                      ; $4fce: $35
    add h                                         ; $4fcf: $84
    ccf                                           ; $4fd0: $3f
    ld l, $1f                                     ; $4fd1: $2e $1f
    ld de, $3102                                  ; $4fd3: $11 $02 $31
    adc d                                         ; $4fd6: $8a
    ld l, [hl]                                    ; $4fd7: $6e
    ld a, a                                       ; $4fd8: $7f
    or c                                          ; $4fd9: $b1
    rst $38                                       ; $4fda: $ff
    cp e                                          ; $4fdb: $bb
    rst $38                                       ; $4fdc: $ff
    cp a                                          ; $4fdd: $bf
    rst $38                                       ; $4fde: $ff
    cp a                                          ; $4fdf: $bf
    rst $38                                       ; $4fe0: $ff
    ld [bc], a                                    ; $4fe1: $02
    inc b                                         ; $4fe2: $04
    ld [$0202], sp                                ; $4fe3: $08 $02 $02
    ld b, $04                                     ; $4fe6: $06 $04
    inc b                                         ; $4fe8: $04
    ld [bc], a                                    ; $4fe9: $02
    nop                                           ; $4fea: $00
    ld [bc], a                                    ; $4feb: $02
    inc b                                         ; $4fec: $04
    ld [bc], a                                    ; $4fed: $02
    ld b, $90                                     ; $4fee: $06 $90
    dec b                                         ; $4ff0: $05
    rlca                                          ; $4ff1: $07
    dec b                                         ; $4ff2: $05
    rlca                                          ; $4ff3: $07
    dec b                                         ; $4ff4: $05
    rlca                                          ; $4ff5: $07
    dec b                                         ; $4ff6: $05
    rlca                                          ; $4ff7: $07
    db $fd                                        ; $4ff8: $fd
    rst $38                                       ; $4ff9: $ff
    sub b                                         ; $4ffa: $90
    ldh a, [$df]                                  ; $4ffb: $f0 $df
    rst $38                                       ; $4ffd: $ff
    ld a, a                                       ; $4ffe: $7f
    ld e, a                                       ; $4fff: $5f
    ld [bc], a                                    ; $5000: $02
    ccf                                           ; $5001: $3f
    inc b                                         ; $5002: $04
    rra                                           ; $5003: $1f
    add c                                         ; $5004: $81
    ld a, $03                                     ; $5005: $3e $03
    ccf                                           ; $5007: $3f
    add d                                         ; $5008: $82
    ld hl, $023f                                  ; $5009: $21 $3f $02
    rra                                           ; $500c: $1f
    ld c, $00                                     ; $500d: $0e $00
    add c                                         ; $500f: $81
    dec c                                         ; $5010: $0d
    ld [bc], a                                    ; $5011: $02
    rrca                                          ; $5012: $0f
    add c                                         ; $5013: $81
    dec c                                         ; $5014: $0d
    ld b, $0e                                     ; $5015: $06 $0e
    add c                                         ; $5017: $81
    ld b, $03                                     ; $5018: $06 $03
    ld c, $02                                     ; $501a: $0e $02
    inc c                                         ; $501c: $0c
    ld [bc], a                                    ; $501d: $02
    ld [$000c], sp                                ; $501e: $08 $0c $00
    rst $38                                       ; $5021: $ff
    rlca                                          ; $5022: $07
    ld bc, $08f9                                  ; $5023: $01 $f9 $08
    ld a, [c]                                     ; $5026: $f2
    ld bc, $fce9                                  ; $5027: $01 $e9 $fc
    ld [bc], a                                    ; $502a: $02
    ld [de], a                                    ; $502b: $12
    ld [bc], a                                    ; $502c: $02
    ld e, e                                       ; $502d: $5b
    ld [bc], a                                    ; $502e: $02
    ld l, l                                       ; $502f: $6d
    ld [bc], a                                    ; $5030: $02
    ld e, a                                       ; $5031: $5f
    ld [bc], a                                    ; $5032: $02
    dec a                                         ; $5033: $3d
    ld [bc], a                                    ; $5034: $02
    ld a, [hl+]                                   ; $5035: $2a
    ld [bc], a                                    ; $5036: $02
    inc d                                         ; $5037: $14
    inc b                                         ; $5038: $04
    nop                                           ; $5039: $00
    add c                                         ; $503a: $81
    inc e                                         ; $503b: $1c
    dec c                                         ; $503c: $0d
    nop                                           ; $503d: $00
    rst $38                                       ; $503e: $ff
    dec c                                         ; $503f: $0d
    inc b                                         ; $5040: $04
    ei                                            ; $5041: $fb
    dec b                                         ; $5042: $05
    push af                                       ; $5043: $f5
    cp $e8                                        ; $5044: $fe $e8
    ld a, [$fee8]                                 ; $5046: $fa $e8 $fe
    ld hl, sp-$06                                 ; $5049: $f8 $fa
    ld hl, sp-$02                                 ; $504b: $f8 $fe
    ld [bc], a                                    ; $504d: $02
    rrca                                          ; $504e: $0f
    add h                                         ; $504f: $84
    dec de                                        ; $5050: $1b
    jr jr_0e8_507c                                ; $5051: $18 $29

    jr z, jr_0e8_5057                             ; $5053: $28 $02

    inc h                                         ; $5055: $24
    add d                                         ; $5056: $82

jr_0e8_5057:
    jr z, jr_0e8_5079                             ; $5057: $28 $20

    ld [bc], a                                    ; $5059: $02
    jr nc, jr_0e8_505e                            ; $505a: $30 $02

    dec [hl]                                      ; $505c: $35
    ld [bc], a                                    ; $505d: $02

jr_0e8_505e:
    ld a, [de]                                    ; $505e: $1a
    add h                                         ; $505f: $84
    rra                                           ; $5060: $1f
    rla                                           ; $5061: $17
    rrca                                          ; $5062: $0f
    ld [$1c02], sp                                ; $5063: $08 $02 $1c
    adc d                                         ; $5066: $8a
    scf                                           ; $5067: $37
    ccf                                           ; $5068: $3f
    ld e, b                                       ; $5069: $58
    ld a, a                                       ; $506a: $7f
    ld e, l                                       ; $506b: $5d
    ld a, a                                       ; $506c: $7f
    ld e, a                                       ; $506d: $5f
    ld a, a                                       ; $506e: $7f
    sbc a                                         ; $506f: $9f
    rst $38                                       ; $5070: $ff
    ld [bc], a                                    ; $5071: $02
    ld [$0402], sp                                ; $5072: $08 $02 $04
    ld [bc], a                                    ; $5075: $02
    ld [bc], a                                    ; $5076: $02
    add c                                         ; $5077: $81
    ld a, [bc]                                    ; $5078: $0a

jr_0e8_5079:
    inc bc                                        ; $5079: $03
    ld [bc], a                                    ; $507a: $02
    ld [bc], a                                    ; $507b: $02

jr_0e8_507c:
    ld a, [bc]                                    ; $507c: $0a
    ld [bc], a                                    ; $507d: $02
    ld b, $03                                     ; $507e: $06 $03
    inc c                                         ; $5080: $0c
    add c                                         ; $5081: $81
    inc b                                         ; $5082: $04
    inc b                                         ; $5083: $04
    ld [$0681], sp                                ; $5084: $08 $81 $06
    inc bc                                        ; $5087: $03
    ld c, $88                                     ; $5088: $0e $88
    dec c                                         ; $508a: $0d
    rrca                                          ; $508b: $0f
    dec c                                         ; $508c: $0d
    rrca                                          ; $508d: $0f
    dec c                                         ; $508e: $0d
    rrca                                          ; $508f: $0f
    rst $18                                       ; $5090: $df
    rst $38                                       ; $5091: $ff
    ld [bc], a                                    ; $5092: $02
    ld a, a                                       ; $5093: $7f
    ld [bc], a                                    ; $5094: $02
    ccf                                           ; $5095: $3f
    inc b                                         ; $5096: $04
    rra                                           ; $5097: $1f
    inc b                                         ; $5098: $04
    ccf                                           ; $5099: $3f
    add h                                         ; $509a: $84
    cpl                                           ; $509b: $2f
    ccf                                           ; $509c: $3f
    jr nz, @+$41                                  ; $509d: $20 $3f

    ld [bc], a                                    ; $509f: $02
    rra                                           ; $50a0: $1f
    inc c                                         ; $50a1: $0c
    nop                                           ; $50a2: $00
    add e                                         ; $50a3: $83
    add hl, bc                                    ; $50a4: $09
    rrca                                          ; $50a5: $0f
    add hl, bc                                    ; $50a6: $09
    ld [bc], a                                    ; $50a7: $02
    rrca                                          ; $50a8: $0f
    add e                                         ; $50a9: $83
    dec c                                         ; $50aa: $0d
    rrca                                          ; $50ab: $0f
    add hl, bc                                    ; $50ac: $09
    ld b, $0e                                     ; $50ad: $06 $0e
    add d                                         ; $50af: $82
    ld a, [bc]                                    ; $50b0: $0a
    ld c, $02                                     ; $50b1: $0e $02
    inc c                                         ; $50b3: $0c
    ld c, $00                                     ; $50b4: $0e $00
    rst $38                                       ; $50b6: $ff
    rlca                                          ; $50b7: $07
    ld bc, $08f9                                  ; $50b8: $01 $f9 $08
    ld a, [c]                                     ; $50bb: $f2
    ld bc, $fce9                                  ; $50bc: $01 $e9 $fc
    ld [bc], a                                    ; $50bf: $02
    ld [de], a                                    ; $50c0: $12
    ld [bc], a                                    ; $50c1: $02
    ld e, e                                       ; $50c2: $5b
    ld [bc], a                                    ; $50c3: $02
    ld l, l                                       ; $50c4: $6d
    ld [bc], a                                    ; $50c5: $02
    ld e, a                                       ; $50c6: $5f
    ld [bc], a                                    ; $50c7: $02
    dec a                                         ; $50c8: $3d
    ld [bc], a                                    ; $50c9: $02
    ld a, [hl+]                                   ; $50ca: $2a
    ld [bc], a                                    ; $50cb: $02
    inc d                                         ; $50cc: $14
    inc b                                         ; $50cd: $04
    nop                                           ; $50ce: $00
    add c                                         ; $50cf: $81
    inc c                                         ; $50d0: $0c
    dec c                                         ; $50d1: $0d
    nop                                           ; $50d2: $00
    rst $38                                       ; $50d3: $ff
    dec c                                         ; $50d4: $0d
    inc b                                         ; $50d5: $04
    ei                                            ; $50d6: $fb
    dec b                                         ; $50d7: $05
    push af                                       ; $50d8: $f5
    cp $e9                                        ; $50d9: $fe $e9
    ei                                            ; $50db: $fb
    ld [$f9fe], a                                 ; $50dc: $ea $fe $f9
    ld a, [$fff9]                                 ; $50df: $fa $f9 $ff
    ld [bc], a                                    ; $50e2: $02
    rra                                           ; $50e3: $1f
    adc b                                         ; $50e4: $88
    ld [hl], $30                                  ; $50e5: $36 $30
    ld d, d                                       ; $50e7: $52
    ld d, b                                       ; $50e8: $50
    ld c, c                                       ; $50e9: $49
    ld c, b                                       ; $50ea: $48
    ld d, b                                       ; $50eb: $50
    ld b, b                                       ; $50ec: $40
    ld [bc], a                                    ; $50ed: $02
    ld h, c                                       ; $50ee: $61
    ld [bc], a                                    ; $50ef: $02
    ld l, d                                       ; $50f0: $6a
    ld [bc], a                                    ; $50f1: $02
    dec [hl]                                      ; $50f2: $35
    sub b                                         ; $50f3: $90
    ccf                                           ; $50f4: $3f
    ld l, $1f                                     ; $50f5: $2e $1f
    rla                                           ; $50f7: $17
    ld h, b                                       ; $50f8: $60
    ld a, a                                       ; $50f9: $7f
    ld a, c                                       ; $50fa: $79
    ld a, a                                       ; $50fb: $7f
    cp a                                          ; $50fc: $bf
    rst $38                                       ; $50fd: $ff
    cp a                                          ; $50fe: $bf
    rst $38                                       ; $50ff: $ff
    cp a                                          ; $5100: $bf
    rst $38                                       ; $5101: $ff
    cp a                                          ; $5102: $bf
    rst $38                                       ; $5103: $ff
    ld [bc], a                                    ; $5104: $02
    inc b                                         ; $5105: $04
    ld [$0202], sp                                ; $5106: $08 $02 $02
    ld b, $04                                     ; $5109: $06 $04
    inc b                                         ; $510b: $04
    ld [bc], a                                    ; $510c: $02
    nop                                           ; $510d: $00
    ld [bc], a                                    ; $510e: $02
    inc b                                         ; $510f: $04
    inc b                                         ; $5110: $04
    ld b, $8a                                     ; $5111: $06 $8a
    dec b                                         ; $5113: $05
    rlca                                          ; $5114: $07
    dec b                                         ; $5115: $05
    rlca                                          ; $5116: $07
    dec b                                         ; $5117: $05
    rlca                                          ; $5118: $07
    ld sp, hl                                     ; $5119: $f9
    rst $38                                       ; $511a: $ff
    ret nc                                        ; $511b: $d0

    ldh a, [rSC]                                  ; $511c: $f0 $02
    ld a, a                                       ; $511e: $7f
    ld [bc], a                                    ; $511f: $02
    ccf                                           ; $5120: $3f
    add c                                         ; $5121: $81
    scf                                           ; $5122: $37
    inc bc                                        ; $5123: $03
    ccf                                           ; $5124: $3f
    add [hl]                                      ; $5125: $86
    daa                                           ; $5126: $27
    ccf                                           ; $5127: $3f
    add hl, sp                                    ; $5128: $39
    ccf                                           ; $5129: $3f
    daa                                           ; $512a: $27
    ccf                                           ; $512b: $3f
    ld [bc], a                                    ; $512c: $02
    ld e, $10                                     ; $512d: $1e $10
    nop                                           ; $512f: $00
    add h                                         ; $5130: $84
    add hl, de                                    ; $5131: $19
    rra                                           ; $5132: $1f
    ld e, $12                                     ; $5133: $1e $12
    ld b, $1c                                     ; $5135: $06 $1c
    add c                                         ; $5137: $81
    inc b                                         ; $5138: $04
    inc bc                                        ; $5139: $03
    inc e                                         ; $513a: $1c
    stop                                          ; $513b: $10 $00
    rst $38                                       ; $513d: $ff
    rlca                                          ; $513e: $07
    ld bc, $08f9                                  ; $513f: $01 $f9 $08
    ld a, [c]                                     ; $5142: $f2
    ld bc, $fcea                                  ; $5143: $01 $ea $fc
    ld [bc], a                                    ; $5146: $02
    ld [de], a                                    ; $5147: $12
    ld [bc], a                                    ; $5148: $02
    ld e, e                                       ; $5149: $5b
    ld [bc], a                                    ; $514a: $02
    ld l, l                                       ; $514b: $6d
    ld [bc], a                                    ; $514c: $02
    ld e, a                                       ; $514d: $5f
    ld [bc], a                                    ; $514e: $02
    dec a                                         ; $514f: $3d
    ld [bc], a                                    ; $5150: $02
    ld a, [hl+]                                   ; $5151: $2a
    ld [bc], a                                    ; $5152: $02
    inc d                                         ; $5153: $14
    ld [de], a                                    ; $5154: $12
    nop                                           ; $5155: $00
    rst $38                                       ; $5156: $ff
    dec c                                         ; $5157: $0d
    inc b                                         ; $5158: $04
    ei                                            ; $5159: $fb
    dec b                                         ; $515a: $05
    push af                                       ; $515b: $f5
    cp $e8                                        ; $515c: $fe $e8
    ei                                            ; $515e: $fb
    jp hl                                         ; $515f: $e9


    rst $38                                       ; $5160: $ff
    ld hl, sp-$05                                 ; $5161: $f8 $fb
    ld hl, sp-$01                                 ; $5163: $f8 $ff
    ld [bc], a                                    ; $5165: $02
    rra                                           ; $5166: $1f
    adc b                                         ; $5167: $88
    ld [hl], $30                                  ; $5168: $36 $30
    ld d, d                                       ; $516a: $52
    ld d, b                                       ; $516b: $50
    ld c, c                                       ; $516c: $49
    ld c, b                                       ; $516d: $48
    ld d, b                                       ; $516e: $50
    ld b, b                                       ; $516f: $40
    ld [bc], a                                    ; $5170: $02
    ld h, c                                       ; $5171: $61
    ld [bc], a                                    ; $5172: $02
    ld l, d                                       ; $5173: $6a
    ld [bc], a                                    ; $5174: $02
    dec [hl]                                      ; $5175: $35
    add h                                         ; $5176: $84
    ccf                                           ; $5177: $3f
    ld l, $1f                                     ; $5178: $2e $1f
    ld de, $3102                                  ; $517a: $11 $02 $31
    adc d                                         ; $517d: $8a
    ld l, [hl]                                    ; $517e: $6e
    ld a, a                                       ; $517f: $7f
    or c                                          ; $5180: $b1
    rst $38                                       ; $5181: $ff
    cp e                                          ; $5182: $bb
    rst $38                                       ; $5183: $ff
    cp a                                          ; $5184: $bf
    rst $38                                       ; $5185: $ff
    cp a                                          ; $5186: $bf
    rst $38                                       ; $5187: $ff
    ld [bc], a                                    ; $5188: $02
    ld [$0408], sp                                ; $5189: $08 $08 $04
    ld [bc], a                                    ; $518c: $02
    inc c                                         ; $518d: $0c
    inc b                                         ; $518e: $04
    ld [$0002], sp                                ; $518f: $08 $02 $00
    ld [bc], a                                    ; $5192: $02
    ld [$0c02], sp                                ; $5193: $08 $02 $0c
    adc l                                         ; $5196: $8d
    ld a, [bc]                                    ; $5197: $0a
    ld c, $0a                                     ; $5198: $0e $0a
    ld c, $0a                                     ; $519a: $0e $0a
    ld c, $0a                                     ; $519c: $0e $0a
    ld c, $f9                                     ; $519e: $0e $f9
    rst $38                                       ; $51a0: $ff
    or b                                          ; $51a1: $b0
    ldh a, [$bf]                                  ; $51a2: $f0 $bf
    ld [bc], a                                    ; $51a4: $02
    rst $38                                       ; $51a5: $ff
    add c                                         ; $51a6: $81
    cp a                                          ; $51a7: $bf
    ld b, $7f                                     ; $51a8: $06 $7f
    add c                                         ; $51aa: $81
    ld h, a                                       ; $51ab: $67
    inc bc                                        ; $51ac: $03
    ld a, a                                       ; $51ad: $7f
    add d                                         ; $51ae: $82
    jr c, @+$41                                   ; $51af: $38 $3f

    ld [bc], a                                    ; $51b1: $02
    rra                                           ; $51b2: $1f
    ld c, $00                                     ; $51b3: $0e $00
    add h                                         ; $51b5: $84
    dec bc                                        ; $51b6: $0b
    rrca                                          ; $51b7: $0f
    ld c, $0a                                     ; $51b8: $0e $0a
    ld [bc], a                                    ; $51ba: $02
    inc c                                         ; $51bb: $0c
    inc b                                         ; $51bc: $04
    ld [$0c04], sp                                ; $51bd: $08 $04 $0c
    add d                                         ; $51c0: $82
    inc b                                         ; $51c1: $04
    inc c                                         ; $51c2: $0c
    ld [bc], a                                    ; $51c3: $02
    ld [$000c], sp                                ; $51c4: $08 $0c $00
    rst $38                                       ; $51c7: $ff
    rlca                                          ; $51c8: $07
    ld bc, $08f9                                  ; $51c9: $01 $f9 $08
    ld a, [c]                                     ; $51cc: $f2
    ld bc, $fce9                                  ; $51cd: $01 $e9 $fc
    ld [bc], a                                    ; $51d0: $02
    ld [de], a                                    ; $51d1: $12
    ld [bc], a                                    ; $51d2: $02
    ld e, e                                       ; $51d3: $5b
    ld [bc], a                                    ; $51d4: $02
    ld l, l                                       ; $51d5: $6d
    ld [bc], a                                    ; $51d6: $02
    ld e, a                                       ; $51d7: $5f
    ld [bc], a                                    ; $51d8: $02
    dec a                                         ; $51d9: $3d
    ld [bc], a                                    ; $51da: $02
    ld a, [hl+]                                   ; $51db: $2a
    ld [bc], a                                    ; $51dc: $02
    inc d                                         ; $51dd: $14
    inc b                                         ; $51de: $04
    nop                                           ; $51df: $00
    add c                                         ; $51e0: $81
    inc e                                         ; $51e1: $1c
    dec c                                         ; $51e2: $0d
    nop                                           ; $51e3: $00
    rst $38                                       ; $51e4: $ff
    dec c                                         ; $51e5: $0d
    inc b                                         ; $51e6: $04
    ei                                            ; $51e7: $fb
    dec b                                         ; $51e8: $05
    push af                                       ; $51e9: $f5
    cp $e8                                        ; $51ea: $fe $e8
    ei                                            ; $51ec: $fb
    jp hl                                         ; $51ed: $e9


    rst $38                                       ; $51ee: $ff
    ld hl, sp-$06                                 ; $51ef: $f8 $fa
    ld hl, sp-$02                                 ; $51f1: $f8 $fe
    ld [bc], a                                    ; $51f3: $02
    rra                                           ; $51f4: $1f
    add d                                         ; $51f5: $82
    dec [hl]                                      ; $51f6: $35
    ld hl, $4702                                  ; $51f7: $21 $02 $47
    adc [hl]                                      ; $51fa: $8e
    ld a, a                                       ; $51fb: $7f
    ld [hl], c                                    ; $51fc: $71
    ld a, a                                       ; $51fd: $7f
    ld h, b                                       ; $51fe: $60
    ccf                                           ; $51ff: $3f
    dec sp                                        ; $5200: $3b
    ld a, a                                       ; $5201: $7f
    ld c, b                                       ; $5202: $48
    ccf                                           ; $5203: $3f
    inc h                                         ; $5204: $24
    ccf                                           ; $5205: $3f
    ld l, $1f                                     ; $5206: $2e $1f
    ld de, $3f02                                  ; $5208: $11 $02 $3f
    adc d                                         ; $520b: $8a
    ld d, l                                       ; $520c: $55
    ld [hl], l                                    ; $520d: $75
    ld e, e                                       ; $520e: $5b
    ld a, e                                       ; $520f: $7b
    or l                                          ; $5210: $b5
    rst $38                                       ; $5211: $ff
    cp e                                          ; $5212: $bb
    cp $ba                                        ; $5213: $fe $ba
    rst $38                                       ; $5215: $ff
    ld [bc], a                                    ; $5216: $02
    ld [$0404], sp                                ; $5217: $08 $04 $04
    ld [bc], a                                    ; $521a: $02
    inc c                                         ; $521b: $0c
    ld [bc], a                                    ; $521c: $02
    ld [$0c82], sp                                ; $521d: $08 $82 $0c
    inc b                                         ; $5220: $04
    inc b                                         ; $5221: $04
    ld [$0002], sp                                ; $5222: $08 $02 $00
    ld [bc], a                                    ; $5225: $02
    ld [$0499], sp                                ; $5226: $08 $99 $04
    inc c                                         ; $5229: $0c
    inc b                                         ; $522a: $04
    inc c                                         ; $522b: $0c
    ld a, [bc]                                    ; $522c: $0a
    ld c, $02                                     ; $522d: $0e $02
    ld c, $0a                                     ; $522f: $0e $0a
    ld c, $b9                                     ; $5231: $0e $b9
    rst $38                                       ; $5233: $ff
    sbc b                                         ; $5234: $98
    ld hl, sp+$6d                                 ; $5235: $f8 $6d
    ld a, a                                       ; $5237: $7f
    ld a, l                                       ; $5238: $7d
    ld e, a                                       ; $5239: $5f
    ld a, [hl-]                                   ; $523a: $3a
    cpl                                           ; $523b: $2f
    ld a, [de]                                    ; $523c: $1a
    rra                                           ; $523d: $1f
    ld a, [hl-]                                   ; $523e: $3a
    ccf                                           ; $523f: $3f
    scf                                           ; $5240: $37
    inc bc                                        ; $5241: $03
    ccf                                           ; $5242: $3f
    add d                                         ; $5243: $82
    dec h                                         ; $5244: $25
    dec a                                         ; $5245: $3d
    ld [bc], a                                    ; $5246: $02
    jr jr_0e8_5257                                ; $5247: $18 $0e

    nop                                           ; $5249: $00
    add c                                         ; $524a: $81
    dec bc                                        ; $524b: $0b
    ld [bc], a                                    ; $524c: $02
    rrca                                          ; $524d: $0f
    add c                                         ; $524e: $81
    dec c                                         ; $524f: $0d
    ld [bc], a                                    ; $5250: $02
    ld c, $02                                     ; $5251: $0e $02
    inc c                                         ; $5253: $0c
    ld [bc], a                                    ; $5254: $02
    ld c, $81                                     ; $5255: $0e $81

jr_0e8_5257:
    ld b, $03                                     ; $5257: $06 $03
    ld c, $82                                     ; $5259: $0e $82
    ld [bc], a                                    ; $525b: $02
    ld c, $02                                     ; $525c: $0e $02
    inc c                                         ; $525e: $0c
    inc c                                         ; $525f: $0c
    nop                                           ; $5260: $00
    rst $38                                       ; $5261: $ff
    rlca                                          ; $5262: $07
    ld bc, $08f9                                  ; $5263: $01 $f9 $08
    ld a, [c]                                     ; $5266: $f2
    ld bc, $fce9                                  ; $5267: $01 $e9 $fc
    ld [bc], a                                    ; $526a: $02
    inc d                                         ; $526b: $14
    ld [bc], a                                    ; $526c: $02
    ld [hl], c                                    ; $526d: $71
    ld [bc], a                                    ; $526e: $02
    ld bc, $000e                                  ; $526f: $01 $0e $00
    add e                                         ; $5272: $83
    inc d                                         ; $5273: $14
    nop                                           ; $5274: $00
    ld [$0009], sp                                ; $5275: $08 $09 $00
    rst $38                                       ; $5278: $ff
    dec c                                         ; $5279: $0d
    inc b                                         ; $527a: $04
    ei                                            ; $527b: $fb
    dec b                                         ; $527c: $05
    push af                                       ; $527d: $f5
    cp $e8                                        ; $527e: $fe $e8
    ei                                            ; $5280: $fb
    jp hl                                         ; $5281: $e9


    rst $38                                       ; $5282: $ff
    ld hl, sp-$05                                 ; $5283: $f8 $fb
    ld hl, sp-$02                                 ; $5285: $f8 $fe
    ld [bc], a                                    ; $5287: $02
    rra                                           ; $5288: $1f
    add d                                         ; $5289: $82
    dec [hl]                                      ; $528a: $35
    ld hl, $4702                                  ; $528b: $21 $02 $47
    adc [hl]                                      ; $528e: $8e
    ld a, a                                       ; $528f: $7f
    ld [hl], c                                    ; $5290: $71
    ld a, a                                       ; $5291: $7f
    ld h, b                                       ; $5292: $60
    ccf                                           ; $5293: $3f
    dec sp                                        ; $5294: $3b
    ld a, a                                       ; $5295: $7f
    ld c, b                                       ; $5296: $48
    ccf                                           ; $5297: $3f
    inc h                                         ; $5298: $24
    ccf                                           ; $5299: $3f
    ld l, $1f                                     ; $529a: $2e $1f
    ld de, $1f02                                  ; $529c: $11 $02 $1f
    ld [bc], a                                    ; $529f: $02
    dec [hl]                                      ; $52a0: $35
    adc b                                         ; $52a1: $88
    ld e, e                                       ; $52a2: $5b
    ld a, e                                       ; $52a3: $7b
    ld d, l                                       ; $52a4: $55
    ld a, a                                       ; $52a5: $7f
    cp e                                          ; $52a6: $bb
    cp $9a                                        ; $52a7: $fe $9a
    rst $38                                       ; $52a9: $ff
    ld [bc], a                                    ; $52aa: $02
    ld [$0404], sp                                ; $52ab: $08 $04 $04
    ld [bc], a                                    ; $52ae: $02
    inc c                                         ; $52af: $0c
    ld [bc], a                                    ; $52b0: $02
    ld [$0c82], sp                                ; $52b1: $08 $82 $0c
    inc b                                         ; $52b4: $04
    inc b                                         ; $52b5: $04
    ld [$0002], sp                                ; $52b6: $08 $02 $00
    inc b                                         ; $52b9: $04
    inc c                                         ; $52ba: $0c
    sub [hl]                                      ; $52bb: $96
    ld a, [bc]                                    ; $52bc: $0a
    ld c, $0a                                     ; $52bd: $0e $0a
    ld c, $01                                     ; $52bf: $0e $01
    rrca                                          ; $52c1: $0f
    add hl, bc                                    ; $52c2: $09
    rrca                                          ; $52c3: $0f
    cp d                                          ; $52c4: $ba
    cp $90                                        ; $52c5: $fe $90
    ldh a, [$89]                                  ; $52c7: $f0 $89
    rst $38                                       ; $52c9: $ff
    ld a, l                                       ; $52ca: $7d
    ld c, a                                       ; $52cb: $4f
    ld a, [hl]                                    ; $52cc: $7e
    ld c, e                                       ; $52cd: $4b
    scf                                           ; $52ce: $37
    ccf                                           ; $52cf: $3f
    scf                                           ; $52d0: $37
    ccf                                           ; $52d1: $3f
    ld [bc], a                                    ; $52d2: $02
    ld a, a                                       ; $52d3: $7f
    add d                                         ; $52d4: $82
    ld l, [hl]                                    ; $52d5: $6e
    ld a, a                                       ; $52d6: $7f
    ld [bc], a                                    ; $52d7: $02
    dec sp                                        ; $52d8: $3b
    ld [bc], a                                    ; $52d9: $02
    inc bc                                        ; $52da: $03
    ld c, $00                                     ; $52db: $0e $00
    add d                                         ; $52dd: $82
    rlca                                          ; $52de: $07
    dec b                                         ; $52df: $05
    inc b                                         ; $52e0: $04
    ld b, $81                                     ; $52e1: $06 $81
    ld [bc], a                                    ; $52e3: $02
    dec b                                         ; $52e4: $05
    ld b, $81                                     ; $52e5: $06 $81
    ld [bc], a                                    ; $52e7: $02
    inc bc                                        ; $52e8: $03
    ld b, $02                                     ; $52e9: $06 $02
    inc b                                         ; $52eb: $04
    inc c                                         ; $52ec: $0c
    nop                                           ; $52ed: $00
    rst $38                                       ; $52ee: $ff
    rlca                                          ; $52ef: $07
    ld bc, $08f9                                  ; $52f0: $01 $f9 $08
    ld a, [c]                                     ; $52f3: $f2
    ld bc, $fce9                                  ; $52f4: $01 $e9 $fc
    ld [bc], a                                    ; $52f7: $02
    inc d                                         ; $52f8: $14
    ld [bc], a                                    ; $52f9: $02
    ld [hl], c                                    ; $52fa: $71
    ld [bc], a                                    ; $52fb: $02
    ld bc, $000e                                  ; $52fc: $01 $0e $00
    add e                                         ; $52ff: $83
    inc d                                         ; $5300: $14
    nop                                           ; $5301: $00
    ld [$0009], sp                                ; $5302: $08 $09 $00
    rst $38                                       ; $5305: $ff
    dec c                                         ; $5306: $0d
    inc b                                         ; $5307: $04
    ei                                            ; $5308: $fb
    dec b                                         ; $5309: $05
    push af                                       ; $530a: $f5
    cp $e9                                        ; $530b: $fe $e9
    ei                                            ; $530d: $fb
    ld [$f9ff], a                                 ; $530e: $ea $ff $f9
    ei                                            ; $5311: $fb
    ld sp, hl                                     ; $5312: $f9
    cp $02                                        ; $5313: $fe $02
    rra                                           ; $5315: $1f
    add d                                         ; $5316: $82
    dec [hl]                                      ; $5317: $35
    ld hl, $4702                                  ; $5318: $21 $02 $47
    adc [hl]                                      ; $531b: $8e
    ld a, a                                       ; $531c: $7f
    ld [hl], c                                    ; $531d: $71
    ld a, a                                       ; $531e: $7f
    ld h, b                                       ; $531f: $60
    ccf                                           ; $5320: $3f
    dec sp                                        ; $5321: $3b
    ld a, a                                       ; $5322: $7f
    ld c, b                                       ; $5323: $48
    ccf                                           ; $5324: $3f
    inc h                                         ; $5325: $24
    ccf                                           ; $5326: $3f
    ld l, $1f                                     ; $5327: $2e $1f
    ld de, $1f02                                  ; $5329: $11 $02 $1f
    ld [bc], a                                    ; $532c: $02
    ld [hl], l                                    ; $532d: $75
    adc b                                         ; $532e: $88
    ld e, e                                       ; $532f: $5b
    ld a, e                                       ; $5330: $7b
    ld d, l                                       ; $5331: $55
    ld a, a                                       ; $5332: $7f
    cp e                                          ; $5333: $bb
    cp $ba                                        ; $5334: $fe $ba
    rst $38                                       ; $5336: $ff
    ld [bc], a                                    ; $5337: $02
    ld [$0404], sp                                ; $5338: $08 $04 $04
    ld [bc], a                                    ; $533b: $02
    inc c                                         ; $533c: $0c
    ld [bc], a                                    ; $533d: $02
    ld [$0c82], sp                                ; $533e: $08 $82 $0c
    inc b                                         ; $5341: $04
    inc b                                         ; $5342: $04
    ld [$0002], sp                                ; $5343: $08 $02 $00
    ld [bc], a                                    ; $5346: $02
    ld [$0c02], sp                                ; $5347: $08 $02 $0c
    sub [hl]                                      ; $534a: $96
    inc b                                         ; $534b: $04
    inc c                                         ; $534c: $0c
    ld a, [bc]                                    ; $534d: $0a
    ld c, $02                                     ; $534e: $0e $02
    ld c, $09                                     ; $5350: $0e $09
    rrca                                          ; $5352: $0f
    cp d                                          ; $5353: $ba
    cp $90                                        ; $5354: $fe $90
    ldh a, [$9b]                                  ; $5356: $f0 $9b
    rst $38                                       ; $5358: $ff
    db $fd                                        ; $5359: $fd
    sbc a                                         ; $535a: $9f
    cp $af                                        ; $535b: $fe $af
    halt                                          ; $535d: $76
    ld a, a                                       ; $535e: $7f
    ld [hl], a                                    ; $535f: $77
    ld a, a                                       ; $5360: $7f
    ld [bc], a                                    ; $5361: $02
    ccf                                           ; $5362: $3f
    add d                                         ; $5363: $82
    ld a, [de]                                    ; $5364: $1a
    dec de                                        ; $5365: $1b
    ld [bc], a                                    ; $5366: $02
    inc bc                                        ; $5367: $03
    stop                                          ; $5368: $10 $00
    add h                                         ; $536a: $84
    rlca                                          ; $536b: $07
    dec b                                         ; $536c: $05
    rlca                                          ; $536d: $07
    dec b                                         ; $536e: $05
    ld [bc], a                                    ; $536f: $02
    ld b, $02                                     ; $5370: $06 $02
    inc b                                         ; $5372: $04
    inc b                                         ; $5373: $04
    ld b, $81                                     ; $5374: $06 $81
    ld [bc], a                                    ; $5376: $02
    inc bc                                        ; $5377: $03
    ld b, $0e                                     ; $5378: $06 $0e
    nop                                           ; $537a: $00
    rst $38                                       ; $537b: $ff
    rlca                                          ; $537c: $07
    ld bc, $08f9                                  ; $537d: $01 $f9 $08
    ld a, [c]                                     ; $5380: $f2
    ld bc, $fcea                                  ; $5381: $01 $ea $fc
    ld [bc], a                                    ; $5384: $02
    inc d                                         ; $5385: $14
    ld [bc], a                                    ; $5386: $02
    ld [hl], c                                    ; $5387: $71
    ld [bc], a                                    ; $5388: $02
    ld bc, $000e                                  ; $5389: $01 $0e $00
    add e                                         ; $538c: $83
    inc d                                         ; $538d: $14
    nop                                           ; $538e: $00
    ld [$0009], sp                                ; $538f: $08 $09 $00
    rst $38                                       ; $5392: $ff
    dec c                                         ; $5393: $0d
    inc b                                         ; $5394: $04
    ei                                            ; $5395: $fb
    dec b                                         ; $5396: $05
    push af                                       ; $5397: $f5
    cp $e8                                        ; $5398: $fe $e8
    ei                                            ; $539a: $fb
    jp hl                                         ; $539b: $e9


    cp $f8                                        ; $539c: $fe $f8
    ld a, [$fff8]                                 ; $539e: $fa $f8 $ff
    ld [bc], a                                    ; $53a1: $02
    rra                                           ; $53a2: $1f
    add d                                         ; $53a3: $82
    dec [hl]                                      ; $53a4: $35
    ld hl, $4702                                  ; $53a5: $21 $02 $47
    adc [hl]                                      ; $53a8: $8e
    ld a, a                                       ; $53a9: $7f
    ld [hl], c                                    ; $53aa: $71
    ld a, a                                       ; $53ab: $7f
    ld h, b                                       ; $53ac: $60
    ccf                                           ; $53ad: $3f
    dec sp                                        ; $53ae: $3b
    ld a, a                                       ; $53af: $7f
    ld c, b                                       ; $53b0: $48
    ccf                                           ; $53b1: $3f
    inc h                                         ; $53b2: $24
    ccf                                           ; $53b3: $3f
    ld l, $1f                                     ; $53b4: $2e $1f
    ld de, $3f02                                  ; $53b6: $11 $02 $3f
    ld [bc], a                                    ; $53b9: $02
    ld [hl], l                                    ; $53ba: $75
    adc b                                         ; $53bb: $88
    ld e, e                                       ; $53bc: $5b
    ld a, e                                       ; $53bd: $7b
    or l                                          ; $53be: $b5
    rst $38                                       ; $53bf: $ff
    cp e                                          ; $53c0: $bb
    cp $ba                                        ; $53c1: $fe $ba
    rst $38                                       ; $53c3: $ff
    ld [bc], a                                    ; $53c4: $02
    inc b                                         ; $53c5: $04
    inc b                                         ; $53c6: $04
    ld [bc], a                                    ; $53c7: $02
    ld [bc], a                                    ; $53c8: $02
    ld b, $02                                     ; $53c9: $06 $02
    inc b                                         ; $53cb: $04
    add d                                         ; $53cc: $82
    ld b, $02                                     ; $53cd: $06 $02
    inc b                                         ; $53cf: $04
    inc b                                         ; $53d0: $04
    ld [bc], a                                    ; $53d1: $02
    nop                                           ; $53d2: $00
    ld [bc], a                                    ; $53d3: $02
    inc b                                         ; $53d4: $04
    sbc c                                         ; $53d5: $99
    ld [bc], a                                    ; $53d6: $02
    ld b, $02                                     ; $53d7: $06 $02
    ld b, $05                                     ; $53d9: $06 $05
    rlca                                          ; $53db: $07
    ld bc, $0507                                  ; $53dc: $01 $07 $05
    rlca                                          ; $53df: $07
    db $dd                                        ; $53e0: $dd
    rst $38                                       ; $53e1: $ff
    sub b                                         ; $53e2: $90
    ldh a, [$9d]                                  ; $53e3: $f0 $9d
    rst $38                                       ; $53e5: $ff
    ld a, l                                       ; $53e6: $7d
    ld e, a                                       ; $53e7: $5f
    ld a, d                                       ; $53e8: $7a
    ld e, a                                       ; $53e9: $5f
    ld a, [hl-]                                   ; $53ea: $3a
    ccf                                           ; $53eb: $3f
    dec sp                                        ; $53ec: $3b
    ccf                                           ; $53ed: $3f
    scf                                           ; $53ee: $37
    inc bc                                        ; $53ef: $03
    ccf                                           ; $53f0: $3f
    ld [bc], a                                    ; $53f1: $02
    add hl, de                                    ; $53f2: $19
    stop                                          ; $53f3: $10 $00
    add e                                         ; $53f5: $83
    add hl, de                                    ; $53f6: $19
    rra                                           ; $53f7: $1f
    ld a, [de]                                    ; $53f8: $1a
    ld [bc], a                                    ; $53f9: $02
    ld e, $81                                     ; $53fa: $1e $81
    ld [de], a                                    ; $53fc: $12
    ld [bc], a                                    ; $53fd: $02
    inc e                                         ; $53fe: $1c
    add c                                         ; $53ff: $81
    inc c                                         ; $5400: $0c
    inc bc                                        ; $5401: $03
    inc e                                         ; $5402: $1c
    add c                                         ; $5403: $81
    inc b                                         ; $5404: $04
    inc bc                                        ; $5405: $03
    inc e                                         ; $5406: $1c
    ld c, $00                                     ; $5407: $0e $00
    rst $38                                       ; $5409: $ff
    rlca                                          ; $540a: $07
    ld bc, $08f9                                  ; $540b: $01 $f9 $08
    ld a, [c]                                     ; $540e: $f2
    ld bc, $fce9                                  ; $540f: $01 $e9 $fc
    ld [bc], a                                    ; $5412: $02
    inc d                                         ; $5413: $14
    ld [bc], a                                    ; $5414: $02
    ld [hl], c                                    ; $5415: $71
    ld [bc], a                                    ; $5416: $02
    ld bc, $000e                                  ; $5417: $01 $0e $00
    add e                                         ; $541a: $83
    inc d                                         ; $541b: $14
    nop                                           ; $541c: $00
    ld [$0009], sp                                ; $541d: $08 $09 $00
    rst $38                                       ; $5420: $ff
    dec c                                         ; $5421: $0d
    inc b                                         ; $5422: $04
    ei                                            ; $5423: $fb
    dec b                                         ; $5424: $05
    push af                                       ; $5425: $f5
    cp $e8                                        ; $5426: $fe $e8
    ld a, [$fee8]                                 ; $5428: $fa $e8 $fe
    ld hl, sp-$05                                 ; $542b: $f8 $fb
    ld hl, sp-$02                                 ; $542d: $f8 $fe
    ld [bc], a                                    ; $542f: $02
    rrca                                          ; $5430: $0f
    add d                                         ; $5431: $82
    ld a, [de]                                    ; $5432: $1a
    db $10                                        ; $5433: $10
    ld [bc], a                                    ; $5434: $02
    inc hl                                        ; $5435: $23
    adc [hl]                                      ; $5436: $8e
    ccf                                           ; $5437: $3f
    jr c, jr_0e8_5479                             ; $5438: $38 $3f

    jr nc, jr_0e8_545b                            ; $543a: $30 $1f

    dec e                                         ; $543c: $1d
    ccf                                           ; $543d: $3f
    inc h                                         ; $543e: $24
    rra                                           ; $543f: $1f
    ld [de], a                                    ; $5440: $12
    rra                                           ; $5441: $1f
    rla                                           ; $5442: $17
    rrca                                          ; $5443: $0f
    ld [$3f02], sp                                ; $5444: $08 $02 $3f
    ld [bc], a                                    ; $5447: $02
    ld a, [hl-]                                   ; $5448: $3a
    adc b                                         ; $5449: $88
    ld e, l                                       ; $544a: $5d
    ld a, l                                       ; $544b: $7d
    ld e, d                                       ; $544c: $5a
    ld a, a                                       ; $544d: $7f
    sbc l                                         ; $544e: $9d
    rst $38                                       ; $544f: $ff
    sbc l                                         ; $5450: $9d
    rst $38                                       ; $5451: $ff
    ld [bc], a                                    ; $5452: $02
    ld [$0c02], sp                                ; $5453: $08 $02 $0c
    inc b                                         ; $5456: $04
    ld a, [bc]                                    ; $5457: $0a
    add d                                         ; $5458: $82
    ld c, $06                                     ; $5459: $0e $06

jr_0e8_545b:
    ld [bc], a                                    ; $545b: $02
    inc c                                         ; $545c: $0c
    add [hl]                                      ; $545d: $86
    ld c, $02                                     ; $545e: $0e $02
    inc c                                         ; $5460: $0c
    inc b                                         ; $5461: $04
    inc c                                         ; $5462: $0c
    inc b                                         ; $5463: $04
    inc b                                         ; $5464: $04
    ld [$0c02], sp                                ; $5465: $08 $02 $0c
    sub e                                         ; $5468: $93
    ld a, [bc]                                    ; $5469: $0a
    ld c, $0a                                     ; $546a: $0e $0a
    ld c, $0d                                     ; $546c: $0e $0d
    rlca                                          ; $546e: $07
    dec c                                         ; $546f: $0d
    rrca                                          ; $5470: $0f
    cp e                                          ; $5471: $bb
    rst $38                                       ; $5472: $ff
    ld a, [c]                                     ; $5473: $f2
    cp a                                          ; $5474: $bf
    ld [hl], a                                    ; $5475: $77
    ld a, [hl]                                    ; $5476: $7e
    ld l, l                                       ; $5477: $6d
    ld a, [hl]                                    ; $5478: $7e

jr_0e8_5479:
    ld e, l                                       ; $5479: $5d
    ld a, a                                       ; $547a: $7f
    ld a, l                                       ; $547b: $7d
    inc bc                                        ; $547c: $03
    ld a, a                                       ; $547d: $7f
    add d                                         ; $547e: $82
    ld c, [hl]                                    ; $547f: $4e
    ld a, a                                       ; $5480: $7f
    ld [bc], a                                    ; $5481: $02
    ld a, e                                       ; $5482: $7b
    ld [bc], a                                    ; $5483: $02
    jr c, jr_0e8_5492                             ; $5484: $38 $0c

    nop                                           ; $5486: $00
    adc b                                         ; $5487: $88
    ld bc, $0107                                  ; $5488: $01 $07 $01
    rlca                                          ; $548b: $07
    ld b, $02                                     ; $548c: $06 $02
    ld b, $02                                     ; $548e: $06 $02
    inc b                                         ; $5490: $04
    inc b                                         ; $5491: $04

jr_0e8_5492:
    inc b                                         ; $5492: $04
    ld b, $02                                     ; $5493: $06 $02
    inc b                                         ; $5495: $04
    ld c, $00                                     ; $5496: $0e $00
    rst $38                                       ; $5498: $ff
    rlca                                          ; $5499: $07
    ld bc, $08f9                                  ; $549a: $01 $f9 $08
    ld a, [c]                                     ; $549d: $f2
    ld bc, $fce9                                  ; $549e: $01 $e9 $fc
    ld [bc], a                                    ; $54a1: $02
    inc d                                         ; $54a2: $14
    ld [bc], a                                    ; $54a3: $02
    ld [hl], c                                    ; $54a4: $71
    ld [bc], a                                    ; $54a5: $02
    ld bc, $000e                                  ; $54a6: $01 $0e $00
    add e                                         ; $54a9: $83
    inc d                                         ; $54aa: $14
    nop                                           ; $54ab: $00
    ld [$0009], sp                                ; $54ac: $08 $09 $00
    rst $38                                       ; $54af: $ff
    dec c                                         ; $54b0: $0d
    inc b                                         ; $54b1: $04
    ei                                            ; $54b2: $fb
    dec b                                         ; $54b3: $05
    push af                                       ; $54b4: $f5
    cp $e9                                        ; $54b5: $fe $e9
    ld a, [$fee9]                                 ; $54b7: $fa $e9 $fe
    ld sp, hl                                     ; $54ba: $f9
    ei                                            ; $54bb: $fb
    ld sp, hl                                     ; $54bc: $f9
    cp $02                                        ; $54bd: $fe $02
    rrca                                          ; $54bf: $0f
    add d                                         ; $54c0: $82
    ld a, [de]                                    ; $54c1: $1a
    db $10                                        ; $54c2: $10
    ld [bc], a                                    ; $54c3: $02
    inc hl                                        ; $54c4: $23
    adc [hl]                                      ; $54c5: $8e
    ccf                                           ; $54c6: $3f
    jr c, jr_0e8_5508                             ; $54c7: $38 $3f

    jr nc, jr_0e8_54ea                            ; $54c9: $30 $1f

    dec e                                         ; $54cb: $1d
    ccf                                           ; $54cc: $3f
    inc h                                         ; $54cd: $24
    rra                                           ; $54ce: $1f
    ld [de], a                                    ; $54cf: $12
    rra                                           ; $54d0: $1f
    rla                                           ; $54d1: $17
    rrca                                          ; $54d2: $0f
    ld [$1f02], sp                                ; $54d3: $08 $02 $1f
    ld [bc], a                                    ; $54d6: $02
    ld a, [hl-]                                   ; $54d7: $3a
    adc b                                         ; $54d8: $88
    dec l                                         ; $54d9: $2d
    dec a                                         ; $54da: $3d
    ld e, d                                       ; $54db: $5a
    ld a, a                                       ; $54dc: $7f
    ld e, l                                       ; $54dd: $5d
    ld a, a                                       ; $54de: $7f
    sbc l                                         ; $54df: $9d
    rst $38                                       ; $54e0: $ff
    ld [bc], a                                    ; $54e1: $02
    ld [$0c02], sp                                ; $54e2: $08 $02 $0c
    inc b                                         ; $54e5: $04
    ld a, [bc]                                    ; $54e6: $0a
    add d                                         ; $54e7: $82
    ld c, $06                                     ; $54e8: $0e $06

jr_0e8_54ea:
    ld [bc], a                                    ; $54ea: $02
    inc c                                         ; $54eb: $0c
    add [hl]                                      ; $54ec: $86
    ld c, $02                                     ; $54ed: $0e $02
    inc c                                         ; $54ef: $0c
    inc b                                         ; $54f0: $04
    inc c                                         ; $54f1: $0c
    inc b                                         ; $54f2: $04
    inc b                                         ; $54f3: $04
    ld [$0e02], sp                                ; $54f4: $08 $02 $0e
    sub e                                         ; $54f7: $93
    ld a, [bc]                                    ; $54f8: $0a
    ld c, $0a                                     ; $54f9: $0e $0a
    ld c, $0d                                     ; $54fb: $0e $0d
    rlca                                          ; $54fd: $07
    dec b                                         ; $54fe: $05
    rrca                                          ; $54ff: $0f
    cp e                                          ; $5500: $bb
    rst $38                                       ; $5501: $ff
    ei                                            ; $5502: $fb
    cp a                                          ; $5503: $bf
    rst $30                                       ; $5504: $f7
    cp a                                          ; $5505: $bf
    ld l, a                                       ; $5506: $6f
    ld a, a                                       ; $5507: $7f

jr_0e8_5508:
    dec l                                         ; $5508: $2d
    ccf                                           ; $5509: $3f
    ld a, l                                       ; $550a: $7d
    inc bc                                        ; $550b: $03
    ld a, a                                       ; $550c: $7f
    add d                                         ; $550d: $82
    ld c, e                                       ; $550e: $4b
    ld a, e                                       ; $550f: $7b
    ld [bc], a                                    ; $5510: $02
    ld a, b                                       ; $5511: $78
    ld c, $00                                     ; $5512: $0e $00
    add e                                         ; $5514: $83
    ld bc, $0107                                  ; $5515: $01 $07 $01
    ld [bc], a                                    ; $5518: $02
    rlca                                          ; $5519: $07
    add e                                         ; $551a: $83
    ld bc, $0507                                  ; $551b: $01 $07 $05
    inc b                                         ; $551e: $04
    ld b, $02                                     ; $551f: $06 $02
    inc b                                         ; $5521: $04
    ld [de], a                                    ; $5522: $12
    nop                                           ; $5523: $00
    rst $38                                       ; $5524: $ff
    rlca                                          ; $5525: $07
    ld bc, $08f9                                  ; $5526: $01 $f9 $08
    ld a, [c]                                     ; $5529: $f2
    ld bc, $fcea                                  ; $552a: $01 $ea $fc
    ld [bc], a                                    ; $552d: $02
    inc d                                         ; $552e: $14
    ld [bc], a                                    ; $552f: $02
    ld [hl], c                                    ; $5530: $71
    ld [bc], a                                    ; $5531: $02
    ld bc, $000e                                  ; $5532: $01 $0e $00
    add e                                         ; $5535: $83
    inc d                                         ; $5536: $14
    nop                                           ; $5537: $00
    ld [$0009], sp                                ; $5538: $08 $09 $00
    rst $38                                       ; $553b: $ff
    dec c                                         ; $553c: $0d
    inc b                                         ; $553d: $04
    ei                                            ; $553e: $fb
    dec b                                         ; $553f: $05
    push af                                       ; $5540: $f5
    cp $e8                                        ; $5541: $fe $e8
    ei                                            ; $5543: $fb
    jp hl                                         ; $5544: $e9


    rst $38                                       ; $5545: $ff
    ld hl, sp-$06                                 ; $5546: $f8 $fa
    ld hl, sp-$01                                 ; $5548: $f8 $ff
    ld [bc], a                                    ; $554a: $02
    rra                                           ; $554b: $1f
    add d                                         ; $554c: $82
    dec [hl]                                      ; $554d: $35
    ld hl, $4702                                  ; $554e: $21 $02 $47
    adc [hl]                                      ; $5551: $8e
    ld a, a                                       ; $5552: $7f
    ld [hl], c                                    ; $5553: $71
    ld a, a                                       ; $5554: $7f
    ld h, b                                       ; $5555: $60
    ccf                                           ; $5556: $3f
    dec sp                                        ; $5557: $3b
    ld a, a                                       ; $5558: $7f
    ld c, b                                       ; $5559: $48
    ccf                                           ; $555a: $3f
    inc h                                         ; $555b: $24
    ccf                                           ; $555c: $3f
    ld l, $1f                                     ; $555d: $2e $1f
    ld de, $3f02                                  ; $555f: $11 $02 $3f
    adc d                                         ; $5562: $8a
    ld d, l                                       ; $5563: $55
    ld [hl], l                                    ; $5564: $75
    ld e, e                                       ; $5565: $5b
    ld a, e                                       ; $5566: $7b
    or l                                          ; $5567: $b5
    rst $38                                       ; $5568: $ff
    cp e                                          ; $5569: $bb
    cp $ba                                        ; $556a: $fe $ba
    rst $38                                       ; $556c: $ff
    ld [bc], a                                    ; $556d: $02
    ld [$0404], sp                                ; $556e: $08 $04 $04
    ld [bc], a                                    ; $5571: $02
    inc c                                         ; $5572: $0c
    ld [bc], a                                    ; $5573: $02
    ld [$0c82], sp                                ; $5574: $08 $82 $0c
    inc b                                         ; $5577: $04
    inc b                                         ; $5578: $04
    ld [$0002], sp                                ; $5579: $08 $02 $00
    ld [bc], a                                    ; $557c: $02
    ld [$0c02], sp                                ; $557d: $08 $02 $0c
    sub l                                         ; $5580: $95
    inc b                                         ; $5581: $04
    inc c                                         ; $5582: $0c
    ld a, [bc]                                    ; $5583: $0a
    ld c, $02                                     ; $5584: $0e $02
    ld c, $0a                                     ; $5586: $0e $0a
    ld c, $b9                                     ; $5588: $0e $b9
    rst $38                                       ; $558a: $ff
    ld e, b                                       ; $558b: $58
    ld a, b                                       ; $558c: $78
    sbc l                                         ; $558d: $9d
    rst $38                                       ; $558e: $ff
    ld e, l                                       ; $558f: $5d
    ld a, a                                       ; $5590: $7f
    ld a, d                                       ; $5591: $7a
    ld c, a                                       ; $5592: $4f
    ld a, [hl-]                                   ; $5593: $3a
    scf                                           ; $5594: $37
    ld [hl], $03                                  ; $5595: $36 $03
    ccf                                           ; $5597: $3f
    add d                                         ; $5598: $82
    daa                                           ; $5599: $27
    ccf                                           ; $559a: $3f
    ld [bc], a                                    ; $559b: $02
    inc a                                         ; $559c: $3c
    stop                                          ; $559d: $10 $00
    add h                                         ; $559f: $84
    add hl, de                                    ; $55a0: $19
    rra                                           ; $55a1: $1f
    ld e, $1a                                     ; $55a2: $1e $1a
    ld b, $1c                                     ; $55a4: $06 $1c
    add c                                         ; $55a6: $81
    inc c                                         ; $55a7: $0c
    inc bc                                        ; $55a8: $03
    inc e                                         ; $55a9: $1c
    ld [bc], a                                    ; $55aa: $02
    jr jr_0e8_55bb                                ; $55ab: $18 $0e

    nop                                           ; $55ad: $00
    rst $38                                       ; $55ae: $ff
    rlca                                          ; $55af: $07
    ld bc, $08f9                                  ; $55b0: $01 $f9 $08
    ld a, [c]                                     ; $55b3: $f2
    ld bc, $fce9                                  ; $55b4: $01 $e9 $fc
    ld [bc], a                                    ; $55b7: $02
    inc d                                         ; $55b8: $14
    ld [bc], a                                    ; $55b9: $02
    ld [hl], c                                    ; $55ba: $71

jr_0e8_55bb:
    ld [bc], a                                    ; $55bb: $02
    ld bc, $000e                                  ; $55bc: $01 $0e $00
    add e                                         ; $55bf: $83
    inc d                                         ; $55c0: $14
    nop                                           ; $55c1: $00
    ld [$0009], sp                                ; $55c2: $08 $09 $00
    rst $38                                       ; $55c5: $ff
    dec c                                         ; $55c6: $0d
    inc b                                         ; $55c7: $04
    ei                                            ; $55c8: $fb
    dec b                                         ; $55c9: $05
    push af                                       ; $55ca: $f5
    cp $e8                                        ; $55cb: $fe $e8
    ei                                            ; $55cd: $fb
    add sp, -$03                                  ; $55ce: $e8 $fd
    ld hl, sp-$04                                 ; $55d0: $f8 $fc
    ld hl, sp-$03                                 ; $55d2: $f8 $fd
    ld [bc], a                                    ; $55d4: $02
    ld a, $92                                     ; $55d5: $3e $92
    ld h, l                                       ; $55d7: $65
    ld h, c                                       ; $55d8: $61
    ld h, a                                       ; $55d9: $67
    ld b, a                                       ; $55da: $47
    rst $18                                       ; $55db: $df
    sbc b                                         ; $55dc: $98
    xor a                                         ; $55dd: $af
    xor b                                         ; $55de: $a8
    rst $38                                       ; $55df: $ff
    or $7f                                        ; $55e0: $f6 $7f
    ld d, b                                       ; $55e2: $50
    ccf                                           ; $55e3: $3f
    jr nc, jr_0e8_5605                            ; $55e4: $30 $1f

    ld de, $080f                                  ; $55e6: $11 $0f $08
    ld [bc], a                                    ; $55e9: $02
    rra                                           ; $55ea: $1f
    ld [bc], a                                    ; $55eb: $02
    dec a                                         ; $55ec: $3d
    adc b                                         ; $55ed: $88
    ld d, [hl]                                    ; $55ee: $56
    ld a, [hl]                                    ; $55ef: $7e
    ld d, l                                       ; $55f0: $55
    ld a, a                                       ; $55f1: $7f
    ld [hl-], a                                   ; $55f2: $32
    ccf                                           ; $55f3: $3f
    ld d, $1f                                     ; $55f4: $16 $1f
    ld [bc], a                                    ; $55f6: $02
    ld [bc], a                                    ; $55f7: $02
    ld [bc], a                                    ; $55f8: $02
    ld bc, $0302                                  ; $55f9: $01 $02 $03
    ld b, $02                                     ; $55fc: $06 $02
    add d                                         ; $55fe: $82

Jump_0e8_55ff:
    inc bc                                        ; $55ff: $03
    ld bc, $0206                                  ; $5600: $01 $06 $02
    inc b                                         ; $5603: $04
    nop                                           ; $5604: $00

jr_0e8_5605:
    ld [$8302], sp                                ; $5605: $08 $02 $83
    dec h                                         ; $5608: $25
    ccf                                           ; $5609: $3f
    dec l                                         ; $560a: $2d
    ld [bc], a                                    ; $560b: $02
    ccf                                           ; $560c: $3f
    adc l                                         ; $560d: $8d
    daa                                           ; $560e: $27
    ld a, a                                       ; $560f: $7f
    ld [hl], h                                    ; $5610: $74
    ld a, l                                       ; $5611: $7d
    ld a, a                                       ; $5612: $7f
    ld a, l                                       ; $5613: $7d
    ld a, a                                       ; $5614: $7f
    ei                                            ; $5615: $fb
    rst $38                                       ; $5616: $ff
    cp a                                          ; $5617: $bf
    rst $38                                       ; $5618: $ff
    sbc h                                         ; $5619: $9c
    rst $38                                       ; $561a: $ff
    ld [bc], a                                    ; $561b: $02
    ld a, a                                       ; $561c: $7f
    ld [de], a                                    ; $561d: $12
    nop                                           ; $561e: $00
    ld [bc], a                                    ; $561f: $02
    ld bc, $0008                                  ; $5620: $01 $08 $00
    inc b                                         ; $5623: $04
    ld bc, $000c                                  ; $5624: $01 $0c $00
    rst $38                                       ; $5627: $ff
    rlca                                          ; $5628: $07
    ld bc, $08f9                                  ; $5629: $01 $f9 $08
    ld a, [c]                                     ; $562c: $f2
    ld bc, $fce9                                  ; $562d: $01 $e9 $fc
    ld [bc], a                                    ; $5630: $02
    dec [hl]                                      ; $5631: $35
    ld [bc], a                                    ; $5632: $02
    jr nc, jr_0e8_5637                            ; $5633: $30 $02

    ld b, b                                       ; $5635: $40
    ld [bc], a                                    ; $5636: $02

jr_0e8_5637:
    and b                                         ; $5637: $a0
    inc c                                         ; $5638: $0c
    nop                                           ; $5639: $00
    add e                                         ; $563a: $83
    inc b                                         ; $563b: $04
    nop                                           ; $563c: $00
    ld [bc], a                                    ; $563d: $02
    add hl, bc                                    ; $563e: $09
    nop                                           ; $563f: $00
    rst $38                                       ; $5640: $ff
    dec c                                         ; $5641: $0d
    inc b                                         ; $5642: $04
    ei                                            ; $5643: $fb
    dec b                                         ; $5644: $05
    push af                                       ; $5645: $f5
    cp $e8                                        ; $5646: $fe $e8
    ei                                            ; $5648: $fb
    add sp, -$03                                  ; $5649: $e8 $fd
    ld hl, sp-$05                                 ; $564b: $f8 $fb
    ld hl, sp+$01                                 ; $564d: $f8 $01
    ld [bc], a                                    ; $564f: $02
    ld a, $92                                     ; $5650: $3e $92
    ld h, l                                       ; $5652: $65
    ld h, c                                       ; $5653: $61
    ld h, a                                       ; $5654: $67
    ld b, a                                       ; $5655: $47
    rst $18                                       ; $5656: $df
    sbc b                                         ; $5657: $98
    xor a                                         ; $5658: $af
    xor b                                         ; $5659: $a8
    rst $38                                       ; $565a: $ff
    or $7f                                        ; $565b: $f6 $7f
    ld d, b                                       ; $565d: $50
    ccf                                           ; $565e: $3f
    jr nc, jr_0e8_5680                            ; $565f: $30 $1f

    ld de, $080f                                  ; $5661: $11 $0f $08
    ld [bc], a                                    ; $5664: $02
    rra                                           ; $5665: $1f
    ld [bc], a                                    ; $5666: $02
    dec a                                         ; $5667: $3d
    adc b                                         ; $5668: $88
    ld d, [hl]                                    ; $5669: $56
    ld a, [hl]                                    ; $566a: $7e
    ld d, l                                       ; $566b: $55
    ld a, a                                       ; $566c: $7f
    ld [hl-], a                                   ; $566d: $32
    ccf                                           ; $566e: $3f
    ld a, [de]                                    ; $566f: $1a
    rra                                           ; $5670: $1f
    ld [bc], a                                    ; $5671: $02
    ld [bc], a                                    ; $5672: $02
    ld [bc], a                                    ; $5673: $02
    ld bc, $0302                                  ; $5674: $01 $02 $03
    ld b, $02                                     ; $5677: $06 $02
    add d                                         ; $5679: $82
    inc bc                                        ; $567a: $03
    ld bc, $0206                                  ; $567b: $01 $06 $02
    inc b                                         ; $567e: $04
    nop                                           ; $567f: $00

jr_0e8_5680:
    ld [$8302], sp                                ; $5680: $08 $02 $83
    add hl, sp                                    ; $5683: $39
    ccf                                           ; $5684: $3f
    inc a                                         ; $5685: $3c
    ld [bc], a                                    ; $5686: $02
    ccf                                           ; $5687: $3f
    add c                                         ; $5688: $81
    ld a, $02                                     ; $5689: $3e $02
    ccf                                           ; $568b: $3f
    adc d                                         ; $568c: $8a
    ld a, [hl]                                    ; $568d: $7e
    ld a, a                                       ; $568e: $7f
    ld a, [hl]                                    ; $568f: $7e
    ld a, a                                       ; $5690: $7f
    cp h                                          ; $5691: $bc
    rst $38                                       ; $5692: $ff
    rst $18                                       ; $5693: $df
    rst $38                                       ; $5694: $ff
    ld h, [hl]                                    ; $5695: $66
    ld a, [hl]                                    ; $5696: $7e
    ld [bc], a                                    ; $5697: $02
    inc a                                         ; $5698: $3c
    inc c                                         ; $5699: $0c
    nop                                           ; $569a: $00
    ld [bc], a                                    ; $569b: $02
    inc l                                         ; $569c: $2c
    add [hl]                                      ; $569d: $86
    ld a, $32                                     ; $569e: $3e $32
    inc a                                         ; $56a0: $3c
    inc c                                         ; $56a1: $0c
    jr nc, @+$12                                  ; $56a2: $30 $10

    ld [bc], a                                    ; $56a4: $02
    jr c, jr_0e8_56a9                             ; $56a5: $38 $02

    ld a, $84                                     ; $56a7: $3e $84

jr_0e8_56a9:
    add hl, sp                                    ; $56a9: $39
    ccf                                           ; $56aa: $3f
    ld [hl], $3e                                  ; $56ab: $36 $3e
    ld [bc], a                                    ; $56ad: $02
    jr c, @+$10                                   ; $56ae: $38 $0e

    nop                                           ; $56b0: $00
    rst $38                                       ; $56b1: $ff
    rlca                                          ; $56b2: $07
    ld bc, $08f9                                  ; $56b3: $01 $f9 $08
    ld a, [c]                                     ; $56b6: $f2
    ld bc, $fce9                                  ; $56b7: $01 $e9 $fc
    ld [bc], a                                    ; $56ba: $02
    dec [hl]                                      ; $56bb: $35
    ld [bc], a                                    ; $56bc: $02
    jr nc, jr_0e8_56c1                            ; $56bd: $30 $02

    ld b, b                                       ; $56bf: $40
    ld [bc], a                                    ; $56c0: $02

jr_0e8_56c1:
    and b                                         ; $56c1: $a0
    inc c                                         ; $56c2: $0c
    nop                                           ; $56c3: $00
    add e                                         ; $56c4: $83
    inc b                                         ; $56c5: $04
    nop                                           ; $56c6: $00
    ld [bc], a                                    ; $56c7: $02
    add hl, bc                                    ; $56c8: $09
    nop                                           ; $56c9: $00
    rst $38                                       ; $56ca: $ff
    dec c                                         ; $56cb: $0d
    inc b                                         ; $56cc: $04
    ei                                            ; $56cd: $fb
    dec b                                         ; $56ce: $05
    push af                                       ; $56cf: $f5
    cp $e9                                        ; $56d0: $fe $e9
    ei                                            ; $56d2: $fb
    jp hl                                         ; $56d3: $e9


    db $fd                                        ; $56d4: $fd
    ld sp, hl                                     ; $56d5: $f9
    ei                                            ; $56d6: $fb
    ld sp, hl                                     ; $56d7: $f9
    rst $38                                       ; $56d8: $ff
    ld [bc], a                                    ; $56d9: $02
    ld a, $9e                                     ; $56da: $3e $9e
    ld h, l                                       ; $56dc: $65
    ld h, c                                       ; $56dd: $61
    ld h, a                                       ; $56de: $67
    ld b, a                                       ; $56df: $47
    rst $18                                       ; $56e0: $df
    sbc b                                         ; $56e1: $98
    xor a                                         ; $56e2: $af
    xor b                                         ; $56e3: $a8
    rst $38                                       ; $56e4: $ff
    or $7f                                        ; $56e5: $f6 $7f
    ld d, b                                       ; $56e7: $50
    ccf                                           ; $56e8: $3f
    jr nc, @+$21                                  ; $56e9: $30 $1f

    ld de, $181f                                  ; $56eb: $11 $1f $18
    ld l, a                                       ; $56ee: $6f
    ld a, a                                       ; $56ef: $7f
    ld e, l                                       ; $56f0: $5d
    ld a, l                                       ; $56f1: $7d
    ld [hl], $3e                                  ; $56f2: $36 $3e
    dec d                                         ; $56f4: $15
    rra                                           ; $56f5: $1f
    ld d, $1f                                     ; $56f6: $16 $1f
    ld [de], a                                    ; $56f8: $12
    rra                                           ; $56f9: $1f
    ld [bc], a                                    ; $56fa: $02
    ld [bc], a                                    ; $56fb: $02
    ld [bc], a                                    ; $56fc: $02
    ld bc, $0302                                  ; $56fd: $01 $02 $03
    ld b, $02                                     ; $5700: $06 $02
    add d                                         ; $5702: $82
    inc bc                                        ; $5703: $03
    ld bc, $0206                                  ; $5704: $01 $06 $02
    inc b                                         ; $5707: $04
    nop                                           ; $5708: $00
    ld [$8602], sp                                ; $5709: $08 $02 $86
    add hl, de                                    ; $570c: $19
    rra                                           ; $570d: $1f
    ccf                                           ; $570e: $3f
    inc a                                         ; $570f: $3c
    ccf                                           ; $5710: $3f
    ld a, $02                                     ; $5711: $3e $02
    ld a, a                                       ; $5713: $7f
    adc b                                         ; $5714: $88
    cp [hl]                                       ; $5715: $be
    rst $38                                       ; $5716: $ff
    db $fd                                        ; $5717: $fd
    rst $38                                       ; $5718: $ff
    ld e, e                                       ; $5719: $5b
    ld a, a                                       ; $571a: $7f
    ld l, a                                       ; $571b: $6f
    ld a, a                                       ; $571c: $7f
    ld [bc], a                                    ; $571d: $02
    jr nc, @+$10                                  ; $571e: $30 $0e

    nop                                           ; $5720: $00
    ld [bc], a                                    ; $5721: $02
    ld [$0e02], sp                                ; $5722: $08 $02 $0e
    add d                                         ; $5725: $82
    rrca                                          ; $5726: $0f
    add hl, bc                                    ; $5727: $09
    ld [bc], a                                    ; $5728: $02
    ld c, $02                                     ; $5729: $0e $02
    inc c                                         ; $572b: $0c
    ld [bc], a                                    ; $572c: $02
    ld c, $81                                     ; $572d: $0e $81
    dec c                                         ; $572f: $0d
    inc bc                                        ; $5730: $03
    rrca                                          ; $5731: $0f
    stop                                          ; $5732: $10 $00
    rst $38                                       ; $5734: $ff
    rlca                                          ; $5735: $07
    ld bc, $08f9                                  ; $5736: $01 $f9 $08
    ld a, [c]                                     ; $5739: $f2
    ld bc, $fcea                                  ; $573a: $01 $ea $fc
    ld [bc], a                                    ; $573d: $02
    dec [hl]                                      ; $573e: $35
    ld [bc], a                                    ; $573f: $02
    jr nc, jr_0e8_5744                            ; $5740: $30 $02

    ld b, b                                       ; $5742: $40
    ld [bc], a                                    ; $5743: $02

jr_0e8_5744:
    and b                                         ; $5744: $a0
    inc c                                         ; $5745: $0c
    nop                                           ; $5746: $00
    add e                                         ; $5747: $83
    inc b                                         ; $5748: $04
    nop                                           ; $5749: $00
    ld [bc], a                                    ; $574a: $02
    add hl, bc                                    ; $574b: $09
    nop                                           ; $574c: $00
    rst $38                                       ; $574d: $ff
    dec c                                         ; $574e: $0d
    inc b                                         ; $574f: $04
    ei                                            ; $5750: $fb
    dec b                                         ; $5751: $05
    push af                                       ; $5752: $f5
    cp $e8                                        ; $5753: $fe $e8
    ei                                            ; $5755: $fb
    add sp, -$03                                  ; $5756: $e8 $fd
    ld hl, sp-$04                                 ; $5758: $f8 $fc
    ld hl, sp-$03                                 ; $575a: $f8 $fd
    ld [bc], a                                    ; $575c: $02
    ld a, $92                                     ; $575d: $3e $92
    ld h, l                                       ; $575f: $65
    ld h, c                                       ; $5760: $61
    ld h, a                                       ; $5761: $67
    ld b, a                                       ; $5762: $47
    rst $18                                       ; $5763: $df
    sbc b                                         ; $5764: $98
    xor a                                         ; $5765: $af
    xor b                                         ; $5766: $a8
    rst $38                                       ; $5767: $ff
    or $7f                                        ; $5768: $f6 $7f
    ld d, b                                       ; $576a: $50
    ccf                                           ; $576b: $3f
    jr nc, jr_0e8_578d                            ; $576c: $30 $1f

    ld de, $080f                                  ; $576e: $11 $0f $08
    ld [bc], a                                    ; $5771: $02
    rra                                           ; $5772: $1f
    ld [bc], a                                    ; $5773: $02
    dec a                                         ; $5774: $3d
    adc b                                         ; $5775: $88
    ld d, [hl]                                    ; $5776: $56
    ld a, [hl]                                    ; $5777: $7e
    ld d, l                                       ; $5778: $55
    ld a, a                                       ; $5779: $7f
    ld [hl], $3f                                  ; $577a: $36 $3f
    ld [de], a                                    ; $577c: $12
    rra                                           ; $577d: $1f
    ld [bc], a                                    ; $577e: $02
    ld [bc], a                                    ; $577f: $02
    ld [bc], a                                    ; $5780: $02
    ld bc, $0302                                  ; $5781: $01 $02 $03
    ld b, $02                                     ; $5784: $06 $02
    add d                                         ; $5786: $82
    inc bc                                        ; $5787: $03
    ld bc, $0206                                  ; $5788: $01 $06 $02
    inc b                                         ; $578b: $04
    nop                                           ; $578c: $00

jr_0e8_578d:
    ld [$9002], sp                                ; $578d: $08 $02 $90
    dec h                                         ; $5790: $25
    ccf                                           ; $5791: $3f
    dec l                                         ; $5792: $2d
    ccf                                           ; $5793: $3f
    ld a, l                                       ; $5794: $7d
    ld h, a                                       ; $5795: $67
    ld a, a                                       ; $5796: $7f
    ld [hl], a                                    ; $5797: $77
    ld a, a                                       ; $5798: $7f
    ld a, h                                       ; $5799: $7c
    cp e                                          ; $579a: $bb
    rst $38                                       ; $579b: $ff
    cp [hl]                                       ; $579c: $be

jr_0e8_579d:
    cp $f9                                        ; $579d: $fe $f9
    rst $38                                       ; $579f: $ff
    ld [bc], a                                    ; $57a0: $02
    ccf                                           ; $57a1: $3f
    inc d                                         ; $57a2: $14
    nop                                           ; $57a3: $00
    inc b                                         ; $57a4: $04
    ld bc, $0016                                  ; $57a5: $01 $16 $00
    rst $38                                       ; $57a8: $ff
    rlca                                          ; $57a9: $07

jr_0e8_57aa:
    ld bc, $08f9                                  ; $57aa: $01 $f9 $08
    ld a, [c]                                     ; $57ad: $f2
    ld bc, $fce9                                  ; $57ae: $01 $e9 $fc
    ld [bc], a                                    ; $57b1: $02
    dec [hl]                                      ; $57b2: $35
    ld [bc], a                                    ; $57b3: $02
    jr nc, jr_0e8_57b8                            ; $57b4: $30 $02

    ld b, b                                       ; $57b6: $40
    ld [bc], a                                    ; $57b7: $02

jr_0e8_57b8:
    and b                                         ; $57b8: $a0
    inc c                                         ; $57b9: $0c
    nop                                           ; $57ba: $00
    add e                                         ; $57bb: $83
    inc b                                         ; $57bc: $04
    nop                                           ; $57bd: $00
    ld [bc], a                                    ; $57be: $02
    add hl, bc                                    ; $57bf: $09
    nop                                           ; $57c0: $00
    rst $38                                       ; $57c1: $ff
    dec c                                         ; $57c2: $0d
    inc b                                         ; $57c3: $04
    ei                                            ; $57c4: $fb
    dec b                                         ; $57c5: $05
    push af                                       ; $57c6: $f5
    cp $e8                                        ; $57c7: $fe $e8
    ei                                            ; $57c9: $fb
    add sp, -$03                                  ; $57ca: $e8 $fd
    ld hl, sp-$05                                 ; $57cc: $f8 $fb
    ld hl, sp+$01                                 ; $57ce: $f8 $01
    ld [bc], a                                    ; $57d0: $02
    ld a, $92                                     ; $57d1: $3e $92
    ld h, l                                       ; $57d3: $65
    ld h, c                                       ; $57d4: $61
    ld h, a                                       ; $57d5: $67
    ld b, a                                       ; $57d6: $47
    rst $18                                       ; $57d7: $df
    sbc b                                         ; $57d8: $98
    xor a                                         ; $57d9: $af
    xor b                                         ; $57da: $a8
    rst $38                                       ; $57db: $ff
    or $7f                                        ; $57dc: $f6 $7f
    ld d, b                                       ; $57de: $50
    ccf                                           ; $57df: $3f
    jr nc, jr_0e8_5801                            ; $57e0: $30 $1f

    ld de, $080f                                  ; $57e2: $11 $0f $08
    ld [bc], a                                    ; $57e5: $02
    rra                                           ; $57e6: $1f
    ld [bc], a                                    ; $57e7: $02
    dec a                                         ; $57e8: $3d
    adc b                                         ; $57e9: $88
    ld d, [hl]                                    ; $57ea: $56
    ld a, [hl]                                    ; $57eb: $7e
    ld d, l                                       ; $57ec: $55
    ld a, a                                       ; $57ed: $7f
    ld [hl], $3f                                  ; $57ee: $36 $3f
    ld l, $3f                                     ; $57f0: $2e $3f
    ld [bc], a                                    ; $57f2: $02
    ld [bc], a                                    ; $57f3: $02
    ld [bc], a                                    ; $57f4: $02
    ld bc, $0302                                  ; $57f5: $01 $02 $03
    ld b, $02                                     ; $57f8: $06 $02
    add d                                         ; $57fa: $82
    inc bc                                        ; $57fb: $03
    ld bc, $0206                                  ; $57fc: $01 $06 $02
    inc b                                         ; $57ff: $04
    nop                                           ; $5800: $00

jr_0e8_5801:
    ld [$9002], sp                                ; $5801: $08 $02 $90
    ld h, $3f                                     ; $5804: $26 $3f
    ld h, $3f                                     ; $5806: $26 $3f
    dec a                                         ; $5808: $3d
    cpl                                           ; $5809: $2f
    dec a                                         ; $580a: $3d
    cpl                                           ; $580b: $2f
    ld a, l                                       ; $580c: $7d
    ld [hl], a                                    ; $580d: $77
    rst $38                                       ; $580e: $ff
    ei                                            ; $580f: $fb
    cp a                                          ; $5810: $bf
    rst $38                                       ; $5811: $ff
    rst $08                                       ; $5812: $cf
    rst $38                                       ; $5813: $ff
    ld [bc], a                                    ; $5814: $02
    ccf                                           ; $5815: $3f
    ld c, $00                                     ; $5816: $0e $00
    ld [bc], a                                    ; $5818: $02
    jr nc, jr_0e8_579d                            ; $5819: $30 $82

    jr c, jr_0e8_5845                             ; $581b: $38 $28

    ld [bc], a                                    ; $581d: $02
    jr c, jr_0e8_5822                             ; $581e: $38 $02

    jr nc, jr_0e8_57aa                            ; $5820: $30 $88

jr_0e8_5822:
    db $10                                        ; $5822: $10
    jr nc, jr_0e8_5843                            ; $5823: $30 $1e

    ld a, $31                                     ; $5825: $3e $31
    ccf                                           ; $5827: $3f
    ld e, $3e                                     ; $5828: $1e $3e
    ld [bc], a                                    ; $582a: $02
    jr nc, @+$10                                  ; $582b: $30 $0e

    nop                                           ; $582d: $00
    rst $38                                       ; $582e: $ff
    rlca                                          ; $582f: $07
    ld bc, $08f9                                  ; $5830: $01 $f9 $08
    ld a, [c]                                     ; $5833: $f2
    ld bc, $fce9                                  ; $5834: $01 $e9 $fc
    ld [bc], a                                    ; $5837: $02
    dec [hl]                                      ; $5838: $35
    ld [bc], a                                    ; $5839: $02
    jr nc, jr_0e8_583e                            ; $583a: $30 $02

    ld b, b                                       ; $583c: $40
    ld [bc], a                                    ; $583d: $02

jr_0e8_583e:
    and b                                         ; $583e: $a0
    inc c                                         ; $583f: $0c
    nop                                           ; $5840: $00
    add e                                         ; $5841: $83
    inc b                                         ; $5842: $04

jr_0e8_5843:
    nop                                           ; $5843: $00
    ld [bc], a                                    ; $5844: $02

jr_0e8_5845:
    add hl, bc                                    ; $5845: $09
    nop                                           ; $5846: $00
    rst $38                                       ; $5847: $ff
    dec c                                         ; $5848: $0d
    inc b                                         ; $5849: $04
    ei                                            ; $584a: $fb
    dec b                                         ; $584b: $05
    push af                                       ; $584c: $f5
    cp $e9                                        ; $584d: $fe $e9
    ei                                            ; $584f: $fb
    jp hl                                         ; $5850: $e9


    db $fd                                        ; $5851: $fd
    ld sp, hl                                     ; $5852: $f9
    ei                                            ; $5853: $fb
    ld sp, hl                                     ; $5854: $f9
    rst $38                                       ; $5855: $ff
    ld [bc], a                                    ; $5856: $02
    ld a, $9e                                     ; $5857: $3e $9e
    ld h, l                                       ; $5859: $65
    ld h, c                                       ; $585a: $61
    ld h, a                                       ; $585b: $67
    ld b, a                                       ; $585c: $47
    rst $18                                       ; $585d: $df
    sbc b                                         ; $585e: $98
    xor a                                         ; $585f: $af
    xor b                                         ; $5860: $a8
    rst $38                                       ; $5861: $ff
    or $7f                                        ; $5862: $f6 $7f
    ld d, b                                       ; $5864: $50
    ccf                                           ; $5865: $3f
    jr nc, @+$21                                  ; $5866: $30 $1f

    ld de, $181f                                  ; $5868: $11 $1f $18
    ld l, a                                       ; $586b: $6f
    ld a, a                                       ; $586c: $7f
    ld e, l                                       ; $586d: $5d
    ld a, l                                       ; $586e: $7d
    ld [hl], $3e                                  ; $586f: $36 $3e
    dec h                                         ; $5871: $25
    ccf                                           ; $5872: $3f
    ld l, $3f                                     ; $5873: $2e $3f
    ld l, $3f                                     ; $5875: $2e $3f
    ld [bc], a                                    ; $5877: $02
    ld [bc], a                                    ; $5878: $02
    ld [bc], a                                    ; $5879: $02
    ld bc, $0302                                  ; $587a: $01 $02 $03
    ld b, $02                                     ; $587d: $06 $02
    add d                                         ; $587f: $82
    inc bc                                        ; $5880: $03
    ld bc, $0206                                  ; $5881: $01 $06 $02
    inc b                                         ; $5884: $04
    nop                                           ; $5885: $00
    ld [$9002], sp                                ; $5886: $08 $02 $90
    ld h, $3f                                     ; $5889: $26 $3f
    ld l, $3f                                     ; $588b: $2e $3f
    ld a, [hl]                                    ; $588d: $7e
    ld h, a                                       ; $588e: $67
    ld a, l                                       ; $588f: $7d
    ld [hl], a                                    ; $5890: $77
    rst $38                                       ; $5891: $ff
    db $fc                                        ; $5892: $fc
    cp e                                          ; $5893: $bb
    rst $38                                       ; $5894: $ff
    rst $18                                       ; $5895: $df
    rst $38                                       ; $5896: $ff
    ld l, l                                       ; $5897: $6d
    ld a, a                                       ; $5898: $7f
    ld [bc], a                                    ; $5899: $02
    rra                                           ; $589a: $1f
    ld c, $00                                     ; $589b: $0e $00
    ld [bc], a                                    ; $589d: $02
    ld [$0c04], sp                                ; $589e: $08 $04 $0c
    inc b                                         ; $58a1: $04
    ld [$0482], sp                                ; $58a2: $08 $82 $04
    inc c                                         ; $58a5: $0c
    ld [bc], a                                    ; $58a6: $02
    ld c, $81                                     ; $58a7: $0e $81
    ld bc, $0f03                                  ; $58a9: $01 $03 $0f
    ld c, $00                                     ; $58ac: $0e $00
    rst $38                                       ; $58ae: $ff
    rlca                                          ; $58af: $07
    ld bc, $08f9                                  ; $58b0: $01 $f9 $08
    ld a, [c]                                     ; $58b3: $f2
    ld bc, $fcea                                  ; $58b4: $01 $ea $fc
    ld [bc], a                                    ; $58b7: $02
    dec [hl]                                      ; $58b8: $35
    ld [bc], a                                    ; $58b9: $02
    jr nc, jr_0e8_58be                            ; $58ba: $30 $02

    ld b, b                                       ; $58bc: $40
    ld [bc], a                                    ; $58bd: $02

jr_0e8_58be:
    and b                                         ; $58be: $a0
    inc c                                         ; $58bf: $0c
    nop                                           ; $58c0: $00
    add e                                         ; $58c1: $83
    inc b                                         ; $58c2: $04
    nop                                           ; $58c3: $00
    ld [bc], a                                    ; $58c4: $02
    add hl, bc                                    ; $58c5: $09
    nop                                           ; $58c6: $00
    rst $38                                       ; $58c7: $ff
    dec c                                         ; $58c8: $0d
    inc b                                         ; $58c9: $04
    ei                                            ; $58ca: $fb
    dec b                                         ; $58cb: $05
    push af                                       ; $58cc: $f5
    cp $e8                                        ; $58cd: $fe $e8
    ei                                            ; $58cf: $fb
    add sp, -$03                                  ; $58d0: $e8 $fd
    ld hl, sp-$04                                 ; $58d2: $f8 $fc
    ld hl, sp-$03                                 ; $58d4: $f8 $fd
    ld [bc], a                                    ; $58d6: $02
    ld a, $92                                     ; $58d7: $3e $92
    ld h, l                                       ; $58d9: $65
    ld h, c                                       ; $58da: $61
    ld h, a                                       ; $58db: $67
    ld b, a                                       ; $58dc: $47
    rst $18                                       ; $58dd: $df
    sbc b                                         ; $58de: $98
    xor a                                         ; $58df: $af
    xor b                                         ; $58e0: $a8
    rst $38                                       ; $58e1: $ff
    or $7f                                        ; $58e2: $f6 $7f
    ld d, b                                       ; $58e4: $50
    ccf                                           ; $58e5: $3f
    jr nc, jr_0e8_5907                            ; $58e6: $30 $1f

    ld de, $080f                                  ; $58e8: $11 $0f $08
    ld [bc], a                                    ; $58eb: $02
    rra                                           ; $58ec: $1f
    ld [bc], a                                    ; $58ed: $02
    dec a                                         ; $58ee: $3d
    adc b                                         ; $58ef: $88
    ld d, [hl]                                    ; $58f0: $56
    ld a, [hl]                                    ; $58f1: $7e
    ld d, l                                       ; $58f2: $55
    ld a, a                                       ; $58f3: $7f
    ld [hl-], a                                   ; $58f4: $32
    ccf                                           ; $58f5: $3f
    ld d, $1f                                     ; $58f6: $16 $1f
    ld [bc], a                                    ; $58f8: $02
    ld [bc], a                                    ; $58f9: $02
    ld [bc], a                                    ; $58fa: $02
    ld bc, $0302                                  ; $58fb: $01 $02 $03
    ld b, $02                                     ; $58fe: $06 $02
    add d                                         ; $5900: $82
    inc bc                                        ; $5901: $03
    ld bc, $0206                                  ; $5902: $01 $06 $02
    inc b                                         ; $5905: $04
    nop                                           ; $5906: $00

jr_0e8_5907:
    ld [$8302], sp                                ; $5907: $08 $02 $83
    dec h                                         ; $590a: $25
    ccf                                           ; $590b: $3f
    dec l                                         ; $590c: $2d
    ld [bc], a                                    ; $590d: $02
    ccf                                           ; $590e: $3f
    adc l                                         ; $590f: $8d
    daa                                           ; $5910: $27
    ld a, a                                       ; $5911: $7f
    ld [hl], h                                    ; $5912: $74
    ld a, l                                       ; $5913: $7d
    ld a, a                                       ; $5914: $7f
    ld a, l                                       ; $5915: $7d
    ld a, a                                       ; $5916: $7f
    ei                                            ; $5917: $fb
    rst $38                                       ; $5918: $ff
    cp a                                          ; $5919: $bf
    rst $38                                       ; $591a: $ff
    sbc h                                         ; $591b: $9c
    rst $38                                       ; $591c: $ff
    ld [bc], a                                    ; $591d: $02
    ld a, a                                       ; $591e: $7f
    ld c, $00                                     ; $591f: $0e $00
    ld [$0601], sp                                ; $5921: $08 $01 $06
    nop                                           ; $5924: $00
    inc b                                         ; $5925: $04
    ld bc, $000c                                  ; $5926: $01 $0c $00
    rst $38                                       ; $5929: $ff
    rlca                                          ; $592a: $07
    ld bc, $08f9                                  ; $592b: $01 $f9 $08
    ld a, [c]                                     ; $592e: $f2
    ld bc, $fce9                                  ; $592f: $01 $e9 $fc
    ld [bc], a                                    ; $5932: $02
    dec [hl]                                      ; $5933: $35
    ld [bc], a                                    ; $5934: $02
    jr nc, jr_0e8_5939                            ; $5935: $30 $02

    ld b, b                                       ; $5937: $40
    ld [bc], a                                    ; $5938: $02

jr_0e8_5939:
    and b                                         ; $5939: $a0
    inc c                                         ; $593a: $0c
    nop                                           ; $593b: $00
    add e                                         ; $593c: $83
    inc b                                         ; $593d: $04
    nop                                           ; $593e: $00
    ld [bc], a                                    ; $593f: $02
    add hl, bc                                    ; $5940: $09
    nop                                           ; $5941: $00
    rst $38                                       ; $5942: $ff
    dec c                                         ; $5943: $0d
    inc b                                         ; $5944: $04
    ld sp, hl                                     ; $5945: $f9
    ld [$01f2], sp                                ; $5946: $08 $f2 $01
    db $ed                                        ; $5949: $ed
    ld sp, hl                                     ; $594a: $f9
    db $ed                                        ; $594b: $ed
    nop                                           ; $594c: $00
    db $fd                                        ; $594d: $fd
    ld sp, hl                                     ; $594e: $f9
    db $fd                                        ; $594f: $fd
    nop                                           ; $5950: $00
    ld [bc], a                                    ; $5951: $02
    rlca                                          ; $5952: $07
    sub d                                         ; $5953: $92
    dec bc                                        ; $5954: $0b
    inc c                                         ; $5955: $0c
    inc de                                        ; $5956: $13
    inc e                                         ; $5957: $1c
    dec [hl]                                      ; $5958: $35
    ld a, $23                                     ; $5959: $3e $23
    ccf                                           ; $595b: $3f
    ld d, l                                       ; $595c: $55
    ld a, a                                       ; $595d: $7f
    ld h, d                                       ; $595e: $62
    ld a, a                                       ; $595f: $7f
    jr z, @+$41                                   ; $5960: $28 $3f

    dec d                                         ; $5962: $15
    rra                                           ; $5963: $1f
    ld a, [hl+]                                   ; $5964: $2a
    cpl                                           ; $5965: $2f
    ld [bc], a                                    ; $5966: $02
    ld d, l                                       ; $5967: $55
    ld [bc], a                                    ; $5968: $02
    ld d, b                                       ; $5969: $50
    add h                                         ; $596a: $84
    or b                                          ; $596b: $b0
    ldh a, [$90]                                  ; $596c: $f0 $90
    ldh a, [rSC]                                  ; $596e: $f0 $02
    ld h, c                                       ; $5970: $61
    ld [bc], a                                    ; $5971: $02
    ld l, d                                       ; $5972: $6a
    ld [bc], a                                    ; $5973: $02
    ld h, b                                       ; $5974: $60
    sub d                                         ; $5975: $92
    ld d, b                                       ; $5976: $50
    jr nc, jr_0e8_59c1                            ; $5977: $30 $48

    jr c, jr_0e8_59a7                             ; $5979: $38 $2c

    ld a, h                                       ; $597b: $7c
    ld b, h                                       ; $597c: $44
    ld a, h                                       ; $597d: $7c
    ld a, [bc]                                    ; $597e: $0a
    ld a, [hl]                                    ; $597f: $7e
    ld d, $7e                                     ; $5980: $16 $7e
    inc d                                         ; $5982: $14
    ld a, h                                       ; $5983: $7c
    jr z, jr_0e8_59fe                             ; $5984: $28 $78

    ld d, h                                       ; $5986: $54
    ld [hl], h                                    ; $5987: $74
    ld [bc], a                                    ; $5988: $02
    ld a, [hl+]                                   ; $5989: $2a
    ld [bc], a                                    ; $598a: $02
    ld a, [bc]                                    ; $598b: $0a
    add h                                         ; $598c: $84
    dec c                                         ; $598d: $0d
    rrca                                          ; $598e: $0f
    add hl, bc                                    ; $598f: $09
    rrca                                          ; $5990: $0f
    ld [bc], a                                    ; $5991: $02
    ld h, $02                                     ; $5992: $26 $02
    ld b, [hl]                                    ; $5994: $46
    ld [bc], a                                    ; $5995: $02
    pop bc                                        ; $5996: $c1
    add [hl]                                      ; $5997: $86
    or b                                          ; $5998: $b0
    ldh a, [rVBK]                                 ; $5999: $f0 $4f
    ld a, a                                       ; $599b: $7f
    jr nc, @+$41                                  ; $599c: $30 $3f

    ld [bc], a                                    ; $599e: $02
    rrca                                          ; $599f: $0f
    ld d, $00                                     ; $59a0: $16 $00
    ld [bc], a                                    ; $59a2: $02
    inc bc                                        ; $59a3: $03
    add [hl]                                      ; $59a4: $86
    dec c                                         ; $59a5: $0d
    rrca                                          ; $59a6: $0f

jr_0e8_59a7:
    ld [hl], d                                    ; $59a7: $72
    ld a, [hl]                                    ; $59a8: $7e
    inc c                                         ; $59a9: $0c
    ld a, h                                       ; $59aa: $7c
    ld [bc], a                                    ; $59ab: $02
    ld [hl], b                                    ; $59ac: $70
    ld d, $00                                     ; $59ad: $16 $00
    rst $38                                       ; $59af: $ff
    add hl, bc                                    ; $59b0: $09
    ld [bc], a                                    ; $59b1: $02
    ld sp, hl                                     ; $59b2: $f9
    ld [$01f2], sp                                ; $59b3: $08 $f2 $01
    or $fb                                        ; $59b6: $f6 $fb
    or $fe                                        ; $59b8: $f6 $fe
    sub d                                         ; $59ba: $92
    nop                                           ; $59bb: $00
    ld b, b                                       ; $59bc: $40
    nop                                           ; $59bd: $00
    xor d                                         ; $59be: $aa
    nop                                           ; $59bf: $00
    cp a                                          ; $59c0: $bf

jr_0e8_59c1:
    nop                                           ; $59c1: $00
    ccf                                           ; $59c2: $3f
    nop                                           ; $59c3: $00
    ccf                                           ; $59c4: $3f
    nop                                           ; $59c5: $00
    ld a, d                                       ; $59c6: $7a
    nop                                           ; $59c7: $00
    ld d, l                                       ; $59c8: $55
    nop                                           ; $59c9: $00
    ei                                            ; $59ca: $fb
    nop                                           ; $59cb: $00
    ccf                                           ; $59cc: $3f
    rrca                                          ; $59cd: $0f
    nop                                           ; $59ce: $00
    sub c                                         ; $59cf: $91
    ld [bc], a                                    ; $59d0: $02
    nop                                           ; $59d1: $00
    dec b                                         ; $59d2: $05
    nop                                           ; $59d3: $00
    dec b                                         ; $59d4: $05
    nop                                           ; $59d5: $00
    inc b                                         ; $59d6: $04
    nop                                           ; $59d7: $00
    inc b                                         ; $59d8: $04
    nop                                           ; $59d9: $00
    ld b, $00                                     ; $59da: $06 $00
    ld b, $00                                     ; $59dc: $06 $00
    rlca                                          ; $59de: $07
    nop                                           ; $59df: $00
    inc b                                         ; $59e0: $04
    ld c, $00                                     ; $59e1: $0e $00
    rst $38                                       ; $59e3: $ff
    dec c                                         ; $59e4: $0d
    inc b                                         ; $59e5: $04
    ld sp, hl                                     ; $59e6: $f9
    ld [$01f2], sp                                ; $59e7: $08 $f2 $01
    db $ed                                        ; $59ea: $ed
    ld sp, hl                                     ; $59eb: $f9
    db $ed                                        ; $59ec: $ed
    nop                                           ; $59ed: $00
    db $fd                                        ; $59ee: $fd
    ld sp, hl                                     ; $59ef: $f9
    db $fd                                        ; $59f0: $fd
    rst $38                                       ; $59f1: $ff
    ld [bc], a                                    ; $59f2: $02
    rlca                                          ; $59f3: $07
    sub d                                         ; $59f4: $92
    dec bc                                        ; $59f5: $0b
    inc c                                         ; $59f6: $0c
    inc de                                        ; $59f7: $13
    inc e                                         ; $59f8: $1c
    dec [hl]                                      ; $59f9: $35
    ld a, $23                                     ; $59fa: $3e $23
    ccf                                           ; $59fc: $3f
    ld d, l                                       ; $59fd: $55

jr_0e8_59fe:
    ld a, a                                       ; $59fe: $7f
    ld h, d                                       ; $59ff: $62
    ld a, a                                       ; $5a00: $7f
    jr z, jr_0e8_5a42                             ; $5a01: $28 $3f

    dec d                                         ; $5a03: $15
    rra                                           ; $5a04: $1f
    ld a, [hl+]                                   ; $5a05: $2a
    cpl                                           ; $5a06: $2f
    ld [bc], a                                    ; $5a07: $02
    ld d, l                                       ; $5a08: $55
    inc b                                         ; $5a09: $04
    ret nc                                        ; $5a0a: $d0

    add h                                         ; $5a0b: $84
    or b                                          ; $5a0c: $b0
    ldh a, [$a0]                                  ; $5a0d: $f0 $a0
    ldh [rSC], a                                  ; $5a0f: $e0 $02
    ld b, b                                       ; $5a11: $40
    ld [bc], a                                    ; $5a12: $02
    ld h, b                                       ; $5a13: $60
    sub d                                         ; $5a14: $92
    ld d, b                                       ; $5a15: $50
    jr nc, jr_0e8_5a60                            ; $5a16: $30 $48

    jr c, jr_0e8_5a46                             ; $5a18: $38 $2c

    ld a, h                                       ; $5a1a: $7c
    ld b, h                                       ; $5a1b: $44
    ld a, h                                       ; $5a1c: $7c
    ld a, [bc]                                    ; $5a1d: $0a
    ld a, [hl]                                    ; $5a1e: $7e
    ld d, $7e                                     ; $5a1f: $16 $7e
    inc d                                         ; $5a21: $14
    ld a, h                                       ; $5a22: $7c
    jr z, jr_0e8_5a9d                             ; $5a23: $28 $78

    ld d, [hl]                                    ; $5a25: $56
    halt                                          ; $5a26: $76
    ld [bc], a                                    ; $5a27: $02
    ld a, [hl+]                                   ; $5a28: $2a
    add c                                         ; $5a29: $81
    dec c                                         ; $5a2a: $0d
    inc bc                                        ; $5a2b: $03
    rrca                                          ; $5a2c: $0f
    ld [bc], a                                    ; $5a2d: $02
    ld c, $02                                     ; $5a2e: $0e $02
    inc c                                         ; $5a30: $0c
    ld [bc], a                                    ; $5a31: $02
    ld b, [hl]                                    ; $5a32: $46
    ld [bc], a                                    ; $5a33: $02
    pop bc                                        ; $5a34: $c1
    add [hl]                                      ; $5a35: $86
    or d                                          ; $5a36: $b2
    ld a, [c]                                     ; $5a37: $f2
    rst $08                                       ; $5a38: $cf
    rst $38                                       ; $5a39: $ff
    jr nc, jr_0e8_5a7b                            ; $5a3a: $30 $3f

    ld [bc], a                                    ; $5a3c: $02
    rrca                                          ; $5a3d: $0f
    ld d, $00                                     ; $5a3e: $16 $00
    ld [bc], a                                    ; $5a40: $02
    inc bc                                        ; $5a41: $03

jr_0e8_5a42:
    ld [bc], a                                    ; $5a42: $02
    dec sp                                        ; $5a43: $3b
    add [hl]                                      ; $5a44: $86
    rlca                                          ; $5a45: $07

jr_0e8_5a46:
    ccf                                           ; $5a46: $3f
    dec a                                         ; $5a47: $3d
    ccf                                           ; $5a48: $3f
    ld h, $3e                                     ; $5a49: $26 $3e
    ld [bc], a                                    ; $5a4b: $02
    inc a                                         ; $5a4c: $3c
    inc d                                         ; $5a4d: $14
    nop                                           ; $5a4e: $00
    rst $38                                       ; $5a4f: $ff
    add hl, bc                                    ; $5a50: $09
    ld [bc], a                                    ; $5a51: $02
    ld sp, hl                                     ; $5a52: $f9
    ld [$01f2], sp                                ; $5a53: $08 $f2 $01
    or $fb                                        ; $5a56: $f6 $fb
    or $fe                                        ; $5a58: $f6 $fe
    sub d                                         ; $5a5a: $92
    nop                                           ; $5a5b: $00
    ld b, b                                       ; $5a5c: $40
    nop                                           ; $5a5d: $00
    xor d                                         ; $5a5e: $aa
    nop                                           ; $5a5f: $00

jr_0e8_5a60:
    cp a                                          ; $5a60: $bf
    nop                                           ; $5a61: $00
    cp a                                          ; $5a62: $bf
    nop                                           ; $5a63: $00
    ccf                                           ; $5a64: $3f
    nop                                           ; $5a65: $00
    ld a, a                                       ; $5a66: $7f
    nop                                           ; $5a67: $00
    db $fd                                        ; $5a68: $fd
    nop                                           ; $5a69: $00
    ei                                            ; $5a6a: $fb
    nop                                           ; $5a6b: $00
    inc [hl]                                      ; $5a6c: $34
    rrca                                          ; $5a6d: $0f
    nop                                           ; $5a6e: $00
    sub c                                         ; $5a6f: $91
    ld [bc], a                                    ; $5a70: $02
    nop                                           ; $5a71: $00
    dec b                                         ; $5a72: $05
    nop                                           ; $5a73: $00
    inc b                                         ; $5a74: $04
    nop                                           ; $5a75: $00
    inc b                                         ; $5a76: $04
    nop                                           ; $5a77: $00
    inc b                                         ; $5a78: $04
    nop                                           ; $5a79: $00
    inc b                                         ; $5a7a: $04

jr_0e8_5a7b:
    nop                                           ; $5a7b: $00
    ld b, $00                                     ; $5a7c: $06 $00
    ld b, $00                                     ; $5a7e: $06 $00
    ld [bc], a                                    ; $5a80: $02
    ld c, $00                                     ; $5a81: $0e $00
    rst $38                                       ; $5a83: $ff
    dec c                                         ; $5a84: $0d
    inc b                                         ; $5a85: $04
    ld sp, hl                                     ; $5a86: $f9
    ld [$01f2], sp                                ; $5a87: $08 $f2 $01
    xor $f9                                       ; $5a8a: $ee $f9
    xor $00                                       ; $5a8c: $ee $00
    cp $f9                                        ; $5a8e: $fe $f9
    cp $00                                        ; $5a90: $fe $00
    ld [bc], a                                    ; $5a92: $02
    rlca                                          ; $5a93: $07
    sub d                                         ; $5a94: $92
    dec de                                        ; $5a95: $1b
    inc e                                         ; $5a96: $1c
    inc hl                                        ; $5a97: $23
    inc a                                         ; $5a98: $3c
    daa                                           ; $5a99: $27
    ccf                                           ; $5a9a: $3f
    ld d, l                                       ; $5a9b: $55
    ld a, a                                       ; $5a9c: $7f

jr_0e8_5a9d:
    ld b, d                                       ; $5a9d: $42
    ld a, a                                       ; $5a9e: $7f
    jr nz, jr_0e8_5ae0                            ; $5a9f: $20 $3f

    db $10                                        ; $5aa1: $10
    rra                                           ; $5aa2: $1f
    ld a, [de]                                    ; $5aa3: $1a
    rra                                           ; $5aa4: $1f
    dec l                                         ; $5aa5: $2d
    cpl                                           ; $5aa6: $2f
    ld [bc], a                                    ; $5aa7: $02
    ld e, d                                       ; $5aa8: $5a
    inc b                                         ; $5aa9: $04
    ret nc                                        ; $5aaa: $d0

    add h                                         ; $5aab: $84
    or b                                          ; $5aac: $b0
    ldh a, [$a0]                                  ; $5aad: $f0 $a0
    ldh [rSC], a                                  ; $5aaf: $e0 $02
    ld b, d                                       ; $5ab1: $42
    ld [bc], a                                    ; $5ab2: $02
    ld h, b                                       ; $5ab3: $60
    sub d                                         ; $5ab4: $92
    ld e, b                                       ; $5ab5: $58
    jr c, jr_0e8_5afc                             ; $5ab6: $38 $44

    inc a                                         ; $5ab8: $3c
    ld h, h                                       ; $5ab9: $64
    ld a, h                                       ; $5aba: $7c
    ld a, [bc]                                    ; $5abb: $0a
    ld a, [hl]                                    ; $5abc: $7e
    ld [de], a                                    ; $5abd: $12
    ld a, [hl]                                    ; $5abe: $7e
    inc b                                         ; $5abf: $04
    ld a, h                                       ; $5ac0: $7c
    ld [$5878], sp                                ; $5ac1: $08 $78 $58
    ld a, b                                       ; $5ac4: $78
    ld [hl], $76                                  ; $5ac5: $36 $76
    ld [bc], a                                    ; $5ac7: $02
    ld e, d                                       ; $5ac8: $5a
    add c                                         ; $5ac9: $81
    dec c                                         ; $5aca: $0d
    inc bc                                        ; $5acb: $03
    rrca                                          ; $5acc: $0f
    ld [bc], a                                    ; $5acd: $02
    ld c, $02                                     ; $5ace: $0e $02
    inc c                                         ; $5ad0: $0c
    ld [bc], a                                    ; $5ad1: $02
    ld c, [hl]                                    ; $5ad2: $4e
    add [hl]                                      ; $5ad3: $86
    or l                                          ; $5ad4: $b5
    push af                                       ; $5ad5: $f5
    ld c, a                                       ; $5ad6: $4f
    ld a, a                                       ; $5ad7: $7f
    jr nc, jr_0e8_5b19                            ; $5ad8: $30 $3f

    ld [bc], a                                    ; $5ada: $02
    rrca                                          ; $5adb: $0f
    jr jr_0e8_5ade                                ; $5adc: $18 $00

jr_0e8_5ade:
    ld [bc], a                                    ; $5ade: $02
    scf                                           ; $5adf: $37

jr_0e8_5ae0:
    add [hl]                                      ; $5ae0: $86
    ld c, l                                       ; $5ae1: $4d
    ld a, a                                       ; $5ae2: $7f
    ld a, d                                       ; $5ae3: $7a
    ld a, [hl]                                    ; $5ae4: $7e
    ld c, h                                       ; $5ae5: $4c
    ld a, h                                       ; $5ae6: $7c
    ld [bc], a                                    ; $5ae7: $02
    inc a                                         ; $5ae8: $3c
    ld d, $00                                     ; $5ae9: $16 $00
    rst $38                                       ; $5aeb: $ff
    add hl, bc                                    ; $5aec: $09
    ld [bc], a                                    ; $5aed: $02
    ld sp, hl                                     ; $5aee: $f9
    ld [$01f2], sp                                ; $5aef: $08 $f2 $01
    rst $30                                       ; $5af2: $f7
    ei                                            ; $5af3: $fb
    rst $30                                       ; $5af4: $f7
    cp $90                                        ; $5af5: $fe $90
    nop                                           ; $5af7: $00
    ld b, b                                       ; $5af8: $40
    nop                                           ; $5af9: $00
    sub l                                         ; $5afa: $95
    nop                                           ; $5afb: $00

jr_0e8_5afc:
    cp a                                          ; $5afc: $bf
    nop                                           ; $5afd: $00
    cp a                                          ; $5afe: $bf
    nop                                           ; $5aff: $00
    ccf                                           ; $5b00: $3f
    nop                                           ; $5b01: $00
    ld a, a                                       ; $5b02: $7f
    nop                                           ; $5b03: $00
    push af                                       ; $5b04: $f5
    nop                                           ; $5b05: $00
    ld a, [hl+]                                   ; $5b06: $2a
    ld de, $8f00                                  ; $5b07: $11 $00 $8f
    ld [bc], a                                    ; $5b0a: $02
    nop                                           ; $5b0b: $00
    ld bc, $0400                                  ; $5b0c: $01 $00 $04
    nop                                           ; $5b0f: $00
    inc b                                         ; $5b10: $04
    nop                                           ; $5b11: $00
    inc b                                         ; $5b12: $04
    nop                                           ; $5b13: $00
    inc b                                         ; $5b14: $04
    nop                                           ; $5b15: $00
    inc b                                         ; $5b16: $04
    nop                                           ; $5b17: $00
    ld [bc], a                                    ; $5b18: $02

jr_0e8_5b19:
    stop                                          ; $5b19: $10 $00
    rst $38                                       ; $5b1b: $ff
    dec c                                         ; $5b1c: $0d
    inc b                                         ; $5b1d: $04
    ld sp, hl                                     ; $5b1e: $f9
    ld [$01f2], sp                                ; $5b1f: $08 $f2 $01
    db $ed                                        ; $5b22: $ed
    ld sp, hl                                     ; $5b23: $f9
    db $ed                                        ; $5b24: $ed
    nop                                           ; $5b25: $00
    db $fd                                        ; $5b26: $fd
    ld sp, hl                                     ; $5b27: $f9
    db $fd                                        ; $5b28: $fd
    nop                                           ; $5b29: $00
    ld [bc], a                                    ; $5b2a: $02
    rlca                                          ; $5b2b: $07
    sub d                                         ; $5b2c: $92
    dec bc                                        ; $5b2d: $0b
    inc c                                         ; $5b2e: $0c
    dec de                                        ; $5b2f: $1b
    inc e                                         ; $5b30: $1c
    dec d                                         ; $5b31: $15
    ld e, $23                                     ; $5b32: $1e $23
    ccf                                           ; $5b34: $3f
    dec [hl]                                      ; $5b35: $35
    ccf                                           ; $5b36: $3f
    ld b, d                                       ; $5b37: $42
    ld a, a                                       ; $5b38: $7f
    jr z, jr_0e8_5b7a                             ; $5b39: $28 $3f

    dec [hl]                                      ; $5b3b: $35
    ccf                                           ; $5b3c: $3f
    ld a, [hl+]                                   ; $5b3d: $2a
    cpl                                           ; $5b3e: $2f
    ld [bc], a                                    ; $5b3f: $02
    ld d, l                                       ; $5b40: $55
    ld [bc], a                                    ; $5b41: $02
    ld d, b                                       ; $5b42: $50
    add h                                         ; $5b43: $84
    or b                                          ; $5b44: $b0
    ldh a, [$90]                                  ; $5b45: $f0 $90
    ldh a, [rTMA]                                 ; $5b47: $f0 $06
    ld h, b                                       ; $5b49: $60
    sub d                                         ; $5b4a: $92
    ld d, b                                       ; $5b4b: $50
    jr nc, jr_0e8_5ba6                            ; $5b4c: $30 $58

    jr c, jr_0e8_5b78                             ; $5b4e: $38 $28

    ld a, b                                       ; $5b50: $78
    ld b, h                                       ; $5b51: $44
    ld a, h                                       ; $5b52: $7c
    inc c                                         ; $5b53: $0c
    ld a, h                                       ; $5b54: $7c
    ld [de], a                                    ; $5b55: $12
    ld a, [hl]                                    ; $5b56: $7e
    inc d                                         ; $5b57: $14
    ld a, h                                       ; $5b58: $7c
    inc l                                         ; $5b59: $2c
    ld a, h                                       ; $5b5a: $7c
    ld d, h                                       ; $5b5b: $54
    ld [hl], h                                    ; $5b5c: $74
    ld [bc], a                                    ; $5b5d: $02
    ld a, [hl+]                                   ; $5b5e: $2a
    ld [bc], a                                    ; $5b5f: $02
    ld a, [bc]                                    ; $5b60: $0a
    add h                                         ; $5b61: $84
    dec c                                         ; $5b62: $0d
    rrca                                          ; $5b63: $0f
    add hl, bc                                    ; $5b64: $09
    rrca                                          ; $5b65: $0f
    inc b                                         ; $5b66: $04
    ld b, $02                                     ; $5b67: $06 $02
    ld b, d                                       ; $5b69: $42
    add [hl]                                      ; $5b6a: $86
    or h                                          ; $5b6b: $b4
    db $f4                                        ; $5b6c: $f4
    ld c, a                                       ; $5b6d: $4f
    ld a, a                                       ; $5b6e: $7f
    jr c, jr_0e8_5bb0                             ; $5b6f: $38 $3f

    ld [bc], a                                    ; $5b71: $02
    rlca                                          ; $5b72: $07
    ld d, $00                                     ; $5b73: $16 $00
    ld [bc], a                                    ; $5b75: $02
    ccf                                           ; $5b76: $3f
    add l                                         ; $5b77: $85

jr_0e8_5b78:
    ld b, l                                       ; $5b78: $45
    ld a, a                                       ; $5b79: $7f

jr_0e8_5b7a:
    ld a, [hl-]                                   ; $5b7a: $3a
    ld a, [hl]                                    ; $5b7b: $7e
    ld [hl], h                                    ; $5b7c: $74
    inc bc                                        ; $5b7d: $03
    ld a, h                                       ; $5b7e: $7c
    ld d, $00                                     ; $5b7f: $16 $00
    rst $38                                       ; $5b81: $ff
    add hl, bc                                    ; $5b82: $09
    ld [bc], a                                    ; $5b83: $02
    ld sp, hl                                     ; $5b84: $f9
    ld [$01f2], sp                                ; $5b85: $08 $f2 $01
    or $fb                                        ; $5b88: $f6 $fb
    or $fe                                        ; $5b8a: $f6 $fe
    sub d                                         ; $5b8c: $92
    nop                                           ; $5b8d: $00
    ld b, b                                       ; $5b8e: $40
    nop                                           ; $5b8f: $00
    xor d                                         ; $5b90: $aa
    nop                                           ; $5b91: $00
    cp a                                          ; $5b92: $bf
    nop                                           ; $5b93: $00
    ccf                                           ; $5b94: $3f
    nop                                           ; $5b95: $00
    ccf                                           ; $5b96: $3f
    nop                                           ; $5b97: $00
    ld a, a                                       ; $5b98: $7f
    nop                                           ; $5b99: $00
    ld a, a                                       ; $5b9a: $7f
    nop                                           ; $5b9b: $00
    or $00                                        ; $5b9c: $f6 $00
    inc l                                         ; $5b9e: $2c
    rrca                                          ; $5b9f: $0f
    nop                                           ; $5ba0: $00
    adc l                                         ; $5ba1: $8d
    ld [bc], a                                    ; $5ba2: $02
    nop                                           ; $5ba3: $00
    dec b                                         ; $5ba4: $05
    nop                                           ; $5ba5: $00

jr_0e8_5ba6:
    dec b                                         ; $5ba6: $05
    nop                                           ; $5ba7: $00
    inc b                                         ; $5ba8: $04
    nop                                           ; $5ba9: $00
    inc b                                         ; $5baa: $04
    nop                                           ; $5bab: $00
    ld b, $00                                     ; $5bac: $06 $00
    ld b, $12                                     ; $5bae: $06 $12

jr_0e8_5bb0:
    nop                                           ; $5bb0: $00
    rst $38                                       ; $5bb1: $ff
    dec c                                         ; $5bb2: $0d
    inc b                                         ; $5bb3: $04
    ld sp, hl                                     ; $5bb4: $f9
    ld [$01f2], sp                                ; $5bb5: $08 $f2 $01
    db $ed                                        ; $5bb8: $ed
    ld sp, hl                                     ; $5bb9: $f9
    db $ed                                        ; $5bba: $ed
    nop                                           ; $5bbb: $00
    db $fd                                        ; $5bbc: $fd
    ld a, [$00fd]                                 ; $5bbd: $fa $fd $00
    ld [bc], a                                    ; $5bc0: $02
    rlca                                          ; $5bc1: $07
    sub d                                         ; $5bc2: $92
    dec bc                                        ; $5bc3: $0b
    inc c                                         ; $5bc4: $0c
    inc de                                        ; $5bc5: $13
    inc e                                         ; $5bc6: $1c
    dec [hl]                                      ; $5bc7: $35
    ld a, $23                                     ; $5bc8: $3e $23
    ccf                                           ; $5bca: $3f
    ld d, l                                       ; $5bcb: $55
    ld a, a                                       ; $5bcc: $7f
    ld h, d                                       ; $5bcd: $62
    ld a, a                                       ; $5bce: $7f
    jr z, jr_0e8_5c10                             ; $5bcf: $28 $3f

    dec d                                         ; $5bd1: $15
    rra                                           ; $5bd2: $1f
    ld l, d                                       ; $5bd3: $6a
    ld l, a                                       ; $5bd4: $6f
    ld [bc], a                                    ; $5bd5: $02
    ld d, l                                       ; $5bd6: $55
    add c                                         ; $5bd7: $81
    or b                                          ; $5bd8: $b0
    inc bc                                        ; $5bd9: $03
    ldh a, [rSC]                                  ; $5bda: $f0 $02
    ld [hl], b                                    ; $5bdc: $70
    ld [bc], a                                    ; $5bdd: $02
    jr nc, jr_0e8_5be2                            ; $5bde: $30 $02

    ld h, d                                       ; $5be0: $62
    ld [bc], a                                    ; $5be1: $02

jr_0e8_5be2:
    ld h, b                                       ; $5be2: $60
    sub d                                         ; $5be3: $92
    ld d, b                                       ; $5be4: $50
    jr nc, jr_0e8_5c2f                            ; $5be5: $30 $48

    jr c, jr_0e8_5c15                             ; $5be7: $38 $2c

    ld a, h                                       ; $5be9: $7c
    ld b, h                                       ; $5bea: $44
    ld a, h                                       ; $5beb: $7c
    ld a, [bc]                                    ; $5bec: $0a
    ld a, [hl]                                    ; $5bed: $7e
    ld d, $7e                                     ; $5bee: $16 $7e
    inc d                                         ; $5bf0: $14
    ld a, h                                       ; $5bf1: $7c
    jr z, jr_0e8_5c6c                             ; $5bf2: $28 $78

    ld d, h                                       ; $5bf4: $54
    ld [hl], h                                    ; $5bf5: $74
    ld [bc], a                                    ; $5bf6: $02
    ld a, [hl+]                                   ; $5bf7: $2a
    inc b                                         ; $5bf8: $04
    dec bc                                        ; $5bf9: $0b
    add h                                         ; $5bfa: $84
    dec c                                         ; $5bfb: $0d
    rrca                                          ; $5bfc: $0f
    dec b                                         ; $5bfd: $05
    rlca                                          ; $5bfe: $07
    ld [bc], a                                    ; $5bff: $02
    ld [bc], a                                    ; $5c00: $02
    ld [bc], a                                    ; $5c01: $02
    jp nz, $dd02                                  ; $5c02: $c2 $02 $dd

    add [hl]                                      ; $5c05: $86
    db $e3                                        ; $5c06: $e3
    rst $38                                       ; $5c07: $ff
    cp h                                          ; $5c08: $bc
    rst $38                                       ; $5c09: $ff
    ld h, a                                       ; $5c0a: $67
    ld a, a                                       ; $5c0b: $7f
    ld [bc], a                                    ; $5c0c: $02
    inc a                                         ; $5c0d: $3c
    inc d                                         ; $5c0e: $14
    nop                                           ; $5c0f: $00

jr_0e8_5c10:
    ld [bc], a                                    ; $5c10: $02
    inc bc                                        ; $5c11: $03
    add [hl]                                      ; $5c12: $86
    dec c                                         ; $5c13: $0d
    rrca                                          ; $5c14: $0f

jr_0e8_5c15:
    inc sp                                        ; $5c15: $33
    ccf                                           ; $5c16: $3f
    inc c                                         ; $5c17: $0c
    inc a                                         ; $5c18: $3c
    ld [bc], a                                    ; $5c19: $02
    jr nc, jr_0e8_5c32                            ; $5c1a: $30 $16

    nop                                           ; $5c1c: $00
    rst $38                                       ; $5c1d: $ff
    add hl, bc                                    ; $5c1e: $09
    ld [bc], a                                    ; $5c1f: $02
    ld sp, hl                                     ; $5c20: $f9
    ld [$01f2], sp                                ; $5c21: $08 $f2 $01
    or $fb                                        ; $5c24: $f6 $fb
    or $fe                                        ; $5c26: $f6 $fe
    sub d                                         ; $5c28: $92
    nop                                           ; $5c29: $00
    ld b, b                                       ; $5c2a: $40
    nop                                           ; $5c2b: $00
    xor d                                         ; $5c2c: $aa
    nop                                           ; $5c2d: $00
    ccf                                           ; $5c2e: $3f

jr_0e8_5c2f:
    nop                                           ; $5c2f: $00
    ccf                                           ; $5c30: $3f
    nop                                           ; $5c31: $00

jr_0e8_5c32:
    ccf                                           ; $5c32: $3f
    nop                                           ; $5c33: $00
    ccf                                           ; $5c34: $3f
    nop                                           ; $5c35: $00
    ld [hl], a                                    ; $5c36: $77
    nop                                           ; $5c37: $00
    ld a, e                                       ; $5c38: $7b
    nop                                           ; $5c39: $00
    ld b, l                                       ; $5c3a: $45
    rrca                                          ; $5c3b: $0f
    nop                                           ; $5c3c: $00
    sub c                                         ; $5c3d: $91
    ld [bc], a                                    ; $5c3e: $02
    nop                                           ; $5c3f: $00
    dec b                                         ; $5c40: $05
    nop                                           ; $5c41: $00
    dec b                                         ; $5c42: $05
    nop                                           ; $5c43: $00
    dec b                                         ; $5c44: $05
    nop                                           ; $5c45: $00
    inc b                                         ; $5c46: $04
    nop                                           ; $5c47: $00
    ld b, $00                                     ; $5c48: $06 $00
    rlca                                          ; $5c4a: $07
    nop                                           ; $5c4b: $00
    rlca                                          ; $5c4c: $07
    nop                                           ; $5c4d: $00
    inc b                                         ; $5c4e: $04
    ld c, $00                                     ; $5c4f: $0e $00
    rst $38                                       ; $5c51: $ff
    dec c                                         ; $5c52: $0d
    inc b                                         ; $5c53: $04
    ld sp, hl                                     ; $5c54: $f9
    ld [$01f2], sp                                ; $5c55: $08 $f2 $01
    xor $f9                                       ; $5c58: $ee $f9
    xor $00                                       ; $5c5a: $ee $00
    cp $f9                                        ; $5c5c: $fe $f9
    cp $00                                        ; $5c5e: $fe $00
    ld [bc], a                                    ; $5c60: $02
    rlca                                          ; $5c61: $07
    sub d                                         ; $5c62: $92
    dec de                                        ; $5c63: $1b
    inc e                                         ; $5c64: $1c
    inc hl                                        ; $5c65: $23
    inc a                                         ; $5c66: $3c
    daa                                           ; $5c67: $27
    ccf                                           ; $5c68: $3f
    ld d, l                                       ; $5c69: $55
    ld a, a                                       ; $5c6a: $7f
    ld b, d                                       ; $5c6b: $42

jr_0e8_5c6c:
    ld a, a                                       ; $5c6c: $7f
    jr nz, jr_0e8_5cae                            ; $5c6d: $20 $3f

    db $10                                        ; $5c6f: $10
    rra                                           ; $5c70: $1f
    ld a, [de]                                    ; $5c71: $1a
    rra                                           ; $5c72: $1f
    ld l, l                                       ; $5c73: $6d
    ld l, a                                       ; $5c74: $6f
    ld [bc], a                                    ; $5c75: $02
    ld e, d                                       ; $5c76: $5a
    add c                                         ; $5c77: $81
    or b                                          ; $5c78: $b0
    inc bc                                        ; $5c79: $03
    ldh a, [rSC]                                  ; $5c7a: $f0 $02
    ld [hl], b                                    ; $5c7c: $70
    ld [bc], a                                    ; $5c7d: $02
    jr nc, jr_0e8_5c82                            ; $5c7e: $30 $02

    ld [hl], d                                    ; $5c80: $72
    ld [bc], a                                    ; $5c81: $02

jr_0e8_5c82:
    ld h, b                                       ; $5c82: $60
    sub d                                         ; $5c83: $92
    ld e, b                                       ; $5c84: $58
    jr c, jr_0e8_5ccb                             ; $5c85: $38 $44

    inc a                                         ; $5c87: $3c
    ld h, h                                       ; $5c88: $64
    ld a, h                                       ; $5c89: $7c
    ld a, [bc]                                    ; $5c8a: $0a
    ld a, [hl]                                    ; $5c8b: $7e
    ld [de], a                                    ; $5c8c: $12
    ld a, [hl]                                    ; $5c8d: $7e
    inc b                                         ; $5c8e: $04
    ld a, h                                       ; $5c8f: $7c
    ld [$5878], sp                                ; $5c90: $08 $78 $58
    ld a, b                                       ; $5c93: $78
    inc [hl]                                      ; $5c94: $34
    ld [hl], h                                    ; $5c95: $74
    ld [bc], a                                    ; $5c96: $02
    ld e, d                                       ; $5c97: $5a
    inc b                                         ; $5c98: $04
    dec bc                                        ; $5c99: $0b
    add h                                         ; $5c9a: $84
    dec c                                         ; $5c9b: $0d
    rrca                                          ; $5c9c: $0f
    dec b                                         ; $5c9d: $05
    rlca                                          ; $5c9e: $07
    ld [bc], a                                    ; $5c9f: $02
    ld b, d                                       ; $5ca0: $42
    ld [bc], a                                    ; $5ca1: $02
    db $ed                                        ; $5ca2: $ed
    add [hl]                                      ; $5ca3: $86
    or e                                          ; $5ca4: $b3
    rst $38                                       ; $5ca5: $ff
    ld e, [hl]                                    ; $5ca6: $5e
    ld a, a                                       ; $5ca7: $7f
    inc sp                                        ; $5ca8: $33
    ccf                                           ; $5ca9: $3f
    ld [bc], a                                    ; $5caa: $02
    inc a                                         ; $5cab: $3c
    ld d, $00                                     ; $5cac: $16 $00

jr_0e8_5cae:
    add [hl]                                      ; $5cae: $86
    dec l                                         ; $5caf: $2d
    cpl                                           ; $5cb0: $2f
    ld [hl], d                                    ; $5cb1: $72
    ld a, [hl]                                    ; $5cb2: $7e
    inc c                                         ; $5cb3: $0c
    ld a, h                                       ; $5cb4: $7c
    ld [bc], a                                    ; $5cb5: $02
    ld [hl], b                                    ; $5cb6: $70
    jr jr_0e8_5cb9                                ; $5cb7: $18 $00

jr_0e8_5cb9:
    rst $38                                       ; $5cb9: $ff
    add hl, bc                                    ; $5cba: $09
    ld [bc], a                                    ; $5cbb: $02
    ld sp, hl                                     ; $5cbc: $f9
    ld [$01f2], sp                                ; $5cbd: $08 $f2 $01
    rst $30                                       ; $5cc0: $f7
    ei                                            ; $5cc1: $fb
    rst $30                                       ; $5cc2: $f7
    cp $90                                        ; $5cc3: $fe $90
    nop                                           ; $5cc5: $00
    ld b, b                                       ; $5cc6: $40
    nop                                           ; $5cc7: $00
    sub l                                         ; $5cc8: $95
    nop                                           ; $5cc9: $00
    ccf                                           ; $5cca: $3f

jr_0e8_5ccb:
    nop                                           ; $5ccb: $00
    ccf                                           ; $5ccc: $3f
    nop                                           ; $5ccd: $00
    ccf                                           ; $5cce: $3f
    nop                                           ; $5ccf: $00
    ccf                                           ; $5cd0: $3f
    nop                                           ; $5cd1: $00
    dec [hl]                                      ; $5cd2: $35
    nop                                           ; $5cd3: $00
    ld c, d                                       ; $5cd4: $4a
    ld de, $8f00                                  ; $5cd5: $11 $00 $8f
    ld [bc], a                                    ; $5cd8: $02
    nop                                           ; $5cd9: $00
    ld bc, $0500                                  ; $5cda: $01 $00 $05
    nop                                           ; $5cdd: $00
    dec b                                         ; $5cde: $05
    nop                                           ; $5cdf: $00
    inc b                                         ; $5ce0: $04
    nop                                           ; $5ce1: $00
    ld b, $00                                     ; $5ce2: $06 $00
    rlca                                          ; $5ce4: $07
    nop                                           ; $5ce5: $00
    inc b                                         ; $5ce6: $04
    stop                                          ; $5ce7: $10 $00
    rst $38                                       ; $5ce9: $ff
    dec c                                         ; $5cea: $0d
    inc b                                         ; $5ceb: $04
    ld sp, hl                                     ; $5cec: $f9
    ld [$01f2], sp                                ; $5ced: $08 $f2 $01
    db $ed                                        ; $5cf0: $ed
    ld sp, hl                                     ; $5cf1: $f9
    db $ed                                        ; $5cf2: $ed
    nop                                           ; $5cf3: $00
    db $fd                                        ; $5cf4: $fd
    ld sp, hl                                     ; $5cf5: $f9
    db $fd                                        ; $5cf6: $fd
    nop                                           ; $5cf7: $00
    ld [bc], a                                    ; $5cf8: $02
    rlca                                          ; $5cf9: $07
    sub d                                         ; $5cfa: $92
    dec bc                                        ; $5cfb: $0b
    inc c                                         ; $5cfc: $0c
    dec de                                        ; $5cfd: $1b
    inc e                                         ; $5cfe: $1c
    dec d                                         ; $5cff: $15
    ld e, $23                                     ; $5d00: $1e $23
    ccf                                           ; $5d02: $3f
    dec [hl]                                      ; $5d03: $35
    ccf                                           ; $5d04: $3f
    ld b, d                                       ; $5d05: $42
    ld a, a                                       ; $5d06: $7f
    jr z, jr_0e8_5d48                             ; $5d07: $28 $3f

    dec [hl]                                      ; $5d09: $35
    ccf                                           ; $5d0a: $3f
    ld a, [hl+]                                   ; $5d0b: $2a
    cpl                                           ; $5d0c: $2f
    ld [bc], a                                    ; $5d0d: $02
    ld d, l                                       ; $5d0e: $55
    ld [bc], a                                    ; $5d0f: $02
    ld d, b                                       ; $5d10: $50
    add h                                         ; $5d11: $84
    or b                                          ; $5d12: $b0
    ldh a, [$90]                                  ; $5d13: $f0 $90
    ldh a, [rTMA]                                 ; $5d15: $f0 $06
    ld h, b                                       ; $5d17: $60
    sub d                                         ; $5d18: $92
    ld d, b                                       ; $5d19: $50
    jr nc, jr_0e8_5d74                            ; $5d1a: $30 $58

    jr c, jr_0e8_5d46                             ; $5d1c: $38 $28

    ld a, b                                       ; $5d1e: $78
    ld b, h                                       ; $5d1f: $44
    ld a, h                                       ; $5d20: $7c
    inc c                                         ; $5d21: $0c
    ld a, h                                       ; $5d22: $7c
    ld [de], a                                    ; $5d23: $12
    ld a, [hl]                                    ; $5d24: $7e
    inc d                                         ; $5d25: $14
    ld a, h                                       ; $5d26: $7c
    inc l                                         ; $5d27: $2c
    ld a, h                                       ; $5d28: $7c
    ld d, h                                       ; $5d29: $54
    ld [hl], h                                    ; $5d2a: $74
    ld [bc], a                                    ; $5d2b: $02
    ld a, [hl+]                                   ; $5d2c: $2a
    ld [bc], a                                    ; $5d2d: $02
    ld a, [bc]                                    ; $5d2e: $0a
    add h                                         ; $5d2f: $84
    dec c                                         ; $5d30: $0d
    rrca                                          ; $5d31: $0f
    add hl, bc                                    ; $5d32: $09
    rrca                                          ; $5d33: $0f
    inc b                                         ; $5d34: $04
    ld b, $02                                     ; $5d35: $06 $02
    db $fc                                        ; $5d37: $fc
    add l                                         ; $5d38: $85
    and d                                         ; $5d39: $a2
    cp $5d                                        ; $5d3a: $fe $5d
    ld a, a                                       ; $5d3c: $7f
    ld l, $03                                     ; $5d3d: $2e $03
    ccf                                           ; $5d3f: $3f
    ld d, $00                                     ; $5d40: $16 $00
    ld [bc], a                                    ; $5d42: $02
    ld b, d                                       ; $5d43: $42
    add [hl]                                      ; $5d44: $86
    dec l                                         ; $5d45: $2d

jr_0e8_5d46:
    cpl                                           ; $5d46: $2f
    ld [hl], d                                    ; $5d47: $72

jr_0e8_5d48:
    ld a, [hl]                                    ; $5d48: $7e
    inc e                                         ; $5d49: $1c
    ld a, h                                       ; $5d4a: $7c
    ld [bc], a                                    ; $5d4b: $02
    ld h, b                                       ; $5d4c: $60
    ld d, $00                                     ; $5d4d: $16 $00
    rst $38                                       ; $5d4f: $ff
    add hl, bc                                    ; $5d50: $09
    ld [bc], a                                    ; $5d51: $02
    ld sp, hl                                     ; $5d52: $f9
    ld [$01f2], sp                                ; $5d53: $08 $f2 $01
    or $fb                                        ; $5d56: $f6 $fb
    or $fe                                        ; $5d58: $f6 $fe
    sub d                                         ; $5d5a: $92
    nop                                           ; $5d5b: $00
    ld b, b                                       ; $5d5c: $40
    nop                                           ; $5d5d: $00
    xor d                                         ; $5d5e: $aa
    nop                                           ; $5d5f: $00
    cp a                                          ; $5d60: $bf
    nop                                           ; $5d61: $00
    ccf                                           ; $5d62: $3f
    nop                                           ; $5d63: $00
    ccf                                           ; $5d64: $3f
    nop                                           ; $5d65: $00
    ld a, a                                       ; $5d66: $7f
    nop                                           ; $5d67: $00
    ld a, a                                       ; $5d68: $7f
    nop                                           ; $5d69: $00
    dec c                                         ; $5d6a: $0d
    nop                                           ; $5d6b: $00
    ld b, $0f                                     ; $5d6c: $06 $0f
    nop                                           ; $5d6e: $00
    sub c                                         ; $5d6f: $91
    ld [bc], a                                    ; $5d70: $02
    nop                                           ; $5d71: $00
    dec b                                         ; $5d72: $05
    nop                                           ; $5d73: $00

jr_0e8_5d74:
    dec b                                         ; $5d74: $05
    nop                                           ; $5d75: $00
    inc b                                         ; $5d76: $04
    nop                                           ; $5d77: $00
    inc b                                         ; $5d78: $04
    nop                                           ; $5d79: $00
    ld b, $00                                     ; $5d7a: $06 $00
    ld b, $00                                     ; $5d7c: $06 $00
    rlca                                          ; $5d7e: $07
    nop                                           ; $5d7f: $00
    inc b                                         ; $5d80: $04
    ld c, $00                                     ; $5d81: $0e $00
    rst $38                                       ; $5d83: $ff
    dec c                                         ; $5d84: $0d
    inc b                                         ; $5d85: $04
    ld sp, hl                                     ; $5d86: $f9
    ld [$01f2], sp                                ; $5d87: $08 $f2 $01
    db $ed                                        ; $5d8a: $ed
    ld sp, hl                                     ; $5d8b: $f9
    db $ed                                        ; $5d8c: $ed
    nop                                           ; $5d8d: $00
    db $fd                                        ; $5d8e: $fd
    ld sp, hl                                     ; $5d8f: $f9
    db $fd                                        ; $5d90: $fd
    nop                                           ; $5d91: $00
    ld [bc], a                                    ; $5d92: $02
    rlca                                          ; $5d93: $07
    sub d                                         ; $5d94: $92
    rrca                                          ; $5d95: $0f
    ld [$1e11], sp                                ; $5d96: $08 $11 $1e
    ccf                                           ; $5d99: $3f
    ld [hl-], a                                   ; $5d9a: $32
    ld b, a                                       ; $5d9b: $47
    ld a, b                                       ; $5d9c: $78
    ld c, a                                       ; $5d9d: $4f
    ld a, e                                       ; $5d9e: $7b
    dec h                                         ; $5d9f: $25
    ccf                                           ; $5da0: $3f
    inc hl                                        ; $5da1: $23
    ld a, $10                                     ; $5da2: $3e $10
    rra                                           ; $5da4: $1f
    ld a, [hl+]                                   ; $5da5: $2a
    cpl                                           ; $5da6: $2f
    ld [bc], a                                    ; $5da7: $02
    ld d, l                                       ; $5da8: $55
    add [hl]                                      ; $5da9: $86
    or h                                          ; $5daa: $b4
    push af                                       ; $5dab: $f5
    push de                                       ; $5dac: $d5
    push af                                       ; $5dad: $f5
    db $f4                                        ; $5dae: $f4
    or l                                          ; $5daf: $b5
    ld [bc], a                                    ; $5db0: $02
    ld h, l                                       ; $5db1: $65
    ld [bc], a                                    ; $5db2: $02
    ld h, a                                       ; $5db3: $67
    ld [bc], a                                    ; $5db4: $02
    ld h, b                                       ; $5db5: $60
    sub d                                         ; $5db6: $92
    ld [hl], b                                    ; $5db7: $70
    db $10                                        ; $5db8: $10
    ld [$7c78], sp                                ; $5db9: $08 $78 $7c
    ld c, h                                       ; $5dbc: $4c
    ld h, d                                       ; $5dbd: $62
    ld e, $72                                     ; $5dbe: $1e $72
    ld e, [hl]                                    ; $5dc0: $5e
    inc h                                         ; $5dc1: $24
    ld a, h                                       ; $5dc2: $7c
    ld b, h                                       ; $5dc3: $44
    ld a, h                                       ; $5dc4: $7c
    ld [$5478], sp                                ; $5dc5: $08 $78 $54
    ld [hl], h                                    ; $5dc8: $74
    ld [bc], a                                    ; $5dc9: $02
    ld a, [hl+]                                   ; $5dca: $2a
    add e                                         ; $5dcb: $83
    dec l                                         ; $5dcc: $2d
    cpl                                           ; $5dcd: $2f
    dec hl                                        ; $5dce: $2b
    ld [bc], a                                    ; $5dcf: $02
    cpl                                           ; $5dd0: $2f
    add c                                         ; $5dd1: $81
    dec l                                         ; $5dd2: $2d
    ld [bc], a                                    ; $5dd3: $02
    ld h, $02                                     ; $5dd4: $26 $02
    ld h, [hl]                                    ; $5dd6: $66
    ld [bc], a                                    ; $5dd7: $02
    ld b, a                                       ; $5dd8: $47
    add [hl]                                      ; $5dd9: $86
    or a                                          ; $5dda: $b7
    rst $30                                       ; $5ddb: $f7
    ld c, a                                       ; $5ddc: $4f
    ld a, a                                       ; $5ddd: $7f
    ld [hl], $3e                                  ; $5dde: $36 $3e
    ld [bc], a                                    ; $5de0: $02
    inc e                                         ; $5de1: $1c
    ld d, $00                                     ; $5de2: $16 $00
    ld [bc], a                                    ; $5de4: $02
    ld h, d                                       ; $5de5: $62
    add [hl]                                      ; $5de6: $86
    ld l, l                                       ; $5de7: $6d
    ld l, a                                       ; $5de8: $6f
    ld [hl], d                                    ; $5de9: $72
    ld a, [hl]                                    ; $5dea: $7e
    ld l, h                                       ; $5deb: $6c
    ld a, h                                       ; $5dec: $7c
    ld [bc], a                                    ; $5ded: $02
    jr c, jr_0e8_5e06                             ; $5dee: $38 $16

    nop                                           ; $5df0: $00
    rst $38                                       ; $5df1: $ff
    add hl, bc                                    ; $5df2: $09
    ld [bc], a                                    ; $5df3: $02
    ld sp, hl                                     ; $5df4: $f9
    ld [$01f2], sp                                ; $5df5: $08 $f2 $01
    or $fb                                        ; $5df8: $f6 $fb
    or $fe                                        ; $5dfa: $f6 $fe
    sub d                                         ; $5dfc: $92
    nop                                           ; $5dfd: $00
    ld b, b                                       ; $5dfe: $40
    nop                                           ; $5dff: $00
    xor d                                         ; $5e00: $aa
    nop                                           ; $5e01: $00
    ld a, [hl+]                                   ; $5e02: $2a
    nop                                           ; $5e03: $00
    ld a, [hl+]                                   ; $5e04: $2a
    nop                                           ; $5e05: $00

jr_0e8_5e06:
    ld a, [hl+]                                   ; $5e06: $2a
    nop                                           ; $5e07: $00
    ld l, d                                       ; $5e08: $6a
    nop                                           ; $5e09: $00
    ld h, b                                       ; $5e0a: $60
    nop                                           ; $5e0b: $00
    ldh [rP1], a                                  ; $5e0c: $e0 $00
    jr nz, @+$11                                  ; $5e0e: $20 $0f

    nop                                           ; $5e10: $00
    sub c                                         ; $5e11: $91
    ld [bc], a                                    ; $5e12: $02
    nop                                           ; $5e13: $00
    dec b                                         ; $5e14: $05
    nop                                           ; $5e15: $00
    inc b                                         ; $5e16: $04
    nop                                           ; $5e17: $00
    inc b                                         ; $5e18: $04
    nop                                           ; $5e19: $00
    inc b                                         ; $5e1a: $04
    nop                                           ; $5e1b: $00
    ld b, $00                                     ; $5e1c: $06 $00
    ld b, $00                                     ; $5e1e: $06 $00
    rlca                                          ; $5e20: $07
    nop                                           ; $5e21: $00
    inc b                                         ; $5e22: $04
    ld c, $00                                     ; $5e23: $0e $00
    rst $38                                       ; $5e25: $ff
    dec c                                         ; $5e26: $0d
    inc b                                         ; $5e27: $04
    ld sp, hl                                     ; $5e28: $f9
    ld [$01f2], sp                                ; $5e29: $08 $f2 $01
    db $ed                                        ; $5e2c: $ed
    ld sp, hl                                     ; $5e2d: $f9
    db $ed                                        ; $5e2e: $ed
    nop                                           ; $5e2f: $00
    db $fd                                        ; $5e30: $fd
    ld sp, hl                                     ; $5e31: $f9
    db $fd                                        ; $5e32: $fd
    nop                                           ; $5e33: $00
    ld [bc], a                                    ; $5e34: $02
    rlca                                          ; $5e35: $07
    sub d                                         ; $5e36: $92
    rrca                                          ; $5e37: $0f
    ld [$1d12], sp                                ; $5e38: $08 $12 $1d
    ccf                                           ; $5e3b: $3f
    dec [hl]                                      ; $5e3c: $35
    ld c, a                                       ; $5e3d: $4f
    ld [hl], b                                    ; $5e3e: $70
    ld c, a                                       ; $5e3f: $4f
    ld a, e                                       ; $5e40: $7b
    inc h                                         ; $5e41: $24
    ccf                                           ; $5e42: $3f
    inc hl                                        ; $5e43: $23
    inc a                                         ; $5e44: $3c
    db $10                                        ; $5e45: $10
    rra                                           ; $5e46: $1f
    ld a, [hl+]                                   ; $5e47: $2a
    cpl                                           ; $5e48: $2f
    ld [bc], a                                    ; $5e49: $02
    ld b, l                                       ; $5e4a: $45
    adc b                                         ; $5e4b: $88
    ld d, h                                       ; $5e4c: $54
    ld d, l                                       ; $5e4d: $55
    or l                                          ; $5e4e: $b5
    push af                                       ; $5e4f: $f5
    db $f4                                        ; $5e50: $f4
    push de                                       ; $5e51: $d5
    push hl                                       ; $5e52: $e5
    and l                                         ; $5e53: $a5
    ld [bc], a                                    ; $5e54: $02
    ld h, a                                       ; $5e55: $67
    ld [bc], a                                    ; $5e56: $02
    ld h, b                                       ; $5e57: $60
    sub d                                         ; $5e58: $92
    ld [hl], b                                    ; $5e59: $70
    db $10                                        ; $5e5a: $10
    jr jr_0e8_5ec5                                ; $5e5b: $18 $68

    ld a, h                                       ; $5e5d: $7c
    inc c                                         ; $5e5e: $0c
    ld h, d                                       ; $5e5f: $62
    ld e, $72                                     ; $5e60: $1e $72
    ld e, $64                                     ; $5e62: $1e $64
    ld a, h                                       ; $5e64: $7c
    inc b                                         ; $5e65: $04
    ld a, h                                       ; $5e66: $7c
    ld [$5678], sp                                ; $5e67: $08 $78 $56
    halt                                          ; $5e6a: $76
    ld [bc], a                                    ; $5e6b: $02
    ld a, [hl+]                                   ; $5e6c: $2a
    add e                                         ; $5e6d: $83
    dec l                                         ; $5e6e: $2d
    cpl                                           ; $5e6f: $2f
    add hl, hl                                    ; $5e70: $29
    ld [bc], a                                    ; $5e71: $02
    cpl                                           ; $5e72: $2f
    add c                                         ; $5e73: $81
    ld l, $02                                     ; $5e74: $2e $02
    scf                                           ; $5e76: $37
    ld [bc], a                                    ; $5e77: $02
    halt                                          ; $5e78: $76
    ld [bc], a                                    ; $5e79: $02
    ld b, a                                       ; $5e7a: $47
    add [hl]                                      ; $5e7b: $86
    and a                                         ; $5e7c: $a7
    rst $20                                       ; $5e7d: $e7
    ld e, a                                       ; $5e7e: $5f
    ld a, a                                       ; $5e7f: $7f
    daa                                           ; $5e80: $27
    ccf                                           ; $5e81: $3f
    ld [bc], a                                    ; $5e82: $02
    jr @+$18                                      ; $5e83: $18 $16

    nop                                           ; $5e85: $00
    ld [bc], a                                    ; $5e86: $02
    ld [hl], h                                    ; $5e87: $74
    ld [bc], a                                    ; $5e88: $02
    ld a, d                                       ; $5e89: $7a
    add h                                         ; $5e8a: $84
    ld a, l                                       ; $5e8b: $7d
    ld a, a                                       ; $5e8c: $7f
    ld e, c                                       ; $5e8d: $59
    ld a, a                                       ; $5e8e: $7f
    ld [bc], a                                    ; $5e8f: $02
    ld a, [hl]                                    ; $5e90: $7e
    ld [bc], a                                    ; $5e91: $02
    ld [hl], b                                    ; $5e92: $70
    inc d                                         ; $5e93: $14
    nop                                           ; $5e94: $00
    rst $38                                       ; $5e95: $ff
    add hl, bc                                    ; $5e96: $09
    ld [bc], a                                    ; $5e97: $02
    ld sp, hl                                     ; $5e98: $f9
    ld [$01f2], sp                                ; $5e99: $08 $f2 $01
    or $fb                                        ; $5e9c: $f6 $fb
    or $fe                                        ; $5e9e: $f6 $fe
    sub d                                         ; $5ea0: $92
    nop                                           ; $5ea1: $00
    ld b, b                                       ; $5ea2: $40
    nop                                           ; $5ea3: $00
    ld [$aa00], a                                 ; $5ea4: $ea $00 $aa
    nop                                           ; $5ea7: $00
    ld a, [hl+]                                   ; $5ea8: $2a
    nop                                           ; $5ea9: $00
    ld a, [hl+]                                   ; $5eaa: $2a
    nop                                           ; $5eab: $00
    ld l, d                                       ; $5eac: $6a
    nop                                           ; $5ead: $00
    ld h, b                                       ; $5eae: $60
    nop                                           ; $5eaf: $00
    ldh [rP1], a                                  ; $5eb0: $e0 $00
    ld h, b                                       ; $5eb2: $60
    rrca                                          ; $5eb3: $0f
    nop                                           ; $5eb4: $00
    sub c                                         ; $5eb5: $91
    ld [bc], a                                    ; $5eb6: $02
    nop                                           ; $5eb7: $00
    dec b                                         ; $5eb8: $05
    nop                                           ; $5eb9: $00
    inc b                                         ; $5eba: $04
    nop                                           ; $5ebb: $00
    inc b                                         ; $5ebc: $04
    nop                                           ; $5ebd: $00
    inc b                                         ; $5ebe: $04
    nop                                           ; $5ebf: $00
    ld [bc], a                                    ; $5ec0: $02
    nop                                           ; $5ec1: $00
    ld [bc], a                                    ; $5ec2: $02
    nop                                           ; $5ec3: $00
    ld [bc], a                                    ; $5ec4: $02

jr_0e8_5ec5:
    nop                                           ; $5ec5: $00
    ld bc, $000e                                  ; $5ec6: $01 $0e $00
    rst $38                                       ; $5ec9: $ff
    dec c                                         ; $5eca: $0d
    inc b                                         ; $5ecb: $04
    ld sp, hl                                     ; $5ecc: $f9
    ld [$01f2], sp                                ; $5ecd: $08 $f2 $01
    xor $f9                                       ; $5ed0: $ee $f9
    xor $00                                       ; $5ed2: $ee $00
    cp $fa                                        ; $5ed4: $fe $fa
    cp $00                                        ; $5ed6: $fe $00
    ld [bc], a                                    ; $5ed8: $02
    rlca                                          ; $5ed9: $07
    sub d                                         ; $5eda: $92
    rrca                                          ; $5edb: $0f
    ld [$3d32], sp                                ; $5edc: $08 $32 $3d
    ld e, a                                       ; $5edf: $5f
    ld [hl], l                                    ; $5ee0: $75
    ld c, a                                       ; $5ee1: $4f
    ld [hl], b                                    ; $5ee2: $70
    ld c, a                                       ; $5ee3: $4f
    ld a, e                                       ; $5ee4: $7b
    inc h                                         ; $5ee5: $24
    ccf                                           ; $5ee6: $3f
    inc sp                                        ; $5ee7: $33
    dec a                                         ; $5ee8: $3d
    db $10                                        ; $5ee9: $10
    rra                                           ; $5eea: $1f
    ld a, [hl+]                                   ; $5eeb: $2a
    cpl                                           ; $5eec: $2f
    ld [bc], a                                    ; $5eed: $02
    ld b, l                                       ; $5eee: $45
    adc b                                         ; $5eef: $88
    ld d, h                                       ; $5ef0: $54
    ld d, l                                       ; $5ef1: $55
    or l                                          ; $5ef2: $b5
    push af                                       ; $5ef3: $f5
    db $f4                                        ; $5ef4: $f4
    push de                                       ; $5ef5: $d5
    push hl                                       ; $5ef6: $e5
    and l                                         ; $5ef7: $a5
    ld [bc], a                                    ; $5ef8: $02
    ld h, a                                       ; $5ef9: $67
    ld [bc], a                                    ; $5efa: $02
    ld h, b                                       ; $5efb: $60
    sub d                                         ; $5efc: $92
    ld [hl], b                                    ; $5efd: $70
    db $10                                        ; $5efe: $10
    inc e                                         ; $5eff: $1c
    ld l, h                                       ; $5f00: $6c
    ld a, d                                       ; $5f01: $7a
    ld c, $62                                     ; $5f02: $0e $62
    ld e, $72                                     ; $5f04: $1e $72
    ld e, $64                                     ; $5f06: $1e $64
    ld a, h                                       ; $5f08: $7c
    inc c                                         ; $5f09: $0c
    ld a, h                                       ; $5f0a: $7c
    ld [$5678], sp                                ; $5f0b: $08 $78 $56
    halt                                          ; $5f0e: $76
    ld [bc], a                                    ; $5f0f: $02
    ld a, [hl+]                                   ; $5f10: $2a
    add e                                         ; $5f11: $83
    dec l                                         ; $5f12: $2d
    cpl                                           ; $5f13: $2f
    add hl, hl                                    ; $5f14: $29
    ld [bc], a                                    ; $5f15: $02
    cpl                                           ; $5f16: $2f
    add c                                         ; $5f17: $81
    ld l, $02                                     ; $5f18: $2e $02
    daa                                           ; $5f1a: $27
    ld [bc], a                                    ; $5f1b: $02
    ld h, [hl]                                    ; $5f1c: $66
    ld [bc], a                                    ; $5f1d: $02
    rst $08                                       ; $5f1e: $cf
    add [hl]                                      ; $5f1f: $86
    cp a                                          ; $5f20: $bf
    rst $38                                       ; $5f21: $ff
    ld c, a                                       ; $5f22: $4f
    ld a, a                                       ; $5f23: $7f
    ld [hl-], a                                   ; $5f24: $32
    inc sp                                        ; $5f25: $33
    ld [bc], a                                    ; $5f26: $02
    ld bc, $0016                                  ; $5f27: $01 $16 $00
    ld [bc], a                                    ; $5f2a: $02
    ld [hl], $02                                  ; $5f2b: $36 $02
    ld a, [hl-]                                   ; $5f2d: $3a
    add h                                         ; $5f2e: $84
    dec e                                         ; $5f2f: $1d
    ccf                                           ; $5f30: $3f
    ld e, $3e                                     ; $5f31: $1e $3e
    ld [bc], a                                    ; $5f33: $02
    jr c, jr_0e8_5f4c                             ; $5f34: $38 $16

    nop                                           ; $5f36: $00
    rst $38                                       ; $5f37: $ff
    add hl, bc                                    ; $5f38: $09
    ld [bc], a                                    ; $5f39: $02
    ld sp, hl                                     ; $5f3a: $f9
    ld [$01f2], sp                                ; $5f3b: $08 $f2 $01
    rst $30                                       ; $5f3e: $f7
    ei                                            ; $5f3f: $fb
    rst $30                                       ; $5f40: $f7
    cp $90                                        ; $5f41: $fe $90
    nop                                           ; $5f43: $00
    ld b, b                                       ; $5f44: $40
    nop                                           ; $5f45: $00
    ld [$aa00], a                                 ; $5f46: $ea $00 $aa
    nop                                           ; $5f49: $00
    ld a, [hl+]                                   ; $5f4a: $2a
    nop                                           ; $5f4b: $00

jr_0e8_5f4c:
    ld a, [hl+]                                   ; $5f4c: $2a
    nop                                           ; $5f4d: $00
    ld l, d                                       ; $5f4e: $6a
    nop                                           ; $5f4f: $00
    ld h, b                                       ; $5f50: $60
    nop                                           ; $5f51: $00
    ld h, b                                       ; $5f52: $60
    ld de, $9100                                  ; $5f53: $11 $00 $91
    ld [bc], a                                    ; $5f56: $02
    nop                                           ; $5f57: $00
    dec b                                         ; $5f58: $05
    nop                                           ; $5f59: $00
    inc b                                         ; $5f5a: $04
    nop                                           ; $5f5b: $00
    inc b                                         ; $5f5c: $04
    nop                                           ; $5f5d: $00
    inc b                                         ; $5f5e: $04
    nop                                           ; $5f5f: $00
    ld b, $00                                     ; $5f60: $06 $00
    ld b, $00                                     ; $5f62: $06 $00
    ld [bc], a                                    ; $5f64: $02
    nop                                           ; $5f65: $00
    ld bc, $000e                                  ; $5f66: $01 $0e $00
    rst $38                                       ; $5f69: $ff
    dec c                                         ; $5f6a: $0d
    inc b                                         ; $5f6b: $04
    ld sp, hl                                     ; $5f6c: $f9
    ld [$01f2], sp                                ; $5f6d: $08 $f2 $01
    db $ed                                        ; $5f70: $ed
    ld sp, hl                                     ; $5f71: $f9
    db $ed                                        ; $5f72: $ed
    nop                                           ; $5f73: $00
    db $fd                                        ; $5f74: $fd
    ld sp, hl                                     ; $5f75: $f9
    db $fd                                        ; $5f76: $fd
    nop                                           ; $5f77: $00
    ld [bc], a                                    ; $5f78: $02
    rlca                                          ; $5f79: $07
    sub d                                         ; $5f7a: $92
    rrca                                          ; $5f7b: $0f
    ld [$1e11], sp                                ; $5f7c: $08 $11 $1e
    rra                                           ; $5f7f: $1f
    ld [de], a                                    ; $5f80: $12
    daa                                           ; $5f81: $27
    jr c, jr_0e8_5fd3                             ; $5f82: $38 $4f

    ld a, e                                       ; $5f84: $7b
    ld b, l                                       ; $5f85: $45
    ld a, a                                       ; $5f86: $7f
    inc hl                                        ; $5f87: $23
    ld a, $10                                     ; $5f88: $3e $10
    rra                                           ; $5f8a: $1f
    ld a, [hl+]                                   ; $5f8b: $2a
    cpl                                           ; $5f8c: $2f
    ld [bc], a                                    ; $5f8d: $02
    ld d, l                                       ; $5f8e: $55
    add [hl]                                      ; $5f8f: $86
    or h                                          ; $5f90: $b4
    push af                                       ; $5f91: $f5
    push de                                       ; $5f92: $d5
    push af                                       ; $5f93: $f5
    db $f4                                        ; $5f94: $f4
    or l                                          ; $5f95: $b5
    ld [bc], a                                    ; $5f96: $02
    ld h, l                                       ; $5f97: $65
    ld [bc], a                                    ; $5f98: $02
    ld b, a                                       ; $5f99: $47
    ld [bc], a                                    ; $5f9a: $02
    ld h, b                                       ; $5f9b: $60
    add e                                         ; $5f9c: $83
    ld [hl], b                                    ; $5f9d: $70
    db $10                                        ; $5f9e: $10
    ld [$7802], sp                                ; $5f9f: $08 $02 $78
    adc l                                         ; $5fa2: $8d
    ld c, b                                       ; $5fa3: $48
    ld h, h                                       ; $5fa4: $64
    inc e                                         ; $5fa5: $1c
    ld [hl], d                                    ; $5fa6: $72
    ld e, [hl]                                    ; $5fa7: $5e
    ld [hl+], a                                   ; $5fa8: $22
    ld a, [hl]                                    ; $5fa9: $7e
    ld b, h                                       ; $5faa: $44
    ld a, h                                       ; $5fab: $7c
    ld [$5478], sp                                ; $5fac: $08 $78 $54
    ld [hl], h                                    ; $5faf: $74
    ld [bc], a                                    ; $5fb0: $02
    ld a, [hl+]                                   ; $5fb1: $2a
    add e                                         ; $5fb2: $83
    dec l                                         ; $5fb3: $2d
    cpl                                           ; $5fb4: $2f
    dec hl                                        ; $5fb5: $2b
    ld [bc], a                                    ; $5fb6: $02
    cpl                                           ; $5fb7: $2f
    add c                                         ; $5fb8: $81
    dec l                                         ; $5fb9: $2d
    ld [bc], a                                    ; $5fba: $02
    ld h, $02                                     ; $5fbb: $26 $02
    ld h, [hl]                                    ; $5fbd: $66
    ld [bc], a                                    ; $5fbe: $02
    rst $08                                       ; $5fbf: $cf
    add [hl]                                      ; $5fc0: $86
    xor a                                         ; $5fc1: $af
    rst $28                                       ; $5fc2: $ef
    cp a                                          ; $5fc3: $bf
    rst $38                                       ; $5fc4: $ff
    ld c, c                                       ; $5fc5: $49
    ld a, c                                       ; $5fc6: $79
    ld [bc], a                                    ; $5fc7: $02
    jr nc, @+$18                                  ; $5fc8: $30 $16

    nop                                           ; $5fca: $00
    ld [bc], a                                    ; $5fcb: $02
    ld h, e                                       ; $5fcc: $63
    add [hl]                                      ; $5fcd: $86
    ld l, l                                       ; $5fce: $6d
    ld l, a                                       ; $5fcf: $6f
    ld [hl], d                                    ; $5fd0: $72
    ld a, [hl]                                    ; $5fd1: $7e
    ld l, h                                       ; $5fd2: $6c

jr_0e8_5fd3:
    ld a, h                                       ; $5fd3: $7c
    ld [bc], a                                    ; $5fd4: $02
    ld a, b                                       ; $5fd5: $78
    ld d, $00                                     ; $5fd6: $16 $00
    rst $38                                       ; $5fd8: $ff
    add hl, bc                                    ; $5fd9: $09
    ld [bc], a                                    ; $5fda: $02
    ld sp, hl                                     ; $5fdb: $f9
    ld [$01f2], sp                                ; $5fdc: $08 $f2 $01
    or $fb                                        ; $5fdf: $f6 $fb
    or $fe                                        ; $5fe1: $f6 $fe
    sub d                                         ; $5fe3: $92
    nop                                           ; $5fe4: $00
    ld b, b                                       ; $5fe5: $40
    nop                                           ; $5fe6: $00
    xor d                                         ; $5fe7: $aa
    nop                                           ; $5fe8: $00
    ld a, [hl+]                                   ; $5fe9: $2a
    nop                                           ; $5fea: $00
    ld a, [hl+]                                   ; $5feb: $2a
    nop                                           ; $5fec: $00
    ld a, [hl+]                                   ; $5fed: $2a
    nop                                           ; $5fee: $00
    ld l, d                                       ; $5fef: $6a
    nop                                           ; $5ff0: $00
    ldh [rP1], a                                  ; $5ff1: $e0 $00
    ret nz                                        ; $5ff3: $c0

    nop                                           ; $5ff4: $00
    ld b, b                                       ; $5ff5: $40
    rrca                                          ; $5ff6: $0f
    nop                                           ; $5ff7: $00
    sub c                                         ; $5ff8: $91
    ld [bc], a                                    ; $5ff9: $02
    nop                                           ; $5ffa: $00
    dec b                                         ; $5ffb: $05
    nop                                           ; $5ffc: $00
    inc b                                         ; $5ffd: $04
    nop                                           ; $5ffe: $00
    inc b                                         ; $5fff: $04
    nop                                           ; $6000: $00
    inc b                                         ; $6001: $04
    nop                                           ; $6002: $00
    ld b, $00                                     ; $6003: $06 $00
    ld b, $00                                     ; $6005: $06 $00
    rlca                                          ; $6007: $07
    nop                                           ; $6008: $00
    inc b                                         ; $6009: $04
    ld c, $00                                     ; $600a: $0e $00
    rst $38                                       ; $600c: $ff
    dec c                                         ; $600d: $0d
    inc b                                         ; $600e: $04
    ld sp, hl                                     ; $600f: $f9
    ld [$01f2], sp                                ; $6010: $08 $f2 $01
    db $ed                                        ; $6013: $ed
    ld sp, hl                                     ; $6014: $f9
    db $ed                                        ; $6015: $ed
    nop                                           ; $6016: $00
    db $fd                                        ; $6017: $fd
    ld sp, hl                                     ; $6018: $f9
    db $fd                                        ; $6019: $fd
    nop                                           ; $601a: $00
    ld [bc], a                                    ; $601b: $02
    rlca                                          ; $601c: $07
    sub d                                         ; $601d: $92
    rrca                                          ; $601e: $0f
    ld [$1718], sp                                ; $601f: $08 $18 $17
    ccf                                           ; $6022: $3f
    ld sp, $7847                                  ; $6023: $31 $47 $78
    ld c, a                                       ; $6026: $4f
    ld a, c                                       ; $6027: $79
    ld h, $3f                                     ; $6028: $26 $3f
    ld hl, $103e                                  ; $602a: $21 $3e $10
    rra                                           ; $602d: $1f
    ld l, d                                       ; $602e: $6a
    ld l, a                                       ; $602f: $6f
    ld [bc], a                                    ; $6030: $02
    ld d, l                                       ; $6031: $55
    add [hl]                                      ; $6032: $86
    or h                                          ; $6033: $b4
    push af                                       ; $6034: $f5
    sub l                                         ; $6035: $95
    push af                                       ; $6036: $f5
    db $f4                                        ; $6037: $f4
    ld [hl], l                                    ; $6038: $75
    ld [bc], a                                    ; $6039: $02
    db $ed                                        ; $603a: $ed
    ld [bc], a                                    ; $603b: $02
    ld l, a                                       ; $603c: $6f
    ld [bc], a                                    ; $603d: $02
    ld h, b                                       ; $603e: $60
    sub d                                         ; $603f: $92
    ld [hl], b                                    ; $6040: $70
    db $10                                        ; $6041: $10
    ld c, b                                       ; $6042: $48
    jr c, jr_0e8_60c1                             ; $6043: $38 $7c

    inc l                                         ; $6045: $2c
    ld [hl], d                                    ; $6046: $72
    ld c, $72                                     ; $6047: $0e $72
    ld e, [hl]                                    ; $6049: $5e
    inc h                                         ; $604a: $24
    ld a, h                                       ; $604b: $7c
    ld b, h                                       ; $604c: $44
    inc a                                         ; $604d: $3c
    ld [$5478], sp                                ; $604e: $08 $78 $54
    ld [hl], h                                    ; $6051: $74
    ld [bc], a                                    ; $6052: $02
    ld [hl+], a                                   ; $6053: $22
    ld [bc], a                                    ; $6054: $02
    ld a, [hl+]                                   ; $6055: $2a
    add c                                         ; $6056: $81
    dec l                                         ; $6057: $2d
    ld [bc], a                                    ; $6058: $02
    cpl                                           ; $6059: $2f
    add e                                         ; $605a: $83
    dec hl                                        ; $605b: $2b
    daa                                           ; $605c: $27
    dec h                                         ; $605d: $25
    ld [bc], a                                    ; $605e: $02
    ld h, [hl]                                    ; $605f: $66
    ld [bc], a                                    ; $6060: $02
    cpl                                           ; $6061: $2f
    ld [bc], a                                    ; $6062: $02
    ld e, a                                       ; $6063: $5f
    add h                                         ; $6064: $84
    cp a                                          ; $6065: $bf
    rst $38                                       ; $6066: $ff
    sbc e                                         ; $6067: $9b
    rst $38                                       ; $6068: $ff
    ld [bc], a                                    ; $6069: $02
    ld a, [hl]                                    ; $606a: $7e
    ld [bc], a                                    ; $606b: $02
    ld c, $14                                     ; $606c: $0e $14
    nop                                           ; $606e: $00
    ld [bc], a                                    ; $606f: $02
    ld h, d                                       ; $6070: $62
    add [hl]                                      ; $6071: $86
    ld h, l                                       ; $6072: $65
    ld h, a                                       ; $6073: $67
    ld a, d                                       ; $6074: $7a
    ld a, [hl]                                    ; $6075: $7e
    ld h, h                                       ; $6076: $64
    ld a, h                                       ; $6077: $7c
    ld [bc], a                                    ; $6078: $02
    jr jr_0e8_6091                                ; $6079: $18 $16

    nop                                           ; $607b: $00
    rst $38                                       ; $607c: $ff
    add hl, bc                                    ; $607d: $09
    ld [bc], a                                    ; $607e: $02
    ld sp, hl                                     ; $607f: $f9
    ld [$01f2], sp                                ; $6080: $08 $f2 $01
    or $fb                                        ; $6083: $f6 $fb
    or $fe                                        ; $6085: $f6 $fe
    sub d                                         ; $6087: $92
    nop                                           ; $6088: $00
    ld b, b                                       ; $6089: $40
    nop                                           ; $608a: $00
    xor d                                         ; $608b: $aa
    nop                                           ; $608c: $00
    ld a, [hl+]                                   ; $608d: $2a
    nop                                           ; $608e: $00
    ld a, [hl+]                                   ; $608f: $2a
    nop                                           ; $6090: $00

jr_0e8_6091:
    ld a, [hl+]                                   ; $6091: $2a
    nop                                           ; $6092: $00
    ld c, d                                       ; $6093: $4a
    nop                                           ; $6094: $00
    ld b, b                                       ; $6095: $40
    nop                                           ; $6096: $00
    ld b, b                                       ; $6097: $40
    nop                                           ; $6098: $00
    add b                                         ; $6099: $80
    rrca                                          ; $609a: $0f
    nop                                           ; $609b: $00
    sub c                                         ; $609c: $91
    ld [bc], a                                    ; $609d: $02
    nop                                           ; $609e: $00
    rlca                                          ; $609f: $07
    nop                                           ; $60a0: $00
    dec b                                         ; $60a1: $05
    nop                                           ; $60a2: $00
    inc b                                         ; $60a3: $04
    nop                                           ; $60a4: $00
    inc b                                         ; $60a5: $04
    nop                                           ; $60a6: $00
    ld b, $00                                     ; $60a7: $06 $00
    ld b, $00                                     ; $60a9: $06 $00
    rlca                                          ; $60ab: $07
    nop                                           ; $60ac: $00
    ld b, $0e                                     ; $60ad: $06 $0e
    nop                                           ; $60af: $00
    rst $38                                       ; $60b0: $ff
    dec c                                         ; $60b1: $0d
    inc b                                         ; $60b2: $04
    ld sp, hl                                     ; $60b3: $f9
    ld [$01f2], sp                                ; $60b4: $08 $f2 $01
    xor $f9                                       ; $60b7: $ee $f9
    xor $00                                       ; $60b9: $ee $00
    cp $f9                                        ; $60bb: $fe $f9
    cp $ff                                        ; $60bd: $fe $ff
    ld [bc], a                                    ; $60bf: $02
    rlca                                          ; $60c0: $07

jr_0e8_60c1:
    sub d                                         ; $60c1: $92
    rrca                                          ; $60c2: $0f
    ld [$3738], sp                                ; $60c3: $08 $38 $37
    ld e, a                                       ; $60c6: $5f
    ld [hl], c                                    ; $60c7: $71
    ld b, a                                       ; $60c8: $47
    ld a, b                                       ; $60c9: $78
    ld c, a                                       ; $60ca: $4f
    ld a, c                                       ; $60cb: $79
    ld h, $3f                                     ; $60cc: $26 $3f
    ld sp, $103f                                  ; $60ce: $31 $3f $10
    rra                                           ; $60d1: $1f
    ld l, d                                       ; $60d2: $6a
    ld l, a                                       ; $60d3: $6f
    ld [bc], a                                    ; $60d4: $02
    ld d, l                                       ; $60d5: $55
    add [hl]                                      ; $60d6: $86
    or h                                          ; $60d7: $b4
    push af                                       ; $60d8: $f5
    sub l                                         ; $60d9: $95
    push af                                       ; $60da: $f5
    db $f4                                        ; $60db: $f4
    ld [hl], l                                    ; $60dc: $75
    ld [bc], a                                    ; $60dd: $02
    push hl                                       ; $60de: $e5
    ld [bc], a                                    ; $60df: $02
    ld l, a                                       ; $60e0: $6f
    ld [bc], a                                    ; $60e1: $02
    ld h, b                                       ; $60e2: $60
    sub d                                         ; $60e3: $92
    ld [hl], b                                    ; $60e4: $70
    db $10                                        ; $60e5: $10
    ld c, h                                       ; $60e6: $4c
    inc a                                         ; $60e7: $3c
    ld a, d                                       ; $60e8: $7a
    ld l, $72                                     ; $60e9: $2e $72
    ld c, $72                                     ; $60eb: $0e $72
    ld e, [hl]                                    ; $60ed: $5e
    inc h                                         ; $60ee: $24
    ld a, h                                       ; $60ef: $7c
    ld c, h                                       ; $60f0: $4c
    inc a                                         ; $60f1: $3c
    ld [$5478], sp                                ; $60f2: $08 $78 $54
    ld [hl], h                                    ; $60f5: $74
    ld [bc], a                                    ; $60f6: $02
    ld [hl+], a                                   ; $60f7: $22
    ld [bc], a                                    ; $60f8: $02
    ld a, [hl+]                                   ; $60f9: $2a
    add c                                         ; $60fa: $81
    dec l                                         ; $60fb: $2d
    ld [bc], a                                    ; $60fc: $02
    cpl                                           ; $60fd: $2f
    add e                                         ; $60fe: $83

Call_0e8_60ff:
    dec hl                                        ; $60ff: $2b
    daa                                           ; $6100: $27
    dec h                                         ; $6101: $25
    ld [bc], a                                    ; $6102: $02
    ld h, [hl]                                    ; $6103: $66
    ld [bc], a                                    ; $6104: $02
    ld l, a                                       ; $6105: $6f
    ld [bc], a                                    ; $6106: $02
    ld e, a                                       ; $6107: $5f
    add h                                         ; $6108: $84
    cp e                                          ; $6109: $bb
    rst $38                                       ; $610a: $ff
    ld a, c                                       ; $610b: $79
    ld a, a                                       ; $610c: $7f
    ld [bc], a                                    ; $610d: $02
    ld e, $16                                     ; $610e: $1e $16
    nop                                           ; $6110: $00
    ld [bc], a                                    ; $6111: $02
    inc sp                                        ; $6112: $33
    add h                                         ; $6113: $84
    dec a                                         ; $6114: $3d
    ccf                                           ; $6115: $3f
    ld [hl-], a                                   ; $6116: $32
    ld a, $02                                     ; $6117: $3e $02
    inc c                                         ; $6119: $0c
    jr jr_0e8_611c                                ; $611a: $18 $00

jr_0e8_611c:
    rst $38                                       ; $611c: $ff
    add hl, bc                                    ; $611d: $09
    ld [bc], a                                    ; $611e: $02
    ld sp, hl                                     ; $611f: $f9
    ld [$01f2], sp                                ; $6120: $08 $f2 $01
    rst $30                                       ; $6123: $f7
    ei                                            ; $6124: $fb
    rst $30                                       ; $6125: $f7
    cp $92                                        ; $6126: $fe $92
    nop                                           ; $6128: $00
    ld b, b                                       ; $6129: $40
    nop                                           ; $612a: $00
    xor d                                         ; $612b: $aa
    nop                                           ; $612c: $00
    ld a, [hl+]                                   ; $612d: $2a
    nop                                           ; $612e: $00
    ld a, [hl+]                                   ; $612f: $2a
    nop                                           ; $6130: $00
    ld a, [hl+]                                   ; $6131: $2a
    nop                                           ; $6132: $00
    ld l, d                                       ; $6133: $6a
    nop                                           ; $6134: $00
    ld b, b                                       ; $6135: $40
    nop                                           ; $6136: $00
    ld b, b                                       ; $6137: $40
    nop                                           ; $6138: $00
    add b                                         ; $6139: $80
    rrca                                          ; $613a: $0f
    nop                                           ; $613b: $00
    adc a                                         ; $613c: $8f
    ld [bc], a                                    ; $613d: $02
    nop                                           ; $613e: $00
    rlca                                          ; $613f: $07
    nop                                           ; $6140: $00
    dec b                                         ; $6141: $05
    nop                                           ; $6142: $00
    inc b                                         ; $6143: $04
    nop                                           ; $6144: $00
    inc b                                         ; $6145: $04
    nop                                           ; $6146: $00
    ld b, $00                                     ; $6147: $06 $00
    ld b, $00                                     ; $6149: $06 $00
    ld b, $10                                     ; $614b: $06 $10
    nop                                           ; $614d: $00
    rst $38                                       ; $614e: $ff
    dec c                                         ; $614f: $0d
    inc b                                         ; $6150: $04
    ld sp, hl                                     ; $6151: $f9
    ld [$01f2], sp                                ; $6152: $08 $f2 $01
    db $ed                                        ; $6155: $ed
    ld sp, hl                                     ; $6156: $f9
    db $ed                                        ; $6157: $ed
    nop                                           ; $6158: $00
    db $fd                                        ; $6159: $fd
    ld sp, hl                                     ; $615a: $f9
    db $fd                                        ; $615b: $fd
    nop                                           ; $615c: $00
    ld [bc], a                                    ; $615d: $02
    rlca                                          ; $615e: $07
    sub d                                         ; $615f: $92
    rrca                                          ; $6160: $0f
    ld [$1e11], sp                                ; $6161: $08 $11 $1e
    rra                                           ; $6164: $1f
    ld [de], a                                    ; $6165: $12
    daa                                           ; $6166: $27
    jr c, jr_0e8_61b8                             ; $6167: $38 $4f

    ld a, e                                       ; $6169: $7b
    ld b, l                                       ; $616a: $45
    ld a, a                                       ; $616b: $7f
    inc hl                                        ; $616c: $23
    ld a, $10                                     ; $616d: $3e $10
    rra                                           ; $616f: $1f
    ld a, [hl+]                                   ; $6170: $2a
    cpl                                           ; $6171: $2f
    ld [bc], a                                    ; $6172: $02
    ld d, l                                       ; $6173: $55
    add [hl]                                      ; $6174: $86
    or h                                          ; $6175: $b4
    push af                                       ; $6176: $f5
    push de                                       ; $6177: $d5
    push af                                       ; $6178: $f5
    db $f4                                        ; $6179: $f4
    or l                                          ; $617a: $b5
    ld [bc], a                                    ; $617b: $02
    ld h, l                                       ; $617c: $65
    ld [bc], a                                    ; $617d: $02
    ld h, a                                       ; $617e: $67
    ld [bc], a                                    ; $617f: $02
    ld h, b                                       ; $6180: $60
    add e                                         ; $6181: $83
    ld [hl], b                                    ; $6182: $70
    db $10                                        ; $6183: $10
    ld [$7802], sp                                ; $6184: $08 $02 $78
    adc l                                         ; $6187: $8d
    ld c, b                                       ; $6188: $48
    ld h, h                                       ; $6189: $64
    inc e                                         ; $618a: $1c
    ld [hl], d                                    ; $618b: $72
    ld e, [hl]                                    ; $618c: $5e
    ld [hl+], a                                   ; $618d: $22
    ld a, [hl]                                    ; $618e: $7e
    ld b, h                                       ; $618f: $44
    ld a, h                                       ; $6190: $7c
    ld [$5478], sp                                ; $6191: $08 $78 $54
    ld [hl], h                                    ; $6194: $74
    ld [bc], a                                    ; $6195: $02
    ld a, [hl+]                                   ; $6196: $2a
    add e                                         ; $6197: $83
    dec l                                         ; $6198: $2d
    cpl                                           ; $6199: $2f
    dec hl                                        ; $619a: $2b
    ld [bc], a                                    ; $619b: $02
    cpl                                           ; $619c: $2f
    add c                                         ; $619d: $81
    dec l                                         ; $619e: $2d
    ld [bc], a                                    ; $619f: $02
    ld h, $02                                     ; $61a0: $26 $02
    ld h, d                                       ; $61a2: $62
    ld [bc], a                                    ; $61a3: $02
    rst $00                                       ; $61a4: $c7
    add [hl]                                      ; $61a5: $86
    or a                                          ; $61a6: $b7
    rst $30                                       ; $61a7: $f7
    ld c, a                                       ; $61a8: $4f
    ld a, a                                       ; $61a9: $7f
    scf                                           ; $61aa: $37
    ccf                                           ; $61ab: $3f
    ld [bc], a                                    ; $61ac: $02
    ld e, $16                                     ; $61ad: $1e $16
    nop                                           ; $61af: $00
    ld [bc], a                                    ; $61b0: $02
    ld [hl], e                                    ; $61b1: $73
    add [hl]                                      ; $61b2: $86
    ld [hl], l                                    ; $61b3: $75
    ld [hl], a                                    ; $61b4: $77
    ld a, l                                       ; $61b5: $7d
    ld a, a                                       ; $61b6: $7f
    ld [de], a                                    ; $61b7: $12

jr_0e8_61b8:
    ld e, $02                                     ; $61b8: $1e $02
    inc c                                         ; $61ba: $0c
    ld d, $00                                     ; $61bb: $16 $00
    rst $38                                       ; $61bd: $ff
    add hl, bc                                    ; $61be: $09
    ld [bc], a                                    ; $61bf: $02
    ld sp, hl                                     ; $61c0: $f9
    ld [$01f2], sp                                ; $61c1: $08 $f2 $01
    or $fb                                        ; $61c4: $f6 $fb
    or $fe                                        ; $61c6: $f6 $fe
    sub d                                         ; $61c8: $92
    nop                                           ; $61c9: $00
    ld b, b                                       ; $61ca: $40
    nop                                           ; $61cb: $00
    xor d                                         ; $61cc: $aa
    nop                                           ; $61cd: $00
    ld a, [hl+]                                   ; $61ce: $2a
    nop                                           ; $61cf: $00
    ld a, [hl+]                                   ; $61d0: $2a
    nop                                           ; $61d1: $00
    ld a, [hl+]                                   ; $61d2: $2a
    nop                                           ; $61d3: $00
    ld l, d                                       ; $61d4: $6a
    nop                                           ; $61d5: $00
    ld h, b                                       ; $61d6: $60
    nop                                           ; $61d7: $00
    ldh [rP1], a                                  ; $61d8: $e0 $00
    jr nz, jr_0e8_61eb                            ; $61da: $20 $0f

    nop                                           ; $61dc: $00
    sub c                                         ; $61dd: $91
    ld [bc], a                                    ; $61de: $02
    nop                                           ; $61df: $00
    dec b                                         ; $61e0: $05
    nop                                           ; $61e1: $00
    inc b                                         ; $61e2: $04
    nop                                           ; $61e3: $00
    inc b                                         ; $61e4: $04
    nop                                           ; $61e5: $00
    inc b                                         ; $61e6: $04
    nop                                           ; $61e7: $00
    ld b, $00                                     ; $61e8: $06 $00
    rlca                                          ; $61ea: $07

jr_0e8_61eb:
    nop                                           ; $61eb: $00
    inc bc                                        ; $61ec: $03
    nop                                           ; $61ed: $00
    ld [bc], a                                    ; $61ee: $02
    ld c, $00                                     ; $61ef: $0e $00
    rst $38                                       ; $61f1: $ff
    dec c                                         ; $61f2: $0d
    inc b                                         ; $61f3: $04
    ld sp, hl                                     ; $61f4: $f9
    ld [$01f2], sp                                ; $61f5: $08 $f2 $01
    db $ed                                        ; $61f8: $ed
    ld a, [$feee]                                 ; $61f9: $fa $ee $fe
    db $fd                                        ; $61fc: $fd
    ld a, [$fdfd]                                 ; $61fd: $fa $fd $fd
    ld [bc], a                                    ; $6200: $02
    rrca                                          ; $6201: $0f
    sub b                                         ; $6202: $90
    dec de                                        ; $6203: $1b
    inc d                                         ; $6204: $14
    ld [hl], $2d                                  ; $6205: $36 $2d
    daa                                           ; $6207: $27
    inc a                                         ; $6208: $3c
    ld c, e                                       ; $6209: $4b
    ld a, [hl]                                    ; $620a: $7e
    ld d, l                                       ; $620b: $55
    ld a, [hl]                                    ; $620c: $7e
    add b                                         ; $620d: $80
    rst $38                                       ; $620e: $ff
    ld e, d                                       ; $620f: $5a
    ld a, a                                       ; $6210: $7f
    inc a                                         ; $6211: $3c
    ccf                                           ; $6212: $3f
    ld [bc], a                                    ; $6213: $02
    ld d, a                                       ; $6214: $57
    ld [bc], a                                    ; $6215: $02
    ld d, l                                       ; $6216: $55
    ld [bc], a                                    ; $6217: $02
    ld l, [hl]                                    ; $6218: $6e
    add [hl]                                      ; $6219: $86
    halt                                          ; $621a: $76
    ld a, [hl]                                    ; $621b: $7e
    ld l, [hl]                                    ; $621c: $6e
    ld a, d                                       ; $621d: $7a
    inc a                                         ; $621e: $3c
    inc [hl]                                      ; $621f: $34
    ld [bc], a                                    ; $6220: $02
    jr c, @+$04                                   ; $6221: $38 $02

    ld [$0490], sp                                ; $6223: $08 $90 $04
    inc c                                         ; $6226: $0c
    ld c, $0a                                     ; $6227: $0e $0a
    rrca                                          ; $6229: $0f
    ld bc, $060e                                  ; $622a: $01 $0e $06
    add hl, bc                                    ; $622d: $09
    rrca                                          ; $622e: $0f
    ld [bc], a                                    ; $622f: $02
    ld c, $01                                     ; $6230: $0e $01
    rrca                                          ; $6232: $0f
    ld [bc], a                                    ; $6233: $02
    ld c, $02                                     ; $6234: $0e $02
    inc c                                         ; $6236: $0c
    add d                                         ; $6237: $82
    ld a, [bc]                                    ; $6238: $0a
    ld c, $03                                     ; $6239: $0e $03
    ld a, [bc]                                    ; $623b: $0a
    add c                                         ; $623c: $81
    ld c, $06                                     ; $623d: $0e $06
    ld b, $02                                     ; $623f: $06 $02
    jr nc, jr_0e8_6245                            ; $6241: $30 $02

    ld h, b                                       ; $6243: $60
    add h                                         ; $6244: $84

jr_0e8_6245:
    cp [hl]                                       ; $6245: $be
    cp $41                                        ; $6246: $fe $41
    ld a, a                                       ; $6248: $7f
    ld [bc], a                                    ; $6249: $02
    ccf                                           ; $624a: $3f
    jr jr_0e8_624d                                ; $624b: $18 $00

jr_0e8_624d:
    inc b                                         ; $624d: $04
    ld b, $04                                     ; $624e: $06 $04
    rlca                                          ; $6250: $07
    ld d, $00                                     ; $6251: $16 $00
    rst $38                                       ; $6253: $ff
    rlca                                          ; $6254: $07
    ld bc, $08f9                                  ; $6255: $01 $f9 $08
    ld a, [c]                                     ; $6258: $f2
    ld bc, $fcf6                                  ; $6259: $01 $f6 $fc
    sub h                                         ; $625c: $94
    nop                                           ; $625d: $00
    and b                                         ; $625e: $a0
    nop                                           ; $625f: $00
    xor b                                         ; $6260: $a8
    nop                                           ; $6261: $00
    ld b, h                                       ; $6262: $44
    nop                                           ; $6263: $00
    dec b                                         ; $6264: $05
    nop                                           ; $6265: $00
    inc b                                         ; $6266: $04
    nop                                           ; $6267: $00
    ld c, $00                                     ; $6268: $0e $00
    ld e, $00                                     ; $626a: $1e $00
    ld a, $00                                     ; $626c: $3e $00
    ld a, h                                       ; $626e: $7c
    nop                                           ; $626f: $00
    inc b                                         ; $6270: $04
    inc c                                         ; $6271: $0c
    nop                                           ; $6272: $00
    rst $38                                       ; $6273: $ff
    dec c                                         ; $6274: $0d
    inc b                                         ; $6275: $04
    ld sp, hl                                     ; $6276: $f9
    ld [$01f2], sp                                ; $6277: $08 $f2 $01
    db $ed                                        ; $627a: $ed
    ld a, [$feee]                                 ; $627b: $fa $ee $fe
    db $fd                                        ; $627e: $fd
    ld a, [$fefd]                                 ; $627f: $fa $fd $fe
    ld [bc], a                                    ; $6282: $02
    rrca                                          ; $6283: $0f
    sub b                                         ; $6284: $90
    dec de                                        ; $6285: $1b
    inc d                                         ; $6286: $14
    ld [hl], $2d                                  ; $6287: $36 $2d
    daa                                           ; $6289: $27
    dec a                                         ; $628a: $3d
    ld c, e                                       ; $628b: $4b
    ld a, h                                       ; $628c: $7c
    ld d, l                                       ; $628d: $55
    ld a, [hl]                                    ; $628e: $7e
    add b                                         ; $628f: $80
    rst $38                                       ; $6290: $ff
    ld e, d                                       ; $6291: $5a
    ld a, a                                       ; $6292: $7f
    inc a                                         ; $6293: $3c
    ccf                                           ; $6294: $3f
    ld [bc], a                                    ; $6295: $02
    ld d, a                                       ; $6296: $57
    ld [bc], a                                    ; $6297: $02
    ld d, l                                       ; $6298: $55
    ld [bc], a                                    ; $6299: $02
    ld d, [hl]                                    ; $629a: $56
    add [hl]                                      ; $629b: $86
    ld a, e                                       ; $629c: $7b
    ld a, a                                       ; $629d: $7f
    ld [hl], a                                    ; $629e: $77
    ld a, l                                       ; $629f: $7d
    ld a, $3a                                     ; $62a0: $3e $3a
    ld [bc], a                                    ; $62a2: $02
    inc l                                         ; $62a3: $2c
    ld [bc], a                                    ; $62a4: $02
    ld [$0490], sp                                ; $62a5: $08 $90 $04
    inc c                                         ; $62a8: $0c
    ld c, $0a                                     ; $62a9: $0e $0a
    rrca                                          ; $62ab: $0f
    ld bc, $060e                                  ; $62ac: $01 $0e $06
    add hl, bc                                    ; $62af: $09
    rrca                                          ; $62b0: $0f
    ld b, $0a                                     ; $62b1: $06 $0a
    ld bc, $020f                                  ; $62b3: $01 $0f $02
    ld c, $02                                     ; $62b6: $0e $02
    inc c                                         ; $62b8: $0c
    add d                                         ; $62b9: $82
    ld a, [bc]                                    ; $62ba: $0a
    ld c, $03                                     ; $62bb: $0e $03
    ld a, [bc]                                    ; $62bd: $0a
    add c                                         ; $62be: $81
    ld c, $04                                     ; $62bf: $0e $04
    ld b, $02                                     ; $62c1: $06 $02
    rlca                                          ; $62c3: $07
    inc b                                         ; $62c4: $04
    ld h, b                                       ; $62c5: $60
    add h                                         ; $62c6: $84
    cp l                                          ; $62c7: $bd
    db $fd                                        ; $62c8: $fd
    add e                                         ; $62c9: $83
    rst $38                                       ; $62ca: $ff
    ld [bc], a                                    ; $62cb: $02
    ld a, [hl]                                    ; $62cc: $7e
    jr jr_0e8_62cf                                ; $62cd: $18 $00

jr_0e8_62cf:
    ld [bc], a                                    ; $62cf: $02
    rrca                                          ; $62d0: $0f
    ld [bc], a                                    ; $62d1: $02
    ld c, $1a                                     ; $62d2: $0e $1a
    nop                                           ; $62d4: $00
    rst $38                                       ; $62d5: $ff
    rlca                                          ; $62d6: $07
    ld bc, $08f9                                  ; $62d7: $01 $f9 $08
    ld a, [c]                                     ; $62da: $f2
    ld bc, $fcf6                                  ; $62db: $01 $f6 $fc
    adc b                                         ; $62de: $88
    nop                                           ; $62df: $00
    and b                                         ; $62e0: $a0
    nop                                           ; $62e1: $00
    xor b                                         ; $62e2: $a8
    nop                                           ; $62e3: $00
    and h                                         ; $62e4: $a4
    nop                                           ; $62e5: $00
    ld bc, $0003                                  ; $62e6: $01 $03 $00
    adc c                                         ; $62e9: $89
    ld b, $00                                     ; $62ea: $06 $00
    ld c, [hl]                                    ; $62ec: $4e
    nop                                           ; $62ed: $00
    ld a, [hl]                                    ; $62ee: $7e
    nop                                           ; $62ef: $00
    ld a, h                                       ; $62f0: $7c
    nop                                           ; $62f1: $00
    ld [$000c], sp                                ; $62f2: $08 $0c $00
    rst $38                                       ; $62f5: $ff
    dec c                                         ; $62f6: $0d
    inc b                                         ; $62f7: $04
    ld sp, hl                                     ; $62f8: $f9
    ld [$01f2], sp                                ; $62f9: $08 $f2 $01
    xor $fa                                       ; $62fc: $ee $fa
    rst $28                                       ; $62fe: $ef
    cp $fe                                        ; $62ff: $fe $fe
    ld a, [$fefe]                                 ; $6301: $fa $fe $fe
    ld [bc], a                                    ; $6304: $02
    rrca                                          ; $6305: $0f
    sub b                                         ; $6306: $90
    dec de                                        ; $6307: $1b
    inc d                                         ; $6308: $14
    ld [hl], $2d                                  ; $6309: $36 $2d
    ld h, a                                       ; $630b: $67
    ld a, l                                       ; $630c: $7d
    adc e                                         ; $630d: $8b
    db $fc                                        ; $630e: $fc
    sub l                                         ; $630f: $95
    cp $80                                        ; $6310: $fe $80
    rst $38                                       ; $6312: $ff
    ld a, d                                       ; $6313: $7a
    ld a, a                                       ; $6314: $7f
    inc a                                         ; $6315: $3c
    ccf                                           ; $6316: $3f
    ld [bc], a                                    ; $6317: $02
    ld d, a                                       ; $6318: $57
    ld [bc], a                                    ; $6319: $02
    ld d, l                                       ; $631a: $55
    ld [bc], a                                    ; $631b: $02
    ld d, [hl]                                    ; $631c: $56
    add [hl]                                      ; $631d: $86
    ld a, e                                       ; $631e: $7b
    ld a, a                                       ; $631f: $7f
    ld [hl], a                                    ; $6320: $77
    ld a, l                                       ; $6321: $7d
    ld a, [hl]                                    ; $6322: $7e
    ld a, d                                       ; $6323: $7a
    ld [bc], a                                    ; $6324: $02
    inc l                                         ; $6325: $2c
    ld [bc], a                                    ; $6326: $02
    ld [$048e], sp                                ; $6327: $08 $8e $04
    inc c                                         ; $632a: $0c
    ld c, $0a                                     ; $632b: $0e $0a
    rrca                                          ; $632d: $0f
    ld bc, $060e                                  ; $632e: $01 $0e $06
    add hl, bc                                    ; $6331: $09
    rrca                                          ; $6332: $0f
    rlca                                          ; $6333: $07
    dec bc                                        ; $6334: $0b
    ld bc, $020f                                  ; $6335: $01 $0f $02
    ld c, $02                                     ; $6338: $0e $02
    inc c                                         ; $633a: $0c
    add d                                         ; $633b: $82
    ld a, [bc]                                    ; $633c: $0a
    ld c, $03                                     ; $633d: $0e $03
    ld a, [bc]                                    ; $633f: $0a
    add c                                         ; $6340: $81
    ld c, $04                                     ; $6341: $0e $04
    ld b, $02                                     ; $6343: $06 $02
    inc c                                         ; $6345: $0c
    ld [bc], a                                    ; $6346: $02
    ld [hl], b                                    ; $6347: $70
    add h                                         ; $6348: $84
    cp c                                          ; $6349: $b9
    ld sp, hl                                     ; $634a: $f9
    ld b, a                                       ; $634b: $47
    ld a, a                                       ; $634c: $7f
    ld [bc], a                                    ; $634d: $02
    inc a                                         ; $634e: $3c
    ld a, [de]                                    ; $634f: $1a
    nop                                           ; $6350: $00
    ld [bc], a                                    ; $6351: $02
    ld c, $02                                     ; $6352: $0e $02
    rrca                                          ; $6354: $0f
    ld a, [de]                                    ; $6355: $1a
    nop                                           ; $6356: $00
    rst $38                                       ; $6357: $ff
    rlca                                          ; $6358: $07
    ld bc, $08f9                                  ; $6359: $01 $f9 $08
    ld a, [c]                                     ; $635c: $f2
    ld bc, $fcf7                                  ; $635d: $01 $f7 $fc
    adc b                                         ; $6360: $88
    nop                                           ; $6361: $00
    and b                                         ; $6362: $a0
    nop                                           ; $6363: $00
    xor b                                         ; $6364: $a8
    nop                                           ; $6365: $00
    and h                                         ; $6366: $a4
    nop                                           ; $6367: $00
    ld bc, $0003                                  ; $6368: $01 $03 $00
    add a                                         ; $636b: $87
    ld b, $00                                     ; $636c: $06 $00
    ld c, [hl]                                    ; $636e: $4e
    nop                                           ; $636f: $00
    inc a                                         ; $6370: $3c
    nop                                           ; $6371: $00
    jr jr_0e8_6382                                ; $6372: $18 $0e

    nop                                           ; $6374: $00
    rst $38                                       ; $6375: $ff
    dec c                                         ; $6376: $0d
    inc b                                         ; $6377: $04
    ld sp, hl                                     ; $6378: $f9
    ld [$01f2], sp                                ; $6379: $08 $f2 $01
    db $ed                                        ; $637c: $ed
    ld a, [$feee]                                 ; $637d: $fa $ee $fe
    db $fd                                        ; $6380: $fd
    ei                                            ; $6381: $fb

jr_0e8_6382:
    db $fd                                        ; $6382: $fd
    db $fc                                        ; $6383: $fc
    ld [bc], a                                    ; $6384: $02
    rrca                                          ; $6385: $0f
    sub b                                         ; $6386: $90
    dec de                                        ; $6387: $1b
    inc d                                         ; $6388: $14
    ld [hl], $2d                                  ; $6389: $36 $2d
    daa                                           ; $638b: $27
    inc a                                         ; $638c: $3c
    ld l, e                                       ; $638d: $6b
    ld a, [hl]                                    ; $638e: $7e
    ld d, l                                       ; $638f: $55
    ld a, [hl]                                    ; $6390: $7e
    add b                                         ; $6391: $80
    rst $38                                       ; $6392: $ff
    sbc d                                         ; $6393: $9a
    rst $38                                       ; $6394: $ff
    ld a, h                                       ; $6395: $7c
    ld a, a                                       ; $6396: $7f
    ld [bc], a                                    ; $6397: $02
    ld d, a                                       ; $6398: $57
    ld [bc], a                                    ; $6399: $02
    ld d, l                                       ; $639a: $55
    ld [bc], a                                    ; $639b: $02
    ld l, [hl]                                    ; $639c: $6e
    add [hl]                                      ; $639d: $86
    halt                                          ; $639e: $76
    ld a, [hl]                                    ; $639f: $7e
    ld l, [hl]                                    ; $63a0: $6e
    ld a, d                                       ; $63a1: $7a
    inc a                                         ; $63a2: $3c
    inc [hl]                                      ; $63a3: $34
    ld [bc], a                                    ; $63a4: $02
    jr c, @+$04                                   ; $63a5: $38 $02

    ld [$0490], sp                                ; $63a7: $08 $90 $04
    inc c                                         ; $63aa: $0c
    ld c, $0a                                     ; $63ab: $0e $0a
    rrca                                          ; $63ad: $0f
    ld bc, $060e                                  ; $63ae: $01 $0e $06
    add hl, bc                                    ; $63b1: $09
    rrca                                          ; $63b2: $0f
    ld [bc], a                                    ; $63b3: $02
    ld c, $01                                     ; $63b4: $0e $01
    rrca                                          ; $63b6: $0f
    ld [bc], a                                    ; $63b7: $02
    ld c, $02                                     ; $63b8: $0e $02
    inc c                                         ; $63ba: $0c
    add d                                         ; $63bb: $82
    ld a, [bc]                                    ; $63bc: $0a
    ld c, $03                                     ; $63bd: $0e $03
    ld a, [bc]                                    ; $63bf: $0a
    rlca                                          ; $63c0: $07
    ld c, $02                                     ; $63c1: $0e $02
    ld h, b                                       ; $63c3: $60
    ld [bc], a                                    ; $63c4: $02
    pop hl                                        ; $63c5: $e1
    add h                                         ; $63c6: $84
    sbc l                                         ; $63c7: $9d
    db $fd                                        ; $63c8: $fd
    ld h, e                                       ; $63c9: $63
    ld a, a                                       ; $63ca: $7f
    ld [bc], a                                    ; $63cb: $02
    ld e, $18                                     ; $63cc: $1e $18
    nop                                           ; $63ce: $00
    inc b                                         ; $63cf: $04
    ld bc, $001a                                  ; $63d0: $01 $1a $00
    rst $38                                       ; $63d3: $ff
    rlca                                          ; $63d4: $07
    ld bc, $08f9                                  ; $63d5: $01 $f9 $08
    ld a, [c]                                     ; $63d8: $f2
    ld bc, $fcf6                                  ; $63d9: $01 $f6 $fc
    sub h                                         ; $63dc: $94
    nop                                           ; $63dd: $00
    and b                                         ; $63de: $a0
    nop                                           ; $63df: $00
    xor b                                         ; $63e0: $a8
    nop                                           ; $63e1: $00
    ld b, h                                       ; $63e2: $44
    nop                                           ; $63e3: $00
    dec b                                         ; $63e4: $05
    nop                                           ; $63e5: $00
    inc b                                         ; $63e6: $04
    nop                                           ; $63e7: $00
    inc c                                         ; $63e8: $0c
    nop                                           ; $63e9: $00
    inc e                                         ; $63ea: $1c
    nop                                           ; $63eb: $00
    inc a                                         ; $63ec: $3c
    nop                                           ; $63ed: $00
    inc a                                         ; $63ee: $3c
    nop                                           ; $63ef: $00
    inc b                                         ; $63f0: $04
    inc c                                         ; $63f1: $0c
    nop                                           ; $63f2: $00
    rst $38                                       ; $63f3: $ff
    dec c                                         ; $63f4: $0d
    inc b                                         ; $63f5: $04
    ld sp, hl                                     ; $63f6: $f9
    ld [$01f2], sp                                ; $63f7: $08 $f2 $01
    db $ed                                        ; $63fa: $ed
    ld a, [$feee]                                 ; $63fb: $fa $ee $fe
    db $fd                                        ; $63fe: $fd
    ei                                            ; $63ff: $fb
    db $fd                                        ; $6400: $fd
    rst $38                                       ; $6401: $ff
    ld [bc], a                                    ; $6402: $02
    rrca                                          ; $6403: $0f
    sub b                                         ; $6404: $90
    dec e                                         ; $6405: $1d
    ld [de], a                                    ; $6406: $12
    scf                                           ; $6407: $37
    inc l                                         ; $6408: $2c
    dec h                                         ; $6409: $25
    ld a, $4b                                     ; $640a: $3e $4b
    ld a, [hl]                                    ; $640c: $7e
    ld d, h                                       ; $640d: $54
    ld a, a                                       ; $640e: $7f
    add b                                         ; $640f: $80
    rst $38                                       ; $6410: $ff
    ld e, d                                       ; $6411: $5a
    ld a, a                                       ; $6412: $7f
    inc a                                         ; $6413: $3c
    ccf                                           ; $6414: $3f
    ld [bc], a                                    ; $6415: $02
    ld d, a                                       ; $6416: $57
    ld [bc], a                                    ; $6417: $02
    ld l, l                                       ; $6418: $6d
    ld [bc], a                                    ; $6419: $02
    ld c, h                                       ; $641a: $4c
    add h                                         ; $641b: $84
    ld h, h                                       ; $641c: $64
    ld a, h                                       ; $641d: $7c
    ld e, h                                       ; $641e: $5c
    ld h, h                                       ; $641f: $64
    ld [bc], a                                    ; $6420: $02
    ld a, b                                       ; $6421: $78
    ld [bc], a                                    ; $6422: $02
    jr c, @+$04                                   ; $6423: $38 $02

    ld [$0490], sp                                ; $6425: $08 $90 $04
    inc c                                         ; $6428: $0c
    ld c, $06                                     ; $6429: $0e $06
    rrca                                          ; $642b: $0f
    ld bc, $020e                                  ; $642c: $01 $0e $02
    add hl, bc                                    ; $642f: $09
    rrca                                          ; $6430: $0f
    ld [bc], a                                    ; $6431: $02
    ld c, $01                                     ; $6432: $0e $01
    rrca                                          ; $6434: $0f
    ld [bc], a                                    ; $6435: $02
    ld c, $02                                     ; $6436: $0e $02
    inc c                                         ; $6438: $0c
    add d                                         ; $6439: $82
    ld a, [bc]                                    ; $643a: $0a
    ld c, $03                                     ; $643b: $0e $03
    ld a, [bc]                                    ; $643d: $0a
    dec b                                         ; $643e: $05
    ld c, $02                                     ; $643f: $0e $02
    ld e, $02                                     ; $6441: $1e $02
    ld h, b                                       ; $6443: $60
    ld [bc], a                                    ; $6444: $02
    ld [hl], e                                    ; $6445: $73
    add h                                         ; $6446: $84
    adc a                                         ; $6447: $8f
    rst $38                                       ; $6448: $ff
    di                                            ; $6449: $f3
    rst $38                                       ; $644a: $ff
    ld [bc], a                                    ; $644b: $02
    ld c, $18                                     ; $644c: $0e $18
    nop                                           ; $644e: $00
    add h                                         ; $644f: $84
    dec bc                                        ; $6450: $0b
    rrca                                          ; $6451: $0f
    rlca                                          ; $6452: $07
    rrca                                          ; $6453: $0f
    ld [bc], a                                    ; $6454: $02
    inc c                                         ; $6455: $0c
    jr jr_0e8_6458                                ; $6456: $18 $00

jr_0e8_6458:
    rst $38                                       ; $6458: $ff
    rlca                                          ; $6459: $07
    ld bc, $08f9                                  ; $645a: $01 $f9 $08
    ld a, [c]                                     ; $645d: $f2
    ld bc, $fcf6                                  ; $645e: $01 $f6 $fc
    sub d                                         ; $6461: $92
    nop                                           ; $6462: $00
    and b                                         ; $6463: $a0
    nop                                           ; $6464: $00
    ld c, b                                       ; $6465: $48
    nop                                           ; $6466: $00
    call z, $0d00                                 ; $6467: $cc $00 $0d
    nop                                           ; $646a: $00
    inc c                                         ; $646b: $0c
    nop                                           ; $646c: $00
    inc e                                         ; $646d: $1c
    nop                                           ; $646e: $00
    inc e                                         ; $646f: $1c
    nop                                           ; $6470: $00
    jr c, jr_0e8_6473                             ; $6471: $38 $00

jr_0e8_6473:
    jr jr_0e8_6483                                ; $6473: $18 $0e

    nop                                           ; $6475: $00
    rst $38                                       ; $6476: $ff
    dec c                                         ; $6477: $0d
    inc b                                         ; $6478: $04
    ld sp, hl                                     ; $6479: $f9
    ld [$01f2], sp                                ; $647a: $08 $f2 $01
    xor $fa                                       ; $647d: $ee $fa
    rst $28                                       ; $647f: $ef
    cp $fe                                        ; $6480: $fe $fe
    ei                                            ; $6482: $fb

jr_0e8_6483:
    cp $fe                                        ; $6483: $fe $fe
    ld [bc], a                                    ; $6485: $02
    rrca                                          ; $6486: $0f
    sub b                                         ; $6487: $90
    dec e                                         ; $6488: $1d
    ld [de], a                                    ; $6489: $12
    scf                                           ; $648a: $37
    inc l                                         ; $648b: $2c
    ld h, l                                       ; $648c: $65
    ld a, [hl]                                    ; $648d: $7e
    adc e                                         ; $648e: $8b
    cp $94                                        ; $648f: $fe $94
    rst $38                                       ; $6491: $ff
    add b                                         ; $6492: $80
    rst $38                                       ; $6493: $ff
    ld a, d                                       ; $6494: $7a
    ld a, a                                       ; $6495: $7f
    inc a                                         ; $6496: $3c
    ccf                                           ; $6497: $3f
    ld [bc], a                                    ; $6498: $02
    ld d, a                                       ; $6499: $57
    ld [bc], a                                    ; $649a: $02
    ld l, l                                       ; $649b: $6d
    ld [bc], a                                    ; $649c: $02
    ld c, h                                       ; $649d: $4c
    add h                                         ; $649e: $84
    ld h, h                                       ; $649f: $64
    ld a, h                                       ; $64a0: $7c
    ld e, h                                       ; $64a1: $5c
    ld h, h                                       ; $64a2: $64
    ld [bc], a                                    ; $64a3: $02
    ld a, b                                       ; $64a4: $78
    ld [bc], a                                    ; $64a5: $02
    jr c, @+$04                                   ; $64a6: $38 $02

    ld [$048e], sp                                ; $64a8: $08 $8e $04
    inc c                                         ; $64ab: $0c
    ld c, $06                                     ; $64ac: $0e $06
    rrca                                          ; $64ae: $0f
    ld bc, $020e                                  ; $64af: $01 $0e $02
    add hl, bc                                    ; $64b2: $09
    rrca                                          ; $64b3: $0f
    inc bc                                        ; $64b4: $03
    rrca                                          ; $64b5: $0f
    ld bc, $020f                                  ; $64b6: $01 $0f $02
    ld c, $02                                     ; $64b9: $0e $02
    inc c                                         ; $64bb: $0c
    add d                                         ; $64bc: $82
    ld a, [bc]                                    ; $64bd: $0a
    ld c, $03                                     ; $64be: $0e $03
    ld a, [bc]                                    ; $64c0: $0a
    inc bc                                        ; $64c1: $03
    ld c, $02                                     ; $64c2: $0e $02
    inc c                                         ; $64c4: $0c
    ld [bc], a                                    ; $64c5: $02
    inc e                                         ; $64c6: $1c
    ld [bc], a                                    ; $64c7: $02
    ret nz                                        ; $64c8: $c0

    add h                                         ; $64c9: $84
    cp e                                          ; $64ca: $bb
    ei                                            ; $64cb: $fb
    add $ff                                       ; $64cc: $c6 $ff
    ld [bc], a                                    ; $64ce: $02
    ccf                                           ; $64cf: $3f
    ld a, [de]                                    ; $64d0: $1a
    nop                                           ; $64d1: $00
    ld [bc], a                                    ; $64d2: $02
    inc b                                         ; $64d3: $04
    add c                                         ; $64d4: $81
    inc bc                                        ; $64d5: $03
    inc bc                                        ; $64d6: $03
    rlca                                          ; $64d7: $07
    jr jr_0e8_64da                                ; $64d8: $18 $00

jr_0e8_64da:
    rst $38                                       ; $64da: $ff
    rlca                                          ; $64db: $07
    ld bc, $08f9                                  ; $64dc: $01 $f9 $08
    ld a, [c]                                     ; $64df: $f2
    ld bc, $fcf7                                  ; $64e0: $01 $f7 $fc
    sub d                                         ; $64e3: $92
    nop                                           ; $64e4: $00
    and b                                         ; $64e5: $a0
    nop                                           ; $64e6: $00
    ld c, b                                       ; $64e7: $48
    nop                                           ; $64e8: $00
    call z, $0d00                                 ; $64e9: $cc $00 $0d
    nop                                           ; $64ec: $00
    inc c                                         ; $64ed: $0c
    nop                                           ; $64ee: $00
    inc e                                         ; $64ef: $1c
    nop                                           ; $64f0: $00
    inc e                                         ; $64f1: $1c
    nop                                           ; $64f2: $00
    ld a, b                                       ; $64f3: $78
    nop                                           ; $64f4: $00
    ld [$000e], sp                                ; $64f5: $08 $0e $00
    rst $38                                       ; $64f8: $ff
    dec c                                         ; $64f9: $0d
    inc b                                         ; $64fa: $04
    ld sp, hl                                     ; $64fb: $f9
    ld [$01f2], sp                                ; $64fc: $08 $f2 $01
    db $ed                                        ; $64ff: $ed
    ld a, [$feee]                                 ; $6500: $fa $ee $fe
    db $fd                                        ; $6503: $fd
    ld a, [$fdfd]                                 ; $6504: $fa $fd $fd
    ld [bc], a                                    ; $6507: $02
    rrca                                          ; $6508: $0f
    sub b                                         ; $6509: $90
    dec de                                        ; $650a: $1b
    inc d                                         ; $650b: $14
    ld [hl], $2d                                  ; $650c: $36 $2d
    daa                                           ; $650e: $27
    inc a                                         ; $650f: $3c
    ld l, e                                       ; $6510: $6b
    ld a, [hl]                                    ; $6511: $7e
    ld d, l                                       ; $6512: $55
    ld a, [hl]                                    ; $6513: $7e
    add b                                         ; $6514: $80
    rst $38                                       ; $6515: $ff
    sbc d                                         ; $6516: $9a
    rst $38                                       ; $6517: $ff
    ld a, h                                       ; $6518: $7c
    ld a, a                                       ; $6519: $7f
    ld [bc], a                                    ; $651a: $02
    ld d, a                                       ; $651b: $57
    ld [bc], a                                    ; $651c: $02
    ld d, l                                       ; $651d: $55
    ld [bc], a                                    ; $651e: $02
    ld l, [hl]                                    ; $651f: $6e
    add [hl]                                      ; $6520: $86
    halt                                          ; $6521: $76
    ld a, [hl]                                    ; $6522: $7e
    ld l, [hl]                                    ; $6523: $6e
    ld a, d                                       ; $6524: $7a
    inc a                                         ; $6525: $3c
    inc [hl]                                      ; $6526: $34
    ld [bc], a                                    ; $6527: $02
    jr c, @+$04                                   ; $6528: $38 $02

    ld [$0490], sp                                ; $652a: $08 $90 $04
    inc c                                         ; $652d: $0c
    ld c, $0a                                     ; $652e: $0e $0a
    rrca                                          ; $6530: $0f
    ld bc, $060e                                  ; $6531: $01 $0e $06
    add hl, bc                                    ; $6534: $09
    rrca                                          ; $6535: $0f
    ld [bc], a                                    ; $6536: $02
    ld c, $01                                     ; $6537: $0e $01
    rrca                                          ; $6539: $0f
    ld [bc], a                                    ; $653a: $02
    ld c, $02                                     ; $653b: $0e $02
    inc c                                         ; $653d: $0c
    add d                                         ; $653e: $82
    ld a, [bc]                                    ; $653f: $0a
    ld c, $03                                     ; $6540: $0e $03
    ld a, [bc]                                    ; $6542: $0a
    add c                                         ; $6543: $81
    ld c, $06                                     ; $6544: $0e $06
    ld b, $02                                     ; $6546: $06 $02
    jr nc, jr_0e8_654c                            ; $6548: $30 $02

    ld h, b                                       ; $654a: $60
    add h                                         ; $654b: $84

jr_0e8_654c:
    cp [hl]                                       ; $654c: $be
    cp $41                                        ; $654d: $fe $41
    ld a, a                                       ; $654f: $7f
    ld [bc], a                                    ; $6550: $02
    ccf                                           ; $6551: $3f
    jr jr_0e8_6554                                ; $6552: $18 $00

jr_0e8_6554:
    inc b                                         ; $6554: $04
    ld b, $04                                     ; $6555: $06 $04
    rlca                                          ; $6557: $07
    ld d, $00                                     ; $6558: $16 $00
    rst $38                                       ; $655a: $ff
    rlca                                          ; $655b: $07
    ld bc, $08f9                                  ; $655c: $01 $f9 $08
    ld a, [c]                                     ; $655f: $f2
    ld bc, $fcf6                                  ; $6560: $01 $f6 $fc
    sub h                                         ; $6563: $94
    nop                                           ; $6564: $00
    and b                                         ; $6565: $a0
    nop                                           ; $6566: $00
    xor b                                         ; $6567: $a8
    nop                                           ; $6568: $00
    ld b, h                                       ; $6569: $44
    nop                                           ; $656a: $00
    dec b                                         ; $656b: $05
    nop                                           ; $656c: $00
    inc b                                         ; $656d: $04
    nop                                           ; $656e: $00
    ld c, $00                                     ; $656f: $0e $00
    ld e, $00                                     ; $6571: $1e $00
    ld a, $00                                     ; $6573: $3e $00
    ld a, h                                       ; $6575: $7c
    nop                                           ; $6576: $00
    inc b                                         ; $6577: $04
    inc c                                         ; $6578: $0c
    nop                                           ; $6579: $00
    rst $38                                       ; $657a: $ff
    dec c                                         ; $657b: $0d

    db $04, $fb, $05, $f6, $fd

    db $ed                                        ; $6581: $ed
    ld sp, hl                                     ; $6582: $f9
    db $ed                                        ; $6583: $ed
    nop                                           ; $6584: $00
    db $fd                                        ; $6585: $fd
    ei                                            ; $6586: $fb
    db $fd                                        ; $6587: $fd
    cp $02                                        ; $6588: $fe $02
    rlca                                          ; $658a: $07
    adc b                                         ; $658b: $88
    rra                                           ; $658c: $1f
    inc e                                         ; $658d: $1c
    ccf                                           ; $658e: $3f
    jr z, jr_0e8_65b0                             ; $658f: $28 $1f

    jr @+$11                                      ; $6591: $18 $0f

    ld c, $02                                     ; $6593: $0e $02
    rlca                                          ; $6595: $07
    adc [hl]                                      ; $6596: $8e
    ld e, $1f                                     ; $6597: $1e $1f
    jr c, jr_0e8_65da                             ; $6599: $38 $3f

    ld d, b                                       ; $659b: $50
    ld a, a                                       ; $659c: $7f
    ld [hl], b                                    ; $659d: $70
    ld a, a                                       ; $659e: $7f
    ld a, b                                       ; $659f: $78
    ld a, a                                       ; $65a0: $7f
    xor $af                                       ; $65a1: $ee $af
    rst $28                                       ; $65a3: $ef
    xor a                                         ; $65a4: $af
    ld [bc], a                                    ; $65a5: $02
    rst $38                                       ; $65a6: $ff
    add h                                         ; $65a7: $84
    ld hl, sp-$41                                 ; $65a8: $f8 $bf
    ld d, b                                       ; $65aa: $50
    ld e, a                                       ; $65ab: $5f
    ld [bc], a                                    ; $65ac: $02
    ld h, b                                       ; $65ad: $60
    add [hl]                                      ; $65ae: $86
    ld a, b                                       ; $65af: $78

jr_0e8_65b0:
    jr c, @+$7e                                   ; $65b0: $38 $7c

    inc d                                         ; $65b2: $14
    ld a, b                                       ; $65b3: $78
    jr jr_0e8_65b8                                ; $65b4: $18 $02

    ld [hl], b                                    ; $65b6: $70
    add d                                         ; $65b7: $82

jr_0e8_65b8:
    ld h, b                                       ; $65b8: $60
    jr nz, jr_0e8_65bd                            ; $65b9: $20 $02

    ld a, b                                       ; $65bb: $78
    adc h                                         ; $65bc: $8c

jr_0e8_65bd:
    inc c                                         ; $65bd: $0c
    ld a, h                                       ; $65be: $7c
    ld a, [bc]                                    ; $65bf: $0a
    ld a, [hl]                                    ; $65c0: $7e
    ld a, [bc]                                    ; $65c1: $0a
    ld a, [hl]                                    ; $65c2: $7e
    ld e, $7e                                     ; $65c3: $1e $7e
    scf                                           ; $65c5: $37
    ld [hl], l                                    ; $65c6: $75
    ld [hl], a                                    ; $65c7: $77
    ld [hl], l                                    ; $65c8: $75
    ld [bc], a                                    ; $65c9: $02
    ld a, a                                       ; $65ca: $7f
    adc b                                         ; $65cb: $88
    rra                                           ; $65cc: $1f
    ld a, l                                       ; $65cd: $7d
    ld a, [bc]                                    ; $65ce: $0a
    ld a, d                                       ; $65cf: $7a
    ld l, $3f                                     ; $65d0: $2e $3f
    cp e                                          ; $65d2: $bb
    xor d                                         ; $65d3: $aa
    ld [bc], a                                    ; $65d4: $02
    pop af                                        ; $65d5: $f1
    add d                                         ; $65d6: $82
    ld l, d                                       ; $65d7: $6a
    ld a, e                                       ; $65d8: $7b
    ld [bc], a                                    ; $65d9: $02

jr_0e8_65da:
    ld sp, $0016                                  ; $65da: $31 $16 $00
    ld [bc], a                                    ; $65dd: $02
    inc b                                         ; $65de: $04
    ld [bc], a                                    ; $65df: $02
    dec b                                         ; $65e0: $05
    ld [bc], a                                    ; $65e1: $02
    rlca                                          ; $65e2: $07
    add d                                         ; $65e3: $82
    ld [bc], a                                    ; $65e4: $02
    ld b, $02                                     ; $65e5: $06 $02
    inc b                                         ; $65e7: $04
    ld d, $00                                     ; $65e8: $16 $00
    rst $38                                       ; $65ea: $ff

    db $0d, $04, $fb, $05, $f6, $fd, $ed, $f9, $ed, $00, $fd, $f9, $fd, $fe, $02, $07
    db $88, $1f, $1c, $3f, $28, $1f, $18, $0f, $0e, $02, $07, $8c, $3e, $3f, $50, $7f
    db $50, $7f, $f0, $bf, $f8, $bf, $ee, $af, $02, $ef, $02, $df, $84, $f8, $bf, $f8
    db $bf, $02, $60, $86, $78, $38, $7c, $14, $78, $18, $02, $70, $82, $60, $20, $02
    db $78, $92, $1c, $7c, $0e, $7e, $0a, $7e, $1b, $7f, $3f, $7d, $7f, $7d, $7e, $7a
    db $1c, $7c, $08, $78, $02, $df, $02, $1f, $82, $1a, $1e, $02, $0c, $18, $00, $83
    db $02, $1e, $0c, $02, $1c, $81, $14, $02, $0f, $82, $13, $1f, $02, $1e, $14, $00
    db $ff, $0d, $04, $fb, $05, $f6, $fd, $ee, $f9, $ee, $00, $fe, $fc, $fe, $fe, $02
    db $07, $88, $1f, $1c, $3f, $28, $1f, $18, $0f, $0e, $02, $07, $8c, $3c, $3f, $58
    db $7f, $50, $7f, $f0, $bf, $f8, $bf, $ec, $af, $02, $cf, $86, $fe, $ff, $f8, $bf
    db $cb, $cf, $02, $60, $86, $78, $38, $7c, $14, $78, $18, $02, $70, $9a, $60, $20
    db $38, $78, $0c, $7c, $0a, $7e, $0a, $7e, $1e, $7e, $37, $75, $77, $75, $3f, $7f
    db $1e, $7a, $0c, $7c, $fb, $ff, $d7, $f5, $02, $f3, $82, $04, $07, $02, $03, $1a
    db $00, $02, $02, $04, $03, $16, $00, $ff, $0d, $04, $fb, $05, $f6, $02, $ed, $f9
    db $ed, $00, $fd, $fc, $fd, $ff, $02, $07, $88, $1f, $1c, $3f, $28, $1f, $18, $0f
    db $0e, $02, $07, $8e, $1e, $1f, $38, $3f, $50, $7f, $50, $7f, $58, $7f, $ee, $af
    db $ef, $af, $02, $ff, $84, $78, $5f, $30, $3f, $02, $60, $86, $78, $38, $7c, $14
    db $78, $18, $02, $70, $82, $60, $20, $02, $78, $8c, $0e, $7e, $0a, $7e, $0a, $7e
    db $1e, $7e, $37, $75, $7f, $7d, $02, $7f, $88, $1f, $7d, $0a, $7a, $5d, $7f, $f3
    db $d2, $02, $e1, $82, $d2, $f3, $02, $61, $16, $00, $02, $04, $02, $05, $02, $07
    db $82, $02, $06, $02, $04, $16, $00, $ff, $0d, $04, $fb, $05, $f6, $02, $ed, $f9
    db $ed, $00, $fd, $fb, $fd, $00, $02, $07, $88, $1f, $1c, $3f, $28, $1f, $18, $0f
    db $0e, $02, $07, $94, $1e, $1f, $3c, $3f, $70, $7f, $50, $7f, $d8, $ff, $fe, $bf
    db $ff, $bf, $7f, $5f, $38, $3f, $10, $1f, $02, $60, $86, $78, $38, $7c, $14, $78
    db $18, $02, $70, $82, $60, $20, $02, $7c, $8a, $02, $7e, $0a, $7e, $0f, $7d, $1f
    db $7d, $37, $75, $02, $77, $02, $7b, $8a, $1f, $7d, $1f, $7d, $47, $7f, $37, $3f
    db $3a, $2b, $02, $f1, $82, $c8, $f8, $02, $78, $14, $00, $02, $1b, $04, $18, $02
    db $10, $18, $00, $ff, $0d, $04, $fb, $05, $f6, $fd, $ee, $f9, $ee, $00, $fe, $fb
    db $fe, $fd, $02, $07, $88, $1f, $1c, $3f, $28, $1f, $18, $0f, $0e, $02, $07, $94
    db $1c, $1f, $38, $3f, $50, $7f, $50, $7f, $78, $7f, $ec, $af, $ef, $af, $fc, $ff
    db $78, $5f, $31, $3f, $02, $60, $86, $78, $38, $7c, $14, $78, $18, $02, $70, $8e
    db $60, $20, $3c, $7c, $0a, $7e, $0a, $7e, $0f, $7d, $1f, $7d, $37, $75, $02, $73
    db $02, $7f, $88, $1f, $7d, $53, $73, $37, $3f, $3a, $2b, $02, $73, $82, $c8, $f8
    db $02, $f0, $16, $00, $06, $03, $1a, $00, $ff, $0d, $04, $fb, $05, $f6, $fd, $ed
    db $f9, $ed, $00, $fd, $fa, $fd, $fd, $02, $07, $88, $1f, $1c, $3f, $28, $1f, $18
    db $0f, $0e, $02, $07, $8e, $1e, $1f, $78, $7f, $50, $7f, $50, $7f, $78, $7f, $ee
    db $af, $ff, $bf, $02, $ff, $84, $f8, $bf, $50, $5f, $02, $60, $86, $78, $38, $7c
    db $14, $78, $18, $02, $70, $82, $60, $20, $02, $78, $8c, $0c, $7c, $0a, $7e, $0a
    db $7e, $1a, $7e, $37, $75, $77, $75, $02, $7f, $88, $1e, $7a, $0c, $7c, $37, $3f
    db $b9, $a9, $02, $f0, $82, $69, $79, $02, $30, $16, $00, $84, $02, $06, $07, $03
    db $02, $07, $82, $01, $07, $02, $06, $16, $00, $ff, $0d, $04, $fb, $05, $f6, $fd
    db $ed, $f9, $ed, $00, $fd, $fa, $fd, $ff, $02, $07, $8a, $1f, $19, $3f, $2e, $1f
    db $14, $0f, $09, $0f, $0c, $02, $3f, $8a, $7b, $7e, $51, $7f, $70, $7f, $f1, $bf
    db $f9, $bf, $02, $ef, $86, $f8, $bf, $f1, $9f, $f3, $bf, $02, $60, $8a, $78, $18
    db $7c, $74, $78, $68, $70, $50, $70, $30, $02, $7c, $8a, $4a, $7e, $0a, $7e, $0e
    db $7e, $0f, $7d, $1f, $7d, $02, $77, $88, $1f, $7d, $4f, $79, $0f, $7d, $9f, $97
    db $02, $08, $84, $55, $5d, $ed, $fd, $02, $78, $16, $00, $82, $19, $09, $02, $10
    db $84, $0a, $1a, $17, $1f, $02, $1e, $16, $00, $ff

    dec c                                         ; $68e5: $0d
    inc b                                         ; $68e6: $04
    ei                                            ; $68e7: $fb
    dec b                                         ; $68e8: $05
    or $fd                                        ; $68e9: $f6 $fd
    db $ed                                        ; $68eb: $ed
    ld sp, hl                                     ; $68ec: $f9
    db $ed                                        ; $68ed: $ed
    nop                                           ; $68ee: $00
    db $fd                                        ; $68ef: $fd
    ld a, [$fdfd]                                 ; $68f0: $fa $fd $fd
    ld [bc], a                                    ; $68f3: $02
    rlca                                          ; $68f4: $07
    adc d                                         ; $68f5: $8a
    rra                                           ; $68f6: $1f
    add hl, de                                    ; $68f7: $19
    ccf                                           ; $68f8: $3f
    ld l, $1f                                     ; $68f9: $2e $1f
    inc d                                         ; $68fb: $14
    rrca                                          ; $68fc: $0f
    add hl, bc                                    ; $68fd: $09
    rrca                                          ; $68fe: $0f
    inc c                                         ; $68ff: $0c
    ld [bc], a                                    ; $6900: $02
    rra                                           ; $6901: $1f
    sub d                                         ; $6902: $92
    dec sp                                        ; $6903: $3b
    ld a, $51                                     ; $6904: $3e $51
    ld a, a                                       ; $6906: $7f
    ld d, b                                       ; $6907: $50
    ld a, a                                       ; $6908: $7f
    ld [hl], b                                    ; $6909: $70
    ld a, a                                       ; $690a: $7f
    ld sp, hl                                     ; $690b: $f9
    cp a                                          ; $690c: $bf
    rst $28                                       ; $690d: $ef
    xor a                                         ; $690e: $af
    ld hl, sp-$01                                 ; $690f: $f8 $ff
    ei                                            ; $6911: $fb
    sbc a                                         ; $6912: $9f
    ld a, c                                       ; $6913: $79
    ld c, a                                       ; $6914: $4f
    ld [bc], a                                    ; $6915: $02
    ld h, b                                       ; $6916: $60
    adc d                                         ; $6917: $8a
    ld a, b                                       ; $6918: $78
    jr jr_0e8_6997                                ; $6919: $18 $7c

    ld [hl], h                                    ; $691b: $74
    ld a, b                                       ; $691c: $78
    ld l, b                                       ; $691d: $68
    ld [hl], b                                    ; $691e: $70
    ld d, b                                       ; $691f: $50
    ld [hl], b                                    ; $6920: $70
    jr nc, jr_0e8_6925                            ; $6921: $30 $02

    ld a, h                                       ; $6923: $7c
    adc c                                         ; $6924: $89

jr_0e8_6925:
    ld c, d                                       ; $6925: $4a
    ld a, [hl]                                    ; $6926: $7e
    ld a, [bc]                                    ; $6927: $0a
    ld a, [hl]                                    ; $6928: $7e
    rrca                                          ; $6929: $0f
    ld a, l                                       ; $692a: $7d
    rra                                           ; $692b: $1f
    ld a, l                                       ; $692c: $7d
    rla                                           ; $692d: $17
    inc bc                                        ; $692e: $03
    ld [hl], a                                    ; $692f: $77
    adc b                                         ; $6930: $88
    rra                                           ; $6931: $1f
    ld a, l                                       ; $6932: $7d
    ld e, e                                       ; $6933: $5b
    ld a, e                                       ; $6934: $7b
    ld [$ff78], sp                                ; $6935: $08 $78 $ff
    cp a                                          ; $6938: $bf
    ld [bc], a                                    ; $6939: $02
    ld e, l                                       ; $693a: $5d
    add d                                         ; $693b: $82
    halt                                          ; $693c: $76
    ld a, [hl]                                    ; $693d: $7e
    ld [bc], a                                    ; $693e: $02
    ld a, l                                       ; $693f: $7d
    inc b                                         ; $6940: $04
    ld bc, $0014                                  ; $6941: $01 $14 $00
    add h                                         ; $6944: $84
    ld bc, $0607                                  ; $6945: $01 $07 $06
    ld [bc], a                                    ; $6948: $02
    ld [bc], a                                    ; $6949: $02
    inc b                                         ; $694a: $04
    add c                                         ; $694b: $81
    inc bc                                        ; $694c: $03
    inc bc                                        ; $694d: $03
    rlca                                          ; $694e: $07
    ld [bc], a                                    ; $694f: $02
    ld b, $14                                     ; $6950: $06 $14
    nop                                           ; $6952: $00
    rst $38                                       ; $6953: $ff
    dec c                                         ; $6954: $0d
    inc b                                         ; $6955: $04
    ei                                            ; $6956: $fb
    dec b                                         ; $6957: $05
    or $fd                                        ; $6958: $f6 $fd
    xor $f9                                       ; $695a: $ee $f9
    xor $00                                       ; $695c: $ee $00
    cp $fa                                        ; $695e: $fe $fa
    cp $fd                                        ; $6960: $fe $fd
    ld [bc], a                                    ; $6962: $02
    rlca                                          ; $6963: $07
    adc d                                         ; $6964: $8a
    rra                                           ; $6965: $1f
    add hl, de                                    ; $6966: $19
    ccf                                           ; $6967: $3f
    ld l, $1f                                     ; $6968: $2e $1f
    inc d                                         ; $696a: $14
    rrca                                          ; $696b: $0f
    add hl, bc                                    ; $696c: $09
    rrca                                          ; $696d: $0f
    inc c                                         ; $696e: $0c
    ld [bc], a                                    ; $696f: $02
    rra                                           ; $6970: $1f
    adc d                                         ; $6971: $8a
    dec sp                                        ; $6972: $3b
    ld a, $51                                     ; $6973: $3e $51
    ld a, a                                       ; $6975: $7f
    ld [hl], b                                    ; $6976: $70
    ld a, a                                       ; $6977: $7f
    pop af                                        ; $6978: $f1
    rst $38                                       ; $6979: $ff
    ld sp, hl                                     ; $697a: $f9
    cp a                                          ; $697b: $bf
    ld [bc], a                                    ; $697c: $02
    rst $38                                       ; $697d: $ff
    add [hl]                                      ; $697e: $86
    ld hl, sp-$41                                 ; $697f: $f8 $bf
    ei                                            ; $6981: $fb
    sbc a                                         ; $6982: $9f
    rst $38                                       ; $6983: $ff
    sbc a                                         ; $6984: $9f
    ld [bc], a                                    ; $6985: $02
    ld h, b                                       ; $6986: $60
    adc d                                         ; $6987: $8a
    ld a, b                                       ; $6988: $78
    jr jr_0e8_6a07                                ; $6989: $18 $7c

    ld [hl], h                                    ; $698b: $74
    ld a, b                                       ; $698c: $78
    ld l, b                                       ; $698d: $68
    ld [hl], b                                    ; $698e: $70
    ld d, b                                       ; $698f: $50
    ld [hl], b                                    ; $6990: $70
    jr nc, jr_0e8_6995                            ; $6991: $30 $02

    ld a, h                                       ; $6993: $7c
    adc d                                         ; $6994: $8a

jr_0e8_6995:
    ld c, d                                       ; $6995: $4a
    ld a, [hl]                                    ; $6996: $7e

jr_0e8_6997:
    ld a, [bc]                                    ; $6997: $0a
    ld a, [hl]                                    ; $6998: $7e
    ld c, $7e                                     ; $6999: $0e $7e
    rrca                                          ; $699b: $0f
    ld a, l                                       ; $699c: $7d
    rra                                           ; $699d: $1f
    ld a, l                                       ; $699e: $7d
    ld [bc], a                                    ; $699f: $02
    ld [hl], a                                    ; $69a0: $77
    add [hl]                                      ; $69a1: $86
    rra                                           ; $69a2: $1f
    ld a, l                                       ; $69a3: $7d
    rrca                                          ; $69a4: $0f
    ld a, c                                       ; $69a5: $79
    ld c, $7e                                     ; $69a6: $0e $7e
    ld [bc], a                                    ; $69a8: $02
    rst $18                                       ; $69a9: $df
    add d                                         ; $69aa: $82
    ld a, d                                       ; $69ab: $7a
    ld a, [hl]                                    ; $69ac: $7e
    ld [bc], a                                    ; $69ad: $02
    dec a                                         ; $69ae: $3d
    add d                                         ; $69af: $82
    ld [bc], a                                    ; $69b0: $02
    inc bc                                        ; $69b1: $03
    ld [bc], a                                    ; $69b2: $02
    ld bc, $0016                                  ; $69b3: $01 $16 $00
    add d                                         ; $69b6: $82
    ld b, $02                                     ; $69b7: $06 $02
    ld [bc], a                                    ; $69b9: $02
    inc b                                         ; $69ba: $04
    add e                                         ; $69bb: $83
    ld [bc], a                                    ; $69bc: $02
    ld b, $03                                     ; $69bd: $06 $03
    inc bc                                        ; $69bf: $03
    rlca                                          ; $69c0: $07
    ld d, $00                                     ; $69c1: $16 $00
    rst $38                                       ; $69c3: $ff
    dec c                                         ; $69c4: $0d
    inc b                                         ; $69c5: $04
    ei                                            ; $69c6: $fb
    dec b                                         ; $69c7: $05
    or $fd                                        ; $69c8: $f6 $fd
    db $ed                                        ; $69ca: $ed
    ld sp, hl                                     ; $69cb: $f9
    db $ed                                        ; $69cc: $ed
    nop                                           ; $69cd: $00
    db $fd                                        ; $69ce: $fd
    ld a, [$00fd]                                 ; $69cf: $fa $fd $00
    ld [bc], a                                    ; $69d2: $02
    rlca                                          ; $69d3: $07
    adc d                                         ; $69d4: $8a
    rra                                           ; $69d5: $1f
    add hl, de                                    ; $69d6: $19
    ccf                                           ; $69d7: $3f
    ld l, $1f                                     ; $69d8: $2e $1f
    inc d                                         ; $69da: $14
    rrca                                          ; $69db: $0f
    add hl, bc                                    ; $69dc: $09
    rrca                                          ; $69dd: $0f
    inc c                                         ; $69de: $0c
    ld [bc], a                                    ; $69df: $02
    ccf                                           ; $69e0: $3f
    adc d                                         ; $69e1: $8a
    ld [hl], a                                    ; $69e2: $77
    ld a, [hl]                                    ; $69e3: $7e
    ld d, c                                       ; $69e4: $51
    ld a, a                                       ; $69e5: $7f
    ld [hl], b                                    ; $69e6: $70
    ld a, a                                       ; $69e7: $7f
    pop af                                        ; $69e8: $f1
    cp a                                          ; $69e9: $bf
    ld sp, hl                                     ; $69ea: $f9
    cp a                                          ; $69eb: $bf
    ld [bc], a                                    ; $69ec: $02
    rst $28                                       ; $69ed: $ef
    add [hl]                                      ; $69ee: $86
    ld hl, sp-$41                                 ; $69ef: $f8 $bf
    pop af                                        ; $69f1: $f1
    sbc a                                         ; $69f2: $9f
    ld a, l                                       ; $69f3: $7d
    ld [hl], a                                    ; $69f4: $77
    ld [bc], a                                    ; $69f5: $02
    ld h, b                                       ; $69f6: $60
    adc d                                         ; $69f7: $8a
    ld a, b                                       ; $69f8: $78
    jr jr_0e8_6a77                                ; $69f9: $18 $7c

    ld [hl], h                                    ; $69fb: $74
    ld a, b                                       ; $69fc: $78
    ld l, b                                       ; $69fd: $68
    ld [hl], b                                    ; $69fe: $70
    ld d, b                                       ; $69ff: $50
    ld [hl], b                                    ; $6a00: $70
    jr nc, jr_0e8_6a05                            ; $6a01: $30 $02

    ld a, b                                       ; $6a03: $78
    sbc d                                         ; $6a04: $9a

jr_0e8_6a05:
    ld h, [hl]                                    ; $6a05: $66
    ld a, [hl]                                    ; $6a06: $7e

jr_0e8_6a07:
    ld a, [bc]                                    ; $6a07: $0a
    ld a, [hl]                                    ; $6a08: $7e
    ld a, [bc]                                    ; $6a09: $0a
    ld a, [hl]                                    ; $6a0a: $7e
    dec bc                                        ; $6a0b: $0b
    ld a, a                                       ; $6a0c: $7f
    rra                                           ; $6a0d: $1f
    ld a, l                                       ; $6a0e: $7d
    ld [hl], a                                    ; $6a0f: $77
    ld [hl], l                                    ; $6a10: $75
    rra                                           ; $6a11: $1f
    ld a, a                                       ; $6a12: $7f
    ld c, a                                       ; $6a13: $4f
    ld a, l                                       ; $6a14: $7d
    rra                                           ; $6a15: $1f
    ld a, c                                       ; $6a16: $79
    rra                                           ; $6a17: $1f
    rla                                           ; $6a18: $17
    jr z, jr_0e8_6a53                             ; $6a19: $28 $38

    ld e, c                                       ; $6a1b: $59
    ld a, c                                       ; $6a1c: $79
    ld a, [c]                                     ; $6a1d: $f2
    di                                            ; $6a1e: $f3
    ld [bc], a                                    ; $6a1f: $02
    ld b, c                                       ; $6a20: $41
    ld d, $00                                     ; $6a21: $16 $00
    add d                                         ; $6a23: $82
    scf                                           ; $6a24: $37
    dec d                                         ; $6a25: $15
    ld [bc], a                                    ; $6a26: $02
    ld [hl+], a                                   ; $6a27: $22
    add h                                         ; $6a28: $84
    jr jr_0e8_6a63                                ; $6a29: $18 $38

    inc e                                         ; $6a2b: $1c
    inc a                                         ; $6a2c: $3c
    ld [bc], a                                    ; $6a2d: $02
    jr c, jr_0e8_6a46                             ; $6a2e: $38 $16

    nop                                           ; $6a30: $00
    rst $38                                       ; $6a31: $ff
    dec c                                         ; $6a32: $0d
    inc b                                         ; $6a33: $04
    ei                                            ; $6a34: $fb
    dec b                                         ; $6a35: $05
    or $fd                                        ; $6a36: $f6 $fd
    db $ed                                        ; $6a38: $ed
    ld sp, hl                                     ; $6a39: $f9
    db $ed                                        ; $6a3a: $ed
    nop                                           ; $6a3b: $00
    db $fd                                        ; $6a3c: $fd
    db $fc                                        ; $6a3d: $fc
    db $fd                                        ; $6a3e: $fd
    rst $38                                       ; $6a3f: $ff
    ld [bc], a                                    ; $6a40: $02
    rlca                                          ; $6a41: $07
    adc d                                         ; $6a42: $8a
    rra                                           ; $6a43: $1f
    add hl, de                                    ; $6a44: $19
    ccf                                           ; $6a45: $3f

jr_0e8_6a46:
    ld l, $1f                                     ; $6a46: $2e $1f
    inc d                                         ; $6a48: $14
    rrca                                          ; $6a49: $0f
    add hl, bc                                    ; $6a4a: $09
    rrca                                          ; $6a4b: $0f
    inc c                                         ; $6a4c: $0c
    ld [bc], a                                    ; $6a4d: $02
    ccf                                           ; $6a4e: $3f
    adc c                                         ; $6a4f: $89
    ld d, e                                       ; $6a50: $53
    ld a, [hl]                                    ; $6a51: $7e
    ld d, c                                       ; $6a52: $51

jr_0e8_6a53:
    ld a, a                                       ; $6a53: $7f
    ldh a, [$bf]                                  ; $6a54: $f0 $bf
    ld hl, sp-$41                                 ; $6a56: $f8 $bf
    jp hl                                         ; $6a58: $e9


    inc bc                                        ; $6a59: $03
    rst $28                                       ; $6a5a: $ef
    add [hl]                                      ; $6a5b: $86
    ld hl, sp-$41                                 ; $6a5c: $f8 $bf
    db $db                                        ; $6a5e: $db
    rst $18                                       ; $6a5f: $df
    ld de, $021f                                  ; $6a60: $11 $1f $02

jr_0e8_6a63:
    ld h, b                                       ; $6a63: $60
    adc d                                         ; $6a64: $8a
    ld a, b                                       ; $6a65: $78
    jr jr_0e8_6ae4                                ; $6a66: $18 $7c

    ld [hl], h                                    ; $6a68: $74
    ld a, b                                       ; $6a69: $78
    ld l, b                                       ; $6a6a: $68
    ld [hl], b                                    ; $6a6b: $70
    ld d, b                                       ; $6a6c: $50
    ld [hl], b                                    ; $6a6d: $70
    jr nc, jr_0e8_6a72                            ; $6a6e: $30 $02

    ld a, b                                       ; $6a70: $78
    sbc d                                         ; $6a71: $9a

jr_0e8_6a72:
    ld c, h                                       ; $6a72: $4c
    ld a, h                                       ; $6a73: $7c
    ld [bc], a                                    ; $6a74: $02
    ld a, [hl]                                    ; $6a75: $7e
    ld a, [bc]                                    ; $6a76: $0a

jr_0e8_6a77:
    ld a, [hl]                                    ; $6a77: $7e
    ld a, [bc]                                    ; $6a78: $0a
    ld a, [hl]                                    ; $6a79: $7e
    rra                                           ; $6a7a: $1f
    ld a, l                                       ; $6a7b: $7d
    ld [hl], a                                    ; $6a7c: $77
    ld [hl], l                                    ; $6a7d: $75
    rra                                           ; $6a7e: $1f
    ld a, a                                       ; $6a7f: $7f
    ld e, a                                       ; $6a80: $5f
    ld a, c                                       ; $6a81: $79
    rra                                           ; $6a82: $1f
    ld [hl], e                                    ; $6a83: $73
    sbc a                                         ; $6a84: $9f
    rst $38                                       ; $6a85: $ff
    ld [hl], a                                    ; $6a86: $77
    ld d, a                                       ; $6a87: $57
    dec l                                         ; $6a88: $2d
    cpl                                           ; $6a89: $2f
    rst $10                                       ; $6a8a: $d7
    rst $30                                       ; $6a8b: $f7
    ld [bc], a                                    ; $6a8c: $02
    ldh a, [rSC]                                  ; $6a8d: $f0 $02
    ld [hl], b                                    ; $6a8f: $70
    inc d                                         ; $6a90: $14
    nop                                           ; $6a91: $00
    add d                                         ; $6a92: $82
    rlca                                          ; $6a93: $07
    dec b                                         ; $6a94: $05
    ld [bc], a                                    ; $6a95: $02
    ld [bc], a                                    ; $6a96: $02
    inc b                                         ; $6a97: $04
    ld b, $18                                     ; $6a98: $06 $18
    nop                                           ; $6a9a: $00
    rst $38                                       ; $6a9b: $ff
    dec c                                         ; $6a9c: $0d
    inc b                                         ; $6a9d: $04
    ei                                            ; $6a9e: $fb
    dec b                                         ; $6a9f: $05
    or $fd                                        ; $6aa0: $f6 $fd
    xor $f9                                       ; $6aa2: $ee $f9
    xor $00                                       ; $6aa4: $ee $00
    cp $fc                                        ; $6aa6: $fe $fc
    cp $ff                                        ; $6aa8: $fe $ff
    ld [bc], a                                    ; $6aaa: $02
    rlca                                          ; $6aab: $07
    adc d                                         ; $6aac: $8a
    rra                                           ; $6aad: $1f
    add hl, de                                    ; $6aae: $19
    ccf                                           ; $6aaf: $3f
    ld l, $1f                                     ; $6ab0: $2e $1f
    inc d                                         ; $6ab2: $14
    rrca                                          ; $6ab3: $0f
    add hl, bc                                    ; $6ab4: $09
    rrca                                          ; $6ab5: $0f
    inc c                                         ; $6ab6: $0c
    ld [bc], a                                    ; $6ab7: $02
    ccf                                           ; $6ab8: $3f
    adc d                                         ; $6ab9: $8a
    ld [hl], e                                    ; $6aba: $73
    ld a, [hl]                                    ; $6abb: $7e
    ld d, c                                       ; $6abc: $51
    ld a, a                                       ; $6abd: $7f
    ld [hl], b                                    ; $6abe: $70
    ld a, a                                       ; $6abf: $7f
    pop af                                        ; $6ac0: $f1
    cp a                                          ; $6ac1: $bf
    ld sp, hl                                     ; $6ac2: $f9
    cp a                                          ; $6ac3: $bf
    ld [bc], a                                    ; $6ac4: $02
    rst $28                                       ; $6ac5: $ef
    add [hl]                                      ; $6ac6: $86
    ld hl, sp-$41                                 ; $6ac7: $f8 $bf
    pop af                                        ; $6ac9: $f1
    sbc a                                         ; $6aca: $9f
    ld [hl], c                                    ; $6acb: $71
    ld a, a                                       ; $6acc: $7f
    ld [bc], a                                    ; $6acd: $02
    ld h, b                                       ; $6ace: $60
    adc d                                         ; $6acf: $8a
    ld a, b                                       ; $6ad0: $78
    jr jr_0e8_6b4f                                ; $6ad1: $18 $7c

    ld [hl], h                                    ; $6ad3: $74
    ld a, b                                       ; $6ad4: $78
    ld l, b                                       ; $6ad5: $68
    ld [hl], b                                    ; $6ad6: $70
    ld d, b                                       ; $6ad7: $50
    ld [hl], b                                    ; $6ad8: $70
    jr nc, jr_0e8_6add                            ; $6ad9: $30 $02

    ld a, b                                       ; $6adb: $78
    adc d                                         ; $6adc: $8a

jr_0e8_6add:
    ld b, h                                       ; $6add: $44
    ld a, h                                       ; $6ade: $7c
    ld a, [bc]                                    ; $6adf: $0a
    ld a, [hl]                                    ; $6ae0: $7e
    ld a, [bc]                                    ; $6ae1: $0a
    ld a, [hl]                                    ; $6ae2: $7e
    rrca                                          ; $6ae3: $0f

jr_0e8_6ae4:
    ld a, a                                       ; $6ae4: $7f
    rra                                           ; $6ae5: $1f
    ld a, l                                       ; $6ae6: $7d
    ld [bc], a                                    ; $6ae7: $02
    ld a, a                                       ; $6ae8: $7f
    adc [hl]                                      ; $6ae9: $8e
    rra                                           ; $6aea: $1f
    ld a, l                                       ; $6aeb: $7d
    ld e, a                                       ; $6aec: $5f
    ld a, c                                       ; $6aed: $79
    ld a, a                                       ; $6aee: $7f
    ld a, c                                       ; $6aef: $79
    ld a, a                                       ; $6af0: $7f
    ld e, a                                       ; $6af1: $5f
    dec hl                                        ; $6af2: $2b
    cpl                                           ; $6af3: $2f
    ld d, a                                       ; $6af4: $57
    ld [hl], a                                    ; $6af5: $77
    ret z                                         ; $6af6: $c8

    ld hl, sp+$02                                 ; $6af7: $f8 $02
    ldh a, [rNR21]                                ; $6af9: $f0 $16
    nop                                           ; $6afb: $00
    ld [bc], a                                    ; $6afc: $02
    inc bc                                        ; $6afd: $03
    ld [bc], a                                    ; $6afe: $02
    ld b, $02                                     ; $6aff: $06 $02
    inc b                                         ; $6b01: $04
    ld a, [de]                                    ; $6b02: $1a
    nop                                           ; $6b03: $00
    rst $38                                       ; $6b04: $ff
    dec c                                         ; $6b05: $0d
    inc b                                         ; $6b06: $04
    ei                                            ; $6b07: $fb
    dec b                                         ; $6b08: $05
    or $fd                                        ; $6b09: $f6 $fd
    db $ed                                        ; $6b0b: $ed
    ld sp, hl                                     ; $6b0c: $f9
    db $ed                                        ; $6b0d: $ed
    nop                                           ; $6b0e: $00
    db $fd                                        ; $6b0f: $fd
    ld sp, hl                                     ; $6b10: $f9
    db $fd                                        ; $6b11: $fd
    rst $38                                       ; $6b12: $ff
    ld [bc], a                                    ; $6b13: $02
    rlca                                          ; $6b14: $07
    adc d                                         ; $6b15: $8a
    rra                                           ; $6b16: $1f
    add hl, de                                    ; $6b17: $19
    ccf                                           ; $6b18: $3f
    ld l, $1f                                     ; $6b19: $2e $1f
    inc d                                         ; $6b1b: $14
    rrca                                          ; $6b1c: $0f
    add hl, bc                                    ; $6b1d: $09
    rrca                                          ; $6b1e: $0f
    inc c                                         ; $6b1f: $0c
    ld [bc], a                                    ; $6b20: $02
    rra                                           ; $6b21: $1f
    sub d                                         ; $6b22: $92
    ld a, a                                       ; $6b23: $7f
    ld a, [hl]                                    ; $6b24: $7e
    ld d, c                                       ; $6b25: $51
    ld a, a                                       ; $6b26: $7f
    ld d, b                                       ; $6b27: $50
    ld a, a                                       ; $6b28: $7f
    pop af                                        ; $6b29: $f1
    rst $38                                       ; $6b2a: $ff
    ld sp, hl                                     ; $6b2b: $f9
    cp a                                          ; $6b2c: $bf
    rst $28                                       ; $6b2d: $ef
    xor a                                         ; $6b2e: $af
    ld hl, sp-$01                                 ; $6b2f: $f8 $ff
    di                                            ; $6b31: $f3
    cp a                                          ; $6b32: $bf
    ld sp, hl                                     ; $6b33: $f9
    sbc a                                         ; $6b34: $9f
    ld [bc], a                                    ; $6b35: $02
    ld h, b                                       ; $6b36: $60
    adc d                                         ; $6b37: $8a
    ld a, b                                       ; $6b38: $78
    jr @+$7e                                      ; $6b39: $18 $7c

    ld [hl], h                                    ; $6b3b: $74
    ld a, b                                       ; $6b3c: $78
    ld l, b                                       ; $6b3d: $68
    ld [hl], b                                    ; $6b3e: $70
    ld d, b                                       ; $6b3f: $50
    ld [hl], b                                    ; $6b40: $70
    jr nc, jr_0e8_6b45                            ; $6b41: $30 $02

    ld a, h                                       ; $6b43: $7c
    adc d                                         ; $6b44: $8a

jr_0e8_6b45:
    ld h, d                                       ; $6b45: $62
    ld a, [hl]                                    ; $6b46: $7e
    ld a, [bc]                                    ; $6b47: $0a
    ld a, [hl]                                    ; $6b48: $7e
    ld c, $7e                                     ; $6b49: $0e $7e
    rrca                                          ; $6b4b: $0f
    ld a, l                                       ; $6b4c: $7d
    rra                                           ; $6b4d: $1f
    ld a, l                                       ; $6b4e: $7d

jr_0e8_6b4f:
    ld [bc], a                                    ; $6b4f: $02
    ld [hl], a                                    ; $6b50: $77
    adc b                                         ; $6b51: $88
    rra                                           ; $6b52: $1f
    ld a, l                                       ; $6b53: $7d
    rrca                                          ; $6b54: $0f
    ld a, c                                       ; $6b55: $79
    ccf                                           ; $6b56: $3f
    ld l, l                                       ; $6b57: $6d
    rst $28                                       ; $6b58: $ef
    xor e                                         ; $6b59: $ab
    ld [bc], a                                    ; $6b5a: $02
    ld b, h                                       ; $6b5b: $44
    add h                                         ; $6b5c: $84
    ld a, [de]                                    ; $6b5d: $1a
    ld e, $39                                     ; $6b5e: $1e $39
    ccf                                           ; $6b60: $3f
    ld [bc], a                                    ; $6b61: $02
    ld e, $16                                     ; $6b62: $1e $16
    nop                                           ; $6b64: $00
    add [hl]                                      ; $6b65: $86
    add hl, sp                                    ; $6b66: $39
    add hl, hl                                    ; $6b67: $29
    inc d                                         ; $6b68: $14
    inc e                                         ; $6b69: $1c
    ld a, [de]                                    ; $6b6a: $1a
    ld e, $02                                     ; $6b6b: $1e $02
    rrca                                          ; $6b6d: $0f
    ld [bc], a                                    ; $6b6e: $02
    ld [bc], a                                    ; $6b6f: $02
    ld d, $00                                     ; $6b70: $16 $00
    rst $38                                       ; $6b72: $ff

    db $0b, $03, $fb, $05, $f6, $fd, $ed, $fb, $ed, $fe, $fd, $fc, $02, $0f, $8a, $7f
    db $74, $ff, $93, $7f, $68, $1f, $18, $1f, $16, $02, $3f, $92, $77, $7d, $67, $7f
    db $7c, $7f, $3c, $27, $3d, $2f, $7f, $6f, $7d, $67, $3e, $26, $3a, $2e, $02, $02
    db $02, $04, $84, $06, $02, $07, $01, $03, $06, $81, $02, $02, $07, $02, $02, $08
    db $04, $08, $00, $84, $74, $7c, $38, $28, $02, $32, $02, $3f, $82, $4f, $7f, $02
    db $7e, $14, $00, $ff, $0d, $04, $fb, $05, $f6, $fd, $ed, $fb, $ed, $fe, $fd, $fa
    db $fd, $ff, $02, $0f, $8a, $7f, $74, $ff, $93, $7f, $68, $1f, $18, $1f, $16, $02
    db $1f, $92, $37, $3d, $73, $7f, $7e, $7f, $5e, $73, $ff, $bb, $ff, $fb, $ef, $fc
    db $e7, $fe, $47, $7f, $02, $02, $02, $04, $84, $06, $02, $07, $01, $03, $06, $81
    db $02, $02, $07, $02, $02, $0a, $04, $84, $06, $02, $06, $02, $02, $04, $02, $3d
    db $82, $38, $28, $02, $30, $02, $72, $82, $de, $fe, $02, $7c, $14, $00, $82, $1d
    db $0d, $02, $1f, $82, $16, $1e, $02, $0c, $18, $00, $ff, $0d, $04, $fb, $05, $f6
    db $fd, $ee, $fb, $ee, $fe, $fe, $fa, $fe, $ff, $02, $0f, $8a, $7f, $74, $ff, $93
    db $7f, $68, $1f, $18, $1f, $16, $02, $1f, $92, $37, $3d, $73, $7f, $7e, $7f, $5e
    db $73, $7f, $7b, $6f, $79, $47, $7c, $47, $7c, $73, $7f, $02, $02, $02, $04, $84
    db $06, $02, $07, $01, $03, $06, $81, $02, $02, $07, $02, $02, $02, $00, $0e, $04
    db $82, $3f, $2f, $02, $70, $82, $d1, $f1, $02, $79, $02, $3c, $16, $00, $82, $18
    db $08, $02, $19, $82, $0f, $1f, $02, $1e, $18, $00, $ff, $0b, $03, $fb, $05, $f6
    db $fd, $ed, $fb, $ed, $fe, $fd, $fc, $02, $0f, $8a, $7f, $74, $ff, $93, $7f, $68
    db $1f, $18, $1f, $16, $02, $3f, $92, $77, $7d, $67, $7f, $7c, $7f, $3c, $27, $3c
    db $2f, $7f, $6f, $7d, $67, $7f, $67, $3b, $2f, $02, $02, $02, $04, $84, $06, $02
    db $07, $01, $03, $06, $81, $02, $02, $07, $02, $02, $02, $00, $06, $04, $08, $00
    db $86, $6c, $74, $38, $28, $48, $78, $02, $7f, $02, $1e, $16, $00, $ff, $0d, $04
    db $fb, $05, $f6, $fd, $ed, $fa, $ed, $fe, $fd, $fb, $fd, $00, $02, $07, $8a, $3f
    db $3a, $7f, $49, $3f, $34, $0f, $0c, $0f, $0b, $02, $1f, $92, $37, $3e, $23, $3f
    db $7c, $7f, $7c, $6f, $7e, $5f, $7f, $5f, $fc, $9f, $fc, $9f, $79, $7f, $02, $0a
    db $8a, $0c, $04, $0e, $0a, $0f, $01, $0e, $06, $0e, $02, $02, $0f, $02, $0a, $02
    db $0c, $83, $04, $0c, $04, $03, $0c, $02, $08, $02, $0c, $81, $04, $03, $0c, $84
    db $7f, $7e, $71, $51, $02, $61, $82, $d9, $f9, $02, $f1, $16, $00, $02, $11, $86
    db $1b, $0b, $16, $1e, $0c, $1c, $02, $18, $16, $00, $ff, $0d, $04, $fb, $05, $f6
    db $fd, $ee, $fb, $ee, $fe, $fe, $fb, $fe, $ff, $02, $0f, $8a, $7f, $74, $ff, $93
    db $7f, $68, $1f, $18, $1f, $16, $02, $3f, $92, $6f, $7d, $47, $7f, $7c, $7f, $f8
    db $df, $fc, $9f, $ff, $9f, $f9, $9f, $f1, $bf, $f3, $ff, $02, $02, $02, $04, $84
    db $06, $02, $07, $01, $03, $06, $81, $02, $02, $07, $02, $02, $02, $00, $08, $04
    db $06, $00, $84, $7f, $5d, $a3, $e3, $02, $f3, $82, $7c, $7f, $02, $07, $1a, $00
    db $02, $09, $02, $0f, $02, $0e, $16, $00, $ff, $0b, $03, $fb, $05, $f6, $fd, $ed
    db $fb, $ed, $fe, $fd, $fc, $02, $0f, $8a, $7f, $74, $ff, $93, $7f, $68, $1f, $18
    db $1f, $16, $02, $3f, $92, $37, $3d, $67, $7f, $7c, $7f, $3c, $27, $3c, $2f, $7f
    db $6f, $7d, $67, $3d, $27, $3b, $2f, $02, $02, $02, $04, $84, $06, $02, $07, $01
    db $03, $06, $81, $02, $02, $07, $02, $02, $02, $00, $06, $04, $08, $00, $81, $74
    db $02, $7c, $81, $6c, $02, $7e, $02, $3d, $82, $4f, $7f, $02, $7e, $14, $00, $ff

    dec c                                         ; $6e03: $0d
    inc b                                         ; $6e04: $04
    ld hl, sp+$07                                 ; $6e05: $f8 $07
    ld a, [c]                                     ; $6e07: $f2
    ld bc, $fae5                                  ; $6e08: $01 $e5 $fa
    and $fe                                       ; $6e0b: $e6 $fe
    push af                                       ; $6e0d: $f5
    ld a, [$fef5]                                 ; $6e0e: $fa $f5 $fe
    add c                                         ; $6e11: $81
    nop                                           ; $6e12: $00
    ld [bc], a                                    ; $6e13: $02
    rrca                                          ; $6e14: $0f
    push de                                       ; $6e15: $d5
    stop                                          ; $6e16: $10 $00
    ld l, $00                                     ; $6e18: $2e $00
    ld h, h                                       ; $6e1a: $64
    ld b, b                                       ; $6e1b: $40
    sub d                                         ; $6e1c: $92
    ld b, b                                       ; $6e1d: $40
    cp a                                          ; $6e1e: $bf
    ld [de], a                                    ; $6e1f: $12
    ld l, l                                       ; $6e20: $6d
    ld b, $19                                     ; $6e21: $06 $19
    ld bc, $0106                                  ; $6e23: $01 $06 $01
    ld [hl], $22                                  ; $6e26: $36 $22
    ld e, l                                       ; $6e28: $5d
    add hl, hl                                    ; $6e29: $29
    ld d, [hl]                                    ; $6e2a: $56
    ld b, a                                       ; $6e2b: $47
    adc b                                         ; $6e2c: $88
    ld [bc], a                                    ; $6e2d: $02
    push bc                                       ; $6e2e: $c5
    nop                                           ; $6e2f: $00
    sub e                                         ; $6e30: $93
    ld bc, $00ce                                  ; $6e31: $01 $ce $00
    ld [$0c00], sp                                ; $6e34: $08 $00 $0c
    nop                                           ; $6e37: $00
    ld b, $02                                     ; $6e38: $06 $02
    dec c                                         ; $6e3a: $0d
    ld [bc], a                                    ; $6e3b: $02
    dec c                                         ; $6e3c: $0d
    ld [$0006], sp                                ; $6e3d: $08 $06 $00
    ld [$0800], sp                                ; $6e40: $08 $00 $08
    nop                                           ; $6e43: $00
    inc c                                         ; $6e44: $0c
    inc b                                         ; $6e45: $04
    ld a, [bc]                                    ; $6e46: $0a
    inc b                                         ; $6e47: $04
    ld a, [bc]                                    ; $6e48: $0a
    ld [bc], a                                    ; $6e49: $02
    dec c                                         ; $6e4a: $0d
    ld [bc], a                                    ; $6e4b: $02
    dec b                                         ; $6e4c: $05
    ld [bc], a                                    ; $6e4d: $02
    dec c                                         ; $6e4e: $0d
    nop                                           ; $6e4f: $00
    rrca                                          ; $6e50: $0f
    ld [hl-], a                                   ; $6e51: $32
    call $8040                                    ; $6e52: $cd $40 $80
    ld bc, $03a6                                  ; $6e55: $01 $a6 $03
    db $ec                                        ; $6e58: $ec
    ld b, e                                       ; $6e59: $43
    or h                                          ; $6e5a: $b4
    inc bc                                        ; $6e5b: $03
    ld l, h                                       ; $6e5c: $6c
    inc bc                                        ; $6e5d: $03
    inc [hl]                                      ; $6e5e: $34
    rlca                                          ; $6e5f: $07
    jr z, jr_0e8_6e69                             ; $6e60: $28 $07

    ld e, b                                       ; $6e62: $58
    rrca                                          ; $6e63: $0f
    ld [hl], b                                    ; $6e64: $70
    rra                                           ; $6e65: $1f
    jr nz, jr_0e8_6e6e                            ; $6e66: $20 $06

    add hl, de                                    ; $6e68: $19

jr_0e8_6e69:
    nop                                           ; $6e69: $00
    ld b, $0b                                     ; $6e6a: $06 $0b
    nop                                           ; $6e6c: $00

jr_0e8_6e6d:
    sub e                                         ; $6e6d: $93

jr_0e8_6e6e:
    dec bc                                        ; $6e6e: $0b
    nop                                           ; $6e6f: $00
    dec bc                                        ; $6e70: $0b
    ld [bc], a                                    ; $6e71: $02
    add hl, bc                                    ; $6e72: $09
    nop                                           ; $6e73: $00
    ld c, $08                                     ; $6e74: $0e $08
    inc b                                         ; $6e76: $04
    ld [$0804], sp                                ; $6e77: $08 $04 $08
    ld b, $0c                                     ; $6e7a: $06 $0c
    ld [bc], a                                    ; $6e7c: $02
    ld [$0004], sp                                ; $6e7d: $08 $04 $00
    ld [$000a], sp                                ; $6e80: $08 $0a $00
    rst $38                                       ; $6e83: $ff
    dec c                                         ; $6e84: $0d
    inc b                                         ; $6e85: $04
    ld hl, sp+$07                                 ; $6e86: $f8 $07
    ld a, [c]                                     ; $6e88: $f2
    ld bc, $f9e4                                  ; $6e89: $01 $e4 $f9
    db $e4                                        ; $6e8c: $e4
    rst $38                                       ; $6e8d: $ff
    db $f4                                        ; $6e8e: $f4
    ld sp, hl                                     ; $6e8f: $f9
    db $f4                                        ; $6e90: $f4
    rst $38                                       ; $6e91: $ff
    add c                                         ; $6e92: $81
    nop                                           ; $6e93: $00
    ld [bc], a                                    ; $6e94: $02
    rlca                                          ; $6e95: $07
    sbc [hl]                                      ; $6e96: $9e
    ld [$1700], sp                                ; $6e97: $08 $00 $17
    nop                                           ; $6e9a: $00
    ld [hl-], a                                   ; $6e9b: $32
    jr nz, @+$4b                                  ; $6e9c: $20 $49

    jr nz, @+$61                                  ; $6e9e: $20 $5f

    add hl, bc                                    ; $6ea0: $09
    ld [hl], $03                                  ; $6ea1: $36 $03
    inc c                                         ; $6ea3: $0c
    nop                                           ; $6ea4: $00
    inc bc                                        ; $6ea5: $03
    nop                                           ; $6ea6: $00
    dec de                                        ; $6ea7: $1b
    ld de, $142e                                  ; $6ea8: $11 $2e $14
    dec hl                                        ; $6eab: $2b
    inc hl                                        ; $6eac: $23
    ld b, h                                       ; $6ead: $44
    nop                                           ; $6eae: $00
    ld h, e                                       ; $6eaf: $63
    nop                                           ; $6eb0: $00
    ld c, c                                       ; $6eb1: $49
    ld bc, $00e6                                  ; $6eb2: $01 $e6 $00
    ld [bc], a                                    ; $6eb5: $02
    jr nz, jr_0e8_6e6d                            ; $6eb6: $20 $b5

    stop                                          ; $6eb8: $10 $00
    jr jr_0e8_6ebc                                ; $6eba: $18 $00

jr_0e8_6ebc:
    inc c                                         ; $6ebc: $0c
    inc b                                         ; $6ebd: $04
    ld a, [de]                                    ; $6ebe: $1a
    inc b                                         ; $6ebf: $04
    ld a, [hl-]                                   ; $6ec0: $3a
    db $10                                        ; $6ec1: $10
    inc l                                         ; $6ec2: $2c
    nop                                           ; $6ec3: $00
    jr nc, jr_0e8_6ee6                            ; $6ec4: $30 $20

    db $10                                        ; $6ec6: $10
    jr nz, @+$1a                                  ; $6ec7: $20 $18

    ld [$2834], sp                                ; $6ec9: $08 $34 $28
    inc d                                         ; $6ecc: $14
    inc b                                         ; $6ecd: $04
    ld a, [hl-]                                   ; $6ece: $3a
    inc b                                         ; $6ecf: $04
    ld a, [hl+]                                   ; $6ed0: $2a
    jr nz, jr_0e8_6ef1                            ; $6ed1: $20 $1e

    jr nz, jr_0e8_6ef4                            ; $6ed3: $20 $1f

    ld b, c                                       ; $6ed5: $41
    and [hl]                                      ; $6ed6: $a6
    ld bc, $41d2                                  ; $6ed7: $01 $d2 $41
    or [hl]                                       ; $6eda: $b6
    ld bc, $015a                                  ; $6edb: $01 $5a $01
    ld d, $03                                     ; $6ede: $16 $03
    jr c, @+$05                                   ; $6ee0: $38 $03

    inc [hl]                                      ; $6ee2: $34
    rlca                                          ; $6ee3: $07
    jr z, jr_0e8_6ef5                             ; $6ee4: $28 $0f

jr_0e8_6ee6:
    jr nc, jr_0e8_6f07                            ; $6ee6: $30 $1f

    jr nz, jr_0e8_6ef1                            ; $6ee8: $20 $07

    jr jr_0e8_6eec                                ; $6eea: $18 $00

jr_0e8_6eec:
    rlca                                          ; $6eec: $07
    ld [$9800], sp                                ; $6eed: $08 $00 $98
    ld [hl+], a                                   ; $6ef0: $22

jr_0e8_6ef1:
    dec e                                         ; $6ef1: $1d
    jr nz, jr_0e8_6f13                            ; $6ef2: $20 $1f

jr_0e8_6ef4:
    ld [hl-], a                                   ; $6ef4: $32

jr_0e8_6ef5:
    dec c                                         ; $6ef5: $0d
    jr nc, jr_0e8_6f02                            ; $6ef6: $30 $0a

    jr nc, jr_0e8_6f02                            ; $6ef8: $30 $08

    jr nc, @+$0e                                  ; $6efa: $30 $0c

    jr c, jr_0e8_6f02                             ; $6efc: $38 $04

    jr c, jr_0e8_6f04                             ; $6efe: $38 $04

    jr c, jr_0e8_6f06                             ; $6f00: $38 $04

jr_0e8_6f02:
    jr c, @+$06                                   ; $6f02: $38 $04

jr_0e8_6f04:
    jr nz, jr_0e8_6f1e                            ; $6f04: $20 $18

jr_0e8_6f06:
    nop                                           ; $6f06: $00

jr_0e8_6f07:
    jr nz, @+$0a                                  ; $6f07: $20 $08

    nop                                           ; $6f09: $00
    rst $38                                       ; $6f0a: $ff
    dec c                                         ; $6f0b: $0d
    inc b                                         ; $6f0c: $04
    ld hl, sp+$07                                 ; $6f0d: $f8 $07
    ld a, [c]                                     ; $6f0f: $f2
    ld bc, $fae5                                  ; $6f10: $01 $e5 $fa

jr_0e8_6f13:
    and $fe                                       ; $6f13: $e6 $fe
    push af                                       ; $6f15: $f5
    ld a, [$fef5]                                 ; $6f16: $fa $f5 $fe
    add c                                         ; $6f19: $81
    nop                                           ; $6f1a: $00
    ld [bc], a                                    ; $6f1b: $02
    rrca                                          ; $6f1c: $0f
    or d                                          ; $6f1d: $b2

jr_0e8_6f1e:
    db $10                                        ; $6f1e: $10
    dec b                                         ; $6f1f: $05
    ld a, [hl-]                                   ; $6f20: $3a
    db $10                                        ; $6f21: $10
    ld b, l                                       ; $6f22: $45
    ld b, h                                       ; $6f23: $44
    sbc e                                         ; $6f24: $9b
    ld e, l                                       ; $6f25: $5d
    and d                                         ; $6f26: $a2
    ld [de], a                                    ; $6f27: $12
    ld l, l                                       ; $6f28: $6d
    ld b, $19                                     ; $6f29: $06 $19
    ld bc, $0106                                  ; $6f2b: $01 $06 $01
    ld [hl], $22                                  ; $6f2e: $36 $22
    ld e, l                                       ; $6f30: $5d
    add hl, bc                                    ; $6f31: $09
    halt                                          ; $6f32: $76
    add hl, bc                                    ; $6f33: $09
    sub $19                                       ; $6f34: $d6 $19
    and [hl]                                      ; $6f36: $a6
    db $10                                        ; $6f37: $10
    xor a                                         ; $6f38: $af
    inc [hl]                                      ; $6f39: $34
    rlc b                                         ; $6f3a: $cb $00
    ld [$0c00], sp                                ; $6f3c: $08 $00 $0c
    ld [$0206], sp                                ; $6f3f: $08 $06 $02
    dec c                                         ; $6f42: $0d
    ld a, [bc]                                    ; $6f43: $0a
    dec b                                         ; $6f44: $05
    ld [$0006], sp                                ; $6f45: $08 $06 $00
    ld [$0800], sp                                ; $6f48: $08 $00 $08
    nop                                           ; $6f4b: $00
    inc c                                         ; $6f4c: $0c
    inc b                                         ; $6f4d: $04
    ld a, [bc]                                    ; $6f4e: $0a
    inc b                                         ; $6f4f: $04
    ld [bc], a                                    ; $6f50: $02
    ld a, [bc]                                    ; $6f51: $0a
    sbc a                                         ; $6f52: $9f
    dec b                                         ; $6f53: $05
    ld a, [bc]                                    ; $6f54: $0a
    dec b                                         ; $6f55: $05
    ld [$0c07], sp                                ; $6f56: $08 $07 $0c
    inc bc                                        ; $6f59: $03
    ld l, h                                       ; $6f5a: $6c
    sub e                                         ; $6f5b: $93
    jr nc, jr_0e8_6f1e                            ; $6f5c: $30 $c0

    ld d, $a9                                     ; $6f5e: $16 $a9
    inc d                                         ; $6f60: $14
    db $eb                                        ; $6f61: $eb
    ld d, h                                       ; $6f62: $54
    xor e                                         ; $6f63: $ab
    db $10                                        ; $6f64: $10
    ld l, l                                       ; $6f65: $6d
    db $10                                        ; $6f66: $10
    dec l                                         ; $6f67: $2d
    db $10                                        ; $6f68: $10
    dec l                                         ; $6f69: $2d
    inc d                                         ; $6f6a: $14
    ld l, e                                       ; $6f6b: $6b
    inc [hl]                                      ; $6f6c: $34
    ld c, e                                       ; $6f6d: $4b
    ld [de], a                                    ; $6f6e: $12
    dec l                                         ; $6f6f: $2d
    nop                                           ; $6f70: $00
    rrca                                          ; $6f71: $0f
    inc c                                         ; $6f72: $0c
    nop                                           ; $6f73: $00

jr_0e8_6f74:
    sub h                                         ; $6f74: $94
    ld a, [bc]                                    ; $6f75: $0a
    dec b                                         ; $6f76: $05
    ld [$0a07], sp                                ; $6f77: $08 $07 $0a
    dec b                                         ; $6f7a: $05
    ld [$0806], sp                                ; $6f7b: $08 $06 $08
    inc b                                         ; $6f7e: $04
    ld [$0804], sp                                ; $6f7f: $08 $04 $08
    ld b, $0c                                     ; $6f82: $06 $0c
    ld [bc], a                                    ; $6f84: $02
    ld [$0004], sp                                ; $6f85: $08 $04 $00
    ld [$000a], sp                                ; $6f88: $08 $0a $00
    rst $38                                       ; $6f8b: $ff
    dec c                                         ; $6f8c: $0d
    inc b                                         ; $6f8d: $04
    ld hl, sp+$07                                 ; $6f8e: $f8 $07
    ld a, [c]                                     ; $6f90: $f2
    ld bc, $f9e4                                  ; $6f91: $01 $e4 $f9
    db $e4                                        ; $6f94: $e4
    rst $38                                       ; $6f95: $ff
    db $f4                                        ; $6f96: $f4
    ld sp, hl                                     ; $6f97: $f9
    db $f4                                        ; $6f98: $f4
    rst $38                                       ; $6f99: $ff
    add c                                         ; $6f9a: $81
    nop                                           ; $6f9b: $00
    ld [bc], a                                    ; $6f9c: $02
    rlca                                          ; $6f9d: $07
    add h                                         ; $6f9e: $84
    ld [$1d02], sp                                ; $6f9f: $08 $02 $1d
    ld [$2202], sp                                ; $6fa2: $08 $02 $22
    sbc b                                         ; $6fa5: $98
    ld c, l                                       ; $6fa6: $4d
    ld l, $51                                     ; $6fa7: $2e $51
    add hl, bc                                    ; $6fa9: $09
    ld [hl], $03                                  ; $6faa: $36 $03
    inc c                                         ; $6fac: $0c
    nop                                           ; $6fad: $00
    inc bc                                        ; $6fae: $03
    nop                                           ; $6faf: $00
    rra                                           ; $6fb0: $1f
    dec d                                         ; $6fb1: $15
    ld a, [hl+]                                   ; $6fb2: $2a
    inc b                                         ; $6fb3: $04
    ld l, e                                       ; $6fb4: $6b
    inc b                                         ; $6fb5: $04
    ld e, c                                       ; $6fb6: $59
    inc c                                         ; $6fb7: $0c
    ld [hl], d                                    ; $6fb8: $72
    ld c, b                                       ; $6fb9: $48
    or a                                          ; $6fba: $b7
    jr @-$17                                      ; $6fbb: $18 $e7

    nop                                           ; $6fbd: $00
    ld [bc], a                                    ; $6fbe: $02
    jr nz, jr_0e8_6f74                            ; $6fbf: $20 $b3

    db $10                                        ; $6fc1: $10
    jr nz, jr_0e8_6fdc                            ; $6fc2: $20 $18

    db $10                                        ; $6fc4: $10
    inc l                                         ; $6fc5: $2c
    inc b                                         ; $6fc6: $04
    ld a, [hl-]                                   ; $6fc7: $3a
    inc [hl]                                      ; $6fc8: $34
    ld a, [bc]                                    ; $6fc9: $0a
    db $10                                        ; $6fca: $10
    inc l                                         ; $6fcb: $2c
    nop                                           ; $6fcc: $00
    jr nc, @+$22                                  ; $6fcd: $30 $20

    stop                                          ; $6fcf: $10 $00
    jr c, jr_0e8_6fdb                             ; $6fd1: $38 $08

    inc [hl]                                      ; $6fd3: $34
    inc h                                         ; $6fd4: $24
    ld a, [de]                                    ; $6fd5: $1a
    inc [hl]                                      ; $6fd6: $34
    ld a, [bc]                                    ; $6fd7: $0a
    jr nc, jr_0e8_6fe8                            ; $6fd8: $30 $0e

    ld [de], a                                    ; $6fda: $12

jr_0e8_6fdb:
    dec l                                         ; $6fdb: $2d

jr_0e8_6fdc:
    ld a, [de]                                    ; $6fdc: $1a
    dec h                                         ; $6fdd: $25
    ld a, [bc]                                    ; $6fde: $0a
    push de                                       ; $6fdf: $d5
    ld c, d                                       ; $6fe0: $4a
    or l                                          ; $6fe1: $b5
    ld a, [bc]                                    ; $6fe2: $0a
    push de                                       ; $6fe3: $d5
    ld a, [bc]                                    ; $6fe4: $0a
    dec d                                         ; $6fe5: $15
    ld a, [bc]                                    ; $6fe6: $0a
    dec d                                         ; $6fe7: $15

jr_0e8_6fe8:
    ld [$1836], sp                                ; $6fe8: $08 $36 $18
    ld h, $14                                     ; $6feb: $26 $14
    dec hl                                        ; $6fed: $2b
    ld d, $29                                     ; $6fee: $16 $29
    ld [de], a                                    ; $6ff0: $12
    dec l                                         ; $6ff1: $2d
    nop                                           ; $6ff2: $00
    rla                                           ; $6ff3: $17
    ld a, [bc]                                    ; $6ff4: $0a
    nop                                           ; $6ff5: $00
    sub [hl]                                      ; $6ff6: $96
    inc d                                         ; $6ff7: $14
    dec hl                                        ; $6ff8: $2b
    ld [de], a                                    ; $6ff9: $12
    dec l                                         ; $6ffa: $2d
    db $10                                        ; $6ffb: $10
    dec hl                                        ; $6ffc: $2b
    db $10                                        ; $6ffd: $10
    jr z, jr_0e8_7010                             ; $6ffe: $28 $10

    jr z, jr_0e8_7012                             ; $7000: $28 $10

    inc l                                         ; $7002: $2c
    jr jr_0e8_7029                                ; $7003: $18 $24

    ld [$0814], sp                                ; $7005: $08 $14 $08
    inc d                                         ; $7008: $14
    ld [$0034], sp                                ; $7009: $08 $34 $00
    jr z, jr_0e8_7018                             ; $700c: $28 $0a

    nop                                           ; $700e: $00
    rst $38                                       ; $700f: $ff

jr_0e8_7010:
    dec c                                         ; $7010: $0d
    inc b                                         ; $7011: $04

jr_0e8_7012:
    ld hl, sp+$07                                 ; $7012: $f8 $07
    ld a, [c]                                     ; $7014: $f2
    ld bc, $fbe5                                  ; $7015: $01 $e5 $fb

jr_0e8_7018:
    rst $20                                       ; $7018: $e7
    cp $f5                                        ; $7019: $fe $f5
    ld a, [$fdf5]                                 ; $701b: $fa $f5 $fd
    add c                                         ; $701e: $81
    nop                                           ; $701f: $00
    ld [bc], a                                    ; $7020: $02
    ld c, $a2                                     ; $7021: $0e $a2
    ld de, $211e                                  ; $7023: $11 $1e $21
    inc b                                         ; $7026: $04
    ld e, d                                       ; $7027: $5a
    db $10                                        ; $7028: $10

jr_0e8_7029:
    and l                                         ; $7029: $a5
    ld d, $29                                     ; $702a: $16 $29
    dec b                                         ; $702c: $05
    ld e, d                                       ; $702d: $5a
    inc bc                                        ; $702e: $03
    inc l                                         ; $702f: $2c
    nop                                           ; $7030: $00
    rla                                           ; $7031: $17
    ld [$1434], sp                                ; $7032: $08 $34 $14
    ld l, d                                       ; $7035: $6a
    jr jr_0e8_709e                                ; $7036: $18 $66

    ld d, $a9                                     ; $7038: $16 $a9
    ld d, $a9                                     ; $703a: $16 $a9
    ld [de], a                                    ; $703c: $12
    xor l                                         ; $703d: $ad
    ld a, [de]                                    ; $703e: $1a
    and l                                         ; $703f: $a5
    nop                                           ; $7040: $00
    inc b                                         ; $7041: $04
    nop                                           ; $7042: $00
    inc b                                         ; $7043: $04
    nop                                           ; $7044: $00
    ld [bc], a                                    ; $7045: $02
    ld b, $85                                     ; $7046: $06 $85
    ld bc, $0200                                  ; $7048: $01 $00 $02
    nop                                           ; $704b: $00
    inc b                                         ; $704c: $04
    dec c                                         ; $704d: $0d
    nop                                           ; $704e: $00
    ld [bc], a                                    ; $704f: $02
    inc b                                         ; $7050: $04
    sbc e                                         ; $7051: $9b
    ld [bc], a                                    ; $7052: $02
    ld h, h                                       ; $7053: $64
    sbc d                                         ; $7054: $9a
    ld b, h                                       ; $7055: $44
    cp d                                          ; $7056: $ba
    nop                                           ; $7057: $00
    ld d, b                                       ; $7058: $50
    nop                                           ; $7059: $00
    ld b, b                                       ; $705a: $40
    ld [bc], a                                    ; $705b: $02
    ld c, l                                       ; $705c: $4d
    dec b                                         ; $705d: $05
    ld c, d                                       ; $705e: $4a
    ld b, $59                                     ; $705f: $06 $59
    ld c, $91                                     ; $7061: $0e $91
    ld c, $b1                                     ; $7063: $0e $b1
    ld e, $a1                                     ; $7065: $1e $a1
    inc a                                         ; $7067: $3c
    jp $837c                                      ; $7068: $c3 $7c $83


    nop                                           ; $706b: $00
    ld a, h                                       ; $706c: $7c
    ld c, $00                                     ; $706d: $0e $00
    adc h                                         ; $706f: $8c
    ld [bc], a                                    ; $7070: $02
    dec b                                         ; $7071: $05
    nop                                           ; $7072: $00
    ld b, $00                                     ; $7073: $06 $00
    ld [bc], a                                    ; $7075: $02
    nop                                           ; $7076: $00
    ld [bc], a                                    ; $7077: $02
    nop                                           ; $7078: $00
    inc b                                         ; $7079: $04
    nop                                           ; $707a: $00
    inc b                                         ; $707b: $04
    stop                                          ; $707c: $10 $00
    rst $38                                       ; $707e: $ff
    dec c                                         ; $707f: $0d
    inc b                                         ; $7080: $04
    ld hl, sp+$07                                 ; $7081: $f8 $07
    ld a, [c]                                     ; $7083: $f2
    ld bc, $fbe4                                  ; $7084: $01 $e4 $fb
    and $fe                                       ; $7087: $e6 $fe
    db $f4                                        ; $7089: $f4
    ld a, [$fdf4]                                 ; $708a: $fa $f4 $fd
    add c                                         ; $708d: $81
    nop                                           ; $708e: $00
    ld [bc], a                                    ; $708f: $02
    ld c, $a2                                     ; $7090: $0e $a2
    ld de, $211e                                  ; $7092: $11 $1e $21
    inc b                                         ; $7095: $04
    ld e, d                                       ; $7096: $5a
    db $10                                        ; $7097: $10
    and l                                         ; $7098: $a5
    ld d, $29                                     ; $7099: $16 $29
    dec b                                         ; $709b: $05
    ld e, d                                       ; $709c: $5a
    inc bc                                        ; $709d: $03

jr_0e8_709e:
    inc l                                         ; $709e: $2c
    nop                                           ; $709f: $00
    rla                                           ; $70a0: $17
    ld [$1434], sp                                ; $70a1: $08 $34 $14
    ld l, d                                       ; $70a4: $6a
    jr jr_0e8_710d                                ; $70a5: $18 $66

    ld d, $a9                                     ; $70a7: $16 $a9
    ld d, $a9                                     ; $70a9: $16 $a9
    ld [de], a                                    ; $70ab: $12
    xor l                                         ; $70ac: $ad
    ld a, [de]                                    ; $70ad: $1a
    and l                                         ; $70ae: $a5
    nop                                           ; $70af: $00

jr_0e8_70b0:
    inc b                                         ; $70b0: $04
    nop                                           ; $70b1: $00
    inc b                                         ; $70b2: $04
    nop                                           ; $70b3: $00
    ld [bc], a                                    ; $70b4: $02
    ld b, $85                                     ; $70b5: $06 $85
    ld bc, $0200                                  ; $70b7: $01 $00 $02
    nop                                           ; $70ba: $00
    inc b                                         ; $70bb: $04
    dec c                                         ; $70bc: $0d
    nop                                           ; $70bd: $00
    ld [bc], a                                    ; $70be: $02
    inc b                                         ; $70bf: $04
    sbc e                                         ; $70c0: $9b
    ld [bc], a                                    ; $70c1: $02
    ld h, h                                       ; $70c2: $64
    sbc d                                         ; $70c3: $9a
    ld b, h                                       ; $70c4: $44
    cp d                                          ; $70c5: $ba
    nop                                           ; $70c6: $00
    ld d, b                                       ; $70c7: $50
    nop                                           ; $70c8: $00
    ld b, b                                       ; $70c9: $40
    ld [bc], a                                    ; $70ca: $02
    ld c, l                                       ; $70cb: $4d
    dec b                                         ; $70cc: $05
    ld c, d                                       ; $70cd: $4a
    ld b, $59                                     ; $70ce: $06 $59
    ld c, $91                                     ; $70d0: $0e $91
    ld c, $b1                                     ; $70d2: $0e $b1
    ld e, $a1                                     ; $70d4: $1e $a1
    inc a                                         ; $70d6: $3c
    jp $837c                                      ; $70d7: $c3 $7c $83


    nop                                           ; $70da: $00
    ld a, h                                       ; $70db: $7c
    ld c, $00                                     ; $70dc: $0e $00
    adc h                                         ; $70de: $8c
    ld [bc], a                                    ; $70df: $02
    dec b                                         ; $70e0: $05
    nop                                           ; $70e1: $00
    ld b, $00                                     ; $70e2: $06 $00
    ld [bc], a                                    ; $70e4: $02
    nop                                           ; $70e5: $00
    ld [bc], a                                    ; $70e6: $02
    nop                                           ; $70e7: $00
    inc b                                         ; $70e8: $04
    nop                                           ; $70e9: $00
    inc b                                         ; $70ea: $04
    stop                                          ; $70eb: $10 $00
    rst $38                                       ; $70ed: $ff
    dec c                                         ; $70ee: $0d
    inc b                                         ; $70ef: $04
    ei                                            ; $70f0: $fb
    dec b                                         ; $70f1: $05
    ld a, [c]                                     ; $70f2: $f2
    ei                                            ; $70f3: $fb
    ld [c], a                                     ; $70f4: $e2
    ld a, [$ffe3]                                 ; $70f5: $fa $e3 $ff
    ld a, [c]                                     ; $70f8: $f2
    ld sp, hl                                     ; $70f9: $f9
    ld a, [c]                                     ; $70fa: $f2
    nop                                           ; $70fb: $00
    ld [bc], a                                    ; $70fc: $02
    rlca                                          ; $70fd: $07
    ld [bc], a                                    ; $70fe: $02

Jump_0e8_70ff:
    rra                                           ; $70ff: $1f
    add [hl]                                      ; $7100: $86
    ccf                                           ; $7101: $3f
    inc a                                         ; $7102: $3c
    ld a, a                                       ; $7103: $7f
    ld d, a                                       ; $7104: $57
    ld a, a                                       ; $7105: $7f
    ld e, a                                       ; $7106: $5f
    ld [bc], a                                    ; $7107: $02
    ld a, a                                       ; $7108: $7f
    add d                                         ; $7109: $82
    ccf                                           ; $710a: $3f
    ld a, [hl-]                                   ; $710b: $3a
    inc bc                                        ; $710c: $03

jr_0e8_710d:
    rra                                           ; $710d: $1f
    add c                                         ; $710e: $81
    rla                                           ; $710f: $17
    ld [bc], a                                    ; $7110: $02
    rra                                           ; $7111: $1f
    add c                                         ; $7112: $81
    jr nc, jr_0e8_7118                            ; $7113: $30 $03

    ccf                                           ; $7115: $3f
    adc b                                         ; $7116: $88
    ld l, b                                       ; $7117: $68

jr_0e8_7118:
    ld a, a                                       ; $7118: $7f
    ld [c], a                                     ; $7119: $e2
    rst $38                                       ; $711a: $ff
    or l                                          ; $711b: $b5
    rst $38                                       ; $711c: $ff
    ld [c], a                                     ; $711d: $e2
    rst $38                                       ; $711e: $ff
    ld [bc], a                                    ; $711f: $02
    jr @-$7a                                      ; $7120: $18 $84

    inc e                                         ; $7122: $1c
    inc d                                         ; $7123: $14
    ld e, $0a                                     ; $7124: $1e $0a
    inc bc                                        ; $7126: $03
    ld e, $81                                     ; $7127: $1e $81
    ld a, [bc]                                    ; $7129: $0a
    ld [bc], a                                    ; $712a: $02
    inc e                                         ; $712b: $1c
    inc bc                                        ; $712c: $03
    jr jr_0e8_70b0                                ; $712d: $18 $81

    ld [$1802], sp                                ; $712f: $08 $02 $18
    add c                                         ; $7132: $81
    inc c                                         ; $7133: $0c
    inc bc                                        ; $7134: $03
    inc e                                         ; $7135: $1c
    xor b                                         ; $7136: $a8
    ld d, $1e                                     ; $7137: $16 $1e
    rlca                                          ; $7139: $07
    rra                                           ; $713a: $1f

jr_0e8_713b:
    dec c                                         ; $713b: $0d
    rra                                           ; $713c: $1f
    rlca                                          ; $713d: $07
    rra                                           ; $713e: $1f
    dec b                                         ; $713f: $05
    rst $38                                       ; $7140: $ff
    ld d, b                                       ; $7141: $50
    ld a, h                                       ; $7142: $7c
    sbc c                                         ; $7143: $99
    rst $38                                       ; $7144: $ff

jr_0e8_7145:
    or h                                          ; $7145: $b4
    rst $38                                       ; $7146: $ff
    jp c, $d0ff                                   ; $7147: $da $ff $d0

    rst $38                                       ; $714a: $ff
    ld a, c                                       ; $714b: $79
    ld a, a                                       ; $714c: $7f
    ld [hl-], a                                   ; $714d: $32
    ccf                                           ; $714e: $3f
    ld sp, $283f                                  ; $714f: $31 $3f $28
    ccf                                           ; $7152: $3f
    dec [hl]                                      ; $7153: $35
    ccf                                           ; $7154: $3f
    ld l, b                                       ; $7155: $68
    ld a, a                                       ; $7156: $7f
    ld h, l                                       ; $7157: $65
    ld a, a                                       ; $7158: $7f
    ld e, d                                       ; $7159: $5a
    ld a, a                                       ; $715a: $7f
    daa                                           ; $715b: $27
    ccf                                           ; $715c: $3f
    jr jr_0e8_717e                                ; $715d: $18 $1f

    ld [bc], a                                    ; $715f: $02
    rlca                                          ; $7160: $07
    ld [bc], a                                    ; $7161: $02
    nop                                           ; $7162: $00
    sbc h                                         ; $7163: $9c
    add hl, de                                    ; $7164: $19
    ld a, a                                       ; $7165: $7f
    dec l                                         ; $7166: $2d
    ld a, a                                       ; $7167: $7f
    ld e, e                                       ; $7168: $5b
    ld a, a                                       ; $7169: $7f
    dec bc                                        ; $716a: $0b
    ld a, a                                       ; $716b: $7f
    ld e, $7e                                     ; $716c: $1e $7e
    ld c, h                                       ; $716e: $4c
    ld a, h                                       ; $716f: $7c
    inc c                                         ; $7170: $0c
    ld a, h                                       ; $7171: $7c
    inc d                                         ; $7172: $14
    ld a, h                                       ; $7173: $7c

jr_0e8_7174:
    inc l                                         ; $7174: $2c
    ld a, h                                       ; $7175: $7c
    ld d, $7e                                     ; $7176: $16 $7e
    ld h, $7e                                     ; $7178: $26 $7e
    ld e, d                                       ; $717a: $5a
    ld a, [hl]                                    ; $717b: $7e
    ld h, h                                       ; $717c: $64
    ld a, h                                       ; $717d: $7c

jr_0e8_717e:
    jr jr_0e8_71f8                                ; $717e: $18 $78

    ld [bc], a                                    ; $7180: $02
    ld h, b                                       ; $7181: $60
    rst $38                                       ; $7182: $ff
    dec c                                         ; $7183: $0d
    inc b                                         ; $7184: $04
    ei                                            ; $7185: $fb
    dec b                                         ; $7186: $05
    ld a, [c]                                     ; $7187: $f2
    ei                                            ; $7188: $fb
    ld [c], a                                     ; $7189: $e2
    ld a, [$00e3]                                 ; $718a: $fa $e3 $00
    ld a, [c]                                     ; $718d: $f2
    ld sp, hl                                     ; $718e: $f9
    ld a, [c]                                     ; $718f: $f2
    nop                                           ; $7190: $00
    ld [bc], a                                    ; $7191: $02
    rlca                                          ; $7192: $07
    ld [bc], a                                    ; $7193: $02
    rra                                           ; $7194: $1f
    add [hl]                                      ; $7195: $86
    ccf                                           ; $7196: $3f
    inc a                                         ; $7197: $3c
    ld a, a                                       ; $7198: $7f
    ld d, a                                       ; $7199: $57
    ld a, a                                       ; $719a: $7f
    ld e, a                                       ; $719b: $5f
    ld [bc], a                                    ; $719c: $02
    ld a, a                                       ; $719d: $7f
    add d                                         ; $719e: $82
    ccf                                           ; $719f: $3f
    ld a, [hl-]                                   ; $71a0: $3a
    inc bc                                        ; $71a1: $03
    rra                                           ; $71a2: $1f
    add c                                         ; $71a3: $81
    rla                                           ; $71a4: $17
    ld [bc], a                                    ; $71a5: $02
    rra                                           ; $71a6: $1f
    add c                                         ; $71a7: $81
    jr nc, jr_0e8_71ad                            ; $71a8: $30 $03

    ccf                                           ; $71aa: $3f
    adc b                                         ; $71ab: $88
    ld a, b                                       ; $71ac: $78

jr_0e8_71ad:
    ld a, a                                       ; $71ad: $7f
    db $e3                                        ; $71ae: $e3
    rst $38                                       ; $71af: $ff
    push af                                       ; $71b0: $f5
    rst $38                                       ; $71b1: $ff
    and d                                         ; $71b2: $a2
    rst $38                                       ; $71b3: $ff
    ld [bc], a                                    ; $71b4: $02
    jr nc, jr_0e8_713b                            ; $71b5: $30 $84

    jr c, jr_0e8_71e1                             ; $71b7: $38 $28

    inc a                                         ; $71b9: $3c
    inc d                                         ; $71ba: $14
    inc bc                                        ; $71bb: $03
    inc a                                         ; $71bc: $3c
    add c                                         ; $71bd: $81
    inc d                                         ; $71be: $14
    ld [bc], a                                    ; $71bf: $02
    jr c, jr_0e8_71c5                             ; $71c0: $38 $03

    jr nc, jr_0e8_7145                            ; $71c2: $30 $81

    db $10                                        ; $71c4: $10

jr_0e8_71c5:
    ld [bc], a                                    ; $71c5: $02
    jr nc, @-$7d                                  ; $71c6: $30 $81

    jr jr_0e8_71cd                                ; $71c8: $18 $03

    jr c, jr_0e8_7174                             ; $71ca: $38 $a8

    inc l                                         ; $71cc: $2c

jr_0e8_71cd:
    inc a                                         ; $71cd: $3c
    ld a, [de]                                    ; $71ce: $1a
    ld a, $0a                                     ; $71cf: $3e $0a
    ld a, $0a                                     ; $71d1: $3e $0a
    ld a, $19                                     ; $71d3: $3e $19
    rst $38                                       ; $71d5: $ff
    ld d, b                                       ; $71d6: $50
    ld a, [hl]                                    ; $71d7: $7e
    sbc c                                         ; $71d8: $99
    rst $38                                       ; $71d9: $ff

jr_0e8_71da:
    sub h                                         ; $71da: $94
    rst $38                                       ; $71db: $ff
    sbc d                                         ; $71dc: $9a
    rst $38                                       ; $71dd: $ff

jr_0e8_71de:
    ret nc                                        ; $71de: $d0

    rst $38                                       ; $71df: $ff
    ret nc                                        ; $71e0: $d0

jr_0e8_71e1:
    rst $38                                       ; $71e1: $ff
    ld a, c                                       ; $71e2: $79
    ld a, a                                       ; $71e3: $7f
    ld [hl+], a                                   ; $71e4: $22
    ccf                                           ; $71e5: $3f
    ld sp, $6c3f                                  ; $71e6: $31 $3f $6c
    ld a, a                                       ; $71e9: $7f
    ld c, d                                       ; $71ea: $4a
    ld a, a                                       ; $71eb: $7f
    ld a, l                                       ; $71ec: $7d
    ld a, a                                       ; $71ed: $7f
    ld h, [hl]                                    ; $71ee: $66
    ld a, a                                       ; $71ef: $7f
    add hl, de                                    ; $71f0: $19
    rra                                           ; $71f1: $1f
    ld b, $07                                     ; $71f2: $06 $07
    ld [bc], a                                    ; $71f4: $02
    ld bc, $0002                                  ; $71f5: $01 $02 $00

jr_0e8_71f8:
    sbc h                                         ; $71f8: $9c
    dec l                                         ; $71f9: $2d
    ld a, a                                       ; $71fa: $7f
    ccf                                           ; $71fb: $3f
    ld a, a                                       ; $71fc: $7f
    ld c, e                                       ; $71fd: $4b
    ld a, a                                       ; $71fe: $7f
    ld c, $7e                                     ; $71ff: $0e $7e
    inc e                                         ; $7201: $1c
    ld a, h                                       ; $7202: $7c
    ld e, h                                       ; $7203: $5c
    ld a, h                                       ; $7204: $7c
    ld c, h                                       ; $7205: $4c
    ld a, h                                       ; $7206: $7c

jr_0e8_7207:
    inc c                                         ; $7207: $0c
    ld a, h                                       ; $7208: $7c
    inc d                                         ; $7209: $14
    ld a, h                                       ; $720a: $7c
    ld l, $7e                                     ; $720b: $2e $7e
    ld d, $7e                                     ; $720d: $16 $7e
    ld l, [hl]                                    ; $720f: $6e
    ld a, [hl]                                    ; $7210: $7e
    ld [hl], d                                    ; $7211: $72
    ld a, [hl]                                    ; $7212: $7e
    inc c                                         ; $7213: $0c
    ld a, h                                       ; $7214: $7c
    ld [bc], a                                    ; $7215: $02
    ld [hl], b                                    ; $7216: $70
    rst $38                                       ; $7217: $ff
    dec c                                         ; $7218: $0d
    inc b                                         ; $7219: $04
    ei                                            ; $721a: $fb
    dec b                                         ; $721b: $05
    ld a, [c]                                     ; $721c: $f2
    ei                                            ; $721d: $fb
    db $e3                                        ; $721e: $e3
    ld a, [$00e4]                                 ; $721f: $fa $e4 $00
    di                                            ; $7222: $f3
    ld sp, hl                                     ; $7223: $f9
    di                                            ; $7224: $f3
    nop                                           ; $7225: $00
    ld [bc], a                                    ; $7226: $02
    rlca                                          ; $7227: $07
    ld [bc], a                                    ; $7228: $02
    rra                                           ; $7229: $1f
    add [hl]                                      ; $722a: $86
    ccf                                           ; $722b: $3f
    inc a                                         ; $722c: $3c
    ld a, a                                       ; $722d: $7f
    ld d, a                                       ; $722e: $57
    ld a, a                                       ; $722f: $7f
    ld e, a                                       ; $7230: $5f
    ld [bc], a                                    ; $7231: $02
    ld a, a                                       ; $7232: $7f
    add d                                         ; $7233: $82
    ccf                                           ; $7234: $3f
    ld a, [hl-]                                   ; $7235: $3a
    inc bc                                        ; $7236: $03
    rra                                           ; $7237: $1f
    add c                                         ; $7238: $81
    rla                                           ; $7239: $17
    ld [bc], a                                    ; $723a: $02
    rra                                           ; $723b: $1f
    add c                                         ; $723c: $81
    jr nc, jr_0e8_7242                            ; $723d: $30 $03

    ccf                                           ; $723f: $3f
    adc b                                         ; $7240: $88
    ld a, b                                       ; $7241: $78

jr_0e8_7242:
    ld a, a                                       ; $7242: $7f
    ld [c], a                                     ; $7243: $e2
    rst $38                                       ; $7244: $ff
    push af                                       ; $7245: $f5
    rst $38                                       ; $7246: $ff
    and d                                         ; $7247: $a2
    rst $38                                       ; $7248: $ff
    ld [bc], a                                    ; $7249: $02
    jr nc, @-$7a                                  ; $724a: $30 $84

    jr c, jr_0e8_7276                             ; $724c: $38 $28

    inc a                                         ; $724e: $3c
    inc d                                         ; $724f: $14
    inc bc                                        ; $7250: $03
    inc a                                         ; $7251: $3c
    add c                                         ; $7252: $81
    inc d                                         ; $7253: $14
    ld [bc], a                                    ; $7254: $02
    jr c, jr_0e8_725a                             ; $7255: $38 $03

    jr nc, jr_0e8_71da                            ; $7257: $30 $81

    db $10                                        ; $7259: $10

jr_0e8_725a:
    ld [bc], a                                    ; $725a: $02
    jr nc, jr_0e8_71de                            ; $725b: $30 $81

    jr jr_0e8_7262                                ; $725d: $18 $03

    jr c, jr_0e8_7207                             ; $725f: $38 $a6

    inc l                                         ; $7261: $2c

jr_0e8_7262:
    inc a                                         ; $7262: $3c

jr_0e8_7263:
    ld a, [bc]                                    ; $7263: $0a
    ld a, $1a                                     ; $7264: $3e $1a
    ld a, $0a                                     ; $7266: $3e $0a
    ld a, $09                                     ; $7268: $3e $09
    rst $38                                       ; $726a: $ff
    ld d, b                                       ; $726b: $50
    ld a, [hl]                                    ; $726c: $7e

jr_0e8_726d:
    sbc c                                         ; $726d: $99
    rst $38                                       ; $726e: $ff
    sub h                                         ; $726f: $94
    rst $38                                       ; $7270: $ff
    sbc d                                         ; $7271: $9a
    rst $38                                       ; $7272: $ff
    ret nc                                        ; $7273: $d0

    rst $38                                       ; $7274: $ff
    ld sp, hl                                     ; $7275: $f9

jr_0e8_7276:
    rst $38                                       ; $7276: $ff
    ld [hl], d                                    ; $7277: $72
    ld a, a                                       ; $7278: $7f
    dec sp                                        ; $7279: $3b
    ccf                                           ; $727a: $3f
    inc [hl]                                      ; $727b: $34
    ccf                                           ; $727c: $3f
    ld c, c                                       ; $727d: $49
    ld a, a                                       ; $727e: $7f
    ld [hl], h                                    ; $727f: $74
    ld a, a                                       ; $7280: $7f
    ld l, l                                       ; $7281: $6d
    ld a, a                                       ; $7282: $7f
    dec de                                        ; $7283: $1b
    rra                                           ; $7284: $1f
    ld b, $07                                     ; $7285: $06 $07
    ld [bc], a                                    ; $7287: $02
    ld bc, $0004                                  ; $7288: $01 $04 $00
    sbc d                                         ; $728b: $9a
    add hl, de                                    ; $728c: $19
    ld a, a                                       ; $728d: $7f
    dec l                                         ; $728e: $2d
    ld a, a                                       ; $728f: $7f
    ld e, e                                       ; $7290: $5b
    ld a, a                                       ; $7291: $7f
    rrca                                          ; $7292: $0f
    ld a, a                                       ; $7293: $7f
    ld e, $7e                                     ; $7294: $1e $7e
    ld c, h                                       ; $7296: $4c
    ld a, h                                       ; $7297: $7c
    inc c                                         ; $7298: $0c
    ld a, h                                       ; $7299: $7c
    inc a                                         ; $729a: $3c
    ld a, h                                       ; $729b: $7c
    ld e, h                                       ; $729c: $5c
    ld a, h                                       ; $729d: $7c
    inc l                                         ; $729e: $2c
    ld a, h                                       ; $729f: $7c
    ld d, h                                       ; $72a0: $54
    ld a, h                                       ; $72a1: $7c
    ld [hl], h                                    ; $72a2: $74
    ld a, h                                       ; $72a3: $7c
    ld [$0278], sp                                ; $72a4: $08 $78 $02
    ld [hl], b                                    ; $72a7: $70
    ld [bc], a                                    ; $72a8: $02
    nop                                           ; $72a9: $00
    rst $38                                       ; $72aa: $ff
    dec c                                         ; $72ab: $0d
    inc b                                         ; $72ac: $04
    ei                                            ; $72ad: $fb
    dec b                                         ; $72ae: $05
    ld a, [c]                                     ; $72af: $f2
    ei                                            ; $72b0: $fb
    ld [c], a                                     ; $72b1: $e2
    ld a, [$ffe3]                                 ; $72b2: $fa $e3 $ff
    ld a, [c]                                     ; $72b5: $f2
    ld sp, hl                                     ; $72b6: $f9
    ld a, [c]                                     ; $72b7: $f2
    nop                                           ; $72b8: $00
    ld [bc], a                                    ; $72b9: $02
    rlca                                          ; $72ba: $07
    ld [bc], a                                    ; $72bb: $02
    rra                                           ; $72bc: $1f
    add [hl]                                      ; $72bd: $86
    ccf                                           ; $72be: $3f
    inc a                                         ; $72bf: $3c
    ld a, a                                       ; $72c0: $7f
    ld d, a                                       ; $72c1: $57
    ld a, a                                       ; $72c2: $7f
    ld e, a                                       ; $72c3: $5f
    ld [bc], a                                    ; $72c4: $02
    ld a, a                                       ; $72c5: $7f
    add d                                         ; $72c6: $82
    ccf                                           ; $72c7: $3f
    ld a, [hl-]                                   ; $72c8: $3a
    inc bc                                        ; $72c9: $03
    rra                                           ; $72ca: $1f
    add c                                         ; $72cb: $81
    rla                                           ; $72cc: $17
    ld [bc], a                                    ; $72cd: $02
    rra                                           ; $72ce: $1f
    add c                                         ; $72cf: $81
    jr nc, jr_0e8_72d5                            ; $72d0: $30 $03

    ccf                                           ; $72d2: $3f
    adc b                                         ; $72d3: $88
    ld l, b                                       ; $72d4: $68

jr_0e8_72d5:
    ld a, a                                       ; $72d5: $7f
    ld [c], a                                     ; $72d6: $e2
    rst $38                                       ; $72d7: $ff
    or l                                          ; $72d8: $b5
    rst $38                                       ; $72d9: $ff
    ld [c], a                                     ; $72da: $e2
    rst $38                                       ; $72db: $ff
    ld [bc], a                                    ; $72dc: $02
    jr jr_0e8_7263                                ; $72dd: $18 $84

    inc e                                         ; $72df: $1c
    inc d                                         ; $72e0: $14
    ld e, $0a                                     ; $72e1: $1e $0a
    inc bc                                        ; $72e3: $03
    ld e, $81                                     ; $72e4: $1e $81
    ld a, [bc]                                    ; $72e6: $0a
    ld [bc], a                                    ; $72e7: $02
    inc e                                         ; $72e8: $1c
    inc bc                                        ; $72e9: $03
    jr jr_0e8_726d                                ; $72ea: $18 $81

    ld [$1802], sp                                ; $72ec: $08 $02 $18
    add c                                         ; $72ef: $81
    inc c                                         ; $72f0: $0c
    inc bc                                        ; $72f1: $03
    inc e                                         ; $72f2: $1c
    xor b                                         ; $72f3: $a8
    ld d, $1e                                     ; $72f4: $16 $1e
    rlca                                          ; $72f6: $07
    rra                                           ; $72f7: $1f

jr_0e8_72f8:
    dec c                                         ; $72f8: $0d
    rra                                           ; $72f9: $1f
    rlca                                          ; $72fa: $07
    rra                                           ; $72fb: $1f
    dec b                                         ; $72fc: $05
    rst $38                                       ; $72fd: $ff
    ld d, b                                       ; $72fe: $50
    ld a, h                                       ; $72ff: $7c
    sbc c                                         ; $7300: $99
    rst $38                                       ; $7301: $ff

jr_0e8_7302:
    or h                                          ; $7302: $b4
    rst $38                                       ; $7303: $ff
    jp c, $d0ff                                   ; $7304: $da $ff $d0

    rst $38                                       ; $7307: $ff
    ld a, c                                       ; $7308: $79
    ld a, a                                       ; $7309: $7f
    ld [hl-], a                                   ; $730a: $32
    ccf                                           ; $730b: $3f
    ld sp, $283f                                  ; $730c: $31 $3f $28
    ccf                                           ; $730f: $3f
    dec [hl]                                      ; $7310: $35
    ccf                                           ; $7311: $3f
    ld l, b                                       ; $7312: $68
    ld a, a                                       ; $7313: $7f
    ld h, l                                       ; $7314: $65
    ld a, a                                       ; $7315: $7f
    ld e, d                                       ; $7316: $5a
    ld a, a                                       ; $7317: $7f
    daa                                           ; $7318: $27
    ccf                                           ; $7319: $3f
    jr jr_0e8_733b                                ; $731a: $18 $1f

    ld [bc], a                                    ; $731c: $02
    rlca                                          ; $731d: $07
    ld [bc], a                                    ; $731e: $02
    nop                                           ; $731f: $00
    sbc h                                         ; $7320: $9c
    add hl, de                                    ; $7321: $19
    ld a, a                                       ; $7322: $7f
    dec l                                         ; $7323: $2d
    ld a, a                                       ; $7324: $7f
    ld e, e                                       ; $7325: $5b
    ld a, a                                       ; $7326: $7f
    dec bc                                        ; $7327: $0b
    ld a, a                                       ; $7328: $7f
    ld c, $7e                                     ; $7329: $0e $7e
    inc e                                         ; $732b: $1c
    ld a, h                                       ; $732c: $7c
    inc c                                         ; $732d: $0c
    ld a, h                                       ; $732e: $7c
    inc e                                         ; $732f: $1c
    ld a, h                                       ; $7330: $7c
    inc h                                         ; $7331: $24
    ld a, h                                       ; $7332: $7c
    ld d, h                                       ; $7333: $54
    ld a, h                                       ; $7334: $7c
    inc l                                         ; $7335: $2c
    ld a, h                                       ; $7336: $7c
    ld d, h                                       ; $7337: $54
    ld a, h                                       ; $7338: $7c
    ld h, h                                       ; $7339: $64
    ld a, h                                       ; $733a: $7c

jr_0e8_733b:
    jr jr_0e8_73b5                                ; $733b: $18 $78

    ld [bc], a                                    ; $733d: $02
    ld h, b                                       ; $733e: $60
    rst $38                                       ; $733f: $ff
    dec c                                         ; $7340: $0d
    inc b                                         ; $7341: $04
    ei                                            ; $7342: $fb
    dec b                                         ; $7343: $05
    ld a, [c]                                     ; $7344: $f2
    ei                                            ; $7345: $fb
    ld [c], a                                     ; $7346: $e2
    ld a, [$ffe3]                                 ; $7347: $fa $e3 $ff
    ld a, [c]                                     ; $734a: $f2
    ld sp, hl                                     ; $734b: $f9
    ld a, [c]                                     ; $734c: $f2
    nop                                           ; $734d: $00
    ld [bc], a                                    ; $734e: $02
    rlca                                          ; $734f: $07
    ld [bc], a                                    ; $7350: $02
    rra                                           ; $7351: $1f
    add [hl]                                      ; $7352: $86
    ccf                                           ; $7353: $3f
    inc a                                         ; $7354: $3c
    ld a, a                                       ; $7355: $7f
    ld d, a                                       ; $7356: $57
    ld a, a                                       ; $7357: $7f
    ld e, a                                       ; $7358: $5f
    ld [bc], a                                    ; $7359: $02
    ld a, a                                       ; $735a: $7f
    add d                                         ; $735b: $82
    ccf                                           ; $735c: $3f
    ld a, [hl-]                                   ; $735d: $3a
    inc bc                                        ; $735e: $03
    rra                                           ; $735f: $1f
    add c                                         ; $7360: $81
    rla                                           ; $7361: $17
    ld [bc], a                                    ; $7362: $02
    rra                                           ; $7363: $1f
    add c                                         ; $7364: $81
    jr nc, jr_0e8_736a                            ; $7365: $30 $03

    ccf                                           ; $7367: $3f
    adc b                                         ; $7368: $88
    ld l, b                                       ; $7369: $68

jr_0e8_736a:
    ld a, a                                       ; $736a: $7f
    or [hl]                                       ; $736b: $b6
    rst $38                                       ; $736c: $ff
    and l                                         ; $736d: $a5
    rst $38                                       ; $736e: $ff
    and d                                         ; $736f: $a2
    rst $38                                       ; $7370: $ff
    ld [bc], a                                    ; $7371: $02
    jr jr_0e8_72f8                                ; $7372: $18 $84

    inc e                                         ; $7374: $1c
    inc d                                         ; $7375: $14
    ld e, $0a                                     ; $7376: $1e $0a
    inc bc                                        ; $7378: $03
    ld e, $81                                     ; $7379: $1e $81
    ld a, [bc]                                    ; $737b: $0a
    ld [bc], a                                    ; $737c: $02
    inc e                                         ; $737d: $1c
    inc bc                                        ; $737e: $03
    jr jr_0e8_7302                                ; $737f: $18 $81

    ld [$1802], sp                                ; $7381: $08 $02 $18
    add c                                         ; $7384: $81
    inc c                                         ; $7385: $0c
    inc bc                                        ; $7386: $03
    inc e                                         ; $7387: $1c
    ld [bc], a                                    ; $7388: $02
    ld e, $a6                                     ; $7389: $1e $a6
    rlca                                          ; $738b: $07
    rra                                           ; $738c: $1f

jr_0e8_738d:
    rrca                                          ; $738d: $0f
    rra                                           ; $738e: $1f
    dec b                                         ; $738f: $05
    rra                                           ; $7390: $1f
    dec b                                         ; $7391: $05
    rst $38                                       ; $7392: $ff
    sbc b                                         ; $7393: $98
    db $fc                                        ; $7394: $fc
    or l                                          ; $7395: $b5
    rst $38                                       ; $7396: $ff

jr_0e8_7397:
    db $fc                                        ; $7397: $fc
    rst $38                                       ; $7398: $ff
    jp nc, Jump_0e8_70ff                          ; $7399: $d2 $ff $70

    ld a, a                                       ; $739c: $7f
    jr c, @+$41                                   ; $739d: $38 $3f

    dec sp                                        ; $739f: $3b
    ccf                                           ; $73a0: $3f
    ld [hl-], a                                   ; $73a1: $32
    ccf                                           ; $73a2: $3f
    ld sp, $283f                                  ; $73a3: $31 $3f $28
    ccf                                           ; $73a6: $3f
    ld [hl], h                                    ; $73a7: $74
    ld a, a                                       ; $73a8: $7f
    ld l, c                                       ; $73a9: $69
    ld a, a                                       ; $73aa: $7f
    halt                                          ; $73ab: $76
    ld a, a                                       ; $73ac: $7f
    ld c, a                                       ; $73ad: $4f
    ld a, a                                       ; $73ae: $7f
    jr nc, jr_0e8_73f0                            ; $73af: $30 $3f

    ld [bc], a                                    ; $73b1: $02
    rrca                                          ; $73b2: $0f
    ld [bc], a                                    ; $73b3: $02
    nop                                           ; $73b4: $00

jr_0e8_73b5:
    sbc d                                         ; $73b5: $9a
    add hl, de                                    ; $73b6: $19
    ld a, a                                       ; $73b7: $7f
    add hl, hl                                    ; $73b8: $29
    ld a, a                                       ; $73b9: $7f
    ld e, c                                       ; $73ba: $59
    ld a, a                                       ; $73bb: $7f
    dec bc                                        ; $73bc: $0b
    ld a, a                                       ; $73bd: $7f
    dec bc                                        ; $73be: $0b
    ld a, a                                       ; $73bf: $7f
    ld e, $7e                                     ; $73c0: $1e $7e
    ld b, h                                       ; $73c2: $44
    ld a, h                                       ; $73c3: $7c
    inc c                                         ; $73c4: $0c
    ld a, h                                       ; $73c5: $7c
    ld [hl], $7e                                  ; $73c6: $36 $7e
    ld d, d                                       ; $73c8: $52
    ld a, [hl]                                    ; $73c9: $7e
    ld a, $7e                                     ; $73ca: $3e $7e
    ld h, [hl]                                    ; $73cc: $66
    ld a, [hl]                                    ; $73cd: $7e
    jr jr_0e8_7448                                ; $73ce: $18 $78

    ld [bc], a                                    ; $73d0: $02
    ld h, b                                       ; $73d1: $60
    ld [bc], a                                    ; $73d2: $02
    nop                                           ; $73d3: $00
    rst $38                                       ; $73d4: $ff
    dec c                                         ; $73d5: $0d
    inc b                                         ; $73d6: $04
    ei                                            ; $73d7: $fb
    dec b                                         ; $73d8: $05
    ld a, [c]                                     ; $73d9: $f2
    ei                                            ; $73da: $fb
    db $e3                                        ; $73db: $e3
    ld a, [$ffe4]                                 ; $73dc: $fa $e4 $ff
    di                                            ; $73df: $f3
    ld sp, hl                                     ; $73e0: $f9
    di                                            ; $73e1: $f3
    nop                                           ; $73e2: $00
    ld [bc], a                                    ; $73e3: $02
    rlca                                          ; $73e4: $07
    ld [bc], a                                    ; $73e5: $02
    rra                                           ; $73e6: $1f
    add [hl]                                      ; $73e7: $86
    ccf                                           ; $73e8: $3f
    inc a                                         ; $73e9: $3c
    ld a, a                                       ; $73ea: $7f
    ld d, a                                       ; $73eb: $57
    ld a, a                                       ; $73ec: $7f
    ld e, a                                       ; $73ed: $5f
    ld [bc], a                                    ; $73ee: $02
    ld a, a                                       ; $73ef: $7f

jr_0e8_73f0:
    add d                                         ; $73f0: $82
    ccf                                           ; $73f1: $3f
    ld a, [hl-]                                   ; $73f2: $3a
    inc bc                                        ; $73f3: $03
    rra                                           ; $73f4: $1f
    add c                                         ; $73f5: $81
    rla                                           ; $73f6: $17
    ld [bc], a                                    ; $73f7: $02
    rra                                           ; $73f8: $1f
    add c                                         ; $73f9: $81
    jr nc, jr_0e8_73ff                            ; $73fa: $30 $03

    ccf                                           ; $73fc: $3f
    adc b                                         ; $73fd: $88
    ld l, b                                       ; $73fe: $68

jr_0e8_73ff:
    ld a, a                                       ; $73ff: $7f
    and d                                         ; $7400: $a2
    rst $38                                       ; $7401: $ff
    or l                                          ; $7402: $b5
    rst $38                                       ; $7403: $ff
    and d                                         ; $7404: $a2
    rst $38                                       ; $7405: $ff
    ld [bc], a                                    ; $7406: $02
    jr jr_0e8_738d                                ; $7407: $18 $84

    inc e                                         ; $7409: $1c
    inc d                                         ; $740a: $14
    ld e, $0a                                     ; $740b: $1e $0a
    inc bc                                        ; $740d: $03
    ld e, $81                                     ; $740e: $1e $81
    ld a, [bc]                                    ; $7410: $0a
    ld [bc], a                                    ; $7411: $02
    inc e                                         ; $7412: $1c
    inc bc                                        ; $7413: $03
    jr jr_0e8_7397                                ; $7414: $18 $81

    ld [$1802], sp                                ; $7416: $08 $02 $18
    add c                                         ; $7419: $81
    inc c                                         ; $741a: $0c
    inc bc                                        ; $741b: $03
    inc e                                         ; $741c: $1c
    ld [bc], a                                    ; $741d: $02

jr_0e8_741e:
    ld e, $a4                                     ; $741e: $1e $a4
    rlca                                          ; $7420: $07
    rra                                           ; $7421: $1f
    rrca                                          ; $7422: $0f
    rra                                           ; $7423: $1f
    dec b                                         ; $7424: $05
    rra                                           ; $7425: $1f
    dec b                                         ; $7426: $05
    rst $38                                       ; $7427: $ff

jr_0e8_7428:
    sub b                                         ; $7428: $90
    db $fc                                        ; $7429: $fc
    sbc c                                         ; $742a: $99
    rst $38                                       ; $742b: $ff
    or h                                          ; $742c: $b4
    rst $38                                       ; $742d: $ff
    jp c, $f0ff                                   ; $742e: $da $ff $f0

    rst $38                                       ; $7431: $ff
    ld a, c                                       ; $7432: $79
    ld a, a                                       ; $7433: $7f
    ld [hl-], a                                   ; $7434: $32
    ccf                                           ; $7435: $3f
    ld sp, $3c3f                                  ; $7436: $31 $3f $3c
    ccf                                           ; $7439: $3f
    dec sp                                        ; $743a: $3b
    ccf                                           ; $743b: $3f
    inc [hl]                                      ; $743c: $34
    ccf                                           ; $743d: $3f
    dec hl                                        ; $743e: $2b
    ccf                                           ; $743f: $3f
    cpl                                           ; $7440: $2f
    ccf                                           ; $7441: $3f
    db $10                                        ; $7442: $10
    rra                                           ; $7443: $1f
    ld [bc], a                                    ; $7444: $02
    rrca                                          ; $7445: $0f
    inc b                                         ; $7446: $04
    nop                                           ; $7447: $00

jr_0e8_7448:
    sbc b                                         ; $7448: $98
    add hl, de                                    ; $7449: $19
    ld a, a                                       ; $744a: $7f
    add hl, hl                                    ; $744b: $29
    ld a, a                                       ; $744c: $7f
    ld e, c                                       ; $744d: $59
    ld a, a                                       ; $744e: $7f
    dec bc                                        ; $744f: $0b
    ld a, a                                       ; $7450: $7f
    rra                                           ; $7451: $1f
    ld a, a                                       ; $7452: $7f
    ld c, [hl]                                    ; $7453: $4e
    ld a, [hl]                                    ; $7454: $7e
    ld e, h                                       ; $7455: $5c
    ld a, h                                       ; $7456: $7c
    inc l                                         ; $7457: $2c
    ld a, h                                       ; $7458: $7c
    ld [de], a                                    ; $7459: $12
    ld a, [hl]                                    ; $745a: $7e
    ld l, $7e                                     ; $745b: $2e $7e
    ld [hl], $7e                                  ; $745d: $36 $7e
    ld e, b                                       ; $745f: $58
    ld a, b                                       ; $7460: $78
    ld [bc], a                                    ; $7461: $02
    ld h, b                                       ; $7462: $60
    inc b                                         ; $7463: $04
    nop                                           ; $7464: $00
    rst $38                                       ; $7465: $ff
    dec c                                         ; $7466: $0d
    inc b                                         ; $7467: $04
    ei                                            ; $7468: $fb
    dec b                                         ; $7469: $05
    ld a, [c]                                     ; $746a: $f2
    ei                                            ; $746b: $fb
    ld [c], a                                     ; $746c: $e2
    ld a, [$ffe3]                                 ; $746d: $fa $e3 $ff
    ld a, [c]                                     ; $7470: $f2
    ld sp, hl                                     ; $7471: $f9
    ld a, [c]                                     ; $7472: $f2
    nop                                           ; $7473: $00
    ld [bc], a                                    ; $7474: $02
    rlca                                          ; $7475: $07
    ld [bc], a                                    ; $7476: $02
    rra                                           ; $7477: $1f
    add [hl]                                      ; $7478: $86
    ccf                                           ; $7479: $3f
    inc a                                         ; $747a: $3c
    ld a, a                                       ; $747b: $7f
    ld d, a                                       ; $747c: $57
    ld a, a                                       ; $747d: $7f
    ld e, a                                       ; $747e: $5f
    ld [bc], a                                    ; $747f: $02
    ld a, a                                       ; $7480: $7f
    add d                                         ; $7481: $82
    ccf                                           ; $7482: $3f
    ld a, [hl-]                                   ; $7483: $3a
    inc bc                                        ; $7484: $03
    rra                                           ; $7485: $1f
    add c                                         ; $7486: $81
    rla                                           ; $7487: $17
    ld [bc], a                                    ; $7488: $02
    rra                                           ; $7489: $1f
    add c                                         ; $748a: $81
    jr nc, jr_0e8_7490                            ; $748b: $30 $03

    ccf                                           ; $748d: $3f
    adc b                                         ; $748e: $88
    ld l, b                                       ; $748f: $68

jr_0e8_7490:
    ld a, a                                       ; $7490: $7f
    ld [c], a                                     ; $7491: $e2
    rst $38                                       ; $7492: $ff
    or l                                          ; $7493: $b5
    rst $38                                       ; $7494: $ff
    ld [c], a                                     ; $7495: $e2
    rst $38                                       ; $7496: $ff
    ld [bc], a                                    ; $7497: $02
    jr jr_0e8_741e                                ; $7498: $18 $84

    inc e                                         ; $749a: $1c
    inc d                                         ; $749b: $14
    ld e, $0a                                     ; $749c: $1e $0a
    inc bc                                        ; $749e: $03
    ld e, $81                                     ; $749f: $1e $81
    ld a, [bc]                                    ; $74a1: $0a
    ld [bc], a                                    ; $74a2: $02
    inc e                                         ; $74a3: $1c
    inc bc                                        ; $74a4: $03
    jr jr_0e8_7428                                ; $74a5: $18 $81

    ld [$1802], sp                                ; $74a7: $08 $02 $18
    add c                                         ; $74aa: $81
    inc c                                         ; $74ab: $0c
    inc bc                                        ; $74ac: $03
    inc e                                         ; $74ad: $1c
    xor b                                         ; $74ae: $a8
    ld d, $1e                                     ; $74af: $16 $1e
    rlca                                          ; $74b1: $07
    rra                                           ; $74b2: $1f
    dec c                                         ; $74b3: $0d
    rra                                           ; $74b4: $1f
    rlca                                          ; $74b5: $07
    rra                                           ; $74b6: $1f
    dec b                                         ; $74b7: $05
    rst $38                                       ; $74b8: $ff
    ld d, b                                       ; $74b9: $50
    ld a, h                                       ; $74ba: $7c
    sbc c                                         ; $74bb: $99
    rst $38                                       ; $74bc: $ff
    or h                                          ; $74bd: $b4
    rst $38                                       ; $74be: $ff
    jp c, $d0ff                                   ; $74bf: $da $ff $d0

    rst $38                                       ; $74c2: $ff
    ld [hl], c                                    ; $74c3: $71
    ld a, a                                       ; $74c4: $7f
    jr c, jr_0e8_7506                             ; $74c5: $38 $3f

    ld sp, $383f                                  ; $74c7: $31 $3f $38
    ccf                                           ; $74ca: $3f
    dec h                                         ; $74cb: $25
    ccf                                           ; $74cc: $3f
    ld a, [hl+]                                   ; $74cd: $2a
    ccf                                           ; $74ce: $3f
    dec [hl]                                      ; $74cf: $35
    ccf                                           ; $74d0: $3f
    ld a, [hl+]                                   ; $74d1: $2a
    ccf                                           ; $74d2: $3f
    daa                                           ; $74d3: $27
    ccf                                           ; $74d4: $3f
    jr jr_0e8_74f6                                ; $74d5: $18 $1f

    ld [bc], a                                    ; $74d7: $02
    rlca                                          ; $74d8: $07
    ld [bc], a                                    ; $74d9: $02
    nop                                           ; $74da: $00
    sbc h                                         ; $74db: $9c
    add hl, de                                    ; $74dc: $19
    ld a, a                                       ; $74dd: $7f
    dec l                                         ; $74de: $2d
    ld a, a                                       ; $74df: $7f
    ld e, e                                       ; $74e0: $5b
    ld a, a                                       ; $74e1: $7f
    dec bc                                        ; $74e2: $0b
    ld a, a                                       ; $74e3: $7f
    ld e, $7e                                     ; $74e4: $1e $7e
    ld c, h                                       ; $74e6: $4c

jr_0e8_74e7:
    ld a, h                                       ; $74e7: $7c
    inc c                                         ; $74e8: $0c
    ld a, h                                       ; $74e9: $7c
    inc d                                         ; $74ea: $14
    ld a, h                                       ; $74eb: $7c
    inc l                                         ; $74ec: $2c
    ld a, h                                       ; $74ed: $7c
    ld d, $7e                                     ; $74ee: $16 $7e
    ld h, $7e                                     ; $74f0: $26 $7e
    ld e, d                                       ; $74f2: $5a
    ld a, [hl]                                    ; $74f3: $7e
    ld h, h                                       ; $74f4: $64
    ld a, h                                       ; $74f5: $7c

jr_0e8_74f6:
    jr jr_0e8_7570                                ; $74f6: $18 $78

    ld [bc], a                                    ; $74f8: $02
    ld h, b                                       ; $74f9: $60
    rst $38                                       ; $74fa: $ff
    dec c                                         ; $74fb: $0d
    inc b                                         ; $74fc: $04
    ei                                            ; $74fd: $fb
    dec b                                         ; $74fe: $05
    ld a, [c]                                     ; $74ff: $f2
    ei                                            ; $7500: $fb
    ld [c], a                                     ; $7501: $e2
    ld a, [$00e3]                                 ; $7502: $fa $e3 $00
    ld a, [c]                                     ; $7505: $f2

jr_0e8_7506:
    ld sp, hl                                     ; $7506: $f9
    ld a, [c]                                     ; $7507: $f2
    nop                                           ; $7508: $00
    ld [bc], a                                    ; $7509: $02
    rlca                                          ; $750a: $07
    sbc [hl]                                      ; $750b: $9e
    rra                                           ; $750c: $1f
    inc e                                         ; $750d: $1c
    ccf                                           ; $750e: $3f
    scf                                           ; $750f: $37
    ld a, a                                       ; $7510: $7f
    ld e, d                                       ; $7511: $5a
    ld a, a                                       ; $7512: $7f
    ld [hl], b                                    ; $7513: $70
    ld a, a                                       ; $7514: $7f
    ld l, l                                       ; $7515: $6d
    ld [hl-], a                                   ; $7516: $32
    dec a                                         ; $7517: $3d
    rra                                           ; $7518: $1f
    ld [de], a                                    ; $7519: $12
    rra                                           ; $751a: $1f
    ld d, $3f                                     ; $751b: $16 $3f
    jr c, jr_0e8_754e                             ; $751d: $38 $2f

    ccf                                           ; $751f: $3f
    ld [hl], a                                    ; $7520: $77
    ld a, a                                       ; $7521: $7f
    ld l, a                                       ; $7522: $6f
    ld a, l                                       ; $7523: $7d
    or a                                          ; $7524: $b7
    rst $38                                       ; $7525: $ff
    and a                                         ; $7526: $a7
    rst $38                                       ; $7527: $ff
    or a                                          ; $7528: $b7
    rst $38                                       ; $7529: $ff
    ld [bc], a                                    ; $752a: $02
    jr nc, jr_0e8_74e7                            ; $752b: $30 $ba

    jr c, jr_0e8_7557                             ; $752d: $38 $28

    inc a                                         ; $752f: $3c
    inc [hl]                                      ; $7530: $34
    inc a                                         ; $7531: $3c
    inc e                                         ; $7532: $1c
    inc a                                         ; $7533: $3c
    inc l                                         ; $7534: $2c
    jr jr_0e8_756f                                ; $7535: $18 $38

    jr nc, @+$12                                  ; $7537: $30 $10

    jr nc, jr_0e8_754b                            ; $7539: $30 $10

    jr z, jr_0e8_7575                             ; $753b: $28 $38

    jr z, jr_0e8_7577                             ; $753d: $28 $38

    inc e                                         ; $753f: $1c
    inc a                                         ; $7540: $3c
    inc l                                         ; $7541: $2c
    inc a                                         ; $7542: $3c
    ld a, [de]                                    ; $7543: $1a
    ld a, $0a                                     ; $7544: $3e $0a
    ld a, $1a                                     ; $7546: $3e $1a
    ld a, $e9                                     ; $7548: $3e $e9
    rst $38                                       ; $754a: $ff

jr_0e8_754b:
    sub [hl]                                      ; $754b: $96
    cp $bb                                        ; $754c: $fe $bb

jr_0e8_754e:
    rst $38                                       ; $754e: $ff
    rst $30                                       ; $754f: $f7
    rst $18                                       ; $7550: $df
    ei                                            ; $7551: $fb
    rst $18                                       ; $7552: $df
    ld a, e                                       ; $7553: $7b
    ld a, a                                       ; $7554: $7f
    ld e, e                                       ; $7555: $5b
    ld a, a                                       ; $7556: $7f

jr_0e8_7557:
    scf                                           ; $7557: $37
    ccf                                           ; $7558: $3f
    inc sp                                        ; $7559: $33
    ccf                                           ; $755a: $3f
    dec hl                                        ; $755b: $2b
    ccf                                           ; $755c: $3f
    scf                                           ; $755d: $37
    ccf                                           ; $755e: $3f
    ld c, e                                       ; $755f: $4b
    ld a, a                                       ; $7560: $7f
    ld h, e                                       ; $7561: $63
    ld a, a                                       ; $7562: $7f
    ld e, a                                       ; $7563: $5f
    ld a, a                                       ; $7564: $7f
    daa                                           ; $7565: $27
    ccf                                           ; $7566: $3f
    ld [bc], a                                    ; $7567: $02
    inc e                                         ; $7568: $1c
    inc b                                         ; $7569: $04
    nop                                           ; $756a: $00
    sbc d                                         ; $756b: $9a
    ld e, l                                       ; $756c: $5d
    ld a, a                                       ; $756d: $7f
    ld l, a                                       ; $756e: $6f

jr_0e8_756f:
    ld a, e                                       ; $756f: $7b

jr_0e8_7570:
    ld e, a                                       ; $7570: $5f
    ld a, e                                       ; $7571: $7b
    ld e, [hl]                                    ; $7572: $5e
    ld a, [hl]                                    ; $7573: $7e
    ld e, d                                       ; $7574: $5a

jr_0e8_7575:
    ld a, [hl]                                    ; $7575: $7e
    ld l, h                                       ; $7576: $6c

jr_0e8_7577:
    ld a, h                                       ; $7577: $7c
    ld c, h                                       ; $7578: $4c
    ld a, h                                       ; $7579: $7c
    ld d, h                                       ; $757a: $54
    ld a, h                                       ; $757b: $7c
    ld l, h                                       ; $757c: $6c
    ld a, h                                       ; $757d: $7c
    ld d, d                                       ; $757e: $52
    ld a, [hl]                                    ; $757f: $7e
    ld b, [hl]                                    ; $7580: $46
    ld a, [hl]                                    ; $7581: $7e
    ld a, d                                       ; $7582: $7a
    ld a, [hl]                                    ; $7583: $7e
    ld h, h                                       ; $7584: $64
    ld a, h                                       ; $7585: $7c
    ld [bc], a                                    ; $7586: $02
    jr c, jr_0e8_758b                             ; $7587: $38 $02

    nop                                           ; $7589: $00
    rst $38                                       ; $758a: $ff

jr_0e8_758b:
    dec c                                         ; $758b: $0d
    inc b                                         ; $758c: $04
    ei                                            ; $758d: $fb
    dec b                                         ; $758e: $05
    ld a, [c]                                     ; $758f: $f2
    ei                                            ; $7590: $fb
    ld [c], a                                     ; $7591: $e2
    ld a, [$00e3]                                 ; $7592: $fa $e3 $00
    ld a, [c]                                     ; $7595: $f2
    ld sp, hl                                     ; $7596: $f9
    ld a, [c]                                     ; $7597: $f2
    nop                                           ; $7598: $00
    ld [bc], a                                    ; $7599: $02
    rlca                                          ; $759a: $07
    sbc [hl]                                      ; $759b: $9e
    rra                                           ; $759c: $1f
    inc e                                         ; $759d: $1c
    ccf                                           ; $759e: $3f
    scf                                           ; $759f: $37
    ld a, a                                       ; $75a0: $7f
    ld e, d                                       ; $75a1: $5a
    ld a, a                                       ; $75a2: $7f
    ld [hl], b                                    ; $75a3: $70
    ld a, a                                       ; $75a4: $7f
    ld l, l                                       ; $75a5: $6d
    ld [hl-], a                                   ; $75a6: $32
    dec a                                         ; $75a7: $3d
    rra                                           ; $75a8: $1f
    ld [de], a                                    ; $75a9: $12
    rra                                           ; $75aa: $1f
    ld d, $3f                                     ; $75ab: $16 $3f
    jr c, jr_0e8_75de                             ; $75ad: $38 $2f

    ccf                                           ; $75af: $3f
    ld [hl], a                                    ; $75b0: $77
    ld a, a                                       ; $75b1: $7f
    ld l, a                                       ; $75b2: $6f
    ld a, l                                       ; $75b3: $7d
    or a                                          ; $75b4: $b7
    rst $38                                       ; $75b5: $ff
    or a                                          ; $75b6: $b7
    rst $38                                       ; $75b7: $ff
    xor a                                         ; $75b8: $af
    rst $38                                       ; $75b9: $ff
    ld [bc], a                                    ; $75ba: $02
    jr nc, jr_0e8_7577                            ; $75bb: $30 $ba

    jr c, jr_0e8_75e7                             ; $75bd: $38 $28

    inc a                                         ; $75bf: $3c
    inc [hl]                                      ; $75c0: $34
    inc a                                         ; $75c1: $3c
    inc e                                         ; $75c2: $1c
    inc a                                         ; $75c3: $3c
    inc l                                         ; $75c4: $2c
    jr jr_0e8_75ff                                ; $75c5: $18 $38

    jr nc, jr_0e8_75d9                            ; $75c7: $30 $10

    jr nc, jr_0e8_75db                            ; $75c9: $30 $10

    jr z, jr_0e8_7605                             ; $75cb: $28 $38

    jr z, jr_0e8_7607                             ; $75cd: $28 $38

    inc l                                         ; $75cf: $2c
    inc a                                         ; $75d0: $3c
    inc e                                         ; $75d1: $1c
    inc a                                         ; $75d2: $3c
    ld a, [hl+]                                   ; $75d3: $2a
    ld a, $1a                                     ; $75d4: $3e $1a
    ld a, $09                                     ; $75d6: $3e $09
    ccf                                           ; $75d8: $3f

jr_0e8_75d9:
    reti                                          ; $75d9: $d9


    rst $38                                       ; $75da: $ff

jr_0e8_75db:
    ld e, d                                       ; $75db: $5a
    ld a, [hl]                                    ; $75dc: $7e
    db $db                                        ; $75dd: $db

jr_0e8_75de:
    rst $38                                       ; $75de: $ff
    xor a                                         ; $75df: $af
    rst $38                                       ; $75e0: $ff
    db $eb                                        ; $75e1: $eb
    rst $38                                       ; $75e2: $ff
    ei                                            ; $75e3: $fb
    rst $08                                       ; $75e4: $cf
    ei                                            ; $75e5: $fb
    rst $18                                       ; $75e6: $df

jr_0e8_75e7:
    ld d, a                                       ; $75e7: $57
    ld a, a                                       ; $75e8: $7f
    inc sp                                        ; $75e9: $33
    ccf                                           ; $75ea: $3f
    dec sp                                        ; $75eb: $3b
    ccf                                           ; $75ec: $3f
    scf                                           ; $75ed: $37
    ccf                                           ; $75ee: $3f
    cpl                                           ; $75ef: $2f
    ccf                                           ; $75f0: $3f
    inc sp                                        ; $75f1: $33
    ccf                                           ; $75f2: $3f
    cpl                                           ; $75f3: $2f
    ccf                                           ; $75f4: $3f
    inc sp                                        ; $75f5: $33
    ccf                                           ; $75f6: $3f
    ld [bc], a                                    ; $75f7: $02
    rra                                           ; $75f8: $1f
    inc b                                         ; $75f9: $04
    nop                                           ; $75fa: $00
    adc b                                         ; $75fb: $88
    ld l, e                                       ; $75fc: $6b
    ld a, a                                       ; $75fd: $7f
    ld e, a                                       ; $75fe: $5f

jr_0e8_75ff:
    ld a, a                                       ; $75ff: $7f
    ld l, [hl]                                    ; $7600: $6e
    ld a, [hl]                                    ; $7601: $7e
    ld l, [hl]                                    ; $7602: $6e
    ld a, [hl]                                    ; $7603: $7e
    ld [bc], a                                    ; $7604: $02

jr_0e8_7605:
    ld a, h                                       ; $7605: $7c

jr_0e8_7606:
    sub b                                         ; $7606: $90

jr_0e8_7607:
    ld l, h                                       ; $7607: $6c
    ld a, h                                       ; $7608: $7c
    ld l, h                                       ; $7609: $6c
    ld a, h                                       ; $760a: $7c
    ld h, h                                       ; $760b: $64
    ld a, h                                       ; $760c: $7c
    ld l, h                                       ; $760d: $6c
    ld a, h                                       ; $760e: $7c
    ld [hl], h                                    ; $760f: $74
    ld a, h                                       ; $7610: $7c
    halt                                          ; $7611: $76
    ld a, [hl]                                    ; $7612: $7e
    ld a, d                                       ; $7613: $7a
    ld a, [hl]                                    ; $7614: $7e
    ld a, d                                       ; $7615: $7a
    ld a, [hl]                                    ; $7616: $7e
    ld [bc], a                                    ; $7617: $02
    ld a, h                                       ; $7618: $7c
    ld [bc], a                                    ; $7619: $02
    ld [hl], b                                    ; $761a: $70
    rst $38                                       ; $761b: $ff
    dec c                                         ; $761c: $0d
    inc b                                         ; $761d: $04
    ei                                            ; $761e: $fb
    dec b                                         ; $761f: $05
    ld a, [c]                                     ; $7620: $f2
    ei                                            ; $7621: $fb
    db $e3                                        ; $7622: $e3
    ld a, [$00e4]                                 ; $7623: $fa $e4 $00
    di                                            ; $7626: $f3
    ld sp, hl                                     ; $7627: $f9
    di                                            ; $7628: $f3
    nop                                           ; $7629: $00
    ld [bc], a                                    ; $762a: $02
    rlca                                          ; $762b: $07
    sbc [hl]                                      ; $762c: $9e
    rra                                           ; $762d: $1f
    inc e                                         ; $762e: $1c
    ccf                                           ; $762f: $3f
    scf                                           ; $7630: $37
    ld a, a                                       ; $7631: $7f
    ld e, d                                       ; $7632: $5a
    ld a, a                                       ; $7633: $7f
    ld [hl], b                                    ; $7634: $70
    ld a, a                                       ; $7635: $7f
    ld l, l                                       ; $7636: $6d
    ld [hl-], a                                   ; $7637: $32
    dec a                                         ; $7638: $3d
    rra                                           ; $7639: $1f
    ld [de], a                                    ; $763a: $12
    rra                                           ; $763b: $1f
    ld d, $3f                                     ; $763c: $16 $3f
    jr c, jr_0e8_766f                             ; $763e: $38 $2f

    ccf                                           ; $7640: $3f
    ld [hl], a                                    ; $7641: $77
    ld a, a                                       ; $7642: $7f
    ld l, a                                       ; $7643: $6f
    ld a, l                                       ; $7644: $7d
    or a                                          ; $7645: $b7
    rst $38                                       ; $7646: $ff
    and a                                         ; $7647: $a7
    rst $38                                       ; $7648: $ff
    or a                                          ; $7649: $b7
    rst $38                                       ; $764a: $ff
    ld [bc], a                                    ; $764b: $02
    jr nc, jr_0e8_7606                            ; $764c: $30 $b8

    jr c, jr_0e8_7678                             ; $764e: $38 $28

    inc a                                         ; $7650: $3c
    inc [hl]                                      ; $7651: $34
    inc a                                         ; $7652: $3c
    inc e                                         ; $7653: $1c
    inc a                                         ; $7654: $3c
    inc l                                         ; $7655: $2c
    jr jr_0e8_7690                                ; $7656: $18 $38

    jr nc, @+$12                                  ; $7658: $30 $10

    jr nc, jr_0e8_766c                            ; $765a: $30 $10

    jr z, jr_0e8_7696                             ; $765c: $28 $38

    jr z, jr_0e8_7698                             ; $765e: $28 $38

    inc e                                         ; $7660: $1c
    inc a                                         ; $7661: $3c
    inc e                                         ; $7662: $1c
    inc a                                         ; $7663: $3c
    ld a, [hl+]                                   ; $7664: $2a
    ld a, $1a                                     ; $7665: $3e $1a
    ld a, $0a                                     ; $7667: $3e $0a
    ld a, $d9                                     ; $7669: $3e $d9
    rst $38                                       ; $766b: $ff

jr_0e8_766c:
    sub [hl]                                      ; $766c: $96
    cp $bb                                        ; $766d: $fe $bb

jr_0e8_766f:
    rst $38                                       ; $766f: $ff
    rst $30                                       ; $7670: $f7
    rst $18                                       ; $7671: $df
    ei                                            ; $7672: $fb
    rst $18                                       ; $7673: $df
    ld a, e                                       ; $7674: $7b
    ld a, a                                       ; $7675: $7f
    ld e, e                                       ; $7676: $5b
    ld a, a                                       ; $7677: $7f

jr_0e8_7678:
    scf                                           ; $7678: $37
    ccf                                           ; $7679: $3f
    dec hl                                        ; $767a: $2b
    ccf                                           ; $767b: $3f
    scf                                           ; $767c: $37
    ccf                                           ; $767d: $3f
    dec hl                                        ; $767e: $2b
    ccf                                           ; $767f: $3f
    inc hl                                        ; $7680: $23
    ccf                                           ; $7681: $3f
    ld e, a                                       ; $7682: $5f
    ld a, a                                       ; $7683: $7f
    inc hl                                        ; $7684: $23
    ccf                                           ; $7685: $3f
    ld [bc], a                                    ; $7686: $02
    dec e                                         ; $7687: $1d
    ld b, $00                                     ; $7688: $06 $00
    sbc b                                         ; $768a: $98
    ld l, l                                       ; $768b: $6d
    ld a, a                                       ; $768c: $7f
    ld e, a                                       ; $768d: $5f
    ld a, a                                       ; $768e: $7f
    ld c, a                                       ; $768f: $4f

jr_0e8_7690:
    ld a, e                                       ; $7690: $7b
    ld e, [hl]                                    ; $7691: $5e
    ld a, [hl]                                    ; $7692: $7e
    ld l, d                                       ; $7693: $6a

jr_0e8_7694:
    ld a, [hl]                                    ; $7694: $7e
    ld c, h                                       ; $7695: $4c

jr_0e8_7696:
    ld a, h                                       ; $7696: $7c
    ld l, h                                       ; $7697: $6c

jr_0e8_7698:
    ld a, h                                       ; $7698: $7c
    ld [hl], h                                    ; $7699: $74
    ld a, h                                       ; $769a: $7c
    ld l, [hl]                                    ; $769b: $6e
    ld a, [hl]                                    ; $769c: $7e
    ld h, [hl]                                    ; $769d: $66
    ld a, [hl]                                    ; $769e: $7e
    ld a, d                                       ; $769f: $7a
    ld a, [hl]                                    ; $76a0: $7e
    ld [hl], d                                    ; $76a1: $72
    ld a, [hl]                                    ; $76a2: $7e
    ld [bc], a                                    ; $76a3: $02
    ld a, h                                       ; $76a4: $7c
    inc b                                         ; $76a5: $04
    nop                                           ; $76a6: $00
    rst $38                                       ; $76a7: $ff
    dec c                                         ; $76a8: $0d
    inc b                                         ; $76a9: $04
    ei                                            ; $76aa: $fb
    dec b                                         ; $76ab: $05
    ld a, [c]                                     ; $76ac: $f2
    ei                                            ; $76ad: $fb
    ld [c], a                                     ; $76ae: $e2
    ld sp, hl                                     ; $76af: $f9
    ld [c], a                                     ; $76b0: $e2
    rst $38                                       ; $76b1: $ff
    ld a, [c]                                     ; $76b2: $f2
    ld sp, hl                                     ; $76b3: $f9
    ld a, [c]                                     ; $76b4: $f2
    nop                                           ; $76b5: $00
    ld [bc], a                                    ; $76b6: $02
    inc bc                                        ; $76b7: $03
    sbc [hl]                                      ; $76b8: $9e
    rrca                                          ; $76b9: $0f
    ld c, $1f                                     ; $76ba: $0e $1f
    dec de                                        ; $76bc: $1b
    ccf                                           ; $76bd: $3f
    dec l                                         ; $76be: $2d
    ccf                                           ; $76bf: $3f
    jr c, jr_0e8_7701                             ; $76c0: $38 $3f

    ld [hl], $19                                  ; $76c2: $36 $19
    ld e, $0f                                     ; $76c4: $1e $0f
    add hl, bc                                    ; $76c6: $09
    rrca                                          ; $76c7: $0f
    dec bc                                        ; $76c8: $0b
    rra                                           ; $76c9: $1f
    inc e                                         ; $76ca: $1c
    rla                                           ; $76cb: $17
    rra                                           ; $76cc: $1f
    scf                                           ; $76cd: $37
    ccf                                           ; $76ce: $3f
    dec sp                                        ; $76cf: $3b
    ld a, $57                                     ; $76d0: $3e $57
    ld a, a                                       ; $76d2: $7f
    ld e, e                                       ; $76d3: $5b
    ld a, a                                       ; $76d4: $7f
    sbc e                                         ; $76d5: $9b
    rst $38                                       ; $76d6: $ff
    ld [bc], a                                    ; $76d7: $02
    jr nz, jr_0e8_7694                            ; $76d8: $20 $ba

    jr c, jr_0e8_76f4                             ; $76da: $38 $18

    inc a                                         ; $76dc: $3c
    inc [hl]                                      ; $76dd: $34
    ld a, $1a                                     ; $76de: $3e $1a
    ld a, $0e                                     ; $76e0: $3e $0e
    ld a, $36                                     ; $76e2: $3e $36
    inc c                                         ; $76e4: $0c
    inc a                                         ; $76e5: $3c
    jr c, jr_0e8_76f0                             ; $76e6: $38 $08

    jr c, jr_0e8_76f2                             ; $76e8: $38 $08

    inc [hl]                                      ; $76ea: $34
    inc e                                         ; $76eb: $1c
    inc [hl]                                      ; $76ec: $34
    inc a                                         ; $76ed: $3c
    ld l, $3e                                     ; $76ee: $2e $3e

jr_0e8_76f0:
    ld [hl], $3e                                  ; $76f0: $36 $3e

jr_0e8_76f2:
    dec l                                         ; $76f2: $2d
    ccf                                           ; $76f3: $3f

jr_0e8_76f4:
    dec h                                         ; $76f4: $25
    ccf                                           ; $76f5: $3f
    dec l                                         ; $76f6: $2d
    ccf                                           ; $76f7: $3f
    sub a                                         ; $76f8: $97
    rst $38                                       ; $76f9: $ff
    cp e                                          ; $76fa: $bb
    rst $38                                       ; $76fb: $ff
    rst $30                                       ; $76fc: $f7
    rst $38                                       ; $76fd: $ff
    di                                            ; $76fe: $f3
    rst $18                                       ; $76ff: $df
    ld d, e                                       ; $7700: $53

jr_0e8_7701:
    ld a, a                                       ; $7701: $7f
    ld [hl], e                                    ; $7702: $73
    ld a, a                                       ; $7703: $7f
    scf                                           ; $7704: $37
    ccf                                           ; $7705: $3f
    inc sp                                        ; $7706: $33
    ccf                                           ; $7707: $3f
    scf                                           ; $7708: $37
    ccf                                           ; $7709: $3f
    cpl                                           ; $770a: $2f
    ccf                                           ; $770b: $3f
    ld [hl], a                                    ; $770c: $77
    ld a, a                                       ; $770d: $7f
    ld h, a                                       ; $770e: $67
    ld a, a                                       ; $770f: $7f
    ld e, a                                       ; $7710: $5f
    ld a, a                                       ; $7711: $7f
    ld b, a                                       ; $7712: $47
    ld a, a                                       ; $7713: $7f

jr_0e8_7714:
    ld [bc], a                                    ; $7714: $02
    inc a                                         ; $7715: $3c
    ld [bc], a                                    ; $7716: $02
    nop                                           ; $7717: $00
    sbc h                                         ; $7718: $9c
    ld l, e                                       ; $7719: $6b
    ld a, a                                       ; $771a: $7f
    ld e, c                                       ; $771b: $59
    ld a, a                                       ; $771c: $7f
    ld [hl], l                                    ; $771d: $75
    ld a, a                                       ; $771e: $7f
    ld e, a                                       ; $771f: $5f
    ld a, e                                       ; $7720: $7b
    ld e, a                                       ; $7721: $5f
    ld a, e                                       ; $7722: $7b
    ld e, [hl]                                    ; $7723: $5e
    ld a, [hl]                                    ; $7724: $7e
    ld l, d                                       ; $7725: $6a
    ld a, [hl]                                    ; $7726: $7e
    ld c, h                                       ; $7727: $4c
    ld a, h                                       ; $7728: $7c
    ld d, h                                       ; $7729: $54
    ld a, h                                       ; $772a: $7c
    ld l, h                                       ; $772b: $6c
    ld a, h                                       ; $772c: $7c
    ld d, d                                       ; $772d: $52
    ld a, [hl]                                    ; $772e: $7e
    ld b, [hl]                                    ; $772f: $46
    ld a, [hl]                                    ; $7730: $7e
    ld a, d                                       ; $7731: $7a
    ld a, [hl]                                    ; $7732: $7e
    ld h, h                                       ; $7733: $64
    ld a, h                                       ; $7734: $7c
    ld [bc], a                                    ; $7735: $02
    jr c, jr_0e8_773a                             ; $7736: $38 $02

    nop                                           ; $7738: $00
    rst $38                                       ; $7739: $ff

jr_0e8_773a:
    dec c                                         ; $773a: $0d
    inc b                                         ; $773b: $04
    ei                                            ; $773c: $fb
    dec b                                         ; $773d: $05
    ld a, [c]                                     ; $773e: $f2
    ei                                            ; $773f: $fb
    ld [c], a                                     ; $7740: $e2
    ld sp, hl                                     ; $7741: $f9
    ld [c], a                                     ; $7742: $e2
    rst $38                                       ; $7743: $ff
    ld a, [c]                                     ; $7744: $f2
    ld sp, hl                                     ; $7745: $f9
    ld a, [c]                                     ; $7746: $f2
    nop                                           ; $7747: $00
    ld [bc], a                                    ; $7748: $02
    inc bc                                        ; $7749: $03
    sbc [hl]                                      ; $774a: $9e
    rrca                                          ; $774b: $0f
    ld c, $1f                                     ; $774c: $0e $1f
    dec de                                        ; $774e: $1b
    ccf                                           ; $774f: $3f
    dec l                                         ; $7750: $2d
    ccf                                           ; $7751: $3f
    jr c, jr_0e8_7793                             ; $7752: $38 $3f

    ld [hl], $19                                  ; $7754: $36 $19
    ld e, $0f                                     ; $7756: $1e $0f
    add hl, bc                                    ; $7758: $09
    rrca                                          ; $7759: $0f
    dec bc                                        ; $775a: $0b
    rra                                           ; $775b: $1f
    inc e                                         ; $775c: $1c
    rla                                           ; $775d: $17
    rra                                           ; $775e: $1f
    scf                                           ; $775f: $37
    ccf                                           ; $7760: $3f
    dec sp                                        ; $7761: $3b
    ld a, $57                                     ; $7762: $3e $57
    ld a, a                                       ; $7764: $7f
    ld e, e                                       ; $7765: $5b
    ld a, a                                       ; $7766: $7f
    sub e                                         ; $7767: $93
    rst $38                                       ; $7768: $ff
    ld [bc], a                                    ; $7769: $02
    jr nz, jr_0e8_7714                            ; $776a: $20 $a8

    jr c, jr_0e8_7786                             ; $776c: $38 $18

    inc a                                         ; $776e: $3c
    inc [hl]                                      ; $776f: $34
    ld a, $1a                                     ; $7770: $3e $1a
    ld a, $0e                                     ; $7772: $3e $0e
    ld a, $36                                     ; $7774: $3e $36
    inc c                                         ; $7776: $0c
    inc a                                         ; $7777: $3c
    jr c, jr_0e8_7782                             ; $7778: $38 $08

    jr c, jr_0e8_7784                             ; $777a: $38 $08

    inc [hl]                                      ; $777c: $34
    inc e                                         ; $777d: $1c
    inc [hl]                                      ; $777e: $34
    inc a                                         ; $777f: $3c
    ld l, $3e                                     ; $7780: $2e $3e

jr_0e8_7782:
    ld [hl], $3e                                  ; $7782: $36 $3e

jr_0e8_7784:
    dec l                                         ; $7784: $2d
    ccf                                           ; $7785: $3f

jr_0e8_7786:
    dec l                                         ; $7786: $2d
    ccf                                           ; $7787: $3f
    dec [hl]                                      ; $7788: $35
    ccf                                           ; $7789: $3f
    sbc e                                         ; $778a: $9b
    rst $38                                       ; $778b: $ff
    rst $10                                       ; $778c: $d7
    rst $38                                       ; $778d: $ff
    ei                                            ; $778e: $fb
    rst $38                                       ; $778f: $ff
    ld [hl], a                                    ; $7790: $77
    ld a, a                                       ; $7791: $7f
    ld [hl], a                                    ; $7792: $77

jr_0e8_7793:
    ld a, a                                       ; $7793: $7f
    ld [bc], a                                    ; $7794: $02
    ccf                                           ; $7795: $3f
    sub b                                         ; $7796: $90
    scf                                           ; $7797: $37
    ccf                                           ; $7798: $3f
    scf                                           ; $7799: $37
    ccf                                           ; $779a: $3f
    daa                                           ; $779b: $27
    ccf                                           ; $779c: $3f
    scf                                           ; $779d: $37
    ccf                                           ; $779e: $3f
    cpl                                           ; $779f: $2f
    ccf                                           ; $77a0: $3f
    ld l, a                                       ; $77a1: $6f
    ld a, a                                       ; $77a2: $7f
    ld e, a                                       ; $77a3: $5f
    ld a, a                                       ; $77a4: $7f
    ld e, a                                       ; $77a5: $5f
    ld a, a                                       ; $77a6: $7f
    ld [bc], a                                    ; $77a7: $02
    ccf                                           ; $77a8: $3f
    ld [bc], a                                    ; $77a9: $02
    ld c, $9c                                     ; $77aa: $0e $9c
    ld e, d                                       ; $77ac: $5a
    ld a, [hl]                                    ; $77ad: $7e
    ld e, e                                       ; $77ae: $5b
    ld a, a                                       ; $77af: $7f
    ld [hl], l                                    ; $77b0: $75
    ld a, a                                       ; $77b1: $7f
    ld d, l                                       ; $77b2: $55
    ld a, a                                       ; $77b3: $7f
    ld e, a                                       ; $77b4: $5f
    ld [hl], e                                    ; $77b5: $73
    ld e, a                                       ; $77b6: $5f

jr_0e8_77b7:
    ld a, e                                       ; $77b7: $7b
    ld l, d                                       ; $77b8: $6a
    ld a, [hl]                                    ; $77b9: $7e
    ld c, h                                       ; $77ba: $4c
    ld a, h                                       ; $77bb: $7c
    ld e, h                                       ; $77bc: $5c
    ld a, h                                       ; $77bd: $7c
    ld l, h                                       ; $77be: $6c
    ld a, h                                       ; $77bf: $7c
    ld [hl], h                                    ; $77c0: $74
    ld a, h                                       ; $77c1: $7c
    ld c, h                                       ; $77c2: $4c
    ld a, h                                       ; $77c3: $7c
    ld [hl], h                                    ; $77c4: $74
    ld a, h                                       ; $77c5: $7c
    ld c, h                                       ; $77c6: $4c
    ld a, h                                       ; $77c7: $7c
    ld [bc], a                                    ; $77c8: $02
    ld a, b                                       ; $77c9: $78
    ld [bc], a                                    ; $77ca: $02
    nop                                           ; $77cb: $00
    rst $38                                       ; $77cc: $ff
    dec c                                         ; $77cd: $0d
    inc b                                         ; $77ce: $04
    ei                                            ; $77cf: $fb
    dec b                                         ; $77d0: $05
    ld a, [c]                                     ; $77d1: $f2
    ei                                            ; $77d2: $fb
    db $e3                                        ; $77d3: $e3
    ld a, [$00e4]                                 ; $77d4: $fa $e4 $00
    di                                            ; $77d7: $f3
    ld sp, hl                                     ; $77d8: $f9
    di                                            ; $77d9: $f3
    nop                                           ; $77da: $00
    ld [bc], a                                    ; $77db: $02
    rlca                                          ; $77dc: $07
    sbc [hl]                                      ; $77dd: $9e
    rra                                           ; $77de: $1f
    inc e                                         ; $77df: $1c
    ccf                                           ; $77e0: $3f
    scf                                           ; $77e1: $37
    ld a, a                                       ; $77e2: $7f
    ld e, d                                       ; $77e3: $5a
    ld a, a                                       ; $77e4: $7f
    ld [hl], b                                    ; $77e5: $70
    ld a, a                                       ; $77e6: $7f
    ld l, l                                       ; $77e7: $6d
    ld [hl-], a                                   ; $77e8: $32
    dec a                                         ; $77e9: $3d
    rra                                           ; $77ea: $1f
    ld [de], a                                    ; $77eb: $12
    rra                                           ; $77ec: $1f
    ld d, $3f                                     ; $77ed: $16 $3f
    jr c, jr_0e8_7820                             ; $77ef: $38 $2f

    ccf                                           ; $77f1: $3f
    ld [hl], a                                    ; $77f2: $77
    ld a, a                                       ; $77f3: $7f
    ld [hl], a                                    ; $77f4: $77
    ld a, l                                       ; $77f5: $7d
    xor a                                         ; $77f6: $af
    rst $38                                       ; $77f7: $ff
    or a                                          ; $77f8: $b7
    rst $38                                       ; $77f9: $ff
    and a                                         ; $77fa: $a7
    rst $38                                       ; $77fb: $ff
    ld [bc], a                                    ; $77fc: $02
    jr nc, jr_0e8_77b7                            ; $77fd: $30 $b8

    jr c, jr_0e8_7829                             ; $77ff: $38 $28

    inc a                                         ; $7801: $3c
    inc [hl]                                      ; $7802: $34
    inc a                                         ; $7803: $3c
    inc e                                         ; $7804: $1c
    inc a                                         ; $7805: $3c
    inc l                                         ; $7806: $2c
    jr jr_0e8_7841                                ; $7807: $18 $38

    jr nc, @+$12                                  ; $7809: $30 $10

    jr nc, jr_0e8_781d                            ; $780b: $30 $10

    jr z, jr_0e8_7847                             ; $780d: $28 $38

    jr z, jr_0e8_7849                             ; $780f: $28 $38

    inc e                                         ; $7811: $1c
    inc a                                         ; $7812: $3c
    inc l                                         ; $7813: $2c
    inc a                                         ; $7814: $3c
    ld a, [de]                                    ; $7815: $1a
    ld a, $0a                                     ; $7816: $3e $0a
    ld a, $1a                                     ; $7818: $3e $1a
    ld a, $e9                                     ; $781a: $3e $e9
    rst $38                                       ; $781c: $ff

jr_0e8_781d:
    sbc d                                         ; $781d: $9a
    cp $b7                                        ; $781e: $fe $b7

jr_0e8_7820:
    rst $38                                       ; $7820: $ff
    ei                                            ; $7821: $fb
    rst $38                                       ; $7822: $ff
    di                                            ; $7823: $f3
    rst $18                                       ; $7824: $df
    ld a, e                                       ; $7825: $7b
    ld a, a                                       ; $7826: $7f
    ld d, a                                       ; $7827: $57
    ld a, a                                       ; $7828: $7f

jr_0e8_7829:
    inc sp                                        ; $7829: $33
    ccf                                           ; $782a: $3f
    scf                                           ; $782b: $37
    ccf                                           ; $782c: $3f
    cpl                                           ; $782d: $2f
    ccf                                           ; $782e: $3f
    ld [hl], a                                    ; $782f: $77
    ld a, a                                       ; $7830: $7f
    ld h, a                                       ; $7831: $67
    ld a, a                                       ; $7832: $7f
    ld e, a                                       ; $7833: $5f
    ld a, a                                       ; $7834: $7f
    ld c, a                                       ; $7835: $4f
    ld a, a                                       ; $7836: $7f
    ld [bc], a                                    ; $7837: $02
    ccf                                           ; $7838: $3f
    ld b, $00                                     ; $7839: $06 $00
    sbc b                                         ; $783b: $98
    ld e, l                                       ; $783c: $5d
    ld a, a                                       ; $783d: $7f
    ld l, a                                       ; $783e: $6f
    ld a, e                                       ; $783f: $7b
    ld e, a                                       ; $7840: $5f

jr_0e8_7841:
    ld a, e                                       ; $7841: $7b
    ld e, [hl]                                    ; $7842: $5e
    ld a, [hl]                                    ; $7843: $7e
    ld e, d                                       ; $7844: $5a

jr_0e8_7845:
    ld a, [hl]                                    ; $7845: $7e
    ld l, h                                       ; $7846: $6c

jr_0e8_7847:
    ld a, h                                       ; $7847: $7c
    ld d, h                                       ; $7848: $54

jr_0e8_7849:
    ld a, h                                       ; $7849: $7c
    ld l, h                                       ; $784a: $6c
    ld a, h                                       ; $784b: $7c
    ld d, h                                       ; $784c: $54
    ld a, h                                       ; $784d: $7c
    ld b, h                                       ; $784e: $44
    ld a, h                                       ; $784f: $7c
    ld a, d                                       ; $7850: $7a
    ld a, [hl]                                    ; $7851: $7e
    ld b, h                                       ; $7852: $44
    ld a, h                                       ; $7853: $7c
    ld [bc], a                                    ; $7854: $02
    jr c, jr_0e8_785b                             ; $7855: $38 $04

    nop                                           ; $7857: $00
    rst $38                                       ; $7858: $ff
    dec c                                         ; $7859: $0d
    inc b                                         ; $785a: $04

jr_0e8_785b:
    ei                                            ; $785b: $fb
    dec b                                         ; $785c: $05
    ld a, [c]                                     ; $785d: $f2
    ei                                            ; $785e: $fb
    ld [c], a                                     ; $785f: $e2
    ld a, [$00e3]                                 ; $7860: $fa $e3 $00
    ld a, [c]                                     ; $7863: $f2
    ld sp, hl                                     ; $7864: $f9
    ld a, [c]                                     ; $7865: $f2
    nop                                           ; $7866: $00
    ld [bc], a                                    ; $7867: $02
    rlca                                          ; $7868: $07
    sbc [hl]                                      ; $7869: $9e
    rra                                           ; $786a: $1f
    inc e                                         ; $786b: $1c
    ccf                                           ; $786c: $3f
    scf                                           ; $786d: $37
    ld a, a                                       ; $786e: $7f
    ld e, d                                       ; $786f: $5a
    ld a, a                                       ; $7870: $7f
    ld [hl], b                                    ; $7871: $70
    ld a, a                                       ; $7872: $7f
    ld l, l                                       ; $7873: $6d
    ld [hl-], a                                   ; $7874: $32
    dec a                                         ; $7875: $3d
    rra                                           ; $7876: $1f
    ld [de], a                                    ; $7877: $12
    rra                                           ; $7878: $1f
    ld d, $3f                                     ; $7879: $16 $3f
    jr c, jr_0e8_78ac                             ; $787b: $38 $2f

    ccf                                           ; $787d: $3f
    ld [hl], a                                    ; $787e: $77
    ld a, a                                       ; $787f: $7f
    ld l, a                                       ; $7880: $6f
    ld a, l                                       ; $7881: $7d
    or a                                          ; $7882: $b7
    rst $38                                       ; $7883: $ff
    and a                                         ; $7884: $a7
    rst $38                                       ; $7885: $ff
    or a                                          ; $7886: $b7
    rst $38                                       ; $7887: $ff
    ld [bc], a                                    ; $7888: $02
    jr nc, jr_0e8_7845                            ; $7889: $30 $ba

    jr c, jr_0e8_78b5                             ; $788b: $38 $28

    inc a                                         ; $788d: $3c
    inc [hl]                                      ; $788e: $34
    inc a                                         ; $788f: $3c
    inc e                                         ; $7890: $1c
    inc a                                         ; $7891: $3c
    inc l                                         ; $7892: $2c
    jr jr_0e8_78cd                                ; $7893: $18 $38

    jr nc, jr_0e8_78a7                            ; $7895: $30 $10

    jr nc, jr_0e8_78a9                            ; $7897: $30 $10

    jr z, jr_0e8_78d3                             ; $7899: $28 $38

    jr z, jr_0e8_78d5                             ; $789b: $28 $38

    inc l                                         ; $789d: $2c
    inc a                                         ; $789e: $3c
    inc e                                         ; $789f: $1c
    inc a                                         ; $78a0: $3c
    ld a, [hl+]                                   ; $78a1: $2a
    ld a, $1a                                     ; $78a2: $3e $1a
    ld a, $19                                     ; $78a4: $3e $19
    ccf                                           ; $78a6: $3f

jr_0e8_78a7:
    jp hl                                         ; $78a7: $e9


    rst $38                                       ; $78a8: $ff

jr_0e8_78a9:
    sub $fe                                       ; $78a9: $d6 $fe
    sbc e                                         ; $78ab: $9b

jr_0e8_78ac:
    rst $38                                       ; $78ac: $ff
    xor a                                         ; $78ad: $af
    rst $38                                       ; $78ae: $ff
    ei                                            ; $78af: $fb
    rst $18                                       ; $78b0: $df
    ei                                            ; $78b1: $fb
    rst $18                                       ; $78b2: $df
    ld a, e                                       ; $78b3: $7b
    ld a, a                                       ; $78b4: $7f

jr_0e8_78b5:
    ld d, a                                       ; $78b5: $57
    ld a, a                                       ; $78b6: $7f
    inc sp                                        ; $78b7: $33
    ccf                                           ; $78b8: $3f
    dec hl                                        ; $78b9: $2b
    ccf                                           ; $78ba: $3f
    scf                                           ; $78bb: $37
    ccf                                           ; $78bc: $3f
    ld c, e                                       ; $78bd: $4b
    ld a, a                                       ; $78be: $7f
    ld h, e                                       ; $78bf: $63
    ld a, a                                       ; $78c0: $7f
    ld e, a                                       ; $78c1: $5f
    ld a, a                                       ; $78c2: $7f
    daa                                           ; $78c3: $27
    ccf                                           ; $78c4: $3f
    ld [bc], a                                    ; $78c5: $02
    inc e                                         ; $78c6: $1c
    inc b                                         ; $78c7: $04
    nop                                           ; $78c8: $00
    sbc d                                         ; $78c9: $9a
    ld e, l                                       ; $78ca: $5d
    ld a, a                                       ; $78cb: $7f
    ld l, a                                       ; $78cc: $6f

jr_0e8_78cd:
    ld a, a                                       ; $78cd: $7f
    ld c, a                                       ; $78ce: $4f
    ld a, e                                       ; $78cf: $7b
    ld c, d                                       ; $78d0: $4a
    ld a, [hl]                                    ; $78d1: $7e
    ld c, [hl]                                    ; $78d2: $4e

jr_0e8_78d3:
    ld a, [hl]                                    ; $78d3: $7e
    ld l, h                                       ; $78d4: $6c

jr_0e8_78d5:
    ld a, h                                       ; $78d5: $7c
    ld c, h                                       ; $78d6: $4c
    ld a, h                                       ; $78d7: $7c
    ld l, h                                       ; $78d8: $6c
    ld a, h                                       ; $78d9: $7c
    ld [hl], h                                    ; $78da: $74
    ld a, h                                       ; $78db: $7c
    ld l, [hl]                                    ; $78dc: $6e
    ld a, [hl]                                    ; $78dd: $7e
    ld h, [hl]                                    ; $78de: $66
    ld a, [hl]                                    ; $78df: $7e
    ld a, d                                       ; $78e0: $7a
    ld a, [hl]                                    ; $78e1: $7e
    ld h, d                                       ; $78e2: $62
    ld a, [hl]                                    ; $78e3: $7e
    ld [bc], a                                    ; $78e4: $02
    inc a                                         ; $78e5: $3c
    ld [bc], a                                    ; $78e6: $02
    nop                                           ; $78e7: $00
    rst $38                                       ; $78e8: $ff
    dec c                                         ; $78e9: $0d
    inc b                                         ; $78ea: $04
    ei                                            ; $78eb: $fb
    dec b                                         ; $78ec: $05
    ld a, [c]                                     ; $78ed: $f2
    ei                                            ; $78ee: $fb
    ld [c], a                                     ; $78ef: $e2
    db $fc                                        ; $78f0: $fc
    db $e3                                        ; $78f1: $e3
    rst $38                                       ; $78f2: $ff
    ld a, [c]                                     ; $78f3: $f2
    ei                                            ; $78f4: $fb
    ld a, [c]                                     ; $78f5: $f2
    cp $02                                        ; $78f6: $fe $02
    ld [hl], $9e                                  ; $78f8: $36 $9e
    ld a, a                                       ; $78fa: $7f
    ld e, c                                       ; $78fb: $59
    rst $38                                       ; $78fc: $ff
    or a                                          ; $78fd: $b7
    rst $38                                       ; $78fe: $ff
    cp $ff                                        ; $78ff: $fe $ff
    db $ec                                        ; $7901: $ec
    ld a, a                                       ; $7902: $7f
    ld a, e                                       ; $7903: $7b
    ld a, $37                                     ; $7904: $3e $37
    ld a, a                                       ; $7906: $7f
    ld a, b                                       ; $7907: $78
    cpl                                           ; $7908: $2f
    jr z, jr_0e8_792a                             ; $7909: $28 $1f

    inc e                                         ; $790b: $1c
    daa                                           ; $790c: $27
    ccf                                           ; $790d: $3f
    dec de                                        ; $790e: $1b
    ld e, $35                                     ; $790f: $1e $35
    ccf                                           ; $7911: $3f
    halt                                          ; $7912: $76
    ld a, a                                       ; $7913: $7f
    ld l, l                                       ; $7914: $6d
    ld a, a                                       ; $7915: $7f
    ld [hl], $3f                                  ; $7916: $36 $3f
    ld [bc], a                                    ; $7918: $02
    inc b                                         ; $7919: $04
    add d                                         ; $791a: $82
    ld b, $02                                     ; $791b: $06 $02
    ld [bc], a                                    ; $791d: $02
    inc b                                         ; $791e: $04
    adc b                                         ; $791f: $88
    ld b, $02                                     ; $7920: $06 $02
    ld b, $02                                     ; $7922: $06 $02
    inc bc                                        ; $7924: $03
    dec b                                         ; $7925: $05
    ld b, $02                                     ; $7926: $06 $02
    inc b                                         ; $7928: $04
    inc b                                         ; $7929: $04

jr_0e8_792a:
    ld [bc], a                                    ; $792a: $02
    nop                                           ; $792b: $00
    ld b, $04                                     ; $792c: $06 $04
    add [hl]                                      ; $792e: $86
    ld [bc], a                                    ; $792f: $02
    ld b, $02                                     ; $7930: $06 $02
    ld b, $3a                                     ; $7932: $06 $3a
    cp $02                                        ; $7934: $fe $02
    db $10                                        ; $7936: $10
    sbc d                                         ; $7937: $9a
    dec d                                         ; $7938: $15
    rra                                           ; $7939: $1f
    ld de, $131f                                  ; $793a: $11 $1f $13
    ld e, $3b                                     ; $793d: $1e $3b
    dec a                                         ; $793f: $3d
    dec sp                                        ; $7940: $3b
    ccf                                           ; $7941: $3f
    ld l, $3f                                     ; $7942: $2e $3f
    ld e, [hl]                                    ; $7944: $5e
    ld a, a                                       ; $7945: $7f
    ld h, b                                       ; $7946: $60
    ld a, a                                       ; $7947: $7f
    ld d, l                                       ; $7948: $55
    ld a, a                                       ; $7949: $7f
    adc b                                         ; $794a: $88
    rst $38                                       ; $794b: $ff
    push de                                       ; $794c: $d5
    rst $38                                       ; $794d: $ff
    cp a                                          ; $794e: $bf
    rst $38                                       ; $794f: $ff
    ld h, b                                       ; $7950: $60
    ld a, a                                       ; $7951: $7f
    ld [bc], a                                    ; $7952: $02
    rra                                           ; $7953: $1f
    inc b                                         ; $7954: $04
    nop                                           ; $7955: $00
    add e                                         ; $7956: $83
    ld [bc], a                                    ; $7957: $02
    ld b, $02                                     ; $7958: $06 $02
    inc bc                                        ; $795a: $03
    ld b, $83                                     ; $795b: $06 $83
    ld [bc], a                                    ; $795d: $02
    ld b, $02                                     ; $795e: $06 $02
    inc bc                                        ; $7960: $03
    ld b, $81                                     ; $7961: $06 $81
    ld [bc], a                                    ; $7963: $02
    inc bc                                        ; $7964: $03
    ld b, $81                                     ; $7965: $06 $81
    ld [bc], a                                    ; $7967: $02
    inc bc                                        ; $7968: $03
    ld b, $82                                     ; $7969: $06 $82
    ld [bc], a                                    ; $796b: $02
    ld b, $02                                     ; $796c: $06 $02
    rlca                                          ; $796e: $07
    add d                                         ; $796f: $82

jr_0e8_7970:
    inc bc                                        ; $7970: $03
    rlca                                          ; $7971: $07
    ld [bc], a                                    ; $7972: $02
    ld b, $02                                     ; $7973: $06 $02
    nop                                           ; $7975: $00
    rst $38                                       ; $7976: $ff
    dec c                                         ; $7977: $0d
    inc b                                         ; $7978: $04
    ei                                            ; $7979: $fb
    dec b                                         ; $797a: $05
    ld a, [c]                                     ; $797b: $f2
    ei                                            ; $797c: $fb
    ld [c], a                                     ; $797d: $e2
    db $fc                                        ; $797e: $fc
    db $e3                                        ; $797f: $e3
    rst $38                                       ; $7980: $ff
    ld a, [c]                                     ; $7981: $f2
    ei                                            ; $7982: $fb
    ld a, [c]                                     ; $7983: $f2
    nop                                           ; $7984: $00
    ld [bc], a                                    ; $7985: $02
    ld [hl], $9e                                  ; $7986: $36 $9e
    ld a, a                                       ; $7988: $7f
    ld e, c                                       ; $7989: $59
    rst $38                                       ; $798a: $ff
    or a                                          ; $798b: $b7
    rst $38                                       ; $798c: $ff
    cp $ff                                        ; $798d: $fe $ff
    db $ec                                        ; $798f: $ec
    ld a, a                                       ; $7990: $7f
    ld a, e                                       ; $7991: $7b
    ld a, $37                                     ; $7992: $3e $37
    ld a, a                                       ; $7994: $7f
    ld a, b                                       ; $7995: $78
    cpl                                           ; $7996: $2f
    jr z, jr_0e8_79b8                             ; $7997: $28 $1f

    inc e                                         ; $7999: $1c
    daa                                           ; $799a: $27
    ccf                                           ; $799b: $3f
    dec de                                        ; $799c: $1b
    ld e, $35                                     ; $799d: $1e $35
    ccf                                           ; $799f: $3f
    halt                                          ; $79a0: $76
    ld a, a                                       ; $79a1: $7f
    ld [hl], l                                    ; $79a2: $75
    ld a, a                                       ; $79a3: $7f
    ld h, $3f                                     ; $79a4: $26 $3f
    ld [bc], a                                    ; $79a6: $02
    inc b                                         ; $79a7: $04
    add d                                         ; $79a8: $82
    ld b, $02                                     ; $79a9: $06 $02
    ld [bc], a                                    ; $79ab: $02
    inc b                                         ; $79ac: $04
    adc b                                         ; $79ad: $88
    ld b, $02                                     ; $79ae: $06 $02
    ld b, $02                                     ; $79b0: $06 $02
    inc bc                                        ; $79b2: $03
    dec b                                         ; $79b3: $05
    ld b, $02                                     ; $79b4: $06 $02
    inc b                                         ; $79b6: $04
    inc b                                         ; $79b7: $04

jr_0e8_79b8:
    ld [bc], a                                    ; $79b8: $02
    nop                                           ; $79b9: $00
    ld b, $04                                     ; $79ba: $06 $04
    add [hl]                                      ; $79bc: $86
    ld [bc], a                                    ; $79bd: $02
    ld b, $02                                     ; $79be: $06 $02
    ld b, $52                                     ; $79c0: $06 $52
    cp $02                                        ; $79c2: $fe $02
    db $10                                        ; $79c4: $10
    sbc d                                         ; $79c5: $9a
    ld a, [de]                                    ; $79c6: $1a
    rra                                           ; $79c7: $1f
    jr @+$21                                      ; $79c8: $18 $1f

    add hl, de                                    ; $79ca: $19
    rra                                           ; $79cb: $1f
    dec a                                         ; $79cc: $3d
    ccf                                           ; $79cd: $3f
    cpl                                           ; $79ce: $2f
    ccf                                           ; $79cf: $3f
    daa                                           ; $79d0: $27
    ccf                                           ; $79d1: $3f
    ld l, $3f                                     ; $79d2: $2e $3f
    ld d, b                                       ; $79d4: $50
    ld a, a                                       ; $79d5: $7f
    ld [hl], d                                    ; $79d6: $72
    ld a, a                                       ; $79d7: $7f
    ld c, h                                       ; $79d8: $4c
    ld a, a                                       ; $79d9: $7f
    ld [$9fff], a                                 ; $79da: $ea $ff $9f
    rst $38                                       ; $79dd: $ff
    ld [hl], b                                    ; $79de: $70
    ld a, a                                       ; $79df: $7f
    ld [bc], a                                    ; $79e0: $02
    rrca                                          ; $79e1: $0f
    inc b                                         ; $79e2: $04
    nop                                           ; $79e3: $00
    inc bc                                        ; $79e4: $03
    jr @-$7b                                      ; $79e5: $18 $83

    ld [$0818], sp                                ; $79e7: $08 $18 $08
    ld [bc], a                                    ; $79ea: $02
    jr jr_0e8_7970                                ; $79eb: $18 $83

    ld [$0c18], sp                                ; $79ed: $08 $18 $0c
    inc bc                                        ; $79f0: $03
    inc e                                         ; $79f1: $1c
    adc b                                         ; $79f2: $88
    inc c                                         ; $79f3: $0c
    inc e                                         ; $79f4: $1c
    ld d, $1e                                     ; $79f5: $16 $1e
    ld c, $1e                                     ; $79f7: $0e $1e
    rla                                           ; $79f9: $17
    rra                                           ; $79fa: $1f
    ld [bc], a                                    ; $79fb: $02
    ld e, $82                                     ; $79fc: $1e $82
    inc b                                         ; $79fe: $04
    inc e                                         ; $79ff: $1c
    ld [bc], a                                    ; $7a00: $02
    jr jr_0e8_7a05                                ; $7a01: $18 $02

    nop                                           ; $7a03: $00
    rst $38                                       ; $7a04: $ff

jr_0e8_7a05:
    dec c                                         ; $7a05: $0d
    inc b                                         ; $7a06: $04
    ei                                            ; $7a07: $fb
    dec b                                         ; $7a08: $05
    ld a, [c]                                     ; $7a09: $f2
    ei                                            ; $7a0a: $fb
    db $e3                                        ; $7a0b: $e3
    db $fc                                        ; $7a0c: $fc
    db $e4                                        ; $7a0d: $e4
    rst $38                                       ; $7a0e: $ff
    di                                            ; $7a0f: $f3
    ei                                            ; $7a10: $fb
    di                                            ; $7a11: $f3
    rst $38                                       ; $7a12: $ff
    ld [bc], a                                    ; $7a13: $02
    ld [hl], $9e                                  ; $7a14: $36 $9e
    ld a, a                                       ; $7a16: $7f
    ld e, c                                       ; $7a17: $59
    rst $38                                       ; $7a18: $ff
    or a                                          ; $7a19: $b7
    rst $38                                       ; $7a1a: $ff
    cp $ff                                        ; $7a1b: $fe $ff
    db $ec                                        ; $7a1d: $ec
    ld a, a                                       ; $7a1e: $7f
    ld a, e                                       ; $7a1f: $7b
    ld a, $37                                     ; $7a20: $3e $37
    ld a, a                                       ; $7a22: $7f
    ld a, b                                       ; $7a23: $78
    cpl                                           ; $7a24: $2f
    jr z, jr_0e8_7a46                             ; $7a25: $28 $1f

    inc e                                         ; $7a27: $1c
    daa                                           ; $7a28: $27
    ccf                                           ; $7a29: $3f
    dec de                                        ; $7a2a: $1b
    ld e, $35                                     ; $7a2b: $1e $35
    ccf                                           ; $7a2d: $3f
    halt                                          ; $7a2e: $76
    ld a, a                                       ; $7a2f: $7f
    ld l, l                                       ; $7a30: $6d
    ld a, a                                       ; $7a31: $7f
    ld h, $3f                                     ; $7a32: $26 $3f
    ld [bc], a                                    ; $7a34: $02
    inc b                                         ; $7a35: $04
    add d                                         ; $7a36: $82
    ld b, $02                                     ; $7a37: $06 $02
    ld [bc], a                                    ; $7a39: $02
    inc b                                         ; $7a3a: $04
    adc b                                         ; $7a3b: $88
    ld b, $02                                     ; $7a3c: $06 $02
    ld b, $02                                     ; $7a3e: $06 $02
    inc bc                                        ; $7a40: $03
    dec b                                         ; $7a41: $05
    ld b, $02                                     ; $7a42: $06 $02
    inc b                                         ; $7a44: $04
    inc b                                         ; $7a45: $04

jr_0e8_7a46:
    ld [bc], a                                    ; $7a46: $02
    nop                                           ; $7a47: $00
    ld b, $04                                     ; $7a48: $06 $04
    add [hl]                                      ; $7a4a: $86
    ld [bc], a                                    ; $7a4b: $02
    ld b, $02                                     ; $7a4c: $06 $02
    ld b, $52                                     ; $7a4e: $06 $52
    cp $02                                        ; $7a50: $fe $02
    db $10                                        ; $7a52: $10
    sbc b                                         ; $7a53: $98
    ld [de], a                                    ; $7a54: $12
    rra                                           ; $7a55: $1f
    jr jr_0e8_7a77                                ; $7a56: $18 $1f

    add hl, de                                    ; $7a58: $19
    ld e, $3d                                     ; $7a59: $1e $3d
    ccf                                           ; $7a5b: $3f
    cpl                                           ; $7a5c: $2f
    ccf                                           ; $7a5d: $3f
    ld l, a                                       ; $7a5e: $6f
    ld a, a                                       ; $7a5f: $7f
    ld d, b                                       ; $7a60: $50
    ld a, a                                       ; $7a61: $7f
    ld d, d                                       ; $7a62: $52
    ld a, a                                       ; $7a63: $7f
    ld c, b                                       ; $7a64: $48
    ld a, a                                       ; $7a65: $7f
    sub $ff                                       ; $7a66: $d6 $ff
    cp a                                          ; $7a68: $bf
    rst $38                                       ; $7a69: $ff
    ld h, b                                       ; $7a6a: $60
    ld a, a                                       ; $7a6b: $7f
    ld [bc], a                                    ; $7a6c: $02
    rra                                           ; $7a6d: $1f
    ld b, $00                                     ; $7a6e: $06 $00
    inc bc                                        ; $7a70: $03
    inc c                                         ; $7a71: $0c
    add c                                         ; $7a72: $81
    inc b                                         ; $7a73: $04
    inc b                                         ; $7a74: $04
    inc c                                         ; $7a75: $0c
    add d                                         ; $7a76: $82

jr_0e8_7a77:
    inc b                                         ; $7a77: $04
    inc c                                         ; $7a78: $0c
    ld [bc], a                                    ; $7a79: $02
    ld c, $81                                     ; $7a7a: $0e $81
    ld b, $03                                     ; $7a7c: $06 $03
    ld c, $83                                     ; $7a7e: $0e $83
    ld b, $0e                                     ; $7a80: $06 $0e
    dec bc                                        ; $7a82: $0b
    inc bc                                        ; $7a83: $03
    rrca                                          ; $7a84: $0f
    add d                                         ; $7a85: $82
    ld [bc], a                                    ; $7a86: $02
    ld c, $02                                     ; $7a87: $0e $02
    inc c                                         ; $7a89: $0c
    inc b                                         ; $7a8a: $04
    nop                                           ; $7a8b: $00
    rst $38                                       ; $7a8c: $ff
    dec c                                         ; $7a8d: $0d
    inc b                                         ; $7a8e: $04
    ei                                            ; $7a8f: $fb
    dec b                                         ; $7a90: $05
    ld a, [c]                                     ; $7a91: $f2
    ei                                            ; $7a92: $fb
    ld [c], a                                     ; $7a93: $e2
    db $fc                                        ; $7a94: $fc
    db $e3                                        ; $7a95: $e3
    rst $38                                       ; $7a96: $ff
    ld a, [c]                                     ; $7a97: $f2
    ei                                            ; $7a98: $fb
    ld a, [c]                                     ; $7a99: $f2
    cp $02                                        ; $7a9a: $fe $02
    ld [hl], $9e                                  ; $7a9c: $36 $9e
    ld a, a                                       ; $7a9e: $7f
    ld e, c                                       ; $7a9f: $59
    rst $38                                       ; $7aa0: $ff
    or a                                          ; $7aa1: $b7
    rst $38                                       ; $7aa2: $ff
    cp $ff                                        ; $7aa3: $fe $ff
    db $ec                                        ; $7aa5: $ec
    ld a, a                                       ; $7aa6: $7f
    ld a, e                                       ; $7aa7: $7b
    ld a, $37                                     ; $7aa8: $3e $37
    ld a, a                                       ; $7aaa: $7f
    ld a, b                                       ; $7aab: $78
    cpl                                           ; $7aac: $2f
    jr z, jr_0e8_7ace                             ; $7aad: $28 $1f

    inc e                                         ; $7aaf: $1c
    daa                                           ; $7ab0: $27
    ccf                                           ; $7ab1: $3f
    dec de                                        ; $7ab2: $1b
    ld e, $35                                     ; $7ab3: $1e $35
    ccf                                           ; $7ab5: $3f
    halt                                          ; $7ab6: $76
    ld a, a                                       ; $7ab7: $7f
    ld l, l                                       ; $7ab8: $6d
    ld a, a                                       ; $7ab9: $7f
    ld [hl], $3f                                  ; $7aba: $36 $3f
    ld [bc], a                                    ; $7abc: $02
    inc b                                         ; $7abd: $04
    add d                                         ; $7abe: $82
    ld b, $02                                     ; $7abf: $06 $02
    ld [bc], a                                    ; $7ac1: $02
    inc b                                         ; $7ac2: $04
    adc b                                         ; $7ac3: $88
    ld b, $02                                     ; $7ac4: $06 $02
    ld b, $02                                     ; $7ac6: $06 $02
    inc bc                                        ; $7ac8: $03
    dec b                                         ; $7ac9: $05
    ld b, $02                                     ; $7aca: $06 $02
    inc b                                         ; $7acc: $04
    inc b                                         ; $7acd: $04

jr_0e8_7ace:
    ld [bc], a                                    ; $7ace: $02
    nop                                           ; $7acf: $00
    ld b, $04                                     ; $7ad0: $06 $04
    add [hl]                                      ; $7ad2: $86
    ld [bc], a                                    ; $7ad3: $02
    ld b, $02                                     ; $7ad4: $06 $02
    ld b, $3a                                     ; $7ad6: $06 $3a
    cp $02                                        ; $7ad8: $fe $02
    db $10                                        ; $7ada: $10
    sbc d                                         ; $7adb: $9a
    dec d                                         ; $7adc: $15
    rra                                           ; $7add: $1f
    ld de, $131f                                  ; $7ade: $11 $1f $13
    ld e, $3b                                     ; $7ae1: $1e $3b
    dec a                                         ; $7ae3: $3d
    dec sp                                        ; $7ae4: $3b
    ccf                                           ; $7ae5: $3f
    ld l, $3f                                     ; $7ae6: $2e $3f
    ld d, [hl]                                    ; $7ae8: $56
    ld a, a                                       ; $7ae9: $7f
    ld h, b                                       ; $7aea: $60
    ld a, a                                       ; $7aeb: $7f
    ld d, l                                       ; $7aec: $55
    ld a, a                                       ; $7aed: $7f
    adc b                                         ; $7aee: $88
    rst $38                                       ; $7aef: $ff
    push de                                       ; $7af0: $d5
    rst $38                                       ; $7af1: $ff
    cp a                                          ; $7af2: $bf
    rst $38                                       ; $7af3: $ff
    ld h, b                                       ; $7af4: $60
    ld a, a                                       ; $7af5: $7f
    ld [bc], a                                    ; $7af6: $02
    rra                                           ; $7af7: $1f
    inc b                                         ; $7af8: $04
    nop                                           ; $7af9: $00
    add e                                         ; $7afa: $83
    inc bc                                        ; $7afb: $03
    rlca                                          ; $7afc: $07
    ld [bc], a                                    ; $7afd: $02
    inc bc                                        ; $7afe: $03
    ld b, $83                                     ; $7aff: $06 $83
    ld [bc], a                                    ; $7b01: $02
    ld b, $03                                     ; $7b02: $06 $03
    inc bc                                        ; $7b04: $03
    rlca                                          ; $7b05: $07
    add c                                         ; $7b06: $81
    inc bc                                        ; $7b07: $03
    inc bc                                        ; $7b08: $03
    rlca                                          ; $7b09: $07
    add c                                         ; $7b0a: $81
    inc bc                                        ; $7b0b: $03
    inc bc                                        ; $7b0c: $03
    rlca                                          ; $7b0d: $07
    add d                                         ; $7b0e: $82
    inc bc                                        ; $7b0f: $03
    rlca                                          ; $7b10: $07
    ld [bc], a                                    ; $7b11: $02
    ld b, $81                                     ; $7b12: $06 $81
    ld [bc], a                                    ; $7b14: $02
    inc bc                                        ; $7b15: $03
    ld b, $02                                     ; $7b16: $06 $02
    nop                                           ; $7b18: $00
    rst $38                                       ; $7b19: $ff
    dec c                                         ; $7b1a: $0d
    inc b                                         ; $7b1b: $04
    ei                                            ; $7b1c: $fb
    dec b                                         ; $7b1d: $05
    ld a, [c]                                     ; $7b1e: $f2
    ei                                            ; $7b1f: $fb
    ld [c], a                                     ; $7b20: $e2
    db $fc                                        ; $7b21: $fc
    db $e3                                        ; $7b22: $e3
    rst $38                                       ; $7b23: $ff
    ld a, [c]                                     ; $7b24: $f2
    ei                                            ; $7b25: $fb
    ld a, [c]                                     ; $7b26: $f2
    nop                                           ; $7b27: $00
    ld [bc], a                                    ; $7b28: $02
    ld [hl], $9e                                  ; $7b29: $36 $9e
    ld a, a                                       ; $7b2b: $7f
    ld e, c                                       ; $7b2c: $59
    rst $38                                       ; $7b2d: $ff
    or a                                          ; $7b2e: $b7
    rst $38                                       ; $7b2f: $ff
    cp $ff                                        ; $7b30: $fe $ff
    db $ec                                        ; $7b32: $ec
    ld a, a                                       ; $7b33: $7f
    ld a, e                                       ; $7b34: $7b
    ld a, $37                                     ; $7b35: $3e $37
    ld a, a                                       ; $7b37: $7f
    ld a, b                                       ; $7b38: $78
    cpl                                           ; $7b39: $2f
    jr z, jr_0e8_7b5b                             ; $7b3a: $28 $1f

    inc e                                         ; $7b3c: $1c
    daa                                           ; $7b3d: $27
    ccf                                           ; $7b3e: $3f
    dec de                                        ; $7b3f: $1b
    ld e, $35                                     ; $7b40: $1e $35
    ccf                                           ; $7b42: $3f
    ld h, [hl]                                    ; $7b43: $66
    ld a, a                                       ; $7b44: $7f
    ld l, l                                       ; $7b45: $6d
    ld a, a                                       ; $7b46: $7f
    ld h, h                                       ; $7b47: $64
    ld a, a                                       ; $7b48: $7f
    ld [bc], a                                    ; $7b49: $02
    inc b                                         ; $7b4a: $04
    add d                                         ; $7b4b: $82
    ld b, $02                                     ; $7b4c: $06 $02
    ld [bc], a                                    ; $7b4e: $02
    inc b                                         ; $7b4f: $04
    adc b                                         ; $7b50: $88
    ld b, $02                                     ; $7b51: $06 $02
    ld b, $02                                     ; $7b53: $06 $02
    inc bc                                        ; $7b55: $03
    dec b                                         ; $7b56: $05
    ld b, $02                                     ; $7b57: $06 $02
    inc b                                         ; $7b59: $04
    inc b                                         ; $7b5a: $04

jr_0e8_7b5b:
    ld [bc], a                                    ; $7b5b: $02
    nop                                           ; $7b5c: $00
    ld b, $04                                     ; $7b5d: $06 $04
    and h                                         ; $7b5f: $a4
    ld [bc], a                                    ; $7b60: $02
    ld b, $02                                     ; $7b61: $06 $02
    ld b, $7a                                     ; $7b63: $06 $7a
    cp $20                                        ; $7b65: $fe $20
    jr nc, jr_0e8_7b90                            ; $7b67: $30 $27

    ccf                                           ; $7b69: $3f
    inc hl                                        ; $7b6a: $23
    ccf                                           ; $7b6b: $3f
    ld l, $37                                     ; $7b6c: $2e $37
    ld l, $3f                                     ; $7b6e: $2e $3f
    inc a                                         ; $7b70: $3c
    ccf                                           ; $7b71: $3f
    ld e, h                                       ; $7b72: $5c
    ld a, a                                       ; $7b73: $7f
    ld h, l                                       ; $7b74: $65
    ld a, a                                       ; $7b75: $7f
    ld h, b                                       ; $7b76: $60
    ld a, a                                       ; $7b77: $7f
    xor c                                         ; $7b78: $a9
    rst $38                                       ; $7b79: $ff
    ld [c], a                                     ; $7b7a: $e2
    rst $38                                       ; $7b7b: $ff
    db $d3                                        ; $7b7c: $d3
    rst $38                                       ; $7b7d: $ff
    or l                                          ; $7b7e: $b5
    rst $38                                       ; $7b7f: $ff
    ld c, a                                       ; $7b80: $4f
    ld a, a                                       ; $7b81: $7f
    add hl, sp                                    ; $7b82: $39
    ccf                                           ; $7b83: $3f
    ld [bc], a                                    ; $7b84: $02
    rlca                                          ; $7b85: $07
    ld [bc], a                                    ; $7b86: $02
    nop                                           ; $7b87: $00

jr_0e8_7b88:
    add l                                         ; $7b88: $85
    ld [$0818], sp                                ; $7b89: $08 $18 $08
    jr jr_0e8_7b9a                                ; $7b8c: $18 $0c

    inc bc                                        ; $7b8e: $03
    inc e                                         ; $7b8f: $1c

jr_0e8_7b90:
    add e                                         ; $7b90: $83
    ld [$0c18], sp                                ; $7b91: $08 $18 $0c
    dec b                                         ; $7b94: $05
    inc e                                         ; $7b95: $1c
    inc b                                         ; $7b96: $04
    ld e, $06                                     ; $7b97: $1e $06
    rra                                           ; $7b99: $1f

jr_0e8_7b9a:
    ld [bc], a                                    ; $7b9a: $02
    inc e                                         ; $7b9b: $1c
    ld [bc], a                                    ; $7b9c: $02
    nop                                           ; $7b9d: $00
    rst $38                                       ; $7b9e: $ff
    dec c                                         ; $7b9f: $0d
    inc b                                         ; $7ba0: $04
    ei                                            ; $7ba1: $fb
    dec b                                         ; $7ba2: $05
    ld a, [c]                                     ; $7ba3: $f2
    ei                                            ; $7ba4: $fb
    db $e3                                        ; $7ba5: $e3
    db $fc                                        ; $7ba6: $fc
    db $e4                                        ; $7ba7: $e4
    rst $38                                       ; $7ba8: $ff
    di                                            ; $7ba9: $f3
    ei                                            ; $7baa: $fb
    di                                            ; $7bab: $f3
    nop                                           ; $7bac: $00
    ld [bc], a                                    ; $7bad: $02
    ld [hl], $9e                                  ; $7bae: $36 $9e
    ld a, a                                       ; $7bb0: $7f
    ld e, c                                       ; $7bb1: $59
    rst $38                                       ; $7bb2: $ff
    or a                                          ; $7bb3: $b7
    rst $38                                       ; $7bb4: $ff
    cp $ff                                        ; $7bb5: $fe $ff
    db $ec                                        ; $7bb7: $ec
    ld a, a                                       ; $7bb8: $7f
    ld a, e                                       ; $7bb9: $7b
    ld a, $37                                     ; $7bba: $3e $37
    ld a, a                                       ; $7bbc: $7f
    ld a, b                                       ; $7bbd: $78
    cpl                                           ; $7bbe: $2f
    jr z, jr_0e8_7be0                             ; $7bbf: $28 $1f

    inc e                                         ; $7bc1: $1c
    daa                                           ; $7bc2: $27
    ccf                                           ; $7bc3: $3f
    dec de                                        ; $7bc4: $1b
    ld e, $35                                     ; $7bc5: $1e $35
    ccf                                           ; $7bc7: $3f
    halt                                          ; $7bc8: $76
    ld a, a                                       ; $7bc9: $7f
    ld l, l                                       ; $7bca: $6d
    ld a, a                                       ; $7bcb: $7f
    ld h, h                                       ; $7bcc: $64
    ld a, a                                       ; $7bcd: $7f
    ld [bc], a                                    ; $7bce: $02
    inc b                                         ; $7bcf: $04
    add d                                         ; $7bd0: $82
    ld b, $02                                     ; $7bd1: $06 $02
    ld [bc], a                                    ; $7bd3: $02
    inc b                                         ; $7bd4: $04
    adc b                                         ; $7bd5: $88
    ld b, $02                                     ; $7bd6: $06 $02
    ld b, $02                                     ; $7bd8: $06 $02
    inc bc                                        ; $7bda: $03
    dec b                                         ; $7bdb: $05
    ld b, $02                                     ; $7bdc: $06 $02
    inc b                                         ; $7bde: $04
    inc b                                         ; $7bdf: $04

jr_0e8_7be0:
    ld [bc], a                                    ; $7be0: $02
    nop                                           ; $7be1: $00
    ld b, $04                                     ; $7be2: $06 $04
    add [hl]                                      ; $7be4: $86
    ld [bc], a                                    ; $7be5: $02
    ld b, $02                                     ; $7be6: $06 $02
    ld b, $72                                     ; $7be8: $06 $72
    cp $02                                        ; $7bea: $fe $02
    jr nc, jr_0e8_7b88                            ; $7bec: $30 $9a

    inc sp                                        ; $7bee: $33
    ccf                                           ; $7bef: $3f
    ld hl, $273f                                  ; $7bf0: $21 $3f $27
    dec sp                                        ; $7bf3: $3b
    ld l, $3f                                     ; $7bf4: $2e $3f
    ld a, $3f                                     ; $7bf6: $3e $3f
    ld a, l                                       ; $7bf8: $7d
    ld a, a                                       ; $7bf9: $7f
    ld d, b                                       ; $7bfa: $50
    ld a, a                                       ; $7bfb: $7f
    and c                                         ; $7bfc: $a1
    rst $38                                       ; $7bfd: $ff
    xor d                                         ; $7bfe: $aa
    rst $38                                       ; $7bff: $ff
    pop de                                        ; $7c00: $d1
    rst $38                                       ; $7c01: $ff
    xor d                                         ; $7c02: $aa
    rst $38                                       ; $7c03: $ff
    rst $18                                       ; $7c04: $df
    rst $38                                       ; $7c05: $ff
    ld sp, $023f                                  ; $7c06: $31 $3f $02
    rrca                                          ; $7c09: $0f
    inc b                                         ; $7c0a: $04
    nop                                           ; $7c0b: $00
    ld [bc], a                                    ; $7c0c: $02
    jr @-$7b                                      ; $7c0d: $18 $83

    ld [$0c18], sp                                ; $7c0f: $08 $18 $0c
    inc bc                                        ; $7c12: $03
    inc e                                         ; $7c13: $1c
    add h                                         ; $7c14: $84
    inc c                                         ; $7c15: $0c
    inc e                                         ; $7c16: $1c
    ld [$0618], sp                                ; $7c17: $08 $18 $06
    inc e                                         ; $7c1a: $1c
    inc b                                         ; $7c1b: $04
    ld e, $02                                     ; $7c1c: $1e $02
    rra                                           ; $7c1e: $1f
    ld [bc], a                                    ; $7c1f: $02
    ld e, $04                                     ; $7c20: $1e $04
    nop                                           ; $7c22: $00
    rst $38                                       ; $7c23: $ff
    dec c                                         ; $7c24: $0d
    inc b                                         ; $7c25: $04
    ei                                            ; $7c26: $fb
    dec b                                         ; $7c27: $05
    ld a, [c]                                     ; $7c28: $f2
    ei                                            ; $7c29: $fb
    ld [c], a                                     ; $7c2a: $e2
    db $fc                                        ; $7c2b: $fc
    db $e3                                        ; $7c2c: $e3
    rst $38                                       ; $7c2d: $ff
    ld a, [c]                                     ; $7c2e: $f2
    ei                                            ; $7c2f: $fb
    ld a, [c]                                     ; $7c30: $f2
    cp $02                                        ; $7c31: $fe $02
    ld [hl], $9e                                  ; $7c33: $36 $9e
    ld a, a                                       ; $7c35: $7f
    ld e, c                                       ; $7c36: $59
    rst $38                                       ; $7c37: $ff
    or a                                          ; $7c38: $b7
    rst $38                                       ; $7c39: $ff
    cp $ff                                        ; $7c3a: $fe $ff
    db $ec                                        ; $7c3c: $ec
    ld a, a                                       ; $7c3d: $7f
    ld a, e                                       ; $7c3e: $7b
    ld a, $37                                     ; $7c3f: $3e $37
    ld a, a                                       ; $7c41: $7f
    ld a, b                                       ; $7c42: $78
    cpl                                           ; $7c43: $2f
    jr z, jr_0e8_7c65                             ; $7c44: $28 $1f

    inc e                                         ; $7c46: $1c
    daa                                           ; $7c47: $27
    ccf                                           ; $7c48: $3f
    dec de                                        ; $7c49: $1b
    ld e, $35                                     ; $7c4a: $1e $35
    ccf                                           ; $7c4c: $3f
    halt                                          ; $7c4d: $76
    ld a, a                                       ; $7c4e: $7f
    ld l, l                                       ; $7c4f: $6d
    ld a, a                                       ; $7c50: $7f
    ld [hl], $3f                                  ; $7c51: $36 $3f
    ld [bc], a                                    ; $7c53: $02
    inc b                                         ; $7c54: $04
    add d                                         ; $7c55: $82
    ld b, $02                                     ; $7c56: $06 $02
    ld [bc], a                                    ; $7c58: $02
    inc b                                         ; $7c59: $04
    adc b                                         ; $7c5a: $88
    ld b, $02                                     ; $7c5b: $06 $02
    ld b, $02                                     ; $7c5d: $06 $02
    inc bc                                        ; $7c5f: $03
    dec b                                         ; $7c60: $05
    ld b, $02                                     ; $7c61: $06 $02
    inc b                                         ; $7c63: $04
    inc b                                         ; $7c64: $04

jr_0e8_7c65:
    ld [bc], a                                    ; $7c65: $02
    nop                                           ; $7c66: $00
    ld b, $04                                     ; $7c67: $06 $04
    add [hl]                                      ; $7c69: $86
    ld [bc], a                                    ; $7c6a: $02
    ld b, $02                                     ; $7c6b: $06 $02
    ld b, $3a                                     ; $7c6d: $06 $3a
    cp $02                                        ; $7c6f: $fe $02
    db $10                                        ; $7c71: $10
    sbc h                                         ; $7c72: $9c
    dec d                                         ; $7c73: $15
    rra                                           ; $7c74: $1f
    ld de, $131f                                  ; $7c75: $11 $1f $13
    ld e, $3b                                     ; $7c78: $1e $3b
    dec a                                         ; $7c7a: $3d
    dec sp                                        ; $7c7b: $3b
    ccf                                           ; $7c7c: $3f
    ld l, $3f                                     ; $7c7d: $2e $3f
    inc l                                         ; $7c7f: $2c
    ccf                                           ; $7c80: $3f
    ld d, b                                       ; $7c81: $50
    ld a, a                                       ; $7c82: $7f
    ld d, l                                       ; $7c83: $55
    ld a, a                                       ; $7c84: $7f
    ld l, b                                       ; $7c85: $68
    ld a, a                                       ; $7c86: $7f
    push af                                       ; $7c87: $f5
    rst $38                                       ; $7c88: $ff
    sbc l                                         ; $7c89: $9d
    rst $38                                       ; $7c8a: $ff
    ld h, a                                       ; $7c8b: $67
    ld a, a                                       ; $7c8c: $7f
    inc e                                         ; $7c8d: $1c
    rra                                           ; $7c8e: $1f
    ld [bc], a                                    ; $7c8f: $02
    inc bc                                        ; $7c90: $03
    ld [bc], a                                    ; $7c91: $02
    nop                                           ; $7c92: $00
    add e                                         ; $7c93: $83
    inc bc                                        ; $7c94: $03
    rlca                                          ; $7c95: $07
    ld [bc], a                                    ; $7c96: $02
    inc bc                                        ; $7c97: $03
    ld b, $83                                     ; $7c98: $06 $83
    ld [bc], a                                    ; $7c9a: $02
    ld b, $02                                     ; $7c9b: $06 $02
    inc bc                                        ; $7c9d: $03
    ld b, $81                                     ; $7c9e: $06 $81
    ld [bc], a                                    ; $7ca0: $02
    inc bc                                        ; $7ca1: $03
    ld b, $81                                     ; $7ca2: $06 $81
    ld [bc], a                                    ; $7ca4: $02
    inc bc                                        ; $7ca5: $03
    ld b, $81                                     ; $7ca6: $06 $81
    ld [bc], a                                    ; $7ca8: $02
    rlca                                          ; $7ca9: $07
    ld b, $02                                     ; $7caa: $06 $02
    inc b                                         ; $7cac: $04
    rst $38                                       ; $7cad: $ff
    dec c                                         ; $7cae: $0d
    inc b                                         ; $7caf: $04
    ld sp, hl                                     ; $7cb0: $f9
    ld [$01f2], sp                                ; $7cb1: $08 $f2 $01
    ld [c], a                                     ; $7cb4: $e2
    ld a, [$ffe2]                                 ; $7cb5: $fa $e2 $ff
    ld a, [c]                                     ; $7cb8: $f2
    ld sp, hl                                     ; $7cb9: $f9
    ld a, [c]                                     ; $7cba: $f2
    nop                                           ; $7cbb: $00
    and c                                         ; $7cbc: $a1
    nop                                           ; $7cbd: $00
    dec c                                         ; $7cbe: $0d
    dec b                                         ; $7cbf: $05
    ld a, [de]                                    ; $7cc0: $1a
    ld [bc], a                                    ; $7cc1: $02
    dec e                                         ; $7cc2: $1d
    dec c                                         ; $7cc3: $0d
    ld [de], a                                    ; $7cc4: $12
    rrca                                          ; $7cc5: $0f
    db $10                                        ; $7cc6: $10
    ld [bc], a                                    ; $7cc7: $02
    dec e                                         ; $7cc8: $1d
    rrca                                          ; $7cc9: $0f
    jr nz, jr_0e8_7cd1                            ; $7cca: $20 $05

    ld l, d                                       ; $7ccc: $6a
    ld [hl+], a                                   ; $7ccd: $22
    ld c, l                                       ; $7cce: $4d
    db $10                                        ; $7ccf: $10
    ld h, a                                       ; $7cd0: $67

jr_0e8_7cd1:
    add hl, bc                                    ; $7cd1: $09
    ld [hl], d                                    ; $7cd2: $72
    db $10                                        ; $7cd3: $10
    cpl                                           ; $7cd4: $2f
    ld a, [bc]                                    ; $7cd5: $0a
    ld d, l                                       ; $7cd6: $55
    nop                                           ; $7cd7: $00
    ld l, a                                       ; $7cd8: $6f
    ld b, e                                       ; $7cd9: $43
    xor h                                         ; $7cda: $ac
    dec b                                         ; $7cdb: $05
    or d                                          ; $7cdc: $b2
    nop                                           ; $7cdd: $00
    ld [bc], a                                    ; $7cde: $02
    db $10                                        ; $7cdf: $10
    adc d                                         ; $7ce0: $8a
    ld [$1800], sp                                ; $7ce1: $08 $00 $18
    db $10                                        ; $7ce4: $10
    ld [$0810], sp                                ; $7ce5: $08 $10 $08
    nop                                           ; $7ce8: $00
    jr jr_0e8_7cfb                                ; $7ce9: $18 $10

    ld [bc], a                                    ; $7ceb: $02
    inc c                                         ; $7cec: $0c
    and [hl]                                      ; $7ced: $a6
    ld [de], a                                    ; $7cee: $12
    inc c                                         ; $7cef: $0c
    ld [de], a                                    ; $7cf0: $12
    jr jr_0e8_7cf9                                ; $7cf1: $18 $06

    inc d                                         ; $7cf3: $14
    ld a, [bc]                                    ; $7cf4: $0a
    ld [$1014], sp                                ; $7cf5: $08 $14 $10
    ld a, [bc]                                    ; $7cf8: $0a

jr_0e8_7cf9:
    ld [bc], a                                    ; $7cf9: $02
    dec d                                         ; $7cfa: $15

jr_0e8_7cfb:
    ld [bc], a                                    ; $7cfb: $02
    dec e                                         ; $7cfc: $1d
    db $10                                        ; $7cfd: $10
    dec c                                         ; $7cfe: $0d
    ld h, e                                       ; $7cff: $63
    adc b                                         ; $7d00: $88
    ld [bc], a                                    ; $7d01: $02
    ld [hl], l                                    ; $7d02: $75
    ld [hl+], a                                   ; $7d03: $22
    ld d, l                                       ; $7d04: $55
    inc b                                         ; $7d05: $04
    dec hl                                        ; $7d06: $2b
    nop                                           ; $7d07: $00
    ld d, $02                                     ; $7d08: $16 $02
    dec d                                         ; $7d0a: $15
    ld b, $19                                     ; $7d0b: $06 $19
    nop                                           ; $7d0d: $00
    ld c, $04                                     ; $7d0e: $0e $04
    ld [bc], a                                    ; $7d10: $02
    nop                                           ; $7d11: $00
    ld b, $00                                     ; $7d12: $06 $00
    ld [bc], a                                    ; $7d14: $02
    inc b                                         ; $7d15: $04
    add a                                         ; $7d16: $87
    ld a, [bc]                                    ; $7d17: $0a
    nop                                           ; $7d18: $00
    ld a, [bc]                                    ; $7d19: $0a
    nop                                           ; $7d1a: $00
    inc c                                         ; $7d1b: $0c
    nop                                           ; $7d1c: $00
    jr jr_0e8_7d21                                ; $7d1d: $18 $02

    nop                                           ; $7d1f: $00
    and b                                         ; $7d20: $a0

jr_0e8_7d21:
    ld h, [hl]                                    ; $7d21: $66
    ld de, $0e70                                  ; $7d22: $11 $70 $0e
    ld [hl], h                                    ; $7d25: $74
    ld a, [bc]                                    ; $7d26: $0a
    jr nz, jr_0e8_7d85                            ; $7d27: $20 $5c

    nop                                           ; $7d29: $00
    ld a, b                                       ; $7d2a: $78
    jr nc, jr_0e8_7d35                            ; $7d2b: $30 $08

    jr nc, jr_0e8_7d77                            ; $7d2d: $30 $48

    nop                                           ; $7d2f: $00
    ld [hl], b                                    ; $7d30: $70
    jr nz, jr_0e8_7d83                            ; $7d31: $20 $50

    jr nz, jr_0e8_7d75                            ; $7d33: $20 $40

jr_0e8_7d35:
    nop                                           ; $7d35: $00
    jr nz, jr_0e8_7d38                            ; $7d36: $20 $00

jr_0e8_7d38:
    ld h, b                                       ; $7d38: $60
    jr nz, jr_0e8_7d8b                            ; $7d39: $20 $50

    nop                                           ; $7d3b: $00
    ld d, b                                       ; $7d3c: $50
    nop                                           ; $7d3d: $00
    jr c, jr_0e8_7d40                             ; $7d3e: $38 $00

jr_0e8_7d40:
    db $10                                        ; $7d40: $10
    rst $38                                       ; $7d41: $ff
    dec c                                         ; $7d42: $0d
    inc b                                         ; $7d43: $04
    ld sp, hl                                     ; $7d44: $f9
    ld [$01f2], sp                                ; $7d45: $08 $f2 $01
    ld [c], a                                     ; $7d48: $e2
    ld a, [$ffe2]                                 ; $7d49: $fa $e2 $ff
    ld a, [c]                                     ; $7d4c: $f2
    ld sp, hl                                     ; $7d4d: $f9
    ld a, [c]                                     ; $7d4e: $f2
    nop                                           ; $7d4f: $00
    rst $10                                       ; $7d50: $d7
    nop                                           ; $7d51: $00
    jr jr_0e8_7d54                                ; $7d52: $18 $00

jr_0e8_7d54:
    dec h                                         ; $7d54: $25
    nop                                           ; $7d55: $00
    ld a, [hl+]                                   ; $7d56: $2a
    nop                                           ; $7d57: $00
    ld d, [hl]                                    ; $7d58: $56
    dec b                                         ; $7d59: $05
    ld e, d                                       ; $7d5a: $5a
    nop                                           ; $7d5b: $00
    scf                                           ; $7d5c: $37
    ld [$0262], sp                                ; $7d5d: $08 $62 $02
    dec [hl]                                      ; $7d60: $35
    ld [$0355], sp                                ; $7d61: $08 $55 $03
    db $ec                                        ; $7d64: $ec
    nop                                           ; $7d65: $00
    ld d, e                                       ; $7d66: $53
    ld [bc], a                                    ; $7d67: $02
    cp l                                          ; $7d68: $bd
    daa                                           ; $7d69: $27
    ld d, b                                       ; $7d6a: $50
    nop                                           ; $7d6b: $00
    ld h, a                                       ; $7d6c: $67
    ld [bc], a                                    ; $7d6d: $02
    cp l                                          ; $7d6e: $bd
    inc hl                                        ; $7d6f: $23
    call c, $1800                                 ; $7d70: $dc $00 $18
    nop                                           ; $7d73: $00
    inc e                                         ; $7d74: $1c

jr_0e8_7d75:
    nop                                           ; $7d75: $00
    inc d                                         ; $7d76: $14

jr_0e8_7d77:
    nop                                           ; $7d77: $00
    ld c, $00                                     ; $7d78: $0e $00
    ld a, [de]                                    ; $7d7a: $1a
    nop                                           ; $7d7b: $00
    inc c                                         ; $7d7c: $0c
    db $10                                        ; $7d7d: $10
    ld b, $00                                     ; $7d7e: $06 $00
    inc c                                         ; $7d80: $0c
    db $10                                        ; $7d81: $10
    ld a, [bc]                                    ; $7d82: $0a

jr_0e8_7d83:
    nop                                           ; $7d83: $00
    rla                                           ; $7d84: $17

jr_0e8_7d85:
    nop                                           ; $7d85: $00

jr_0e8_7d86:
    ld a, [bc]                                    ; $7d86: $0a
    nop                                           ; $7d87: $00
    dec e                                         ; $7d88: $1d
    inc b                                         ; $7d89: $04
    ld a, [de]                                    ; $7d8a: $1a

jr_0e8_7d8b:
    inc c                                         ; $7d8b: $0c
    ld [bc], a                                    ; $7d8c: $02
    inc b                                         ; $7d8d: $04
    dec bc                                        ; $7d8e: $0b
    ld b, $19                                     ; $7d8f: $06 $19
    jr nz, jr_0e8_7dee                            ; $7d91: $20 $5b

    db $10                                        ; $7d93: $10
    xor h                                         ; $7d94: $ac
    jr z, @+$57                                   ; $7d95: $28 $55

    ld [$0977], sp                                ; $7d97: $08 $77 $09
    ld d, $0b                                     ; $7d9a: $16 $0b
    inc [hl]                                      ; $7d9c: $34
    ld [bc], a                                    ; $7d9d: $02
    dec l                                         ; $7d9e: $2d
    nop                                           ; $7d9f: $00
    cpl                                           ; $7da0: $2f
    ld [bc], a                                    ; $7da1: $02
    dec a                                         ; $7da2: $3d
    nop                                           ; $7da3: $00
    ld c, $04                                     ; $7da4: $0e $04
    ld [bc], a                                    ; $7da6: $02
    nop                                           ; $7da7: $00
    ld [bc], a                                    ; $7da8: $02
    inc b                                         ; $7da9: $04
    add l                                         ; $7daa: $85
    ld a, [bc]                                    ; $7dab: $0a
    nop                                           ; $7dac: $00
    ld a, [bc]                                    ; $7dad: $0a
    nop                                           ; $7dae: $00
    inc e                                         ; $7daf: $1c
    ld [bc], a                                    ; $7db0: $02
    nop                                           ; $7db1: $00
    and b                                         ; $7db2: $a0
    ld h, h                                       ; $7db3: $64
    ld a, [bc]                                    ; $7db4: $0a
    ld a, [hl+]                                   ; $7db5: $2a
    ld d, l                                       ; $7db6: $55
    inc b                                         ; $7db7: $04
    ld a, [hl-]                                   ; $7db8: $3a
    jr nz, jr_0e8_7e11                            ; $7db9: $20 $56

    jr nc, jr_0e8_7e05                            ; $7dbb: $30 $48

    jr nc, jr_0e8_7e07                            ; $7dbd: $30 $48

    jr jr_0e8_7e25                                ; $7dbf: $18 $64

    nop                                           ; $7dc1: $00
    inc a                                         ; $7dc2: $3c
    jr nc, jr_0e8_7e0d                            ; $7dc3: $30 $48

    nop                                           ; $7dc5: $00
    ld [hl], b                                    ; $7dc6: $70
    jr nz, jr_0e8_7e19                            ; $7dc7: $20 $50

    nop                                           ; $7dc9: $00
    jr nz, jr_0e8_7dcc                            ; $7dca: $20 $00

jr_0e8_7dcc:
    ld h, b                                       ; $7dcc: $60
    jr nz, @+$52                                  ; $7dcd: $20 $50

    nop                                           ; $7dcf: $00
    ld e, b                                       ; $7dd0: $58
    nop                                           ; $7dd1: $00
    jr nc, @+$01                                  ; $7dd2: $30 $ff

    dec c                                         ; $7dd4: $0d
    inc b                                         ; $7dd5: $04
    ld sp, hl                                     ; $7dd6: $f9
    ld [$00f1], sp                                ; $7dd7: $08 $f1 $00
    rst $20                                       ; $7dda: $e7
    ld a, [$ffe8]                                 ; $7ddb: $fa $e8 $ff
    rst $30                                       ; $7dde: $f7
    ld sp, hl                                     ; $7ddf: $f9
    rst $30                                       ; $7de0: $f7
    nop                                           ; $7de1: $00
    ld [bc], a                                    ; $7de2: $02
    inc bc                                        ; $7de3: $03
    ld [bc], a                                    ; $7de4: $02
    rla                                           ; $7de5: $17
    inc b                                         ; $7de6: $04
    ccf                                           ; $7de7: $3f
    ld b, $1f                                     ; $7de8: $06 $1f
    add [hl]                                      ; $7dea: $86
    jr z, jr_0e8_7e2c                             ; $7deb: $28 $3f

    cpl                                           ; $7ded: $2f

jr_0e8_7dee:
    ccf                                           ; $7dee: $3f
    rra                                           ; $7def: $1f
    jr @+$04                                      ; $7df0: $18 $02

    daa                                           ; $7df2: $27
    ld b, $50                                     ; $7df3: $06 $50
    inc b                                         ; $7df5: $04
    or b                                          ; $7df6: $b0
    ld [bc], a                                    ; $7df7: $02
    db $10                                        ; $7df8: $10
    ld [bc], a                                    ; $7df9: $02
    inc e                                         ; $7dfa: $1c
    ld [bc], a                                    ; $7dfb: $02
    jr jr_0e8_7e00                                ; $7dfc: $18 $02

    inc e                                         ; $7dfe: $1c
    inc b                                         ; $7dff: $04

jr_0e8_7e00:
    jr jr_0e8_7d86                                ; $7e00: $18 $84

    inc d                                         ; $7e02: $14
    inc e                                         ; $7e03: $1c
    inc d                                         ; $7e04: $14

jr_0e8_7e05:
    inc e                                         ; $7e05: $1c
    ld [bc], a                                    ; $7e06: $02

jr_0e8_7e07:
    jr @+$04                                      ; $7e07: $18 $02

    inc b                                         ; $7e09: $04
    ld b, $0a                                     ; $7e0a: $06 $0a
    ld [bc], a                                    ; $7e0c: $02

jr_0e8_7e0d:
    dec b                                         ; $7e0d: $05
    ld [bc], a                                    ; $7e0e: $02
    dec d                                         ; $7e0f: $15
    ld [bc], a                                    ; $7e10: $02

jr_0e8_7e11:
    push hl                                       ; $7e11: $e5
    ld [bc], a                                    ; $7e12: $02
    ld d, b                                       ; $7e13: $50
    add h                                         ; $7e14: $84
    ldh a, [$90]                                  ; $7e15: $f0 $90
    ld d, b                                       ; $7e17: $50
    ld [hl], b                                    ; $7e18: $70

jr_0e8_7e19:
    ld [bc], a                                    ; $7e19: $02
    add hl, sp                                    ; $7e1a: $39
    ld [bc], a                                    ; $7e1b: $02
    dec c                                         ; $7e1c: $0d
    ld [bc], a                                    ; $7e1d: $02
    ld e, $02                                     ; $7e1e: $1e $02
    inc d                                         ; $7e20: $14
    add d                                         ; $7e21: $82
    ld c, $0a                                     ; $7e22: $0e $0a
    ld [bc], a                                    ; $7e24: $02

jr_0e8_7e25:
    ld b, $02                                     ; $7e25: $06 $02
    ld c, $02                                     ; $7e27: $0e $02
    inc b                                         ; $7e29: $04
    inc c                                         ; $7e2a: $0c
    nop                                           ; $7e2b: $00

jr_0e8_7e2c:
    add h                                         ; $7e2c: $84
    rrca                                          ; $7e2d: $0f
    add hl, bc                                    ; $7e2e: $09
    ld a, [bc]                                    ; $7e2f: $0a
    ld c, $02                                     ; $7e30: $0e $02
    inc e                                         ; $7e32: $1c
    ld [bc], a                                    ; $7e33: $02
    jr nc, jr_0e8_7e38                            ; $7e34: $30 $02

    ld a, b                                       ; $7e36: $78
    ld [bc], a                                    ; $7e37: $02

jr_0e8_7e38:
    jr z, @-$7c                                   ; $7e38: $28 $82

jr_0e8_7e3a:
    ld [hl], b                                    ; $7e3a: $70
    ld d, b                                       ; $7e3b: $50
    ld [bc], a                                    ; $7e3c: $02
    ld h, b                                       ; $7e3d: $60
    ld [bc], a                                    ; $7e3e: $02
    ld [hl], b                                    ; $7e3f: $70
    ld [bc], a                                    ; $7e40: $02
    jr nz, jr_0e8_7e4d                            ; $7e41: $20 $0a

    nop                                           ; $7e43: $00
    rst $38                                       ; $7e44: $ff
    add hl, bc                                    ; $7e45: $09
    ld [bc], a                                    ; $7e46: $02
    ld sp, hl                                     ; $7e47: $f9
    ld [$00f1], sp                                ; $7e48: $08 $f1 $00
    pop af                                        ; $7e4b: $f1
    ei                                            ; $7e4c: $fb

jr_0e8_7e4d:
    pop af                                        ; $7e4d: $f1
    cp $95                                        ; $7e4e: $fe $95
    ld sp, $5f00                                  ; $7e50: $31 $00 $5f
    nop                                           ; $7e53: $00
    ld e, a                                       ; $7e54: $5f
    nop                                           ; $7e55: $00
    ld e, a                                       ; $7e56: $5f
    nop                                           ; $7e57: $00
    sbc a                                         ; $7e58: $9f
    nop                                           ; $7e59: $00
    sbc [hl]                                      ; $7e5a: $9e
    nop                                           ; $7e5b: $00
    or c                                          ; $7e5c: $b1
    nop                                           ; $7e5d: $00
    ccf                                           ; $7e5e: $3f
    nop                                           ; $7e5f: $00
    ccf                                           ; $7e60: $3f
    nop                                           ; $7e61: $00
    dec de                                        ; $7e62: $1b
    nop                                           ; $7e63: $00
    ld a, [bc]                                    ; $7e64: $0a
    inc bc                                        ; $7e65: $03
    nop                                           ; $7e66: $00
    ld [bc], a                                    ; $7e67: $02
    jr nz, jr_0e8_7e70                            ; $7e68: $20 $06

    nop                                           ; $7e6a: $00
    sub c                                         ; $7e6b: $91
    inc b                                         ; $7e6c: $04
    nop                                           ; $7e6d: $00
    ld [bc], a                                    ; $7e6e: $02
    nop                                           ; $7e6f: $00

jr_0e8_7e70:
    ld [bc], a                                    ; $7e70: $02
    nop                                           ; $7e71: $00
    ld [bc], a                                    ; $7e72: $02
    nop                                           ; $7e73: $00
    dec b                                         ; $7e74: $05
    nop                                           ; $7e75: $00
    dec b                                         ; $7e76: $05
    nop                                           ; $7e77: $00
    dec b                                         ; $7e78: $05
    nop                                           ; $7e79: $00
    inc b                                         ; $7e7a: $04
    nop                                           ; $7e7b: $00
    inc b                                         ; $7e7c: $04
    rlca                                          ; $7e7d: $07
    nop                                           ; $7e7e: $00
    ld [bc], a                                    ; $7e7f: $02
    inc b                                         ; $7e80: $04
    ld b, $00                                     ; $7e81: $06 $00
    rst $38                                       ; $7e83: $ff
    dec c                                         ; $7e84: $0d
    inc b                                         ; $7e85: $04
    ld sp, hl                                     ; $7e86: $f9
    ld [$00f1], sp                                ; $7e87: $08 $f1 $00
    add sp, -$06                                  ; $7e8a: $e8 $fa
    jp hl                                         ; $7e8c: $e9


    rst $38                                       ; $7e8d: $ff
    ld hl, sp-$06                                 ; $7e8e: $f8 $fa
    ld hl, sp-$01                                 ; $7e90: $f8 $ff
    ld [bc], a                                    ; $7e92: $02
    inc bc                                        ; $7e93: $03
    ld [bc], a                                    ; $7e94: $02
    rla                                           ; $7e95: $17
    inc b                                         ; $7e96: $04
    ccf                                           ; $7e97: $3f
    ld b, $1f                                     ; $7e98: $06 $1f
    add [hl]                                      ; $7e9a: $86
    jr z, jr_0e8_7edc                             ; $7e9b: $28 $3f

    cpl                                           ; $7e9d: $2f
    ccf                                           ; $7e9e: $3f
    rra                                           ; $7e9f: $1f
    jr jr_0e8_7ea4                                ; $7ea0: $18 $02

    cpl                                           ; $7ea2: $2f
    inc b                                         ; $7ea3: $04

jr_0e8_7ea4:
    ld d, b                                       ; $7ea4: $50
    ld [bc], a                                    ; $7ea5: $02
    sub b                                         ; $7ea6: $90
    ld [bc], a                                    ; $7ea7: $02
    or b                                          ; $7ea8: $b0
    ld [bc], a                                    ; $7ea9: $02
    ldh [rSC], a                                  ; $7eaa: $e0 $02
    db $10                                        ; $7eac: $10
    ld [bc], a                                    ; $7ead: $02
    inc e                                         ; $7eae: $1c
    ld [bc], a                                    ; $7eaf: $02
    jr jr_0e8_7eb4                                ; $7eb0: $18 $02

    inc e                                         ; $7eb2: $1c
    inc b                                         ; $7eb3: $04

jr_0e8_7eb4:
    jr jr_0e8_7e3a                                ; $7eb4: $18 $84

    inc d                                         ; $7eb6: $14
    inc e                                         ; $7eb7: $1c
    inc d                                         ; $7eb8: $14
    inc e                                         ; $7eb9: $1c
    ld [bc], a                                    ; $7eba: $02
    jr jr_0e8_7ebf                                ; $7ebb: $18 $02

    inc d                                         ; $7ebd: $14
    inc b                                         ; $7ebe: $04

jr_0e8_7ebf:
    ld a, [bc]                                    ; $7ebf: $0a
    ld [bc], a                                    ; $7ec0: $02
    add hl, bc                                    ; $7ec1: $09
    ld [bc], a                                    ; $7ec2: $02
    dec b                                         ; $7ec3: $05
    ld [bc], a                                    ; $7ec4: $02
    rlca                                          ; $7ec5: $07
    ld [bc], a                                    ; $7ec6: $02
    and $02                                       ; $7ec7: $e6 $02
    ld h, b                                       ; $7ec9: $60
    add d                                         ; $7eca: $82
    ldh [$a0], a                                  ; $7ecb: $e0 $a0
    ld [bc], a                                    ; $7ecd: $02
    ld h, b                                       ; $7ece: $60
    ld [bc], a                                    ; $7ecf: $02
    or b                                          ; $7ed0: $b0
    ld [bc], a                                    ; $7ed1: $02
    ld [hl], d                                    ; $7ed2: $72
    ld [bc], a                                    ; $7ed3: $02
    ld a, [hl-]                                   ; $7ed4: $3a
    ld [bc], a                                    ; $7ed5: $02
    dec c                                         ; $7ed6: $0d
    inc d                                         ; $7ed7: $14
    nop                                           ; $7ed8: $00
    add d                                         ; $7ed9: $82
    rlca                                          ; $7eda: $07
    dec b                                         ; $7edb: $05

jr_0e8_7edc:
    ld [bc], a                                    ; $7edc: $02

jr_0e8_7edd:
    ld b, $02                                     ; $7edd: $06 $02
    dec c                                         ; $7edf: $0d
    ld [bc], a                                    ; $7ee0: $02
    ld c, $02                                     ; $7ee1: $0e $02
    inc e                                         ; $7ee3: $1c
    ld [bc], a                                    ; $7ee4: $02
    db $10                                        ; $7ee5: $10
    ld [de], a                                    ; $7ee6: $12
    nop                                           ; $7ee7: $00
    rst $38                                       ; $7ee8: $ff
    add hl, bc                                    ; $7ee9: $09
    ld [bc], a                                    ; $7eea: $02
    ld sp, hl                                     ; $7eeb: $f9
    ld [$00f1], sp                                ; $7eec: $08 $f1 $00
    ld a, [c]                                     ; $7eef: $f2
    ei                                            ; $7ef0: $fb
    ld a, [c]                                     ; $7ef1: $f2
    cp $97                                        ; $7ef2: $fe $97
    jr nz, jr_0e8_7ef6                            ; $7ef4: $20 $00

jr_0e8_7ef6:
    ld e, a                                       ; $7ef6: $5f
    nop                                           ; $7ef7: $00
    ld e, a                                       ; $7ef8: $5f
    nop                                           ; $7ef9: $00
    rst $18                                       ; $7efa: $df
    nop                                           ; $7efb: $00
    sbc a                                         ; $7efc: $9f
    nop                                           ; $7efd: $00
    ccf                                           ; $7efe: $3f
    nop                                           ; $7eff: $00
    ld sp, $3f00                                  ; $7f00: $31 $00 $3f
    nop                                           ; $7f03: $00
    ccf                                           ; $7f04: $3f
    nop                                           ; $7f05: $00
    sbc a                                         ; $7f06: $9f
    add b                                         ; $7f07: $80
    dec de                                        ; $7f08: $1b
    nop                                           ; $7f09: $00
    ld a, [bc]                                    ; $7f0a: $0a
    add hl, bc                                    ; $7f0b: $09
    nop                                           ; $7f0c: $00
    sub d                                         ; $7f0d: $92
    inc b                                         ; $7f0e: $04
    nop                                           ; $7f0f: $00
    ld [bc], a                                    ; $7f10: $02
    nop                                           ; $7f11: $00
    ld [bc], a                                    ; $7f12: $02
    nop                                           ; $7f13: $00
    inc bc                                        ; $7f14: $03
    nop                                           ; $7f15: $00
    dec b                                         ; $7f16: $05
    nop                                           ; $7f17: $00
    inc b                                         ; $7f18: $04
    nop                                           ; $7f19: $00
    inc b                                         ; $7f1a: $04
    nop                                           ; $7f1b: $00
    inc b                                         ; $7f1c: $04
    nop                                           ; $7f1d: $00
    inc b                                         ; $7f1e: $04
    nop                                           ; $7f1f: $00
    ld [bc], a                                    ; $7f20: $02

jr_0e8_7f21:
    ld bc, $000c                                  ; $7f21: $01 $0c $00
    rst $38                                       ; $7f24: $ff
    dec c                                         ; $7f25: $0d
    inc b                                         ; $7f26: $04
    ld sp, hl                                     ; $7f27: $f9
    ld [$00f1], sp                                ; $7f28: $08 $f1 $00
    and $fa                                       ; $7f2b: $e6 $fa
    rst $20                                       ; $7f2d: $e7
    nop                                           ; $7f2e: $00
    or $f9                                        ; $7f2f: $f6 $f9
    or $ff                                        ; $7f31: $f6 $ff
    ld [bc], a                                    ; $7f33: $02
    ld a, [bc]                                    ; $7f34: $0a
    ld [bc], a                                    ; $7f35: $02
    rrca                                          ; $7f36: $0f
    ld [bc], a                                    ; $7f37: $02
    ccf                                           ; $7f38: $3f
    adc [hl]                                      ; $7f39: $8e
    ld d, $1f                                     ; $7f3a: $16 $1f
    jr c, jr_0e8_7f7d                             ; $7f3c: $38 $3f

    dec d                                         ; $7f3e: $15
    rla                                           ; $7f3f: $17
    ld de, $2a1f                                  ; $7f40: $11 $1f $2a
    ccf                                           ; $7f43: $3f
    daa                                           ; $7f44: $27
    ccf                                           ; $7f45: $3f
    jr @+$21                                      ; $7f46: $18 $1f

    ld [bc], a                                    ; $7f48: $02
    ccf                                           ; $7f49: $3f
    add h                                         ; $7f4a: $84
    ld d, a                                       ; $7f4b: $57
    ld d, l                                       ; $7f4c: $55
    ld l, a                                       ; $7f4d: $6f
    ld l, b                                       ; $7f4e: $68
    ld [bc], a                                    ; $7f4f: $02
    xor a                                         ; $7f50: $af
    ld [bc], a                                    ; $7f51: $02
    ld [c], a                                     ; $7f52: $e2
    add d                                         ; $7f53: $82
    ret nz                                        ; $7f54: $c0

    add b                                         ; $7f55: $80
    ld [bc], a                                    ; $7f56: $02
    db $10                                        ; $7f57: $10
    ld [bc], a                                    ; $7f58: $02
    jr c, jr_0e8_7edd                             ; $7f59: $38 $82

    jr jr_0e8_7f95                                ; $7f5b: $18 $38

    ld [bc], a                                    ; $7f5d: $02
    jr nc, @+$05                                  ; $7f5e: $30 $03

    db $10                                        ; $7f60: $10
    add l                                         ; $7f61: $85
    jr nc, jr_0e8_7f8c                            ; $7f62: $30 $28

    jr c, jr_0e8_7f6e                             ; $7f64: $38 $08

    jr c, jr_0e8_7f6a                             ; $7f66: $38 $02

    jr nc, jr_0e8_7f6c                            ; $7f68: $30 $02

jr_0e8_7f6a:
    jr c, jr_0e8_7f6e                             ; $7f6a: $38 $02

jr_0e8_7f6c:
    inc d                                         ; $7f6c: $14
    ld [bc], a                                    ; $7f6d: $02

jr_0e8_7f6e:
    inc l                                         ; $7f6e: $2c
    ld [bc], a                                    ; $7f6f: $02
    ld a, [hl+]                                   ; $7f70: $2a
    ld [bc], a                                    ; $7f71: $02
    ld c, $8a                                     ; $7f72: $0e $8a
    ld b, $02                                     ; $7f74: $06 $02
    add a                                         ; $7f76: $87
    add l                                         ; $7f77: $85
    ldh [$a0], a                                  ; $7f78: $e0 $a0
    ld d, e                                       ; $7f7a: $53
    ld [hl], e                                    ; $7f7b: $73
    ld d, [hl]                                    ; $7f7c: $56

jr_0e8_7f7d:
    halt                                          ; $7f7d: $76
    ld [bc], a                                    ; $7f7e: $02
    dec hl                                        ; $7f7f: $2b
    ld [bc], a                                    ; $7f80: $02
    ld d, $02                                     ; $7f81: $16 $02
    inc e                                         ; $7f83: $1c
    ld [bc], a                                    ; $7f84: $02
    ld c, $84                                     ; $7f85: $0e $84
    rlca                                          ; $7f87: $07
    dec b                                         ; $7f88: $05
    ld c, $0a                                     ; $7f89: $0e $0a
    ld [bc], a                                    ; $7f8b: $02

jr_0e8_7f8c:
    inc c                                         ; $7f8c: $0c
    ld c, $00                                     ; $7f8d: $0e $00
    add h                                         ; $7f8f: $84
    dec h                                         ; $7f90: $25
    daa                                           ; $7f91: $27
    dec d                                         ; $7f92: $15
    rla                                           ; $7f93: $17
    ld [bc], a                                    ; $7f94: $02

jr_0e8_7f95:
    ld a, [hl+]                                   ; $7f95: $2a
    ld [bc], a                                    ; $7f96: $02
    inc [hl]                                      ; $7f97: $34
    ld [bc], a                                    ; $7f98: $02
    inc e                                         ; $7f99: $1c
    ld [bc], a                                    ; $7f9a: $02
    jr c, jr_0e8_7f21                             ; $7f9b: $38 $84

    jr nc, jr_0e8_7faf                            ; $7f9d: $30 $10

    jr c, jr_0e8_7fc9                             ; $7f9f: $38 $28

    ld [bc], a                                    ; $7fa1: $02
    jr @+$0e                                      ; $7fa2: $18 $0c

    nop                                           ; $7fa4: $00
    rst $38                                       ; $7fa5: $ff
    add hl, bc                                    ; $7fa6: $09
    ld [bc], a                                    ; $7fa7: $02
    ld sp, hl                                     ; $7fa8: $f9
    ld [$00f1], sp                                ; $7fa9: $08 $f1 $00
    db $eb                                        ; $7fac: $eb
    ei                                            ; $7fad: $fb
    db $eb                                        ; $7fae: $eb

jr_0e8_7faf:
    cp $02                                        ; $7faf: $fe $02
    ld de, $000a                                  ; $7fb1: $11 $0a $00
    sub b                                         ; $7fb4: $90
    ld d, c                                       ; $7fb5: $51
    nop                                           ; $7fb6: $00
    jr nz, jr_0e8_7fb9                            ; $7fb7: $20 $00

jr_0e8_7fb9:
    and b                                         ; $7fb9: $a0
    nop                                           ; $7fba: $00
    dec sp                                        ; $7fbb: $3b
    nop                                           ; $7fbc: $00
    ld a, a                                       ; $7fbd: $7f
    nop                                           ; $7fbe: $00
    ld a, e                                       ; $7fbf: $7b
    nop                                           ; $7fc0: $00
    ld sp, $2600                                  ; $7fc1: $31 $00 $26
    ld b, $02                                     ; $7fc4: $06 $02
    ld de, $2002                                  ; $7fc6: $11 $02 $20

jr_0e8_7fc9:
    inc c                                         ; $7fc9: $0c
    nop                                           ; $7fca: $00
    adc a                                         ; $7fcb: $8f
    ld [bc], a                                    ; $7fcc: $02
    nop                                           ; $7fcd: $00
    inc b                                         ; $7fce: $04
    nop                                           ; $7fcf: $00
    dec b                                         ; $7fd0: $05
    nop                                           ; $7fd1: $00
    inc b                                         ; $7fd2: $04
    nop                                           ; $7fd3: $00
    ld b, $00                                     ; $7fd4: $06 $00
    ld b, $00                                     ; $7fd6: $06 $00
    inc b                                         ; $7fd8: $04
    nop                                           ; $7fd9: $00
    inc b                                         ; $7fda: $04
    inc bc                                        ; $7fdb: $03
    nop                                           ; $7fdc: $00
    ld [bc], a                                    ; $7fdd: $02
    inc b                                         ; $7fde: $04
    rst $38                                       ; $7fdf: $ff
    rlca                                          ; $7fe0: $07
    ld bc, $0cf5                                  ; $7fe1: $01 $f5 $0c
    ld a, [c]                                     ; $7fe4: $f2
    ld bc, $f8ef                                  ; $7fe5: $01 $ef $f8
    add c                                         ; $7fe8: $81
    ld bc, $0009                                  ; $7fe9: $01 $09 $00
    ld [bc], a                                    ; $7fec: $02
    ld [bc], a                                    ; $7fed: $02
    ld [bc], a                                    ; $7fee: $02
    inc d                                         ; $7fef: $14
    ld [bc], a                                    ; $7ff0: $02
    nop                                           ; $7ff1: $00
    ld [bc], a                                    ; $7ff2: $02
    db $10                                        ; $7ff3: $10
    ld [bc], a                                    ; $7ff4: $02
    nop                                           ; $7ff5: $00
    ld [bc], a                                    ; $7ff6: $02
    inc b                                         ; $7ff7: $04
    ld a, [bc]                                    ; $7ff8: $0a
    nop                                           ; $7ff9: $00
    rst $38                                       ; $7ffa: $ff
    rst $38                                       ; $7ffb: $ff
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
